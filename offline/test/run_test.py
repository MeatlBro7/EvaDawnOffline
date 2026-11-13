# Prueba MainHotFix.lua con Lua 5.3 y un entorno CS simulado.
import sys, os
sys.stdout.reconfigure(encoding='utf-8')
import lupa.lua53 as lupa
here = os.path.dirname(os.path.abspath(__file__))
L = lupa.LuaRuntime()
L.execute(open(os.path.join(here, 'mock_cs.lua'), encoding='utf-8').read())
L.execute(open(os.path.join(here, '..', 'gen', 'pairs.lua'), encoding='utf-8').read())
L.execute(open(os.path.join(here, '..', 'MainHotFix.lua'), encoding='utf-8').read())
L.execute(r'''
local H = HOT
local function S(n) TRACE[#TRACE+1] = n end
-- Simula el juego: ConnectAPI_onConnect -> Login() -> QueuePacket(CSLogin)
ON_CONNECT = function() H['ConnectAPI.QueuePacket'](CS.msg.CSLogin()) end
ON_RECV = function(name)
  if name == 'SCLoginResult' then H['ConnectAPI.QueuePacket'](CS.msg.CSCharacterLogin()) end
  if name == 'SCInitData' then H['ConnectAPI.QueuePacket'](CS.msg.CSServerTime()) end
end
-- 1) Boot
local boot = { RemoveOldVersion=function() S('RemoveOldVersion') end,
               OnGetServerList=function(self, t) S('OnGetServerList '..t) end }
H['BootMediator.BeginBoot'](boot)
H['BootMediator.LoadLuaScripts'](boot)
-- 2) Vista de login
H['LoginView.OnShow']({SetVersion=function(self,v,r) S('SetVersion '..v..' '..r) end}, nil)
-- 3) Entrar
local med = { SaveLoginServer=function() S('SaveLoginServer') end,
              BeginLogin=function(self) S('BeginLogin '..self.m_loginInfo.ip..':'..self.m_loginInfo.port)
                 H['ConnectAPI.Connect'](self.m_loginInfo.ip, self.m_loginInfo.port) end }
H['LoginMediator.EnterGame'](med, nil)
assert(H['ConnectAPI.Active']() == true)
for i=1,5 do H['ConnectAPI.Update'](CS.ConnectAPI.s_instance) end
H['ConnectAPI.SendPacket'](CS.msg.CSFoo())
H['ConnectAPI.QueuePacket'](CS.msg.CSOpenQuest())
H['ConnectAPI.QueuePacket'](CS.msg.CSStageEnter())
for i=1,3 do H['ConnectAPI.Update'](CS.ConnectAPI.s_instance) end
-- Batalla ganada con 3 estrellas
local e = CS.msg.CSInstanceEnter(); e.instSn = 10101; e.generalId = 0
H['ConnectAPI.QueuePacket'](e)
local f = CS.msg.CSInstanceEnd(); f.star = 222; f.quit = false; f.costTime = 30; f.damage = 0
H['ConnectAPI.QueuePacket'](f)
for i=1,3 do H['ConnectAPI.Update'](CS.ConnectAPI.s_instance) end
local P = CS.UnityEngine.PlayerPrefs
RESULT = { gold = P.GetString('OFF_n_gold',''), exp = P.GetString('OFF_n_userExp',''),
           level = P.GetString('OFF_n_level',''), act = P.GetString('OFF_n_actValue',''),
           talent = P.GetString('OFF_n_talent',''), crystal = P.GetString('OFF_n_EvolveStone',''), bag = P.GetString('OFF_bag','') }
-- Recarga del script ignorada
''')
L.execute(open(os.path.join(here, '..', 'MainHotFix.lua'), encoding='utf-8').read())
trace = L.globals().TRACE
for i in range(1, len(trace) + 1): print(' ', trace[i])
seq = [trace[i] for i in range(1, len(trace) + 1)]
expect = ['RECV SCLoginResult type=112', 'RECV SCCharacterLoginResult type=1010',
          'RECV SCInitData type=1101', 'RECV SCModUnlock type=1150', 'RECV SCAllGuideInfo type=2152', 'RECV SCServerTime type=1442']
pos = [seq.index(e) for e in expect]
assert pos == sorted(pos), 'orden incorrecto'
assert any(s.startswith('OnGetServerList 1\tOffline\tLocal\t127.0.0.1\t9999\t1') for s in seq)
assert any('sin handler para CSFoo' in s for s in seq)
assert 'RECV SCQuestInfo type=nil' in seq, 'respuesta automática'
assert seq.index('RECV SCStageEnterResult type=nil') < seq.index('RECV SCStageEnterEnd type=nil')
R = L.globals().RESULT
print('  cartera tras la batalla:', dict(R))
assert R['gold'] == str(100000 + 1200 + 1200), R['gold']
assert R['level'] == '2' and R['exp'] == str(300 - 200), (R['level'], R['exp'])   # 50+250 EXP -> nivel 2
assert R['talent'] == '1' and R['bag'] == '3000101:3,4020001:100', (R['talent'], R['bag'])
assert R['act'] == str(140), R['act']
assert R['crystal'] == '2000', R['crystal']   # sube de nivel -> energía llena (100+2*20)
assert 'RECV SCHumanInfoChange type=nil' in seq and 'RECV SCBagUpdate type=nil' in seq
print('OK: flujo de login offline completo en el entorno simulado')
