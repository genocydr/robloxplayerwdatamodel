PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableFindReplaceAll"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableFindReplaceAll"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K5 [{"getFFlagEnableFindReplaceAll"}]
  DUPCLOSURE R1 K6 [PROTO_0]
  SETTABLEKS R1 R0 K4 ["getFFlagEnableFindReplaceAll"]
  RETURN R0 1
