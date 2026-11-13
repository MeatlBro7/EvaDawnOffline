# Parche nativo de EVA Dawn 3.1.0 (arm64-v8a) para modo offline.
#
# Hace que BootMediator.BeginBoot cargue el hotfix Lua (MainHotFix) ANTES de la
# verificación de versión y la descarga de serverlist.txt, y luego vuelva a
# comprobar el delegado hotfix de BeginBoot para que lo ejecute la versión Lua.
#
#   0xE90B88  bl BootView.get_view   ->  bl BootMediator.LoadLuaScripts (0xE926A8)
#   0xE90B8C  mov x20, x0            ->  b  0xE90B54 (re-check __Hotfix0_BeginBoot)
#
# IMPORTANTE: MainHotFix DEBE hotfixear BootMediator.BeginBoot y
# BootMediator.LoadLuaScripts; si no, BeginBoot entra en bucle.
#
# Uso: python -I patch_libil2cpp.py <libil2cpp.so original> <salida.so>
import sys, struct, hashlib

SRC, DST = sys.argv[1], sys.argv[2]

def bl(src, dst, link=True):
    off = (dst - src) >> 2
    assert -(1 << 25) <= off < (1 << 25)
    return struct.pack('<I', (0x94000000 if link else 0x14000000) | (off & 0x3FFFFFF))

PATCHES = [
    # (offset, bytes originales esperados, bytes nuevos, descripción)
    (0xE90B88, bl(0xE90B88, 0xE90110), bl(0xE90B88, 0xE926A8), 'bl get_view -> bl LoadLuaScripts'),
    (0xE90B8C, struct.pack('<I', 0xAA0003F4),     bl(0xE90B8C, 0xE90B54, link=False), 'mov x20,x0 -> b recheck hotfix'),
]

data = bytearray(open(SRC, 'rb').read())
print('original sha256:', hashlib.sha256(data).hexdigest())
for off, orig, new, desc in PATCHES:
    cur = bytes(data[off:off + 4])
    if cur == new:
        print(f'{off:#x}: ya parcheado ({desc})')
        continue
    if cur != orig:
        sys.exit(f'{off:#x}: bytes inesperados {cur.hex()} (esperado {orig.hex()}). ¿Versión distinta de libil2cpp.so?')
    data[off:off + 4] = new
    print(f'{off:#x}: {orig.hex()} -> {new.hex()}  ({desc})')
open(DST, 'wb').write(data)
print('parcheado sha256:', hashlib.sha256(data).hexdigest())
