#!/usr/bin/env bash
# Ciclo rápido: reconstruye luascripts.bundle + OBB, lo sube al emulador,
# reinicia el juego y descarga offline.log + captura de pantalla.
# Uso: bash iterate.sh [segundos_espera] [serial_adb]
set -euo pipefail
export MSYS_NO_PATHCONV=1
WAIT=${1:-60}
DEV=${2:-127.0.0.1:16384}
ADB=${ADB:-/e/portable/platform-tools-latest-windows/platform-tools/adb}
PKG=com.wyx.qzgame.google.evaoverseas
cd "$(dirname "$0")"
ROOT=../..   # rutas relativas: Python de Windows no entiende /e/... con MSYS_NO_PATHCONV
OBB_NAME=main.31.$PKG.obb
# Intérprete con UnityPy/lupa/capstone (la 3.15 del PATH no los tiene). Se puede cambiar con PY=...
PY=${PY:-/c/Users/Usuario/AppData/Local/Programs/Python/Python314/python.exe}

$PY -I gen_pairs.py ../protocol/protocol.json gen/pairs.lua
$PY -I test/run_test.py | tail -1
$PY -I build_luabundle.py "$ROOT/Android/obb/$PKG/assets/Android/luascripts.bundle" gen/pairs.lua MainHotFix.lua build/luascripts.bundle | head -1
$PY -I - "$ROOT/Android/obb/$PKG/$OBB_NAME" build/luascripts.bundle "build/package/$OBB_NAME" <<'EOF'
import sys, zipfile
src, lua, dst = sys.argv[1:4]
with zipfile.ZipFile(src) as zi, zipfile.ZipFile(dst, 'w') as zo:
    for i in zi.infolist():
        data = open(lua, 'rb').read() if i.filename == 'assets/Android/luascripts.bundle' else zi.read(i.filename)
        n = zipfile.ZipInfo(i.filename, date_time=i.date_time); n.compress_type = i.compress_type; n.external_attr = i.external_attr
        zo.writestr(n, data)
print('OBB reconstruido')
EOF

$ADB -s "$DEV" shell am force-stop $PKG
$ADB -s "$DEV" shell rm -f "/sdcard/Android/data/$PKG/files/offline.log"
$ADB -s "$DEV" push "build/package/$OBB_NAME" "/sdcard/Android/obb/$PKG/" | tail -1
$ADB -s "$DEV" shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1
echo "esperando ${WAIT}s..."
sleep "$WAIT"
mkdir -p build/run
$ADB -s "$DEV" exec-out screencap -p > build/run/screen.png
$ADB -s "$DEV" shell "cat /sdcard/Android/data/$PKG/files/offline.log" > build/run/offline.log || echo "(sin offline.log)"
echo "---- offline.log ----"
cat build/run/offline.log
