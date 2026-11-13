import re, sys, json
src, outdir = sys.argv[1], sys.argv[2]
lines = open(src, encoding='utf-8').read().split('\n')
# MsgDef
ids = {}
i = next(k for k,l in enumerate(lines) if l.startswith('public static class MsgDef '))
while not lines[i].startswith('}'):
    m = re.search(r'public const int (\w+) = (-?\d+);', lines[i])
    if m: ids[m.group(1)] = int(m.group(2))
    i += 1
# classes
classes = {}
ns = ''
k = 0
while k < len(lines):
    l = lines[k]
    if l.startswith('// Namespace: '): ns = l[14:].strip()
    m = re.match(r'(?:public|internal) (?:sealed |abstract )?class ([\w.]+) : msg_base', l)
    if m:
        name = m.group(1); props = []; pend = False; fields = {}
        k += 1
        while not lines[k].startswith('}'):
            s = lines[k].strip()
            fm = re.match(r'private (.+) _(\w+); // 0x', s)
            if fm: fields[fm.group(2)] = fm.group(1)
            if s.startswith('[ProtoMemberAttribute]'): pend = True
            else:
                pm = re.match(r'public (.+) (\w+) \{ get; set; \}', s) or re.match(r'public (.+) (\w+) \{ get; \}', s)
                if pm and pend: props.append((pm.group(2), pm.group(1)))
                if pm or s.startswith('['): pend = s.startswith('[ProtoMember') if not pm else False
            k += 1
        classes[name] = {'ns': ns, 'id': ids.get(name), 'fields': props}
    k += 1
json.dump({'msgdef': ids, 'messages': classes}, open(outdir+'/protocol.json','w',encoding='utf-8'), indent=1, ensure_ascii=False)
with open(outdir+'/protocol.txt','w',encoding='utf-8') as f:
    for n,c in sorted(classes.items(), key=lambda x:(x[1]['id'] is None, x[1]['id'] or 0, x[0])):
        f.write(f"{c['id'] if c['id'] is not None else '-':>6}  {c['ns']+'.' if c['ns'] else ''}{n}\n")
        for fn,ft in c['fields']: f.write(f"          {ft} {fn}\n")
print(len(ids), 'ids;', len(classes), 'msg classes;', sum(1 for c in classes.values() if c['id'] is not None), 'with id;', 'ids without class:', [n for n in ids if n not in classes][:15])
