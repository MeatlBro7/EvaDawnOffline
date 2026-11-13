# EVA Dawn 3.1.0 — Modo offline (versión 0.1: arranque + login)

## Qué hace
| Pieza | Archivo | Efecto |
|---|---|---|
| Parche nativo | `patch_libil2cpp.py` | `BootMediator.BeginBoot` carga `MainHotFix` **antes** de la verificación de versión (2 instrucciones en arm64, `0xE90B88`/`0xE90B8C`). |
| Servidor falso | `MainHotFix.lua` | Hotfix xLua: arranque sin red, lista de servidores local, login sin SDK Sina, `ConnectAPI` simulado que responde login/personaje/InitData/guía/hora. |
| Bundle | `build_luabundle.py` | Inserta `MainHotFix.lua` en `luascripts.bundle`. |
| Paquete | `build_package.py` | APK sin firmar (solo arm64, lib parcheada) + OBB con el bundle nuevo. |
| Prueba | `test/run_test.py` | Ejecuta el Lua en Lua 5.3 con un `CS` simulado y verifica el orden del login. |

## Estado (2026-11-07)
Probado en MuMu Player 12 (Android 15, arm64 vía houdini): arranca sin red, hace login automático
y entra al juego (modo Historia, capítulo 1) con los recursos del servidor falso.
Las peticiones sin handler propio reciben un `SC*` vacío emparejado (`gen/pairs.lua`, 301 pares).
Lobby completo visible: los botones dependen de `GuideData.m_lstModUnlocked`, que se llena con
`SCModUnlock{type=1, id=[sn...]}` (type 2 = desbloqueo nuevo con animación). Se envía tras `SCInitData`
con los `sn` de `ConfModUnlock.array` (todos si `OFFLINE.unlockAllMods = true`).
`DEBUG = true` en MainHotFix traza métodos del lobby (`T`) y vuelca la jerarquía de UI activa (`D`).

### Batallas (Historia) — funcionando
- Login automático (`LoginView.OnShow` llama a `ButtonEnterGame`).
- 41 mechas en `DHuman.generalList` (`OFFLINE.mechas = 'all'|'born'`), Eva01 por defecto.
  `DGeneral.star` = `starInit % 100` (aureolas 01..05) y un `DWeapon` por cada arma de `weaponList`.
- `CSInstanceEnter` → `SCInstanceEnter{instSn, general}` + `SCStageSwitch{stageSn≠10000, repSn}` → modo Gameplay.
  Stats reales con las fórmulas del cliente (`MechaData.CalcBaseProp/CalcBattleProp/CalcCombat`,
  instancia capturada al hotfixear `MechaData.InitData`). Eva01 nivel 1: HP 1496, ATK 398, DEF 158.
- El combate lo simula el cliente. `CSInstanceEnd.star` llega codificado (un dígito por condición,
  2 = cumplida: `222` = 3★). `SCInstanceEnd.star` = conteo; `DInstance.stars` = codificado.
- Progreso en PlayerPrefs `OFF_clears`; `SCAllChapter` al login y `SCUpdateChapter` tras cada victoria.
- `WinView.ButtonClose` fuerza `m_finished` (la corrutina no termina sin servidor) → vuelve al lobby.
- Probado: niveles 1-01, 1-02 y 1-03 superados con 3★ en automático; 1-04 desbloqueado.
- Pendiente: derrota/revivir (`CSInstanceRevive`) sin handler propio.

### Recompensas, cartera y mochila — funcionando
- Tipo de `ConfItemData` → campo de `DHuman` (`CURRENCY`: Gold→gold, UserExp→userExp, Diamond,
  Activity→actValue, Talent, Exploit, ...). El resto va a la mochila (`OFF_bag`, `SCInitData.dBag`).
- Paquetes `ConfItemProduce` (sin `ConfItemData`): botín de nivel `1001xxxx` → 1 objeto al azar;
  cofres `1101xxxx` → todos. `SCInstanceEnd.produce` = lo realmente acreditado.
- Victoria: `rewardList` siempre, `firstList` la 1.ª vez, `threeStar` al lograr 3★ por 1.ª vez.
  Se envían `SCHumanInfoChange` (totales) y `SCBagUpdate` (`DItem.num` = total; type 1 nuevo, 2 actualización).
- Nivel del jugador con `ConfHumanLevelExp` (`exp` para subir, `maxAct` = energía máxima; energía llena al subir).
- Energía **ilimitada** (`OFFLINE.unlimitedEnergy = true`, por defecto): nunca se descuenta y siempre
  está al máximo del nivel. El cliente nunca resta energía localmente (`PlayerData.energy` solo se escribe
  en `InitData`/`UpdateData`); solo valida con `HasEnoughMoneyToBuy`, que así siempre pasa.
  Con `false`: `costPower` (5) al ganar y regeneración de 1 cada 6 min (`OFF_n_actTime`).
- Los scripts usan Python 3.14 (`PY=...` en `iterate.sh`); la 3.15 del PATH no tiene UnityPy/lupa/capstone.
- Cofres de estrellas: `DChapterInfo.boxState` (0/1/2) por cada `starNum`; `CSBoxAward` (índice base 0)
  → `SCBoxAward{code=1}` + recompensa `starReward[i]`. Sin `boxState`, `ChapterData.PveLead` fallaba
  en el lobby al llegar a 12★.
- Valores en PlayerPrefs como texto (`OFF_n_<campo>`), porque `PlayerPrefs.GetInt` es de 32 bits.

`bash play_level1.sh` automatiza login → Historia → nivel → Attack → Skip → Auto (coordenadas 1600x900).

### Mechas y mejoras — funcionando
- Estado por mecha en PlayerPrefs `OFF_mecha` (`confId:estrellas:armaEquipada:arma=nivel/...`) y mecha
  actual en `OFF_n_currentGeneral`. `buildGeneral` lo usa para `DGeneral.star`, `equipWeaponSN` y `DWeapon.level`.
- `CSGeneralStarUp{id}` → `SCGeneralStarUp{result, sn = confId como texto, star}`. Coste: chips del mecha
  en `ConfMechaStar(índice*100 + estrella_destino).materialList/materialValue` (Eva01: 30/60/100/200).
- `CSWeaponIntensify{id, weaponSN}` → `SCWeaponIntensify` (el cliente suma +1 al nivel). Coste:
  `ConfWeaponLevel(tipo*1000 + nivel_actual).costItem` (Gamma Crystal 120, 135, 150...), máx. `ConfWeaponInfo.maxLv`.
- `CSEquipWeapon` → `SCEquipWeapon`; `CSWeaponDeblocking` → `SCWeaponDeblocking`; `CSChangeGeneral` → `SCChangeGeneral`.
- El mecha elegido con "Tap to change" viaja en `CSInstanceEnter.generalId`.
- **Monedas con id ≤ 99**: el cliente las lee con `PlayerData.GetMoney` (no de la mochila). Gamma Crystal (14)
  = `PlayerData.crystal`, que se carga desde **`DHuman.EvolveStone`**. Los materiales (id > 99) pasan de la
  mochila a `MaterialData` vía `BagData.UpdateItemData`. `payItems` cobra de la cartera o de la mochila según el tipo.
