PROTO_0:
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K0 ["ShouldShow"]
  MOVE R10 R2
  CALL R9 1 1
  JUMPIFNOT R9 [+15]
  GETTABLEKS R10 R8 K1 ["Name"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K5 [{"DefinitionId", "LocationId"}]
  GETTABLEKS R14 R8 K1 ["Name"]
  SETTABLEKS R14 R13 K3 ["DefinitionId"]
  SETTABLEKS R1 R13 K4 ["LocationId"]
  CALL R11 2 1
  SETTABLE R11 R3 R10
  FORGLOOP R4 2 [-21]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Dialogs"]
  GETTABLEKS R3 R4 K11 ["TeachingCallout"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
