PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"MouseDown"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["MouseDown"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["MouseDown"]
  JUMPIFNOT R2 [+34]
  GETTABLEKS R2 R1 K2 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+29]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R5 R1 K9 ["Position"]
  GETTABLEKS R4 R5 K10 ["X"]
  GETTABLEKS R6 R1 K9 ["Position"]
  GETTABLEKS R5 R6 K11 ["Y"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K12 ["AbsolutePosition"]
  SUB R2 R3 R4
  GETTABLEKS R3 R0 K13 ["AbsoluteSize"]
  DIV R2 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["props"]
  GETTABLEKS R3 R4 K15 ["OnHueSaturationChanged"]
  GETTABLEKS R4 R2 K16 ["x"]
  GETTABLEKS R6 R2 K18 ["y"]
  SUBRK R5 R17 K6 ["Vector2"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+65]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["MouseDown"]
  JUMPIFNOT R2 [+58]
  GETTABLEKS R4 R1 K6 ["Position"]
  GETTABLEKS R2 R4 K7 ["X"]
  GETTABLEKS R4 R1 K6 ["Position"]
  GETTABLEKS R3 R4 K8 ["Y"]
  GETIMPORT R5 K11 [Vector2.new]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  GETTABLEKS R6 R0 K12 ["AbsolutePosition"]
  SUB R4 R5 R6
  GETTABLEKS R5 R0 K13 ["AbsoluteSize"]
  DIV R4 R4 R5
  GETIMPORT R5 K11 [Vector2.new]
  GETTABLEKS R7 R4 K14 ["x"]
  LOADN R8 0
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K17 [math.clamp]
  CALL R6 3 1
  GETTABLEKS R8 R4 K18 ["y"]
  LOADN R9 0
  LOADN R10 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K17 [math.clamp]
  CALL R7 3 1
  CALL R5 2 1
  MOVE R4 R5
  GETUPVAL R5 0
  DUPTABLE R7 K19 [{"MouseDown"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K5 ["MouseDown"]
  NAMECALL R5 R5 K20 ["setState"]
  CALL R5 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K21 ["props"]
  GETTABLEKS R5 R6 K22 ["OnHueSaturationChanged"]
  GETTABLEKS R6 R4 K14 ["x"]
  GETTABLEKS R8 R4 K18 ["y"]
  SUBRK R7 R23 K8 ["Y"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K1 [{"MouseDown"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["MouseDown"]
  NAMECALL R1 R0 K2 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onMouseDown"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onInputChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onInputEnded"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["HueSaturationPicker"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["ImageButton"]
  NEWTABLE R5 16 0
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  GETTABLEKS R6 R2 K6 ["Size"]
  SETTABLEKS R6 R5 K6 ["Size"]
  GETTABLEKS R6 R2 K7 ["GradientImage"]
  SETTABLEKS R6 R5 K8 ["Image"]
  GETTABLEKS R6 R2 K9 ["Black"]
  SETTABLEKS R6 R5 K10 ["BackgroundColor3"]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["AutoButtonColor"]
  GETTABLEKS R7 R1 K13 ["Value"]
  SUBRK R6 R12 K7 ["GradientImage"]
  SETTABLEKS R6 R5 K14 ["ImageTransparency"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["Event"]
  GETTABLEKS R6 R7 K16 ["MouseButton1Down"]
  GETTABLEKS R7 R0 K17 ["onMouseDown"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["Event"]
  GETTABLEKS R6 R7 K18 ["InputEnded"]
  GETTABLEKS R7 R0 K19 ["onInputEnded"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["Event"]
  GETTABLEKS R6 R7 K20 ["InputChanged"]
  GETTABLEKS R7 R0 K21 ["onInputChanged"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K23 [{"PositionIndicator"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K24 ["ImageLabel"]
  DUPTABLE R9 K29 [{"Size", "BackgroundTransparency", "Position", "AnchorPoint", "Image", "ImageColor3"}]
  GETTABLEKS R10 R2 K30 ["PositionIndicatorSize"]
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K25 ["BackgroundTransparency"]
  GETIMPORT R10 K33 [UDim2.fromScale]
  GETTABLEKS R11 R1 K34 ["Hue"]
  GETTABLEKS R13 R1 K35 ["Saturation"]
  SUBRK R12 R12 K13 ["Value"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["Position"]
  GETTABLEKS R10 R2 K36 ["PositionIndicatorAnchor"]
  SETTABLEKS R10 R9 K27 ["AnchorPoint"]
  GETTABLEKS R10 R2 K37 ["PositionIndicatorImage"]
  SETTABLEKS R10 R9 K8 ["Image"]
  GETTABLEKS R10 R2 K9 ["Black"]
  SETTABLEKS R10 R9 K28 ["ImageColor3"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["PositionIndicator"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R1 K13 ["PureComponent"]
  LOADK R9 K14 ["HueSaturationPicker"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_3]
  SETTABLEKS R8 R7 K17 ["init"]
  DUPCLOSURE R8 K18 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K19 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K20 [{"Analytics", "Stylizer"}]
  SETTABLEKS R5 R9 K10 ["Analytics"]
  SETTABLEKS R6 R9 K12 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1