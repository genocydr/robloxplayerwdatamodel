PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+8]
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  GETTABLE R3 R4 R0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["StatusPropertyMap"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1