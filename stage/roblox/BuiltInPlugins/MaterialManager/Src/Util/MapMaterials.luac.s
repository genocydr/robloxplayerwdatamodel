PROTO_0:
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R4 R0 K2 ["Materials"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  JUMPIFNOT R2 [+4]
  MOVE R10 R2
  MOVE R11 R7
  CALL R10 1 1
  JUMP [+1]
  MOVE R10 R7
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R4 R0 K6 ["CategoryNames"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 0
  GETTABLEKS R10 R0 K7 ["Categories"]
  GETTABLE R9 R10 R7
  MOVE R10 R1
  MOVE R11 R2
  CALL R8 3 0
  FORGLOOP R3 2 [inext] [-8]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R2
  RETURN R2 1
