PROTO_0:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  LOADN R3 1
  GETIMPORT R4 K2 [string.find]
  MOVE R5 R0
  LOADK R6 K3 ["%d+"]
  MOVE R7 R3
  CALL R4 3 2
  JUMPIFNOT R4 [+53]
  SUB R7 R5 R4
  ADDK R6 R7 K4 [1]
  LOADN R7 4
  JUMPIFNOTLT R7 R6 [+45]
  FASTCALL3 STRING_SUB R0 R4 R5
  MOVE R8 R0
  MOVE R9 R4
  MOVE R10 R5
  GETIMPORT R7 K6 [string.sub]
  CALL R7 3 1
  SUBK R10 R4 K4 [1]
  SUBK R11 R4 K4 [1]
  FASTCALL3 STRING_SUB R0 R10 R11
  MOVE R9 R0
  GETIMPORT R8 K6 [string.sub]
  CALL R8 3 1
  JUMPIFEQKS R8 K7 ["."] [+27]
  SUBK R11 R4 K8 [13]
  SUBK R12 R4 K4 [1]
  FASTCALL3 STRING_SUB R0 R11 R12
  MOVE R10 R0
  GETIMPORT R9 K6 [string.sub]
  CALL R9 3 1
  JUMPIFEQKS R9 K9 ["rbxassetid://"] [+5]
  GETUPVAL R10 0
  MOVE R11 R7
  CALL R10 1 1
  JUMPIFNOT R10 [+12]
  GETTABLE R10 R2 R7
  JUMPIF R10 [+10]
  LOADB R10 1
  SETTABLE R10 R2 R7
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R11 R1
  MOVE R12 R7
  GETIMPORT R10 K12 [table.insert]
  CALL R10 2 0
  JUMP [0]
  ADDK R3 R5 K4 [1]
  JUMP [+1]
  RETURN R1 1
  JUMPBACK [-60]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["isAssetIdLike"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1