PROTO_0:
  LOADB R1 0
  JUMPIFNOT R0 [+27]
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["SubjectType"]
  GETTABLE R7 R6 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["All"]
  JUMPIFNOTEQ R7 R8 [+12]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["Action"]
  GETTABLE R7 R6 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["UseAction"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADB R1 1
  RETURN R1 1
  FORGLOOP R2 2 [-21]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K7 ["Permissions"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["webKeys"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K10 ["Types"]
  GETTABLEKS R3 R4 K11 ["PermissionTypes"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["isAssetPublic"]
  RETURN R3 1