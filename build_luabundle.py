# Reconstruye luascripts.bundle reemplazando el TextAsset "MainHotFix".
# Uso: python -I build_luabundle.py <luascripts.bundle original> <a.lua> [b.lua ...] <salida.bundle>
# Los .lua se concatenan en orden (p. ej. gen/pairs.lua MainHotFix.lua).
import sys, UnityPy

src, lua_paths, dst = sys.argv[1], sys.argv[2:-1], sys.argv[-1]
code = '\n'.join(open(p, 'r', encoding='utf-8').read().replace('\r\n', '\n') for p in lua_paths)

env = UnityPy.load(src)
done = False
for obj in env.objects:
    if obj.type.name != 'TextAsset':
        continue
    data = obj.read()
    if data.m_Name == 'MainHotFix':
        data.m_Script = code
        data.save()
        done = True
        print(f'MainHotFix reemplazado ({len(code.encode("utf-8"))} bytes)')
if not done:
    sys.exit('No se encontró el TextAsset MainHotFix en el bundle')

with open(dst, 'wb') as f:
    f.write(env.file.save(packer='lz4'))
print('escrito', dst)

# Verificación: volver a leer el bundle generado
env2 = UnityPy.load(dst)
for obj in env2.objects:
    if obj.type.name == 'TextAsset':
        d = obj.read()
        s = d.m_Script
        n = len(s.encode('utf-8', 'surrogateescape')) if isinstance(s, str) else len(s)
        print('  verificado:', d.m_Name, n, 'bytes')
