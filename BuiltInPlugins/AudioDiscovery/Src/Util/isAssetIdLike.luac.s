PROTO_0:
  LENGTH R1 R0
  LOADN R2 9
  JUMPIFNOTLT R1 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADN R2 12
  JUMPIFNOTLT R2 R1 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADN R4 1
  LOADN R5 1
  FASTCALL3 STRING_SUB R0 R4 R5
  MOVE R3 R0
  GETIMPORT R2 K2 [string.sub]
  CALL R2 3 1
  GETIMPORT R3 K4 [string.find]
  MOVE R4 R0
  LOADK R6 K5 ["[^"]
  MOVE R7 R2
  LOADK R8 K6 ["]"]
  CONCAT R5 R6 R8
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  LOADN R3 0
  LOADN R4 1
  GETIMPORT R5 K4 [string.find]
  MOVE R6 R0
  LOADK R7 K7 ["0"]
  MOVE R8 R4
  LOADB R9 1
  CALL R5 4 1
  MOVE R4 R5
  JUMPIFNOT R4 [+5]
  ADDK R3 R3 K8 [1]
  ADDK R4 R4 K8 [1]
  JUMP [+1]
  JUMP [+1]
  JUMPBACK [-14]
  DIV R6 R3 R1
  LOADK R7 K9 [0.5]
  JUMPIFLE R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
