# Genera gen/pairs.lua: tabla CS* -> SC* (por nombre, o por id+1) a partir de protocol.json.
# El servidor falso la usa para responder con un mensaje vacío a las peticiones sin handler.
# uso: python -I gen_pairs.py ../protocol/protocol.json gen/pairs.lua
import json, sys, os
src, dst = sys.argv[1], sys.argv[2]
p = json.load(open(src, encoding='utf-8'))
ids = p['msgdef']
byid = {}
for n, i in ids.items():
    byid.setdefault(i, []).append(n)
pairs = {}
for n in sorted(ids):
    if not n.startswith('CS'):
        continue
    sc = 'SC' + n[2:]
    if sc in ids:
        pairs[n] = sc
        continue
    alt = [x for x in byid.get(ids[n] + 1, []) if x.startswith('SC')]
    if alt:
        pairs[n] = alt[0]
os.makedirs(os.path.dirname(dst) or '.', exist_ok=True)
with open(dst, 'w', encoding='utf-8', newline='\n') as f:
    f.write('-- GENERADO por gen_pairs.py desde MsgDef. No editar a mano.\n')
    f.write('OFFLINE_PAIRS = {\n')
    for k, v in pairs.items():
        f.write(f'  {k} = {{ "{v}", {ids[k]}, {ids[v]} }},\n')
    f.write('}\n')
print(len(pairs), 'pares escritos en', dst)
