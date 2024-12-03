PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["paramName"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["paramValue"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["paramName"]
  GETTABLEKS R3 R0 K1 ["paramValue"]
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETTABLEKS R5 R0 K2 ["scope"]
  GETTABLEKS R6 R0 K3 ["key"]
  MOVE R7 R1
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 4 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  MOVE R3 R0
  CALL R1 2 1
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADK R2 K1 [""]
  CALL R1 1 2
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R6 0 3
  MOVE R7 R0
  MOVE R8 R2
  MOVE R9 R3
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useEffect"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  MOVE R8 R4
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useEffect"]
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  NEWTABLE R7 0 3
  MOVE R8 R0
  MOVE R9 R4
  MOVE R10 R1
  SETLIST R7 R8 3 [1]
  CALL R5 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["LuauPolyfill"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R5 K10 ["Localization"]
  GETTABLEKS R5 R3 K11 ["setTimeout"]
  GETTABLEKS R6 R3 K12 ["clearTimeout"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["RelativeTime"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["calculateRelativeTime"]
  GETTABLEKS R9 R7 K17 ["getRefreshIntervalInMS"]
  DUPCLOSURE R10 K18 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R10 1
