PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["text"]
  GETTABLEKS R2 R0 K1 ["Text"]
  JUMPIFEQ R1 R2 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["onUpdate"]
  GETTABLEKS R2 R0 K1 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETTABLEKS R5 R2 K0 ["Font"]
  GETTABLEKS R4 R5 K1 ["Body"]
  GETTABLEKS R3 R4 K0 ["Font"]
  GETTABLEKS R6 R2 K0 ["Font"]
  GETTABLEKS R5 R6 K2 ["BaseSize"]
  GETTABLEKS R6 R1 K3 ["TextEntryRelativeSize"]
  MUL R4 R5 R6
  GETTABLEKS R5 R2 K4 ["Theme"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createElement"]
  LOADK R7 K6 ["Frame"]
  DUPTABLE R8 K11 [{"Size", "BackgroundTransparency", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R15 40
  GETTABLEKS R16 R1 K16 ["TextOffset"]
  ADD R14 R15 R16
  ADDK R13 R14 K15 [20]
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  GETTABLEKS R11 R2 K4 ["Theme"]
  GETTABLEKS R10 R11 K17 ["BackgroundDefault"]
  GETTABLEKS R9 R10 K18 ["Transparency"]
  SETTABLEKS R9 R8 K8 ["BackgroundTransparency"]
  GETTABLEKS R11 R2 K4 ["Theme"]
  GETTABLEKS R10 R11 K17 ["BackgroundDefault"]
  GETTABLEKS R9 R10 K19 ["Color"]
  SETTABLEKS R9 R8 K9 ["BackgroundColor3"]
  GETIMPORT R9 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K10 ["AutomaticSize"]
  DUPTABLE R9 K26 [{"UIPadding", "UICorner", "AbuseReportsText"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K23 ["UIPadding"]
  DUPTABLE R12 K31 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["PaddingLeft"]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["PaddingRight"]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["PaddingTop"]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["PaddingBottom"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["UIPadding"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K24 ["UICorner"]
  DUPTABLE R12 K35 [{"CornerRadius"}]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["CornerRadius"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["UICorner"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K36 ["TextBox"]
  NEWTABLE R12 32 0
  GETIMPORT R13 K14 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R18 40
  GETTABLEKS R19 R1 K16 ["TextOffset"]
  ADD R17 R18 R19
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  GETIMPORT R13 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K10 ["AutomaticSize"]
  GETIMPORT R13 K14 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K37 ["Position"]
  GETIMPORT R13 K39 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["AnchorPoint"]
  GETTABLEKS R14 R5 K17 ["BackgroundDefault"]
  GETTABLEKS R13 R14 K19 ["Color"]
  SETTABLEKS R13 R12 K9 ["BackgroundColor3"]
  GETTABLEKS R13 R0 K41 ["placeholderText"]
  SETTABLEKS R13 R12 K42 ["PlaceholderText"]
  SETTABLEKS R3 R12 K0 ["Font"]
  GETTABLEKS R13 R0 K43 ["text"]
  SETTABLEKS R13 R12 K44 ["Text"]
  SETTABLEKS R4 R12 K45 ["TextSize"]
  GETTABLEKS R14 R5 K46 ["TextDefault"]
  GETTABLEKS R13 R14 K19 ["Color"]
  SETTABLEKS R13 R12 K47 ["TextColor3"]
  GETTABLEKS R14 R5 K46 ["TextDefault"]
  GETTABLEKS R13 R14 K18 ["Transparency"]
  SETTABLEKS R13 R12 K48 ["TextTransparency"]
  GETIMPORT R13 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K49 ["TextXAlignment"]
  GETIMPORT R13 K54 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K52 ["TextYAlignment"]
  GETTABLEKS R14 R5 K17 ["BackgroundDefault"]
  GETTABLEKS R13 R14 K18 ["Transparency"]
  SETTABLEKS R13 R12 K8 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K55 ["BorderSizePixel"]
  LOADN R13 1
  SETTABLEKS R13 R12 K56 ["LayoutOrder"]
  LOADB R13 0
  SETTABLEKS R13 R12 K57 ["RichText"]
  LOADB R13 1
  SETTABLEKS R13 R12 K58 ["MultiLine"]
  LOADB R13 1
  SETTABLEKS R13 R12 K59 ["TextWrapped"]
  LOADB R13 0
  SETTABLEKS R13 R12 K60 ["ClearTextOnFocus"]
  LOADB R13 1
  SETTABLEKS R13 R12 K61 ["OverlayNativeInput"]
  LOADB R13 1
  SETTABLEKS R13 R12 K62 ["ClipsDescendants"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K63 ["Event"]
  GETTABLEKS R13 R14 K64 ["FocusLost"]
  DUPCLOSURE R14 K65 [PROTO_0]
  SETTABLE R14 R12 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K63 ["Event"]
  GETTABLEKS R13 R14 K66 ["Focused"]
  DUPCLOSURE R14 K67 [PROTO_1]
  SETTABLE R14 R12 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K68 ["Change"]
  GETTABLEKS R13 R14 K69 ["AbsoluteSize"]
  DUPCLOSURE R14 K70 [PROTO_2]
  SETTABLE R14 R12 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K68 ["Change"]
  GETTABLEKS R13 R14 K44 ["Text"]
  NEWCLOSURE R14 P3
  CAPTURE VAL R0
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["AbuseReportsText"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K13 ["Core"]
  GETTABLEKS R5 R6 K14 ["Style"]
  GETTABLEKS R4 R5 K15 ["useStyle"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K16 ["Utility"]
  GETTABLEKS R6 R7 K17 ["getMenuItemSizings"]
  CALL R5 1 1
  DUPCLOSURE R6 K18 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R6 1