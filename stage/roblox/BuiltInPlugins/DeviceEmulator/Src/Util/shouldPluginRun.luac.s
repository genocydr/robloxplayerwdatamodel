PROTO_0:
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["DebugFlags"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["RunningUnderCLI"]
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K7 ["hasInternalPermission"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
