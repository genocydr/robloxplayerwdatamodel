PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["isEnumValue"]
  MOVE R4 R0
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Bad generationErrorType"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPTABLE R2 K6 [{"generationErrorType", "message"}]
  SETTABLEKS R0 R2 K4 ["generationErrorType"]
  SETTABLEKS R1 R2 K5 ["message"]
  RETURN R2 1

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
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Enum"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K11 ["GenerationErrorType"]
  CALL R4 1 1
  MOVE R5 R2
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["Name"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R4
  CALL R5 2 -1
  RETURN R5 -1
