PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R2 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K3 [{"currentTab"}]
  SETTABLEKS R0 R1 K2 ["currentTab"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Models"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K11 ["Watch"]
  GETTABLEKS R6 R7 K12 ["TableTab"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["Dash"]
  GETTABLEKS R7 R6 K14 ["includes"]
  MOVE R8 R3
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K15 ["Name"]
  DUPCLOSURE R10 K16 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CALL R8 2 -1
  RETURN R8 -1
