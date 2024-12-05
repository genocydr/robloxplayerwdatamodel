PROTO_0:
  DUPTABLE R1 K3 [{"correctionState", "correctedQuery", "userQuery"}]
  GETTABLEKS R2 R0 K0 ["correctionState"]
  JUMPIF R2 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["AutocorrectResponseState"]
  GETTABLEKS R2 R3 K5 ["NoCorrection"]
  SETTABLEKS R2 R1 K0 ["correctionState"]
  GETTABLEKS R3 R0 K1 ["correctedQuery"]
  ORK R2 R3 K6 [""]
  SETTABLEKS R2 R1 K1 ["correctedQuery"]
  GETTABLEKS R3 R0 K2 ["userQuery"]
  ORK R2 R3 K6 [""]
  SETTABLEKS R2 R1 K2 ["userQuery"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K11 ["Types"]
  GETTABLEKS R5 R6 K12 ["AutocorrectTypes"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Name"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R4
  CALL R5 2 -1
  RETURN R5 -1
