# usage: xref.py <so> <script.json> <exact Class$$Method or substring>...   -> callers via BL/B
import sys, pickle, bisect, struct
sys.stdout.reconfigure(encoding='utf-8')
so, sj, pats = sys.argv[1], sys.argv[2], sys.argv[3:]
D = pickle.load(open(sj + '.cache.pkl','rb')); meth, addrs = D['meth'], D['addrs']
idx = sys.argv[1] + '.blidx.pkl'
import os
if os.path.exists(idx): calls = pickle.load(open(idx,'rb'))
else:
    data = open(so,'rb').read()
    lo, hi = min(meth), 0x2d36658
    import array
    w = array.array('I'); w.frombytes(data[lo - lo%4: hi - hi%4])
    base = lo - lo%4; calls = {}
    for i, v in enumerate(w):
        op = v >> 26
        if op == 0x25 or op == 0x05:
            imm = v & 0x3ffffff
            if imm & 0x2000000: imm -= 0x4000000
            pc = base + i*4; t = pc + imm*4
            if t in meth: calls.setdefault(t, []).append(pc)
    pickle.dump(calls, open(idx,'wb'))
for t, n in meth.items():
    if any(p == n or (p.endswith('*') and p[:-1] in n) for p in pats):
        cs = calls.get(t, [])
        callers = sorted({meth.get(addrs[bisect.bisect_right(addrs, pc)-1], '?') for pc in cs})
        print(f'{n} <- {len(cs)} calls'); [print('    ', c) for c in callers]