- Kit inicial configurable (`OFFLINE.starterKit`, una vez): 100 chips de Eva01 + 2000 Gamma Crystal.
- Probado: Eva01 1→4★, arma de Alexander 1→3, cambio de arma equipada y batalla con Alexander.

### Colecciones del gacha desbloqueadas (gacha deshabilitado) — funcionando
`OFFLINE.unlockAllCollections = true` (y `OFFLINE.mechas = 'all'`): todo disponible desde el inicio, a nivel 1.
| Colección | Cómo se entrega | Cantidad |
|---|---|---|
| Mechas | `DHuman.generalList` (estrellas base de `ConfMechaInfo.starInit`) | 41 |
| Children (pilotos) | `SCGetChildInfo.info` al login (el cliente nunca lo pide), `ConfChildrenInfo.exist` | 44 |
| Fondos del lobby | cada Child trae su `lobbyBg`; el mostrado es `DHuman.driverShowSn` (→ `PlayerData+0xD8`) | con los Children |
| Clones ángel | `SCInitData.angels` (`DAngel{id, sn, lv=1}`) | 12 |
| Aid (AT Field) | `SCATFieldList.skill` (`DSkill{skillSn, skillLevel=1}`) + `fitId` | 18 |

Elecciones persistentes: `CSChangeShowChildren` → `OFF_n_showChild` (el cliente aplica el cambio solo);
`CSATFieldFit` → `SCATFieldFitResult` + `OFF_n_atFit`; `CSAngelHelpChange` → `SCAngelHelpInfo` + `OFF_angelHelp`
(reenviado al login). La tabla automática emparejaba mal estas dos últimas.

### Mejoras de colecciones — funcionando
Niveles persistentes en `OFF_lv_child`, `OFF_lv_angel`, `OFF_lv_at` ("sn:nivel,...") y enviados al login.
| Colección | Petición → respuesta | Coste (configuración del juego) |
|---|---|---|
| Children | `CSLvUpChildren{sn}` → `SCGetChildren{info, type=2}` | `ConfChildrenLevel(piloto*100 + nivel destino)`: chips del piloto (10/20/30/45…) |
| Ángeles | `CSAngelLvUp{id}` → `SCAngelChange{angel, type=1}` | `ConfAngelLevel(1000 + nivel actual)`: Core (sn 13) + oro. El "Lv." visible es `showLevel`; cada subida avanza una etapa del anillo |
| Aid | `CSATFieldLvUp{atId, type=2}` → `SCATFieldLvResult{atId, lv, type}` | `ConfATSkillLevel(tipo*1000 + nivel destino)`: chips (`ConfATSkillInfo.chipId`) + oro; máx. `maxLevel` (15) |

Nota: la fila de nivel N de `ConfATSkillLevel` es el coste de **llegar** a N. El contador de chips de Aid
no se refresca en vivo tras mejorar (sí tras reiniciar). `DEBUG_TEST_KIT` entrega materiales solo para pruebas.
### Fuentes de materiales (sin gacha) — funcionando
- **Tienda con oro** (`OFFLINE.shop`): pestaña *Item* (tipo 1) = Core, Gamma Crystal, chips de Aid y de mechas;
  pestaña *Discount* (tipo 8) = chips de pilotos. `CSStoreInfo` → `SCStoreInfo.list` (`DStoreInfo{sn=fila ConfStore
  válida, id=objeto, type=pestaña, num, price, buytime=999}`); `CSStoreBuy` → cobra oro, acredita, `SCStoreBuy`.
  La moneda de cada pestaña está fija en el cliente (diamantes): hotfix de `StoreItemEx`/`DiscountItem`
  (`UpdateData`: icono `public_money`, oculta límite/VIP/precio original y registra el clic; `OnBuyClick`: valida oro).
- **Botín extra** en cada victoria (`OFFLINE.battleDrops`): Core + chips al azar de piloto, Aid y mecha.

### Talent, Armor y Tech — funcionando
- **Talent**: `CSTalentInfo` (sin campos) = activar el siguiente. Coste `ConfTalent(nivel actual)`:
  `costTalent` Life Source (campo `talent`) + `costGold`. `SCTalentInfo.telentLevel` = nuevo nivel; al login
  `DHuman.talentLevel` (`OFF_n_talentLevel`). 121 niveles.
- **Armor**: piezas por nivel de jugador (`ConfEquipInit.unlockLv`: 7/9/11/11/13/13), enviadas en
  `SCInitData.equips` y, al subir de nivel, con `SCEquipChange{type=6}`. Estado en `OFF_equip`.
  `CSEquipUp` → nivel +1, coste `ConfEquipLevel(pieza*1000 + nivel)` Soul Stone (sn 10, campo `stone`) + oro,
  tope = nivel del jugador. `CSEquipMatChange` instala materiales (máscara en `DEquip.clkJson`);
  `CSEquipElevation` evoluciona a `qualityUpObj` (oro `costGold`).
- **Tech (genes)**: genes = objetos de mochila (`ConfGene`, 2010101…); cada ranura acepta un color
  (`ConfEquipInfo.geneType`) y se abre con el nivel de la pieza (`geneUnlockLv`). `CSEquipGeneUp` instala,
  `CSEquipGeneDown` quita, `CSEquipGeneCompose` fusiona (EXP += `baseExp`, sube con `levelExp` → `levelObj`).
  `DEquip.genes` solo debe llevar ranuras **ocupadas**. Enviar `SCBagUpdate` **antes** de `SCEquipChange`
  (tipos 3/4/5 redibujan la vista).
- `SCEquipChange.type` = constantes de `EquipData`: **1** ELEVATE, **2** MATINSTALL, **3** GENEINSERT,
  **4** GENEMERGE, **5** GENEUNLOAD, **6** EQUIPADD, **7** EQUIPUP. `EquipMediator` activa `EquipView.LockClick`
  al enviar Upgrade/materiales/evolución y solo lo libera el efecto de los tipos 7/2/1: con un tipo erróneo (o
  sin respuesta) la vista deja de aceptar toques. Por eso los handlers responden **siempre**, también al fallar.
- `SCBagUpdate` usa `type=1` (fija el total); `type=2` **suma** la cantidad (antes duplicaba contadores).
- Tienda: + Soul Stone, Life Source y genes Nv.1 de cada color; el precio mostrado se corrige en la ficha.
  Botín extra: + 3 Soul Stone y 1 gen al azar.

### Ángeles: nivel inicial y costes por tipo
- Coste de subir un clon = `ConfAngelLevel(ConfAngelInfo.type * 1000 + nivel)` (cada clon tiene su `type`,
  1–12); antes se usaba siempre `1000 + nivel` (tabla de Clone 04).
