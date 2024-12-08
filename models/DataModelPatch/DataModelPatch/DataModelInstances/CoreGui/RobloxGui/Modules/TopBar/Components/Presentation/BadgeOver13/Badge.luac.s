PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+36]
  JUMPIFNOT R0 [+35]
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEKS R4 R0 K4 ["AbsolutePosition"]
  GETTABLEKS R3 R4 K5 ["X"]
  SUBK R2 R3 K3 [2]
  GETTABLEKS R5 R0 K4 ["AbsolutePosition"]
  GETTABLEKS R4 R5 K6 ["Y"]
  SUBK R3 R4 K3 [2]
  CALL R1 2 1
  GETIMPORT R2 K2 [Vector2.new]
  GETTABLEKS R5 R0 K8 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K5 ["X"]
  ADDK R3 R4 K7 [4]
  GETTABLEKS R6 R0 K8 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K6 ["Y"]
  ADDK R4 R5 K7 [4]
  CALL R2 2 1
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["BadgeOver13KeepOutAreaId"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Hover"]
  JUMPIFEQ R1 R4 [+8]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Pressed"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setIsPopupVisible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["isPopupVisible"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R6 6
  GETUPVAL R7 7
  NEWTABLE R8 8 0
  LOADN R9 1
  SETTABLEKS R9 R8 K1 ["BackgroundTransparency"]
  GETIMPORT R9 K5 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K3 ["AutomaticSize"]
  LOADB R9 0
  SETTABLEKS R9 R8 K6 ["isDisabled"]
  GETTABLEKS R9 R0 K7 ["layoutOrder"]
  SETTABLEKS R9 R8 K8 ["LayoutOrder"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["useCallback"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R4
  CAPTURE UPVAL U8
  CALL R9 1 1
  SETTABLEKS R9 R8 K10 ["onStateChanged"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["Event"]
  GETTABLEKS R9 R10 K12 ["Activated"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["useCallback"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R0
  CALL R10 1 1
  SETTABLE R10 R8 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["Change"]
  GETTABLEKS R9 R10 K14 ["AbsoluteSize"]
  SETTABLE R5 R8 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["Change"]
  GETTABLEKS R9 R10 K15 ["AbsolutePosition"]
  SETTABLE R5 R8 R9
  DUPTABLE R9 K18 [{"constraint", "text"}]
  GETUPVAL R10 6
  LOADK R11 K19 ["UISizeConstraint"]
  DUPTABLE R12 K21 [{"MinSize"}]
  GETIMPORT R13 K24 [Vector2.new]
  LOADN R14 32
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["MinSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["constraint"]
  GETUPVAL R10 6
  LOADK R11 K25 ["TextLabel"]
  DUPTABLE R12 K32 [{"AnchorPoint", "Position", "Text", "Font", "TextSize", "BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R13 K24 [Vector2.new]
  LOADK R14 K33 [0.5]
  LOADK R15 K33 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["AnchorPoint"]
  GETIMPORT R13 K36 [UDim2.fromScale]
  LOADK R14 K33 [0.5]
  LOADK R15 K33 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["Position"]
  LOADK R13 K37 ["13+"]
  SETTABLEKS R13 R12 K28 ["Text"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K38 ["default"]
  NAMECALL R13 R13 K39 ["getBold"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["Font"]
  LOADN R13 12
  SETTABLEKS R13 R12 K30 ["TextSize"]
  GETTABLEKS R15 R1 K40 ["Theme"]
  GETTABLEKS R14 R15 K41 ["TextEmphasis"]
  GETTABLEKS R13 R14 K42 ["Color"]
  SETTABLEKS R13 R12 K31 ["BackgroundColor3"]
  JUMPIFNOT R3 [+2]
  LOADK R13 K43 [0.25]
  JUMP [+6]
  GETTABLEKS R15 R1 K40 ["Theme"]
  GETTABLEKS R14 R15 K41 ["TextEmphasis"]
  GETTABLEKS R13 R14 K44 ["Transparency"]
  SETTABLEKS R13 R12 K1 ["BackgroundTransparency"]
  GETIMPORT R13 K5 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K3 ["AutomaticSize"]
  DUPTABLE R13 K48 [{"padding", "shape", "stroke"}]
  GETUPVAL R14 6
  LOADK R15 K49 ["UIPadding"]
  DUPTABLE R16 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 3
  CALL R17 2 1
  SETTABLEKS R17 R16 K50 ["PaddingTop"]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 3
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingBottom"]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["PaddingLeft"]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K53 ["PaddingRight"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["padding"]
  GETUPVAL R14 6
  LOADK R15 K57 ["UICorner"]
  DUPTABLE R16 K59 [{"CornerRadius"}]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K58 ["CornerRadius"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["shape"]
  GETUPVAL R14 6
  LOADK R15 K60 ["UIStroke"]
  DUPTABLE R16 K63 [{"Thickness", "Color", "ApplyStrokeMode"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K61 ["Thickness"]
  GETTABLEKS R19 R1 K40 ["Theme"]
  GETTABLEKS R18 R19 K64 ["BackgroundMuted"]
  GETTABLEKS R17 R18 K42 ["Color"]
  SETTABLEKS R17 R16 K42 ["Color"]
  GETIMPORT R17 K66 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K62 ["ApplyStrokeMode"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K47 ["stroke"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K17 ["text"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Workspace"]
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["RoactUtils"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Workspace"]
  GETTABLEKS R6 R7 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Style"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["AppFonts"]
  GETTABLEKS R4 R1 K12 ["createElement"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K14 ["Core"]
  GETTABLEKS R7 R8 K10 ["Style"]
  GETTABLEKS R6 R7 K15 ["useStyle"]
  GETTABLEKS R9 R5 K14 ["Core"]
  GETTABLEKS R8 R9 K16 ["Control"]
  GETTABLEKS R7 R8 K17 ["Interactable"]
  GETTABLEKS R11 R5 K14 ["Core"]
  GETTABLEKS R10 R11 K16 ["Control"]
  GETTABLEKS R9 R10 K18 ["Enum"]
  GETTABLEKS R8 R9 K19 ["ControlState"]
  GETTABLEKS R11 R2 K20 ["Hooks"]
  GETTABLEKS R10 R11 K21 ["RoactRodux"]
  GETTABLEKS R9 R10 K22 ["useDispatch"]
  GETIMPORT R14 K24 [script]
  GETTABLEKS R13 R14 K25 ["Parent"]
  GETTABLEKS R12 R13 K25 ["Parent"]
  GETTABLEKS R11 R12 K25 ["Parent"]
  GETTABLEKS R10 R11 K25 ["Parent"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R10 K26 ["Flags"]
  GETTABLEKS R12 R13 K27 ["GetFFlagEnableChromeBackwardsSignalAPI"]
  CALL R11 1 1
  CALL R11 0 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R10 K28 ["Actions"]
  GETTABLEKS R13 R14 K29 ["SetKeepOutArea"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R10 K30 ["Constants"]
  CALL R13 1 1
  DUPCLOSURE R14 K31 [PROTO_0]
  SETGLOBAL R14 K32 ["noop"]
  DUPCLOSURE R14 K33 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R14 1
