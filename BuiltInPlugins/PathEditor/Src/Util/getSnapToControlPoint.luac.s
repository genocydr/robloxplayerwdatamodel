PROTO_0:
  MOVE R3 R0
  GETUPVAL R4 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 1
  MOVE R11 R0
  MOVE R12 R9
  MOVE R13 R2
  MOVE R14 R4
  CALL R10 4 2
  JUMPIFNOT R10 [+3]
  GETTABLEKS R3 R9 K0 ["Position"]
  MOVE R4 R11
  FORGLOOP R5 2 [-11]
  RETURN R3 1

PROTO_1:
  MOVE R4 R0
  GETUPVAL R5 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R11 1
  MOVE R12 R0
  MOVE R13 R10
  MOVE R14 R2
  MOVE R15 R3
  MOVE R16 R5
  CALL R11 5 2
  JUMPIFNOT R11 [+3]
  GETTABLEKS R4 R10 K0 ["Position"]
  MOVE R5 R12
  FORGLOOP R6 2 [-12]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["getUDim2FromVector2"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K6 ["getPositionMatchesControlPoint"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K7 ["rotateUDim2Point"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Resources"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["SnapToPointEpsilon"]
  GETIMPORT R6 K13 [game]
  LOADK R8 K14 ["PathEditorRotation"]
  NAMECALL R6 R6 K15 ["GetFastFlag"]
  CALL R6 2 1
  LOADNIL R7
  JUMPIFNOT R6 [+4]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R7 1
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R7 1