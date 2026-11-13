# EVA Dawn 3.1.0 — Flujo de arranque y login (mapeado)

Fuente: `libil2cpp.so` arm64 + `dump.cs` (Il2CppDumper). Direcciones = RVA en arm64.
Referencia completa de mensajes: `protocol.txt` / `protocol.json` (829 IDs, 951 clases `msg.*`).

## 1. Transporte

| Elemento | Detalle |
|---|---|
| Paquete | `UniCore.GamePacket`: `int Size` (4 B) + `int Type` (4 B) + cuerpo protobuf-net |
| Envío | `ConnectAPI.SendPacket(msg_base)` / `ConnectAPI.QueuePacket(msg_base)` → `ClientConnection<GamePacket>` (TCP) o `UdpSocket` |
| Recepción | `ConnectAPI.PacketReceived(GamePacket p, object state)` @ `0x11246AC` → `msg.MsgParser.Parse(type, stream)` → `this.dispatcher.Dispatch((object)(int)type, msg)` |
| IDs | `MsgDef` (constantes) y `msg_base._msgid()` (virtual) |
| Conexión | `ConnectAPI.Connect(host, port)` @ `0x1124B60` → `Dns.GetHostAddresses` → `ClientConnection.Connect` → evento estático `onConnect(NetErrors)` |

**Clave para offline:** el despachador recibe el **objeto C#** ya parseado. Un servidor falso puede crear
`CS.msg.SCLoginResult()` en Lua y llamar `ConnectAPI.s_instance.dispatcher:Dispatch(112, obj)` sin serializar protobuf.

## 2. Arranque (BootMediator) — bloqueo previo al login

```
BootView → BootMediator.BeginBoot @0xE90B1C
   ├─ BootView.CompareVersion
   ├─ VersionChecker.Initialize(cb=OnVersionCheckFinished)   ── HTTP (Downloader.Download)  ✗ offline
   └─ RemoveOldVersion
OnVersionCheckFinished @0xE91024 ── según estado: Reboot / DownLoadServerList / DownloadApk / UpdateAsset ...
DownLoadServerList @0xE91188 ── Downloader.DownloadAndCacheText("serverlist.txt", OnGetServerList)  ✗ offline
OnGetServerList(string) @0xE91B80 ── vacío → ServerListDownLoadFailedTip
                                   └─ Dispatch(LoginEvent, texto) → InitializationCompleted
InitializationCompleted @0xE91E04 ── LoadLuaScripts (require 'MainHotFix') → LoadConfig → escena Login
```

**Problema:** el hotfix Lua se carga *después* de dos peticiones HTTP, así que no puede evitarlas.

**Parche nativo mínimo propuesto (1 instrucción + 1 salto), en `BeginBoot`:**

| Dirección | Original | Parche |
|---|---|---|
| `0xE90B84` | `mov x0, x19` | (igual) |
| `0xE90B88` | `bl BootView.get_view` | `bl 0xE926A8` (`LoadLuaScripts`) |
| `0xE90B8C` | `mov x20, x0` | `b 0xE90B54` (vuelve a comprobar el delegado hotfix de `BeginBoot`) |

`MainHotFix` debe entonces hotfixear `BootMediator.BeginBoot` (si no, bucle infinito) y
`InitializationCompleted` (para no recargar Lua), y llamar directamente `self:OnGetServerList(<serverlist falso>)`.

### Formato `serverlist.txt` (ServerListMediator.InitServerList @0xF221E8)
Líneas de texto; se ignoran vacías y las que empiezan con `//` o `#`; columnas separadas por TAB/espacio.
Se construye `ServerInfo { int id; string name; string zone; string ip; int port; ServerState state; }`
agrupado por `ZoneInfo`. *Orden exacto de columnas: pendiente de confirmar en ASM (`0xF22400`–`0xF22540`).*
El último servidor elegido se guarda en PlayerPrefs: `ServerID`, `ServerName`, `ServerStage`, `ServerIP`, `ServerPort`.

## 3. Login (LoginMediator)

