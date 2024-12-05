PROTO_0:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Common"]
  GETTABLEKS R1 R2 K2 ["debuggerConnectionIdToDST"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["debuggerConnectionId"]
  GETTABLE R0 R1 R2
  GETUPVAL R1 1
  JUMPIFEQ R1 R0 [+2]
  RETURN R0 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K4 ["GetChildren"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K6 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  NEWTABLE R8 0 0
  JUMPIFNOTEQKN R6 K7 [1] [+11]
  DUPTABLE R9 K10 [{"Value", "LeftIcon"}]
  LOADK R10 K11 [""]
  SETTABLEKS R10 R9 K8 ["Value"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K12 ["ICON_FRAME_TOP"]
  SETTABLEKS R10 R9 K9 ["LeftIcon"]
  MOVE R8 R9
  DUPTABLE R9 K18 [{"arrowColumn", "frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
  SETTABLEKS R8 R9 K13 ["arrowColumn"]
  SETTABLEKS R6 R9 K14 ["frameColumn"]
  GETTABLEKS R10 R7 K19 ["FrameName"]
  SETTABLEKS R10 R9 K15 ["functionColumn"]
  GETTABLEKS R11 R7 K20 ["Line"]
  LOADN R12 0
  JUMPIFNOTLT R11 R12 [+3]
  LOADK R10 K11 [""]
  JUMP [+2]
  GETTABLEKS R10 R7 K20 ["Line"]
  SETTABLEKS R10 R9 K16 ["lineColumn"]
  GETTABLEKS R10 R7 K21 ["Script"]
  SETTABLEKS R10 R9 K17 ["sourceColumn"]
  GETUPVAL R10 0
  GETUPVAL R12 4
  GETTABLEKS R13 R7 K21 ["Script"]
  LOADK R14 K11 [""]
  CALL R12 2 -1
  NAMECALL R10 R10 K22 ["dispatch"]
  CALL R10 -1 0
  GETUPVAL R10 5
  GETTABLEKS R12 R7 K21 ["Script"]
  GETUPVAL R15 0
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["Common"]
  GETTABLEKS R13 R14 K23 ["currentDebuggerConnectionId"]
  GETTABLEKS R14 R7 K20 ["Line"]
  NAMECALL R10 R10 K24 ["StartWatchingScriptLine"]
  CALL R10 4 0
  MOVE R11 R2
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K25 ["fromData"]
  MOVE R13 R9
  CALL R12 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K28 [table.insert]
  CALL R10 -1 0
  FORGLOOP R3 2 [inext] [-74]
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+12]
  GETUPVAL R3 0
  GETUPVAL R5 6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K29 ["ThreadId"]
  MOVE R7 R2
  GETUPVAL R8 1
  CALL R5 3 -1
  NAMECALL R3 R3 K22 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 7
  JUMPIFNOT R3 [+2]
  GETUPVAL R3 7
  CALL R3 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R2 R2 K0 ["Populate"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Models"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Callstack"]
  GETTABLEKS R3 R4 K8 ["CallstackRow"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R3 K7 ["Callstack"]
  GETTABLEKS R5 R6 K10 ["AddCallstack"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R3 K11 ["Common"]
  GETTABLEKS R6 R7 K12 ["SetFilenameForGuid"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
