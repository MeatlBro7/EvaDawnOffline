# Busca qué funciones referencian un TypeInfo / string / MethodInfo (metadata de IL2CPP).
# Resuelve: slot de metadata <- entrada GOT (reloc RELATIVE) <- ADRP+LDR en el código.
# uso: metaxref.py <libil2cpp.so> <script.json> <nombre exacto o subcadena*> ...
#   ej: metaxref.py lib.so script.json "msg.SCStageEnterResult_TypeInfo" 'STR:"Lobby"'
import sys, pickle, bisect, struct, array, os
sys.stdout.reconfigure(encoding='utf-8')
so, sj, pats = sys.argv[1], sys.argv[2], sys.argv[3:]
D = pickle.load(open(sj + '.cache.pkl', 'rb')); meth, sym, addrs = D['meth'], D['sym'], D['addrs']
data = open(so, 'rb').read()

# segmentos y relocaciones
phoff = struct.unpack_from('<Q', data, 0x20)[0]; phn = struct.unpack_from('<H', data, 0x38)[0]
segs, dyn = [], None
for i in range(phn):
    t, f, off, va, pa, fs, ms, al = struct.unpack_from('<IIQQQQQQ', data, phoff + i * 56)
    if t == 1: segs.append((va, off, fs))
    if t == 2: dyn = (va, off, fs)
def v2o(v):
    for va, off, fs in segs:
        if va <= v < va + fs: return v - va + off
dt = {}
for k in range(0, dyn[2], 16):
    tag, val = struct.unpack_from('<qQ', data, dyn[1] + k)
    if tag == 0: break
    dt[tag] = val
got_of = {}   # valor (slot) -> [direcciones GOT]
ro = v2o(dt[7])
for k in range(0, dt[8], 24):
    r_off, info, add = struct.unpack_from('<QQq', data, ro + k)
    if info & 0xffffffff == 1027: got_of.setdefault(add, []).append(r_off)

def match(name):
    return any((p.endswith('*') and p[:-1] in name) or p == name for p in pats)
targets = {}
for a, n in sym.items():
    label = n.split(' ', 1)[1] if ' ' in n else n
    if match(label) or match(n):
        targets[a] = n
        for g in got_of.get(a, []): targets[g] = n + '  (via GOT)'
if not targets: sys.exit('sin coincidencias en metadata')

# escaneo ADRP + (LDR x, [x, #imm] | ADD x, x, #imm)
lo, hi = min(meth), segs[0][2]
w = array.array('I'); w.frombytes(data[lo - lo % 4: hi - hi % 4]); base = lo - lo % 4
hits = {}
pages = {}
for i, v in enumerate(w):
    pc = base + i * 4
    if (v & 0x9F000000) == 0x90000000:          # ADRP
        rd = v & 31
        imm = ((v >> 29) & 3) | (((v >> 5) & 0x7FFFF) << 2)
        if imm & (1 << 20): imm -= 1 << 21
        pages[rd] = ((pc & ~0xFFF) + (imm << 12), i)
        continue
    rn = (v >> 5) & 31
    if rn in pages and i - pages[rn][1] < 24:
        t = None
        if (v & 0xFFC00000) == 0xF9400000: t = pages[rn][0] + ((v >> 10) & 0xFFF) * 8   # LDR Xt
        elif (v & 0xFF800000) == 0x91000000: t = pages[rn][0] + ((v >> 10) & 0xFFF)     # ADD Xd
        if t is not None and t in targets:
            f = addrs[bisect.bisect_right(addrs, pc) - 1]
            hits.setdefault(targets[t].replace('  (via GOT)', ''), set()).add(meth.get(f, hex(f)))
for n, fs in sorted(hits.items()):
    print(n)
    for f in sorted(fs): print('    ', f)
