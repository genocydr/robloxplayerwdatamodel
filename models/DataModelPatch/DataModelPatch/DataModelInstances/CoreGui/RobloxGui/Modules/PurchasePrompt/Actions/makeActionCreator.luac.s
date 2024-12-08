PROTO_0:
  PREPVARARGS 1
  DUPTABLE R1 K1 [{"type"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["type"]
  LOADK R5 K2 ["#"]
  FASTCALL1 SELECT_VARARG R5 [+3]
  GETIMPORT R4 K4 [select]
  GETVARARGS R6 -1
  CALL R4 -1 1
  GETUPVAL R6 1
  LENGTH R5 R6
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R5 K5 ["Incorrect number of arguments provided to action creator "]
  GETUPVAL R6 0
  CONCAT R4 R5 R6
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETIMPORT R2 K9 [ipairs]
  GETUPVAL R3 1
  CALL R2 1 3
  FORGPREP_INEXT R2
  FASTCALL1 SELECT_VARARG R5 [+4]
  GETIMPORT R7 K4 [select]
  MOVE R8 R5
  GETVARARGS R9 -1
  CALL R7 -1 1
  SETTABLE R7 R1 R6
  FORGLOOP R2 2 [inext] [-8]
  RETURN R1 1

PROTO_1:
  PREPVARARGS 1
  NEWTABLE R1 0 0
  GETVARARGS R2 -1
  SETLIST R1 R2 -1 [1]
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Bad argument #1 to makeActionCreator, expected string"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  LOADN R4 1
  LOADK R6 K6 ["#"]
  FASTCALL1 SELECT_VARARG R6 [+3]
  GETIMPORT R5 K8 [select]
  GETVARARGS R7 -1
  CALL R5 -1 1
  MOVE R2 R5
  LOADN R3 1
  FORNPREP R2
  GETIMPORT R8 K8 [select]
  MOVE R9 R4
  GETVARARGS R10 -1
  CALL R8 -1 -1
  FASTCALL TYPEOF [+2]
  GETIMPORT R7 K10 [typeof]
  CALL R7 -1 1
  JUMPIFEQKS R7 K2 ["string"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K11 [+4]
  LOADK R7 K11 ["Bad argument to makeActionCreator, all arguments must be of type string"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  FORNLOOP R2
  DUPTABLE R3 K13 [{"name"}]
  SETTABLEKS R0 R3 K12 ["name"]
  DUPTABLE R4 K15 [{"__call"}]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K14 ["__call"]
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K17 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1