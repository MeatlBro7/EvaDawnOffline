# Modos multijugador (Matching, Extreme Duel, Arena, Points Match, Teamwork) — qué hace falta para un servidor privado

Índice: [Matching](#flujo-completo) (lockstep, servidor de batalla) · [Extreme Duel](#extreme-duel-peakvs-duelo-1-vs-1--qué-hace-falta-para-un-servidor-privado) (lockstep) · [Arena, Points Match y Teamwork](#arena-points-match-y-teamwork-entre-jugadores-reales--qué-hace-falta-para-un-servidor-privado) (asíncrono, solo servidor de juego)

## Matching (MultiPK 3 vs 3)

Matching es la única sección de combate que **no** funciona en la versión offline. Este documento explica por qué y qué tendría que implementar quien quiera jugarla con un servidor propio.

## Por qué no se puede hacer offline

- **Arena, Points Match, Expedition y Teamwork** se simulan en el propio cliente: el juego trae un modo de combate local donde la IA controla al rival. Al falso servidor en Lua (`MainHotFix.lua`) le basta con responder a unos pocos mensajes.
- **Matching** (`TeamBattlePVPMode`, `ConfCommonInfo` tipo 15) es **lockstep por fotogramas**:
  - Cada cliente envía sus acciones al **servidor de batalla**.
  - El servidor las reúne y reparte a todos, fotograma a fotograma.
  - Ningún mecha tiene IA local: los otros 5 solo se mueven con lo que llega del servidor.
  - El campo `SCMultiPKBattleMathResult.isPvp` existe, pero el cliente nunca lo lee: no hay modo contra la IA.

Para jugarla hace falta un servidor de batalla real, con 6 jugadores humanos o con bots en el servidor que generen acciones.

## Arquitectura de red del cliente

| Elemento | Detalle |
|---|---|
| Paquete | `UniCore.GamePacket`: `int Size` (4 B) + `int Type` (4 B, id del mensaje) + cuerpo protobuf-net (`namespace msg`) |
| Servidor de juego | `ConnectAPI.s_gameServer` (`ClientConnection<GamePacket>`, TCP) |
| Servidor de batalla | `ConnectAPI.s_battleServer` (TCP), abierto con `ConnectAPI.ConnectBattleServer(ip, port)` |
| UDP opcional | `ConnectAPI.s_udpClient` (`UdpSocket`, **KCP**: `init_kcp`, `process_connect_packet`). Solo si `useUdp = true`. Con `false` todo va por TCP |
| Ids y campos | Volcado completo en `re_work/protocol/protocol.txt` (id, nombre y campos de los ~954 mensajes) |

**Importante para la versión offline:** `MainHotFix.lua` hotfixea `ConnectAPI` (`Connect`, `ConnectBattleServer`, `SendPacket`, `QueuePacket`…) y responde todo en local. Un servidor privado tiene que **restaurar los métodos originales**, como mínimo los de la conexión de batalla: o quitar esos hotfixes o hacer que reenvíen al socket real. Si no, el cliente nunca llega a conectarse.

## Flujo completo

### 1. Sala (servidor de juego, TCP)

| Id | Mensaje | Uso |
|---|---|---|
| 3801/3802 | `CSMultiPKConf` → `SCMultiPKConf{openTime}` | Horario de apertura |
| 3800 | `CSMultiPKFormation{generalID}` | Mecha elegido |
| 3810 | `CSMultiPKCreateTeam{isPublic}` | Crear sala |
| 3811 | `CSMultiPKJoinTeam{teamSn}` | Unirse por número de sala (`TeamBattleFindRoom`) |
| 3812/3813 | `CSMultiPKMatchTeam` → `SCMultiPKTeamInfo{teamSn, isPublic, teamLeader, member[DMultiPKPlayerInfo]}` | Quick Start / estado de la sala |
| 3814/3815 | `CSMultiPKReady{isReady}` → `SCMultiPKReady{isAllReady, ids}` | Listos |
| 3816 | `CSMultiPKChangeTeam{teamSn, isPublic}` | Cambiar sala |
| 3817/3818/3819 | `CSMultiPKLeaveTeam` → `SCMultiPKJoinTeamResult` / `SCMultiPKLeaveTeamResult{result}` | Salir |
| 3829/3830 | `CSMultiPKTeamInvite{inviteeId}` → `SCMultiPKTeamInvite{inviterId, inviterName, teamSn}` | Invitar |
| 3822/3823 | `CSMultiPKQueryAugmentList` → `SCMultiPKAugmentList{AugmentSn[]}` | Bonificaciones de equipo |
| 3825–3828 | `CSMultiPKTaskQuery/Submit/Award`, `SCMultiPKTaskRefresh{tasks}` | Tareas diarias de Matching |

`DMultiPKPlayerInfo = { human: DHumanInfo, prop: DProp, general: DGeneral }`. `DGeneral` con stats reales: se pueden calcular como en `generalById()` de `MainHotFix.lua`, usando las fórmulas de `MechaData`.

### 2. Emparejamiento

`SCMultiPKBattleMathResult` (3820):

```
isPvp, pvpType, token, ip, port, camp, order, udpIp, udpPort, crossId,
delay, enemyDelay, useUdp, members[DMultiPKPlayerInfo], enemys[DMultiPKPlayerInfo]
```

- Lo procesa `TeamBattleData.OnSCMultiPKBattleMathResult` (calcula las bonificaciones del rival).
- Después, `TeamBattleInviteView.ProcessCompetitionResult` llama a `ConnectAPI.ConnectBattleServer(ip, port)`.
- `camp` y `order` fijan el bando y la posición de salida de cada jugador.
- `token` es el que se envía luego en `CSTokenLogin`.

### 3. Servidor de batalla (ids 10005–10112)

| Id | Mensaje | Sentido / uso |
|---|---|---|
| 10005/10006 | `CSTokenLogin{token, humanId}` → `SCTokenLoginResult{resultCode, resultReason, isServerFull}` | Autenticación. `resultCode = 0` = OK |
| 10007 | `SCTokenLoginQueue{num, sec, full}` | Cola (opcional) |
| 3821 | `CSMultiPKEnter` | Entrar a la batalla tras la pantalla VS (`TeamBattleVS.DelayEnterArena`) |
| — | `SCStageSwitch{stageSn, repSn}` | Cargar el escenario; `ConfCommonInfo` tipo 15 (150001…). `GameplayRoot.Start` carga entonces `TeamBattleResultView` |
| 10012 | `CSCrossStageEnter` | El cliente terminó de cargar (`TeamBattlePVPMode.CrossStageEnterReady`) |
| 10018 | `SCCrossStageLoadOK` | Enviar cuando **todos** hayan cargado (`SceneLoading.WaitForRival`) |
| 10013/10014 | `CSStartFight{playerId}` → `SCStartFightResult{seed, frameLength}` | Arranque. `seed` = semilla común del aleatorio (`PVPData.GenerateRandom`), `frameLength` = segundos por fotograma |
| 10102 | `CSUploadOperate{operate: DCrossOperate}` | Acción local del jugador |
| 10103 | `SCNotifyOperate{index, operate[DCrossOperate]}` | **Fotograma** `index` con las acciones de todos. Debe enviarse en cada tick, aunque la lista vaya vacía, para que el reloj avance (`PVPData.StepFrame` / `PVPOperationMgr.ProcessFrames`) |
| 10101 | `CSQueryOperate{index}` | Reenvío de fotogramas perdidos desde `index` |
| 10104/10105 | `CSCrossPing{timestamp}` ↔ `SCCrossPing{timestamp}` | Latencia |
| 10100/10106 | `CSCrossUdpLogin{humanId}` → `SCCrossUdpLoginResult` | Solo con `useUdp` |
| 10109–10112 | `SCCrossStageUnitApper/Disapper/Refresh{Objects[DCrossStageUnit]}`, `CSCrossStageUnitPick{id, frame}` | Objetos del mapa (buffs de `TeamBattleBuffMgr`) |
| 10017 | `SCEnemyDisconnect{playerId[]}` | Jugadores desconectados |
| 10015/10016 | `CSFinishFight{playerId, turn, winnerId}` → `SCFinishFightResult{turn, result}` | Cada cliente propone el resultado de la ronda |
| 10019 | `SCFinishFightNotify{turn, result}` | Resultado decidido por el servidor |
| 3824 | `SCMultiPKBattleEnd{isWin}` | Fin de la partida (`TeamBattleData.OnSCMultiPKBattleEnd`) |

### `DCrossOperate`

```
playerId: long    // serverId del jugador que actúa
type:     int     // tipo de operación (PVPOperationMgr.ProcessFrames)
param:    string  // datos de la operación
```

Lo que se ve en `PVPOperationMgr.ProcessFrames` (hay que verificarlo con una captura o con depuración):

- **Movimiento:** `param` = `"x,y"` (dirección o joystick, separado por comas, leído con `GeneralUtils.ForceFloat`) → `GetMoveInfo` / `ProcessMove`.
- **Habilidad:** `param` = entero → `Combatant.ReleaseSkill(int)`.
- **Otros tipos** (AT, eventos): `param` = entero, que se despacha como evento.
- Un tipo desconocido registra el error `"Null OperationType = "`. El tipo `4` tiene una rama propia.

## Qué tiene que hacer el servidor (resumen)

1. **Salas:** crear, unirse, listos e invitar con los mensajes 38xx, por el servidor de juego.
2. **Emparejamiento:** con 6 jugadores (o 3 + bots), enviar `SCMultiPKBattleMathResult` a cada uno con su `camp`/`order`, un `token`, y la `ip`/`port` del servidor de batalla.
3. **Servidor de batalla (TCP):**
   - Validar `CSTokenLogin`.
   - Esperar el `CSCrossStageEnter` de todos y enviar `SCCrossStageLoadOK`.
   - Contestar `CSStartFight` con la misma `seed` y el mismo `frameLength` para todos.
4. **Bucle lockstep:** cada `frameLength`, reunir los `CSUploadOperate` recibidos y difundir `SCNotifyOperate{index++, operate[]}`. Atender `CSQueryOperate` reenviando los fotogramas pedidos.
5. **Final:** recoger `CSFinishFight`, decidir y difundir `SCFinishFightNotify`, y luego `SCMultiPKBattleEnd{isWin}` a cada jugador. Las recompensas van por el servidor de juego.
6. **Bots (opcional):** para jugar con menos de 6 personas, el servidor tiene que generar `DCrossOperate` para los bots, porque el cliente no tiene IA para los jugadores remotos.

## Referencias en este repositorio

- `re_work/protocol/protocol.txt`: ids y campos de todos los mensajes.
- `re_work/protocol/LOGIN_FLOW.md`: formato de paquete y flujo de login.
- `re_work/il2cpp_arm64/dump.cs` y `script.json`: clases del cliente (`TeamBattlePVPMode`, `PVPOperationMgr`, `PVPData`, `TeamBattleData`, `TeamBattleInviteView`, `UdpSocket`).
- `re_work/tools/dis.py` y `xref.py`: desensamblar y buscar llamadas (`python -I tools/dis.py <libil2cpp.so> il2cpp_arm64/script.json 'Clase$$Metodo'`).
- `re_work/offline/MainHotFix.lua`: el hotfix de `ConnectAPI` que hay que desactivar para la conexión de batalla, y `generalById()` para construir `DGeneral` con stats reales.

---

# Extreme Duel (PeakVs, duelo 1 vs 1) — qué hace falta para un servidor privado

Es un torneo 1 contra 1 entre jugadores, por temporadas, con fase de selección de mechas y combate lockstep. El combate usa el mismo servidor de batalla que Matching (sección «Servidor de batalla» de arriba), así que **todo lo descrito para Matching vale aquí**. Abajo solo va lo propio de esta sección.

## Por qué no se puede entrar en la versión offline

- Al abrir la sección, el cliente envía `CSPeakInfo{isAll}` y `PeakVsData.CheckActivity` revisa la respuesta `SCPeakInfo`:
  - `isOpen` tiene que ser `true`.
  - `firstInitalDate` necesita ≥ 2 fechas (en ms) y `eliminateDate` ≥ 1.
  - Con esas fechas, comparadas con `TimeService.ServerTime`, decide la fase (`peakType`): clasificación o eliminatoria.
  - `firstInitalHourScope` y `eliminateHourScope` fijan las horas de apertura de cada día (`PeakVsData.CheckHour`).
- La versión offline responde `SCPeakInfo` vacío, así que para el cliente no hay temporada activa.
- Rellenar esos campos bastaría para abrir la interfaz, pero el combate seguiría necesitando un rival real por el servidor de batalla.

## Modos de combate

| Fase | Modo del cliente | Interfaz |
|---|---|---|
| Clasificación («Cast») | `PeakVsCastMode` | `PeakCastPanel` / `PeakVsCastResultView` |
| Eliminatoria («Oust», por rondas) | `PeakVsOustMode` (`GoOnNextRound`) | `PeakOustPanel` / `PeakVsOustResultView` / `PeakOustTopRankPanel` |

Los dos son lockstep: `CrossStageEnterReady` → `OnCrossStageOK` → `OnStartFight` → `StartFightByNet` → `SCFinishFightNotify`. No hay modo contra la IA. En `GameplayRoot.Start`, los niveles de `ConfCommonInfo` de tipo 11 y 12 (110001… y 120001…) cargan `PeakVsCastResultView` y `PeakVsOustResultView`.

## Mensajes (servidor de juego, ids 65xx)

| Id | Mensaje | Uso |
|---|---|---|
| 6511/6512 | `CSPeakInfo{isAll}` → `SCPeakInfo{isAll, totalCnt, winCnt, coin, isRecvPromotion, isRecvAttend, isPromotion, isOpen, firstInitalDate[], firstInitalHourScope[], eliminateDate[], eliminateHourScope[]}` | Estado de la temporada, tus estadísticas y la moneda del torneo |
| 6501/6502 | `CSPeakMatch` → `SCPeakMatchReady{enemyId, enemyName, enemyCoin, state, startTime, canOper, camp, enemyserverId, enemyDriverShowSn, initGen[], initAt[]}` | Rival encontrado; empieza la fase de selección (`PeakVsMatching.OnSCPeakMatchReady`) |
| 6513/6514 | `CSPeakMatchCancel` / `SCPeakMatchFail{code}` | Cancelar emparejamiento o fallo |
| 6503 | `CSPeakChooseOper{chooseSn}` | Acción de la fase en curso: vetar o elegir un mecha/AT |
| 6515 | `CSPeakChangeOper{chooseGen[], chooseAt[]}` | Cambiar el orden o la elección final |
| 6504 | `SCPeakOper{camp1Coin, camp2Coin, camp1HinterSn[], camp2HinterSn[], camp1ChooseGenSn[], camp2ChooseGenSn[], camp1ChooseAtSn[], camp2ChooseAtSn[]}` | Estado de la selección de ambos bandos (`Hinter` = vetados). Se envía a los dos tras cada acción |
| 6505/6542 | `CSPeakConfirm` / `SCPeakConfirm` | Confirmar la fase |
| 6506 | `SCPeakNextState{state, startTime, canOper, ready, enemyReady}` | Siguiente fase. `startTime` = inicio de la cuenta atrás; `canOper` = si te toca. Lo aplica `PeakVsData.SetOperState` |
| 6508 | `SCPeakMatchResult{enemyInfo, token, ip, port, camp, order, udpIp, udpPort, crossId, delay, enemyDelay, useUdp, myGenerals[], enemyGenerals[], myAt[], enemyAt[]}` | Fin de la selección: conexión al servidor de batalla (`PeakVsData.OnSCPeakMatchResult` → `ConnectBattleServer`) y equipos definitivos |
| 6509 | `CSPeakBattleEnter` | Entrar a la batalla. A partir de aquí: `CSTokenLogin`, `SCStageSwitch` (tipo 11/12), `CSCrossStageEnter`… igual que Matching |
| 6510 | `SCPeakBattleEnd{isWin, my, enemy}` | Resultado del duelo (`PeakVsData.OnSCPeakBattleEnd`) |
| 6540 | `SCPeakDisconnect{playerId}` | Rival desconectado |
| 6517/6518 | `CSPeakRank` → `SCPeakRank{my: DPeakRankMem, allRank[]}` | Ranking (`DPeakRankMem` = humanId, name, servId, driverShowSn, knockoutPoint, knockoutFightCnt, knockoutWinCnt, rank) |
| 6519/6520 | `CSPeakChampion` → `SCPeakChampion{info[DPeakChampionList{season, championInfo[]}]}` | Campeones de cada temporada |
| 6541 | `CSPeakRecvReward{type}` | Recompensas de participación o ascenso (`isRecvAttend` / `isRecvPromotion`). Tabla `ConfExtremeRankAward` |

## Qué tiene que hacer el servidor (resumen)

1. **Temporada:** responder `SCPeakInfo` con `isOpen = true`, las fechas de clasificación y eliminatoria (ms) y las horas de apertura.
2. **Emparejamiento:** con dos jugadores en cola, enviar `SCPeakMatchReady` a cada uno (su `camp`, el rival, y los mechas y AT iniciales).
3. **Selección por turnos:**
   - Recibir `CSPeakChooseOper` / `CSPeakChangeOper` / `CSPeakConfirm`.
   - Difundir `SCPeakOper` tras cada acción.
   - Avanzar las fases con `SCPeakNextState`, controlando la cuenta atrás y de quién es el turno.
4. **Al terminar la selección:** `SCPeakMatchResult` a ambos, con `token`, `ip` y `port` del servidor de batalla y los equipos finales.
5. **Batalla:** el mismo servidor lockstep que Matching, con 2 jugadores. En la eliminatoria hay varias rondas.
6. **Cierre:**
   - `SCPeakBattleEnd` a cada jugador.
   - Actualizar puntos y ranking (`SCPeakRank`).
   - Pagar recompensas con `CSPeakRecvReward` según `ConfExtremeRankAward`.

---

# Arena, Points Match y Teamwork entre jugadores reales — qué hace falta para un servidor privado

Estos tres modos **no** necesitan servidor de batalla ni lockstep, a diferencia de Matching y Extreme Duel. Son **PvP asíncrono**: el rival (o el compañero) es una *instantánea* del equipo de otro jugador real, y en el combate lo mueve la IA local del cliente:

- `ArenaMode`: `Player.AutoFight` + `Player.FindAi`.
- `PointMatchMode`.
- El asistente de `TeamRaid`.

Basta con un **servidor de juego** con una base de datos de jugadores, sus equipos y sus puntos. La versión offline ya implementa todo el protocolo en `MainHotFix.lua` con robots; un servidor privado solo tiene que sustituir los robots por datos de jugadores reales.

## Lo común a los tres

| Necesidad | Detalle |
|---|---|
| Cuentas y login | Igual que el resto del juego: `CSLogin` (111) → `SCLoginResult`, `CSCharacterLogin` (1009) → `SCInitData` con `DHuman.generalList` (sus mechas y estrellas). Ver `re_work/protocol/LOGIN_FLOW.md` |
| Instantánea de mechas | Un `DGeneral` por mecha con `unit.prop` (`hpMax`, `atk`, `def`, `crit`…), `star`, `equipWeaponSN`, `dWeapon[]`, `combat`. El cliente aplica esos valores tal cual al rival. Para calcularlos con las fórmulas del juego, ver `generalById()`/`applyBattleProps()` en `MainHotFix.lua`; un servidor puede guardar el `DGeneral` que calculó el cliente del propio jugador |
| Equipos por modo | `CSGeneralInfoAttIng{type}` (1931) → `SCGeneralInfoAttIng{type, gens[], atSkills[]}` (1932). **Tipo 5 = Arena** (3 mechas + 3 AT) y **tipo 6 = Points Match** (3 mechas). El servidor guarda la formación de cada jugador; es lo que verán sus rivales |
| `DHumanInfo` del rival | `humanId, name, level, combat, topCombat, rank, driverShowSn` (child que se muestra), `generalSN`, `serverId`, `titleSn`, `faceSn`, `atFit` |
| Escenario | Para entrar al combate: `SCInstanceEnter{instSn, general}` + `SCStageSwitch{stageSn = repSn = nivel}`. El nivel decide la interfaz que carga `GameplayRoot.Start` (`ConfCommonInfo.type`): **7 = Arena (70001)**, **8 = Points Match (80001)**, **6 = Teamwork (60001… Normal / 60101… Hard)** |
| Resultado | El cliente envía el resultado (enum `MatchResult`: 0 derrota, 1 empate, 2 victoria, 3 victoria perfecta). Un servidor serio debería validarlo (tiempo de combate, daño, CR) para evitar trampas |

## Arena (Competition, ids 3400–3426)

| Id | Mensaje | Qué debe hacer el servidor |
|---|---|---|
| 3406/3407 | `CSCompetitionInfo` → `SCCompetitionInfo{rank, point, totalNum, totalWinNum, dailyNum, weeklyWinNum, lastSeasonPoint, lastSeasonRank, gotDailyAward, gotWeeklyAward, gotLastSeasonAward}` | Estadísticas del jugador. Puntos mínimos 600 (`ConfGlobalParam 17002`) |
| 3400 | `CSCompetitionFormation{generalIDs[3], atList[3]}` | Guardar el equipo de Arena (tipo 5) y responder `SCGeneralInfoAttIng{type = 5}` |
| 3401/3402 | `CSCompetitionRandom` → `SCCompetitionRandomResult{enemyInfo, enemyProp, enemyPoint, isPvp, pvpType, token, ip, port, camp, order, …, enemyGeneral[3]}` | **Emparejar con otro jugador real** de puntos parecidos y enviar su instantánea (`enemyGeneral` = sus 3 `DGeneral` de Arena). Con `isPvp = false` el cliente pasa directo a `ArenaVS` sin servidor de batalla. Con `isPvp = true` antes se conecta a `ip:port` y envía `CSTokenLogin{token}` (esperando `SCTokenLoginResult{resultCode = 0}`). Al final puede recibir `SCFinishFightResult`, pero el combate sigue siendo contra la IA, así que **`isPvp = false` es lo recomendable** |
| 3420/3421 | `CSCompetitionRandomCancel` / `SCCompetitionRandomMatchFail{code}` | Cancelar o fallar el emparejamiento |
| 3403 | `CSCompetitionEnter` | Responder con `SCInstanceEnter` + `SCStageSwitch` hacia 70001 (tipo 7). Combate de 3 rondas |
| 3404/3405 | `CSCompetitionEnd{isWin = MatchResult, humanId}` → `SCCompetitionEnd{isWin, newPoint, newRank, oldRank, newEnemyPoint}` | Actualizar los puntos de **los dos** jugadores (el rival pierde o gana puntos aunque no esté conectado), guardar el registro en el historial de ambos y pagar las monedas de Arena (`compete`, objeto 6) con `SCHumanInfoChange` / `SCPlayerCompeteCoinChange` (1434) |
| 3412/3413 | `CSCompetitionBattleLog` → `SCCompetitionBattleLog{logs[DCompetBattleLog]}` | Historial: `isActive = false` si te atacaron a ti |
| 3410/3411 | `CSCompetitionRank{firstIndex, endIndex}` → `SCCompetitionRankResult{totalNum, firstIndex, endIndex, myIndex, info[DCompetHumanInfo], sidList}` | Ranking real del servidor |
| 3408/3409 | `CSCompetitionAward{type, lv}` → `SCCompetitionAwardResult{type, lv, produce}` | Premios de `ConfCompeteAward`: tipo 1 diario (combates), tipo 2 semanal (victorias), tipo 3 temporada (rango Bronze…Challenger), tipo 4 Hall of Fame |
| 3414/3415 | `CSCompetitionChampion` → `SCCompetitionChampion{info[DCompetitionChampionList{year, month, championInfo[]}]}` | Campeones de cada temporada |
| 3422–3426 | `CSFriendlyPKCreate{friendId}`, `SCFriendlyPKInvite{friendId, friendName}`, `CSFriendlyPKReply{friendId, reply}`, `SCFriendlyPKCancel{resultCode}`, `SCFriendlyPKLink{friendId}` | **FriendArena**: duelo amistoso contra un amigo. Reenviar la invitación al amigo y, al aceptar, emparejarlos como en `CSCompetitionRandom` |

## Points Match (PointRace, ids 3470–3487)

| Id | Mensaje | Qué debe hacer el servidor |
|---|---|---|
| 3478/3479 | `CSPointRaceInfo` → `SCPointRaceInfo{rank, point, rankYesterday, pointYesterday, gotRankAward, gotPointAward, count, refreshCount, buyCount, lastRestoreTick}` | `count` = intentos **que quedan** (el cliente exige > 0; máximo 6). Se recuperan con el tiempo desde `lastRestoreTick` (ms). Puntos mínimos 600 (`ConfGlobalParam 16002`) |
| 3470 | `CSPointRaceFormation{generalIDs[3]}` | Guardar el equipo de Points (tipo 6) y responder `SCGeneralInfoAttIng{type = 6}` |
| 3471/3472 | `CSPointRaceEnemyList` → `SCPointRaceEnemyList{enemyList[DCompetHumanInfo]}` | **5 jugadores reales** cerca de tus puntos, con `genList[DSimpleGeneral{sn, star}]` para mostrar sus mechas |
| 3484 | `CSChangePointRaceEnemy` | «Refresh» (cuesta oro, `refreshCount`): otra lista de 5 |
| 3473/3474 | `CSPointRaceEnemyInfo{enemyId}` → `SCPointRaceEnemyInfo{enemyInfo, enemyProp, enemyGeneral[3]}` | Instantánea completa del rival elegido |
| 3475 | `CSPointRaceEnter{humanId}` | `SCInstanceEnter` + `SCStageSwitch` hacia 80001 (tipo 8). Combate de 3 contra 3 a la vez |
| 3476/3477 | `CSPointRaceEnd{isWin = MatchResult, humanId}` → `SCPointRaceEnd{isWin, newPoint, newRank, oldRank, myChangePoint}` | Descontar un intento, actualizar los puntos de ambos y pagar oro (`ConfGlobalParam 16008.intArray[MatchResult]`) y, al ganar, medallas Points (objeto 6) igual a los puntos ganados |
| 3485/3486 | `CSPointRaceBattleLog` → `SCPointRaceBattleLog{logs}` | Historial |
| 3482/3483 | `CSPointRaceRank` → `SCPointRaceRankResult` | Ranking |
| 3480/3481 | `CSPointRaceAward{type}` → `SCPointRaceAwardResult{type, produce}` | Premio diario por rango y por puntos (`ConfPointRaceAward`, entrega «a las 21:00» según el rango del día anterior: `rankYesterday` / `pointYesterday`) |
| 3487 | `CSPointRaceBuyCount` | Comprar intentos con diamantes |
| — | `CSStoreInfo` / `CSStoreBuy` (4100/4103) | Tienda de Points: `ConfStore.storeType` 6, pagada con el objeto 6 |

## Teamwork (TeamRaid, ids 3450–3460)

Cooperativo contra un jefe. El «asistente» es una instantánea del mecha de otro jugador; la IA lo maneja a tu lado.

| Id | Mensaje | Qué debe hacer el servidor |
|---|---|---|
| 3450/3451 | `CSTeamBattleInfo` → `SCTeamBattleInfo{challengeNum, randomNum, inviteCnt, invitedPlayerList[]}` | `challengeNum` = intentos **usados** hoy (límite `ConfGlobalParam 20005`). `randomNum` = emparejamientos usados (coste en oro de `ConfGlobalParam 20001`). `inviteCnt` = invitaciones usadas |
| 3452/3453 | `CSTeamBattleRandomAssist` → `SCTeamAssist{assistInfo, assistProp, assistGeneral, assistType}` | «Match»: elegir **otro jugador real** al azar y enviar su mecha actual (`assistGeneral`). `assistType` 1 = aleatorio. El cliente ajusta `combat`/`atk`/`def` del asistente según `ConfGlobalParam 20015` (`TeamRaidData.OnSCTeamAssist`) |
| 3459/3460 | `CSTeamBattleUnionMember` → `SCTeamBattleUnionMember{member[DUnionMemberTeamBattle{id, lv, name, comat, BeInvitedCnt, driverShowSn, genSn, star}]}` | «Guild»: miembros de tu gremio que puedes invitar como asistentes. Requiere el sistema de gremios |
| 3457 | `CSTeamBattleInviteAssist{assistId, type}` | Invitar a ese miembro: responder `SCTeamAssist` con su instantánea (`assistType` 2) y sumarle `BeInvitedCnt` (recompensa para quien ayuda, si se quiere) |
| 3458 | `CSTeamBattleBuyInviteCount` | Comprar invitaciones |
| 3454 | `CSTeamBattleStart{mission, autoFight, multAward}` | `mission` = nivel `ConfCommonInfo` tipo 6, elegido por el cliente (Normal 60001…, Hard 60101…). Responder `SCInstanceEnter` + `SCStageSwitch`. Cobrar diamantes si `autoFight` (20) o `multAward` (×3, 80) |
| 3455/3456 | `CSTeamBattleEnd{mission, isWin(bool), autoFight, multAward}` → `SCTeamBattleResult{mission, isWin, produce[]}` | Sumar el intento y pagar el `rewardList` de la misión (×3 si `multAward`; ×2 en los 2 primeros del día) |

## Resumen para quien monte el servidor

1. **Base de datos por jugador:** cuenta, `DHuman`, mechas (`DGeneral` con stats), formaciones de tipo 5 y 6, puntos de Arena y Points, historiales, contadores diarios y semanales, gremio.
2. **Emparejamiento:**
   - Arena: 1 rival por puntos.
   - Points Match: lista de 5 rivales.
   - Teamwork: 1 asistente al azar o un miembro del gremio.

   Siempre se envía la *instantánea* guardada; el otro jugador no necesita estar conectado.
3. **Entrada al combate:** `SCInstanceEnter` + `SCStageSwitch` con el nivel del tipo correcto (7, 8 o 6).
4. **Resultado:** validar, actualizar a los dos jugadores (puntos, historial) y pagar recompensas desde las tablas `Conf*` del propio cliente.
5. **Ciclos diarios y semanales:** reinicio de intentos y premios (Arena diario y semanal, Points a las 21:00, Teamwork diario) y temporadas.

**Referencia directa:** en `MainHotFix.lua`, los bloques «Arena (Competition)», «Points Match (PointRace)» y «Teamwork (TeamRaid)» ya responden todos estos mensajes con robots (`Arena.robots()`, `arenaEnemy()`). Son una buena base: basta con reemplazar la generación de robots por consultas a la base de datos de jugadores.
