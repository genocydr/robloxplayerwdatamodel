PROTO_0:
  PREPVARARGS 2
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["log"]
  RETURN R0 1
