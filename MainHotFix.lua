-- =====================================================================
--  EVA Dawn 3.1.0 — MODO OFFLINE (servidor falso en el cliente)
--  Se carga desde luascripts.bundle (TextAsset "MainHotFix").
--  Requiere el parche nativo de BootMediator.BeginBoot (patch_libil2cpp.py)
--  para ejecutarse ANTES de la verificación de versión.
--
--  Flujo emulado (ver re_work/protocol/LOGIN_FLOW.md):
--    Boot  : sin VersionChecker ni descarga de serverlist.txt
--    Login : sin SDK Sina; CSLogin(111) -> SCLoginResult(112)
--            CSCharacterLogin(1009) -> SCCharacterLoginResult(1010)
--                                    + SCInitData(1101) + SCAllGuideInfo(2152)
--            CSServerTime(1441) -> SCServerTime(1442)
-- =====================================================================

local TAG = '[OFFLINE] '
-- El juego desactiva el logger de Unity tras leer log.config, así que además
-- se escribe en <persistentDataPath>/offline.log (adb pull para leerlo).
-- (System.IO.File.AppendAllText no existe en este build: se usa io.open de Lua.)
local LOGFILE = '/sdcard/Android/data/com.wyx.qzgame.google.evaoverseas/files/offline.log'
pcall(function()
    local p = CS.UnityEngine.Application.persistentDataPath
    if p and p ~= '' then LOGFILE = p .. '/offline.log' end
end)
-- El log de la sesión anterior se conserva como offline.prev.log (para diagnosticar cuelgues tras reiniciar).
pcall(function()
    if os and os.rename then
        local prev = LOGFILE:gsub('offline%.log$', 'offline.prev.log')
        os.remove(prev)
        os.rename(LOGFILE, prev)
    end
end)
local LOGF = io and io.open and io.open(LOGFILE, 'w') or nil
local function writelog(level, msg)
    if LOGF then
        LOGF:write(os.date('%H:%M:%S ') .. level .. ' ' .. msg .. '\n')
        LOGF:flush()
    end
end
local function log(...)
    local m = table.concat({...}, ' ')
    print(TAG .. m); writelog('I', m)
end
local function warn(...)
    local m = table.concat({...}, ' ')
    CS.UnityEngine.Debug.LogWarning(TAG .. m); writelog('W', m)
end

-- Evitar doble inicialización si el script se ejecuta otra vez.
if _G.__EVA_OFFLINE then
    log('MainHotFix ya estaba cargado; se ignora la recarga')
    return
end
_G.__EVA_OFFLINE = true
math.randomseed(os.time())
log('MainHotFix cargado (modo offline)')

local PlayerPrefs = CS.UnityEngine.PlayerPrefs

-- ---------------------------------------------------------------------
-- Configuración
-- ---------------------------------------------------------------------
local OFFLINE = {
    server   = { id = 1, name = 'Offline', zone = 'Local', ip = '127.0.0.1', port = 9999, state = 1 },
    account  = 'offline_player',
    -- true: desbloquea todos los módulos del lobby (ConfModUnlock); false: solo los de nivel <= jugador
    -- false: cada módulo se abre al superar su nivel de Historia (ConfModUnlock.unlockLevel = sn del nivel,
    -- 0 = desde el inicio), como en el juego original. true: todo abierto desde el inicio.
    unlockAllMods = false,
    -- Colecciones del gacha desbloqueadas desde el inicio, a nivel 1 (el gacha no se habilita):
    -- Children (y con ellos los fondos del lobby: ConfChildrenInfo.lobbyBg), clones ángel y Aid (AT Field).
    unlockAllCollections = true,
    -- 'all': todos los mechas visibles (ConfMechaInfo.show); 'born': solo los de bornType ~= 0
    mechas = 'all',
    -- Kit inicial (una sola vez): materiales para mejorar mechas/armas mientras no hay tienda/gacha.
    -- sn -> cantidad (4020001 = chips de Eva01, 14 = Gamma Crystal). Vaciar la tabla para desactivarlo.
    starterKit = { [4020001] = 100, [14] = 2000 },
    -- Energía ilimitada: nunca se descuenta y siempre está al máximo (el cliente solo valida
    -- con HasEnoughMoneyToBuy y nunca la resta localmente). false = coste normal + regeneración.
    unlimitedEnergy = true,
    -- Tutorial activado. guideSkip = series de ConfGuideStep que se dan por hechas porque guían a funciones
    -- desactivadas/online o a botones que no existen offline (bloquean los toques):
    -- 6/20 reclamar logro concreto, 14 registro 7 días, 17/1701/1702 desbloquear Children (ya desbloqueados),
    -- 19 Bonus, 22 Events, 26 Barrage, 28 Guild, 32 Aid (ya desbloqueado), 1001-1003 material de Armor concreto,
    -- 1301-1303 reclutamiento Res. (gacha desactivado), 2401-2403 desbloquear ángel (ya desbloqueados).
    tutorial = true,
    guideSkip = { 6, 14, 17, 19, 20, 22, 26, 28, 32, 1001, 1002, 1003, 1301, 1302, 1303, 1701, 1702, 2401, 2402, 2403 },
    -- Afinidad de los children (tocar al child en el lobby): puntos por toque y toques por día.
    -- Valores originales: ConfGlobalParam 2004 (30) y 2003 (10). nil = usar los del juego.
    intimacyGain = nil, intimacyDaily = nil,
    -- Sin límite diario de toques (el cliente muestra TERMSLIMIT si dataIntimacy >= 2003, así que se envía 0).
    intimacyUnlimited = true,
    expSweepMode = 2,                     -- CSExpeditionAttack.mode del Blitz de Expedition
    -- Títulos de la pestaña Honor (ConfTitle.type 1, eran de ranking online): se obtienen al alcanzar
    -- este CR máximo. Tres niveles de fuerza (HP+1750 / +2450 / +3500), de menor a mayor CR.
    honorCR = {
        [2001] = 50000,  [2004] = 75000,  [2007] = 100000, [2010] = 125000, [2015] = 150000,
        [2002] = 200000, [2005] = 250000, [2008] = 300000, [2011] = 350000, [2014] = 400000,
        [2003] = 500000, [2006] = 600000, [2009] = 700000, [2012] = 800000, [2013] = 1000000,
    },
    realShops = { [4] = true, [6] = true },  -- tiendas con filas reales de ConfStore: 4 = Expedit (Exped. Coin), 6 = Points Match (moneda 6 = compete)
    -- Tienda de materiales (pestaña de objetos, se paga con ORO). Paquete = {sn, cantidad, precio}.
    -- nil en sn = se generan para todos los pilotos / Aid / mechas desde la configuración.
    shop = {
        core       = { 13, 10, 3000 },        -- 10 Core
        crystal    = { 14, 100, 5000 },       -- 100 Gamma Crystal
        childChips = { 10, 4000 },            -- 10 chips de cada piloto
        aidChips   = { 10, 6000 },            -- 10 chips de cada Aid
        mechaChips = { 10, 8000 },            -- 10 chips de cada mecha
        stone      = { 10, 20, 4000 },        -- 20 Soul Stone (nivel de armadura)
        talent     = { 8, 5, 5000 },          -- 5 Life Source (Talent)
        genes      = { 5, 3000 },             -- 5 genes Nv.1 de cada tipo (Tech)
        hallow     = { 11, 100, 5000 },       -- 100 Fort. Stone (mejora de Artifact)
        crystals   = { 2, 100, 10000 },       -- 100 cristales por oro
        refine     = { 12, 50, 5000 },        -- 50 Refine. Stone (refinado de glifos)
        noah       = { 103, 10, 10000 },      -- 10 Noah Crystal (armas a partir de Lv.30)
    },
    -- Botín extra en cada victoria de la Historia (además del normal del nivel).
    battleDrops = { core = 2, childChips = 2, aidChips = 1, mechaChips = 1, stone = 3, genes = 1, hallow = 10,
                    crystal = 5, crystalFirst = 30, refine = 3, noah = 1 },   -- cristales por victoria / primera victoria (Historia, Elite)
    humanId  = 10000001,
    -- Valores iniciales del jugador (se guardan en PlayerPrefs "OFF_*")
    defaults = { name = 'Piloto', level = 1, vipLevel = 0, gold = 100000, diamond = 10000,
                 actValue = 120, actValueMax = 120, serverId = 1 },
}
-- Una línea por servidor: id  nombre  zona  ip  puerto  estado  (6 columnas, TAB)
local SERVERLIST = string.format('%d\t%s\t%s\t%s\t%d\t%d',
    OFFLINE.server.id, OFFLINE.server.name, OFFLINE.server.zone,
    OFFLINE.server.ip, OFFLINE.server.port, OFFLINE.server.state)

-- ---------------------------------------------------------------------
-- Estado persistente del jugador (PlayerPrefs)
-- ---------------------------------------------------------------------
local Save = {}
function Save.getInt(k)  return PlayerPrefs.GetInt('OFF_' .. k, OFFLINE.defaults[k] or 0) end
function Save.getStr(k)  return PlayerPrefs.GetString('OFF_' .. k, OFFLINE.defaults[k] or '') end
function Save.setInt(k, v) PlayerPrefs.SetInt('OFF_' .. k, v) end
function Save.setStr(k, v) PlayerPrefs.SetString('OFF_' .. k, v) end
function Save.createTime()
    local t = PlayerPrefs.GetString('OFF_createTime', '')
    if t == '' then
        t = tostring(os.time() * 1000)
        PlayerPrefs.SetString('OFF_createTime', t)
        PlayerPrefs.Save()
    end
    return math.tointeger(tonumber(t))
end

-- Números grandes (oro, EXP...) en PlayerPrefs como texto (GetInt es de 32 bits).
function Save.getNum(k)
    local s = PlayerPrefs.GetString('OFF_n_' .. k, '')
    if s == '' then return math.tointeger(OFFLINE.defaults[k] or 0) or 0 end
    return math.tointeger(tonumber(s)) or 0
end
function Save.setNum(k, v) PlayerPrefs.SetString('OFF_n_' .. k, tostring(math.tointeger(v) or 0)) end

-- ---------------------------------------------------------------------
-- Cartera: tipo de ConfItemData -> campo de DHuman / DHumanInfoChange
-- ---------------------------------------------------------------------
local CURRENCY = {
    Gold = 'gold', Diamond = 'diamond', UserExp = 'userExp', Activity = 'actValue',
    Talent = 'talent', Exploit = 'exploit', Compete = 'compete', Expedition = 'expedition',
    NormalCard = 'normalCard', Stone = 'stone', HallowsUp = 'hallowsUp',
    HallowsPolish = 'hallowsPolish', AngelUp = 'angelUp', Sweep = 'SweepTickets',
    -- Gamma Crystal (sn 14): PlayerData.crystal se carga desde DHuman.EvolveStone (InitData/UpdateData).
    Crystal = 'EvolveStone',
}
local WALLET_FIELDS = { 'gold', 'diamond', 'userExp', 'actValue', 'talent', 'exploit', 'compete',
    'expedition', 'normalCard', 'stone', 'hallowsUp', 'hallowsPolish', 'angelUp', 'SweepTickets',
    'EvolveStone' }
local ACT_REGEN_SECONDS = 360   -- 1 punto de energía cada 6 minutos

local Wallet = {}
function Wallet.levelConf(level)
    local ok, c = pcall(function() return CS.ConfHumanLevelExp.Get(level) end)
    if ok then return c end
end
function Wallet.actMax()
    local c = Wallet.levelConf(Save.getNum('level'))
    if c ~= nil and c.maxAct > 0 then return c.maxAct end
    return OFFLINE.defaults.actValueMax
end
-- Regenera energía según el tiempo transcurrido (sin superar el máximo).
function Wallet.regen()
    if OFFLINE.unlimitedEnergy then
        Save.setNum('actValue', math.max(Save.getNum('actValue'), Wallet.actMax()))
        return
    end
    local now = os.time()
    local last = Save.getNum('actTime')
    if last == 0 then Save.setNum('actTime', now) return end
    local max, cur = Wallet.actMax(), Save.getNum('actValue')
    local gained = (now - last) // ACT_REGEN_SECONDS
    if gained > 0 then
        if cur < max then Save.setNum('actValue', math.min(max, cur + gained)) end
        Save.setNum('actTime', last + gained * ACT_REGEN_SECONDS)
    end
end
-- Aplica la EXP acumulada: sube de nivel mientras alcance ConfHumanLevelExp(level).exp.
function Wallet.levelUp()
    local level, exp, ups = Save.getNum('level'), Save.getNum('userExp'), 0
    while true do
        local c = Wallet.levelConf(level)
        local nextC = Wallet.levelConf(level + 1)
        if c == nil or nextC == nil or c.exp <= 0 or exp < c.exp then break end
        exp = exp - c.exp
        level = level + 1
        ups = ups + 1
    end
    if ups > 0 then
        Save.setNum('level', level)
        Save.setNum('actValue', math.max(Save.getNum('actValue'), Wallet.actMax()))  -- energía llena al subir
        log('subida de nivel -> ' .. level)
        if OFFLINE.equipUnlockCheck then OFFLINE.equipUnlockCheck() end
    end
    Save.setNum('userExp', exp)
    return ups
end

-- Mochila: PlayerPrefs "OFF_bag" = "sn:num,..."
local Bag = {}
function Bag.load()
    local t = {}
    for sn, n in string.gmatch(PlayerPrefs.GetString('OFF_bag', ''), '(%d+):(%d+)') do
        t[tonumber(sn)] = tonumber(n)
    end
    return t
