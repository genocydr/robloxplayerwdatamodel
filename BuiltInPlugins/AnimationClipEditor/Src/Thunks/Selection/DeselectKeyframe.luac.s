PROTO_0:
  MOVE R2 R0
  LOADNIL R3
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLE R3 R2 R8
  JUMPIF R3 [+2]
  LOADNIL R9
  RETURN R9 1
  LENGTH R9 R1
  JUMPIFNOTLT R7 R9 [+9]
  GETTABLEKS R9 R3 K2 ["Components"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R2 R3 K2 ["Components"]
  JUMP [+2]
  LOADNIL R9
  RETURN R9 1
  FORGLOOP R4 2 [inext] [-16]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["Components"]
  JUMPIFEQKNIL R2 [+6]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Components"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  LOADB R1 1
  GETTABLEKS R2 R0 K1 ["Selection"]
  JUMPIFEQKNIL R2 [+5]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K1 ["Selection"]
  CALL R1 1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Selection"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K0 ["Selection"]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R1 R2
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["Selection"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["Selection"]
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R1 [+36]
  GETTABLEKS R3 R1 K0 ["Data"]
  JUMPIFNOT R3 [+33]
  GETTABLEKS R4 R1 K0 ["Data"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+28]
  GETTABLEKS R3 R0 K1 ["Selection"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R4 R0 K1 ["Selection"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  JUMPIF R3 [+20]
  GETUPVAL R3 1
  GETIMPORT R4 K3 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  JUMPIFNOT R3 [+11]
  GETTABLEKS R9 R3 K1 ["Selection"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R9 R3 K1 ["Selection"]
  GETUPVAL R10 0
  LOADNIL R11
  SETTABLE R11 R9 R10
  GETTABLEKS R9 R3 K4 ["Components"]
  GETTABLE R3 R9 R8
  FORGLOOP R4 2 [inext] [-13]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Selection"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Selection"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["Selection"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Components"]
  JUMPIFNOT R1 [+34]
  GETIMPORT R1 K2 [pairs]
  GETTABLEKS R2 R0 K0 ["Components"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R7 R5 K0 ["Components"]
  JUMPIFEQKNIL R7 [+6]
  GETUPVAL R6 0
  GETTABLEKS R7 R5 K0 ["Components"]
  CALL R6 1 1
  JUMPIFNOT R6 [+9]
  LOADB R6 1
  GETTABLEKS R7 R5 K3 ["Selection"]
  JUMPIFEQKNIL R7 [+5]
  GETUPVAL R6 0
  GETTABLEKS R7 R5 K3 ["Selection"]
  CALL R6 1 1
  JUMPIFNOT R6 [+4]
  GETTABLEKS R6 R0 K0 ["Components"]
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 2 [-24]
  RETURN R0 0

PROTO_6:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  GETTABLEKS R3 R1 K2 ["Status"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R3 K3 ["SelectedKeyframes"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  GETUPVAL R6 0
  GETTABLE R5 R4 R6
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  GETUPVAL R6 1
  MOVE R7 R5
  GETUPVAL R8 2
  CALL R6 2 1
  JUMPIFNOT R6 [+8]
  GETTABLEKS R7 R6 K4 ["Selection"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R6 K4 ["Selection"]
  GETUPVAL R9 3
  GETTABLE R7 R8 R9
  JUMPIF R7 [+1]
  RETURN R0 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["Dictionary"]
  GETTABLEKS R7 R8 K6 ["join"]
  MOVE R8 R4
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R8 0
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K5 ["Dictionary"]
  GETTABLEKS R9 R10 K6 ["join"]
  GETUPVAL R11 0
  GETTABLE R10 R7 R11
  NEWTABLE R11 0 0
  CALL R9 2 1
  SETTABLE R9 R7 R8
  GETUPVAL R9 0
  GETTABLE R8 R7 R9
  GETUPVAL R10 2
  GETTABLEN R9 R10 1
  GETUPVAL R10 5
  GETUPVAL R13 0
  GETTABLE R12 R7 R13
  GETUPVAL R14 2
  GETTABLEN R13 R14 1
  GETTABLE R11 R12 R13
  CALL R10 1 1
  SETTABLE R10 R8 R9
  GETUPVAL R8 1
  GETUPVAL R10 0
  GETTABLE R9 R7 R10
  GETUPVAL R10 2
  CALL R8 2 1
  MOVE R6 R8
  JUMPIFNOT R6 [+9]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K7 ["traverse"]
  MOVE R9 R6
  LOADNIL R10
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U7
  CALL R8 3 0
  GETUPVAL R10 0
  GETTABLE R9 R7 R10
  GETUPVAL R11 2
  GETTABLEN R10 R11 1
  GETTABLE R8 R9 R10
  GETTABLEKS R12 R2 K8 ["Instances"]
  GETUPVAL R13 0
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K9 ["Tracks"]
  GETUPVAL R12 2
  GETTABLEN R11 R12 1
  GETTABLE R9 R10 R11
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K7 ["traverse"]
  MOVE R11 R8
  MOVE R12 R9
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R8
  DUPCLOSURE R14 K10 [PROTO_4]
  CAPTURE UPVAL U7
  CALL R10 4 0
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K7 ["traverse"]
  MOVE R11 R8
  LOADNIL R12
  LOADNIL R13
  DUPCLOSURE R14 K11 [PROTO_5]
  CAPTURE UPVAL U7
  CALL R10 4 0
  GETTABLEKS R11 R8 K12 ["Components"]
  JUMPIFEQKNIL R11 [+6]
  GETUPVAL R10 7
  GETTABLEKS R11 R8 K12 ["Components"]
  CALL R10 1 1
  JUMPIFNOT R10 [+9]
  LOADB R10 1
  GETTABLEKS R11 R8 K4 ["Selection"]
  JUMPIFEQKNIL R11 [+5]
  GETUPVAL R10 7
  GETTABLEKS R11 R8 K4 ["Selection"]
  CALL R10 1 1
  JUMPIFNOT R10 [+14]
  GETUPVAL R11 0
  GETTABLE R10 R7 R11
  GETUPVAL R12 2
  GETTABLEN R11 R12 1
  LOADNIL R12
  SETTABLE R12 R10 R11
  GETUPVAL R10 7
  GETUPVAL R12 0
  GETTABLE R11 R7 R12
  CALL R10 1 1
  JUMPIFNOT R10 [+3]
  GETUPVAL R10 0
  LOADNIL R11
  SETTABLE R11 R7 R10
  GETUPVAL R12 8
  MOVE R13 R7
  CALL R12 1 -1
  NAMECALL R10 R0 K13 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["isEmpty"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["deepCopy"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["SelectionUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["PathUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetSelectedKeyframes"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R2
  DUPCLOSURE R9 K18 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R9 1