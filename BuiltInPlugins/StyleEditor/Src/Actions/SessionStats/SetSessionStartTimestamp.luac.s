PROTO_0:
  DUPTABLE R1 K1 [{"startTimestamp"}]
  SETTABLEKS R0 R1 K0 ["startTimestamp"]
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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Name"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
