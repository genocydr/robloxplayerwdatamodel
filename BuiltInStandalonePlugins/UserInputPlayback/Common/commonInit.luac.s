PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["EnableRoactConfigs"]
  CALL R2 0 1
  JUMPIFNOT R2 [+20]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["setGlobalConfig"]
  DUPTABLE R4 K16 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["elementTracing"]
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["propValidation"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["typeChecks"]
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADB R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1