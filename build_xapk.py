# Empaqueta APK firmado + OBB en un .xapk (formato APKCombo/APKPure, xapk_version 2) para
# instalarlo en celulares con un instalador de XAPK (copia el OBB a Android/obb automáticamente).
#
# Uso (desde re_work/offline):
#   python -I build_xapk.py <manifest.json original> <icon.png> <apk firmado> <obb> <salida.xapk>
import sys, os, json, zipfile

man_in, icon, apk, obb, out = sys.argv[1:6]
man = json.load(open(man_in, encoding='utf-8'))
pkg = man['package_name']
apk_name = pkg + '.apk'
obb_path = 'Android/obb/%s/%s' % (pkg, os.path.basename(obb))
man['name'] = 'EVA Dawn Offline'
man['total_size'] = os.path.getsize(apk) + os.path.getsize(obb)
man['split_apks'] = [{'file': apk_name, 'id': 'base'}]
man['expansions'] = [{'file': obb_path, 'install_location': 'EXTERNAL_STORAGE', 'install_path': obb_path}]

with zipfile.ZipFile(out, 'w', allowZip64=True) as z:
    z.writestr('manifest.json', json.dumps(man, ensure_ascii=False), compress_type=zipfile.ZIP_DEFLATED)
    z.write(icon, 'icon.png', compress_type=zipfile.ZIP_STORED)
    z.write(apk, apk_name, compress_type=zipfile.ZIP_STORED)
    z.write(obb, obb_path, compress_type=zipfile.ZIP_STORED)
print('escrito', out, os.path.getsize(out), 'bytes')
