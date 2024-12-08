PROTO_0:
  LOADB R0 1
  SETUPVAL R0 0
  LOADNIL R0
  SETUPVAL R0 1
  GETUPVAL R0 2
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 4
  GETUPVAL R1 5
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  LOADN R3 0
  JUMPIFNOTLT R3 R0 [+14]
  GETIMPORT R3 K2 [task.delay]
  MOVE R4 R0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R3 2 1
  SETUPVAL R3 0
  RETURN R0 0
  GETUPVAL R3 4
  JUMPIFEQ R3 R1 [+6]
  LOADB R3 1
  SETUPVAL R3 1
  GETUPVAL R3 3
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIF R0 [+31]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIF R0 [+21]
  GETIMPORT R1 K5 [tick]
  CALL R1 0 1
  GETUPVAL R2 3
  SUB R0 R1 R2
  GETUPVAL R1 4
  JUMPIF R1 [+1]
  MULK R0 R0 K6 [-1]
  GETUPVAL R1 5
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["current"]
  ADD R3 R4 R0
  LOADN R4 0
  GETUPVAL R5 6
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K9 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["current"]
  GETUPVAL R0 2
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["current"]
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [tick]
  CALL R0 0 1
  LOADNIL R1
  LOADB R2 0
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R4 3
  JUMPIFNOT R4 [+31]
  GETUPVAL R5 4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["current"]
  SUB R4 R5 R6
  GETUPVAL R5 4
  LOADN R6 0
  JUMPIFNOTLT R6 R4 [+15]
  GETIMPORT R6 K5 [task.delay]
  MOVE R7 R4
  LOADB R9 1
  NEWCLOSURE R8 P1
  CAPTURE REF R2
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R9
  CALL R6 2 1
  MOVE R1 R6
  JUMP [+38]
  GETUPVAL R6 2
  JUMPIFEQKB R6 TRUE [+36]
  LOADB R2 1
  GETUPVAL R6 1
  LOADB R7 1
  CALL R6 1 0
  JUMP [+30]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["current"]
  GETUPVAL R6 5
  SUB R4 R5 R6
  GETUPVAL R5 5
  LOADN R6 0
  JUMPIFNOTLT R6 R4 [+15]
  GETIMPORT R6 K5 [task.delay]
  MOVE R7 R4
  LOADB R9 0
  NEWCLOSURE R8 P1
  CAPTURE REF R2
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R9
  CALL R6 2 1
  MOVE R1 R6
  JUMP [+7]
  GETUPVAL R6 2
  JUMPIFEQKB R6 FALSE [+5]
  LOADB R2 1
  GETUPVAL R6 1
  LOADB R7 0
  CALL R6 1 0
  GETUPVAL R4 3
  NEWCLOSURE R5 P2
  CAPTURE REF R2
  CAPTURE REF R1
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CLOSEUPVALS R1
  RETURN R5 1

PROTO_4:
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOT R1 [+10]
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 1
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K0 ["current"]
  JUMP [+4]
  GETUPVAL R2 1
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  JUMPIF R2 [+1]
  MOVE R2 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  ORK R6 R3 K1 [False]
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["useState"]
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["useRef"]
  ORK R10 R3 K3 [0]
  CALL R9 1 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["useRef"]
  LOADB R11 0
  CALL R10 1 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE REF R2
  NEWTABLE R13 0 5
  MOVE R14 R5
  MOVE R15 R7
  MOVE R16 R0
  MOVE R17 R1
  MOVE R18 R2
  SETLIST R13 R14 5 [1]
  CALL R11 2 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["useCallback"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE REF R2
  CAPTURE VAL R6
  NEWTABLE R13 0 1
  MOVE R14 R6
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  MOVE R12 R7
  MOVE R13 R11
  CLOSEUPVALS R2
  RETURN R12 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_5]
  CAPTURE VAL R1
  RETURN R2 1