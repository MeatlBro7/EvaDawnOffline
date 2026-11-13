# usage: dis.py <libil2cpp.so> <script.json> <pattern> [pattern...]   (pattern = substring of Class$$Method)
import sys; sys.stdout.reconfigure(encoding="utf-8")
import sys, json, bisect, pickle, os, re
from capstone import *
from capstone.arm64 import *
so, sj, pats = sys.argv[1], sys.argv[2], sys.argv[3:]
cache = sj + '.cache.pkl'
if os.path.exists(cache): D = pickle.load(open(cache,'rb'))
else:
    d = json.load(open(sj, encoding='utf-8'))
    meth = {m['Address']: m['Name'] for m in d['ScriptMethod']}
    sym = {}
    for s in d['ScriptString']: sym[s['Address']] = 'STR "' + s['Value'][:80].replace('\n','\n') + '"'
    for s in d['ScriptMetadata']: sym[s['Address']] = 'META ' + s['Name']
    for s in d['ScriptMetadataMethod']: sym[s['Address']] = 'MMETH ' + s['Name']
    D = {'meth': meth, 'sym': sym, 'addrs': sorted(set(d['Addresses']) | set(meth))}
    pickle.dump(D, open(cache,'wb'))
meth, sym, addrs = D['meth'], D['sym'], D['addrs']
data = open(so,'rb').read()
import struct
phoff=struct.unpack_from('<Q',data,0x20)[0]; phn=struct.unpack_from('<H',data,0x38)[0]
segs=[]; dyn=None
for _i in range(phn):
    t,f,off,va,pa,fs,ms,al=struct.unpack_from('<IIQQQQQQ',data,phoff+_i*56)
    if t==1: segs.append((va,off,fs))
    if t==2: dyn=(va,off,fs)
def v2o(v):
    for va,off,fs in segs:
        if va<=v<va+fs: return v-va+off
    return None
rel={}
if dyn:
    dt={}
    for k in range(0,dyn[2],16):
        tag,val=struct.unpack_from('<qQ',data,dyn[1]+k)
        if tag==0: break
        dt[tag]=val
    ro=v2o(dt[7]); 
    for k in range(0,dt[8],24):
        r_off,info,add=struct.unpack_from('<QQq',data,ro+k)
        if info&0xffffffff==1027: rel[r_off]=add
def deref(v):
    if v in rel: return rel[v]
    o=v2o(v)
    return struct.unpack_from('<Q',data,o)[0] if o is not None else None
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM); md.detail = True
targets = [(a,n) for a,n in meth.items() if any(p in n for p in pats)]
for a, n in sorted(targets, key=lambda x: x[1]):
    i = bisect.bisect_right(addrs, a); end = addrs[i] if i < len(addrs) else a+0x400
    end = min(end, a + 0x2000)
    print(f'\n===== {n} @ {a:#x} ({end-a} bytes)')
    pages = {}
    for ins in md.disasm(data[a:end], a):
        note = ''
        ops = ins.operands
        if ins.mnemonic == 'adrp':
            pages[ops[0].reg] = ops[1].imm
        elif ins.mnemonic in ('ldr','add','ldrb','ldrsw','str') and len(ops) >= 2:
            base = None; off = 0
            if ins.mnemonic == 'add' and len(ops)==3 and ops[1].type==ARM64_OP_REG and ops[2].type==ARM64_OP_IMM:
                base, off = ops[1].reg, ops[2].imm
            elif ops[-1].type == ARM64_OP_MEM:
                base, off = ops[-1].mem.base, ops[-1].mem.disp
            if base in pages:
                t = pages[base] + off
                if t in sym: note = sym[t]
                elif t in meth: note = 'FN ' + meth[t]
                else:
                    t2 = deref(t)
                    if t2 in sym: note = sym[t2]
                    elif t2 in meth: note = 'FN* ' + meth[t2]
                if ins.mnemonic != 'str' and ops[0].reg != base: pass
        elif ins.mnemonic in ('bl','b') and ops and ops[0].type == ARM64_OP_IMM:
            t = ops[0].imm
            if t in meth: note = meth[t]
            elif not (a <= t < end):
                j = bisect.bisect_right(addrs, t) - 1
                note = f'? near {meth.get(addrs[j], hex(addrs[j]))}+{t-addrs[j]:#x}' if j>=0 else ''
        if ins.mnemonic not in ('adrp','str','strb','stp','cmp','cbz','cbnz','tbz','tbnz','b','bl','ret','br','blr') and ops and ops[0].type==ARM64_OP_REG:
            pages.pop(ops[0].reg, None)
        print(f'{ins.address:8x}: {ins.mnemonic:6} {ins.op_str:40} {"; "+note if note else ""}')
