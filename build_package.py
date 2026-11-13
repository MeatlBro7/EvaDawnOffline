# Genera el APK (sin firmar) y el OBB del modo offline a partir de los originales.
#
#   APK: reemplaza lib/arm64-v8a/libil2cpp.so por el parcheado, elimina
#        lib/armeabi-v7a (aún sin parche, forzaría la ruta online) y la firma
#        antigua (META-INF/*.SF|*.RSA|MANIFEST.MF). Hay que firmarlo después.
#   OBB: reemplaza assets/Android/luascripts.bundle (STORED, como el original;
#        Unity lee los assets del OBB sin descomprimir).
#
# Uso (desde re_work/offline):
#   python -I build_package.py <apk original> <obb original> <libil2cpp parcheado> <luascripts.bundle nuevo> <dir salida>
import sys, os, zipfile, shutil

apk_in, obb_in, lib_new, lua_new, out = sys.argv[1:6]
os.makedirs(out, exist_ok=True)

def rebuild(src, dst, replace, drop):
    n_rep = 0
    with zipfile.ZipFile(src) as zi, zipfile.ZipFile(dst, 'w') as zo:
        for info in zi.infolist():
            name = info.filename
            if any(name.startswith(p) for p in drop):
                continue
            data = open(replace[name], 'rb').read() if name in replace else zi.read(name)
            n_rep += name in replace
            ni = zipfile.ZipInfo(name, date_time=info.date_time)
            ni.compress_type = info.compress_type
            ni.external_attr = info.external_attr
            zo.writestr(ni, data)
    if n_rep != len(replace):
        sys.exit(f'{src}: se esperaban {len(replace)} reemplazos y hubo {n_rep}')
    print('escrito', dst, os.path.getsize(dst), 'bytes')

rebuild(apk_in, os.path.join(out, 'eva_offline-unsigned.apk'),
        {'lib/arm64-v8a/libil2cpp.so': lib_new},
        drop=('lib/armeabi-v7a/', 'lib/.DS_Store', 'META-INF/'))

rebuild(obb_in, os.path.join(out, os.path.basename(obb_in)),
        {'assets/Android/luascripts.bundle': lua_new},
        drop=())

print('\nSiguiente paso: firmar el APK, por ejemplo:')
print('  java -jar uber-apk-signer.jar -a', os.path.join(out, 'eva_offline-unsigned.apk'))
