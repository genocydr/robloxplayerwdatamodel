PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  SUB R2 R3 R4
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFNOTEQKS R3 K3 ["Move"] [+66]
  GETUPVAL R4 0
  GETUPVAL R5 2
  GETTABLEKS R6 R1 K4 ["SelectedObject"]
  CALL R5 1 1
  SUB R3 R4 R5
  GETUPVAL R4 3
  MOVE R5 R3
  GETTABLEKS R7 R1 K4 ["SelectedObject"]
  GETTABLEKS R6 R7 K5 ["Parent"]
  CALL R4 2 1
  GETUPVAL R5 4
  JUMPIF R5 [+42]
  GETUPVAL R5 5
  JUMPIFEQKN R5 K6 [1] [+7]
  GETUPVAL R5 5
  GETTABLEKS R7 R1 K7 ["ControlPoints"]
  LENGTH R6 R7
  JUMPIFNOTEQ R5 R6 [+34]
  GETUPVAL R6 5
  JUMPIFNOTEQKN R6 K6 [1] [+5]
  GETTABLEKS R6 R1 K7 ["ControlPoints"]
  LENGTH R5 R6
  JUMP [+1]
  LOADN R5 1
  GETTABLEKS R8 R1 K7 ["ControlPoints"]
  GETTABLE R7 R8 R5
  GETTABLEKS R6 R7 K8 ["Position"]
  GETUPVAL R8 6
  MOVE R9 R6
  GETTABLEKS R11 R1 K4 ["SelectedObject"]
  GETTABLEKS R10 R11 K5 ["Parent"]
  CALL R8 2 1
  SUB R7 R3 R8
  GETTABLEKS R9 R7 K9 ["Magnitude"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K12 [math.abs]
  CALL R8 1 1
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K13 ["SnapToPointEpsilon"]
  JUMPIFNOTLT R8 R9 [+2]
  MOVE R4 R6
  GETUPVAL R7 8
  GETUPVAL R8 5
  MOVE R9 R4
  CALL R7 2 -1
  NAMECALL R5 R0 K14 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFNOTEQKS R3 K15 ["AddTangent"] [+21]
  GETTABLEKS R3 R1 K7 ["ControlPoints"]
  GETTABLEKS R5 R1 K16 ["SelectedTangentSide"]
  JUMPIFEQKNIL R5 [+4]
  GETTABLEKS R4 R1 K16 ["SelectedTangentSide"]
  JUMP [+1]
  LOADK R4 K17 ["Left"]
  GETUPVAL R7 9
  GETUPVAL R8 5
  MOVE R9 R4
  MOVE R10 R2
  LOADB R11 0
  LOADB R12 0
  CALL R7 5 -1
  NAMECALL R5 R0 K14 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Thunks"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["ModifyControlPoint"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["SetControlPointTangent"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K3 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K10 ["getUDim2ScaleFromVector2"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R4 K11 ["getAbsolutePosition"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R4 K12 ["getVector2FromUDim2Scale"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K3 ["Src"]
  GETTABLEKS R10 R11 K13 ["Resources"]
  GETTABLEKS R9 R10 K14 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K16 [game]
  LOADK R11 K17 ["PathEditorPathClosedApiUpdate"]
  NAMECALL R9 R9 K18 ["GetFastFlag"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R10 1