end
function Bag.save(t)
    local parts = {}
    for sn, n in pairs(t) do if n > 0 then parts[#parts + 1] = sn .. ':' .. n end end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_bag', table.concat(parts, ','))
end
function Bag.ditem(sn, n)
    local d = CS.msg.DItem()
    d.id = sn; d.sn = sn; d.num = n; d.pos = 0; d.isNew = false; d.combat = 0; d.exp = 0
    return d
end

-- Paquetes (ConfItemProduce): 'one' = un objeto al azar (botín de nivel), 'all' = todos (cofres).
function Wallet.expand(list, mode)
    local out = {}
    for _, r in ipairs(list) do
        local sn, n = r[1], r[2]
        local okI, item = pcall(function() return CS.ConfItemData.Get(sn) end)
        local okP, pack = pcall(function() return CS.ConfItemProduce.Get(sn) end)
        if (not okI or item == nil) and okP and pack ~= nil and pack.itemList ~= nil and pack.itemList.Length > 0 then
            local items, counts = pack.itemList, pack.itemCountList
            local function cnt(i) return ((counts ~= nil and i < counts.Length) and counts[i] or 1) * n end
            if (r[3] or mode) == 'one' then
                local i = math.random(0, items.Length - 1)
                out[#out + 1] = { items[i], cnt(i) }
            else
                for i = 0, items.Length - 1 do out[#out + 1] = { items[i], cnt(i) } end
            end
            writelog('R', 'paquete ' .. sn .. ' (' .. tostring(pack.name) .. ') -> ' .. (#out) .. ' entradas')
        else
            out[#out + 1] = { sn, n }
        end
    end
    return out
end

-- Acredita una lista de recompensas {sn, num}. Devuelve el conjunto de cambios para enviar.
-- changes = { human = {campo=true}, bag = {sn = {nuevo=bool, total=n}} }
function Wallet.credit(list, changes)
    changes = changes or { human = {}, bag = {} }
    local bag = Bag.load()
    for _, r in ipairs(list) do
        local sn, n = r[1], r[2]
        local ok, conf = pcall(function() return CS.ConfItemData.Get(sn) end)
        if not ok or conf == nil then
            writelog('R', 'recompensa desconocida (ni ConfItemData ni ConfItemProduce): ' .. tostring(sn) .. ' x' .. n)
        else
            local field = CURRENCY[tostring(conf.type)]
            if field then
                Save.setNum(field, Save.getNum(field) + n)
                changes.human[field] = true
            else
                local before = bag[sn] or 0
                bag[sn] = before + n
                -- 'nuevo' se conserva si el mismo objeto sale varias veces en el lote (Blitz): si no, la 2ª entrada
                -- lo pisaba con false y el SCBagUpdate iba como "cambiar cantidad" (el cliente lo ignora).
                local prev = changes.bag[sn]
                changes.bag[sn] = { nuevo = (prev ~= nil and prev.nuevo) or before == 0, total = bag[sn] }
            end
            writelog('R', string.format('+%d %s (%s)', n, tostring(conf.name), tostring(conf.type)))
        end
    end
    Bag.save(bag)
    if changes.human.userExp and Wallet.levelUp() > 0 then
        changes.human.level = true
        changes.human.actValue = true
    end
    PlayerPrefs.Save()
    return changes
end

-- Envía SCHumanInfoChange y SCBagUpdate con los totales actuales de lo que cambió.
function Wallet.push(changes)
    OFFLINE.clientBag = OFFLINE.clientBag or {}
    if next(changes.human) then
        local d = CS.msg.DHumanInfoChange()
        for field in pairs(changes.human) do
            local v = Save.getNum(field)
            if field == 'actValue' then d.activity = v; d.actValueMax = Wallet.actMax()
            elseif field == 'level' then d.level = v
            else pcall(function() d[field] = v end) end
        end
        local r = CS.msg.SCHumanInfoChange()
        r.human = d
        OFFLINE.reply(r)
    end
    if next(changes.bag) then
        local u = CS.msg.SCBagUpdate()
        u.type = 0
        u.arrange = false
        for sn, info in pairs(changes.bag) do
            local bu = CS.msg.DBagUpdate()
            bu.id = sn
            -- BagData.UpdateItemData(op = type): 1 = cambiar cantidad (MaterialData.MatVOAmount, ChildrenData...),
            -- 2 = añadir (AddMatVO / AddChildrenChip...), 3 = quitar. Un objeto que el cliente no tiene debe ir con 2:
            -- con 1, MatVOAmount falla ("背包不存在该材料") y el material no aparece hasta reiniciar.
            -- OFFLINE.clientBag = objetos que el cliente tiene registrados (mochila del login + lo enviado después).
            local known = OFFLINE.clientBag
            if info.total <= 0 then
                -- A 0: "quitar" (RemoveGeneVO / RemoveMatVO...). Con "cambiar cantidad" el objeto quedaba registrado
                -- con 0 y, p. ej., One-Tap de Tech seguía metiendo ese gen en la fusión. Lo siguiente irá con "añadir".
                bu.type = 3; known[sn] = nil
            elseif known[sn] then
                bu.type = 1
            else
                bu.type = 2; known[sn] = true
            end
            bu.bagType = 0
            bu.item = Bag.ditem(sn, info.total)
            u.updates:Add(bu)
        end
        OFFLINE.reply(u)
    end
end

-- Guarda el servidor falso como "último servidor" (LoginMediator.ReadLastServer)
PlayerPrefs.SetInt('ServerID', OFFLINE.server.id)
PlayerPrefs.SetString('ServerName', OFFLINE.server.name)
PlayerPrefs.SetInt('ServerStage', OFFLINE.server.state)
PlayerPrefs.SetString('ServerIP', OFFLINE.server.ip)
PlayerPrefs.SetInt('ServerPort', OFFLINE.server.port)

-- ---------------------------------------------------------------------
-- Cola de entrega (se vacía en ConnectAPI.Update, un frame después)
-- ---------------------------------------------------------------------
local queue = {}
local function later(fn) queue[#queue + 1] = fn end

local function deliver(resp)
    -- Serializa con el códec real del juego y lo inyecta como si viniera del socket:
    -- GamePacket(body).Encode() -> GamePacket.Decode() -> ConnectAPI.PacketReceived()
    local out = CS.UniCore.GamePacket(resp)
    local bytes = out:Encode()
    local inp = CS.UniCore.GamePacket()
    inp:Decode(bytes, 0, #bytes)
    local api = CS.ConnectAPI.s_instance
    if api == nil then warn('ConnectAPI.s_instance es nil; respuesta perdida') return end
    api:PacketReceived(inp, nil)
end

local function reply(resp)
    later(function() deliver(resp) end)
end
OFFLINE.reply = reply

local function flush()
    if #queue == 0 then return end
    local q = queue
    queue = {}
    for _, fn in ipairs(q) do
        local ok, err = xpcall(fn, debug.traceback)
        if not ok then warn('error entregando respuesta: ' .. tostring(err)) end
    end
end

-- ---------------------------------------------------------------------
-- Servidor falso: un handler por nombre de mensaje CS*
-- ---------------------------------------------------------------------
local H = {}

H.CSLogin = function(req)
    log('CSLogin account=' .. tostring(req.account))
    local r = CS.msg.SCLoginResult()
    r.resultCode   = 0
    r.keyActivate  = false
    r.isServerFull = false
    r.showGiftCode = 0
    r.showService  = 0
    r.showGm       = 0
    reply(r)
end

-- Mechas (en el protocolo: "General" = DGeneral + DUnit; sn -> ConfMechaInfo.id)
local GENERAL_BASE = 20000000
local function arrFirst(a)
    if a ~= nil and a.Length and a.Length > 0 then return a[0] end
    return 0
end
local function listMechaConfs()
    local out = {}
    local ok, arr = pcall(function() return CS.ConfMechaInfo.array end)
    if not ok or arr == nil then warn('ConfMechaInfo.array no disponible') return out end
    for i = 0, arr.Count - 1 do
        local c = arr[i]
        if DEBUG_MECHA_DUMP then
            writelog('M', string.format('mecha id=%d name=%s born=%d starInit=%d show=%s weapon=%d',
                c.id, tostring(c.name), c.bornType, c.starInit, tostring(c.show), arrFirst(c.weaponList)))
        end
        if (OFFLINE.mechas == 'all' and c.show) or (OFFLINE.mechas == 'born' and c.bornType ~= 0) then
            out[#out + 1] = c
        end
    end
    if #out == 0 and arr.Count > 0 then out[1] = arr[0] end
    return out
end

-- ---------------------------------------------------------------------
-- Estado persistente de cada mecha: PlayerPrefs "OFF_mecha" =
--   "confId:estrellas:armaEquipada:arma=nivel/arma=nivel;..."
-- ---------------------------------------------------------------------
local Mecha = {}
function Mecha.loadAll()
    local t = {}
    for rec in string.gmatch(PlayerPrefs.GetString('OFF_mecha', ''), '[^;]+') do
        local id, star, equip, ws = rec:match('^(%d+):(%d+):(%d+):(.*)$')
        if id then
            local w = {}
            for wsn, lv in string.gmatch(ws, '(%d+)=(%d+)') do w[tonumber(wsn)] = tonumber(lv) end
            t[tonumber(id)] = { star = tonumber(star), equip = tonumber(equip), weapons = w }
        end
    end
    return t
end
function Mecha.saveAll(t)
    local recs = {}
    for id, st in pairs(t) do
        local ws = {}
        for wsn, lv in pairs(st.weapons) do ws[#ws + 1] = wsn .. '=' .. lv end
        table.sort(ws)
        recs[#recs + 1] = id .. ':' .. st.star .. ':' .. st.equip .. ':' .. table.concat(ws, '/')
    end
    table.sort(recs)
    PlayerPrefs.SetString('OFF_mecha', table.concat(recs, ';'))
    PlayerPrefs.Save()
end
-- Estado de un mecha (crea el inicial desde la configuración si no existe).
function Mecha.get(c, all)
    all = all or Mecha.loadAll()
    local st = all[c.id]
    if st == nil then
        st = { star = math.max(math.min(c.starInit % 100, 5), 1), equip = 0, weapons = {} }
        all[c.id] = st
    end
    local wl = c.weaponList
    if wl ~= nil then
        for k = 0, wl.Length - 1 do
            if st.weapons[wl[k]] == nil then st.weapons[wl[k]] = 1 end   -- nivel mínimo 1 (no hay nivel 0)
        end
        if st.equip == 0 and wl.Length > 0 then st.equip = wl[0] end
    end
    return st, all
end

local function buildGeneral(c, idx)
    local g = CS.msg.DGeneral()
    g.id = GENERAL_BASE + c.id
    -- starInit = mecha*100 + estrellas (101, 201, 502...). DGeneral.star es el nivel de
    -- estrellas (1..5): Player.BindAureole carga "Aureole_EVA_{star:00}" (solo existen 01..05).
    local st = Mecha.get(c, OFFLINE.mechaCache)
    g.star = st.star
    g.combat = 1000
    g.attingPos = (idx == 1) and 1 or 0
    local u = CS.msg.DUnit()
    u.id = g.id
    u.sn = c.id
    u.name = tostring(c.name)
    u.level = 1
    u.expCur = 0
    u.hpMax = 1000; u.hpCur = 1000
    local p = CS.msg.DProp()
    p.hpMax = 1000; p.atk = 100; p.def = 50
    u.prop = p
    g.unit = u
    -- MechaData.WeaponCollectAttribute lee weaponLvDic[sn] de TODAS las armas de weaponList.
    local wl = c.weaponList
    if wl ~= nil and wl.Length > 0 then
        g.equipWeaponSN = st.equip
        for k = 0, wl.Length - 1 do
            local dw = CS.msg.DWeapon()
            dw.sn = wl[k]; dw.level = st.weapons[wl[k]] or 1
            g.dWeapon:Add(dw)
        end
    end
    return g
end

local function buildHuman()
    local h = CS.msg.DHuman()
    h.id          = OFFLINE.humanId
    h.showId      = OFFLINE.humanId
    h.name        = Save.getStr('name')
    Wallet.regen()
    h.level       = Save.getNum('level')
    h.vipLevel    = Save.getNum('vipLevel')
    h.serverId    = Save.getInt('serverId')
    for _, f in ipairs(WALLET_FIELDS) do
        local v = Save.getNum(f)
        pcall(function() h[f] = v end)
    end
    h.actValueMax = Wallet.actMax()
    h.talentLevel = Save.getNum('talentLevel')
    -- Piloto mostrado en el lobby (LobbySceneMgr lee PlayerData+0xD8 <- DHuman.driverShowSn)
    if Save.getNum('showChild') > 0 then h.driverShowSn = Save.getNum('showChild') end
    h.channel     = 'offline'
    h.combat      = Save.getNum('combat')
    h.titleSn     = Save.getNum('titleSn')
    local p = CS.msg.DProp()
    p.hpMax = 1000
    p.atk   = 100
    p.def   = 50
    h.prop = p

    local confs = listMechaConfs()
    OFFLINE.mechaCache = Mecha.loadAll()
    for i, c in ipairs(confs) do
        local ok, err = pcall(function() h.generalList:Add(buildGeneral(c, i)) end)
        if not ok then warn('mecha ' .. tostring(c.id) .. ': ' .. tostring(err)) end
    end
    if #confs > 0 then
        OFFLINE.defaultGeneral = GENERAL_BASE + confs[1].id
        local saved = Save.getNum('currentGeneral')
        for _, c in ipairs(confs) do
            if GENERAL_BASE + c.id == saved then OFFLINE.defaultGeneral = saved end
        end
        h.defaultGeneral = OFFLINE.defaultGeneral
        Mecha.saveAll(OFFLINE.mechaCache)
        OFFLINE.mechaCache = nil
    end
    log('DHuman con ' .. #confs .. ' mechas; por defecto ' .. tostring(OFFLINE.defaultGeneral))
    return h
end

-- ---------------------------------------------------------------------
-- Batallas PVE (Historia): CSInstanceEnter -> SCInstanceEnter + SCStageSwitch
-- LobbyMediator.SwitchScene: si stageSn ~= 10000 (lobby) guarda repSn en LevelData
-- y carga el modo "Gameplay". LobbyMediator.InitMechaData usa SCInstanceEnter.general.
-- ---------------------------------------------------------------------
local LOBBY_STAGE = 10000
OFFLINE.battle = nil

-- Estadísticas reales del mecha usando las fórmulas del cliente (MechaData, capturada en InitData).
local function applyBattleProps(g, c)
    local md = OFFLINE.mechaData
    if md == nil then warn('MechaData no capturada; stats por defecto') return end
    local ok, err = pcall(function()
        local base = md:CalcBaseProp()
        local pct = md:CalcGetMechaPct(md.mechaList)
        local bp = md:CalcBattleProp(c.id, g.star, base, pct)
        local combat = md:CalcCombat(c.id, g.star, base, pct)
        local p = CS.msg.DProp()
        p.hpMax = bp.Hp; p.atk = bp.Atk; p.def = bp.Def
        p.mpMax = c.mpMax; p.hit = c.hit; p.block = c.block; p.blockDam = c.blockDam
        p.crit = c.crit; p.tough = c.tough; p.critDam = c.critDam
        p.maxDam = c.maxDam; p.minDam = c.minDam; p.speed = c.speed
        g.unit.prop = p
        g.unit.hpMax = bp.Hp; g.unit.hpCur = bp.Hp
        g.unit.mpMax = c.mpMax; g.unit.mpCur = c.mpMax
        g.combat = combat
        log(string.format('stats %s: HP=%d ATK=%d DEF=%d CR=%d', tostring(c.name), bp.Hp, bp.Atk, bp.Def, combat))
    end)
    if not ok then warn('applyBattleProps: ' .. tostring(err)) end
end

local function generalById(gid)
    local sn = (gid or 0) - GENERAL_BASE
    local ok, c = pcall(function() return CS.ConfMechaInfo.Get(sn) end)
    if not ok or c == nil then
        sn = (OFFLINE.defaultGeneral or GENERAL_BASE) - GENERAL_BASE
        ok, c = pcall(function() return CS.ConfMechaInfo.Get(sn) end)
    end
    if ok and c ~= nil then
        local g = buildGeneral(c, 1)
        applyBattleProps(g, c)
        return g
    end
    return nil
end

H.CSInstanceEnter = function(req)
    local inst = req.instSn
    local gid = req.generalId
    if gid == nil or gid == 0 then gid = OFFLINE.defaultGeneral end
    log('CSInstanceEnter inst=' .. tostring(inst) .. ' general=' .. tostring(gid))
    OFFLINE.battle = { inst = inst, general = gid, start = os.time() }

    local r = CS.msg.SCInstanceEnter()
    r.instSn = inst
    local g = generalById(gid)
    -- Expedition: LobbyMediator.InitMechaData toma el HP inicial de general.towerCurHp/towerMaxHp.
    if g and OFFLINE.expBattle and OFFLINE.Exp then
        pcall(function()
            local m = OFFLINE.Exp.load().team[gid]
            if m and m.max > 0 then g.towerMaxHp = m.max; g.towerCurHp = math.max(m.hp, 1) end
        end)
    end
    if g then r.general = g end
    reply(r)

    local s = CS.msg.SCStageSwitch()
    s.stageId = 1
    s.stageSn = inst ~= LOBBY_STAGE and inst or (inst + 1)
    s.repSn = inst
    s.pos = 0
    s.dir = 0
    s.lineNum = 0
    s.result = true
    reply(s)
end

-- ---------------------------------------------------------------------
-- Revivir en combate: ReliveView.ButtonRelive -> CSInstanceRevive{generalId, prop} -> SCInstanceRevive.
-- ReliveView.OnRelive aplica general (Player.SetProp + Relive), guarda reviveItmes como
-- m_reliveTimes (coste del siguiente) y envía GameplayEvent 0x14 con restTime ->
-- BattleMediator.m_countdown (segundos restantes del combate).
-- prop = nombre de ReliveProp (atkPct/defPct/hpMaxPct): bonificación elegida en la ventana.
-- ---------------------------------------------------------------------
local function reviveConf(n)
    local c
    pcall(function() c = CS.ConfCommonRevive.Get(n) end)
    if c == nil then
        pcall(function()
            local arr = CS.ConfCommonRevive.array
            if arr ~= nil and arr.Count > 0 then c = arr[math.min(n, arr.Count) - 1] end
        end)
    end
    return c
end

H.CSInstanceRevive = function(req)
    local b = OFFLINE.battle or {}
    OFFLINE.battle = b
    b.revives = (b.revives or 0) + 1
    local prop = tostring(req.prop or '')
    local g = generalById(b.general or OFFLINE.defaultGeneral)
    if g == nil then warn('CSInstanceRevive: sin general') return end
    local c = reviveConf(b.revives)
    local pct, addT, cost = 0, 0, 0
    if c ~= nil then
        pcall(function()
            cost = c.diamond; addT = c.addTimes
            local ps, vs = c.properties, c.values
            local desc = {}
            for i = 0, ps.Length - 1 do
                desc[#desc + 1] = tostring(ps[i]) .. '=' .. tostring(vs[i])
                if tostring(ps[i]) == prop then pct = vs[i] end
            end
            log(string.format('ConfCommonRevive %d: diamond=%d addTimes=%d %s', c.id, cost, addT, table.concat(desc, ' ')))
        end)
    end
    -- Bonificación (values en base 10000: 500 = +5%). Se acumula durante todo el combate,
    -- porque cada respuesta reconstruye el mecha desde sus stats base.
    b.buffs = b.buffs or {}
    if prop ~= '' then b.buffs[prop] = (b.buffs[prop] or 0) + pct end
    local function mul(k) return 1 + (b.buffs[k] or 0) / 10000 end
    local f = 1 + pct / 10000
    pcall(function()
        local p, u = g.unit.prop, g.unit
        p.atk = math.floor(p.atk * mul('atkPct'))
        p.def = math.floor(p.def * mul('defPct'))
        p.hpMax = math.floor(p.hpMax * mul('hpMaxPct')); u.hpMax = p.hpMax
        u.prop = p
        u.hpCur = u.hpMax
        u.mpCur = u.mpMax
    end)
    -- Gratis: no se cobran los diamantes de ConfCommonRevive (el cliente solo comprueba el saldo).
    OFFLINE.reviveAddTime = (addT and addT > 0) and addT or 60
    local r = CS.msg.SCInstanceRevive()
    r.general = g
    r.restTime = 0       -- el tiempo real lo fija el hotfix de BattleMediator.OnPlayerRelive
    r.reviveItmes = b.revives
    reply(r)
    log(string.format('revivir #%d prop=%s x%.2f', b.revives, prop, f))
end

-- restTime pisa el cronómetro: conservar el tiempo que quedaba (o dar addTimes si se agotó).
pcall(function()
    xlua.private_accessible(CS.BattleMediator)
    local function onRelive(self, evt)
        local before = 0
        pcall(function() before = self.m_countdown end)
        xlua.hotfix(CS.BattleMediator, 'OnPlayerRelive', nil)
        local ok, err = pcall(function() self:OnPlayerRelive(evt) end)
        xlua.hotfix(CS.BattleMediator, 'OnPlayerRelive', onRelive)
        if not ok then warn('OnPlayerRelive: ' .. tostring(err)) end
        pcall(function()
            self.m_countdown = (before > 1) and before or (OFFLINE.reviveAddTime or 60)
            log(string.format('revivir: cronómetro %.0f -> %.0f', before, self.m_countdown))
        end)
    end
    xlua.hotfix(CS.BattleMediator, 'OnPlayerRelive', onRelive)
end)

-- ---------------------------------------------------------------------
-- Progreso de la Historia: estrellas por nivel en PlayerPrefs "OFF_clears" ("sn:estrellas,...")
-- ---------------------------------------------------------------------
-- Las estrellas van codificadas: un dígito por condición, 2 = cumplida (222 = 3 estrellas).
-- ChapterData.LevelStarAmount cuenta los dígitos 2; se guarda el valor codificado.
local function starDigits(v)
    local n = 0
    for _ in tostring(v or 0):gmatch('2') do n = n + 1 end
    return n
end

local Progress = {}
function Progress.load()
    local t = {}
    for sn, st in string.gmatch(PlayerPrefs.GetString('OFF_clears', ''), '(%d+):(%d+)') do
        t[tonumber(sn)] = tonumber(st)
    end
    return t
end
function Progress.save(t)
    local parts = {}
    for sn, st in pairs(t) do parts[#parts + 1] = sn .. ':' .. st end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_clears', table.concat(parts, ','))
    PlayerPrefs.Save()
end

-- Cofres de estrellas reclamados: PlayerPrefs "OFF_boxes" = "capitulo:indice,..."
Boxes = {}
function Boxes.load()
    local t = {}
    for k in string.gmatch(PlayerPrefs.GetString('OFF_boxes', ''), '([%d]+:[%d]+)') do t[k] = true end
    return t
end
function Boxes.claim(chId, j)
    local t = Boxes.load()
    t[chId .. ':' .. j] = true
    local parts = {}
    for k in pairs(t) do parts[#parts + 1] = k end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_boxes', table.concat(parts, ','))
    PlayerPrefs.Save()
end

-- Módulo abierto si su nivel de Historia (unlockLevel) está superado, o si es 0.
function OFFLINE.modOpen(c, clears)
    clears = clears or Progress.load()
    return c.unlockLevel == 0 or (clears[c.unlockLevel] or 0) > 0
end
-- Tras superar un nivel por primera vez: envía SCModUnlock type=2 con los módulos recién abiertos
-- (GuideData lo muestra con la animación de desbloqueo y lo pasa a la lista de abiertos).
function OFFLINE.unlockModsFor(levelSn)
    if OFFLINE.unlockAllMods then return end
    local ok, err = pcall(function()
        local arr, r, names = CS.ConfModUnlock.array, CS.msg.SCModUnlock(), {}
        r.type = 2
        for i = 0, arr.Count - 1 do
            local c = arr[i]
            if c.unlockLevel == levelSn then r.id:Add(c.sn); names[#names + 1] = tostring(c.name) end
        end
        if #names > 0 then
            reply(r)
            log('módulos desbloqueados al superar ' .. levelSn .. ': ' .. table.concat(names, ', '))
        end
    end)
    if not ok then warn('unlockModsFor: ' .. tostring(err)) end
end

local function chapters()
    local ok, arr = pcall(function() return CS.ConfCommonChapter.array end)
    if not ok or arr == nil then return {} end
    local out = {}
    for i = 0, arr.Count - 1 do out[#out + 1] = arr[i] end
    return out
end

local function chapterInfo(ch, clears)
    local info = CS.msg.DChapterInfo()
    info.chapterId = ch.id
    local total = 0
    local list = ch.commonList
    if list ~= nil then
        for j = 0, list.Length - 1 do
            local sn = list[j]
            local st = clears[sn]
            if st and st > 0 then
                local d = CS.msg.DInstance()
                if st <= 3 then st = tonumber(string.rep('2', st)) end   -- migra conteos antiguos
                d.instSn = sn; d.stars = st; d.attNum = 0; d.buyCount = 0; d.cooldownTime = 0
                info.instance:Add(d)
                total = total + starDigits(st)
            end
        end
    end
    info.starAll = total
    -- boxState: un estado por cofre de estrellas (ConfCommonChapter.starNum):
    -- 0 = bloqueado, 1 = disponible, 2 = reclamado. ChapterData.PveLead lo indexa: no puede ir vacío.
    local claimed = Boxes.load()
    local sn = ch.starNum
    if sn ~= nil then
        for j = 0, sn.Length - 1 do
            local st = 0
            if claimed[ch.id .. ':' .. j] then st = 2 elseif total >= sn[j] then st = 1 end
            info.boxState:Add(st)
        end
    end
    return info
end

-- Primer nivel no superado, recorriendo capítulos y niveles en orden de configuración.
local function nextInstance(clears)
    for _, ch in ipairs(chapters()) do
        local list = ch.commonList
        if list ~= nil then
            for j = 0, list.Length - 1 do
                if not clears[list[j]] or clears[list[j]] == 0 then return list[j] end
            end
        end
    end
    return 0
end

local function chapterOf(sn)
    for _, ch in ipairs(chapters()) do
        local list = ch.commonList
        if list ~= nil then
            for j = 0, list.Length - 1 do if list[j] == sn then return ch end end
        end
    end
    return nil
end

local function sendAllChapters()
    local clears = Progress.load()
    local r = CS.msg.SCAllChapter()
    local n = 0
    for _, ch in ipairs(chapters()) do r.infos:Add(chapterInfo(ch, clears)); n = n + 1 end
    r.nextSn = nextInstance(clears)
    log('SCAllChapter: ' .. n .. ' capítulos, siguiente nivel ' .. tostring(r.nextSn))
    reply(r)
end
OFFLINE.sendAllChapters = sendAllChapters

local function addProduce(list, sns, counts)
    if sns == nil then return end
    for i = 0, sns.Length - 1 do
        local p = CS.msg.DProduce()
        p.sn = sns[i]
        p.num = (counts ~= nil and i < counts.Length) and counts[i] or 1
        list:Add(p)
    end
end

-- ---------------------------------------------------------------------
-- Elite: el progreso NO va en SCAllChapter sino en SCInstanceElite{instances} (ChapterData.UpdateElite).
-- Se envían los niveles Elite superados (con sus estrellas) y los ya desbloqueados con 0 estrellas:
-- desbloqueado = Elite anterior superado + nivel normal preCommon superado + nivel >= minLevel.
-- Intentos ilimitados (attNum 0).
-- ---------------------------------------------------------------------
local ELITE_TYPE = nil
local function eliteType()
    if ELITE_TYPE == nil then
        ELITE_TYPE = -1
        pcall(function() ELITE_TYPE = CS.ConfCommonInfo.Get(20001).type end)
    end
    return ELITE_TYPE
end
OFFLINE.eliteType = eliteType

local function eliteRows()
    local out, et = {}, eliteType()
    pcall(function()
        local arr = CS.ConfCommonInfo.array
        for i = 0, arr.Count - 1 do
            local c = arr[i]
            if c.type == et then out[#out + 1] = c end
        end
    end)
    return out
end

function OFFLINE.sendElite(dump)
    local ok, err = pcall(function()
        local clears = Progress.load()
        local lv = Save.getNum('level')
        local r = CS.msg.SCInstanceElite()
        local nClear, nOpen = 0, 0
        local prevDone = true      -- el primer Elite no depende de otro Elite
        for _, c in ipairs(eliteRows()) do
            if dump then
                log(string.format('elite %d cap=%d pre=%d minLv=%d max=%d', c.id, c.chapter, c.preCommon, c.minLevel, c.maxCount))
            end
            local st = clears[c.id] or 0
            local open = st > 0 or (prevDone and (c.preCommon == 0 or (clears[c.preCommon] or 0) > 0) and lv >= c.minLevel)
            prevDone = st > 0
            if open then
                local d = CS.msg.DInstance()
                if st > 0 and st <= 3 then st = tonumber(string.rep('2', st)) end
                d.instSn = c.id; d.stars = st; d.attNum = 0; d.buyCount = 0; d.cooldownTime = 0
                r.instances:Add(d)
                if st > 0 then nClear = nClear + 1 else nOpen = nOpen + 1 end
            end
        end
        reply(r)
        log(string.format('Elite: %d superados, %d disponibles', nClear, nOpen))
    end)
    if not ok then warn('sendElite: ' .. tostring(err)) end
end

-- Botín extra de materiales (OFFLINE.battleDrops): Core + chips/genes al azar. Añade a credits.
function OFFLINE.addBattleDrops(credits)
    -- Botín extra de materiales (OFFLINE.battleDrops): Core + chips al azar.
    local bd = OFFLINE.battleDrops or {}
    local function randomOf(list) if #list > 0 then return list[math.random(#list)] end end
    local childs, aids, mechs = {}, {}, {}
    for _, it in ipairs(OFFLINE.shopCatalog()) do
        if it.type == 8 then childs[#childs + 1] = it.sn
        elseif it.sn >= 4030000 and it.sn < 4040000 then aids[#aids + 1] = it.sn
        elseif it.sn >= 4020000 and it.sn < 4030000 then mechs[#mechs + 1] = it.sn end
    end
    if (bd.core or 0) > 0 then credits[#credits + 1] = { 13, bd.core } end
    local function drop(list, n) local sn = randomOf(list); if sn and (n or 0) > 0 then credits[#credits + 1] = { sn, n } end end
    drop(childs, bd.childChips); drop(aids, bd.aidChips); drop(mechs, bd.mechaChips)
    if (bd.stone or 0) > 0 then credits[#credits + 1] = { 10, bd.stone } end
    if (bd.hallow or 0) > 0 then credits[#credits + 1] = { 11, bd.hallow } end   -- Fort. Stone (Artifact)
    if (bd.crystal or 0) > 0 then credits[#credits + 1] = { 2, bd.crystal } end   -- cristales
    if (bd.refine or 0) > 0 then credits[#credits + 1] = { 12, bd.refine } end    -- Refine. Stone
    if (bd.noah or 0) > 0 then credits[#credits + 1] = { 103, bd.noah } end       -- Noah Crystal
    local genes = {}
    for _, it in ipairs(OFFLINE.shopCatalog()) do if it.sn >= 2010000 and it.sn < 2100000 then genes[#genes + 1] = it.sn end end
    drop(genes, bd.genes)
end

H.CSInstanceEnd = function(req)
    local b = OFFLINE.battle or {}
    local inst = b.inst or 0
    local star = req.star or 0          -- codificado: un dígito por condición (2 = cumplida), p. ej. 222
    local win = (not req.quit) and star > 0
    local starCount = starDigits(star)
    if win and starCount == 0 then starCount = 1 end
    log(string.format('CSInstanceEnd inst=%d star=%d quit=%s tiempo=%s daño=%s',
        inst, star, tostring(req.quit), tostring(req.costTime), tostring(req.damage)))

    local clears = Progress.load()
    local prevRaw = clears[inst] or 0
    local prev = prevRaw <= 3 and prevRaw or starDigits(prevRaw)
    local first = win and prev == 0
    if win and (starCount > prev or prevRaw <= 3) then
        clears[inst] = (star >= 10) and star or tonumber(string.rep('2', starCount))
        Progress.save(clears)
    end

    local ctype = 0
    pcall(function() ctype = CS.ConfCommonInfo.Get(inst).type end)
    local isSupply, isTower = ctype == 3, ctype == 4
    local floor = OFFLINE.towerFloor
    local towerFirst = isTower and win and floor ~= nil and floor > Save.getNum('towerMax')

    local r = CS.msg.SCInstanceEnd()
    r.code = 1                    -- WinView.OnShow: code == 0 es la rama de ERROR (no rellena premios ni modelo)
    r.reson = ''
    -- La respuesta lleva el CONTEO de estrellas (WinView.m_starCount anima una por una).
    r.star = win and starCount or 0
    r.first = first
    r.perfect = starCount >= 3
    r.repSn = inst
    r.humanExp = 0
    -- Recompensas: rewardList siempre; firstList la primera vez; threeStar al lograr 3★ por primera vez.
    local credits, changes = {}, nil
    local function collect(sns, counts)
        if sns == nil then return end
        for i = 0, sns.Length - 1 do
            credits[#credits + 1] = { sns[i], (counts ~= nil and i < counts.Length) and counts[i] or 1 }
        end
    end
    if win then
        local ok, err = pcall(function()
            local conf = CS.ConfCommonInfo.Get(inst)
            if conf == nil then return end
            if isTower and floor then
                local tc = OFFLINE.towerConf and OFFLINE.towerConf(floor)
                if tc then
                    collect(tc.rewardList, tc.rewardCountList)
                    if towerFirst then collect(tc.firstList, tc.firstCountList) end
                end
            else
                collect(conf.rewardList, conf.rewardCountList)
            end
            if (not isSupply and not isTower) and first then
                addProduce(r.produce, conf.firstList, conf.firstCountList)
                collect(conf.firstList, conf.firstCountList)
                local cf = (OFFLINE.battleDrops or {}).crystalFirst or 0
                if cf > 0 then credits[#credits + 1] = { 2, cf } end
            end
            if (not isSupply and not isTower) and starCount >= 3 and prev < 3 then
                addProduce(r.produce, conf.threeStar, conf.threeStarCount)
                collect(conf.threeStar, conf.threeStarCount)
            end
            OFFLINE.addBattleDrops(credits)
            credits = Wallet.expand(credits, 'one')
            -- produce = exactamente lo acreditado (sin los paquetes ya expandidos).
            -- Vir. Drill (SupplyWin) exige UNA sola entrada: se muestra la recompensa principal.
            r.produce:Clear()
            for i, c in ipairs(credits) do
                if not isSupply or i == 1 then
                    local p = CS.msg.DProduce(); p.sn = c[1]; p.num = c[2]
                    r.produce:Add(p)
                end
                if c[1] == 4 then r.humanExp = (r.humanExp or 0) + c[2] end   -- sn 4 = EXP
            end
            -- Energía: costPower se descuenta al ganar.
            Wallet.regen()
            if not OFFLINE.unlimitedEnergy then
                Save.setNum('actValue', math.max(0, Save.getNum('actValue') - conf.costPower))
            end
            changes = Wallet.credit(credits)
            changes.human.actValue = true
        end)
        if not ok then warn('recompensas: ' .. tostring(err)) end
    end
    reply(r)

    local ch = chapterOf(inst)
    if ch ~= nil then
        local u = CS.msg.SCUpdateChapter()
        u.info = chapterInfo(ch, clears)
        u.nextSn = nextInstance(clears)
        reply(u)
    end
    if changes then
        local ok, err = pcall(Wallet.push, changes)
        if not ok then warn('Wallet.push: ' .. tostring(err)) end
        log(string.format('cartera: oro=%d exp=%d nivel=%d energía=%d', Save.getNum('gold'),
            Save.getNum('userExp'), Save.getNum('level'), Save.getNum('actValue')))
    end
    if isSupply and OFFLINE.sendSupplyLevels then OFFLINE.sendSupplyLevels(inst) end
    if isTower and floor then
        if win then
            Save.setNum('towerMax', math.max(Save.getNum('towerMax'), floor))
            Save.setNum('towerCur', floor + 1)
            PlayerPrefs.Save()
            log('Angel Attack: piso ' .. floor .. ' superado')
        end
        OFFLINE.towerFloor = nil
    end
    if first and not isSupply and not isTower then OFFLINE.unlockModsFor(inst) end
    -- Elite: refresca estrellas del nivel Elite jugado y los Elite que desbloquea un nivel normal.
    if win and not isSupply and not isTower then OFFLINE.sendElite() end
    if first and OFFLINE.hallowsUnlockCheck then OFFLINE.hallowsUnlockCheck() end
    OFFLINE.battle = nil
end

H.CSBoxAward = function(req)
    local chId, idx = req.chapterId, req.index
    local ok, err = pcall(function()
        local ch = CS.ConfCommonChapter.Get(chId)
        local rw = ch.starReward
        -- Índice del cofre: se acepta base 0 o base 1 según el rango de starReward.
        local j = idx
        if rw ~= nil and j >= rw.Length then j = j - 1 end
        log(string.format('CSBoxAward capítulo=%d índice=%d -> cofre %d, recompensa=%s', chId, idx, j,
            tostring(rw ~= nil and j < rw.Length and rw[j] or '?')))
        Boxes.claim(chId, j)
        local changes
        if rw ~= nil and j < rw.Length then changes = Wallet.credit(Wallet.expand({ { rw[j], 1 } }, 'all')) end
        local r = CS.msg.SCBoxAward()
        r.code = 1; r.chapterId = chId; r.index = idx
        reply(r)
        if changes then Wallet.push(changes) end
    end)
    if not ok then warn('CSBoxAward: ' .. tostring(err)) end
end

H.CSInstanceLeave = function(req)
    OFFLINE.battle = nil
end

-- ---------------------------------------------------------------------
-- Mechas: cambio, estrellas y armas (costes de ConfMechaStar / ConfWeaponLevel)
-- ---------------------------------------------------------------------
-- Descuenta materiales de la mochila. costs = { {sn, n}, ... }. Devuelve changes o nil si faltan.
-- Saldo de una moneda/objeto (mismo criterio que payItems).
function OFFLINE.balance(sn)
    local ok, conf = pcall(function() return CS.ConfItemData.Get(sn) end)
    local f = ok and conf ~= nil and CURRENCY[tostring(conf.type)] or nil
    if f then return Save.getNum(f) end
    return Bag.load()[sn] or 0
end
local function payItems(costs)
    -- Cada coste se cobra de la cartera si es una moneda (CURRENCY) o de la mochila si es objeto.
    local bag = Bag.load()
    local function fieldOf(sn)
        local ok, conf = pcall(function() return CS.ConfItemData.Get(sn) end)
        return ok and conf ~= nil and CURRENCY[tostring(conf.type)] or nil
    end
    for _, c in ipairs(costs) do
        local f = fieldOf(c[1])
        local have = f and Save.getNum(f) or (bag[c[1]] or 0)
        if have < c[2] then
            warn(string.format('faltan materiales: %d x%d (hay %d)', c[1], c[2], have))
            return nil
        end
    end
    local changes = { human = {}, bag = {} }
    for _, c in ipairs(costs) do
        local f = fieldOf(c[1])
        if f then
            Save.setNum(f, Save.getNum(f) - c[2])
            changes.human[f] = true
        else
            bag[c[1]] = bag[c[1]] - c[2]
            changes.bag[c[1]] = { nuevo = false, total = bag[c[1]] }
        end
    end
    Bag.save(bag)
    PlayerPrefs.Save()
    return changes
end
local function costList(items, counts)
    local out = {}
    if items ~= nil then
        for i = 0, items.Length - 1 do out[#out + 1] = { items[i], counts[i] } end
    end
    return out
end
local function mechaConf(generalId)
    local ok, c = pcall(function() return CS.ConfMechaInfo.Get(generalId - GENERAL_BASE) end)
    if ok then return c end
end

H.CSChangeGeneral = function(req)
    local gid = req.generalId
    if mechaConf(gid) == nil then warn('CSChangeGeneral: mecha desconocido ' .. tostring(gid)) return end
    OFFLINE.defaultGeneral = gid
    Save.setNum('currentGeneral', gid)
    PlayerPrefs.Save()
    log('mecha de combate -> ' .. tostring(gid))
    local r = CS.msg.SCChangeGeneral()
    r.generalId = gid
    reply(r)
end

H.CSGeneralStarUp = function(req)
    local c = mechaConf(req.id)
    local r = CS.msg.SCGeneralStarUp()
    r.result = false
    r.sn = tostring(c and c.id or 0)
    r.star = 0
    if c ~= nil then
        local st, all = Mecha.get(c)
        r.star = st.star
        local idx = c.id - 6000000
        log(string.format('CSGeneralStarUp %s: estrellas guardadas=%d starInit=%d chips=%d registro="%s"',
            tostring(c.name), st.star, c.starInit, Bag.load()[4020000 + idx] or -1,
            (PlayerPrefs.GetString('OFF_mecha', ''):match('6000001:[^;]*') or '')))
        local okS, nextConf = pcall(function() return CS.ConfMechaStar.Get(idx * 100 + st.star + 1) end)
        if st.star >= 5 or not okS or nextConf == nil then
            warn('CSGeneralStarUp: ' .. tostring(c.name) .. ' ya tiene el máximo de estrellas')
        else
            local changes = payItems(costList(nextConf.materialList, nextConf.materialValue))
            if changes then
                st.star = st.star + 1
                Mecha.saveAll(all)
                r.result = true
                r.star = st.star
                log(string.format('%s -> %d estrellas', tostring(c.name), st.star))
                reply(r)
                Wallet.push(changes)
                return
            end
        end
    end
    reply(r)
end

H.CSEquipWeapon = function(req)
    local c = mechaConf(req.id)
    if c == nil then return end
    local st, all = Mecha.get(c)
    st.equip = req.weaponSN
    Mecha.saveAll(all)
    local r = CS.msg.SCEquipWeapon()
    r.id = req.id; r.weaponSN = req.weaponSN
    reply(r)
end

H.CSWeaponDeblocking = function(req)
    local c = mechaConf(req.id)
    if c == nil then return end
    local st, all = Mecha.get(c)
    if (st.weapons[req.weaponSN] or 0) < 1 then st.weapons[req.weaponSN] = 1 end
    Mecha.saveAll(all)
    local r = CS.msg.SCWeaponDeblocking()
    r.id = req.id; r.weaponSN = req.weaponSN
    reply(r)
end

H.CSWeaponIntensify = function(req)
    local c = mechaConf(req.id)
    if c == nil then return end
    local st, all = Mecha.get(c)
    local wsn = req.weaponSN
    local lv = st.weapons[wsn] or 1
    local ok, err = pcall(function()
        local w = CS.ConfWeaponInfo.Get(wsn)
        if lv >= w.maxLv then warn('arma al nivel máximo') return end
        local lvConf = CS.ConfWeaponLevel.Get(w.type * 1000 + lv)
        local changes = payItems(costList(lvConf.costItem, lvConf.costItemCount))
        if changes == nil then return end
        st.weapons[wsn] = lv + 1
        Mecha.saveAll(all)
        log(string.format('arma %d de %s -> nivel %d', wsn, tostring(c.name), lv + 1))
        local r = CS.msg.SCWeaponIntensify()
        r.id = req.id; r.weaponSN = wsn
        reply(r)                 -- el cliente suma +1 al nivel (MechaData.OnWeaponIntensify)
        Wallet.push(changes)
    end)
    if not ok then warn('CSWeaponIntensify: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Colecciones: elecciones persistentes (piloto mostrado, Aid equipada, ángeles de apoyo)
-- ---------------------------------------------------------------------
H.CSChangeShowChildren = function(req)
    -- El cliente cambia el piloto/fondo del lobby por su cuenta; solo se guarda la elección.
    Save.setNum('showChild', req.sn)
    PlayerPrefs.Save()
    log('piloto mostrado en el lobby -> ' .. tostring(req.sn))
end

H.CSATFieldFit = function(req)
    Save.setNum('atFit', req.atId)
    PlayerPrefs.Save()
    local r = CS.msg.SCATFieldFitResult()
    r.id = req.atId
    reply(r)
    log('Aid equipada -> ' .. tostring(req.atId))
end

H.CSAngelHelpChange = function(req)
    local ids, r = {}, CS.msg.SCAngelHelpInfo()
    for i = 0, req.id.Count - 1 do
        ids[#ids + 1] = tostring(req.id[i])
        r.id:Add(req.id[i])
    end
    PlayerPrefs.SetString('OFF_angelHelp', table.concat(ids, ','))
    PlayerPrefs.Save()
    reply(r)
    log('ángeles de apoyo -> ' .. table.concat(ids, ','))
end

-- ---------------------------------------------------------------------
-- Mejoras de colecciones: niveles persistentes "OFF_lv_<tipo>" = "sn:nivel,..."
-- ---------------------------------------------------------------------
Levels = {}
function Levels.load(kind)
    local t = {}
    for sn, lv in string.gmatch(PlayerPrefs.GetString('OFF_lv_' .. kind, ''), '(%d+):(%d+)') do
        t[tonumber(sn)] = tonumber(lv)
    end
    return t
end
function Levels.get(kind, sn) return Levels.load(kind)[sn] or 1 end
function Levels.set(kind, sn, lv)
    local t = Levels.load(kind)
    t[sn] = lv
    local parts = {}
    for k, v in pairs(t) do parts[#parts + 1] = k .. ':' .. v end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_lv_' .. kind, table.concat(parts, ','))
    PlayerPrefs.Save()
end
-- Nivel efectivo de un ángel: nunca por debajo de ConfAngelInfo.initLv
-- (Clone E-10 tiene initLv = maxLv = 200: se obtiene al máximo y no se mejora).
function Levels.angel(sn)
    local lv = Levels.get('angel', sn)
    pcall(function() local c = CS.ConfAngelInfo.Get(sn); if c and c.initLv > lv then lv = c.initLv end end)
    return lv
end

-- Children: ConfChildrenLevel(id = piloto*100 + nivel destino) -> chips del piloto.
-- ---------------------------------------------------------------------
-- Afinidad de los children: LobbyView.OnChildClick -> CSIntimacyInteract{id = sn del child}.
-- Respuesta: SCGetChildren{info} -> ChildrenData.ChildInfoChange -> LobbyEvent.ChildrenChangeInfo ->
-- LobbyView.ChildrenTerms (diálogo, corazones y barra). DChildInfo: allIntimacy = total acumulado,
-- dataIntimacy = toques de hoy (límite ConfGlobalParam 2003), intimacyId = fila de ConfChildrenIntimacy
-- del nivel en curso. Barra = allIntimacy - (intimacy - stepIntimacy) sobre stepIntimacy.
-- Estado: PlayerPrefs "OFF_intim" = "sn:total:hoy:fecha;..."
-- ---------------------------------------------------------------------
local Intim = {}
OFFLINE.Intim = Intim
function Intim.load()
    local t = {}
    for sn, all, day, date in string.gmatch(PlayerPrefs.GetString('OFF_intim', ''), '(%d+):(%d+):(%d+):(%d+)') do
        t[tonumber(sn)] = { all = tonumber(all), day = tonumber(day), date = tonumber(date) }
    end
    return t
end
function Intim.save(t)
    local recs = {}
    for sn, v in pairs(t) do recs[#recs + 1] = string.format('%d:%d:%d:%d', sn, v.all, v.day, v.date) end
    PlayerPrefs.SetString('OFF_intim', table.concat(recs, ';'))
    PlayerPrefs.Save()
end
local function gparam(id, def)
    local ok, g = pcall(function() return CS.ConfGlobalParam.Get(id) end)
    return (ok and g ~= nil and g.value ~= 0) and g.value or def
end
local function today() return tonumber(os.date('%Y%m%d')) end
-- Filas de afinidad del child (ConfChildrenInfo.intimacy) y la fila del nivel en curso.
function Intim.rows(sn)
    local rows = {}
    pcall(function()
        local ids = CS.ConfChildrenInfo.Get(sn).intimacy
        for i = 0, ids.Length - 1 do
            local r = CS.ConfChildrenIntimacy.Get(ids[i])
            if r ~= nil then rows[#rows + 1] = r end
        end
    end)
    return rows
end
function Intim.fill(d, sn, st)
    st = st or Intim.load()[sn] or { all = 0, day = 0, date = 0 }
    local rows = Intim.rows(sn)
    local cur = rows[#rows]
    for _, r in ipairs(rows) do
        if st.all < r.intimacy then cur = r break end
    end
    d.allIntimacy = st.all
    d.dataIntimacy = (not OFFLINE.intimacyUnlimited and st.date == today()) and st.day or 0
    d.intimacyId = cur and cur.id or 0
end

H.CSIntimacyInteract = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.id)
        local t = Intim.load()
        local st = t[sn] or { all = 0, day = 0, date = 0 }
        if st.date ~= today() then st.day = 0; st.date = today() end
        local limit = OFFLINE.intimacyUnlimited and math.huge or (OFFLINE.intimacyDaily or gparam(2003, 10))
        local gain = OFFLINE.intimacyGain or gparam(2004, 30)
        local rows = Intim.rows(sn)
        local maxAll = (#rows > 0) and rows[#rows].intimacy or 0
        if st.day < limit and st.all < maxAll then
            st.day = st.day + 1
            st.all = math.min(st.all + gain, maxAll)
        elseif st.day < limit then
            st.day = st.day + 1
        end
        t[sn] = st
        Intim.save(t)
        local c = CS.ConfChildrenInfo.Get(sn)
        local d = CS.msg.DChildInfo()
        d.id = 50000000 + sn; d.sn = sn; d.lv = Levels.get('child', sn); d.syn = ''
        Intim.fill(d, sn, st)
        local r = CS.msg.SCGetChildren()
        r.info = d
        r.type = 3
        reply(r)
        log(string.format('afinidad child %d: total %d/%d, hoy %d/%s, fila %d', sn, st.all, maxAll, st.day, tostring(limit), d.intimacyId))
    end)
    if not ok then warn('CSIntimacyInteract: ' .. tostring(err)) end
end

H.CSLvUpChildren = function(req)
    local sn = req.sn
    local ok, err = pcall(function()
        local cur = Levels.get('child', sn)
        local row = CS.ConfChildrenLevel.Get(sn * 100 + cur + 1)
        if row == nil then warn('Children ' .. sn .. ' al nivel máximo') return end
        log(string.format('CSLvUpChildren %d: nivel %d -> %d, coste %dx%d', sn, cur, cur + 1, row.chipSn, row.chipNum))
        local changes = payItems({ { row.chipSn, row.chipNum } })
        if changes == nil then return end
        Levels.set('child', sn, cur + 1)
        local c = CS.ConfChildrenInfo.Get(sn)
        local d = CS.msg.DChildInfo()
        d.id = 50000000 + sn; d.sn = sn; d.lv = cur + 1; d.syn = ''
        Intim.fill(d, sn)
        local r = CS.msg.SCGetChildren()
        r.info = d
        r.type = 2
        reply(r)
        Wallet.push(changes)
    end)
    if not ok then warn('CSLvUpChildren: ' .. tostring(err)) end
end

-- Ángeles: ConfAngelLevel(id = 1000 + nivel actual) -> Core (angelUp) + oro. Máximo ConfAngelInfo.maxLv.
H.CSAngelLvUp = function(req)
    local sn = (req.id or 0) - 70000000
    local ok, err = pcall(function()
        local info = CS.ConfAngelInfo.Get(sn)
        local cur = Levels.angel(sn)
        if cur >= info.maxLv then warn('ángel ' .. sn .. ' al nivel máximo') return end
        -- Clave como el cliente (CharacterAngelInfo.RefreshItem): ConfAngelInfo.type * 1000 + nivel
        local row = CS.ConfAngelLevel.Get(info.type * 1000 + cur)
        log(string.format('CSAngelLvUp %d: nivel %d -> %d, coste Core %d + oro %d', sn, cur, cur + 1, row.costAngelUp, row.costGold))
        local changes = payItems({ { 13, row.costAngelUp }, { 1, row.costGold } })
        if changes == nil then return end
        Levels.set('angel', sn, cur + 1)
        local r = CS.msg.SCAngelChange()
        r.angel = OFFLINE.angelMsg(sn)
        r.type = 1
        reply(r)
        Wallet.push(changes)
    end)
    if not ok then warn('CSAngelLvUp: ' .. tostring(err)) end
end

-- Aid: ConfATSkillLevel(id = tipo*1000 + nivel) -> chips de la habilidad + oro. type 1 = desbloquear, 2 = mejorar.
H.CSATFieldLvUp = function(req)
    local id = req.atId
    local ok, err = pcall(function()
        local info = CS.ConfATSkillInfo.Get(id)
        local cur = Levels.get('at', id)
        local r = CS.msg.SCATFieldLvResult()
        r.atId = id; r.type = req.type
        if req.type == 2 then
            if cur >= info.maxLevel then warn('Aid ' .. id .. ' al nivel máximo') return end
            -- La fila de cada nivel guarda el coste de LLEGAR a él (1001 = desbloqueo 5/100, 1002 = Nv.2 10/10000).
            local row = CS.ConfATSkillLevel.Get(info.type * 1000 + cur + 1)
            log(string.format('CSATFieldLvUp %d: nivel %d -> %d, coste chips %dx%d + oro %d (fila %d)',
                id, cur, cur + 1, info.chipId, row.count, row.costGold, row.id))
            local changes = payItems({ { info.chipId, row.count }, { 1, row.costGold } })
            if changes == nil then return end
            Levels.set('at', id, cur + 1)
            r.lv = cur + 1
            reply(r)
            Wallet.push(changes)
        else
            r.lv = cur
            reply(r)
        end
    end)
    if not ok then warn('CSATFieldLvUp: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Tienda de materiales con oro (StoreData: SCStoreInfo.list, pestaña type 1 = objetos)
-- ---------------------------------------------------------------------
local SHOP_TYPE = 1          -- pestaña "Item": Core, cristal, chips de Aid y de mechas
local SHOP_TYPE_CHILD = 8    -- pestaña "Discount": chips de pilotos
local function shopCatalog()
    if OFFLINE.shopCache then return OFFLINE.shopCache end
    local sh = OFFLINE.shop
    local tabs = { [SHOP_TYPE] = {}, [SHOP_TYPE_CHILD] = {} }
    local function add(tab, sn, n, price) local t = tabs[tab]; t[#t + 1] = { sn = sn, num = n, price = price, type = tab } end
    add(SHOP_TYPE, sh.core[1], sh.core[2], sh.core[3])
    add(SHOP_TYPE, sh.crystal[1], sh.crystal[2], sh.crystal[3])
    if sh.stone then add(SHOP_TYPE, sh.stone[1], sh.stone[2], sh.stone[3]) end
    if sh.talent then add(SHOP_TYPE, sh.talent[1], sh.talent[2], sh.talent[3]) end
    if sh.hallow then add(SHOP_TYPE, sh.hallow[1], sh.hallow[2], sh.hallow[3]) end
    if sh.crystals then add(SHOP_TYPE, sh.crystals[1], sh.crystals[2], sh.crystals[3]) end
    if sh.refine then add(SHOP_TYPE, sh.refine[1], sh.refine[2], sh.refine[3]) end
    if sh.noah then add(SHOP_TYPE, sh.noah[1], sh.noah[2], sh.noah[3]) end
    pcall(function()
        local a = CS.ConfGene.array
        for i = 0, a.Count - 1 do if a[i].level == 1 and sh.genes then add(SHOP_TYPE, a[i].id, sh.genes[1], sh.genes[2]) end end
    end)
    pcall(function()
        local a = CS.ConfATSkillInfo.array
        for i = 0, a.Count - 1 do add(SHOP_TYPE, a[i].chipId, sh.aidChips[1], sh.aidChips[2]) end
    end)
    pcall(function()
        local a = CS.ConfMechaInfo.array
        for i = 0, a.Count - 1 do add(SHOP_TYPE, 4020000 + (a[i].id - 6000000), sh.mechaChips[1], sh.mechaChips[2]) end
    end)
    pcall(function()
        local a = CS.ConfChildrenInfo.array
        for i = 0, a.Count - 1 do
            local c = a[i]
            if c.exist and c.chipSn > 0 then add(SHOP_TYPE_CHILD, c.chipSn, sh.childChips[1], sh.childChips[2]) end
        end
    end)
    -- DStoreInfo.sn debe ser un ConfStore válido (StoreItemEx lo consulta). Cada pestaña reutiliza las filas;
    -- la compra se identifica por (pestaña, sn).
    local rows = {}
    pcall(function()
        local a = CS.ConfStore.array
        for i = 0, a.Count - 1 do rows[#rows + 1] = a[i].id end
    end)
    local out, total = {}, 0
    for _, tab in ipairs({ SHOP_TYPE, SHOP_TYPE_CHILD }) do
        for i, it in ipairs(tabs[tab]) do
            total = total + 1
            if rows[i] ~= nil then it.storeSn = rows[i]; out[#out + 1] = it end
        end
    end
    -- Tiendas con filas reales de ConfStore: una casilla por fila, artículo elegido por peso.
    -- buyType = id de la moneda (1 oro, 2 cristal, 5 Exped. Coin). Sin límite de compras.
    pcall(function()
        local a = CS.ConfStore.array
        for i = 0, a.Count - 1 do
            local c = a[i]
            if OFFLINE.realShops[c.storeType] and c.goodsIDList ~= nil and c.goodsIDList.Length > 0 then
                local k, w = 0, c.goodsWeightList
                if w ~= nil and w.Length == c.goodsIDList.Length then
                    local total = 0
                    for q = 0, w.Length - 1 do total = total + w[q] end
                    local roll = math.random() * total
                    for q = 0, w.Length - 1 do roll = roll - w[q]; if roll <= 0 then k = q break end end
                else
                    k = math.random(c.goodsIDList.Length) - 1
                end
                out[#out + 1] = { sn = c.goodsIDList[k], num = c.goodsCountList[k], price = c.goodsPriceList[k],
                                  type = c.storeType, storeSn = c.id, currency = c.buyType }
            end
        end
    end)
    OFFLINE.shopCache = out
    for i = 1, math.min(#out, 14) do writelog('D', string.format('tienda[%d] tipo=%d fila=%d objeto=%d x%d precio=%d', i, out[i].type, out[i].storeSn, out[i].sn, out[i].num, out[i].price)) end
    log('tienda: ' .. #out .. ' de ' .. total .. ' artículos (' .. #rows .. ' filas por pestaña)')
    return out
end
OFFLINE.shopCatalog = shopCatalog
local function shopEntry(sn, tab)
    for _, it in ipairs(shopCatalog()) do
        if it.storeSn == sn and (tab == nil or it.type == tab) then return it end
    end
end

H.CSStoreInfo = function(req)
    local r = CS.msg.SCStoreInfo()
    for _, it in ipairs(shopCatalog()) do
        local d = CS.msg.DStoreInfo()
        d.sn = it.storeSn; d.id = it.sn; d.type = it.type; d.num = it.num
        d.buytime = 999; d.price = it.price; d.vipLv = 0; d.goodsLevel = 0; d.discount = 100
        r.list:Add(d)
    end
    reply(r)
end

H.CSStoreBuy = function(req)
    -- pendingBuy = compra desde las fichas de la tienda (hotfix OnBuyClick). Cualquier otra compra
    -- (p. ej. "Buy Fort. Stone" de Artifact) usa la fila REAL de ConfStore: sus ids chocan con las
    -- filas que reutilizan las pestañas propias, así que nunca se busca en el catálogo.
    local it = OFFLINE.pendingBuy
    OFFLINE.pendingBuy = nil
    if it == nil then
        pcall(function()
            local c = CS.ConfStore.Get(req.sn)
            local n = math.max(math.tointeger(req.count or 1) or 1, 1)
            if c and c.goodsIDList ~= nil and c.goodsIDList.Length > 0 then
                it = { sn = c.goodsIDList[0], num = c.goodsCountList[0] * n, price = c.goodsPriceList[0] * n, currency = c.buyType }
            end
        end)
    end
    if it == nil then warn('CSStoreBuy: artículo desconocido ' .. tostring(req.sn)) return end
    local changes = payItems({ { it.currency or 1, it.price } })   -- oro, o la moneda de la tienda real
    if changes == nil then return end
    local got = Wallet.credit({ { it.sn, it.num } })
    for k in pairs(got.human) do changes.human[k] = true end
    for k, v in pairs(got.bag) do changes.bag[k] = v end
    log(string.format('compra: %d x%d por %d (moneda %d)', it.sn, it.num, it.price, it.currency or 1))
    local r = CS.msg.SCStoreBuy()
    r.sn = req.sn
    reply(r)
    Wallet.push(changes)
end

-- Interfaz de la tienda: precio con icono de oro y cobro en oro (la pestaña cobraba en diamantes).
xlua.private_accessible(CS.StoreItemEx)
local goldSprite, loggedBtn = nil, false
loggedGold = false
local function findGoldSprite()
    if goldSprite then return goldSprite end
    pcall(function()
        local all = CS.UnityEngine.Resources.FindObjectsOfTypeAll(typeof(CS.UnityEngine.Sprite))
        local cands = {}
        for i = 0, all.Length - 1 do
            local n = string.lower(all[i].name)
            if n == 'public_gold' or n == 'public_coin' or n == 'public_money' then goldSprite = all[i] end
            if (string.find(n, 'gold') or string.find(n, 'coin') or string.find(n, 'money')) and #cands < 25 then
                cands[#cands + 1] = all[i].name
            end
        end
        if not loggedGold then loggedGold = true; writelog('D', 'sprites oro: ' .. table.concat(cands, ', ')) end
    end)
    return goldSprite
end
local function describe(t, depth, out)
    for i = 0, t.childCount - 1 do
        local ch = t:GetChild(i)
        local im = ch:GetComponent(typeof(CS.UnityEngine.UI.Image))
        out[#out + 1] = string.rep('  ', depth) .. ch.name .. (im ~= nil and im.sprite ~= nil and (' [img ' .. im.sprite.name .. ']') or '')
        describe(ch, depth + 1, out)
    end
end
-- StoreItemEx (pestaña Item) y DiscountItem (pestaña Discount) comparten estructura.
local function hookShopItem(cls)
    xlua.private_accessible(cls)
    local function onUpdate(self, data)
        xlua.hotfix(cls, 'UpdateData', nil)
        local ok, err = pcall(function() self:UpdateData(data) end)
        xlua.hotfix(cls, 'UpdateData', onUpdate)
        if not ok then warn('tienda UpdateData: ' .. tostring(err)) return end
        pcall(function()
            if false and data ~= nil then
                OFFLINE.dbgShop = (OFFLINE.dbgShop or 0) + 1
                writelog('D', string.format('ficha obj=%s sn=%s id=%s titulo=%s', tostring(self.gameObject:GetInstanceID()), tostring(data.sn), tostring(data.id), tostring(self.title and self.title.text)))
            end
            if data == nil or shopEntry(data.sn, data.type) == nil then return end
            -- Precio real (algunas filas de ConfStore traen descuento propio que el cliente aplica).
            pcall(function()
                local it = shopEntry(data.sn, data.type)
                local t = self.buyBtn.transform:Find('num'):GetComponent(typeof(CS.UnityEngine.UI.Text))
                t.text = tostring(it.price)
            end)
            -- El original solo registra el clic de compra en ciertos casos: se registra siempre.
            pcall(function()
                local l = CS.EventTriggerListener.Get(self.buyBtn)
                l.parameter = data
                l.onClick = function(g) self:OnBuyClick(g) end
            end)
            pcall(function() self.locked.gameObject:SetActive(false) end)            -- sin requisito VIP
            pcall(function() self.limitNum.gameObject:SetActive(false) end)          -- sin límite de compras
            pcall(function() self.originalPriceText.gameObject:SetActive(false) end) -- sin "precio original"
            pcall(function() self.discount:SetActive(false) end)
            pcall(function() self.buyBtn:SetActive(true) end)
            local btn = self.buyBtn.transform
            if not loggedBtn then
                loggedBtn = true
                local out = {}
                describe(btn, 0, out)
                writelog('D', 'buyBtn: ' .. table.concat(out, ' | '))
            end
            local gs = findGoldSprite()
            if gs == nil then return end
            local imgs = btn:GetComponentsInChildren(typeof(CS.UnityEngine.UI.Image), true)
            for i = 0, imgs.Length - 1 do
                local im = imgs[i]
                if im.transform ~= btn and im.sprite ~= nil and string.find(string.lower(im.sprite.name), 'diamond') then
                    im.sprite = gs
                end
            end
        end)
    end
    xlua.hotfix(cls, 'UpdateData', onUpdate)
    xlua.hotfix(cls, 'OnBuyClick', function(self, go)
        local okD, data = pcall(function() return CS.EventTriggerListener.Get(go).parameter end)
        if not okD then data = nil end
        local it = data and shopEntry(data.sn, data.type)
        writelog('D', 'OnBuyClick ' .. tostring(cls) .. ' data=' .. tostring(data and data.sn) .. '/' .. tostring(data and data.type) .. ' entrada=' .. tostring(it ~= nil))
        if it == nil then return end
        local have = (it.currency or 1) == 1 and Save.getNum('gold') or OFFLINE.balance(it.currency)
        if have < it.price then
            pcall(function() CS.CommonTipView.Get():PopCenterTipWnd('Not enough ' .. ((it.currency or 1) == 1 and 'Coin' or 'currency')) end)
            return
        end
        OFFLINE.pendingBuy = it
        local req = CS.msg.CSStoreBuy()
        req.sn = data.sn
        req.count = 1
        CS.ConnectAPI.QueuePacket(req)
    end)
end
hookShopItem(CS.StoreItemEx)
hookShopItem(CS.DiscountItem)

-- ---------------------------------------------------------------------
-- Talent: CSTalentInfo = activar el siguiente talento. Coste ConfTalent(nivel actual):
-- costTalent (Life Source, campo 'talent') + costGold. SCTalentInfo.telentLevel = nuevo nivel.
-- ---------------------------------------------------------------------
H.CSTalentInfo = function(req)
    local ok, err = pcall(function()
        local cur = Save.getNum('talentLevel')
        local row = CS.ConfTalent.Get(cur)
        local nextRow = CS.ConfTalent.Get(cur + 1)
        local r = CS.msg.SCTalentInfo()
        r.telentLevel = cur
        if row == nil or nextRow == nil then warn('Talent al nivel máximo'); reply(r); return end
        local changes = payItems({ { 8, row.costTalent }, { 1, row.costGold } })
        if changes == nil then reply(r); return end
        Save.setNum('talentLevel', cur + 1)
        PlayerPrefs.Save()
        r.telentLevel = cur + 1
        log(string.format('talento %d -> %d (Life Source %d, oro %d)', cur, cur + 1, row.costTalent, row.costGold))
        reply(r)
        Wallet.push(changes)
    end)
    if not ok then warn('CSTalentInfo: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Armor (equipo) y Tech (genes). Estado: PlayerPrefs "OFF_equip" =
--   "pos=sn,nivel,mascaraMateriales,gen0:exp0/gen1:exp1/...;..."
-- ---------------------------------------------------------------------
local Equip = {}
function Equip.load()
    local t = {}
    for rec in string.gmatch(PlayerPrefs.GetString('OFF_equip', ''), '[^;]+') do
        local pos, sn, lv, mask, gs = rec:match('^(%d+)=(%d+),(%d+),(%d+),(.*)$')
        if pos then
            local genes = {}
            local i = 0
            for g, e in string.gmatch(gs, '(%d+):(%d+)') do genes[i] = { sn = tonumber(g), exp = tonumber(e) }; i = i + 1 end
            t[tonumber(pos)] = { sn = tonumber(sn), level = tonumber(lv), mask = tonumber(mask), genes = genes }
        end
    end
    return t
end
function Equip.save(t)
    local recs = {}
    for pos, e in pairs(t) do
        local gs, i = {}, 0
        while e.genes[i] do gs[#gs + 1] = e.genes[i].sn .. ':' .. e.genes[i].exp; i = i + 1 end
        recs[#recs + 1] = pos .. '=' .. e.sn .. ',' .. e.level .. ',' .. e.mask .. ',' .. table.concat(gs, '/')
    end
    table.sort(recs)
    PlayerPrefs.SetString('OFF_equip', table.concat(recs, ';'))
    PlayerPrefs.Save()
end
-- Piezas desbloqueadas por nivel de jugador (ConfEquipInit.unlockLv); crea las nuevas.
function Equip.sync()
    local t, new = Equip.load(), {}
    local lv = Save.getNum('level')
    local arr = CS.ConfEquipInit.array
    for i = 0, arr.Count - 1 do
        local c = arr[i]
        if lv >= c.unlockLv and t[c.id] == nil then
            local info = CS.ConfEquipInfo.Get(c.equipId)
            local e = { sn = c.equipId, level = 1, mask = 0, genes = {} }
            for g = 0, info.geneNum - 1 do e.genes[g] = { sn = 0, exp = 0 } end
            t[c.id] = e
            new[#new + 1] = c.id
        end
    end
    if #new > 0 then Equip.save(t) end
    return t, new
end
function Equip.toMsg(pos, e)
    local d = CS.msg.DEquip()
    d.id = 90000 + pos; d.pos = pos; d.sn = e.sn; d.level = e.level
    local parts = {}
    for b = 0, 15 do if (e.mask >> b) & 1 == 1 then parts[#parts + 1] = '"' .. b .. '":1' end end
    d.clkJson = '{' .. table.concat(parts, ',') .. '}'
    local i = 0
    -- Solo ranuras ocupadas: EquipData.UpdateEquipVO trata toda ranura presente como instalada.
    while e.genes[i] do
        if e.genes[i].sn ~= 0 then
            local g = CS.msg.DGene()
            g.id = (90000 + pos) * 100 + i; g.pos = i; g.sn = e.genes[i].sn; g.value = e.genes[i].exp
            d.genes:Add(g)
        end
        i = i + 1
    end
    return d
end
function OFFLINE.equipList()
    local t = Equip.sync()
    local out = {}
    for pos, e in pairs(t) do out[#out + 1] = Equip.toMsg(pos, e) end
    return out
end
local function equipReply(pos, e, typ)
    local r = CS.msg.SCEquipChange()
    r.equip = Equip.toMsg(pos, e)
    r.type = typ
    reply(r)
end
-- Llamado tras subir de nivel: desbloquea piezas nuevas (SCEquipChange type 6).
function OFFLINE.equipUnlockCheck()
    local ok, err = pcall(function()
        local t, new = Equip.sync()
        for _, pos in ipairs(new) do equipReply(pos, t[pos], 6); log('pieza de armadura desbloqueada: ' .. pos) end
    end)
    if not ok then warn('equipUnlockCheck: ' .. tostring(err)) end
end

-- Subir nivel: ConfEquipLevel(pos*1000 + nivel actual) -> Soul Stone (campo 'stone') + oro. Tope = nivel de jugador.
H.CSEquipUp = function(req)
    local ok, err = pcall(function()
        local t = Equip.load()
        local e = t[req.pos]
        if e == nil then return end
        -- EquipView.LockClick se activa al enviar y solo lo libera SCEquipChange: responder SIEMPRE.
        if e.level >= Save.getNum('level') then warn('Armadura: tope = nivel del jugador'); equipReply(req.pos, e, 7); return end
        local row = CS.ConfEquipLevel.Get(req.pos * 1000 + e.level)
        if row == nil then warn('Armadura al nivel máximo'); equipReply(req.pos, e, 7); return end
        local changes = payItems({ { 10, row.costStone }, { 1, row.costGold } })
        if changes == nil then equipReply(req.pos, e, 7); return end
        e.level = e.level + 1
        Equip.save(t)
        log(string.format('armadura %d -> nivel %d (Soul Stone %d, oro %d)', req.pos, e.level, row.costStone, row.costGold))
        equipReply(req.pos, e, 7)   -- EQUIPUP
        Wallet.push(changes)
    end)
    if not ok then warn('CSEquipUp: ' .. tostring(err)) end
end

-- Instalar materiales de evolución: ranura i <- ConfEquipInfo.costItem[i] x costNum[i] (de la mochila).
H.CSEquipMatChange = function(req)
    local ok, err = pcall(function()
        local t = Equip.load()
        local e = t[req.pos]
        if e == nil then return end
        local info = CS.ConfEquipInfo.Get(e.sn)
        local costs, idxs = {}, {}
        local dbg = {}
        for k = 0, req.index.Count - 1 do dbg[#dbg + 1] = tostring(req.index[k]) end
        log('CSEquipMatChange pos=' .. tostring(req.pos) .. ' index=' .. table.concat(dbg, ',') .. ' mask=' .. e.mask .. ' materiales=' .. (info.costItem and info.costItem.Length or 0))
        for k = 0, req.index.Count - 1 do
            local i = req.index[k]
            if (e.mask >> i) & 1 == 0 and info.costItem ~= nil and i < info.costItem.Length then
                costs[#costs + 1] = { info.costItem[i], info.costNum[i] }
                idxs[#idxs + 1] = i
            end
        end
        local changes = payItems(costs)
        if changes == nil then equipReply(req.pos, e, 2); return end
        for _, i in ipairs(idxs) do e.mask = e.mask | (1 << i) end
        Equip.save(t)
        Wallet.push(changes)
        equipReply(req.pos, e, 2)   -- MATINSTALL
    end)
    if not ok then warn('CSEquipMatChange: ' .. tostring(err)) end
end

-- Fusionar materiales (MaterialPanelC.ComposableButton): ConfMaterial(sn).costItem x costNum + costGold -> 1 x sn.
H.CSEquipMatMerge = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.sn)
        local m = CS.ConfMaterial.Get(sn)
        if m == nil or m.costItem == nil or m.costItem.Length == 0 then warn('material ' .. tostring(sn) .. ' no fusionable'); return end
        local costs = {}
        for k = 0, m.costItem.Length - 1 do costs[#costs + 1] = { m.costItem[k], m.costNum[k] } end
        if m.costGold > 0 then costs[#costs + 1] = { 1, m.costGold } end
        local changes = payItems(costs)
        if changes == nil then return end
        Wallet.credit({ { sn, 1 } }, changes)
        -- Primero la mochila (MaterialData.AddMatVO) y luego la respuesta: MatMerge recalcula con MaterialData.
        Wallet.push(changes)
        local r = CS.msg.SCEquipMatMerge(); r.id = sn
        reply(r)
        -- La vista de Armor solo repinta sus ranuras con SCEquipChange: refrescar las piezas que usan este material.
        local t = Equip.load()
        for pos, e in pairs(t) do
            local info = CS.ConfEquipInfo.Get(e.sn)
            if info and info.costItem then
                for k = 0, info.costItem.Length - 1 do
                    if info.costItem[k] == sn then equipReply(pos, e, 2); break end
                end
            end
        end
        log(string.format('material fusionado: %d (oro %d)', sn, m.costGold))
    end)
    if not ok then warn('CSEquipMatMerge: ' .. tostring(err)) end
end

-- Evolucionar: requiere todas las ranuras instaladas; oro costGold; sn -> qualityUpObj.
H.CSEquipElevation = function(req)
    local ok, err = pcall(function()
        local t = Equip.load()
        local e = t[req.pos]
        if e == nil then return end
        local info = CS.ConfEquipInfo.Get(e.sn)
        local need = info.costItem ~= nil and info.costItem.Length or 0
        for i = 0, need - 1 do if (e.mask >> i) & 1 == 0 then warn('faltan materiales instalados'); equipReply(req.pos, e, 1); return end end
        if info.qualityUpObj == 0 then warn('armadura en su máxima evolución'); equipReply(req.pos, e, 1); return end
        local changes = payItems({ { 1, info.costGold } })
        if changes == nil then equipReply(req.pos, e, 1); return end
        local nextInfo = CS.ConfEquipInfo.Get(info.qualityUpObj)
        e.sn = info.qualityUpObj
        e.mask = 0
        local i = 0
        while i < nextInfo.geneNum do
            if e.genes[i] == nil then e.genes[i] = { sn = 0, exp = 0 } end
            i = i + 1
        end
        Equip.save(t)
        log(string.format('armadura %d evolucionada -> %d', req.pos, e.sn))
        equipReply(req.pos, e, 1)   -- ELEVATE
        Wallet.push(changes)
    end)
    if not ok then warn('CSEquipElevation: ' .. tostring(err)) end
end

-- Tech: instalar genes (de la mochila) en ranuras de una pieza. Si la ranura tenía gen, vuelve a la mochila.
H.CSEquipGeneUp = function(req)
    local ok, err = pcall(function()
        local t = Equip.load()
        local e = t[req.pos]
        if e == nil then return end
        local bag = Bag.load()
        local changes = { human = {}, bag = {} }
        for k = 0, req.index.Count - 1 do
            local slot, sn = req.index[k], math.tointeger(req.geneId[k])
            if e.genes[slot] and (bag[sn] or 0) > 0 then
                local old = e.genes[slot]
                if old.sn ~= 0 then local was = bag[old.sn] or 0; bag[old.sn] = was + 1; changes.bag[old.sn] = { nuevo = was == 0, total = bag[old.sn] } end
                bag[sn] = bag[sn] - 1
                changes.bag[sn] = { nuevo = false, total = bag[sn] }
                e.genes[slot] = { sn = sn, exp = 0 }
            end
        end
        Bag.save(bag); Equip.save(t)
        log('genes instalados en la pieza ' .. req.pos)
        Wallet.push(changes)          -- primero la mochila: la vista se redibuja con el cambio de pieza
        equipReply(req.pos, e, 3)   -- GENEINSERT
    end)
    if not ok then warn('CSEquipGeneUp: ' .. tostring(err)) end
end

-- Tech: quitar un gen de la pieza (geneId = id de DGene) y devolverlo a la mochila.
H.CSEquipGeneDown = function(req)
    local ok, err = pcall(function()
        local t = Equip.load()
        local e = t[req.pos]
        if e == nil then return end
        local slot = math.tointeger(req.geneId) % 100
        local g = e.genes[slot]
        if g == nil or g.sn == 0 then return end
        local bag = Bag.load()
        bag[g.sn] = (bag[g.sn] or 0) + 1
        local changes = { human = {}, bag = { [g.sn] = { nuevo = false, total = bag[g.sn] } } }
        e.genes[slot] = { sn = 0, exp = 0 }
        Bag.save(bag); Equip.save(t)
        Wallet.push(changes)
        equipReply(req.pos, e, 5)
    end)
    if not ok then warn('CSEquipGeneDown: ' .. tostring(err)) end
end

-- Tech: fusionar genes. Objetivo geneId (gen instalado = id de DGene, o sn de la mochila);
-- genePreId = genes de la mochila que se consumen. EXP += baseExp; sube con levelExp -> levelObj.
H.CSEquipGeneCompose = function(req)
    local ok, err = pcall(function()
        local bag = Bag.load()
        local changes = { human = {}, bag = {} }
        local gained = 0
        for k = 0, req.genePreId.Count - 1 do
            local sn = math.tointeger(req.genePreId[k])
            if (bag[sn] or 0) > 0 then
                bag[sn] = bag[sn] - 1
                changes.bag[sn] = { nuevo = false, total = bag[sn] }
                gained = gained + CS.ConfGene.Get(sn).baseExp
            end
        end
        local function grow(g)
            g.exp = g.exp + gained
            local c = CS.ConfGene.Get(g.sn)
            while c ~= nil and c.levelObj ~= 0 and g.exp >= c.levelExp do
                g.exp = g.exp - c.levelExp
                g.sn = c.levelObj
                c = CS.ConfGene.Get(g.sn)
            end
        end
        local target = math.tointeger(req.geneId)
        local t = Equip.load()
        local e = req.pos and t[req.pos]
        if e and target >= 9000000 then
            local g = e.genes[target % 100]
            if g and g.sn ~= 0 then grow(g) end
            Bag.save(bag); Equip.save(t)
            Wallet.push(changes); changes = { human = {}, bag = {} }
            equipReply(req.pos, e, 4)
        elseif (bag[target] or 0) > 0 then
            local g = { sn = target, exp = 0 }
            grow(g)
            bag[target] = bag[target] - 1
            changes.bag[target] = { nuevo = false, total = bag[target] }
            bag[g.sn] = (bag[g.sn] or 0) + 1
            changes.bag[g.sn] = { nuevo = (bag[g.sn] == 1), total = bag[g.sn] }
            Bag.save(bag)
        end
        PlayerPrefs.Save()
        log(string.format('fusión de genes: objetivo %s, +%d EXP', tostring(target), gained))
        Wallet.push(changes)
    end)
    if not ok then warn('CSEquipGeneCompose: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Tech de ángeles: genes en ranuras de cada clon (ConfAngelInfo.geneType / geneUnlockLv por nivel del ángel).
-- Estado: PlayerPrefs "OFF_angelGenes" = "angelSn:ranura=gen,exp/...;..."
-- DGene.id de un gen instalado en ángel = 800000000 + angelSn*100 + ranura.
-- ---------------------------------------------------------------------
local ANGEL_GENE_BASE = 800000000
local AngelGenes = {}
function AngelGenes.load()
    local t = {}
    for rec in string.gmatch(PlayerPrefs.GetString('OFF_angelGenes', ''), '[^;]+') do
        local sn, rest = rec:match('^(%d+):(.*)$')
        if sn then
            local g = {}
            for slot, gene, exp in string.gmatch(rest, '(%d+)=(%d+),(%d+)') do
                g[tonumber(slot)] = { sn = tonumber(gene), exp = tonumber(exp) }
            end
            t[tonumber(sn)] = g
        end
    end
    return t
end
function AngelGenes.save(t)
    local recs = {}
    for sn, g in pairs(t) do
        local parts = {}
        for slot, v in pairs(g) do if v.sn ~= 0 then parts[#parts + 1] = slot .. '=' .. v.sn .. ',' .. v.exp end end
        table.sort(parts)
        if #parts > 0 then recs[#recs + 1] = sn .. ':' .. table.concat(parts, '/') end
    end
    table.sort(recs)
    PlayerPrefs.SetString('OFF_angelGenes', table.concat(recs, ';'))
    PlayerPrefs.Save()
end
-- DAngel completo (nivel + genes instalados). Se usa al login, al subir de nivel y en operaciones de genes.
function OFFLINE.angelMsg(sn, all)
    all = all or AngelGenes.load()
    local a = CS.msg.DAngel()
    a.id = 70000000 + sn; a.sn = sn; a.lv = Levels.angel(sn)
    for slot, v in pairs(all[sn] or {}) do
        if v.sn ~= 0 then
            local g = CS.msg.DGene()
            g.id = ANGEL_GENE_BASE + sn * 100 + slot; g.pos = slot; g.sn = v.sn; g.value = v.exp
            a.genes:Add(g)
        end
    end
    return a
end
local function angelReply(sn, typ, all)
    local r = CS.msg.SCAngelChange()
    r.angel = OFFLINE.angelMsg(sn, all)
    r.type = typ
    reply(r)
end
-- Crecimiento de un gen con EXP (ConfGene.levelExp -> levelObj).
local function geneGrow(g, gained)
    g.exp = g.exp + gained
    local c = CS.ConfGene.Get(g.sn)
    while c ~= nil and c.levelObj ~= 0 and g.exp >= c.levelExp do
        g.exp = g.exp - c.levelExp
        g.sn = c.levelObj
        c = CS.ConfGene.Get(g.sn)
    end
end

H.CSAngelGeneUp = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.id) - 70000000
        local all = AngelGenes.load()
        all[sn] = all[sn] or {}
        local bag = Bag.load()
        local changes = { human = {}, bag = {} }
        for k = 0, req.index.Count - 1 do
            local slot, gsn = req.index[k], math.tointeger(req.geneId[k])
            if (bag[gsn] or 0) > 0 then
                local old = all[sn][slot]
                if old and old.sn ~= 0 then bag[old.sn] = (bag[old.sn] or 0) + 1; changes.bag[old.sn] = { nuevo = false, total = bag[old.sn] } end
                bag[gsn] = bag[gsn] - 1
                changes.bag[gsn] = { nuevo = false, total = bag[gsn] }
                all[sn][slot] = { sn = gsn, exp = 0 }
            end
        end
        Bag.save(bag); AngelGenes.save(all)
        log('genes instalados en el ángel ' .. sn)
        Wallet.push(changes)
        angelReply(sn, 2, all)   -- GENEINSERT
    end)
    if not ok then warn('CSAngelGeneUp: ' .. tostring(err)) end
end

H.CSAngelGeneDown = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.id) - 70000000
        local gid = math.tointeger(req.geneId)
        local all = AngelGenes.load()
        log(string.format('quitar gen: ángel %d geneId %s', sn, tostring(gid)))
        -- geneId puede ser el DGene.id, el sn del gen o la posición del hueco
        local slot
        if gid >= ANGEL_GENE_BASE then slot = gid % 100
        else
            for s, v in pairs(all[sn] or {}) do
                if v.sn == gid then slot = s break end
            end
            if slot == nil then slot = gid end
        end
        local g = all[sn] and all[sn][slot]
        if g == nil or g.sn == 0 then warn('quitar gen: hueco vacío ' .. tostring(slot)) return end
        local bag = Bag.load()
        bag[g.sn] = (bag[g.sn] or 0) + 1
        local changes = { human = {}, bag = { [g.sn] = { nuevo = false, total = bag[g.sn] } } }
        all[sn][slot] = nil
        Bag.save(bag); AngelGenes.save(all)
        Wallet.push(changes)
        angelReply(sn, 4, all)   -- GENEUNLOAD
    end)
    if not ok then warn('CSAngelGeneDown: ' .. tostring(err)) end
end

H.CSAngelGeneCompose = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.id) - 70000000
        local bag = Bag.load()
        local changes = { human = {}, bag = {} }
        local gained = 0
        for k = 0, req.genePreId.Count - 1 do
            local gsn = math.tointeger(req.genePreId[k])
            if (bag[gsn] or 0) > 0 then
                bag[gsn] = bag[gsn] - 1
                changes.bag[gsn] = { nuevo = false, total = bag[gsn] }
                gained = gained + CS.ConfGene.Get(gsn).baseExp
            end
        end
        local target = math.tointeger(req.geneId)
        local all = AngelGenes.load()
        if target >= ANGEL_GENE_BASE then
            local g = all[sn] and all[sn][target % 100]
            if g and g.sn ~= 0 then geneGrow(g, gained) end
            Bag.save(bag); AngelGenes.save(all)
            Wallet.push(changes)
            angelReply(sn, 3, all)   -- GENEMERGE
        elseif (bag[target] or 0) > 0 then
            local g = { sn = target, exp = 0 }
            geneGrow(g, gained)
            bag[target] = bag[target] - 1
            changes.bag[target] = { nuevo = false, total = bag[target] }
            bag[g.sn] = (bag[g.sn] or 0) + 1
            changes.bag[g.sn] = { nuevo = (bag[g.sn] == 1), total = bag[g.sn] }
            Bag.save(bag)
            Wallet.push(changes)
        end
        log(string.format('fusión de genes (ángel %d): objetivo %s, +%d EXP', sn, tostring(target), gained))
    end)
    if not ok then warn('CSAngelGeneCompose: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Vir. Drill (ConfCommonInfo.type 3, SupplyView): intentos ilimitados y sin enfriamiento.
-- Los niveles salen de ConfCommonResource; su estado (DInstance) va en SCInstanceRecourse.
-- ---------------------------------------------------------------------
function OFFLINE.sendSupplyLevels(only)
    local ok, err = pcall(function()
        local clears = Progress.load()
        local r = CS.msg.SCInstanceRecourse()
        local arr, n = CS.ConfCommonResource.array, 0
        for i = 0, arr.Count - 1 do
            local id = arr[i].id
            if only == nil or only == id then
                local d = CS.msg.DInstance()
                local st = clears[id] or 0
                if st > 0 and st <= 3 then st = tonumber(string.rep('2', st)) end
                d.instSn = id; d.stars = st; d.attNum = 0; d.buyCount = 0; d.cooldownTime = 0
                r.instances:Add(d)
                n = n + 1
            end
        end
        reply(r)
        if only == nil then log('Vir. Drill: ' .. n .. ' niveles (intentos ilimitados)') end
    end)
    if not ok then warn('sendSupplyLevels: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Angel Attack (torre PVE, ConfCommonInfo.type 4). Piso = id de ConfPVETower; commonId = nivel jugable.
-- Estado: OFF_n_towerCur (siguiente piso), OFF_n_towerMax (mejor piso superado), OFF_n_towerBox (cofre reclamado).
-- ---------------------------------------------------------------------
local function towerConf(num)
    local ok, c = pcall(function() return CS.ConfPVETower.Get(num) end)
    if ok and c ~= nil then return c end
    ok, c = pcall(function() return CS.ConfPVETower.array[num - 1] end)
    if ok then return c end
end
OFFLINE.towerConf = towerConf
local function towerState()
    local r = CS.msg.SCOpenPveTower()
    local cur = Save.getNum('towerCur')
    if cur < 1 then cur = 1 end
    -- currNum = pisos ya superados; el cliente pide (y resalta) currNum + 1
    r.currNum = cur - 1
    r.maxPassNum = Save.getNum('towerMax')
    r.failNum = 0
    r.resetNum = 1
    local sweeping = Save.getNum('towerSweep')
    r.sweeping = sweeping
    r.time = sweeping == 1 and 1 or 0          -- 1 ms: barrido ya terminado (instantáneo)
    r.boxReward = Save.getNum('towerBox')
    if sweeping == 1 and OFFLINE.towerSweepPending then
        for _, c in ipairs(OFFLINE.towerSweepPending()) do
            local p = CS.msg.DProduce(); p.sn = c[1]; p.num = c[2]; r.produces:Add(p)
        end
    end
    return r
end
OFFLINE.towerState = towerState
H.CSOpenPveTower = function(req) reply(towerState()) end

H.CSPveTowerEnter = function(req)
    local num = req.num or Save.getNum('towerCur')
    local c = towerConf(num)
    if c == nil then warn('Angel Attack: piso desconocido ' .. tostring(num)) return end
    log(string.format('Angel Attack: piso %d -> nivel %d', num, c.commonId))
    OFFLINE.towerFloor = num
    H.CSInstanceEnter({ instSn = c.commonId, generalId = nil })
end

H.CSPveTowerReset = function(req)
    Save.setNum('towerCur', 1)
    PlayerPrefs.Save()
    reply(towerState())
end

H.CSPveTowerBoxReward = function(req)
    local ok, err = pcall(function()
        local lv = req.level
        local c = towerConf(lv)
        local credits = {}
        if c and c.boxList then
            for i = 0, c.boxList.Length - 1 do credits[#credits + 1] = { c.boxList[i], c.boxCountList[i] } end
        end
        credits = Wallet.expand(credits, 'all')
        local r = CS.msg.SCPveTowerBoxReward()
        for _, cr in ipairs(credits) do local p = CS.msg.DProduce(); p.sn = cr[1]; p.num = cr[2]; r.produces:Add(p) end
        Save.setNum('towerBox', lv)
        local changes = Wallet.credit(credits)
        reply(r)
        Wallet.push(changes)
        reply(towerState())
    end)
    if not ok then warn('CSPveTowerBoxReward: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Blitz (barrido). Sin límites: no consume intentos, energía ni tickets.
--   Story / Elite / Vir. Drill: CSInstanceAuto{sn,num} -> SCInstanceAuto{sn,num,produces[num]}
--     (una DProduceList por barrido; SweepView las pinta, SupplyMediator refresca la vista).
--   Angel Attack: CSPveTowerAutoStart -> SCPveTowerAutoStart{time}; el barrido es instantáneo
--     (time = 1 ms => ya terminado), CSPveTowerAutoEnd recoge las recompensas de los pisos
--     towerCur..towerMax y deja la torre en el piso siguiente al mejor superado.
-- ---------------------------------------------------------------------
local function runCredits(sns, counts, drops)
    local credits = {}
    if sns ~= nil then
        for i = 0, sns.Length - 1 do
            credits[#credits + 1] = { sns[i], (counts ~= nil and i < counts.Length) and counts[i] or 1 }
        end
    end
    if drops then OFFLINE.addBattleDrops(credits) end
    return Wallet.expand(credits, 'one')
end

local function produceList(credits, list)
    for _, c in ipairs(credits) do
        local p = CS.msg.DProduce(); p.sn = c[1]; p.num = c[2]
        list:Add(p)
    end
end

H.CSInstanceAuto = function(req)
    local ok, err = pcall(function()
        local sn = math.tointeger(req.sn)
        local num = math.tointeger(req.num or 1) or 1
        if num < 1 then num = 1 end
        local conf = CS.ConfCommonInfo.Get(sn)
        local r = CS.msg.SCInstanceAuto()
        r.sn = sn; r.num = num
        local all = {}
        for _ = 1, num do
            local credits = runCredits(conf.rewardList, conf.rewardCountList, true)
            local pl = CS.msg.DProduceList()
            produceList(credits, pl.produces)
            r.produces:Add(pl)
            for _, c in ipairs(credits) do all[#all + 1] = c end
        end
        Wallet.regen()
        local changes = Wallet.credit(all)
        changes.human.actValue = true
        Wallet.push(changes)      -- mochila/cartera antes de que la vista pinte el resultado
        reply(r)
        if conf.type == 3 and OFFLINE.sendSupplyLevels then OFFLINE.sendSupplyLevels(sn) end
        log(string.format('Blitz: nivel %d x%d (%d recompensas)', sn, num, #all))
    end)
    if not ok then warn('CSInstanceAuto: ' .. tostring(err)) end
end

-- Recompensas pendientes del barrido de la torre: "sn:num,sn:num"
local function towerSweepLoad()
    local t = {}
    for sn, num in string.gmatch(PlayerPrefs.GetString('OFF_towerSweepRw', ''), '(%d+):(%d+)') do
        t[#t + 1] = { tonumber(sn), tonumber(num) }
    end
    return t
end
local function towerSweepSave(t)
    local parts = {}
    for _, c in ipairs(t) do parts[#parts + 1] = c[1] .. ':' .. c[2] end
    PlayerPrefs.SetString('OFF_towerSweepRw', table.concat(parts, ','))
    PlayerPrefs.Save()
end
OFFLINE.towerSweepPending = towerSweepLoad

H.CSPveTowerAutoStart = function(req)
    local ok, err = pcall(function()
        local from = math.max(Save.getNum('towerCur'), 1)
        local to = Save.getNum('towerMax')
        local pend = {}
        for f = from, to do
            local tc = OFFLINE.towerConf(f)
            if tc then
                for _, c in ipairs(runCredits(tc.rewardList, tc.rewardCountList, false)) do pend[#pend + 1] = c end
            end
        end
        towerSweepSave(pend)
        Save.setNum('towerSweep', 1)
        PlayerPrefs.Save()
        local r = CS.msg.SCPveTowerAutoStart()
        r.time = 1
        reply(r)
        reply(OFFLINE.towerState())
        log(string.format('Blitz torre: pisos %d..%d (%d recompensas)', from, to, #pend))
    end)
    if not ok then warn('CSPveTowerAutoStart: ' .. tostring(err)) end
end

-- Salto de pisos por CR: TowerUpView.CheckSkipLevel (desde InitView) toma m_towerNum = currNum + 1 (= towerCur),
-- lo lleva al inicio del siguiente bloque de 5 (r = n % 5: r == 1 no ofrece salto; si no, n = n + (5 - r) % 5 + 1)
-- y lo ofrece si n > maxPassNum, el piso existe y el CR >= ConfCommonInfo(commonId).force.
-- "Aceptar" -> CSSkipCustoms (sin campos) -> SCSkipCustoms{produces} (TowerUpSkipRewardTips) + estado de la torre.
-- Los pisos cur..n-1 se dan por superados con su recompensa normal.
H.CSSkipCustoms = function(req)
    local ok, err = pcall(function()
        local cur = math.max(Save.getNum('towerCur'), 1)
        local r = cur % 5
        local n
        if r == 1 then n = cur else n = cur + (5 - r) % 5 + 1 end
        local credits = {}
        if n > cur then
            for f = cur, n - 1 do
                local tc = OFFLINE.towerConf(f)
                if tc then
                    for _, c in ipairs(runCredits(tc.rewardList, tc.rewardCountList, false)) do credits[#credits + 1] = c end
                end
            end
            Save.setNum('towerMax', math.max(Save.getNum('towerMax'), n - 1))
            Save.setNum('towerCur', n)
            PlayerPrefs.Save()
        end
        local changes = Wallet.credit(credits)
        Wallet.push(changes)
        local s = CS.msg.SCSkipCustoms()
        produceList(credits, s.produces)
        reply(s)
        reply(OFFLINE.towerState())
        log(string.format('Angel Attack: salto de pisos %d -> %d (%d recompensas)', cur, n, #credits))
    end)
    if not ok then warn('CSSkipCustoms: ' .. tostring(err)) end
end

H.CSPveTowerAutoEnd = function(req)
    local ok, err = pcall(function()
        local pend = towerSweepLoad()
        local changes = Wallet.credit(pend)
        towerSweepSave({})
        Save.setNum('towerSweep', 0)
        local to = Save.getNum('towerMax')
        if to >= Save.getNum('towerCur') then Save.setNum('towerCur', to + 1) end
        PlayerPrefs.Save()
        Wallet.push(changes)
        reply(CS.msg.SCPveTowerAutoEnd())
        reply(OFFLINE.towerState())
        log('Blitz torre: recompensas recogidas (' .. #pend .. ')')
    end)
    if not ok then warn('CSPveTowerAutoEnd: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Expedition (CrusadesData / ExpeditionMode). Rivales = copias generadas (el servidor real usaba
-- jugadores): otro mecha con las stats reales calculadas por el cliente, escaladas por misión.
--   Estado OFF_exp = "pasadas,cofres,hpRival,maxRival|gid:hp:max,gid:hp:max,..."
--   El HP de tus mechas y del rival persiste entre intentos (desgaste), como en el original.
--   Reset gratis e ilimitado; Blitz sin coste (tickets = objeto 102, se mantienen en 99).
-- ---------------------------------------------------------------------
local EXP_TICKET = 102
local Exp = {}
function Exp.load()
    local s = PlayerPrefs.GetString('OFF_exp', '')
    local head, team = s:match('^([^|]*)|?(.*)$')
    local st = { pass = 0, reward = 0, ehp = -1, emax = 0, team = {}, order = {} }
    local a, b, c, d = (head or ''):match('^(%-?%d+),(%-?%d+),(%-?%d+),(%-?%d+)$')
    if a then st.pass, st.reward, st.ehp, st.emax = tonumber(a), tonumber(b), tonumber(c), tonumber(d) end
    for gid, hp, mx in string.gmatch(team or '', '(%d+):(%-?%d+):(%d+)') do
        gid = tonumber(gid)
        st.team[gid] = { hp = tonumber(hp), max = tonumber(mx) }
        st.order[#st.order + 1] = gid
    end
    return st
end
function Exp.save(st)
    local parts = {}
    for _, gid in ipairs(st.order) do
        local m = st.team[gid]
        if m then parts[#parts + 1] = gid .. ':' .. m.hp .. ':' .. m.max end
    end
    PlayerPrefs.SetString('OFF_exp', string.format('%d,%d,%d,%d|%s', st.pass, st.reward, st.ehp, st.emax, table.concat(parts, ',')))
    PlayerPrefs.Save()
end
function Exp.missions()
    local n = 0
    pcall(function() n = CS.ConfPVEExpedition.array.Count end)
    return n
end

-- Rival de la misión m: mecha elegido de forma fija por misión, stats x factor (0.55 .. ~1.4).
local function expEnemy(m)
    local confs = listMechaConfs()
    if #confs == 0 then return nil end
    local c = confs[((m * 7) % #confs) + 1]
    local g = generalById(GENERAL_BASE + c.id)
    if g == nil then return nil end
    local f = 0.55 + 0.06 * (m - 1)
    local p = g.unit.prop
    p.hpMax = math.floor(p.hpMax * f); p.atk = math.floor(p.atk * f); p.def = math.floor(p.def * f)
    g.unit.prop = p
    g.unit.hpMax = p.hpMax; g.unit.hpCur = p.hpMax
    g.combat = math.floor((g.combat or 0) * f)
    g.id = 880000 + m
    g.unit.id = g.id
    g.attingPos = 1
    return g, c
end

local function expTicketsTopUp()
    local bag = Bag.load()
    if (bag[EXP_TICKET] or 0) < 99 then
        bag[EXP_TICKET] = 99
        Bag.save(bag)
        Wallet.push({ human = {}, bag = { [EXP_TICKET] = { nuevo = false, total = 99 } } })
    end
end

local function expInfo(st)
    local r = CS.msg.SCExpeditionInfo()
    r.resetNum = 1
    r.passNum = st.pass
    r.rewardNum = st.reward
    for _, gid in ipairs(st.order) do
        local m = st.team[gid]
        local g = m and generalById(gid)
        if g then
            if m.max <= 0 then m.max = g.unit.prop.hpMax; m.hp = m.max end
            g.towerMaxHp = m.max
            g.towerCurHp = math.max(m.hp, 0)
            r.generals:Add(g)
        end
    end
    local mission = st.pass + 1
    if mission <= Exp.missions() then
        local eg, c = expEnemy(mission)
        if eg then
            if st.ehp < 0 or st.emax ~= eg.unit.prop.hpMax then st.emax = eg.unit.prop.hpMax; st.ehp = st.emax end
            eg.towerMaxHp = st.emax
            eg.towerCurHp = st.ehp
            r.enemyGeneral = eg
            r.enemyProp = eg.unit.prop
            local hi = CS.msg.DHumanInfo()
            hi.humanId = 880000 + mission
            hi.name = 'Rival ' .. mission .. ' (' .. tostring(c.name) .. ')'
            hi.level = Save.getNum('level')
            hi.combat = eg.combat; hi.topCombat = eg.combat
            hi.generalSN = tostring(c.id)
            hi.serverId = Save.getInt('serverId')
            r.enemyInfo = hi
        end
    end
    return r
end
local function expReply(st)
    Exp.save(st)
    reply(expInfo(st))
    Exp.save(st)
end
OFFLINE.Exp = Exp

-- Reparación única: mechas guardados con HP 0 por la versión que no enviaba el HP inicial a la batalla.
local function expRepairOnce(st)
    if PlayerPrefs.GetInt('OFF_expFixHp', 0) == 1 then return end
    for _, m in pairs(st.team) do if m.hp <= 0 then m.hp = m.max end end
    PlayerPrefs.SetInt('OFF_expFixHp', 1)
end
H.CSExpeditionInfo = function(req)
    local ok, err = pcall(function() local st = Exp.load(); expRepairOnce(st); expTicketsTopUp(); expReply(st) end)
    if not ok then warn('CSExpeditionInfo: ' .. tostring(err)) end
end

H.CSExpeditionChooseGenerals = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        expRepairOnce(st)
        local ids = {}
        for k = 0, req.generalIDs.Count - 1 do ids[#ids + 1] = math.tointeger(req.generalIDs[k]) end
        log('Expedition: elegir mechas ' .. table.concat(ids, ','))
        if #ids == 0 then for _, c in ipairs(listMechaConfs()) do ids[#ids + 1] = GENERAL_BASE + c.id end end
        for _, gid in ipairs(ids) do
            if st.team[gid] == nil then st.team[gid] = { hp = 0, max = 0 }; st.order[#st.order + 1] = gid end
        end
        expTicketsTopUp()
        expReply(st)
    end)
    if not ok then warn('CSExpeditionChooseGenerals: ' .. tostring(err)) end
end

H.CSExpeditionAttack = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        local mission = math.tointeger(req.mission or (st.pass + 1))
        local gid = math.tointeger(req.generalID)
        local mode = math.tointeger(req.mode or 0)
        log(string.format('Expedition: atacar misión %d con %d (mode %d)', mission, gid or 0, mode))
        local conf = CS.ConfPVEExpedition.Get(mission)
        if mode == OFFLINE.expSweepMode then
            -- Blitz: victoria automática; el mecha pierde un 25% del HP actual del rival (mínimo 1 de HP).
            local m = st.team[gid] or { hp = 1, max = 1 }
            local r = CS.msg.SCExpeditionAutoFightResult()
            r.mission = mission; r.myGenID = gid
            r.myHPStart = m.hp; r.enemyHPStart = math.max(st.ehp, 0)
            m.hp = math.max(1, m.hp - math.floor(math.max(st.ehp, 0) * 0.25))
            r.myHPEnd = m.hp; r.enemyHPEnd = 0; r.isWin = true
            st.pass = mission; st.ehp = -1
            Exp.save(st)
            reply(r)
            expTicketsTopUp()
            expReply(st)
            return
        end
        OFFLINE.expBattle = { mission = mission, gid = gid }
        H.CSInstanceEnter({ instSn = conf.commonId, generalId = gid })
    end)
    if not ok then warn('CSExpeditionAttack: ' .. tostring(err)) end
end

H.CSExpeditionAttackResult = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        local mission = math.tointeger(req.mission or (st.pass + 1))
        local win = (req.isWin or 0) ~= 0
        local myHp = req.myGeneral and req.myGeneral.towerCurHp
        local enHp = req.enemyGeneral and req.enemyGeneral.towerCurHp
        local gid = OFFLINE.expBattle and OFFLINE.expBattle.gid
        -- Al ganar el mecha sigue vivo: un HP <= 0 informado se ignora (repara el caso sin HP inicial).
        if gid and st.team[gid] and myHp and (myHp > 0 or not win) then st.team[gid].hp = math.max(myHp, 0) end
        if win and gid and st.team[gid] and st.team[gid].hp <= 0 then st.team[gid].hp = st.team[gid].max end
        if win then st.pass = math.max(st.pass, mission); st.ehp = -1
        elseif enHp then st.ehp = math.max(enHp, 0) end
        Exp.save(st)
        log(string.format('Expedition: misión %d %s (mi HP %s, rival %s)', mission, win and 'ganada' or 'perdida', tostring(myHp), tostring(enHp)))
        local r = CS.msg.SCExpeditionResult()
        r.mission = mission; r.isWin = win and 1 or 0
        if req.myGeneral then r.myGeneral = req.myGeneral end
        if req.enemyGeneral then r.enemyGeneral = req.enemyGeneral end
        reply(r)
        OFFLINE.expBattle = nil
    end)
    if not ok then warn('CSExpeditionAttackResult: ' .. tostring(err)) end
end

H.CSExpeditionGetReward = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        local mission = math.tointeger(req.mission or (st.reward + 1))
        local r = CS.msg.SCExpeditionGetRewardResult()
        r.mission = mission
        if mission > st.pass or mission <= st.reward then
            r.resultCode = false; reply(r); return
        end
        local conf = CS.ConfPVEExpedition.Get(mission)
        local credits = {}
        if conf.awardSn ~= nil then
            for i = 0, conf.awardSn.Length - 1 do
                credits[#credits + 1] = { conf.awardSn[i], (conf.count ~= nil and i < conf.count.Length) and conf.count[i] or 1 }
            end
        end
        credits = Wallet.expand(credits, 'one')
        local changes = Wallet.credit(credits)
        st.reward = mission
        Exp.save(st)
        Wallet.push(changes)
        r.resultCode = true
        reply(r)
        log(string.format('Expedition: cofre %d (%d recompensas)', mission, #credits))
    end)
    if not ok then warn('CSExpeditionGetReward: ' .. tostring(err)) end
end

H.CSExpeditionReset = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        st.pass = 0; st.reward = 0; st.ehp = -1
        for _, m in pairs(st.team) do m.hp = 0; m.max = 0 end      -- HP completo al recalcular
        Exp.save(st)
        local b = CS.msg.SCExpeditionBaseInfo()
        b.resetNum = 1
        reply(b)
        expReply(st)
        log('Expedition: reiniciada')
    end)
    if not ok then warn('CSExpeditionReset: ' .. tostring(err)) end
end

H.CSExpeditionSupersede = function(req)
    local ok, err = pcall(function()
        local st = Exp.load()
        local old, new = math.tointeger(req.oldGeneralID), math.tointeger(req.newGeneralID)
        if st.team[new] == nil then
            st.team[new] = { hp = 0, max = 0 }
            for i, gid in ipairs(st.order) do if gid == old then st.order[i] = new end end
            st.team[old] = nil
        end
        local r = CS.msg.SCExpeditionSupersedeResult()
        r.result = true
        local g = generalById(new)
        local m = st.team[new]
        if g then
            if m.max <= 0 then m.max = g.unit.prop.hpMax; m.hp = m.max end
            g.towerMaxHp = m.max; g.towerCurHp = m.hp
            r.myGeneral = g
        end
        Exp.save(st)
        reply(r)
        log(string.format('Expedition: cambio de mecha %d -> %d', old or 0, new or 0))
    end)
    if not ok then warn('CSExpeditionSupersede: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Artifact (Hallows). SCHallowsList{info: DHallows{id,lv,exp}, glyphs} al login;
-- CSHallowsLvUp{id,type} -> SCHallowsInfo{id,lv,exp,isNew}. Nivel = ConfHallowsLevel(type*1000 + lv).
-- type 1/2 = mejora con material (costItem x costItemCount[t-1], +addExp[t-1]); 3 = mejora pagada.
-- Desbloqueo: unlockLevel (nivel de Historia superado) + unlockHallows (artefacto previo a Lv.70).
-- Glifos: abiertos cuando lv >= openGlyphsLv[i] (id = openGlyphsId[i]). Estado OFF_hallows = "id:lv:exp;..."
-- ---------------------------------------------------------------------
local HALLOW_PREV_LV = 70
local Hallows = {}
function Hallows.load()
    local t = {}
    for id, lv, exp in string.gmatch(PlayerPrefs.GetString('OFF_hallows', ''), '(%d+):(%d+):(%d+)') do
        t[tonumber(id)] = { lv = tonumber(lv), exp = tonumber(exp) }
    end
    return t
end
function Hallows.save(t)
    local parts = {}
    for id, h in pairs(t) do parts[#parts + 1] = id .. ':' .. h.lv .. ':' .. h.exp end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_hallows', table.concat(parts, ';'))
    PlayerPrefs.Save()
end
local function hallowRows()
    local out = {}
    pcall(function()
        local a = CS.ConfHallowsInfo.array
        for i = 0, a.Count - 1 do out[#out + 1] = a[i] end
    end)
    return out
end
-- Crea los artefactos cuyo requisito se cumple. Devuelve la lista de ids nuevos.
function Hallows.sync(t)
    local clears = Progress.load()
    local new = {}
    local changed = true
    while changed do
        changed = false
        for _, c in ipairs(hallowRows()) do
            if t[c.id] == nil then
                local okLevel = c.unlockLevel == 0 or (clears[c.unlockLevel] or 0) > 0
                local prev = c.unlockHallows ~= 0 and t[c.unlockHallows] or nil
                local okPrev = c.unlockHallows == 0 or (prev ~= nil and prev.lv >= HALLOW_PREV_LV)
                if okLevel and okPrev then
                    t[c.id] = { lv = 1, exp = 0 }
                    new[#new + 1] = c.id
                    changed = true
                end
            end
        end
    end
    if #new > 0 then Hallows.save(t) end
    return new
end
local function hallowGlyphs(t, list)
    for _, c in ipairs(hallowRows()) do
        local h = t[c.id]
        if h and c.openGlyphsLv ~= nil and c.openGlyphsId ~= nil then
            for i = 0, math.min(c.openGlyphsLv.Length, c.openGlyphsId.Length) - 1 do
                if h.lv >= c.openGlyphsLv[i] then
                    local gid = c.openGlyphsId[i]
                    local p = OFFLINE.Glyphs and OFFLINE.Glyphs.load()[gid] or { 0, 0, 0 }
                    list:Add(OFFLINE.glyphMsg and OFFLINE.glyphMsg(gid, p) or (function()
                        local g = CS.msg.DHallowsGlyphs(); g.id = gid; g.hallowsID = c.id; return g end)())
                end
            end
        end
    end
end

function OFFLINE.sendHallows(dump)
    local ok, err = pcall(function()
        local t = Hallows.load()
        Hallows.sync(t)
        local r = CS.msg.SCHallowsList()
        local n = 0
        for _, c in ipairs(hallowRows()) do
            if dump then
                local function arr(x) if x == nil then return '-' end local q = {} for k = 0, x.Length - 1 do q[#q + 1] = tostring(x[k]) end return table.concat(q, '/') end
                log(string.format('artifact %d "%s" type=%d unlockLevel=%d unlockHallows=%d maxLv=%d glyphLv=%s glyphId=%s costItem=%d costCount=%s addExp=%s',
                    c.id, tostring(c.name), c.type, c.unlockLevel, c.unlockHallows, c.maxLv, arr(c.openGlyphsLv), arr(c.openGlyphsId), c.costItem, arr(c.costItemCount), arr(c.addExp)))
            end
            local h = t[c.id]
            if h then
                local d = CS.msg.DHallows(); d.id = c.id; d.lv = h.lv; d.exp = h.exp
                r.info:Add(d); n = n + 1
            end
        end
        hallowGlyphs(t, r.glyphs)
        reply(r)
        log('Artifact: ' .. n .. ' desbloqueados')
    end)
    if not ok then warn('sendHallows: ' .. tostring(err)) end
end

-- Tras superar un nivel o subir un artefacto: avisa de los artefactos recién desbloqueados.
function OFFLINE.hallowsUnlockCheck()
    pcall(function()
        local t = Hallows.load()
        for _, id in ipairs(Hallows.sync(t)) do
            local r = CS.msg.SCHallowsInfo()
            r.id = id; r.lv = t[id].lv; r.exp = t[id].exp; r.isNew = true
            reply(r)
            log('Artifact desbloqueado: ' .. id)
        end
    end)
end

H.CSHallowsLvUp = function(req)
    local ok, err = pcall(function()
        local id, typ = math.tointeger(req.id), math.tointeger(req.type or 1)
        local t = Hallows.load()
        local h = t[id]
        local c = CS.ConfHallowsInfo.Get(id)
        local r = CS.msg.SCHallowsInfo()
        r.id = id; r.isNew = false
        if h == nil or c == nil then warn('Artifact desconocido ' .. tostring(id)); return end
        r.lv = h.lv; r.exp = h.exp
        local idx = typ - 1
        local count = (c.costItemCount ~= nil and idx < c.costItemCount.Length) and c.costItemCount[idx] or 0
        local gain = (c.addExp ~= nil and idx < c.addExp.Length) and c.addExp[idx] or 0
        local costs = {}
        if typ == 3 and OFFLINE.hallowPaidCost then costs = { { 2, OFFLINE.hallowPaidCost } }
        elseif count > 0 then costs = { { c.costItem, count } } end
        log(string.format('Artifact %d mejora type=%d: coste %s, +%d EXP', id, typ,
            costs[1] and (costs[1][1] .. 'x' .. costs[1][2]) or 'nada', gain))
        if h.lv >= c.maxLv then warn('Artifact al nivel máximo'); reply(r); return end
        local changes = #costs > 0 and payItems(costs) or { human = {}, bag = {} }
        if changes == nil then reply(r); return end
        h.exp = h.exp + gain
        while h.lv < c.maxLv do
            local row = CS.ConfHallowsLevel.Get(c.type * 1000 + h.lv)
            if row == nil or row.needExp <= 0 or h.exp < row.needExp then break end
            h.exp = h.exp - row.needExp
            h.lv = h.lv + 1
        end
        if h.lv >= c.maxLv then h.exp = 0 end
        local oldLv = r.lv
        Hallows.save(t)
        r.lv = h.lv; r.exp = h.exp
        Wallet.push(changes)
        reply(r)
        log(string.format('Artifact %d -> Lv.%d (%d EXP)', id, h.lv, h.exp))
        -- Glifo abierto en esta subida: se reenvía la lista (HallowData.InitData reconstruye glifos).
        local opened = false
        if c.openGlyphsLv ~= nil then
            for i = 0, c.openGlyphsLv.Length - 1 do
                if oldLv < c.openGlyphsLv[i] and h.lv >= c.openGlyphsLv[i] then opened = true end
            end
        end
        if opened then OFFLINE.sendHallows() end
        OFFLINE.hallowsUnlockCheck()
    end)
    if not ok then warn('CSHallowsLvUp: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Refinado de glifos (Polish). DHallowsGlyphs.prop1/2/3 = % (0..100) de ConfHallowsGlyphs.hpMax/atk/def
-- (HallowData.Attribute: prop * 0.01 * máximo). Estado OFF_glyphs = "id:p1:p2:p3;...".
--   Refine1x : CSGlyphsPolish{id,num=1,propKey=bloqueadas} -> SCGlyphsPolishResult1{glyphsID, result[pos,value]}
--   Refine10x: CSGlyphsPolish{id,num=10,propKey=pos}      -> SCGlyphsPolishResult2{glyphsID, pos, value[10]}
--   Replace  : CSGlyphsPolishSave{id,saveOrForgo,index}   -> SCOpenGlyphs{glyphs, type=2}
-- Coste: ConfHallowsPolishType (1..3 = Refine1x según candados, 4 = Refine10x).
-- ---------------------------------------------------------------------
local Glyphs = {}
function Glyphs.load()
    local t = {}
    for id, a, b, c in string.gmatch(PlayerPrefs.GetString('OFF_glyphs', ''), '(%d+):(%d+):(%d+):(%d+)') do
        t[tonumber(id)] = { tonumber(a), tonumber(b), tonumber(c) }
    end
    return t
end
function Glyphs.save(t)
    local parts = {}
    for id, p in pairs(t) do parts[#parts + 1] = id .. ':' .. p[1] .. ':' .. p[2] .. ':' .. p[3] end
    table.sort(parts)
    PlayerPrefs.SetString('OFF_glyphs', table.concat(parts, ';'))
    PlayerPrefs.Save()
end
OFFLINE.Glyphs = Glyphs
OFFLINE.glyphPending = {}

local function glyphOwner(gid)
    for _, c in ipairs(hallowRows()) do
        if c.openGlyphsId ~= nil then
            for i = 0, c.openGlyphsId.Length - 1 do if c.openGlyphsId[i] == gid then return c.id end end
        end
    end
    return 0
end
local function glyphMsg(gid, p)
    local g = CS.msg.DHallowsGlyphs()
    g.id = gid; g.hallowsID = glyphOwner(gid)
    g.prop1 = p[1]; g.prop2 = p[2]; g.prop3 = p[3]
    return g
end
OFFLINE.glyphMsg = glyphMsg

-- Porcentaje aleatorio 1..100, con más probabilidad de valores bajos (los altos son raros).
local function rollPct()
    local r = math.random()
    return math.max(1, math.min(100, math.floor(1 + 99 * r * r)))
end

local polishDumped = false
local function polishDump()
    if polishDumped then return end
    polishDumped = true
    pcall(function()
        local a = CS.ConfHallowsPolishType.array
        for i = 0, a.Count - 1 do
            local c = a[i]
            log(string.format('polishType %d costItem=%d x%d luck=%d attri=%d times=%d', c.id, c.costItem, c.costItemNum, c.addLuck, c.attriNum, c.times))
        end
        local b = CS.ConfHallowsPolishColor.array
        for i = 0, b.Count - 1 do log(string.format('polishColor %d %s %d..%d', b[i].id, tostring(b[i].color), b[i].minPct, b[i].maxPct)) end
    end)
end

H.CSGlyphsPolish = function(req)
    local ok, err = pcall(function()
        polishDump()
        local gid, num, key = math.tointeger(req.id), math.tointeger(req.num or 1), tostring(req.propKey or '')
        log(string.format('Glifo %d refinar num=%d propKey="%s"', gid, num, key))
        -- propKey = posiciones (0..2) a refinar; las bloqueadas no aparecen. Tipo 1/2/3 = 3/2/1 stats; 4 = x10.
        local sel, nd = {}, 0
        for d in key:gmatch('%d') do sel[tonumber(d)] = true; nd = nd + 1 end
        if nd == 0 then for q = 0, 2 do sel[q] = true end; nd = 3 end
        local typeId = (num >= 10) and 4 or math.max(1, math.min(4 - nd, 3))
        local pt = CS.ConfHallowsPolishType.Get(typeId)
        local changes = { human = {}, bag = {} }
        if pt and pt.costItemNum > 0 then
            -- Refine. Stone si hay suficientes; si no, el mismo número de cristales (como indica el cliente).
            local item = OFFLINE.balance(pt.costItem) >= pt.costItemNum and pt.costItem or 2
            changes = payItems({ { item, pt.costItemNum } })
        end
        if changes == nil then return end
        Wallet.push(changes)
        if num >= 10 then
            local pos = 1
            for d in key:gmatch('%d') do pos = tonumber(d) end
            local r = CS.msg.SCGlyphsPolishResult2()
            r.glyphsID = gid; r.pos = pos
            local vals = {}
            for k = 1, 10 do vals[k] = rollPct(); r.value:Add(vals[k]) end
            OFFLINE.glyphPending[gid] = { mode = 10, pos = pos, vals = vals }
            reply(r)
        else
            local r = CS.msg.SCGlyphsPolishResult1()
            r.glyphsID = gid
            local vals = {}
            for pos = 0, 2 do
                if sel[pos] then
                    vals[pos] = rollPct()
                    local d = CS.msg.DGlyphsPolish1(); d.pos = pos; d.value = vals[pos]
                    r.result:Add(d)
                end
            end
            OFFLINE.glyphPending[gid] = { mode = 1, vals = vals }
            reply(r)
        end
    end)
    if not ok then warn('CSGlyphsPolish: ' .. tostring(err)) end
end

H.CSGlyphsPolishSave = function(req)
    local ok, err = pcall(function()
        local gid, save, idx = math.tointeger(req.id), req.saveOrForgo, math.tointeger(req.index or 0)
        log(string.format('Glifo %d guardar=%s índice=%d', gid, tostring(save), idx))
        local t = Glyphs.load()
        local p = t[gid] or { 0, 0, 0 }
        local pend = OFFLINE.glyphPending[gid]
        if save and pend then
            if pend.mode == 10 then
                -- Refine10x: propKey/pos va de 1 a 3 (en Refine1x de 0 a 2)
                p[math.max(1, math.min(pend.pos, 3))] = pend.vals[idx + 1] or pend.vals[idx] or pend.vals[1]
            else
                for pos, v in pairs(pend.vals) do p[pos + 1] = v end
            end
            t[gid] = p
            Glyphs.save(t)
        end
        OFFLINE.glyphPending[gid] = nil
        local r = CS.msg.SCOpenGlyphs()
        r.glyphs = glyphMsg(gid, p)
        r.type = 2
        reply(r)
    end)
    if not ok then warn('CSGlyphsPolishSave: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Arena (Competition). El original emparejaba con jugadores (PvP por servidor de batalla); aquí los
-- rivales son robots: isPvp = false -> ArenaMatching.EnterNext -> ArenaVS -> ArenaMode (3 rondas, IA local)
-- con SCCompetitionRandomResult.enemyGeneral (3 DGeneral). Mismo enfoque que Expedition.
--   Equipo: tipo 5 de CSGeneralInfoAttIng / CSCompetitionFormation{generalIDs, atList}.
--   Estado OFF_arena = "point,total,wins,daily,weeklyWins,day,week,gotDaily,gotWeekly"
--   Historial OFF_arenaLog = "time:name:level:driver:combat:result:old:oldE:chg:chgE;..."
-- ---------------------------------------------------------------------
local ARENA_TYPE = 5
local Arena = {}
OFFLINE.Arena = Arena
local ARENA_KEYS = { 'point', 'total', 'wins', 'daily', 'weekly', 'day', 'week', 'gotDaily', 'gotWeekly' }
local function weekNo() return tonumber(os.date('%Y%W')) end
function Arena.load()
    local raw = PlayerPrefs.GetString('OFF_arena', '')
    local st, i = {}, 1
    for v in string.gmatch(raw, '(%-?%d+)') do
        if ARENA_KEYS[i] then st[ARENA_KEYS[i]] = tonumber(v) end
        i = i + 1
    end
    for _, k in ipairs(ARENA_KEYS) do st[k] = st[k] or 0 end
    if raw == '' then st.point = OFFLINE.arenaStartPoint or 600 end
    local d, w = tonumber(os.date('%Y%m%d')), weekNo()
    if st.day ~= d then st.day = d; st.daily = 0; st.gotDaily = 0 end
    if st.week ~= w then st.week = w; st.weekly = 0; st.gotWeekly = 0 end
    return st
end
function Arena.save(st)
    local v = {}
    for _, k in ipairs(ARENA_KEYS) do v[#v + 1] = tostring(math.tointeger(st[k]) or 0) end
    PlayerPrefs.SetString('OFF_arena', table.concat(v, ','))
    PlayerPrefs.Save()
end

-- Formación por tipo de modo: OFF_atting_<tipo> = "gid,gid,gid|at,at,at"
function Arena.formation(t)
    local s = PlayerPrefs.GetString('OFF_atting_' .. tostring(t), '')
    local gens, ats = {}, {}
    local a, b = s:match('^([^|]*)|?(.*)$')
    for v in string.gmatch(a or '', '(%d+)') do gens[#gens + 1] = tonumber(v) end
    for v in string.gmatch(b or '', '(%-?%d+)') do ats[#ats + 1] = tonumber(v) end
    return gens, ats
end
function Arena.setFormation(t, gens, ats)
    PlayerPrefs.SetString('OFF_atting_' .. tostring(t), table.concat(gens, ',') .. '|' .. table.concat(ats, ','))
    PlayerPrefs.Save()
end

-- Robots del ranking: puntos fijos repartidos (se ordenan junto con el jugador).
local ROBOT_NAMES = { 'Kaji', 'Hyuga', 'Aoba', 'Ibuki', 'Suzuhara', 'Aida', 'Horaki', 'Nagisa', 'Makinami', 'Shikinami',
    'Katsuragi', 'Akagi', 'Fuyutsuki', 'Ikari', 'Ayanami', 'Kirishima', 'Yamagishi', 'Sohryu', 'Hikari', 'Kensuke' }
function Arena.robots()
    if Arena._robots then return Arena._robots end
    local t = {}
    for i = 1, 60 do
        t[i] = { id = 870000 + i, name = ROBOT_NAMES[((i - 1) % #ROBOT_NAMES) + 1] .. '-' .. string.format('%02d', i),
                 point = 3600 - i * 52, idx = i }
    end
    Arena._robots = t
    return t
end
function Arena.rank(point)
    local n = 1
    for _, r in ipairs(Arena.robots()) do if r.point > point then n = n + 1 end end
    return n
end

function Arena.info(st)
    local r = CS.msg.SCCompetitionInfo()
    r.rank = Arena.rank(st.point)
    r.point = st.point
    r.totalNum = st.total
    r.totalWinNum = st.wins
    r.dailyNum = st.daily
    r.weeklyWinNum = st.weekly
    r.lastSeasonPoint = 0
    r.lastSeasonRank = 0
    r.gotDailyAward = st.gotDaily
    r.gotWeeklyAward = st.gotWeekly
    r.gotLastSeasonAward = 1
    return r
end

H.CSCompetitionInfo = function(req)
    local ok, err = pcall(function()
        local st = Arena.load()
        -- Reparación única: la última victoria se registró como derrota (isWin=2 no se reconocía).
        if PlayerPrefs.GetInt('OFF_arenaFixWin1', 0) == 0 then
            PlayerPrefs.SetInt('OFF_arenaFixWin1', 1)
            local logs = PlayerPrefs.GetString('OFF_arenaLog', '')
            local first, rest = logs:match('^([^;]+);?(.*)$')
            if first then
                local f = {}
                for v in string.gmatch(first, '[^:]+') do f[#f + 1] = v end
                if #f >= 10 and f[6] == '0' then
                    f[6] = '1'
                    PlayerPrefs.SetString('OFF_arenaLog', table.concat(f, ':') .. (rest ~= '' and (';' .. rest) or ''))
                    st.wins = st.wins + 1; st.weekly = st.weekly + 1
                    Save.setNum('compete', Save.getNum('compete') + 20)
                    Wallet.push({ human = { compete = true }, bag = {} })
                    log('Arena: corregida la última victoria registrada como derrota')
                end
            end
        end
        Arena.save(st)
        reply(Arena.info(st))
        log(string.format('Arena: info puntos %d, rango %d, combates %d (%d victorias), hoy %d', st.point, Arena.rank(st.point), st.total, st.wins, st.daily))
        if not Arena._dumped then
            Arena._dumped = true
            pcall(function()
                local arr = CS.ConfCompeteAward.array
                for i = 0, arr.Count - 1 do
                    local a = arr[i]
                    local items = {}
                    for k = 0, a.sn.Length - 1 do items[#items + 1] = a.sn[k] .. 'x' .. a.num[k] end
                    log(string.format('ConfCompeteAward %d: type=%d lv=%d %d..%d %s [%s]', a.id, a.type, a.lv,
                        a.minValue, a.maxValue, tostring(a.title), table.concat(items, ' ')))
                end
            end)
        end
    end)
    if not ok then warn('CSCompetitionInfo: ' .. tostring(err)) end
end

H.CSCompetitionFormation = function(req)
    local gens, ats = {}, {}
    for i = 0, req.generalIDs.Count - 1 do gens[#gens + 1] = math.tointeger(req.generalIDs[i]) end
    for i = 0, req.atList.Count - 1 do ats[#ats + 1] = math.tointeger(req.atList[i]) end
    Arena.setFormation(ARENA_TYPE, gens, ats)
    log('Arena: formación ' .. table.concat(gens, ',') .. ' AT ' .. table.concat(ats, ','))
    local r = CS.msg.SCGeneralInfoAttIng()
    r.type = ARENA_TYPE
    for _, g in ipairs(gens) do r.gens:Add(g) end
    for _, a in ipairs(ats) do r.atSkills:Add(a) end
    reply(r)
end

-- Rival: 3 mechas al azar con las stats reales del cliente, escaladas por la diferencia de puntos.
local function arenaEnemy(st)
    local confs = listMechaConfs()
    local ep = math.max(0, st.point + math.random(-120, 120))
    local f = math.max(0.6, math.min(1.25, (OFFLINE.arenaPower or 0.9) + (ep - st.point) / 1000))
    local gens, used = {}, {}
    for k = 1, 3 do
        local c
        for _ = 1, 20 do
            c = confs[math.random(#confs)]
            if not used[c.id] then break end
        end
        used[c.id] = true
        local g = generalById(GENERAL_BASE + c.id)
        if g then
            local p = g.unit.prop
            p.hpMax = math.floor(p.hpMax * f); p.atk = math.floor(p.atk * f); p.def = math.floor(p.def * f)
            g.unit.prop = p
            g.unit.hpMax = p.hpMax; g.unit.hpCur = p.hpMax
            g.combat = math.floor((g.combat or 0) * f)
            g.id = 860000 + k
            g.unit.id = g.id
            g.attingPos = k
            gens[#gens + 1] = { g = g, c = c }
        end
    end
    return gens, ep
end

H.CSCompetitionRandom = function(req)
    local ok, err = pcall(function()
        local st = Arena.load()
        local gens, ep = arenaEnemy(st)
        local robots = Arena.robots()
        local rb = robots[math.random(#robots)]
        local r = CS.msg.SCCompetitionRandomResult()
        local hi = CS.msg.DHumanInfo()
        hi.humanId = rb.id
        hi.name = rb.name
        hi.level = Save.getNum('level')
        local combat = 0
        for _, e in ipairs(gens) do combat = combat + (e.g.combat or 0); r.enemyGeneral:Add(e.g) end
        hi.combat = combat; hi.topCombat = combat
        hi.generalSN = tostring(gens[1] and gens[1].c.id or 0)
        hi.serverId = Save.getInt('serverId')
        hi.rank = Arena.rank(ep)
        pcall(function()
            local ch = CS.ConfChildrenInfo.array
            hi.driverShowSn = ch[math.random(ch.Count) - 1].id
        end)
        r.enemyInfo = hi
        if gens[1] then r.enemyProp = gens[1].g.unit.prop end
        r.enemyPoint = ep
        r.isPvp = false
        r.pvpType = 0
        r.token = ''; r.ip = ''; r.port = 0; r.udpIp = ''; r.udpPort = 0
        r.camp = 1; r.order = 0; r.crossId = 0; r.delay = 0; r.enemyDelay = 0; r.useUdp = false
        Arena.enemy = { id = rb.id, name = rb.name, point = ep, combat = combat, driver = hi.driverShowSn, level = hi.level }
        reply(r)
        log(string.format('Arena: rival %s (%d pts, CR %d)', rb.name, ep, combat))
    end)
    if not ok then warn('CSCompetitionRandom: ' .. tostring(err)) end
end

-- ArenaVS.DelayEnterArena -> CSCompetitionEnter: el servidor cambia de escena al nivel de Arena
-- (ConfCommonInfo tipo 7: 70001.. -> GameplayRoot carga ArenaLoadingView/ArenaResultView). ArenaMode toma los equipos de
-- MechaData (tipo 5) y de SCCompetitionRandomResult.enemyGeneral.
H.CSCompetitionEnter = function(req)
    local sn = OFFLINE.arenaStage or 70001
    local gens = Arena.formation(ARENA_TYPE)
    -- Igual que Expedition: SCInstanceEnter{general} + SCStageSwitch (LobbyMediator.InitMechaData lo necesita).
    H.CSInstanceEnter({ instSn = sn, generalId = gens[1] })
    if OFFLINE.battle then OFFLINE.battle.arena = true end
    log('Arena: entrando al nivel ' .. sn)
end

H.CSCompetitionEnd = function(req)
    local ok, err = pcall(function()
        local st = Arena.load()
        -- isWin = MatchResult: 0 Fail, 1 Draw, 2 Win, 3 WinPerfect, 5 Exception.
        local res = math.tointeger(req.isWin or 0) or 0
        local win = res == 2 or res == 3
        local en = Arena.enemy or { point = st.point, name = 'Rival', id = 0, combat = 0, driver = 0, level = 1 }
        local oldRank, old = Arena.rank(st.point), st.point
        local diff = (en.point - st.point) / 40
        local chg
        if win then chg = math.floor(math.max(10, math.min(40, 25 + diff)))
        else chg = -math.floor(math.max(5, math.min(25, 15 - diff))) end
        local floor = 600
        pcall(function() floor = CS.ConfGlobalParam.Get(17002).value end)
        st.point = math.max(floor, st.point + chg)
        chg = st.point - old
        st.total = st.total + 1
        st.daily = st.daily + 1
        if win then st.wins = st.wins + 1; st.weekly = st.weekly + 1 end
        Arena.save(st)
        -- Monedas de Arena (compete) por combate.
        local coins = win and (OFFLINE.arenaWinCoins or 30) or (OFFLINE.arenaLoseCoins or 10)
        Save.setNum('compete', Save.getNum('compete') + coins)
        Wallet.push({ human = { compete = true }, bag = {} })
        -- Historial (20 últimos)
        local name = tostring(en.name):gsub('[:;]', '')
        local rec = table.concat({ os.time(), name, en.level or 1, en.driver or 0, en.combat or 0,
            win and 1 or 0, old, en.point, chg, -chg }, ':')
        local list = { rec }
        for x in string.gmatch(PlayerPrefs.GetString('OFF_arenaLog', ''), '[^;]+') do
            if #list < 20 then list[#list + 1] = x end
        end
        PlayerPrefs.SetString('OFF_arenaLog', table.concat(list, ';'))
        PlayerPrefs.Save()
        local r = CS.msg.SCCompetitionEnd()
        r.isWin = res
        r.newPoint = st.point
        r.oldRank = oldRank
        r.newRank = Arena.rank(st.point)
        r.newEnemyPoint = math.max(0, en.point - chg)
        reply(r)
        reply(Arena.info(st))
        log(string.format('Arena: %s (isWin=%d) vs %s, puntos %d -> %d, +%d monedas', win and 'victoria' or 'derrota', res,
            tostring(en.name), old, st.point, coins))
    end)
    if not ok then warn('CSCompetitionEnd: ' .. tostring(err)) end
end

-- Premios Daily (type 1: combates de hoy >= minValue) y Weekly (type 2: victorias de la semana).
-- gotDailyAward/gotWeeklyAward = último lv reclamado (ArenaData.hasReward compara got < lv).
H.CSCompetitionAward = function(req)
    local ok, err = pcall(function()
        local st = Arena.load()
        local typ, lv = req.type, req.lv
        local conf
        local arr = CS.ConfCompeteAward.array
        for i = 0, arr.Count - 1 do
            local a = arr[i]
            if a.type == typ and a.lv == lv then conf = a end
        end
        if conf == nil then warn('Arena: premio inexistente ' .. tostring(typ) .. '/' .. tostring(lv)) return end
        local have = (typ == 1) and st.daily or st.weekly
        local got = (typ == 1) and st.gotDaily or st.gotWeekly
        if have < conf.minValue or got >= lv then
            warn(string.format('Arena: premio %d/%d no disponible (tiene %d, req %d, reclamado %d)', typ, lv, have, conf.minValue, got))
            return
        end
        local list = {}
        for k = 0, conf.sn.Length - 1 do list[#list + 1] = { conf.sn[k], conf.num[k] } end
        local credits = Wallet.expand(list, 'all')
        local changes = Wallet.credit(credits)
        if typ == 1 then st.gotDaily = lv else st.gotWeekly = lv end
        Arena.save(st)
        Wallet.push(changes)
        local r = CS.msg.SCCompetitionAwardResult()
        r.type = typ; r.lv = lv
        for _, c in ipairs(credits) do
            local d = CS.msg.DProduce(); d.sn = c[1]; d.num = c[2]
            r.produce:Add(d)
        end
        reply(r)
        log(string.format('Arena: premio %s nivel %d reclamado (%d objetos)', typ == 1 and 'diario' or 'semanal', lv, #credits))
    end)
    if not ok then warn('CSCompetitionAward: ' .. tostring(err)) end
end

H.CSCompetitionBattleLog = function(req)
    local r = CS.msg.SCCompetitionBattleLog()
    for rec in string.gmatch(PlayerPrefs.GetString('OFF_arenaLog', ''), '[^;]+') do
        local f = {}
        for v in string.gmatch(rec, '[^:]+') do f[#f + 1] = v end
        if #f >= 10 then
            local d = CS.msg.DCompetBattleLog()
            d.time = tonumber(f[1]) * 1000; d.humanId = 870000; d.name = f[2]; d.level = tonumber(f[3])
            d.driverSn = tonumber(f[4]); d.combat = tonumber(f[5]); d.isActive = true; d.result = tonumber(f[6])
            d.oldPoint = tonumber(f[7]); d.oldPointEnemy = tonumber(f[8])
            d.pointChange = tonumber(f[9]); d.pointChangeEnemy = tonumber(f[10])
            r.logs:Add(d)
        end
    end
    reply(r)
end

H.CSCompetitionRank = function(req)
    local ok, err = pcall(function()
        local st = Arena.load()
        local all = {}
        for _, rb in ipairs(Arena.robots()) do all[#all + 1] = rb end
        all[#all + 1] = { me = true, point = st.point }
        table.sort(all, function(a, b)
            if a.point ~= b.point then return a.point > b.point end
            return a.me == true and b.me ~= true
        end)
        local r = CS.msg.SCCompetitionRankResult()
        local first = math.max(req.firstIndex or 0, 0)
        local last = math.min((req.endIndex and req.endIndex > 0) and req.endIndex or 49, #all - 1)
        r.totalNum = #all; r.firstIndex = first; r.endIndex = last
        local confs = listMechaConfs()
        for i = first, last do
            local e = all[i + 1]
            local d = CS.msg.DCompetHumanInfo()
            d.rank = i + 1; d.point = e.point; d.serverId = Save.getInt('serverId'); d.unionName = ''; d.popularity = 0
            if e.me then
                r.myIndex = i
                d.humanId = OFFLINE.humanId; d.name = Save.getStr('name'); d.level = Save.getNum('level')
                d.combat = Save.getNum('combat'); d.totalNum = st.total; d.totalWinNum = st.wins; d.isRobot = false
                d.driverSn = Save.getNum('showChild')
            else
                d.humanId = e.id; d.name = e.name; d.level = Save.getNum('level'); d.isRobot = true
                d.combat = math.floor(Save.getNum('combat') * (0.6 + e.point / 4000))
                d.totalNum = 200 - e.idx; d.totalWinNum = math.floor((200 - e.idx) * 0.6)
                local sg = CS.msg.DSimpleGeneral()
                local c = confs[(e.idx % #confs) + 1]
                sg.sn = c.id; sg.star = 5
                d.genList:Add(sg)
            end
            r.info:Add(d)
        end
        reply(r)
    end)
    if not ok then warn('CSCompetitionRank: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Points Match (PointRace). Rivales robot como en Arena. Equipo = tipo 6 de CSGeneralInfoAttIng
-- (CSPointRaceFormation{generalIDs}). Flujo: Fight -> CSPointRaceEnemyList (5 rivales) ->
-- PointMatchEnemyPanel.ClickChallenge (exige count > 0 y 3 mechas) -> VSView -> CSPointRaceEnemyInfo
-- -> CSPointRaceEnter -> PointMatchMode -> CSPointRaceEnd.
-- Intentos ilimitados: SCPointRaceInfo.count (restantes, PointMatchData+0x100) siempre al máximo.
-- Estado OFF_prace = "point,total,wins"; historial OFF_praceLog (mismo formato que Arena).
-- ---------------------------------------------------------------------
local PRACE_TYPE = 6
local Prace = { enemies = {} }
OFFLINE.Prace = Prace
function Prace.load()
    local raw = PlayerPrefs.GetString('OFF_prace', '')
    local p, t, w = raw:match('^(%-?%d+),(%d+),(%d+)$')
    return { point = math.max(tonumber(p) or 600, 600), total = tonumber(t) or 0, wins = tonumber(w) or 0 }
end
function Prace.save(st)
    PlayerPrefs.SetString('OFF_prace', string.format('%d,%d,%d', st.point, st.total, st.wins))
    PlayerPrefs.Save()
end
function Prace.rank(point)
    local n = 1
    for _, r in ipairs(Arena.robots()) do if r.point > point then n = n + 1 end end
    return n
end
function Prace.info(st)
    local r = CS.msg.SCPointRaceInfo()
    r.rank = Prace.rank(st.point)
    r.point = st.point
    r.rankYesterday = r.rank
    r.pointYesterday = st.point
    r.gotRankAward = 1
    r.gotPointAward = 1
    r.count = OFFLINE.praceCount or 6
    r.refreshCount = 99
    r.buyCount = 0
    r.lastRestoreTick = os.time() * 1000
    return r
end

H.CSPointRaceInfo = function(req)
    local ok, err = pcall(function()
        local st = Prace.load()
        reply(Prace.info(st))
        log(string.format('Points Match: info puntos %d, rango %d, combates %d (%d victorias)', st.point, Prace.rank(st.point), st.total, st.wins))
    end)
    if not ok then warn('CSPointRaceInfo: ' .. tostring(err)) end
end

H.CSPointRaceFormation = function(req)
    local gens = {}
    for i = 0, req.generalIDs.Count - 1 do gens[#gens + 1] = math.tointeger(req.generalIDs[i]) end
    Arena.setFormation(PRACE_TYPE, gens, {})
    log('Points Match: formación ' .. table.concat(gens, ','))
    local r = CS.msg.SCGeneralInfoAttIng()
    r.type = PRACE_TYPE
    for _, g in ipairs(gens) do r.gens:Add(g) end
    reply(r)
end

-- Lista de 5 rivales robot alrededor de tus puntos; cada uno guarda su equipo generado.
H.CSPointRaceEnemyList = function(req)
    local ok, err = pcall(function()
        local st = Prace.load()
        local robots = Arena.robots()
        local r = CS.msg.SCPointRaceEnemyList()
        Prace.enemies = {}
        for k = 1, 5 do
            local rb = robots[math.random(#robots)]
            local id = 880100 + k * 100 + rb.idx
            local gens, ep = arenaEnemy({ point = st.point })
            local combat = 0
            for _, e in ipairs(gens) do combat = combat + (e.g.combat or 0) end
            local driver = 0
            pcall(function() local ch = CS.ConfChildrenInfo.array; driver = ch[math.random(ch.Count) - 1].id end)
            Prace.enemies[id] = { id = id, name = rb.name, point = ep, gens = gens, combat = combat, driver = driver }
            local d = CS.msg.DCompetHumanInfo()
            d.humanId = id; d.name = rb.name; d.rank = Prace.rank(ep); d.point = ep
            d.combat = combat; d.driverSn = driver; d.level = Save.getNum('level'); d.unionName = ''
            d.isRobot = true; d.popularity = 0; d.serverId = Save.getInt('serverId')
            d.totalNum = 100; d.totalWinNum = 50
            for _, e in ipairs(gens) do
                local sg = CS.msg.DSimpleGeneral(); sg.sn = e.c.id; sg.star = e.g.star or 5
                d.genList:Add(sg)
            end
            r.enemyList:Add(d)
        end
        reply(r)
        log('Points Match: 5 rivales generados')
    end)
    if not ok then warn('CSPointRaceEnemyList: ' .. tostring(err)) end
end

H.CSPointRaceEnemyInfo = function(req)
    local ok, err = pcall(function()
        local en = Prace.enemies[math.tointeger(req.enemyId)]
        if en == nil then
            local gens, ep = arenaEnemy(Prace.load())
            en = { id = math.tointeger(req.enemyId), name = 'Rival', point = ep, gens = gens, combat = 0, driver = 0 }
            Prace.enemies[en.id] = en
        end
        Prace.current = en
        local r = CS.msg.SCPointRaceEnemyInfo()
        local hi = CS.msg.DHumanInfo()
        hi.humanId = en.id; hi.name = en.name; hi.level = Save.getNum('level')
        hi.combat = en.combat; hi.topCombat = en.combat; hi.driverShowSn = en.driver
        hi.serverId = Save.getInt('serverId'); hi.rank = Prace.rank(en.point)
        hi.generalSN = tostring(en.gens[1] and en.gens[1].c.id or 0)
        r.enemyInfo = hi
        for _, e in ipairs(en.gens) do r.enemyGeneral:Add(e.g) end
        if en.gens[1] then r.enemyProp = en.gens[1].g.unit.prop end
        reply(r)
        log(string.format('Points Match: rival %s (%d pts, CR %d)', en.name, en.point, en.combat))
    end)
    if not ok then warn('CSPointRaceEnemyInfo: ' .. tostring(err)) end
end

H.CSPointRaceEnter = function(req)
    local sn = OFFLINE.praceStage or 80001  -- ConfCommonInfo tipo 8 -> GameplayRoot carga PointBattleView
    local gens = Arena.formation(PRACE_TYPE)
    H.CSInstanceEnter({ instSn = sn, generalId = gens[1] })
    log('Points Match: entrando al nivel ' .. sn)
end

H.CSPointRaceEnd = function(req)
    local ok, err = pcall(function()
        local st = Prace.load()
        local res = math.tointeger(req.isWin or 0) or 0
        log('Points Match: CSPointRaceEnd isWin=' .. res)
        -- isWin = MatchResult (PointBattleView.m_result): 0 Fail, 1 Draw, 2 Win, 3 WinPerfect.
        local win = res == 2 or res == 3
        local en = Prace.current or { point = st.point, name = 'Rival', combat = 0, driver = 0 }
        local oldRank, old = Prace.rank(st.point), st.point
        local diff = (en.point - st.point) / 40
        local chg
        if win then chg = math.floor(math.max(10, math.min(40, 25 + diff)))
        else chg = -math.floor(math.max(5, math.min(25, 15 - diff))) end
        -- Suelo de puntos: ConfGlobalParam 16002 (PointMatchData.OnSCPointRaceInfo nunca muestra menos).
        local floor = 600
        pcall(function() floor = CS.ConfGlobalParam.Get(16002).value end)
        st.point = math.max(floor, st.point + chg)
        chg = st.point - old
        st.total = st.total + 1
        if win then st.wins = st.wins + 1 end
        Prace.save(st)
        -- Oro por combate: ConfGlobalParam 16008.intArray (PointMatchResult lo muestra como recompensa).
        local gold = 0
        pcall(function()
            local a = CS.ConfGlobalParam.Get(16008).intArray
            local vals = {}
            for i = 0, a.Length - 1 do vals[#vals + 1] = a[i] end
            log('Points Match: ConfGlobalParam 16008 = ' .. table.concat(vals, ','))
            gold = vals[res + 1] or vals[#vals]      -- índice = MatchResult (2400,2400,4800,4800)
        end)
        -- Medallas Points (objeto 6, campo compete = moneda de la tienda de Points y de Arena) = puntos ganados.
        local medals = (win and chg > 0) and chg or 0
        local human = {}
        if gold and gold > 0 then Save.setNum('gold', Save.getNum('gold') + gold); human.gold = true end
        if medals > 0 then Save.setNum('compete', Save.getNum('compete') + medals); human.compete = true end
        if next(human) then Wallet.push({ human = human, bag = {} }) end
        log(string.format('Points Match: +%d oro, +%d medallas', gold or 0, medals))
        local rec = table.concat({ os.time(), (tostring(en.name):gsub('[:;]', '')), Save.getNum('level'), en.driver or 0,
            en.combat or 0, win and 1 or 0, old, en.point, chg, -chg }, ':')
        local list = { rec }
        for x in string.gmatch(PlayerPrefs.GetString('OFF_praceLog', ''), '[^;]+') do
            if #list < 20 then list[#list + 1] = x end
        end
        PlayerPrefs.SetString('OFF_praceLog', table.concat(list, ';'))
        PlayerPrefs.Save()
        local r = CS.msg.SCPointRaceEnd()
        r.isWin = res
        r.newPoint = st.point
        r.oldRank = oldRank
        r.newRank = Prace.rank(st.point)
        r.myChangePoint = chg
        reply(r)
        reply(Prace.info(st))
        log(string.format('Points Match: %s vs %s, puntos %d -> %d', win and 'victoria' or 'derrota', tostring(en.name), old, st.point))
    end)
    if not ok then warn('CSPointRaceEnd: ' .. tostring(err)) end
end

H.CSPointRaceBattleLog = function(req)
    local r = CS.msg.SCPointRaceBattleLog()
    for rec in string.gmatch(PlayerPrefs.GetString('OFF_praceLog', ''), '[^;]+') do
        local f = {}
        for v in string.gmatch(rec, '[^:]+') do f[#f + 1] = v end
        if #f >= 10 then
            local d = CS.msg.DCompetBattleLog()
            d.time = tonumber(f[1]) * 1000; d.humanId = 880000; d.name = f[2]; d.level = tonumber(f[3])
            d.driverSn = tonumber(f[4]); d.combat = tonumber(f[5]); d.isActive = true; d.result = tonumber(f[6])
            d.oldPoint = tonumber(f[7]); d.oldPointEnemy = tonumber(f[8])
            d.pointChange = tonumber(f[9]); d.pointChangeEnemy = tonumber(f[10])
            r.logs:Add(d)
        end
    end
    reply(r)
end

H.CSPointRaceRank = function(req)
    local ok, err = pcall(function()
        local st = Prace.load()
        local all = {}
        for _, rb in ipairs(Arena.robots()) do all[#all + 1] = rb end
        all[#all + 1] = { me = true, point = st.point }
        table.sort(all, function(a, b)
            if a.point ~= b.point then return a.point > b.point end
            return a.me == true and b.me ~= true
        end)
        local r = CS.msg.SCPointRaceRankResult()
        local first = math.max(req.firstIndex or 0, 0)
        local last = math.min((req.endIndex and req.endIndex > 0) and req.endIndex or 49, #all - 1)
        r.totalNum = #all; r.firstIndex = first; r.endIndex = last
        local confs = listMechaConfs()
        for i = first, last do
            local e = all[i + 1]
            local d = CS.msg.DCompetHumanInfo()
            d.rank = i + 1; d.point = e.point; d.serverId = Save.getInt('serverId'); d.unionName = ''; d.popularity = 0
            if e.me then
                r.myIndex = i
                d.humanId = OFFLINE.humanId; d.name = Save.getStr('name'); d.level = Save.getNum('level')
                d.combat = Save.getNum('combat'); d.totalNum = st.total; d.totalWinNum = st.wins; d.isRobot = false
                d.driverSn = Save.getNum('showChild')
            else
                d.humanId = e.id; d.name = e.name; d.level = Save.getNum('level'); d.isRobot = true
                d.combat = math.floor(Save.getNum('combat') * (0.6 + e.point / 4000))
                d.totalNum = 200 - e.idx; d.totalWinNum = math.floor((200 - e.idx) * 0.6)
                local sg = CS.msg.DSimpleGeneral()
                local c = confs[(e.idx % #confs) + 1]
                sg.sn = c.id; sg.star = 5
                d.genList:Add(sg)
            end
            r.info:Add(d)
        end
        reply(r)
    end)
    if not ok then warn('CSPointRaceRank: ' .. tostring(err)) end
end

-- ---------------------------------------------------------------------
-- Teamwork (TeamRaid): cooperativo contra jefe con un compañero "asistente".
--   TeamRaidView.Match -> CSTeamBattleRandomAssist -> SCTeamAssist{assistInfo, assistProp, assistGeneral, assistType}
--   -> TeamRaidMatchResult -> TeamRaidMediator.EnterTeamRaid -> CSTeamBattleStart{mission, autoFight, multAward}
--   (mission = ConfCommonInfo tipo 6, 60001.., elegida al azar por el cliente según Normal/Hard)
--   -> combate -> CSTeamBattleEnd{mission, isWin, ...} -> SCTeamBattleResult{mission, isWin, produce}.
-- Intentos ilimitados: SCTeamBattleInfo.challengeNum (usados; límite ConfGlobalParam 20005) siempre 0.
-- El compañero es un robot con stats reales (como los rivales de Arena). Sin coste de diamantes.
-- ---------------------------------------------------------------------
local Team = {}
OFFLINE.Team = Team

H.CSTeamBattleInfo = function(req)
    local r = CS.msg.SCTeamBattleInfo()
    r.challengeNum = 0
    r.randomNum = 0
    r.inviteCnt = 0
    reply(r)
end

H.CSTeamBattleUnionMember = function(req)
    reply(CS.msg.SCTeamBattleUnionMember())
end

local function teamAssist(assistType)
    local gens = arenaEnemy({ point = 600 })
    local e = gens[1]
    if e == nil then return end
    local robots = Arena.robots()
    local rb = robots[math.random(#robots)]
    local hi = CS.msg.DHumanInfo()
    hi.humanId = 890000 + rb.idx
    hi.name = rb.name
    hi.level = Save.getNum('level')
    hi.combat = e.g.combat or 0; hi.topCombat = hi.combat
    hi.generalSN = tostring(e.c.id)
    hi.serverId = Save.getInt('serverId')
    pcall(function() local ch = CS.ConfChildrenInfo.array; hi.driverShowSn = ch[math.random(ch.Count) - 1].id end)
    e.g.id = 890000 + rb.idx
    e.g.unit.id = e.g.id
    local r = CS.msg.SCTeamAssist()
    r.assistInfo = hi
    r.assistProp = e.g.unit.prop
    r.assistGeneral = e.g
    r.assistType = assistType or 1
    Team.mate = { name = rb.name, sn = e.c.id }
    reply(r)
    log(string.format('Teamwork: compañero %s (%s, CR %d)', rb.name, tostring(e.c.name), hi.combat))
end

H.CSTeamBattleRandomAssist = function(req)
    local ok, err = pcall(teamAssist, 1)
    if not ok then warn('CSTeamBattleRandomAssist: ' .. tostring(err)) end
end

H.CSTeamBattleInviteAssist = function(req)
    local ok, err = pcall(teamAssist, req.type or 2)
    if not ok then warn('CSTeamBattleInviteAssist: ' .. tostring(err)) end
end

H.CSTeamBattleStart = function(req)
    local mission = math.tointeger(req.mission) or 60001
    Team.battle = { mission = mission, mult = req.multAward == true }
    log(string.format('Teamwork: misión %d (auto=%s, x3=%s)', mission, tostring(req.autoFight), tostring(req.multAward)))
    H.CSInstanceEnter({ instSn = mission, generalId = nil })
end

H.CSTeamBattleEnd = function(req)
    local ok, err = pcall(function()
        local mission = math.tointeger(req.mission) or (Team.battle and Team.battle.mission) or 60001
        local win = req.isWin == true
        local r = CS.msg.SCTeamBattleResult()
        r.mission = mission
        r.isWin = win
        local credits = {}
        if win then
            local conf = CS.ConfCommonInfo.Get(mission)
            local times = (req.multAward == true) and 3 or 1
            for _ = 1, times do
                for _, c in ipairs(runCredits(conf.rewardList, conf.rewardCountList, false)) do credits[#credits + 1] = c end
            end
            local changes = Wallet.credit(credits)
            Wallet.push(changes)
            produceList(credits, r.produce)
        end
        reply(r)
        log(string.format('Teamwork: misión %d %s, %d recompensas', mission, win and 'ganada' or 'perdida', #credits))
    end)
    if not ok then warn('CSTeamBattleEnd: ' .. tostring(err)) end
end

H.CSGeneralInfoAttIng = function(req)
    -- Mecha "en combate" por tipo de modo; MechaData.OnSCGeneralInfoAttIng lo usa como actual.
    -- Arena (tipo 5) usa 3 mechas + 3 AT guardados con CSCompetitionFormation.
    local r = CS.msg.SCGeneralInfoAttIng()
    r.type = req.type
    local gens, ats = {}, {}
    if OFFLINE.Arena then gens, ats = OFFLINE.Arena.formation(req.type) end
    if #gens > 0 then
        for _, g in ipairs(gens) do r.gens:Add(g) end
        for _, x in ipairs(ats) do r.atSkills:Add(x) end
    elseif OFFLINE.defaultGeneral then
        r.gens:Add(OFFLINE.defaultGeneral)
    end
    reply(r)
end

H.CSCharacterLogin = function(req)
    local r = CS.msg.SCCharacterLoginResult()
    r.resultCode = 0
    reply(r)

    -- Kit de PRUEBA (solo DEBUG, una vez): materiales para validar mejoras de Children/Ángeles/Aid.
    if DEBUG_TEST_KIT and not OFFLINE_MOCK and PlayerPrefs.GetInt('OFF_testKit_v1', 0) == 0 then
        local bag = Bag.load()
        bag[4040201] = (bag[4040201] or 0) + 30      -- chips de Rei
        bag[4030001] = (bag[4030001] or 0) + 20      -- chips de Fire - Crump (Aid)
        Bag.save(bag)
        Save.setNum('angelUp', Save.getNum('angelUp') + 50)   -- Core
        PlayerPrefs.SetInt('OFF_testKit_v1', 1)
        PlayerPrefs.Save()
        log('kit de prueba entregado')
    end
    -- Kit inicial (una sola vez)
    if PlayerPrefs.GetInt('OFF_starterKitGiven_v2', 0) == 0 and next(OFFLINE.starterKit or {}) then
        local bag = Bag.load()
        for sn, n in pairs(OFFLINE.starterKit) do
            local okC, conf = pcall(function() return CS.ConfItemData.Get(sn) end)
            local field = okC and conf ~= nil and CURRENCY[tostring(conf.type)] or nil
            if field then Save.setNum(field, Save.getNum(field) + n)
            else bag[sn] = (bag[sn] or 0) + n end
        end
        Bag.save(bag)
        PlayerPrefs.SetInt('OFF_starterKitGiven_v2', 1)
        PlayerPrefs.Save()
        log('kit inicial entregado')
    end
    pcall(function()
        local bag, moved = Bag.load(), false
        for sn, n in pairs(bag) do
            local conf = CS.ConfItemData.Get(sn)
            local field = conf ~= nil and CURRENCY[tostring(conf.type)] or nil
            if field then
                Save.setNum(field, Save.getNum(field) + n)
                bag[sn] = nil; moved = true
                log('migrado de la mochila a la cartera: ' .. sn .. ' x' .. n .. ' -> ' .. field)
            end
        end
        if moved then Bag.save(bag); PlayerPrefs.Save() end
    end)
    local init = CS.msg.SCInitData()
    init.human = buildHuman()
    init.createTime = Save.createTime()
    pcall(function()
        local n = 0
        for _, d in ipairs(OFFLINE.equipList()) do init.equips:Add(d); n = n + 1 end
        log('armadura: ' .. n .. ' piezas')
    end)
    if OFFLINE.unlockAllCollections then
        local ok, err = pcall(function()
            local arr, n = CS.ConfAngelInfo.array, 0
            for i = 0, arr.Count - 1 do
                local c = arr[i]
                init.angels:Add(OFFLINE.angelMsg(c.id))
                n = n + 1
                log(string.format('clon %d "%s" type=%d initLv=%d maxLv=%d nivel=%d', c.id, tostring(c.name), c.type, c.initLv, c.maxLv, Levels.angel(c.id)))
            end
            log('clones ángel: ' .. n)
        end)
        if not ok then warn('ángeles: ' .. tostring(err)) end
    end
    pcall(function()
        local db = CS.msg.DBag()
        db.capacity = 999
        local n = 0
        OFFLINE.clientBag = {}
        for sn, num in pairs(Bag.load()) do db.items:Add(Bag.ditem(sn, num)); n = n + 1; if num > 0 then OFFLINE.clientBag[sn] = true end end
        init.dBag:Add(db)
        log('mochila: ' .. n .. ' tipos de objeto')
    end)
    reply(init)
    -- GeneData reinicia sus genes-en-ángel después de AngelData.InitData: se reenvían los
    -- ángeles con genes por SCAngelChange (GENEINSERT) para que vuelvan a registrarse.
    pcall(function()
        local all, n = AngelGenes.load(), 0
        for sn, g in pairs(all) do
            if next(g) ~= nil then
                local r = CS.msg.SCAngelChange()
                r.angel = OFFLINE.angelMsg(sn, all)
                r.type = 2
                reply(r)
                n = n + 1
            end
        end
        if n > 0 then log('genes de ángel restaurados: ' .. n .. ' clones') end
    end)
    -- Materiales de Armor: MaterialData solo se llena con SCBagUpdate (BagData.UpdateItemData -> AddMatVO),
    -- no con la mochila inicial. Sin esto, tras reiniciar el juego los materiales cuentan como 0.
    pcall(function()
        local mats = {}
        for sn, num in pairs(Bag.load()) do
            local ok, c = pcall(function() return CS.ConfItemData.Get(sn) end)
            if ok and c and tostring(c.type):find('Material') and num > 0 then mats[sn] = { nuevo = false, total = num } end
        end
        if next(mats) then
            Wallet.push({ human = {}, bag = mats })
            local n = 0
            for _ in pairs(mats) do n = n + 1 end
            log('materiales de armadura registrados: ' .. n)
        end
    end)

    if OFFLINE.unlockAllCollections then
        -- Children (pilotos): ChildrenData.InitData lee SCGetChildInfo.info. Cada uno trae su fondo de lobby.
        local ok, err = pcall(function()
            local r, arr, n = CS.msg.SCGetChildInfo(), CS.ConfChildrenInfo.array, 0
            local intim = OFFLINE.Intim.load()
            for i = 0, arr.Count - 1 do
                local c = arr[i]
                if c.exist then
                    local d = CS.msg.DChildInfo()
                    d.id = 50000000 + c.id
                    d.sn = c.id
                    d.lv = Levels.get('child', c.id)
                    d.syn = ''
                    OFFLINE.Intim.fill(d, c.id, intim[c.id])
                    r.info:Add(d)
                    n = n + 1
                end
            end
            reply(r)
            log('children: ' .. n)
        end)
        if not ok then warn('children: ' .. tostring(err)) end

        -- Aid / AT Field: ATSkillData.InitData lee SCATFieldList.skill (skillSn, skillLevel) y fitId.
        ok, err = pcall(function()
            local r, arr, n = CS.msg.SCATFieldList(), CS.ConfATSkillInfo.array, 0
            for i = 0, arr.Count - 1 do
                local c = arr[i]
                local d = CS.msg.DSkill()
                d.skillSn = c.id
                d.skillLevel = Levels.get('at', c.id)
                d.position = 0
                r.skill:Add(d)
                if n == 0 then r.fitId = c.id end
                if c.id == Save.getNum('atFit') then r.fitId = c.id end
                n = n + 1
            end
            reply(r)
            log('habilidades AT (Aid): ' .. n)
        end)
        if not ok then warn('AT: ' .. tostring(err)) end

        -- Ángeles de apoyo guardados (AngelData.UpdateAngelHelp lee SCAngelHelpInfo.id)
        local help = PlayerPrefs.GetString('OFF_angelHelp', '')
        if help ~= '' then
            local h = CS.msg.SCAngelHelpInfo()
            for id in string.gmatch(help, '%d+') do h.id:Add(math.tointeger(tonumber(id))) end
            reply(h)
        end
    end

    if OFFLINE.sendSupplyLevels then OFFLINE.sendSupplyLevels() end
    if OFFLINE.sendElite then OFFLINE.sendElite() end
    if OFFLINE.sendHallows then OFFLINE.sendHallows() end
    -- Títulos activados al inicio: PlayerData.TitleAttribute (Title Boost y CR) los necesita antes de abrir la vista.
    if OFFLINE.Ach then pcall(OFFLINE.Ach.sendTitles) end

    -- Módulos desbloqueados: GuideData.OnSCModUnlock con type=1 reemplaza la lista completa
    -- (m_lstModUnlocked); LobbyView.InitModButton activa un botón por cada sn.
    local mods = CS.msg.SCModUnlock()
    mods.type = 1
    local level, n = Save.getInt('level'), 0
    local okArr, arr = pcall(function() return CS.ConfModUnlock.array end)
    if not okArr then arr = nil end
    if arr ~= nil then
        for i = 0, arr.Count - 1 do
            local c = arr[i]
            if OFFLINE.unlockAllMods or OFFLINE.modOpen(c) then
                mods.id:Add(c.sn); n = n + 1
            end
        end
    else
        warn('ConfModUnlock.array es nil; lobby sin módulos')
    end
    log('SCModUnlock: ' .. n .. ' módulos desbloqueados')
    reply(mods)

    -- Progreso de la Historia (estrellas y siguiente nivel)
    local okc, errc = pcall(OFFLINE.sendAllChapters)
    if not okc then warn('SCAllChapter: ' .. tostring(errc)) end

    if DEBUG_ITEM_DUMP then pcall(DEBUG_ITEM_DUMP) end
    if DEBUG_TEG_DUMP then local ok, e = pcall(DEBUG_TEG_DUMP); if not ok then warn('dump X: ' .. tostring(e)) end end
    if DEBUG_STORE_DUMP then local ok, e = pcall(DEBUG_STORE_DUMP); if not ok then warn('dump S: ' .. tostring(e)) end end
    if DEBUG_UPGRADE_DUMP then local ok, e = pcall(DEBUG_UPGRADE_DUMP); if not ok then warn('dump U: ' .. tostring(e)) end end
    if DEBUG_MECHA_CONF_DUMP then local ok, e = pcall(DEBUG_MECHA_CONF_DUMP); if not ok then warn("dump: " .. tostring(e)) end end

    reply(OFFLINE.guideInfo())
end

-- ---------------------------------------------------------------------
-- Tutorial (GuideData). Series de ConfGuideStep (seriesId); al terminar una, GuideData.FinishedGuide
-- envía CSChangeGuideInfo{sn = serie, state} y la añade a finishedGuide. SCAllGuideInfo.sn = series ya
-- completadas (se cargan al login); flag = GuideData.isGuideEnabled (FindGuide no busca si es false).
-- Se guardan en OFF_guides para que no se repitan tras reiniciar.
-- ---------------------------------------------------------------------
local Guides = {}
function Guides.load()
    local t = {}
    for v in string.gmatch(PlayerPrefs.GetString('OFF_guides', ''), '(%d+)') do t[tonumber(v)] = true end
    return t
end
function Guides.save(t)
    local l = {}
    for k in pairs(t) do l[#l + 1] = tostring(k) end
    table.sort(l)
    PlayerPrefs.SetString('OFF_guides', table.concat(l, ','))
    PlayerPrefs.Save()
end
function OFFLINE.guideInfo()
    -- Migración: partidas anteriores al tutorial (nivel > 1 sin series guardadas) lo dan por completado,
    -- para que no arranque el combate guiado 1-1 ni guías de módulos ya abiertos.
    if PlayerPrefs.GetInt('OFF_guidesInit', 0) == 0 then
        PlayerPrefs.SetInt('OFF_guidesInit', 1)
        if Save.getNum('level') > 1 and PlayerPrefs.GetString('OFF_guides', '') == '' then
            local all = {}
            pcall(function()
                local arr = CS.ConfGuideStep.array
                for i = 0, arr.Count - 1 do all[arr[i].seriesId] = true end
            end)
            Guides.save(all)
            log('tutorial: partida existente, todas las series marcadas como completadas')
        end
        PlayerPrefs.Save()
    end
    local g = CS.msg.SCAllGuideInfo()
    g.flag = OFFLINE.tutorial == true
    local done = Guides.load()
    for _, sn in ipairs(OFFLINE.guideSkip or {}) do done[sn] = true end
    for sn in pairs(done) do g.sn:Add(sn) end
    return g
end

H.CSRequestAllGuideInfo = function(req)
    reply(OFFLINE.guideInfo())
end

H.CSChangeGuideInfo = function(req)
    local t = Guides.load()
    local sn = math.tointeger(req.sn)
    if req.state == false then t[sn] = nil else t[sn] = true end
    Guides.save(t)
    log(string.format('tutorial: serie %d %s', sn, req.state == false and 'reabierta' or 'completada'))
end

H.CSChangeGuideJson = function(req) end

H.CSServerTime = function(req)
    local r = CS.msg.SCServerTime()
    r.serverTime = os.time() * 1000
    reply(r)
end

H.CSPing = function(req)
    reply(CS.msg.SCPing())
end

H.CSStageEnter = function(req)
    -- Escena del lobby: sin objetos de escena, y fin de carga.
    local r = CS.msg.SCStageEnterResult()
    r.isShowBossNPC = false
    reply(r)
    reply(CS.msg.SCStageEnterEnd())
end

H.CSSettingSwitch = function(req)
    local r = CS.msg.SCSettingSwitch()
    r.id = req.id
    r.isOpen = PlayerPrefs.GetInt('OFF_setting_' .. tostring(req.id), 1) == 1
    reply(r)
end

H.CSOpenRCExchange = function(req)
    -- RecruitData.OnOpenRCExchange hace DateTime.Parse(endTime): no puede ir vacío.
    local r = CS.msg.SCOpenRCExchange()
    r.beginTime = os.date('%Y-%m-%d %H:%M:%S', os.time() - 86400)
    r.endTime   = os.date('%Y-%m-%d %H:%M:%S', os.time() - 3600)   -- evento ya terminado
    r.type = 0
    reply(r)
end

-- Respuesta genérica: SC* vacío emparejado (tabla generada en gen/pairs.lua).
local PAIRS = OFFLINE_PAIRS or {}
local function autoReply(name)
    local pair = PAIRS[name]
    if not pair then return false end
    local cls = CS.msg[pair[1]]
    if cls == nil then return false end
    reply(cls())
    return true
end

local unhandled = {}
local function handle(packet)
    if packet == nil then return end
    local name = packet:GetType().Name
    local okid, id = pcall(function() return packet:_msgid() end)
    writelog('>', name .. ' (' .. tostring(okid and id or '?') .. ')')
    local fn = H[name]
    if fn then
        local ok, err = xpcall(fn, debug.traceback, packet)
        if not ok then warn('handler ' .. name .. ' falló: ' .. tostring(err)) end
    else
        local ok, sent = pcall(autoReply, name)
        if ok and sent then
            writelog('A', name .. ' -> ' .. PAIRS[name][1] .. ' (vacío)')
        elseif not unhandled[name] then
            unhandled[name] = true
            warn('sin handler para ' .. name .. ' (id ' .. tostring(packet:_msgid()) .. ')'
                 .. (ok and '' or (' error: ' .. tostring(sent))))
        end
    end
end

-- ---------------------------------------------------------------------
-- Hotfix: arranque (BootMediator)
-- ---------------------------------------------------------------------
xlua.private_accessible(CS.BootMediator)

-- Ya cargado por el parche nativo; evitar crear un segundo LuaEnv en InitializationCompleted.
xlua.hotfix(CS.BootMediator, 'LoadLuaScripts', function(self)
    log('LoadLuaScripts omitido (ya cargado)')
end)

xlua.hotfix(CS.BootMediator, 'BeginBoot', function(self)
    log('BeginBoot offline: sin verificación de versión ni descarga de serverlist')
    pcall(function() self:RemoveOldVersion() end)
    -- Entrega la lista de servidores local; dispara InitializationCompleted -> LoadConfig.
    self:OnGetServerList(SERVERLIST)
end)

-- ---------------------------------------------------------------------
-- Hotfix: red (ConnectAPI)
-- ---------------------------------------------------------------------
xlua.private_accessible(CS.ConnectAPI)
local net = { game = false, battle = false }

xlua.hotfix(CS.ConnectAPI, {
    Update = function(self)
        flush()
        if OFFLINE.onUpdate then pcall(OFFLINE.onUpdate) end
    end,

    Connect = function(host, port)
        log('Connect ' .. tostring(host) .. ':' .. tostring(port) .. ' (simulado)')
        net.game = true
        later(function() CS.ConnectAPI.OnConnect(CS.UniCore.NetErrors.ERROR_OK) end)
    end,
    Disconnect = function() net.game = false end,

    ConnectBattleServer = function(host, port)
        log('ConnectBattleServer (simulado)')
        net.battle = true
        later(function() CS.ConnectAPI.OnBattleServerConnect(CS.UniCore.NetErrors.ERROR_OK) end)
    end,
    DisconnectBattleServer = function() net.battle = false end,

    ConnectUdp = function(host, port, playerId) end,
    DisconnectUdp = function() end,
    Ping = function(host, port, count, callback, objData) end,
    ClosePing = function() end,

    Active = function() return net.game end,
    BattleServerActive = function() return net.battle end,
    udpClientActive = function() return false end,
    NetWorkReachable = function() return true end,

    SendPacket = function(packet) handle(packet) end,
    QueuePacket = function(packet) handle(packet) end,
})

-- ---------------------------------------------------------------------
-- Hotfix: login sin SDK (SinaSDK / LoginMediator / lista de servidores)
-- ---------------------------------------------------------------------
-- SinaSDK no tiene hotfix inyectado; se corta la llamada en LoginView.OnShow,
-- que originalmente hace SetVersion(...) y luego SinaSDK.SinaLogin().
-- (LoginMediator.EnterGame, el otro llamador, también está hotfixeado abajo.)
xlua.private_accessible(CS.LoginView)
xlua.hotfix(CS.LoginView, 'OnShow', function(self, data)
    self:SetVersion(CS.CurrentBundleVersion.version, PlayerPrefs.GetInt('ResVersion', 0))
    -- Login automático (sin SDK no hay callback que lo dispare): pulsa "Enter" por código.
    if OFFLINE.autoLogin ~= false and not OFFLINE.autoLoginDone then
        OFFLINE.autoLoginDone = true
        later(function()
            log('login automático')
            local ok, err = pcall(function() self:ButtonEnterGame() end)
            if not ok then warn('ButtonEnterGame: ' .. tostring(err)) end
        end)
    end
end)

xlua.private_accessible(CS.ServerListMediator)
xlua.hotfix(CS.ServerListMediator, 'StartPing', function(self) end)

-- Pantalla de victoria: ButtonClose exige m_finished, que activa la corrutina AnimatorFinish;
-- sin servidor esa corrutina no llega al final, así que se fuerza antes de cerrar.
-- El original envía CSInstanceLeave y cambia al modo "Lobby".
xlua.private_accessible(CS.WinView)
local function winViewClose(self)
    pcall(function() self.m_finished = true end)
    xlua.hotfix(CS.WinView, 'ButtonClose', nil)
    local ok, err = pcall(function() self:ButtonClose() end)
    xlua.hotfix(CS.WinView, 'ButtonClose', winViewClose)
    log('WinView.ButtonClose -> Lobby' .. (ok and '' or (' error: ' .. tostring(err))))
end
xlua.hotfix(CS.WinView, 'ButtonClose', winViewClose)

-- Captura la instancia de MechaData (inyectada por StrangeIoC) y luego ejecuta el original.
xlua.private_accessible(CS.MechaData)
local function captureMechaData(self, evt)
    OFFLINE.mechaData = self
    xlua.hotfix(CS.MechaData, 'InitData', nil)
    local ok, err = pcall(function() self:InitData(evt) end)
    xlua.hotfix(CS.MechaData, 'InitData', captureMechaData)
    if not ok then warn('MechaData.InitData: ' .. tostring(err)) end
end
xlua.hotfix(CS.MechaData, 'InitData', captureMechaData)

xlua.private_accessible(CS.LoginMediator)
xlua.hotfix(CS.LoginMediator, 'EnterGame', function(self, evt)
    log('EnterGame offline')
    local srv = self.m_selectedServer
    if srv == nil then
        srv = CS.ServerInfo()
        srv.id, srv.name, srv.zone = OFFLINE.server.id, OFFLINE.server.name, OFFLINE.server.zone
        srv.ip, srv.port = OFFLINE.server.ip, OFFLINE.server.port
        srv.state = CS.ServerState.Normal
        self.m_selectedServer = srv
    end
    local li = self.m_loginInfo
    if li == nil then
        li = CS.LoginInfo()
        self.m_loginInfo = li
    end
    li.account  = OFFLINE.account
    li.name     = OFFLINE.account
    li.token    = 'offline'
    li.pt       = '0'
    li.channel  = 'offline'
    li.isGuest  = true
    li.ip       = srv.ip
    li.port     = srv.port
    li.serverID = srv.id
    pcall(function() self:SaveLoginServer() end)
    self:BeginLogin()
end)

-- ---------------------------------------------------------------------
-- Diagnóstico (DEBUG): traza de métodos y volcado de la UI
-- ---------------------------------------------------------------------
local DEBUG = true
DEBUG_MECHA_DUMP = false
DEBUG_TEST_KIT = false   -- kit de materiales solo para pruebas
DEBUG_TEG_DUMP = false and function()
    local function arr(a) if a == nil then return '-' end local t = {} for i = 0, a.Length - 1 do t[#t+1] = tostring(a[i]) end return table.concat(t, '/') end
    local a = CS.ConfTalent.array
    for i = 0, math.min(a.Count, 5) - 1 do local c = a[i]; writelog('X', string.format('talent id=%d step=%d stepLv=%d cost=%d+%d hp=%d', c.id, c.step, c.stepLv, c.costTalent, c.costGold, c.hp)) end
    writelog('X', 'talent filas=' .. a.Count)
    a = CS.ConfEquipInit.array
    for i = 0, a.Count - 1 do local c = a[i]; writelog('X', string.format('equipInit id=%d unlockLv=%d equipId=%d', c.id, c.unlockLv, c.equipId)) end
    local e = CS.ConfEquipInfo.Get(CS.ConfEquipInit.array[0].equipId)
    writelog('X', string.format('equipInfo id=%d type=%s step=%d costItem=%s costNum=%s gold=%d next=%d genes=%d types=%s geneLv=%s maxLv=%d', e.id, tostring(e.type), e.step, arr(e.costItem), arr(e.costNum), e.costGold, e.qualityUpObj, e.geneNum, arr(e.geneType), arr(e.geneUnlockLv), e.maxLv))
    a = CS.ConfEquipLevel.array
    for i = 0, math.min(a.Count, 4) - 1 do local c = a[i]; writelog('X', string.format('equipLv id=%d stone=%d gold=%d atk=%d', c.id, c.costStone, c.costGold, c.atk)) end
    writelog('X', 'equipLv filas=' .. a.Count .. ' ultimo=' .. a[a.Count - 1].id)
    a = CS.ConfGene.array
    for i = 0, math.min(a.Count, 4) - 1 do local c = a[i]; writelog('X', string.format('gene id=%d type=%s lv=%d baseExp=%d levelExp=%d levelObj=%d', c.id, tostring(c.type), c.level, c.baseExp, c.levelExp, c.levelObj)) end
    local h = Save.getNum('level')
    writelog('X', 'nivel jugador=' .. h .. ' talentLevel guardado=' .. Save.getNum('talentLevel'))
end
DEBUG_STORE_DUMP = false and function()
    local a = CS.ConfStore.array
    local seen = {}
    for i = 0, a.Count - 1 do
        local c = a[i]
        local key = c.storeType .. '/' .. c.buyType
        seen[key] = (seen[key] or 0) + 1
        if seen[key] <= 2 then
            local g = c.goodsIDList ~= nil and c.goodsIDList.Length > 0 and (c.goodsIDList[0] .. 'x' .. c.goodsCountList[0] .. ' p' .. c.goodsPriceList[0]) or '-'
            writelog('S', string.format('store id=%d type=%d buyType=%d random=%s vip=%d buyTime=%d goods=%s (%d)', c.id, c.storeType, c.buyType, tostring(c.isRandom), c.vipLv, c.buyTime, g, c.goodsIDList and c.goodsIDList.Length or 0))
        end
    end
    for k, v in pairs(seen) do writelog('S', 'total tipo/moneda ' .. k .. ': ' .. v) end
    a = CS.ConfModUnlock.array
    for i = 0, a.Count - 1 do
        local c = a[i]
        writelog('M', string.format('mod id=%d sn=%d nivel=%d init=%s name=%s btn=%s', c.id, c.sn, c.unlockLevel, tostring(c.showOnInit), tostring(c.name), tostring(c.buttonPath)))
    end
end
DEBUG_UPGRADE_DUMP = false and function()
    for _, id in ipairs({1000, 1001, 1002, 1003, 1004, 1015, 2001}) do
        local ok, c = pcall(function() return CS.ConfATSkillLevel.Get(id) end)
        if ok and c ~= nil then
            writelog('U', string.format('atLv id=%d lv=%d atSkill=%d count=%d gold=%d', c.id, c.level, c.atSkill, c.count, c.costGold))
        else writelog('U', 'atLv ' .. id .. ' no existe') end
    end
end
DEBUG_UPGRADE_DUMP_OLD = false and function()
    local a = CS.ConfChildrenLevel.array
    local n = 0
    for i = 0, a.Count - 1 do
        local c = a[i]
        if c.childSn == 2001 and n < 4 then
            writelog('U', string.format('childLv id=%d child=%d lv=%d chip=%dx%d hp=%d', c.id, c.childSn, c.level, c.chipSn, c.chipNum, c.hpMax)); n = n + 1
        end
    end
    a = CS.ConfAngelLevel.array
    for i = 0, math.min(a.Count, 4) - 1 do
        local c = a[i]
        writelog('U', string.format('angelLv id=%d show=%d step=%d core=%d gold=%d', c.id, c.showLevel, c.showStep, c.costAngelUp, c.costGold))
    end
    a = CS.ConfATSkillLevel.array
    n = 0
    for i = 0, a.Count - 1 do
        local c = a[i]
        if c.atSkill == 7030001 and n < 4 then
            writelog('U', string.format('atLv id=%d skill=%d lv=%d count=%d gold=%d', c.id, c.atSkill, c.level, c.count, c.costGold)); n = n + 1
        end
    end
    local ai = CS.ConfATSkillInfo.Get(7030001)
    writelog('U', string.format('atInfo 7030001 chipId=%d maxLevel=%d type=%d', ai.chipId, ai.maxLevel, ai.type))
    local ci = CS.ConfChildrenInfo.Get(2001)
    writelog('U', string.format('childInfo 2001 chipSn=%d', ci.chipSn))
end
DEBUG_MECHA_CONF_DUMP = false and function()
    local m = CS.ConfMechaInfo.Get(6000001)
    local wl = m.weaponList
    for i = 0, wl.Length - 1 do
        local w = CS.ConfWeaponInfo.Get(wl[i])
        writelog('C', string.format('arma %d "%s" type=%d maxLv=%d isOpen=%s', w.id, tostring(w.name), w.type, w.maxLv, tostring(w.isOpen)))
        for lv = 0, 3 do
            local ok, c = pcall(function() return CS.ConfWeaponLevel.Get(w.type * 1000 + lv) end)
            if ok and c ~= nil then
                local cost = {}
                if c.costItem ~= nil then for k = 0, c.costItem.Length - 1 do cost[#cost+1] = c.costItem[k] .. 'x' .. c.costItemCount[k] end end
                writelog('C', string.format('   nivel %d (id %d) cond=%d coste=%s', lv, c.id, c.condition, table.concat(cost, ',')))
            else
                writelog('C', string.format('   nivel %d: sin ConfWeaponLevel', lv))
            end
        end
    end
    local arr = CS.ConfMechaStar.array
    local n = 0
    for i = 0, arr.Count - 1 do
        local c = arr[i]
        if c.mechaId == 6000001 or (n < 12 and c.mechaId == 6000004) then
            local cost = {}
            if c.materialList ~= nil then for k = 0, c.materialList.Length - 1 do cost[#cost+1] = c.materialList[k] .. 'x' .. c.materialValue[k] end end
            writelog('C', string.format('estrella id=%d mecha=%d star=%d atk%%=%d coste=%s', c.id, c.mechaId, c.star, c.atkPct, table.concat(cost, ',')))
            n = n + 1
        end
    end
end
DEBUG_ITEM_DUMP = false and function()
    local function item(sn)
        local ok, c = pcall(function() return CS.ConfItemData.Get(sn) end)
        if ok and c ~= nil then
            return string.format('%d "%s" type=%s win=%d max=%d', sn, tostring(c.name), tostring(c.type), c.winType, c.maxNum)
        end
        return tostring(sn) .. ' (no ConfItemData)'
    end
    local function dumpList(label, a, n)
        if a == nil then return end
        for i = 0, a.Length - 1 do
            writelog('R', label .. ' ' .. item(a[i]) .. ' x' .. tostring(n ~= nil and i < n.Length and n[i] or '?'))
        end
    end
    for _, sn in ipairs({10101, 10102}) do
        local c = CS.ConfCommonInfo.Get(sn)
        writelog('R', 'nivel ' .. sn .. ' costPower=' .. c.costPower)
        dumpList('  reward', c.rewardList, c.rewardCountList)
        dumpList('  first', c.firstList, c.firstCountList)
        dumpList('  3star', c.threeStar, c.threeStarCount)
    end
    local types, arr = {}, CS.ConfItemData.array
    for i = 0, arr.Count - 1 do
        local c = arr[i]
        local t = tostring(c.type)
        if not types[t] then types[t] = {n = 0, ex = {}} end
        types[t].n = types[t].n + 1
        if #types[t].ex < 4 then types[t].ex[#types[t].ex + 1] = c.id .. ':' .. tostring(c.name) end
    end
    for t, v in pairs(types) do writelog('R', 'tipo ' .. t .. ' (' .. v.n .. '): ' .. table.concat(v.ex, ', ')) end
end

-- Registra la llamada y ejecuta el método original (como util.hotfix_ex, con table.unpack).
local function trace(cls, field, label)
    local function wrapper(...)
        writelog('T', label .. '.' .. field)
        xlua.hotfix(cls, field, nil)
        local res = table.pack(xpcall(function(self, ...) return self[field](self, ...) end, debug.traceback, ...))
        xlua.hotfix(cls, field, wrapper)
        if not res[1] then warn(label .. '.' .. field .. ' error: ' .. tostring(res[2])) return end
        return table.unpack(res, 2, res.n)
    end
    xlua.hotfix(cls, field, wrapper)
end

local function dumpUI()
    local okS, scene = pcall(function() return CS.UnityEngine.SceneManagement.SceneManager.GetActiveScene().name end)
    writelog('D', 'escena activa: ' .. tostring(okS and scene or '?'))
    local ok, err = pcall(function()
        local cvs = CS.UnityEngine.Object.FindObjectsOfType(typeof(CS.UnityEngine.Canvas))
        for i = 0, cvs.Length - 1 do
            local c = cvs[i]
            local t = c.transform
            writelog('D', string.format('Canvas "%s" orden=%d hijos=%d', c.gameObject.name, c.sortingOrder, t.childCount))
            local function walk(node, depth)
                for j = 0, node.childCount - 1 do
                    local ch = node:GetChild(j)
                    if ch.gameObject.activeSelf then
                        writelog('D', string.rep('    ', depth) .. '+ ' .. ch.gameObject.name .. ' (hijos ' .. ch.childCount .. ')')
                        if depth < 3 then walk(ch, depth + 1) end
                    end
                end
            end
            walk(t, 1)
        end
    end)
    if not ok then warn('dumpUI: ' .. tostring(err)) end
end

if DEBUG then
    xlua.private_accessible(CS.LobbyView)
    xlua.private_accessible(CS.LobbyRoot)
    xlua.private_accessible(CS.LobbyMediator)
    for _, m in ipairs({'Init', 'OnShow', 'InitModButton', 'HideModButtons', 'SetInitLobby'}) do
        pcall(trace, CS.LobbyView, m, 'LobbyView')
    end
    for _, m in ipairs({'Start', 'OnLoaded', 'RequestBaseInfo', 'OnPlayPlot'}) do
        pcall(trace, CS.LobbyRoot, m, 'LobbyRoot')
    end
    for _, m in ipairs({'OnRegister', 'Start', 'InitUnlockedMod', 'GuideCheck', 'StartGuide'}) do
        pcall(trace, CS.LobbyMediator, m, 'LobbyMediator')
    end
    local loginAt, dumped = nil, 0
    local prevConnect = H.CSCharacterLogin
    H.CSCharacterLogin = function(req) loginAt = os.time(); return prevConnect(req) end
    local lastState, battleDumps = 0, 0
    local function dumpState()
        local s = {}
        pcall(function() s[#s+1] = 'mode=' .. tostring(CS.UniCore.SceneMgr.GetMode()) end)
        pcall(function() s[#s+1] = 'next=' .. tostring(CS.UniCore.SceneMgr.GetNextMode()) end)
        pcall(function() s[#s+1] = 'trans=' .. tostring(CS.UniCore.SceneMgr.IsTransitioning()) end)
        pcall(function() s[#s+1] = 'sceneProg=' .. tostring(CS.UniCore.SceneMgr.GetLoadProgress()) end)
        pcall(function() s[#s+1] = 'assetProg=' .. tostring(CS.UniCore.AssetLoader.CurrentProgress()) end)
        writelog('S', table.concat(s, ' '))
        -- Assets pendientes / errores de carga
        local function dumpDict(label, getter)
            local ok, err = pcall(function()
                local d = getter()
                if d == nil then writelog('S', label .. ': nil') return end
                local e = d:GetEnumerator()
                local n = 0
                while e:MoveNext() and n < 30 do
                    local kv = e.Current
                    writelog('S', '  ' .. label .. ' ' .. tostring(kv.Key) .. ' = ' .. tostring(kv.Value))
                    n = n + 1
                end
                writelog('S', label .. ': ' .. tostring(d.Count) .. ' entradas')
            end)
            if not ok then writelog('S', label .. ' error: ' .. tostring(err)) end
        end
        pcall(xlua.private_accessible, CS.UniCore.AssetCache)
        pcall(xlua.private_accessible, CS.UniCore.AssetBundleManager)
        pcall(xlua.private_accessible, CS.UniCore.AssetLoader)
        dumpDict('assetLoading', function() return CS.UniCore.AssetCache.s_assetLoading end)
        dumpDict('loadingBundles', function() return CS.UniCore.AssetBundleManager.m_loadingBundles end)
        dumpDict('loadingErrors', function() return CS.UniCore.AssetBundleManager.m_loadingErrors end)
        pcall(function()
            local ops = CS.UniCore.AssetLoader.m_inProgressOperations
            pcall(xlua.private_accessible, CS.UniCore.LoadOperation)
            pcall(xlua.private_accessible, CS.UniCore.AssetLoadOperation)
            pcall(xlua.private_accessible, CS.UniCore.AssetBundleLoadOperation)
            local loading = CS.UniCore.AssetBundleManager.loadingOperations
            writelog('S', 'inProgressOps: ' .. tostring(ops.Count) .. ' loadingOps: ' .. tostring(loading and loading.Count))
            local shown = 0
            for i = 0, ops.Count - 1 do
                local op = ops[i]
                local done, prog, inLoading = op.isDone, op.progress, loading and loading:Contains(op)
                if (not done) or inLoading then
                    local info = op:GetType().Name .. string.format(' done=%s prog=%.4f inLoading=%s', tostring(done), prog, tostring(inLoading))
                    pcall(function() info = info .. ' bundle=' .. tostring(op.m_assetBundleName) end)
                    pcall(function() info = info .. ' asset=' .. tostring(op.m_assetName) end)
                    pcall(function() info = info .. ' err=' .. tostring(op.m_error) end)
                    writelog('S', '  PENDIENTE #' .. i .. ' ' .. info)
                    shown = shown + 1
                    if shown >= 10 then break end
                end
            end
        end)
    end
    OFFLINE.onUpdate = function()
        if loginAt and dumped < 2 and os.time() - loginAt >= (dumped == 0 and 12 or 40) then
            dumped = dumped + 1
            dumpUI()
        end
        local b = OFFLINE.battle
        if b and os.time() - lastState >= 5 and os.time() - b.start <= 60 then
            lastState = os.time()
            dumpState()
            if os.time() - b.start >= 15 and battleDumps < 1 then
                battleDumps = battleDumps + 1
                dumpUI()
            end
        end
    end
end


-- ---------------------------------------------------------------------
-- Cambio de nombre, logros (Achievement), honores (Honors) y títulos, y CR del jugador.
--   Nombre : CSChangeNameState -> SCChangeNameState{freeCount}; CSChangeName{name} -> SCChangeNameResult{result}
--            (ChangeNamePanel copia el texto del campo a PlayerData.name si result = true).
--   Logros : CSOpenAchievement -> SCAchievementInfo{infos: DAchievement}. ConfAchievement.showType
--            1 = Achievement, 3 = Honors (premio = objeto de título). needLv 9999 = oculto (no se envía).
--            DAchievement: lv = escalones cobrados, targetProgress = param[lv], status 1 = en curso,
--            2 = cobrable, 3 = completado. Premio = ConfItemProduce(reward[lv]).
--            CSCommitAchievement{sn} -> SCCommitAchievement{sn, lv} + lista completa.
--   Títulos: CSGetTitle -> SCGetTitleResult{titles, isAll}; CSActivateTitle / CSPutonTitle.
--            Estado OFF_titles = "sn:activo;..."; equipado = OFF_n_titleSn (DHuman.titleSn).
--   CR     : PlayerData.combat (DHuman.combat). Se recalcula con MechaData.CalcSingleCombat del mecha
--            en combate y se envía con SCHumanPropChange (el cliente muestra el aviso de subida de CR).
-- Estado de logros: OFF_ach = "sn:lv;..."
-- ---------------------------------------------------------------------
do
    local A = {}
    OFFLINE.Ach = A

    -- ---- nombre ------------------------------------------------------
    H.CSChangeNameState = function(req)
        local r = CS.msg.SCChangeNameState()
        r.freeCount = 1                      -- cambio de nombre siempre gratis
        reply(r)
    end
    -- Dado del panel Rename: nombre aleatorio (no hay tabla de nombres en la configuración).
    local RANDOM_PREFIX = { 'Piloto', 'Cadete', 'Agente', 'Operador', 'Teniente', 'Capitan', 'Sombra', 'Halcon', 'Lobo', 'Fenix' }
    H.CSChangeNameRandom = function(req)
        local r = CS.msg.SCChangeNameRandomResult()
        r.name = RANDOM_PREFIX[math.random(#RANDOM_PREFIX)] .. math.random(100, 9999)
        reply(r)
    end
    H.CSChangeName = function(req)
        local ok, err = pcall(function()
            local name = tostring(req.name or ''):gsub('^%s+', ''):gsub('%s+$', '')
            local r = CS.msg.SCChangeNameResult()
            if name == '' or #name > 36 then
                r.result = false; r.shield = ''
                reply(r)
                warn('nombre no válido: "' .. name .. '"')
                return
            end
            Save.setStr('name', name)
            PlayerPrefs.Save()
            r.result = true; r.shield = ''
            reply(r)
            local s = CS.msg.SCStageChangeName()
            s.objId = OFFLINE.humanId; s.name = name
            reply(s)
            log('nombre cambiado a "' .. name .. '"')
        end)
        if not ok then warn('CSChangeName: ' .. tostring(err)) end
    end

    -- ---- títulos -----------------------------------------------------
    function A.titles()
        local t = {}
        for sn, act in string.gmatch(PlayerPrefs.GetString('OFF_titles', ''), '(%d+):(%d)') do
            t[tonumber(sn)] = (act == '1')
        end
        return t
    end
    function A.saveTitles(t)
        local parts = {}
        for sn, act in pairs(t) do parts[#parts + 1] = sn .. ':' .. (act and '1' or '0') end
        table.sort(parts)
        PlayerPrefs.SetString('OFF_titles', table.concat(parts, ';'))
        PlayerPrefs.Save()
    end
    -- objeto de título (ConfTitle.itemSn) -> sn del título
    function A.titleByItem(item)
        local found
        pcall(function()
            local a = CS.ConfTitle.array
            for i = 0, a.Count - 1 do if a[i].itemSn == item then found = a[i].id end end
        end)
        return found
    end
    -- Títulos permanentes: se obtienen al cumplir la condición del honor (ConfAchievement showType 3)
    -- cuyo premio es el objeto del título. Quedan sin activar hasta que el jugador pulsa Activar.
    function A.grantTitles()
        local t, st, ctx, new = A.titles(), A.load(), A.context(), {}
        local a = CS.ConfAchievement.array
        for i = 0, a.Count - 1 do
            local c = a[i]
            if c.showType == 3 and c.reward ~= nil and c.reward.Length > 0 then
                local d = A.entry(c, st, ctx)
                if d and d.status >= 2 then
                    for _, it in ipairs(Wallet.expand({ { c.reward[0], 1 } }, 'all')) do
                        local tsn = A.titleByItem(it[1])
                        if tsn and t[tsn] == nil then t[tsn] = false; new[#new + 1] = tsn end
                    end
                end
            end
        end
        -- Honor: hitos de CR máximo alcanzado (OFFLINE.honorCR)
        local crMax = math.max(Save.getNum('combatMax'), Save.getNum('combat'))
        for tsn, need in pairs(OFFLINE.honorCR or {}) do
            if crMax >= need and t[tsn] == nil then t[tsn] = false; new[#new + 1] = tsn end
        end
        if #new > 0 then A.saveTitles(t); log('títulos obtenidos: ' .. table.concat(new, ',') .. ' (CR máx ' .. crMax .. ')') end
        return #new
    end
    function A.sendTitles()
        pcall(A.grantTitles)
        local r = CS.msg.SCGetTitleResult()
        r.isAll = true
        for sn, act in pairs(A.titles()) do
            local d = CS.msg.DTitle()
            d.titleSn = sn; d.overdueTime = -1; d.isActivate = act
            r.titles:Add(d)
        end
        reply(r)
    end
    H.CSGetTitle = function(req)
        local ok, err = pcall(A.sendTitles)
        if not ok then warn('CSGetTitle: ' .. tostring(err)) end
    end
    H.CSActivateTitle = function(req)
        local ok, err = pcall(function()
            local sn = math.tointeger(req.titleSn)
            local t = A.titles()
            if t[sn] == nil then warn('título no obtenido: ' .. tostring(sn)) return end
            t[sn] = true
            A.saveTitles(t)
            local r = CS.msg.SCActivateTitleResult(); r.titleSn = sn
            reply(r)
            A.sendTitles()
            log('título activado: ' .. sn)
        end)
        if not ok then warn('CSActivateTitle: ' .. tostring(err)) end
    end
    H.CSPutonTitle = function(req)
        local ok, err = pcall(function()
            local sn = math.tointeger(req.titleSn or 0)
            Save.setNum('titleSn', sn)
            local r = CS.msg.SCPutonTitleResult(); r.titleSn = sn
            reply(r)
            log('título equipado: ' .. sn)
        end)
        if not ok then warn('CSPutonTitle: ' .. tostring(err)) end
    end

    -- ---- logros ------------------------------------------------------
    function A.load()
        local t = {}
        for sn, lv in string.gmatch(PlayerPrefs.GetString('OFF_ach', ''), '(%d+):(%d+)') do t[tonumber(sn)] = tonumber(lv) end
        return t
    end
    function A.save(t)
        local parts = {}
        for sn, lv in pairs(t) do parts[#parts + 1] = sn .. ':' .. lv end
        table.sort(parts)
        PlayerPrefs.SetString('OFF_ach', table.concat(parts, ';'))
        PlayerPrefs.Save()
    end
    local function count(arrName, pred)
        local n = 0
        pcall(function()
            local a = CS[arrName].array
            for i = 0, a.Count - 1 do if pred == nil or pred(a[i]) then n = n + 1 end end
        end)
        return n
    end
    -- Rareza de los mechas (ConfMechaInfo.quality): se compara con el valor de los títulos SR / SSR.
    A.QUALITY_SR, A.QUALITY_SSR = 4, 5      -- 2 = R?, 3 = ?, 4 = SR, 5 = SSR, 6 = UR
    -- Estado actual del jugador: devuelve una función (target) -> progreso.
    function A.progressFn(typ, ctx)
        if typ == 1 or typ == 2 then           -- nivel de Historia / Elite superado (sn)
            return function(tar) return (ctx.clears[tar] or 0) > 0 and tar or 0 end
        elseif typ == 3 then return function() return Save.getNum('towerMax') end
        elseif typ == 7 then return function() return ctx.children end
        elseif typ == 8 then return function() return #ctx.mechas end
        elseif typ == 18 then return function() return ctx.aids end
        elseif typ == 20 then return function() return ctx.angels end
        elseif typ == 22 then return function() return ctx.hallows end
        elseif typ == 28 then return function() return Save.getNum('vipLevel') end
        elseif typ == 34 then                  -- clon ángel concreto (todos desbloqueados)
            return function(tar) local ok, c = pcall(function() return CS.ConfAngelInfo.Get(tar) end); return (ok and c) and tar or 0 end
        elseif typ == 37 then return function() return ctx.quality[A.QUALITY_SR] or 0 end
        elseif typ == 38 then return function() return ctx.quality[A.QUALITY_SSR] or 0 end
        elseif typ == 39 then                  -- mecha concreto
            return function(tar) for _, c in ipairs(ctx.mechas) do if c.id == tar then return tar end end return 0 end
        end
        return function() return 0 end        -- Arena, Points Match, Likes...: sin modo online
    end
    function A.context()
        local ctx = { clears = Progress.load(), mechas = listMechaConfs(), quality = {} }
        for _, c in ipairs(ctx.mechas) do ctx.quality[c.quality] = (ctx.quality[c.quality] or 0) + 1 end
        ctx.children = count('ConfChildrenInfo', function(c) return c.exist end)
        ctx.aids = count('ConfATSkillInfo')
        ctx.angels = count('ConfAngelInfo')
        ctx.hallows = 0
        for _ in pairs(Hallows.load()) do ctx.hallows = ctx.hallows + 1 end
        return ctx
    end
    -- DAchievement de una fila de ConfAchievement (nil si está oculta).
    function A.entry(c, st, ctx)
        if c.needLv >= 9999 or c.param == nil or c.param.Length == 0 then return nil end
        local n = c.param.Length
        local lv = st[c.id] or 0
        local idx = math.min(lv, n - 1)
        local tar = c.param[idx]
        local now = A.progressFn(c.type, ctx)(tar)
        local d = CS.msg.DAchievement()
        d.id = c.id; d.sn = c.id; d.lv = lv
        d.type = c.type              -- AchieveItem.getProgressDisStr: tipos 1..5 se muestran como 0/1 o 1/1
        d.targetProgress = tar; d.nowProgress = math.min(now, math.max(tar, now))
        if lv >= n then d.status = 3
        elseif now >= tar then d.status = 2
        else d.status = 1 end
        d.awardsJson = ''
        return d
    end
    function A.sendInfo()
        local st, ctx = A.load(), A.context()
        local r = CS.msg.SCAchievementInfo()
        local nOk, nNew = 0, 0
        local a = CS.ConfAchievement.array
        for i = 0, a.Count - 1 do
            local d = A.entry(a[i], st, ctx)
            if d then r.infos:Add(d); nOk = nOk + 1; if d.status == 2 then nNew = nNew + 1 end end
        end
        reply(r)
        local q = {}
        for k, v in pairs(ctx.quality) do q[#q + 1] = k .. '=' .. v end
        for _, c in ipairs(ctx.mechas) do if c.quality >= 5 or c.id == 6000023 then q[#q + 1] = c.id .. ':' .. tostring(c.name) .. ':' .. c.quality end end
        log(string.format('Logros: %d visibles, %d por cobrar (mechas por rareza %s)', nOk, nNew, table.concat(q, ' ')))
    end
    H.CSOpenAchievement = function(req)
        local ok, err = pcall(A.sendInfo)
        if not ok then warn('CSOpenAchievement: ' .. tostring(err)) end
    end
    H.CSCommitAchievement = function(req)
        local ok, err = pcall(function()
            local sn = math.tointeger(req.sn)
            local c = CS.ConfAchievement.Get(sn)
            local st, ctx = A.load(), A.context()
            local d = c and A.entry(c, st, ctx)
            if d == nil or d.status ~= 2 then warn('logro ' .. tostring(sn) .. ' no cobrable'); A.sendInfo(); return end
            local lv = st[sn] or 0
            local credits, titles = {}, {}
            if c.reward ~= nil and lv < c.reward.Length then
                for _, it in ipairs(Wallet.expand({ { c.reward[lv], 1 } }, 'all')) do
                    local tsn = A.titleByItem(it[1])
                    if tsn then titles[#titles + 1] = tsn else credits[#credits + 1] = it end
                end
            end
            st[sn] = lv + 1
            A.save(st)
            local changes = Wallet.credit(credits)
            Wallet.push(changes)
            if #titles > 0 then
                local t = A.titles()
                for _, tsn in ipairs(titles) do if t[tsn] == nil then t[tsn] = false end end
                A.saveTitles(t)
                A.sendTitles()
            end
            local r = CS.msg.SCCommitAchievement(); r.sn = sn; r.lv = lv + 1
            reply(r)
            A.sendInfo()
            log(string.format('Logro %d "%s" cobrado (escalón %d): %d premios, títulos %s',
                sn, tostring(c.name), lv + 1, #credits, table.concat(titles, ',')))
        end)
        if not ok then warn('CSCommitAchievement: ' .. tostring(err)) end
    end

    -- ---- CR del jugador ----------------------------------------------
    function A.combat()
        local md = OFFLINE.mechaData
        if md == nil then return nil end
        local gid = OFFLINE.defaultGeneral or Save.getNum('currentGeneral')
        local ok, c = pcall(function() return CS.ConfMechaInfo.Get(gid - GENERAL_BASE) end)
        if not ok or c == nil then return nil end
        local st = Mecha.get(c)
        local ok2, v = pcall(function() return md:CalcSingleCombat(c.id, st.star) end)
        if ok2 and v then return math.tointeger(v) or math.floor(v) end
        return nil
    end
    local lastCheck, lastSent = 0, nil
    function A.combatTick()
        if OFFLINE.battle ~= nil or os.time() - lastCheck < 2 then return end
        lastCheck = os.time()
        local v = A.combat()
        if v == nil or v <= 0 then return end
        if lastSent == nil then lastSent = Save.getNum('combat') end
        if v == lastSent then return end
        local h = CS.msg.DHuman()
        h.combat = v
        local p = CS.msg.DProp(); p.hpMax = 1000; p.atk = 100; p.def = 50
        h.prop = p
        local r = CS.msg.SCHumanPropChange(); r.human = h
        reply(r)
        log(string.format('CR del jugador: %d -> %d', lastSent, v))
        lastSent = v
        Save.setNum('combat', v)
        if v > Save.getNum('combatMax') then
            Save.setNum('combatMax', v)
            local ok, n = pcall(A.grantTitles)
            if ok and n > 0 then A.sendTitles() end     -- nuevos títulos de Honor por CR
        end
    end
    function A.resetCombat() lastSent = nil end
    local prevUpdate = OFFLINE.onUpdate
    OFFLINE.onUpdate = function(...)
        pcall(A.combatTick)
        if prevUpdate then return prevUpdate(...) end
    end
end

-- ---------------------------------------------------------------------
-- Texto "Collection Prop" / "Collection ..." de la vista de mechas: la etiqueta (CollectAdd) parte las dos
-- palabras en dos líneas que se pisan. Se fuerza una sola línea (HorizontalWrapMode.Overflow) al abrir la vista.
-- ---------------------------------------------------------------------
pcall(function()
    xlua.private_accessible(CS.MechaView)
    local function fixCollection(view)
        local texts = view.transform:GetComponentsInChildren(typeof(CS.UnityEngine.UI.Text), true)
        local n = 0
        for i = 0, texts.Length - 1 do
            local t = texts[i]
            local s, name = tostring(t.text), t.gameObject.name
            if name == 'CollectAdd' or s:find('^Collection ') then
                t.horizontalOverflow = CS.UnityEngine.HorizontalWrapMode.Overflow
                n = n + 1
            end
        end
        return n
    end
    local function onShow(self, data)
        xlua.hotfix(CS.MechaView, 'OnShow', nil)
        local ok, err = pcall(function() self:OnShow(data) end)
        xlua.hotfix(CS.MechaView, 'OnShow', onShow)
        if not ok then warn('MechaView.OnShow: ' .. tostring(err)) end
        local okF, n = pcall(fixCollection, self)
        if not okF then warn('fixCollection: ' .. tostring(n)) end
    end
    xlua.hotfix(CS.MechaView, 'OnShow', onShow)
end)

-- ---------------------------------------------------------------------
-- Clones de ángel: AngelView.InitView reordena la lista y selecciona el PRIMER clon. Se llama al abrir la
-- vista y también cada vez que cambian oro/Core o el CR (tras cada Research), así que el selector saltaba.
-- Se recuerda el clon elegido (AngelSelect -> EventTriggerListener.parameter = sn) y se vuelve a seleccionar.
-- ---------------------------------------------------------------------
pcall(function()
    xlua.private_accessible(CS.AngelView)
    local selSn = nil
    local function call(cls, name, wrapper, self, ...)
        xlua.hotfix(cls, name, nil)
        local res = table.pack(pcall(function(...) return self[name](self, ...) end, ...))
        xlua.hotfix(cls, name, wrapper)
        if not res[1] then warn('AngelView.' .. name .. ': ' .. tostring(res[2])) end
        return table.unpack(res, 2, res.n)
    end
    local function listenerOf(go)
        local l = go and go:GetComponent(typeof(CS.EventTriggerListener))
        return l
    end
    local onSelect, onInit, onShow
    onSelect = function(self, go)
        call(CS.AngelView, 'AngelSelect', onSelect, self, go)
        pcall(function()
            local l = listenerOf(go)
            if l and l.parameter ~= nil then selSn = tostring(l.parameter) end
        end)
    end
    onInit = function(self)
        call(CS.AngelView, 'InitView', onInit, self)
        if selSn == nil then return end
        local ok, err = pcall(function()
            local ls = self.m_itemList.gameObject:GetComponentsInChildren(typeof(CS.EventTriggerListener), true)
            for i = 0, ls.Length - 1 do
                local l = ls[i]
                if l.parameter ~= nil and tostring(l.parameter) == selSn then
                    local item = l.gameObject:GetComponentInParent(typeof(CS.AngelItem))
                    if item and item.m_toggle then item.m_toggle.isOn = true end
                    self.m_tempListener = nil
                    local keep = selSn
                    self:AngelSelect(l.gameObject)
                    selSn = keep
                    return
                end
            end
        end)
        if not ok then warn('AngelView reselección: ' .. tostring(err)) end
    end
    onShow = function(self, data)
        selSn = nil                                   -- al abrir la vista: primer clon, como el original
        call(CS.AngelView, 'OnShow', onShow, self, data)
    end
    xlua.hotfix(CS.AngelView, 'AngelSelect', onSelect)
    xlua.hotfix(CS.AngelView, 'InitView', onInit)
    xlua.hotfix(CS.AngelView, 'OnShow', onShow)
end)

-- ---------------------------------------------------------------------
-- Tech: lista de genes de la fusión (GeneMergeListView). Agrupa genes iguales en "cajas" y, al meter uno en la
-- fusión, RemoveGeneBox quita el GeneVO entero de su caja (el servidor original tenía un objeto por gen). Aquí cada
-- tipo de gen es UN objeto con cantidad (p. ej. 534), así que la caja quedaba vacía, sin número y sin poder elegirse.
-- Se reconstruye la lista desde GeneData y se descuentan los genes ya colocados (GeneMergeView.m_PutList).
-- ---------------------------------------------------------------------
pcall(function()
    xlua.private_accessible(CS.GeneMergeListView)
    xlua.private_accessible(CS.GeneMergeView)
    local function rebuild(lv)
        local mv = lv.m_geneMergeView
        if mv == nil then return end
        local cls = CS.GeneMergeListView
        xlua.hotfix(cls, 'RemoveGeneBox', nil)
        lv:Initialize(lv.m_geneType, mv)
        xlua.hotfix(cls, 'RemoveGeneBox', OFFLINE.geneRemoveBox)
        local cnt = {}
        for i = 0, mv.m_PutList.Count - 1 do
            local id = tostring(mv.m_PutList[i]); cnt[id] = (cnt[id] or 0) + 1
        end
        local boxes = lv.m_geneBoxList
        for i = boxes.Count - 1, 0, -1 do
            local box = boxes[i]
            for k = 0, box.geneVOList.Count - 1 do
                local n = cnt[tostring(box.geneVOList[k].sId)]
                if n then box.amount = math.max(0, box.amount - n) end
            end
            -- Cajas de genes agotados (cantidad 0 en GeneData) fuera: no se pueden elegir ni usar en One-Tap.
            local total = 0
            for k = 0, box.geneVOList.Count - 1 do total = total + box.geneVOList[k].amount end
            if total <= 0 then boxes:RemoveAt(i) end
        end
        lv:RefreshList(boxes)
    end
    OFFLINE.geneRebuild = rebuild
    OFFLINE.geneRemoveBox = function(self, sId)
        local ok, err = pcall(rebuild, self)
        if not ok then warn('GeneMergeListView.RemoveGeneBox: ' .. tostring(err)) end
        return true
    end
    xlua.hotfix(CS.GeneMergeListView, 'RemoveGeneBox', OFFLINE.geneRemoveBox)
    -- Tras sacar un gen de la fusión o tras fusionar (cambio de pieza / ángel): reconstruir la lista.
    for _, m in ipairs({ 'RemoveGene', 'EquipChange', 'AngelChange' }) do
        local w
        w = function(self, ...)
            xlua.hotfix(CS.GeneMergeView, m, nil)
            local res = table.pack(pcall(function(...) return self[m](self, ...) end, ...))
            xlua.hotfix(CS.GeneMergeView, m, w)
            if not res[1] then warn('GeneMergeView.' .. m .. ': ' .. tostring(res[2])) end
            local ok, err = pcall(function() if self.m_geneMergeList then rebuild(self.m_geneMergeList) end end)
            if not ok then warn('geneRebuild: ' .. tostring(err)) end
            return table.unpack(res, 2, res.n)
        end
        xlua.hotfix(CS.GeneMergeView, m, w)
    end
end)

-- ---------------------------------------------------------------------
-- Tech: el panel "Put in" de la fusión (BlackBoard/GeneMergeList) está 45 px a la derecha de su gemelo
-- "Socket" (GeneInsertList: pos -45, pivote 1,0.5) y la cuadrícula se sale del recuadro. Se copia la posición.
-- ---------------------------------------------------------------------
pcall(function()
    local function align(view)
        local tr = view.transform
        local p = tr.parent
        if p == nil then return end
        local ref = p:Find('GeneInsertList')
        if ref == nil then return end
        local a = tr:GetComponent(typeof(CS.UnityEngine.RectTransform))
        local b = ref:GetComponent(typeof(CS.UnityEngine.RectTransform))
        a.anchorMin = b.anchorMin; a.anchorMax = b.anchorMax; a.pivot = b.pivot
        a.anchoredPosition = b.anchoredPosition
        OFFLINE.geneAlignTarget = { a = a, go = tr.gameObject, pos = b.anchoredPosition }
    end
    -- Algo (tween de apertura del panel) vuelve a poner x = 0 tras Initialize: se mantiene en cada frame
    -- mientras el panel esté activo.
    local prevU = OFFLINE.onUpdate
    OFFLINE.onUpdate = function(...)
        local g = OFFLINE.geneAlignTarget
        if g then
            pcall(function()
                if g.go.activeInHierarchy and g.a.anchoredPosition.x ~= g.pos.x then g.a.anchoredPosition = g.pos end
            end)
        end
        if prevU then return prevU(...) end
    end
    local w
    w = function(self, a1, a2)
        xlua.hotfix(CS.GeneMergeListView, 'Initialize', nil)
        local ok, err = pcall(function() self:Initialize(a1, a2) end)
        xlua.hotfix(CS.GeneMergeListView, 'Initialize', w)
        if not ok then warn('GeneMergeListView.Initialize: ' .. tostring(err)) end
        local ok2, err2 = pcall(align, self)
        if not ok2 then warn('alinear GeneMergeList: ' .. tostring(err2)) end
    end
    xlua.hotfix(CS.GeneMergeListView, 'Initialize', w)
end)

-- ---------------------------------------------------------------------
-- Tech > Auto (GeneQuicklyPanel): la etiqueta de la barra de EXP viene del prefab sin traducir
-- ("合成經驗"). Envía el mismo CSEquipGeneCompose/CSAngelGeneCompose que la fusión normal.
-- ---------------------------------------------------------------------
pcall(function()
    local FIX = { ['合成經驗'] = 'Synth EXP', ['合成经验'] = 'Synth EXP' }
    local function fixTexts(view)
        local texts = view.transform:GetComponentsInChildren(typeof(CS.UnityEngine.UI.Text), true)
        for i = 0, texts.Length - 1 do
            local t = texts[i]
            local s = tostring(t.text):gsub('^%s+', ''):gsub('%s+$', '')
            if FIX[s] then
                t.text = FIX[s]
                t.horizontalOverflow = CS.UnityEngine.HorizontalWrapMode.Overflow
                t.alignment = CS.UnityEngine.TextAnchor.MiddleRight
            end
        end
    end
    local function onEnable(self)
        xlua.hotfix(CS.GeneQuicklyPanel, 'OnEnable', nil)
        local ok, err = pcall(function() self:OnEnable() end)
        xlua.hotfix(CS.GeneQuicklyPanel, 'OnEnable', onEnable)
        if not ok then warn('GeneQuicklyPanel.OnEnable: ' .. tostring(err)) end
        pcall(fixTexts, self)
    end
    xlua.hotfix(CS.GeneQuicklyPanel, 'OnEnable', onEnable)
end)

-- ---------------------------------------------------------------------
-- Tutorial: botones "secuestrados" por una guía interrumpida.
-- GuideView.SetupClick mueve el objetivo del paso (p. ej. StoryBtn del lobby) a la capa de la guía y guarda
-- su sitio en un GuideGOInfo (oldParent, siblingIdx, layoutGroup, eventTrigger/originalTrigger); solo
-- OnTargetClicked lo devuelve. Si la guía se interrumpe (se toca otra cosa, se abre otra ventana), el botón
-- queda bajo la guía oculta y desaparece del lobby hasta reiniciar. Cada segundo: si hay GuideGOInfo y
-- ningún paso visible durante 2 comprobaciones seguidas, se restaura como en OnTargetClicked.
-- ---------------------------------------------------------------------
pcall(function()
    xlua.private_accessible(CS.GuideView)
    local Object = CS.UnityEngine.Object
    local last, strikes = 0, 0
    local function restore(info)
        local go = info.gameObject
        pcall(function() if info.needDestroy ~= nil then Object.Destroy(info.needDestroy) end end)
        pcall(function()
            if info.oldParent ~= nil then
                go.transform:SetParent(info.oldParent)
                go.transform:SetSiblingIndex(info.siblingIdx)
            end
        end)
        pcall(function() if info.layoutGroup ~= nil then info.layoutGroup.enabled = true end end)
        pcall(function()
            if info.eventTrigger ~= nil and info.eventTrigger ~= info.originalTrigger then Object.Destroy(info.eventTrigger) end
            if info.originalTrigger ~= nil then info.originalTrigger.enabled = true end
        end)
        Object.Destroy(info)
        log('tutorial: botón restaurado tras guía interrumpida: ' .. tostring(go.name))
    end
    local function check()
        local infos = Object.FindObjectsOfType(typeof(CS.GuideGOInfo))
        if infos == nil or infos.Length == 0 then strikes = 0 return end
        local showing = false
        pcall(function()
            local gv = Object.FindObjectOfType(typeof(CS.GuideView))
            showing = gv ~= nil and gv.goGuideStep ~= nil and gv.goGuideStep.activeInHierarchy and gv.m_currentStep ~= nil
        end)
        if showing then strikes = 0 return end
        strikes = strikes + 1
        if strikes < 2 then return end
        strikes = 0
        for i = 0, infos.Length - 1 do pcall(restore, infos[i]) end
    end
    local prevUpdate = OFFLINE.onUpdate
    OFFLINE.onUpdate = function(...)
        if os.time() ~= last then
            last = os.time()
            local ok, err = pcall(check)
            if not ok and not OFFLINE.guideFixWarned then OFFLINE.guideFixWarned = true; warn('reparación de guía: ' .. tostring(err)) end
            if ok and not OFFLINE.guideFixOk then OFFLINE.guideFixOk = true; log('reparación de guía activa') end
        end
        if prevUpdate then return prevUpdate(...) end
    end
end)

-- ---------------------------------------------------------------------
-- Ventana de recompensas del salto de pisos (TowerUpSkipRewardTips): el título viene del prefab en coreano
-- ("얻은 것을 축하합니다"). Se traduce al abrirla (SetPanel), como la etiqueta china de Tech > Auto.
-- ---------------------------------------------------------------------
pcall(function()
    local FIX = { ['얻은 것을 축하합니다'] = 'Rewards obtained' }
    local function onSetPanel(self, active, list)
        xlua.hotfix(CS.TowerUpSkipRewardTips, 'SetPanel', nil)
        local ok, err = pcall(function() self:SetPanel(active, list) end)
        xlua.hotfix(CS.TowerUpSkipRewardTips, 'SetPanel', onSetPanel)
        if not ok then warn('TowerUpSkipRewardTips.SetPanel: ' .. tostring(err)) end
        pcall(function()
            local texts = self.transform:GetComponentsInChildren(typeof(CS.UnityEngine.UI.Text), true)
            for i = 0, texts.Length - 1 do
                local s = tostring(texts[i].text):gsub('^%s+', ''):gsub('%s+$', '')
                if FIX[s] then texts[i].text = FIX[s] end
            end
        end)
    end
    xlua.hotfix(CS.TowerUpSkipRewardTips, 'SetPanel', onSetPanel)
end)

log('hotfixes de modo offline aplicados')
