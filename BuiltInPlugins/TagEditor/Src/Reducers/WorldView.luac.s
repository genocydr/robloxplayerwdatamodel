PROTO_0:
  ORK R0 R0 K0 [False]
  GETTABLEKS R2 R1 K1 ["type"]
  JUMPIFNOTEQKS R2 K2 ["ToggleWorldView"] [+4]
  GETTABLEKS R2 R1 K3 ["enabled"]
  RETURN R2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
