PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"manageableGroups"}]
  GETTABLEKS R5 R1 K1 ["manageableGroups"]
  SETTABLEKS R5 R4 K1 ["manageableGroups"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K11 ["Types"]
  GETTABLEKS R6 R7 K12 ["GroupTypes"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K13 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetManageableGroups"]
  CALL R6 1 1
  DUPTABLE R7 K16 [{"manageableGroups"}]
  LOADNIL R8
  SETTABLEKS R8 R7 K15 ["manageableGroups"]
  GETTABLEKS R8 R2 K17 ["createReducer"]
  MOVE R9 R7
  NEWTABLE R10 1 0
  GETTABLEKS R11 R6 K18 ["name"]
  DUPCLOSURE R12 K19 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