- El nivel enviado nunca baja de `ConfAngelInfo.initLv`. **Clone E-10** tiene `initLv = maxLv = 200`: se
  obtiene al máximo ("Lv.50 Max Grade") y no se mejora.

### Elite — funcionando, intentos ilimitados
- Los niveles Elite (`ConfCommonInfo` con el `type` de 20001, ids 20001–20025) **no** están en
  `ConfCommonChapter`, así que `SCAllChapter` no los lleva. Su progreso va en `SCInstanceElite{instances}`
  (`ChapterData.UpdateElite`); sin él no se veían las estrellas ni se abrían los siguientes.
- `OFFLINE.sendElite()` (al login y tras cada victoria normal/Elite) envía los superados con sus estrellas y
  los desbloqueados con 0★. Desbloqueo = Elite anterior superado **y** nivel normal `preCommon` superado
  (20001→1-04, 20002→1-08, 20003→1-12, 20004→2-04 …) y nivel ≥ `minLevel`. `attNum = 0` → siempre 3/3.

### Tech de ángeles (genes en clones) — funcionando
- Igual que la Tech de armadura pero sobre `DAngel.genes` (`DGene{id,pos,sn,value}`); color por
  `ConfAngelInfo.geneType`, hueco bloqueado si el nivel del clon < `geneUnlockLv[pos]` (pos empieza en 0).
- `CSAngelGeneUp` instala, `CSAngelGeneCompose` fusiona, `CSAngelGeneDown` quita. Respuesta `SCAngelChange`
  con el `type` de `AngelData`: **1** ANGELUP, **2** GENEINSERT, **3** GENEMERGE, **4** GENEUNLOAD, 5 ANGELADD
  (con el tipo equivocado el cliente ignora la respuesta). `DGene.id = 800000000 + sn*100 + pos`.
- Estado en `OFF_angelGenes`. `GeneData` vacía sus genes-en-ángel después de procesar `SCInitData`, así que
  tras el login se reenvía un `SCAngelChange` (type 2) por cada clon con genes.

### Vir. Drill (ConfCommonInfo.type 3) — funcionando, intentos ilimitados
- Niveles en `ConfCommonResource` (30100…); estado `DInstance{attNum=0, cooldownTime=0}` enviado en
  `SCInstanceRecourse` al login y tras cada partida → siempre "Remaining 3 Attempts", sin espera.
- La victoria abre `SupplyWin`, que exige **exactamente 1** entrada en `SCInstanceEnd.produce`
  (con más se quedaba detenida); se muestra la principal, el resto se acredita igualmente.

### Angel Attack (torre, ConfCommonInfo.type 4) — funcionando
- `CSOpenPveTower` → `SCOpenPveTower`: `currNum` = **pisos ya superados** (el cliente resalta y pide
  `currNum + 1`), `maxPassNum` = mejor piso, `resetNum` = 1.
- `CSPveTowerEnter{num}` no tiene respuesta propia: el servidor arranca `ConfPVETower(num).commonId`
  como `CSInstanceEnter`. Al ganar: recompensas `rewardList` (+ `firstList` la primera vez), pantalla
  `TowerWin`, `OFF_n_towerCur/towerMax` avanzan. `CSPveTowerReset` vuelve al piso 1;
  `CSPveTowerBoxReward` entrega el cofre (`boxList`).

### Expedition — funcionando
- 15 misiones (`ConfPVEExpedition`: `commonId` = nivel, `awardSn/count` = cofre, `autoPrice` = tickets del
  Blitz). El servidor real enfrentaba a copias de otros jugadores; aquí el rival de la misión *m* es otro mecha
  con las stats reales que calcula el cliente (`generalById`) ×(0.55 + 0.06·(m−1)), en
  `SCExpeditionInfo.enemyGeneral/enemyProp/enemyInfo` (lo usa `OpponentMgr`, como en Arena).
- `CSExpeditionChooseGenerals` = equipo; `SCExpeditionInfo.generals[].towerCurHp/towerMaxHp` = HP persistente.
  El HP inicial de la batalla sale de `SCInstanceEnter.general.towerCurHp/towerMaxHp`
  (`LobbyMediator.InitMechaData`); sin él la barra empezaba vacía y el resultado devolvía HP 0.
- `CSExpeditionAttack{mode 1}` → batalla (`CSInstanceEnter` con `commonId`); `ExpeditionMode.CommitResult`
  → `CSExpeditionAttackResult` → `SCExpeditionResult`. `mode 2` (= `OFFLINE.expSweepMode`) = Blitz: victoria
  automática con `SCExpeditionAutoFightResult`. Tickets = objeto **102** (`BagData.ticket`), siempre a 99.
- `CSExpeditionGetReward` → cofre; `CSExpeditionReset` gratis e ilimitado; `CSExpeditionSupersede` cambia mecha.
  Estado en `OFF_exp`.
- **Tienda Expedit** = `ConfStore.storeType 4`, moneda `buyType 5` (Exped. Coin). `OFFLINE.realShops` sirve las
  filas reales (artículo por peso) y la compra cobra en la moneda de la fila.

### Artifact (Hallows) — funcionando
- Al login `SCHallowsList{info: DHallows{id,lv,exp}, glyphs: DHallowsGlyphs{id,hallowsID}}`. 8 artefactos
  (`ConfHallowsInfo` 7020001…): se desbloquea al superar `unlockLevel` (Historia: 2-01, 3-01…) **y** tener el
  anterior (`unlockHallows`) a Lv.70 (= `maxLv`). Al cumplirse en juego: `SCHallowsInfo{isNew=true}`.
- `CSHallowsLvUp{id,type}`: type 1/2/3 = Fort.Once/10x/100x → `costItemCount` 10/100/1000 del objeto **11**
  (Fort. Stone) por `addExp` 5/50/500. Nivel: `ConfHallowsLevel(type*1000 + lv).needExp`. Respuesta
  `SCHallowsInfo{id,lv,exp}`. Glifos abiertos con `lv >= openGlyphsLv[i]` (se reenvía la lista al abrir uno).
- Fort. Stone: panel "Buy Fort. Stone" (1 cristal c/u, `ConfStore` fila 23), tienda de oro (100 por 5000) y
  botín de batalla (`battleDrops.hallow = 10`). Estado en `OFF_hallows`.
- El total "Artifact Boost" de la vista solo se recalcula al abrirla por primera vez en la sesión (cliente);
  las stats de combate sí usan el nivel actual.
- **Compras de tiendas reales** (`CSStoreBuy` sin ficha de la tienda propia, p. ej. Buy Fort. Stone): se usa
  la fila real de `ConfStore` (artículo, cantidad × `count`, precio en `buyType`). Antes se confundía con las
  filas reutilizadas por las pestañas propias y vendía otro objeto.

