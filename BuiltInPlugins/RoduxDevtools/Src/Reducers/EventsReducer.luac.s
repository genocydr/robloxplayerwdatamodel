PROTO_0:
  GETTABLEKS R2 R1 K0 ["events"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  NEWTABLE R2 0 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["UpdateEvents"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["ClearEvents"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K12 ["createReducer"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  GETTABLEKS R9 R4 K13 ["name"]
  DUPCLOSURE R10 K14 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K13 ["name"]
  DUPCLOSURE R10 K15 [PROTO_1]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  RETURN R6 1
