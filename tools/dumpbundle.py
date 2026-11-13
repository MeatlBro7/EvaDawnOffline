import sys, UnityPy
env = UnityPy.load(sys.argv[1])
for o in env.objects:
    d = o.read()
    name = getattr(d, 'm_Name', '')
    print(o.type.name, o.path_id, repr(name))
    if o.type.name == 'TextAsset':
        s = d.m_Script
        b = s.encode('utf-8','surrogateescape') if isinstance(s,str) else bytes(s)
        print('  len', len(b), 'head', b[:200])
    if o.type.name == 'AssetBundle':
        for k,v in d.m_Container: print('  container', k)