```
LoginView (botón Entrar) → LoginMediator.EnterGame @0xD00CA4
   ├─ estado servidor 3 o 7 → "GLOBAL_SERVERCLOSE"
   ├─ SinaSDK.SinaLogin → JSON {sUid, token, userName, channel, pt}   ✗ SDK Java (Weibo)
   │      guarda PlayerPrefs SDKChannel / SDKToken; AppsFlyer "af_login"
   └─ BeginLogin @0xD01504
         ├─ PlayerPrefs Account / userIp / userPort
         ├─ ConnectAPI.Connect(ip, port)                              ✗ TCP
         └─ StartCoroutine(WaitLoginResult)  (timeout → LoginFailed)
ConnectAPI.onConnect → LoginMediator.ConnectAPI_onConnect @0xD01AAC → Login() @0xD01BB0
   └─ QueuePacket(CSLogin{account, name, serverId, channel, token, appendInfo, version})   [111]
```

| # | Dirección | Mensaje | ID | Campos | Manejador cliente |
|---|---|---|---|---|---|
| 1 | C→S | `CSLogin` | 111 | account, name, password, token, channel, version, serverId, appendInfo | — |
| 2 | S→C | `SCAccountLoginQueue` (opcional) | 153 | num, sec, full, total | `LoginMediator.GetWaitMsg` (abre WaitingView) |
| 3 | S→C | `SCLoginResult` | 112 | **resultCode=0**, resultReason, keyActivate, isServerFull, showGiftCode, showService, showGm | `LoginMediator.OnLoginMsg` @0xD01EE8, `PlayerData.OnLoginResult` |
| 4 | C→S | `CSCharacterLogin` | 1009 | (vacío) | enviado por OnLoginMsg si resultCode==0, + `StartCoroutine(WaitInitData)` |
| 5 | S→C | `SCCharacterLoginResult` | 1010 | resultCode | — |
| 6 | S→C | `SCInitData` | 1101 | `DHuman human`, skill, dBag, mails, questInfo, equips, angels, createTime | `PlayerData.InitData` @0xE16694 (+ BagData, EquipData, AngelData… `InitData`) |
| 7 | C→S | `CSServerTime` | 1441 | — | enviado por PlayerData.InitData |
| 8 | S→C | `SCServerTime` | 1442 | serverTime (long, ms) | `PlayerData.OnSCServerTime`, `TimeService.OnSetServerTime` |
| 9 | S→C | `SCAllGuideInfo` (respuesta a `CSRequestAllGuideInfo` 2151) | 2152 | flag, sn[] | `GuideData.OnSCAllGuideInfo` → `GuideData.initialized = true` |

Notas de `OnLoginMsg`:
- `resultCode != 0` → `ConfStringServer.Get(int.Parse(resultReason)).desc` → LoginFailed.
- `resultReason == "8507"` → abre la tienda de apps (versión obsoleta). Evitar.
- `keyActivate == true` → abre `AccountActiveView` (código de activación). Enviar `false`.

### Condición para entrar al Lobby (`<WaitInitData>d__143.MoveNext` @0xD02610)
```
playerData.initDataSuceess (bool @0x101) == true   &&   guideData.initialized == true
   → SceneMgr.SetNextMode("Lobby")
si se agota el tiempo → LoginFailed
```

## 4. Plan del servidor falso en Lua (MainHotFix)

1. Hotfix `ConnectAPI.Connect` → no abre socket; invoca `ConnectAPI.OnConnect(NetErrors.None)`.
2. Hotfix `ConnectAPI.Active` → `true`; `NetWorkReachable` → `true`.
3. Hotfix `ConnectAPI.SendPacket` / `QueuePacket` → `local id = packet:_msgid()`; buscar `handlers[id]`;
   construir la respuesta `CS.msg.SC...()` y despachar en el siguiente frame con
   `ConnectAPI.s_instance.dispatcher:Dispatch(respId, resp)`.
4. Handlers mínimos para login: 111→112, 1009→1010+1101+2152, 2151→2152, 1441→1442, 1122 (CSPing)→1123.
5. Hotfix `SinaSDK.SinaLogin` → simular callback con JSON `{"sUid":"offline","token":"offline",...}`.
6. Estado del jugador (`DHuman`, bolsa, etc.) persistido localmente (PlayerPrefs o archivo JSON).

## 5. Pendientes
- Columnas exactas de `serverlist.txt`.
- Callback de `SinaSDK.SinaLogin` (cómo regresa el JSON a `EnterGame`).
- Quién envía `CSRequestAllGuideInfo` (2151); si nadie lo hace antes del Lobby, el servidor falso debe empujar `SCAllGuideInfo` (2152) junto con `SCInitData`.
- Verificar que `AssetLoader` puede cargar `luascripts.bundle` en el momento de `BeginBoot`.
- Comprobar si hay verificación de integridad (CRC/hash) de bundles del OBB.
