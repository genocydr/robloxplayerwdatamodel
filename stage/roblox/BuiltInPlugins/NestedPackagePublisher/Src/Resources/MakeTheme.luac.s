PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["StyleKey"]
  DUPTABLE R5 K12 [{"mainWindow"}]
  DUPTABLE R6 K14 [{"backgroundColor"}]
  GETTABLEKS R7 R4 K15 ["MainBackground"]
  SETTABLEKS R7 R6 K13 ["backgroundColor"]
  SETTABLEKS R6 R5 K11 ["mainWindow"]
  DUPTABLE R6 K12 [{"mainWindow"}]
  DUPTABLE R7 K14 [{"backgroundColor"}]
  GETTABLEKS R8 R4 K15 ["MainBackground"]
  SETTABLEKS R8 R7 K13 ["backgroundColor"]
  SETTABLEKS R7 R6 K11 ["mainWindow"]
  NEWTABLE R7 0 0
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