### Glifos: refinado (Polish) — funcionando
- `DHallowsGlyphs.prop1/2/3` = % (0–100) de `ConfHallowsGlyphs.hpMax/atk/def` (`HallowData.Attribute`:
  `prop × 0.01 × máximo`). Color por `ConfHallowsPolishColor` (blanco 1–9 … naranja 80–100). Estado `OFF_glyphs`.
- Refine1x: `CSGlyphsPolish{id,num=1,propKey="0,1,2,"}` (posiciones 0–2 sin candado) →
  `SCGlyphsPolishResult1{glyphsID, result[DGlyphsPolish1{pos,value}]}`. Coste `ConfHallowsPolishType` 1/2/3
  (3/2/1 stats) = 5/15/30 Refine. Stone (objeto **12**); sin piedras se cobran los mismos cristales.
- Refine10x: `CSGlyphsPolish{num=10, propKey="1"}` (posición **1–3**) → `SCGlyphsPolishResult2{pos, value[10]}`,
  tipo 4 = 300. Guardar/descartar: `CSGlyphsPolishSave{id,saveOrForgo,index}` → `SCOpenGlyphs{glyphs,type=2}`.
- Valores aleatorios 1–100 sesgados hacia abajo (`1 + 99·r²`).

### Fuentes de cristales y Refine. Stone
- `battleDrops.crystal = 5` por victoria, `crystalFirst = 30` en la primera victoria de cada nivel (Historia/Elite).
- Tienda de oro: 100 cristales por 10 000 oro, 50 Refine. Stone por 5 000. Botín: `battleDrops.refine = 3`.

### Blitz (barrido) — funcionando, sin límites
- No consume energía, intentos, cristales (el aviso "Consume 30" de Vir. Drill no se cobra) ni tickets.
- **Story / Elite / Vir. Drill**: `CSInstanceAuto{sn,num}` → `SCInstanceAuto{sn,num,produces}` con una
  `DProduceList` por barrido (SweepView las lista; "Blitz for 5" = 5 entradas). Cada barrido da
  `rewardList` + el botín extra de `OFFLINE.addBattleDrops`. El cliente solo exige 3★ en el nivel.
- **Angel Attack**: `CSPveTowerAutoStart` → `SCPveTowerAutoStart{time=1}`. `time` es el inicio en ms y el
  restante = `time + Σ autoTime·1000 − ahora`, así que 1 ms = barrido ya terminado (instantáneo). Mientras
  tanto `SCOpenPveTower.sweeping=1`, `produces` = pendientes (`OFF_towerSweepRw`). `CSPveTowerAutoEnd` (Claim)
  acredita los pisos `towerCur..towerMax` y deja la torre en `towerMax + 1`.
- Expedition: ver su sección. Pendiente: Guild Boss (`CSAttackUnionBoss`), modo aún no emulado.

### Desbloqueo de módulos por progreso
`OFFLINE.unlockAllMods = false`: `ConfModUnlock.unlockLevel` es el **sn de un nivel de Historia** (0 = desde el
inicio), no el nivel del jugador. La lista la envía el servidor (`SCModUnlock` type 1 al login); al superar un nivel
por primera vez se envía type 2 con los módulos nuevos (animación de desbloqueo). Ejemplos: Research 1-08,
Elite 1-11, Tech 2-02, Vir. Drill 2-05, Angel 2-06, Angel Attack 2-08, Arena 2-11, Points Match 3-01,
Teamwork 3-02, Aid 3-03, Exped. 3-11, Artifact 3-12, Extreme Duel 4-04, 2vs2 4-06.

## Ciclo de desarrollo rápido
El log de la sesión anterior queda en `offline.prev.log` (junto a `offline.log`).
`bash iterate.sh [segundos]` regenera `gen/pairs.lua`, ejecuta la prueba, reconstruye bundle + OBB,
lo sube al emulador, reinicia el juego y deja `build/run/offline.log` y `build/run/screen.png`.
El log del servidor falso se escribe con `io.open` en
`/sdcard/Android/data/com.wyx.qzgame.google.evaoverseas/files/offline.log`
(`>` petición recibida, `A` respuesta automática vacía, `W` error/sin pareja).

## Construir
```bash
cd re_work/offline
python -I patch_libil2cpp.py ../../com.wyx.qzgame.google.evaoverseas/lib/arm64-v8a/libil2cpp.so build/libil2cpp.so
python -I build_luabundle.py ../../Android/obb/com.wyx.qzgame.google.evaoverseas/assets/Android/luascripts.bundle MainHotFix.lua build/luascripts.bundle
python -I build_package.py ../../com.wyx.qzgame.google.evaoverseas.apk ../../Android/obb/com.wyx.qzgame.google.evaoverseas/main.31.com.wyx.qzgame.google.evaoverseas.obb build/libil2cpp.so build/luascripts.bundle build/package
java -jar uber-apk-signer.jar -a build/package/eva_offline-unsigned.apk
python -I test/run_test.py
```

## Instalar en el emulador (Android 64 bits / arm64)
```bash
adb uninstall com.wyx.qzgame.google.evaoverseas
adb install build/package/eva_offline-aligned-debugSigned.apk
adb shell mkdir -p /sdcard/Android/obb/com.wyx.qzgame.google.evaoverseas
adb push build/package/main.31.com.wyx.qzgame.google.evaoverseas.obb /sdcard/Android/obb/com.wyx.qzgame.google.evaoverseas/
adb logcat -s Unity
```
En logcat deben aparecer las líneas `[OFFLINE] ...`. Los mensajes `sin handler para CSxxx` indican
peticiones que el servidor falso todavía no responde (siguiente trabajo).

## Limitaciones conocidas
- Solo **arm64-v8a**: se elimina `armeabi-v7a` del APK. El emulador debe ser de 64 bits (p. ej. LDPlayer 9, BlueStacks 5 Pie 64-bit, emulador de Android Studio arm64/x86_64 con traducción ARM).
- La firma cambia; si el código Java verifica la firma o la licencia, habrá que parchear `classes.dex` (Jadx/Apktool).
- El SDK Sina (Java) se sigue inicializando al abrir la app; sus peticiones fallan sin red, pero no deberían bloquear el juego.
- Tutorial: activado desde la versión de entrega (ver «Tutorial» más abajo).
- No verificado aún en dispositivo real: carga de `luascripts.bundle` en `BeginBoot` y CRC de bundles.

## Noah Crystal, nombre, logros/honores/títulos y CR (2026-11-09)

- **Noah Crystal** = objeto 103. `ConfWeaponLevel(type*1000+lv)`: Lv.30 es *Breakthrough* (`isSuper=1`,
  1260 Gamma + 10 Noah + 30 chips del mecha); Lv.31-39 piden 10 Noah, Lv.40+ piden 20. El cliente usa el mismo
  `CSWeaponIntensify`. Fuentes: tienda de oro (`OFFLINE.shop.noah` = 10 por 10000) y 1 por victoria (`battleDrops.noah`).
