PROTO_0:
  JUMPIFEQKNIL R1 [+3]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["isUGCBundleType"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOTEQKB R3 FALSE [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getAllowedAssetTypesByBundleType"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 1
  GETIMPORT R4 K3 [pairs]
  NAMECALL R5 R0 K4 ["GetChildren"]
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_NEXT R4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
  GETTABLEKS R12 R8 K6 ["Name"]
  GETTABLE R10 R11 R12
  GETTABLE R9 R3 R10
  JUMPIFNOTEQKNIL R9 [+9]
  LOADK R11 K7 ["MeshPart"]
  NAMECALL R9 R8 K8 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  NAMECALL R9 R8 K9 ["Destroy"]
  CALL R9 1 0
  FORGLOOP R4 2 [-18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["sanitizeForValidation"]
  MOVE R5 R0
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["EnableUGCBundleUnknownMeshPartFiltering"]
  NAMECALL R1 R1 K7 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R0 K10 ["Core"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["AssetConfigConstants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["AssetConfigUtil"]
  CALL R3 1 1
  NEWTABLE R4 1 0
  JUMPIFNOT R1 [+5]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K15 ["removeAllUGCBUndleUnknownMeshParts"]
  RETURN R4 1