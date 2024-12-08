PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R3 R0
  LOADK R4 K0 ["BlockingAnalytics must be passed the ID of the local user"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  DUPTABLE R2 K5 [{"_eventStreamImpl", "localUserId"}]
  GETTABLEKS R3 R1 K6 ["EventStream"]
  SETTABLEKS R3 R2 K3 ["_eventStreamImpl"]
  SETTABLEKS R0 R2 K4 ["localUserId"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K8 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  MOVE R5 R3
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  DUPTABLE R6 K3 [{"blockerUserId"}]
  GETTABLEKS R7 R0 K4 ["localUserId"]
  SETTABLEKS R7 R6 K2 ["blockerUserId"]
  CALL R4 2 1
  MOVE R3 R4
  GETTABLEKS R4 R0 K5 ["_eventStreamImpl"]
  LOADK R6 K6 ["AccountSettingsApi"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R4 R4 K7 ["SendEventDeferred"]
  CALL R4 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  SETTABLEKS R2 R2 K8 ["__index"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K10 ["new"]
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K12 ["action"]
  RETURN R2 1