- **"Collection Prop"/"Collection Boost"** (MechaPanel/.../CollectAdd) partía las dos palabras en dos líneas que se
  pisaban. Hotfix de `MechaView.OnShow`: `horizontalOverflow = Overflow` en esas etiquetas.
- **Nombre**: `CSChangeNameState -> SCChangeNameState{freeCount=1}` (siempre gratis); `CSChangeName -> SCChangeNameResult{result}`
  (ChangeNamePanel copia el texto a PlayerData.name) + `SCStageChangeName`. `CSChangeNameRandom` (dado) da un nombre al azar.
- **Logros** (Rewards > Achieve): `CSOpenAchievement -> SCAchievementInfo`. `DAchievement`: lv = escalones cobrados,
  `targetProgress = param[lv]`, status 1 en curso / 2 cobrable / 3 completo, **`type` = ConfAchievement.type**
  (tipos 1..5 se pintan como 0/1 - 1/1). `getReward` busca el índice con `param[i] == targetProgress` y usa `reward[i]`
  (ConfItemProduce). `needLv = 9999` = logro oculto (no se envía). Progreso calculado del estado: Historia/Elite (sn
  superado), ola máxima de Angel Attack, nº de pilotos/mechas/Aid/clones/Artifacts, VIP, SR (quality 4)/SSR (5).
  Arena, Points Match y Likes quedan a 0. Estado `OFF_ach` = "sn:lv".
- **Títulos** (Info > icono de flechas): pestaña Achievement = `ConfTitle.type 0` (permanentes). Se obtienen al cumplir
  el honor (`ConfAchievement.showType 3`) cuyo premio es el objeto del título (`ConfTitle.itemSn`); se otorgan solos y
  quedan sin activar. `CSActivateTitle`/`CSPutonTitle`. Se envían en el login porque `PlayerData.TitleAttribute`
  (bonus de stats y CR) solo cuenta los títulos activados de `SCGetTitleResult`. Estado `OFF_titles` = "sn:activo",
  equipado = `OFF_n_titleSn` (DHuman.titleSn). La pestaña Honor (type 1) eran títulos de ranking (Arena, CR, Points
  Match, Extreme Duel); offline se obtienen por **hitos de CR máximo** (`OFFLINE.honorCR`, `OFF_n_combatMax`):
  50k/75k/100k/125k/150k (+1750 HP), 200k-400k (+2450 HP), 500k-1M (+3500 HP). Son permanentes (overdueTime -1);
  el texto de condición del cliente sigue diciendo el ranking original. El texto "Title Boost" de la vista sigue en 0 aunque el
  bonus sí se aplica (el CR sube al activar).
- **CR del jugador** (`DHuman.combat` / PlayerData.combat): `MechaData.CalcSingleCombat` del mecha en combate (incluye
  títulos, pilotos, armas...). Se comprueba cada 2 s fuera de batalla y si cambia se envía `SCHumanPropChange{human:
  combat + prop}` (el cliente muestra el aviso de subida). `prop` es obligatorio: UpdateProp lo lee sin comprobar null.

## Clones de ángel: Research (2026-11-09)

- Las mejoras SÍ se guardan (`OFF_lv_angel`). El "Lv." de la vista es `ConfAngelLevel.showLevel` y los círculos
  numerados son `showStep`: cada Research avanza un paso y el Lv. solo sube al completar la etapa (p. ej. nivel
  interno 10 = Lv.3).
- El selector saltaba al primer clon porque `AngelView.InitView` (ordena la lista y selecciona el índice 0) se
  ejecuta también al cambiar oro/Core y el CR, es decir, tras cada Research. Hotfix: se recuerda el clon elegido
  (`AngelSelect` -> `EventTriggerListener.parameter` = sn) y tras `InitView` se vuelve a seleccionar
  (`m_tempListener = nil` para que AngelSelect no lo ignore). Al abrir la vista (`OnShow`) se olvida.

## Pantalla de victoria (WinView) (2026-11-09)

- `SCInstanceEnd.code` debe ser **distinto de 0**: en `WinView.OnShow`, `code == 0` es la rama de error y la ventana se
  quedaba con los valores por defecto del prefab (condiciones en chino, 1428 de oro, rosa y gema, sin modelo del
  mecha ni pose). Con `code = 1` se rellenan las condiciones en inglés (`GLOBAL_COMMON_PASS0..2`), oro/EXP, todos
  los objetos de `produce` (sn > 4) y el modelo `<model>_ui` con su arma y pose. Solo WinView lee `code`.

## Armor: materiales de mejora (2026-11-10)

- `MaterialData` (lo que cuenta "Owned" y los x/3 de la pieza) **solo** se llena con `SCBagUpdate`
  (`BagData.UpdateItemData` tipo 1 -> `AddMatVO`); la mochila inicial del login no la toca. Por eso, tras reiniciar,
  los materiales que tenías contaban como 0. Tras el login se reenvían todos los objetos de tipo Material como
  `SCBagUpdate` (log: "materiales de armadura registrados: N").
- Fusión (`CSEquipMatMerge{sn}`, botón Synth de MaterialPanelC): `ConfMaterial(sn).costItem x costNum + costGold`
  -> 1 x sn. Orden importante: primero `SCBagUpdate` (AddMatVO), luego `SCEquipMatMerge{id = sn}` (MatMerge recalcula
  con MaterialData) y después `SCEquipChange` tipo 2 de cada pieza que usa ese material, porque la vista de Armor
  solo repinta sus ranuras ("Synth" -> "Equip") con SCEquipChange. Sin esto el material sintetizado solo aparecía
  al reiniciar.
- `DBagUpdate.type` es la operación de `BagData.UpdateItemData`: **1 = cambiar cantidad** (`MatVOAmount`, falla si el
  material no existe aún en MaterialData), **2 = añadir** (`AddMatVO`, `AddChildrenChip`...), 3 = quitar. `Wallet.push`
  lleva `OFFLINE.clientBag` (objetos que el cliente tiene: mochila del login + lo enviado): objeto desconocido -> 2,
  conocido -> 1, total 0 -> **3 (quitar)** y se olvida (lo siguiente irá con 2). Con 1 el objeto quedaba registrado
  con cantidad 0 y One-Tap de Tech metía ese gen agotado en la fusión ("+0 EXP"). Antes se usaba la marca `nuevo` de cada cambio,
  que fallaba cuando el mismo objeto salía varias veces en un Blitz (la 2ª entrada la pisaba) y en Tech/genes. Antes todo iba con 1 y un material
  sintetizado u obtenido por primera vez (p. ej. Prophet Sensor II) no aparecía hasta reiniciar. La mochila inicial
  (`BagData.InitData`) ya registra los materiales con la operación de añadir.
- Los materiales base salen del paquete de botín de los niveles de Historia que indica "Sources" (p. ej. 10010202 =
  Soul Stone o Metal Instantizer II, uno al azar por victoria/Blitz).

## Tech: lista de genes de la fusión (2026-11-10)

