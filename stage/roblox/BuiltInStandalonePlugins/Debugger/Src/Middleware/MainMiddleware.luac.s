MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["AnalyticsHolder"]
  CALL R3 1 1
  NEWTABLE R4 1 0
  SETTABLEKS R3 R4 K11 ["analytics"]
  GETTABLEKS R5 R2 K12 ["ThunkWithArgsMiddleware"]
  MOVE R6 R4
  CALL R5 1 1
  NEWTABLE R6 0 1
  MOVE R7 R5
  SETLIST R6 R7 1 [1]
  RETURN R6 1
