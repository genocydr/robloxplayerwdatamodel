PROTO_0:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R11 R8 K2 ["pathColumn"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K5 [table.insert]
  CALL R9 2 0
  GETTABLEKS R9 R8 K2 ["pathColumn"]
  SETTABLE R8 R3 R9
  FORGLOOP R4 2 [inext] [-12]
  DUPTABLE R4 K9 [{"stepStateBundle", "tokenizedList", "newVarsMapping"}]
  SETTABLEKS R0 R4 K6 ["stepStateBundle"]
  SETTABLEKS R2 R4 K7 ["tokenizedList"]
  SETTABLEKS R3 R4 K8 ["newVarsMapping"]
  RETURN R4 1

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
  GETTABLEKS R6 R7 K12 ["VariableRow"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Models"]
  GETTABLEKS R7 R8 K13 ["StepStateBundle"]
  CALL R6 1 1
  MOVE R7 R3
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K14 ["Name"]
  DUPCLOSURE R9 K15 [PROTO_0]
  CALL R7 2 -1
  RETURN R7 -1