- La mochila del servidor guarda los genes apilados (un DItem por tipo con `num`); el cliente los carga como un
  `GeneVO` con `amount`. `GeneMergeListView` agrupa VOs en cajas y, al meter un gen en la fusión, `RemoveGeneBox`
  quitaba el VO entero de su caja (el servidor original tenía un objeto por gen): la caja quedaba sin número y no se
  podía volver a elegir hasta reabrir la vista.
- Hotfix: `RemoveGeneBox` reconstruye la lista (`Initialize` desde GeneData) y descuenta los genes ya colocados
  (`GeneMergeView.m_PutList`); lo mismo tras `RemoveGene`, `EquipChange` y `AngelChange` (después de fusionar).
- Recordatorio: `GeneData.AddGeneVO` SUMA la cantidad si el gen ya existe; `GeneVOAmount` la fija (op 1 de SCBagUpdate).
- UI de la fusión: el panel "Put in" (`BlackBoard/GeneMergeList`, x = 0) estaba 45 px más a la derecha que su gemelo
  "Socket" (`GeneInsertList`, x = -45) y la cuadrícula se salía del recuadro. Algo (tween de apertura) vuelve a poner
  x = 0 tras `Initialize`, así que se copia la posición de GeneInsertList y se mantiene cada frame mientras está activo.
  Queda un solape mínimo del título con el botón Return.
- One-Tap (`PutAll`) usa las cajas de la lista: la reconstrucción de la lista descarta también las cajas cuyos genes
  suman 0.

## Revivir en combate

- `ReliveView.ButtonRelive` envía `CSInstanceRevive{generalId, prop}`. `prop` es el nombre de `ReliveProp`: `atkPct`, `defPct` o `hpMaxPct` (no `hpPct`).
- `ReliveView.OnRelive` necesita `SCInstanceRevive.general`, un `DGeneral` completo. Con una respuesta vacía no revive. El cliente aplica `Player.SetProp` + `Relive` y guarda `reviveItmes` como `m_reliveTimes`, que fija el coste del siguiente intento.
- `restTime` sobrescribe `BattleMediator.m_countdown`. Para no tener que calcularlo, se envía 0 y un hotfix de `BattleMediator.OnPlayerRelive` restaura el tiempo que había antes o, si se agotó, da `ConfCommonRevive.addTimes` (60 s).
- `ConfCommonRevive(n)` corresponde al intento n:
  - Coste: `diamond` 20/40/60…
  - Bonificación: `values` = 500 en base 10000 (+5 %).
- Revivir es gratis: no se descuentan diamantes. La bonificación se acumula durante el combate en `OFFLINE.battle.buffs`, porque cada respuesta reconstruye el mecha desde sus stats base.

## Tech › Auto (GeneQuicklyPanel)

- Envía el mismo `CSEquipGeneCompose` (o `CSAngelGeneCompose` en clones) que la fusión normal, con N ids en `genePreId`. Lo atiende el handler ya existente.
- La etiqueta de la barra de EXP viene sin traducir en el prefab («合成經驗»). Un hotfix de `OnEnable` la cambia a «Synth EXP», en una sola línea y alineada a la derecha.

## Afinidad de los children (lobby)

- Al tocar al child, `LobbyView.OnChildClick` envía `CSIntimacyInteract{id = sn}`.
- La respuesta es `SCGetChildren{info}`. Cualquier `SCGetChildren` dispara `LobbyEvent.ChildrenChangeInfo` (28), que llama a `LobbyView.ChildrenTerms`: muestra el diálogo, los corazones y la barra.
- Campos de `DChildInfo` (en `ChildrenVO` se llaman `allTerms`/`dataTerms`/`termsSn`):
  - `allIntimacy`: total acumulado.
  - `dataIntimacy`: toques de hoy. Al llegar a `ConfGlobalParam 2003` (10) sale «TERMSLIMIT».
  - `intimacyId`: la fila de `ConfChildrenIntimacy` del nivel en curso.
- `ConfChildrenIntimacy`:
  - `intimacy` es el umbral acumulado (120/360/840/1800/3240) y `stepIntimacy` lo que pide el nivel.
  - La barra muestra `all − (intimacy − step)` sobre `step`, y los corazones encendidos son `level`.
  - Cada nivel da Crit/Block +0.2 % … +2 %.
- Cada toque da `ConfGlobalParam 2004` (30) puntos. Se puede cambiar con `OFFLINE.intimacyGain` / `intimacyDaily`.
- `OFFLINE.intimacyUnlimited = true` (elegido por el usuario): no hay límite diario. Como el cliente comprueba el límite por su cuenta, se envía siempre `dataIntimacy = 0`.
- Se guarda en `OFF_intim` (`sn:total:hoy:fecha`). El login y `CSLvUpChildren` rellenan los campos con `Intim.fill`, para no reiniciar la afinidad.

## Arena (Competition) — funcionando

- El original emparejaba jugadores por un servidor de batalla. Aquí los rivales son **robots**: `SCCompetitionRandomResult.isPvp = false` → `ArenaMatching.EnterNext` → `ArenaVS` → `CSCompetitionEnter`.
- **Escenario:**
  - `CSCompetitionEnter` se responde como `CSInstanceEnter` (`SCInstanceEnter` + `SCStageSwitch`) hacia **70001**.
  - El modo lo decide `GameplayRoot.Start` según `ConfCommonInfo.type` (tabla de saltos en `0x253dc2c`). El tipo 7 carga `ArenaLoadingView`/`ArenaResultView`.
  - Tipo 5 = Expedition (`ExpeditionWin`). Tipo 4 = torre. Tipo 8 no carga ninguna interfaz propia y se queda en 0 %.
- **Equipo:**
  - `CSGeneralInfoAttIng`/`SCGeneralInfoAttIng` de **tipo 5** (`MechaData.GetBattleMechaByType(5)`).
  - Se guarda con `CSCompetitionFormation{generalIDs, atList}` en `OFF_atting_5`.
  - Con menos de 3 mechas, `ArenaView` rellena el equipo y envía la formación.
- **Rival:** 3 mechas al azar con stats reales (`generalById`) × (0.9 + Δpuntos/1000), en `enemyGeneral`. `ArenaMode` juega 3 rondas con IA local. Si muere un mecha llega `CSInstanceDead` (respuesta vacía).
- **Resultado:** `ArenaResultMediator` → `CSCompetitionEnd{isWin}` → `SCCompetitionEnd` + `SCCompetitionInfo`. `isWin` es el enum `MatchResult` (0 derrota, 1 empate, **2 victoria, 3 victoria perfecta**, 5 excepción), no un booleano; se devuelve el mismo valor.
  - Puntos: +10…40 al ganar y −5…25 al perder, según la diferencia con el rival.
  - Suelo de 600 puntos (`ConfGlobalParam 17002`): el cliente nunca muestra menos.
  - Monedas de Arena (`compete`): +30 al ganar y +10 al perder.
