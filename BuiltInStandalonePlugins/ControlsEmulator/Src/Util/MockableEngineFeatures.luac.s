PROTO_0:
  GETIMPORT R2 K1 [game]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["GetEngineFeature"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  DUPTABLE R3 K1 [{"__index"}]
  DUPCLOSURE R4 K2 [PROTO_0]
  SETTABLEKS R4 R3 K0 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1