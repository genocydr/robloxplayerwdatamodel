PROTO_0:
  DUPTABLE R2 K2 [{"mouseMoveEnabled", "context"}]
  SETTABLEKS R0 R2 K0 ["mouseMoveEnabled"]
  SETTABLEKS R1 R2 K1 ["context"]
  RETURN R2 1

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
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  MOVE R3 R2
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Name"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