- **Info:** `SCCompetitionInfo` con rango, puntos y combates totales/de hoy/victorias semanales. Estado en `OFF_arena`. Los contadores de hoy y de la semana se reinician por fecha.
- **Premios:** `CSCompetitionAward{type, lv}`. Tipo 1 = diario (combates de hoy ≥ `minValue`: 3/5/8). Tipo 2 = semanal (victorias ≥ 15/30/60). `gotDaily/WeeklyAward` = último nivel reclamado.
- **Report y ranking:**
  - Report: `CSCompetitionBattleLog` con los últimos 20 combates (`OFF_arenaLog`).
  - Ranking: `CSCompetitionRank` con 60 robots de puntos fijos más el jugador.
- **Combates ilimitados:** no hay límite diario ni coste.
- **Fuera de alcance** (por decisión del usuario): premio de temporada (type 3), Hall of Fame y FriendArena. El premio diario está verificado por el usuario; el semanal está implementado, pero no se ha probado en el juego.

## Points Match (PointRace) — funcionando

- Los rivales son robots, como en Arena. El equipo es el **tipo 6** de `CSGeneralInfoAttIng` y se guarda con `CSPointRaceFormation{generalIDs}` en `OFF_atting_6`.
- **Flujo:**
  1. Challenge envía `CSPointRaceEnemyList`; respondo con 5 robots (`DCompetHumanInfo` + `genList`), cada uno con su equipo generado con `arenaEnemy`.
  2. `PointMatchEnemyPanel.ClickChallenge` exige `count > 0` (`PointMatchData+0x100`) y 3 mechas.
  3. Se abre `VSView` y llega `CSPointRaceEnemyInfo{enemyId}` → `SCPointRaceEnemyInfo{enemyInfo, enemyProp, enemyGeneral}`.
  4. `CSPointRaceEnter` se responde como `CSInstanceEnter` hacia **80001**: el `ConfCommonInfo` de tipo 8 hace que `GameplayRoot` cargue `PointBattleView` (`PointMatchMode`, 3 contra 3 simultáneo).
  5. `PointBattleView.SubmitResult` → `CSPointRaceEnd{isWin = MatchResult}` (2 victoria, 3 perfecta) → `SCPointRaceEnd{isWin, newPoint, oldRank, newRank, myChangePoint}` + `SCPointRaceInfo`.
- **Intentos ilimitados:** `SCPointRaceInfo.count` (los que quedan) siempre a 6. El Refresh de rivales no cobra.
- **Recompensas** (las que muestra `PointMatchResult`):
  - Oro: `ConfGlobalParam 16008.intArray[MatchResult]` = 2400/2400/4800/4800.
  - Medallas Points: lo mismo que los puntos ganados, solo al ganar. Son el objeto 6 (tipo Compete), el mismo campo `compete` que las monedas de Arena.
- **Puntos:** suelo de 600 (`ConfGlobalParam 16002`). Por debajo de 600 el rango sale en chino («傳說5階»).
- **Tienda** (compra verificada por el usuario): la de Points es `ConfStore.storeType` 6 (`buyType` 6). Se sirve con filas reales (`OFFLINE.realShops[6]`). Nota: la 5 cobra «Feat» (objeto 7, Exploit) y queda desactivada.
- **Report y ranking:** `CSPointRaceBattleLog` (`OFF_praceLog`) y `CSPointRaceRank`, con los mismos 60 robots de Arena.
- **No implementados:** premios diarios por rango y puntos (`CSPointRaceAward`) y compra de intentos (`CSPointRaceBuyCount`), porque no hacen falta.

## Teamwork (TeamRaid) — funcionando

- Es un cooperativo contra un jefe, con un compañero «asistente» que aquí es un robot con stats reales (`arenaEnemy`).
- **Flujo:**
  1. Match → `CSTeamBattleRandomAssist` → `SCTeamAssist{assistInfo, assistProp, assistGeneral, assistType}`.
  2. `TeamRaidMatchResult` → `CSTeamBattleStart{mission, autoFight, multAward}`. La misión la elige el cliente al azar entre las filas de `ConfCommonInfo` tipo 6: 60001… en Normal y 60101… en Hard.
  3. Se responde como `CSInstanceEnter` (`SCInstanceEnter` + `SCStageSwitch`).
  4. Al terminar: `CSTeamBattleEnd{mission, isWin(bool)}` → `SCTeamBattleResult{mission, isWin, produce}`.
- **Intentos ilimitados:** `SCTeamBattleInfo.challengeNum` (los usados, con límite `ConfGlobalParam 20005`) siempre es 0.
- **Recompensas:** el `rewardList` de la misión (paquete `Wallet.expand 'one'`), ×3 si `multAward`. No se cobran diamantes por el ×3 ni por Auto-Fight. No está implementado el «×2 las 2 primeras veces».
- Verificado por el usuario: Normal (60001: 2 Aid Skill Shard, 50 Fort. Stone, 360 Core) y Hard (60101: 4 / 100 / 442).
- También verificado ×3 + Auto-Fight en Normal y Hard (9 recompensas, diamantes intactos en 39230).

## Matching (MultiPK 3 vs 3) — no disponible offline

- Usa `TeamBattlePVPMode`, que es lockstep por fotogramas con un servidor de batalla. No hay modo contra la IA (`isPvp` no se lee) y los jugadores remotos solo se mueven con las acciones que reenvía el servidor.
- El usuario decidió dejarla sin habilitar. **[SERVIDOR_BATALLA.md](SERVIDOR_BATALLA.md)** documenta el protocolo completo (salas 38xx, emparejamiento, servidor de batalla 10005–10112, `DCrossOperate`) para quien quiera montar un servidor privado.

## Extreme Duel (PeakVs 1 vs 1) — no disponible offline

- Torneo 1 contra 1 entre jugadores. Tiene selección de mechas por turnos (`SCPeakOper`/`SCPeakNextState`) y combate lockstep (`PeakVsCastMode`/`PeakVsOustMode`, `ConfCommonInfo` tipo 11/12), igual que Matching.
- No se puede entrar porque `SCPeakInfo` llega vacío (`isOpen` y las fechas de temporada). Abrirla solo serviría para ver la interfaz.
- Su protocolo está documentado en **[SERVIDOR_BATALLA.md](SERVIDOR_BATALLA.md)**.

## Tutorial (GuideData) — activado

