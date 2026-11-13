#!/usr/bin/env bash
# Prueba automática: login -> Historia -> nivel 01 -> Attack -> Skip -> Auto, y espera el final.
# Uso: bash play_level1.sh [serial_adb] [espera_max_batalla_s]
export MSYS_NO_PATHCONV=1
DEV=${1:-127.0.0.1:16384}
MAXB=${2:-660}
ADB="${ADB:-/e/portable/platform-tools-latest-windows/platform-tools/adb} -s $DEV"
LOGF=/sdcard/Android/data/com.wyx.qzgame.google.evaoverseas/files/offline.log
cd "$(dirname "$0")"; mkdir -p build/run

waitlog() {  # waitlog <patrón> <segundos>
    for _ in $(seq 1 "$2"); do
        $ADB shell cat "$LOGF" 2>/dev/null | grep -q "$1" && return 0
        sleep 1
    done
    echo "timeout esperando: $1"; return 1
}
shot() { $ADB exec-out screencap -p > "build/run/$1.png"; }

waitlog 'LoadLuaScripts omitido' 120 || exit 1
# Si el login no es automático, pulsar Enter hasta que aparezca EnterGame
for _ in 1 2 3 4 5 6; do
    $ADB shell cat "$LOGF" | grep -q 'EnterGame offline' && break
    sleep 5; $ADB shell input tap 800 735
done
waitlog 'LobbyView.SetInitLobby' 90 || { shot fail_lobby; exit 1; }
sleep 8
$ADB shell input tap 1450 760; sleep 4          # Story
$ADB shell input tap 190 220; sleep 4           # nivel 01
$ADB shell input tap 1320 635                   # Attack
waitlog 'CSInstanceEnter inst' 30 || { shot fail_enter; exit 1; }
sleep 25; $ADB shell input tap 1500 42; sleep 5 # Skip diálogo (tras la carga)
$ADB shell input tap 105 420                    # Auto
shot battle_start
for i in $(seq 1 $((MAXB / 10))); do
    sleep 10
    if $ADB shell cat "$LOGF" | grep -qE 'CSInstanceEnd|CSInstanceDead'; then
        echo "fin de batalla tras ~$((i * 10))s"; sleep 8; break
    fi
done
shot battle_end
$ADB shell cat "$LOGF" | grep -E 'stats|CSInstance|SCInstance|W ' | tail -20
