MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DeveloperInspectorMigrateToRoact17"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Packages"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R1 K10 ["Roact17"]
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K11 ["_Index"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  GETTABLEKS R3 R4 K12 ["Roact"]
  CALL R2 1 -1
  RETURN R2 -1