- `ConfGuideStep` tiene 140 pasos en 47 series (`seriesId`). La serie arranca por `triggerType`: 0 manual, 1 tras otro paso, 3 al entrar al juego, 4 nivel, 6 desbloqueo de módulo (param = id), 8 entrar a nivel…
- `block = true`: `GuideView` tapa la pantalla y solo deja tocar `targetWindow/targetName`. Si ese objeto no existe offline, o el paso espera una respuesta del servidor que no llega, **los toques quedan bloqueados**. Eso eran los «pasos erróneos».
- **Fin de serie:** `GuideData.FinishedGuide` envía `CSChangeGuideInfo{sn = serie, state}`. Se guarda en `OFF_guides` y se devuelve al login en `SCAllGuideInfo.sn`. Antes se perdía y los tutoriales se repetían.
- `SCAllGuideInfo.flag = OFFLINE.tutorial`: es `GuideData.isGuideEnabled`, y con `false` `FindGuide` no busca.
- `OFFLINE.guideSkip` = series que se dan por hechas, porque llevan a funciones desactivadas u online, o a botones que no existen porque todo viene desbloqueado:
  - 6 y 20: reclamar un logro concreto.
  - 14: registro de 7 días.
  - 17, 1701 y 1702: desbloquear Children.
  - 19 Bonus, 22 Events, 26 Barrage, 28 Guild.
  - 32: desbloquear Aid.
  - 1001–1003: un material concreto de Armor.
  - 1301–1303: reclutamiento Res.
  - 2401–2403: desbloquear ángel.

  Las series que dependen de ellas (3, 7…) simplemente no se activan.
- **Verificado en una instalación limpia:** escena de introducción (serie 1), combate guiado 1-1 (serie 2) y vuelta al lobby. Children se abre sin bloqueo y los toques responden.
- **Sin verificar:** las guías de módulos posteriores (Talent, Armor, Tech, Challenge, Artifact…). Si alguna bloquea, se añade su serie a `guideSkip`.
- **Guía interrumpida → botón desaparecido** (p. ej. Story tras terminar el capítulo 1):
  - `GuideView.SetupClick` mueve el objetivo del paso a la capa de la guía y guarda su sitio en `GuideGOInfo` (`oldParent`, `siblingIdx`, `layoutGroup`, `eventTrigger`/`originalTrigger`). Solo `OnTargetClicked` lo devuelve.
  - Si el jugador toca otra cosa antes, el botón queda bajo la guía oculta hasta reiniciar.
  - **Arreglo:** cada segundo se buscan `GuideGOInfo`. Si no hay ningún paso visible (`goGuideStep` inactivo o sin `m_currentStep`) en 2 comprobaciones seguidas, se restaura igual que en `OnTargetClicked`. Verificado con una simulación: StoryBtn movido a `CanvasDesktop` vuelve en ~1 s y responde.
  - Las series con `retry` (como la 16, Elite) se reanudan al siguiente inicio de sesión. Verificado: la serie 16 se completó tras reiniciar.

## Paquete de entrega (APK / OBB / XAPK)

```bash
cd re_work/offline
python -I patch_libil2cpp.py ../../com.wyx.qzgame.google.evaoverseas/lib/arm64-v8a/libil2cpp.so build/libil2cpp.so
python -I build_luabundle.py ../../Android/obb/com.wyx.qzgame.google.evaoverseas/assets/Android/luascripts.bundle gen/pairs.lua MainHotFix.lua build/luascripts.bundle
python -I build_package.py ../../com.wyx.qzgame.google.evaoverseas.apk ../../Android/obb/com.wyx.qzgame.google.evaoverseas/main.31.com.wyx.qzgame.google.evaoverseas.obb build/libil2cpp.so build/luascripts.bundle build/release
java -jar uber-apk-signer.jar -a build/release/eva_offline-unsigned.apk      # -> EVA_Dawn_Offline.apk
python -I build_xapk.py ../../manifest.json ../../icon.png build/release/EVA_Dawn_Offline.apk build/release/main.31.com.wyx.qzgame.google.evaoverseas.obb build/release/EVA_Dawn_Offline.xapk
```

- `build/release/INSTALAR.md` explica la instalación (XAPK en el celular, o APK + OBB a mano o por adb).
- El APK solo lleva la lib parcheada; todo el servidor offline va en el OBB (`luascripts.bundle`). Con un cambio solo en Lua basta con regenerar el OBB y el XAPK.
- **Probado:** instalación limpia en una segunda instancia de MuMu (Android 15, adb 16416) con APK + OBB. Arranca sin red, crea la partida nueva y el tutorial funciona.

## Angel Attack — salto de pisos por CR

- Lo ofrece `TowerUpView.CheckSkipLevel`, desde `InitView` y solo al volver de un combate (`isPlayBack`):
  - Parte de `m_towerNum = currNum + 1` (= `OFF_n_towerCur`). Con `r = n % 5`: si `r == 1` no ofrece nada; si no, el destino es `n + (5 − r) % 5 + 1` (inicio del siguiente bloque de 5).
  - Solo lo ofrece si destino > `maxPassNum`, el piso existe y el CR ≥ `ConfCommonInfo(commonId).force`.
- «Confirm» envía `CSSkipCustoms`, sin campos. Antes se respondía vacío y la ventana de recompensas salía en blanco. Ahora:
  - Los pisos `cur..destino−1` se dan por superados con su `rewardList`.
  - `towerMax = destino − 1` y `towerCur = destino`.
  - Se responde `SCSkipCustoms{produces}` (`TowerUpSkipRewardTips.SetPanel`) + `SCOpenPveTower`.
- El título de esa ventana viene en coreano en el prefab («얻은 것을 축하합니다»). Un hotfix de `SetPanel` lo cambia a «Rewards obtained».
- Verificado en el juego: desde Wave 3 sugiere Wave 6; al confirmar da las recompensas de los pisos 3–5 y la torre queda en Wave 6, con el cofre de 5 pisos disponible.

## Arena, Points Match y Teamwork en servidores privados

- Offline funcionan con robots. Entre jugadores reales son **PvP asíncrono**: el rival o asistente es una instantánea del equipo de otro jugador, manejada por la IA local. No necesitan servidor de batalla, solo un servidor de juego con base de datos.
- Protocolo y pasos en **[SERVIDOR_BATALLA.md](SERVIDOR_BATALLA.md)** (sección «Arena, Points Match y Teamwork entre jugadores reales»).

## Prueba de compatibilidad (paquete de entrega 2026-11-12)

Se instaló `build/release/EVA_Dawn_Offline.apk` + el OBB desde cero, por adb, en dos instancias nuevas de MuMu:

| Instancia | Android | adb | Resultado |
|---|---|---|---|
| Android Device-3 | 15 | 16480 | Arranque sin red → logo → lobby (Lv.1) → diálogo de Misato → Story → 1-1 → escena → combate guiado → victoria 3★ → Lv.2 con Children desbloqueado. Story y Children responden. 0 errores en `offline.log` |
| Android Device-4 | 12 | 16512 | Mismo recorrido y mismo resultado (Lv.2, 102400 de oro, CR 44333). Va algo más lento (lobby a ~1 min; combate de 111 s frente a 63 s), sin cuelgues ni errores. ABI con `armeabi-v7a` además de `arm64-v8a`; el APK solo trae arm64 y funciona |

**Teléfono real:** verificado por el usuario el 2026-11-12. El juego se completa de principio a fin en un celular.
