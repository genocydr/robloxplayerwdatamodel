MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["TargetReducer"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["RoactInspectorReducer"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["combineReducers"]
  DUPTABLE R5 K12 [{"Targets", "RoactInspector"}]
  SETTABLEKS R2 R5 K10 ["Targets"]
  SETTABLEKS R3 R5 K11 ["RoactInspector"]
  CALL R4 1 -1
  RETURN R4 -1
