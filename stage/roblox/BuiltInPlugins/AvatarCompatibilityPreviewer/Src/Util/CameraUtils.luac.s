PROTO_0:
  GETTABLEKS R5 R0 K1 ["X"]
  POWK R4 R5 K0 [2]
  GETTABLEKS R6 R0 K2 ["Y"]
  POWK R5 R6 K0 [2]
  ADD R3 R4 R5
  GETTABLEKS R5 R0 K3 ["Z"]
  POWK R4 R5 K0 [2]
  ADD R2 R3 R4
  FASTCALL1 MATH_SQRT R2 [+2]
  GETIMPORT R1 K6 [math.sqrt]
  CALL R1 1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getCuboidDiameter"]
  MOVE R5 R0
  CALL R4 1 1
  DIVK R3 R4 K0 [2]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["fitSphereToCamera"]
  MOVE R5 R3
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  LOADK R4 K0 [0.5]
  FASTCALL1 MATH_RAD R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K3 [math.rad]
  CALL R5 1 1
  MUL R3 R4 R5
  LOADN R4 1
  JUMPIFNOTLT R2 R4 [+12]
  FASTCALL1 MATH_TAN R3 [+3]
  MOVE R7 R3
  GETIMPORT R6 K5 [math.tan]
  CALL R6 1 1
  MUL R5 R2 R6
  FASTCALL1 MATH_ATAN R5 [+2]
  GETIMPORT R4 K7 [math.atan]
  CALL R4 1 1
  MOVE R3 R4
  FASTCALL1 MATH_SIN R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K9 [math.sin]
  CALL R5 1 1
  DIV R4 R0 R5
  RETURN R4 1

PROTO_3:
  NAMECALL R3 R1 K0 ["GetBoundingBox"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["fitBoundingBoxToCamera"]
  MOVE R6 R4
  GETTABLEKS R7 R0 K2 ["FieldOfView"]
  MOVE R8 R2
  CALL R5 3 1
  GETTABLEKS R9 R0 K3 ["CFrame"]
  GETTABLEKS R8 R9 K4 ["Rotation"]
  GETTABLEKS R9 R3 K5 ["Position"]
  ADD R7 R8 R9
  GETTABLEKS R10 R0 K3 ["CFrame"]
  GETTABLEKS R9 R10 K6 ["LookVector"]
  MUL R8 R9 R5
  SUB R6 R7 R8
  RETURN R6 1

PROTO_4:
  NAMECALL R3 R1 K0 ["GetBoundingBox"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["fitBoundingBoxToCamera"]
  MOVE R6 R4
  GETTABLEKS R7 R0 K2 ["FieldOfView"]
  MOVE R8 R2
  CALL R5 3 1
  GETIMPORT R6 K5 [CFrame.lookAt]
  GETTABLEKS R10 R3 K6 ["Position"]
  GETTABLEKS R13 R4 K8 ["Magnitude"]
  GETTABLEKS R14 R3 K9 ["LookVector"]
  MUL R12 R13 R14
  MULK R11 R12 K7 [2]
  ADD R9 R10 R11
  GETTABLEKS R12 R4 K8 ["Magnitude"]
  GETTABLEKS R13 R3 K11 ["RightVector"]
  MUL R11 R12 R13
  MULK R10 R11 K10 [1]
  SUB R8 R9 R10
  GETTABLEKS R11 R4 K8 ["Magnitude"]
  GETTABLEKS R12 R3 K13 ["UpVector"]
  MUL R10 R11 R12
  MULK R9 R10 K12 [0.5]
  ADD R7 R8 R9
  GETTABLEKS R8 R3 K6 ["Position"]
  CALL R6 2 1
  GETTABLEKS R9 R6 K14 ["Rotation"]
  GETTABLEKS R10 R3 K6 ["Position"]
  ADD R8 R9 R10
  GETTABLEKS R10 R6 K9 ["LookVector"]
  MUL R9 R10 R5
  SUB R7 R8 R9
  RETURN R7 1

PROTO_5:
  NAMECALL R3 R1 K0 ["GetBoundingBox"]
  CALL R3 1 1
  GETIMPORT R4 K4 [Enum.CameraType.Fixed]
  SETTABLEKS R4 R0 K2 ["CameraType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["getZoomedCFrame"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  SETTABLEKS R4 R0 K6 ["CFrame"]
  SETTABLEKS R3 R0 K7 ["Focus"]
  RETURN R0 0

PROTO_6:
  NAMECALL R2 R1 K0 ["GetBoundingBox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K1 ["Position"]
  NAMECALL R3 R0 K2 ["WorldToScreenPoint"]
  CALL R3 2 2
  NOT R5 R4
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getCuboidDiameter"]
  DUPCLOSURE R1 K2 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["fitBoundingBoxToCamera"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["fitSphereToCamera"]
  DUPCLOSURE R1 K6 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["getZoomedCFrame"]
  DUPCLOSURE R1 K8 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["getAngledAndZoomedCFrame"]
  DUPCLOSURE R1 K10 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["zoomToExtents"]
  DUPCLOSURE R1 K12 [PROTO_6]
  SETTABLEKS R1 R0 K13 ["zoomIsRequired"]
  RETURN R0 1
