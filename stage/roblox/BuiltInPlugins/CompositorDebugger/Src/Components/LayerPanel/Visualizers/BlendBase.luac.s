PROTO_0:
  GETTABLEKS R1 R0 K0 ["LayerData"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["Overrides"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K1 ["Overrides"]
  GETTABLEKS R1 R2 K2 ["targetPosition"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K1 ["Overrides"]
  GETTABLEKS R1 R2 K2 ["targetPosition"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["LayerData"]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R0 K0 ["LayerData"]
  GETTABLEKS R1 R2 K3 ["props"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["LayerData"]
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K2 ["targetPosition"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["AbsoluteSize"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["size"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["size"]
  JUMPIFEQ R1 R2 [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"size"}]
  SETTABLEKS R1 R4 K2 ["size"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["LayerData"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["SetOverride"]
  GETTABLEKS R3 R1 K3 ["id"]
  NEWTABLE R4 0 1
  LOADK R5 K4 ["targetPosition"]
  SETLIST R4 R5 1 [1]
  LOADNIL R5
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R4 K0 ["DotSize"]
  NAMECALL R2 R2 K1 ["GetAttribute"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+38]
  GETUPVAL R3 1
  DUPTABLE R5 K8 [{"dragging", "delta"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["dragging"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["cursor"]
  GETTABLEKS R9 R10 K10 ["current"]
  GETTABLEKS R8 R9 K11 ["AbsolutePosition"]
  LOADK R10 K12 [0.5]
  GETIMPORT R11 K15 [Vector2.new]
  MOVE R12 R2
  MOVE R13 R2
  CALL R11 2 1
  MUL R9 R10 R11
  ADD R7 R8 R9
  GETIMPORT R8 K15 [Vector2.new]
  GETTABLEKS R10 R1 K16 ["Position"]
  GETTABLEKS R9 R10 K17 ["X"]
  GETTABLEKS R11 R1 K16 ["Position"]
  GETTABLEKS R10 R11 K18 ["Y"]
  CALL R8 2 1
  SUB R6 R7 R8
  SETTABLEKS R6 R5 K7 ["delta"]
  NAMECALL R3 R3 K19 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["LayerData"]
  GETIMPORT R5 K5 [Vector2.new]
  GETTABLEKS R7 R0 K6 ["Position"]
  GETTABLEKS R6 R7 K7 ["X"]
  GETTABLEKS R8 R0 K6 ["Position"]
  GETTABLEKS R7 R8 K8 ["Y"]
  CALL R5 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["state"]
  GETTABLEKS R6 R7 K9 ["delta"]
  ADD R4 R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["dragArea"]
  GETTABLEKS R5 R6 K11 ["current"]
  GETTABLEKS R6 R5 K12 ["AbsolutePosition"]
  GETTABLEKS R7 R5 K13 ["AbsoluteSize"]
  SUB R8 R4 R6
  DIV R9 R8 R7
  GETIMPORT R10 K5 [Vector2.new]
  GETTABLEKS R12 R9 K7 ["X"]
  LOADN R13 0
  LOADN R14 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K16 [math.clamp]
  CALL R11 3 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["props"]
  GETTABLEKS R13 R14 K17 ["Show2D"]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R13 R9 K8 ["Y"]
  LOADN R14 0
  LOADN R15 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K16 [math.clamp]
  CALL R12 3 1
  JUMP [+1]
  LOADK R12 K18 [0.5]
  CALL R10 2 1
  MOVE R9 R10
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["cursor"]
  GETTABLEKS R10 R11 K11 ["current"]
  GETIMPORT R11 K22 [UDim2.fromScale]
  GETTABLEKS R12 R9 K7 ["X"]
  GETTABLEKS R13 R9 K8 ["Y"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["Position"]
  GETIMPORT R10 K5 [Vector2.new]
  GETTABLEKS R11 R9 K7 ["X"]
  GETTABLEKS R13 R9 K8 ["Y"]
  SUBRK R12 R23 K13 ["AbsoluteSize"]
  CALL R10 2 1
  GETTABLEKS R12 R2 K24 ["min"]
  GETTABLEKS R15 R2 K25 ["max"]
  GETTABLEKS R16 R2 K24 ["min"]
  SUB R14 R15 R16
  MUL R13 R10 R14
  ADD R11 R12 R13
  GETTABLEKS R12 R1 K26 ["SetOverride"]
  GETTABLEKS R13 R3 K27 ["id"]
  NEWTABLE R14 0 1
  LOADK R15 K28 ["targetPosition"]
  SETLIST R14 R15 1 [1]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["props"]
  GETTABLEKS R16 R17 K17 ["Show2D"]
  JUMPIFNOT R16 [+2]
  MOVE R15 R11
  JUMP [+2]
  GETTABLEKS R15 R11 K7 ["X"]
  CALL R12 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"dragging"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["dragging"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Show2D"]
  JUMPIFNOT R1 [+56]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K4 ["number"] [+7]
  GETIMPORT R1 K7 [Vector2.new]
  MOVE R2 R0
  LOADN R3 0
  CALL R1 2 -1
  RETURN R1 -1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K5 ["Vector2"] [+2]
  RETURN R0 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K8 ["Vector3"] [+15]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K10 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K11 ["userdata"] [+8]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K10 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K12 ["table"] [+11]
  GETIMPORT R1 K7 [Vector2.new]
  GETTABLEKS R3 R0 K14 ["X"]
  ORK R2 R3 K13 [0]
  GETTABLEKS R4 R0 K15 ["Y"]
  ORK R3 R4 K13 [0]
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K7 [Vector2.new]
  CALL R1 0 -1
  RETURN R1 -1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K4 ["number"] [+7]
  GETIMPORT R1 K7 [Vector2.new]
  MOVE R2 R0
  LOADK R3 K16 [0.5]
  CALL R1 2 -1
  RETURN R1 -1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K5 ["Vector2"] [+22]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K8 ["Vector3"] [+15]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K10 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K11 ["userdata"] [+8]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K10 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K12 ["table"] [+9]
  GETIMPORT R1 K7 [Vector2.new]
  GETTABLEKS R3 R0 K14 ["X"]
  ORK R2 R3 K13 [0]
  LOADK R3 K16 [0.5]
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K7 [Vector2.new]
  LOADN R2 0
  LOADK R3 K16 [0.5]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["make2dPosition"]
  MOVE R4 R0
  CALL R3 1 1
  GETIMPORT R4 K3 [Vector2.new]
  GETTABLEKS R6 R3 K4 ["X"]
  GETTABLEKS R7 R1 K4 ["X"]
  FASTCALL2 MATH_MIN R6 R7 [+3]
  GETIMPORT R5 K7 [math.min]
  CALL R5 2 1
  GETTABLEKS R7 R3 K8 ["Y"]
  GETTABLEKS R8 R1 K8 ["Y"]
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K7 [math.min]
  CALL R6 2 1
  CALL R4 2 1
  GETIMPORT R5 K3 [Vector2.new]
  GETTABLEKS R7 R3 K4 ["X"]
  GETTABLEKS R8 R2 K4 ["X"]
  FASTCALL2 MATH_MAX R7 R8 [+3]
  GETIMPORT R6 K10 [math.max]
  CALL R6 2 1
  GETTABLEKS R8 R3 K8 ["Y"]
  GETTABLEKS R9 R2 K8 ["Y"]
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K10 [math.max]
  CALL R7 2 1
  CALL R5 2 -1
  RETURN R4 -1

PROTO_8:
  JUMPIFNOT R0 [+4]
  MOVE R3 R0
  LOADK R4 K0 ["
"]
  CONCAT R2 R3 R4
  JUMP [+1]
  LOADK R2 K1 [""]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["Show2D"]
  JUMPIFNOT R3 [+11]
  MOVE R3 R2
  GETIMPORT R4 K6 [string.format]
  LOADK R5 K7 ["(%.2f, %.2f)"]
  GETTABLEKS R6 R1 K8 ["X"]
  GETTABLEKS R7 R1 K9 ["Y"]
  CALL R4 3 1
  CONCAT R2 R3 R4
  RETURN R2 1
  MOVE R3 R2
  GETIMPORT R4 K6 [string.format]
  LOADK R5 K10 ["(%.2f)"]
  GETTABLEKS R6 R1 K8 ["X"]
  CALL R4 2 1
  CONCAT R2 R3 R4
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["max"]
  GETTABLEKS R3 R0 K2 ["min"]
  SUB R1 R2 R3
  GETIMPORT R2 K5 [Vector2.new]
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K6 ["X"]
  CALL R3 1 1
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K7 ["Y"]
  CALL R4 1 -1
  CALL R2 -1 1
  GETIMPORT R3 K5 [Vector2.new]
  GETTABLEKS R8 R0 K2 ["min"]
  GETTABLEKS R7 R8 K6 ["X"]
  GETTABLEKS R8 R2 K6 ["X"]
  DIV R6 R7 R8
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K10 [math.floor]
  CALL R5 1 1
  GETTABLEKS R6 R2 K6 ["X"]
  MUL R4 R5 R6
  GETTABLEKS R9 R0 K2 ["min"]
  GETTABLEKS R8 R9 K7 ["Y"]
  GETTABLEKS R9 R2 K7 ["Y"]
  DIV R7 R8 R9
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K10 [math.floor]
  CALL R6 1 1
  GETTABLEKS R7 R2 K7 ["Y"]
  MUL R5 R6 R7
  CALL R3 2 1
  GETIMPORT R4 K5 [Vector2.new]
  GETTABLEKS R9 R0 K1 ["max"]
  GETTABLEKS R8 R9 K6 ["X"]
  GETTABLEKS R9 R2 K6 ["X"]
  DIV R7 R8 R9
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K12 [math.ceil]
  CALL R6 1 1
  GETTABLEKS R7 R2 K6 ["X"]
  MUL R5 R6 R7
  GETTABLEKS R10 R0 K1 ["max"]
  GETTABLEKS R9 R10 K7 ["Y"]
  GETTABLEKS R10 R2 K7 ["Y"]
  DIV R8 R9 R10
  FASTCALL1 MATH_CEIL R8 [+2]
  GETIMPORT R7 K12 [math.ceil]
  CALL R7 1 1
  GETTABLEKS R8 R2 K7 ["Y"]
  MUL R6 R7 R8
  CALL R4 2 1
  MOVE R5 R3
  MOVE R6 R4
  MOVE R7 R2
  RETURN R5 3

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["dragArea"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["cursor"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onCanvasAbsoluteSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["resetOverride"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onDragStarted"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onDragMoved"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onDragEnded"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["make2dPosition"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["updateMinMax"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["makeTooltipText"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K12 ["calculateGrid"]
  LOADB R3 1
  NAMECALL R1 R0 K13 ["calculateExtents"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["LayerData"]
  GETTABLEKS R4 R2 K3 ["dragging"]
  NEWTABLE R5 1 0
  JUMPIFNOT R3 [+217]
  GETTABLEKS R6 R3 K4 ["children"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  LOADK R12 K5 ["Dot_"]
  GETTABLEKS R13 R10 K6 ["name"]
  JUMPIF R13 [+5]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R14 R9
  GETIMPORT R13 K8 [tostring]
  CALL R13 1 1
  CONCAT R11 R12 R13
  JUMPIFNOT R10 [+8]
  GETTABLEKS R13 R10 K9 ["linkData"]
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R10 K9 ["linkData"]
  GETTABLEKS R12 R13 K10 ["position"]
  JUMP [+1]
  LOADNIL R12
  JUMPIFNOT R12 [+64]
  GETTABLEKS R13 R0 K11 ["make2dPosition"]
  MOVE R14 R12
  CALL R13 1 1
  GETTABLEKS R16 R2 K12 ["min"]
  SUB R15 R13 R16
  GETTABLEKS R17 R2 K13 ["max"]
  GETTABLEKS R18 R2 K12 ["min"]
  SUB R16 R17 R18
  DIV R14 R15 R16
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["createElement"]
  LOADK R16 K15 ["ImageButton"]
  NEWTABLE R17 4 0
  LOADN R18 4
  SETTABLEKS R18 R17 K16 ["LayoutOrder"]
  GETIMPORT R18 K19 [UDim2.fromScale]
  GETTABLEKS R19 R14 K20 ["X"]
  GETTABLEKS R21 R14 K22 ["Y"]
  SUBRK R20 R21 K21 [1]
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["Position"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K24 ["Dot"]
  SETTABLEKS R18 R17 K25 ["ZIndex"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K26 ["Tag"]
  LOADK R19 K24 ["Dot"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K28 [{"Tooltip"}]
  JUMPIF R4 [+15]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  GETUPVAL R20 2
  DUPTABLE R21 K30 [{"Text"}]
  GETTABLEKS R22 R0 K31 ["makeTooltipText"]
  GETTABLEKS R23 R10 K6 ["name"]
  MOVE R24 R13
  CALL R22 2 1
  SETTABLEKS R22 R21 K29 ["Text"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K27 ["Tooltip"]
  CALL R15 3 1
  SETTABLE R15 R5 R11
  FORGLOOP R6 2 [-86]
  GETTABLEKS R6 R3 K0 ["props"]
  JUMPIFNOT R6 [+119]
  GETTABLEKS R7 R3 K0 ["props"]
  GETTABLEKS R6 R7 K32 ["targetPosition"]
  JUMPIFNOT R6 [+114]
  GETTABLEKS R7 R1 K33 ["Overrides"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R1 K33 ["Overrides"]
  GETTABLEKS R6 R7 K32 ["targetPosition"]
  JUMPIF R6 [+1]
  LOADNIL R6
  MOVE R7 R6
  JUMPIF R7 [+4]
  GETTABLEKS R8 R3 K0 ["props"]
  GETTABLEKS R7 R8 K32 ["targetPosition"]
  GETTABLEKS R8 R0 K11 ["make2dPosition"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R11 R2 K12 ["min"]
  SUB R10 R8 R11
  GETTABLEKS R12 R2 K13 ["max"]
  GETTABLEKS R13 R2 K12 ["min"]
  SUB R11 R12 R13
  DIV R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  LOADK R11 K15 ["ImageButton"]
  NEWTABLE R12 8 0
  LOADN R13 4
  SETTABLEKS R13 R12 K16 ["LayoutOrder"]
  GETIMPORT R13 K19 [UDim2.fromScale]
  GETTABLEKS R14 R9 K20 ["X"]
  GETTABLEKS R16 R9 K22 ["Y"]
  SUBRK R15 R21 K16 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["Position"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K34 ["Cursor"]
  SETTABLEKS R13 R12 K25 ["ZIndex"]
  GETTABLEKS R13 R0 K35 ["cursor"]
  SETTABLEKS R13 R12 K36 ["ref"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K37 ["Event"]
  GETTABLEKS R13 R14 K38 ["InputBegan"]
  GETTABLEKS R14 R0 K39 ["onDragStarted"]
  SETTABLE R14 R12 R13
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K26 ["Tag"]
  GETUPVAL R14 3
  LOADK R15 K24 ["Dot"]
  LOADK R16 K34 ["Cursor"]
  JUMPIFNOT R6 [+2]
  LOADK R17 K40 ["Override"]
  JUMP [+1]
  LOADNIL R17
  CALL R14 3 1
  SETTABLE R14 R12 R13
  JUMPIFNOT R4 [+33]
  DUPTABLE R13 K42 [{"DragListener", "Tooltip"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K45 [{"OnDragMoved", "OnDragEnded"}]
  GETTABLEKS R17 R0 K46 ["onDragMoved"]
  SETTABLEKS R17 R16 K43 ["OnDragMoved"]
  GETTABLEKS R17 R0 K47 ["onDragEnded"]
  SETTABLEKS R17 R16 K44 ["OnDragEnded"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["DragListener"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K30 [{"Text"}]
  GETTABLEKS R17 R0 K31 ["makeTooltipText"]
  LOADNIL R18
  MOVE R19 R8
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["Tooltip"]
  JUMP [+1]
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R5 K35 ["cursor"]
  RETURN R5 1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["FrameBuffer"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R3 R1 K3 ["ShowTrail"]
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R2 K4 ["dragging"]
  JUMPIF R3 [+8]
  GETTABLEKS R3 R1 K5 ["Overrides"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R1 K5 ["Overrides"]
  GETTABLEKS R3 R4 K6 ["targetPosition"]
  JUMPIFNOT R3 [+3]
  NEWTABLE R3 0 0
  RETURN R3 1
  NEWTABLE R3 0 0
  LOADNIL R4
  LOADN R7 0
  GETUPVAL R8 0
  GETTABLEKS R5 R8 K7 ["BLEND_TRAIL_LENGTH"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R9 R1 K2 ["FrameBuffer"]
  GETTABLEKS R12 R1 K9 ["HistoryFrame"]
  ORK R11 R12 K8 [1]
  ADD R10 R11 R7
  GETTABLE R8 R9 R10
  MOVE R9 R8
  JUMPIFNOT R9 [+10]
  GETTABLEKS R9 R8 K10 ["layerMap"]
  JUMPIFNOT R9 [+7]
  GETTABLEKS R10 R8 K10 ["layerMap"]
  GETTABLEKS R12 R1 K11 ["LayerData"]
  GETTABLEKS R11 R12 K12 ["id"]
  GETTABLE R9 R10 R11
  MOVE R10 R9
  JUMPIFNOT R10 [+4]
  GETTABLEKS R11 R9 K0 ["props"]
  GETTABLEKS R10 R11 K6 ["targetPosition"]
  JUMPIFNOT R10 [+111]
  JUMPIFNOT R4 [+110]
  GETTABLEKS R11 R2 K13 ["size"]
  JUMPIFNOT R11 [+107]
  GETTABLEKS R11 R0 K14 ["make2dPosition"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R14 R2 K15 ["min"]
  SUB R13 R11 R14
  GETTABLEKS R15 R2 K16 ["max"]
  GETTABLEKS R16 R2 K15 ["min"]
  SUB R14 R15 R16
  DIV R12 R13 R14
  GETIMPORT R13 K19 [Vector2.new]
  GETTABLEKS R16 R2 K13 ["size"]
  GETTABLEKS R15 R16 K20 ["X"]
  GETTABLEKS R16 R12 K20 ["X"]
  MUL R14 R15 R16
  GETTABLEKS R17 R2 K13 ["size"]
  GETTABLEKS R16 R17 K21 ["Y"]
  GETTABLEKS R18 R12 K21 ["Y"]
  SUBRK R17 R8 K18 ["new"]
  MUL R15 R16 R17
  CALL R13 2 1
  MOVE R11 R13
  GETTABLEKS R13 R0 K14 ["make2dPosition"]
  MOVE R14 R4
  CALL R13 1 1
  GETTABLEKS R16 R2 K15 ["min"]
  SUB R15 R13 R16
  GETTABLEKS R17 R2 K16 ["max"]
  GETTABLEKS R18 R2 K15 ["min"]
  SUB R16 R17 R18
  DIV R14 R15 R16
  GETIMPORT R15 K19 [Vector2.new]
  GETTABLEKS R18 R2 K13 ["size"]
  GETTABLEKS R17 R18 K20 ["X"]
  GETTABLEKS R18 R14 K20 ["X"]
  MUL R16 R17 R18
  GETTABLEKS R19 R2 K13 ["size"]
  GETTABLEKS R18 R19 K21 ["Y"]
  GETTABLEKS R20 R14 K21 ["Y"]
  SUBRK R19 R8 K20 ["X"]
  MUL R17 R18 R19
  CALL R15 2 1
  MOVE R13 R15
  LOADK R16 K22 ["Trail"]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R18 R7
  GETIMPORT R17 K24 [tostring]
  CALL R17 1 1
  CONCAT R15 R16 R17
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K25 ["createElement"]
  GETUPVAL R17 2
  NEWTABLE R18 8 0
  SETTABLEKS R13 R18 K26 ["From"]
  SETTABLEKS R11 R18 K27 ["To"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K22 ["Trail"]
  SETTABLEKS R19 R18 K28 ["ZIndex"]
  GETIMPORT R19 K30 [Color3.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["Color"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K7 ["BLEND_TRAIL_LENGTH"]
  DIV R19 R7 R20
  SETTABLEKS R19 R18 K32 ["Transparency"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K33 ["Tag"]
  LOADK R20 K22 ["Trail"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLE R16 R3 R15
  MOVE R4 R10
  FORNLOOP R5
  RETURN R3 1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K2 ["calculateGrid"]
  CALL R4 0 3
  LOADN R7 1
  GETTABLEKS R8 R1 K3 ["Show2D"]
  JUMPIFNOT R8 [+80]
  GETTABLEKS R10 R4 K4 ["Y"]
  GETTABLEKS R8 R5 K4 ["Y"]
  GETTABLEKS R9 R6 K4 ["Y"]
  FORNPREP R8
  GETIMPORT R11 K7 [string.format]
  LOADK R12 K8 ["Y%d"]
  MOVE R13 R7
  CALL R11 2 1
  ADDK R7 R7 K9 [1]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 1
  NEWTABLE R14 8 0
  GETIMPORT R15 K13 [Vector2.new]
  LOADN R16 0
  LOADK R17 K14 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["AnchorPoint"]
  GETIMPORT R15 K17 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Size"]
  GETIMPORT R15 K20 [UDim2.fromScale]
  LOADN R16 0
  GETTABLEKS R21 R2 K21 ["min"]
  GETTABLEKS R20 R21 K4 ["Y"]
  SUB R19 R10 R20
  GETTABLEKS R22 R2 K22 ["max"]
  GETTABLEKS R21 R22 K4 ["Y"]
  GETTABLEKS R23 R2 K21 ["min"]
  GETTABLEKS R22 R23 K4 ["Y"]
  SUB R20 R21 R22
  DIV R18 R19 R20
  SUBRK R17 R9 K18 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Position"]
  JUMPIFNOTEQKN R10 K24 [0] [+5]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K25 ["Axis"]
  JUMP [+3]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K26 ["Grid"]
  SETTABLEKS R15 R14 K27 ["ZIndex"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K28 ["Tag"]
  JUMPIFNOTEQKN R10 K24 [0] [+3]
  LOADK R16 K25 ["Axis"]
  JUMP [+1]
  LOADK R16 K26 ["Grid"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLE R12 R3 R11
  FORNLOOP R8
  LOADN R7 1
  GETTABLEKS R10 R4 K29 ["X"]
  GETTABLEKS R8 R5 K29 ["X"]
  GETTABLEKS R9 R6 K29 ["X"]
  FORNPREP R8
  GETIMPORT R11 K7 [string.format]
  LOADK R12 K30 ["X%d"]
  MOVE R13 R7
  CALL R11 2 1
  ADDK R7 R7 K9 [1]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 1
  NEWTABLE R14 8 0
  GETIMPORT R15 K13 [Vector2.new]
  LOADK R16 K14 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["AnchorPoint"]
  GETIMPORT R15 K17 [UDim2.new]
  LOADN R16 0
  LOADN R17 1
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Size"]
  GETIMPORT R15 K20 [UDim2.fromScale]
  GETTABLEKS R19 R2 K21 ["min"]
  GETTABLEKS R18 R19 K29 ["X"]
  SUB R17 R10 R18
  GETTABLEKS R20 R2 K22 ["max"]
  GETTABLEKS R19 R20 K29 ["X"]
  GETTABLEKS R21 R2 K21 ["min"]
  GETTABLEKS R20 R21 K29 ["X"]
  SUB R18 R19 R20
  DIV R16 R17 R18
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Position"]
  JUMPIFNOTEQKN R10 K24 [0] [+5]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K25 ["Axis"]
  JUMP [+3]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K26 ["Grid"]
  SETTABLEKS R15 R14 K27 ["ZIndex"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K28 ["Tag"]
  JUMPIFNOTEQKN R10 K24 [0] [+3]
  LOADK R16 K25 ["Axis"]
  JUMP [+1]
  LOADK R16 K26 ["Grid"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLE R12 R3 R11
  FORNLOOP R8
  RETURN R3 1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["LayerData"]
  JUMPIF R1 [+5]
  GETTABLEKS R5 R0 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["min"]
  JUMPIF R4 [+10]
  GETIMPORT R4 K6 [Vector2.new]
  LOADK R5 K7 [∞]
  GETTABLEKS R7 R2 K8 ["Show2D"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K7 [∞]
  JUMP [+1]
  LOADN R6 0
  CALL R4 2 1
  JUMPIF R1 [+5]
  GETTABLEKS R6 R0 K2 ["state"]
  GETTABLEKS R5 R6 K9 ["max"]
  JUMPIF R5 [+10]
  GETIMPORT R5 K6 [Vector2.new]
  LOADK R6 K10 [-∞]
  GETTABLEKS R8 R2 K8 ["Show2D"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K10 [-∞]
  JUMP [+1]
  LOADN R7 1
  CALL R5 2 1
  JUMPIFNOT R3 [+72]
  GETTABLEKS R7 R2 K1 ["LayerData"]
  JUMPIF R7 [+2]
  LOADNIL R6
  JUMP [+29]
  GETTABLEKS R7 R2 K11 ["Overrides"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R8 R2 K11 ["Overrides"]
  GETTABLEKS R7 R8 K12 ["targetPosition"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R2 K11 ["Overrides"]
  GETTABLEKS R6 R7 K12 ["targetPosition"]
  JUMP [+16]
  GETTABLEKS R7 R2 K1 ["LayerData"]
  JUMPIFNOT R7 [+12]
  GETTABLEKS R8 R2 K1 ["LayerData"]
  GETTABLEKS R7 R8 K0 ["props"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R8 R2 K1 ["LayerData"]
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K12 ["targetPosition"]
  JUMP [+1]
  LOADNIL R6
  JUMPIFNOT R6 [+8]
  GETTABLEKS R7 R0 K13 ["updateMinMax"]
  MOVE R8 R6
  MOVE R9 R4
  MOVE R10 R5
  CALL R7 3 2
  MOVE R4 R7
  MOVE R5 R8
  GETTABLEKS R7 R3 K14 ["children"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K15 ["linkData"]
  JUMPIFNOT R12 [+16]
  GETTABLEKS R13 R11 K15 ["linkData"]
  GETTABLEKS R12 R13 K16 ["position"]
  JUMPIFNOT R12 [+11]
  GETTABLEKS R12 R0 K13 ["updateMinMax"]
  GETTABLEKS R14 R11 K15 ["linkData"]
  GETTABLEKS R13 R14 K16 ["position"]
  MOVE R14 R4
  MOVE R15 R5
  CALL R12 3 2
  MOVE R4 R12
  MOVE R5 R13
  FORGLOOP R7 2 [-20]
  GETTABLEKS R7 R0 K2 ["state"]
  GETTABLEKS R6 R7 K3 ["min"]
  JUMPIFNOTEQ R4 R6 [+7]
  GETTABLEKS R7 R0 K2 ["state"]
  GETTABLEKS R6 R7 K9 ["max"]
  JUMPIFEQ R5 R6 [+9]
  DUPTABLE R8 K17 [{"min", "max"}]
  SETTABLEKS R4 R8 K3 ["min"]
  SETTABLEKS R5 R8 K9 ["max"]
  NAMECALL R6 R0 K18 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["LayerData"]
  GETTABLEKS R4 R1 K1 ["LayerData"]
  JUMPIFEQ R3 R4 [+24]
  GETTABLEKS R4 R1 K1 ["LayerData"]
  NOT R3 R4
  JUMPIF R3 [+15]
  GETTABLEKS R3 R2 K1 ["LayerData"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R5 R2 K1 ["LayerData"]
  GETTABLEKS R4 R5 K2 ["id"]
  GETTABLEKS R6 R1 K1 ["LayerData"]
  GETTABLEKS R5 R6 K2 ["id"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  MOVE R6 R3
  NAMECALL R4 R0 K3 ["calculateExtents"]
  CALL R4 2 0
  RETURN R0 0

PROTO_16:
  LOADB R3 1
  NAMECALL R1 R0 K0 ["calculateExtents"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R2 0
  NAMECALL R3 R0 K1 ["createDots"]
  CALL R3 1 1
  NAMECALL R4 R0 K2 ["createTrail"]
  CALL R4 1 -1
  CALL R2 -1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K5 [{"ZIndex"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Grid"]
  SETTABLEKS R6 R5 K4 ["ZIndex"]
  NAMECALL R6 R0 K7 ["createAxes"]
  CALL R6 1 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K6 ["Grid"]
  GETTABLEKS R3 R1 K8 ["Overrides"]
  JUMPIFNOT R3 [+22]
  GETTABLEKS R4 R1 K8 ["Overrides"]
  GETTABLEKS R3 R4 K9 ["targetPosition"]
  JUMPIFNOT R3 [+17]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K10 ["ImageButton"]
  NEWTABLE R5 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Event"]
  GETTABLEKS R6 R7 K12 ["Activated"]
  GETTABLEKS R7 R0 K13 ["resetOverride"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["Reset"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  NEWTABLE R5 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["Tag"]
  LOADK R7 K16 ["BlendBase"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K18 [{"Canvas"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 2
  NEWTABLE R9 4 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K19 ["Change"]
  GETTABLEKS R10 R11 K20 ["AbsoluteSize"]
  GETTABLEKS R11 R0 K21 ["onCanvasAbsoluteSizeChanged"]
  SETTABLE R11 R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["Tag"]
  GETTABLEKS R12 R1 K22 ["Show2D"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K23 ["Blend2D"]
  JUMP [+1]
  LOADK R11 K24 ["Blend1D"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R0 K25 ["dragArea"]
  SETTABLEKS R10 R9 K26 ["ref"]
  MOVE R10 R2
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["Canvas"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_18:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K1 [{"SetOverride"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetOverride"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["join"]
  GETTABLEKS R6 R4 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETTABLEKS R8 R6 K14 ["Analytics"]
  GETTABLEKS R9 R6 K15 ["Localization"]
  GETTABLEKS R10 R4 K16 ["Styling"]
  GETTABLEKS R11 R10 K17 ["joinTags"]
  GETTABLEKS R12 R4 K18 ["UI"]
  GETTABLEKS R13 R12 K19 ["Pane"]
  GETTABLEKS R14 R12 K20 ["Tooltip"]
  GETTABLEKS R15 R12 K21 ["DragListener"]
  GETTABLEKS R17 R0 K22 ["Src"]
  GETTABLEKS R16 R17 K23 ["Components"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K24 ["Line"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K25 ["Thunks"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K26 ["SetOverride"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K22 ["Src"]
  GETTABLEKS R20 R21 K27 ["Util"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R20 K28 ["Constants"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R20 K29 ["findInterval"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETIMPORT R26 K1 [script]
  GETTABLEKS R25 R26 K30 ["Parent"]
  GETTABLEKS R24 R25 K31 ["styles"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R26 R0 K22 ["Src"]
  GETTABLEKS R25 R26 K32 ["Types"]
  CALL R24 1 1
  DUPTABLE R25 K38 [{"Grid", "Axis", "Dot", "Trail", "Cursor"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K33 ["Grid"]
  LOADN R26 2
  SETTABLEKS R26 R25 K34 ["Axis"]
  LOADN R26 3
  SETTABLEKS R26 R25 K35 ["Dot"]
  LOADN R26 4
  SETTABLEKS R26 R25 K36 ["Trail"]
  LOADN R26 5
  SETTABLEKS R26 R25 K37 ["Cursor"]
  GETTABLEKS R26 R1 K39 ["PureComponent"]
  LOADK R28 K40 ["BlendBase"]
  NAMECALL R26 R26 K41 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K42 [PROTO_0]
  DUPCLOSURE R28 K43 [PROTO_10]
  CAPTURE VAL R1
  CAPTURE VAL R23
  CAPTURE VAL R22
  SETTABLEKS R28 R26 K44 ["init"]
  DUPCLOSURE R28 K45 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R15
  SETTABLEKS R28 R26 K46 ["createDots"]
  DUPCLOSURE R28 K47 [PROTO_12]
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R25
  SETTABLEKS R28 R26 K48 ["createTrail"]
  DUPCLOSURE R28 K49 [PROTO_13]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R25
  SETTABLEKS R28 R26 K50 ["createAxes"]
  DUPCLOSURE R28 K51 [PROTO_14]
  SETTABLEKS R28 R26 K52 ["calculateExtents"]
  DUPCLOSURE R28 K53 [PROTO_15]
  SETTABLEKS R28 R26 K54 ["didUpdate"]
  DUPCLOSURE R28 K55 [PROTO_16]
  SETTABLEKS R28 R26 K56 ["didMount"]
  DUPCLOSURE R28 K57 [PROTO_17]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R25
  SETTABLEKS R28 R26 K58 ["render"]
  MOVE R28 R7
  DUPTABLE R29 K59 [{"Analytics", "Localization"}]
  SETTABLEKS R8 R29 K14 ["Analytics"]
  SETTABLEKS R9 R29 K15 ["Localization"]
  CALL R28 1 1
  MOVE R29 R26
  CALL R28 1 1
  MOVE R26 R28
  DUPCLOSURE R28 K60 [PROTO_19]
  CAPTURE VAL R19
  GETTABLEKS R29 R2 K61 ["connect"]
  LOADNIL R30
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 1
  MOVE R26 R29
  RETURN R26 1
