PROTO_0:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFNOTEQ R6 R1 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-5]
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
