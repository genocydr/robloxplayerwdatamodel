PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  GETTABLEKS R5 R0 K2 ["dependencies"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useEffect"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  JUMPIFNOT R1 [+2]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETTABLEKS R4 R0 K4 ["component"]
  GETTABLEKS R5 R0 K5 ["innerProps"]
  CALL R3 2 -1
  RETURN R3 -1

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
  DUPCLOSURE R2 K7 [PROTO_2]
  CAPTURE VAL R1
  RETURN R2 1