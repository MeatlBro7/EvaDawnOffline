OFFLINE_MOCK = true
-- Entorno CS/xlua simulado para probar MainHotFix.lua fuera del juego.
local trace = {}
_G.TRACE = trace
local function T(s) trace[#trace+1] = s end
local prefs = {}
local hot = {}
_G.HOT = hot
xlua = {
  private_accessible = function(c) end,
  hotfix = function(cls, a, b)
    local t = type(a) == 'table' and a or { [a] = b }
    for k, v in pairs(t) do hot[cls.__name .. '.' .. k] = v end
  end,
}
local MSGID = { SCLoginResult=112, SCCharacterLoginResult=1010, SCInitData=1101, SCAllGuideInfo=2152,
                SCServerTime=1442, SCPing=1123, CSLogin=111, CSCharacterLogin=1009, CSServerTime=1441, CSFoo=9999 }
local function msgclass(name)
  return setmetatable({__name=name}, {__call=function()
    return setmetatable({__t=name}, {__index=function(o,k)
      if k=='GetType' then return function() return {Name=name} end end
      if k=='_msgid' then return function() return MSGID[name] end end
      local LISTS = {boxState=1, id=1, produce=1, updates=1, items=1, gens=1, infos=1, instance=1, dWeapon=1, generalList=1, dBag=1, sn=1}
      if LISTS[k] then local l = {n=0, Count=0}; function l:Add(v) self.n = self.n + 1; self.Count = self.n end; function l:Clear() self.n = 0; self.Count = 0 end; rawset(o,k,l); return l end
    end})
  end})
end
local msg = setmetatable({}, {__index=function(t,k) local c=msgclass(k); rawset(t,k,c); return c end})
local api = {}
local function GamePacket(body)
  local p = {body=body}
  function p:Encode() return 'BYTES:' .. body.__t end
  function p:Decode(b, o, n) self.body = {__t = b:sub(7)}; self.Type = MSGID[self.body.__t] end
  return p
end
CS = {
  UnityEngine = {
    PlayerPrefs = {
      GetInt=function(k,d) return prefs[k] or d end, SetInt=function(k,v) prefs[k]=v end,
      GetString=function(k,d) return prefs[k] or d end, SetString=function(k,v) prefs[k]=v end, Save=function() end },
    Debug = { LogWarning=function(s) print('WARN', s); T('WARN '..s) end },
  },
  UniCore = { GamePacket = setmetatable({}, {__call=function(_, b) return GamePacket(b) end}),
              NetErrors = { ERROR_OK = 0 } },
  msg = msg,
  BootMediator = {__name='BootMediator'}, LoginMediator = {__name='LoginMediator'}, MechaData = {__name='MechaData'}, WinView = {__name='WinView'}, StoreItemEx = {__name='StoreItemEx'}, DiscountItem = {__name='DiscountItem'},
  LoginView = {__name='LoginView'}, ServerListMediator = {__name='ServerListMediator'},
  ServerState = { Normal = 1 },
  CurrentBundleVersion = { version = '3.1.0' },
  ServerInfo = function() return {} end, LoginInfo = function() return {} end,
}
CS.ConfModUnlock = { array = setmetatable({Count=3}, {__index=function(t,i) return {sn=100+i, unlockLevel=i*10} end}) }
CS.ConnectAPI = { __name='ConnectAPI', s_instance = api,
  OnConnect = function(e) T('OnConnect '..e); _G.ON_CONNECT() end,
  OnBattleServerConnect = function(e) end }
function api:PacketReceived(p, s) T('RECV '..p.body.__t..' type='..tostring(p.Type)); _G.ON_RECV(p.body.__t) end
MSGID.SCModUnlock = 1150

-- Configuración falsa para probar recompensas
local function arr(t) return setmetatable({Length = #t}, {__index = function(_, i) return t[i + 1] end}) end
CS.ConfCommonInfo = { Get = function(sn) return {
    rewardList = arr({1, 4, 10010101}), rewardCountList = arr({1200, 50, 1}),
    firstList = arr({1, 4}), firstCountList = arr({1200, 250}),
    threeStar = arr({8, 3000101}), threeStarCount = arr({1, 2}), costPower = 5 } end }
local ITEMS = { [1] = {name='Coin', type='Gold'}, [4] = {name='EXP', type='UserExp'},
                [8] = {name='Life Source', type='Talent'}, [3000101] = {name='Magnetic Chip I', type='Material'}, [14] = {name='Gamma Crystal', type='Crystal'}, [4020001] = {name='Eva01', type='MechaChip'} }
CS.ConfItemData = { Get = function(sn) return ITEMS[sn] end }
CS.ConfItemProduce = { Get = function(sn) if sn == 10010101 then return { name = 'drop', itemList = arr({3000101}), itemCountList = arr({1}) } end end }
CS.ConfHumanLevelExp = { Get = function(lv) if lv <= 10 then return {exp = 200, maxAct = 100 + lv * 20} end end }
local CH = { id = 101, commonList = arr({10101, 10102}), starNum = arr({3, 6}), starReward = arr({8, 3000101}) }
CS.ConfCommonChapter = { array = setmetatable({ Count = 1 }, {__index = function(_, i) return CH end}),
                         Get = function(id) return CH end }
