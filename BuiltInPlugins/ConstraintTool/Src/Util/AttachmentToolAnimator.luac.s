PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["_animationCallback"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K1 [{"_constraintToolModel"}]
  SETTABLEKS R0 R2 K0 ["_constraintToolModel"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["_animationTask"]
  RETURN R1 1

PROTO_2:
  LOADN R3 0
  LOADN R4 1
  FASTCALL3 MATH_CLAMP R0 R3 R4
  MOVE R2 R0
  GETIMPORT R1 K2 [math.clamp]
  CALL R1 3 1
  MOVE R0 R1
  POWK R2 R0 K3 [3]
  LOADN R7 6
  MUL R6 R7 R0
  SUBK R5 R6 K5 [15]
  MUL R4 R0 R5
  ADDK R3 R4 K4 [10]
  MUL R1 R2 R3
  RETURN R1 1

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R3 R4 K1 ["_lastDragTarget"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R5 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R4 R5 K2 ["_attachmentMover"]
  GETTABLEKS R6 R3 K3 ["mainCFrame"]
  GETTABLEKS R7 R3 K4 ["targetPart"]
  NAMECALL R4 R4 K5 ["moveTo"]
  CALL R4 3 0
  RETURN R0 0
  MOVE R5 R1
  LOADN R8 0
  LOADN R9 1
  FASTCALL3 MATH_CLAMP R5 R8 R9
  MOVE R7 R5
  GETIMPORT R6 K8 [math.clamp]
  CALL R6 3 1
  MOVE R5 R6
  POWK R6 R5 K9 [3]
  LOADN R11 6
  MUL R10 R11 R5
  SUBK R9 R10 K11 [15]
  MUL R8 R5 R9
  ADDK R7 R8 K10 [10]
  MUL R4 R6 R7
  GETTABLEKS R5 R0 K12 ["_animateFrom"]
  GETTABLEKS R6 R5 K13 ["tiltRotate"]
  GETTABLEKS R9 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R8 R9 K14 ["_tiltRotate"]
  MOVE R9 R4
  NAMECALL R6 R6 K15 ["Lerp"]
  CALL R6 3 1
  LOADNIL R7
  GETUPVAL R8 0
  JUMPIFNOT R8 [+10]
  GETTABLEKS R8 R3 K16 ["offsetCFrame"]
  MUL R7 R6 R8
  GETTABLEKS R8 R0 K17 ["_overrideBaseRotation"]
  JUMPIFNOT R8 [+22]
  GETTABLEKS R8 R0 K17 ["_overrideBaseRotation"]
  MUL R7 R8 R7
  JUMP [+18]
  GETTABLEKS R8 R5 K18 ["baseCFrame"]
  GETTABLEKS R10 R3 K18 ["baseCFrame"]
  MOVE R11 R4
  NAMECALL R8 R8 K15 ["Lerp"]
  CALL R8 3 1
  GETTABLEKS R9 R5 K16 ["offsetCFrame"]
  GETTABLEKS R11 R3 K16 ["offsetCFrame"]
  MOVE R12 R4
  NAMECALL R9 R9 K15 ["Lerp"]
  CALL R9 3 1
  MUL R10 R8 R6
  MUL R7 R10 R9
  GETTABLEKS R8 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R11 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R10 R11 K19 ["_attachmentAdornment"]
  MOVE R11 R7
  NAMECALL R8 R8 K20 ["_orientAttachmentAdornment"]
  CALL R8 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R2 R3 K1 ["_lastDragTarget"]
  GETIMPORT R3 K4 [table.freeze]
  DUPTABLE R4 K8 [{"tiltRotate", "baseCFrame", "offsetCFrame"}]
  GETTABLEKS R6 R0 K0 ["_constraintToolModel"]
  GETTABLEKS R5 R6 K9 ["_tiltRotate"]
  SETTABLEKS R5 R4 K5 ["tiltRotate"]
  GETTABLEKS R5 R2 K6 ["baseCFrame"]
  SETTABLEKS R5 R4 K6 ["baseCFrame"]
  GETTABLEKS R5 R2 K7 ["offsetCFrame"]
  SETTABLEKS R5 R4 K7 ["offsetCFrame"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K10 ["_animateFrom"]
  GETTABLEKS R3 R0 K0 ["_constraintToolModel"]
  SETTABLEKS R1 R3 K9 ["_tiltRotate"]
  GETTABLEKS R3 R0 K11 ["_animationTask"]
  LOADK R5 K12 [0.13]
  NAMECALL R3 R3 K13 ["animate"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_animationTask"]
  NAMECALL R1 R1 K1 ["inProgress"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_animationTask"]
  NAMECALL R1 R1 K1 ["commit"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ConstraintTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["SimPreserveOrientationOnFace"]
  NAMECALL R1 R1 K7 ["GetFastFlag"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["DraggerFramework"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R5 R2 K12 ["Utility"]
  GETTABLEKS R4 R5 K13 ["AnimationTask"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K14 ["__index"]
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K16 ["new"]
  DUPCLOSURE R5 K17 [PROTO_2]
  DUPCLOSURE R6 K18 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R6 R4 K19 ["_animationCallback"]
  DUPCLOSURE R6 K20 [PROTO_4]
  SETTABLEKS R6 R4 K21 ["beginAnimation"]
  DUPCLOSURE R6 K22 [PROTO_5]
  SETTABLEKS R6 R4 K23 ["inProgress"]
  DUPCLOSURE R6 K24 [PROTO_6]
  SETTABLEKS R6 R4 K25 ["forceFinish"]
  RETURN R4 1
