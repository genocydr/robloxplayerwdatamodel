PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["IsHovered"]
  GETTABLEKS R3 R1 K2 ["Icon"]
  GETTABLEKS R4 R1 K3 ["Name"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["OnActivated"]
  GETTABLEKS R7 R1 K6 ["Size"]
  GETTABLEKS R8 R1 K7 ["TextPadding"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K8 ["Stylizer"]
  GETTABLEKS R12 R9 K9 ["assetConfig"]
  GETTABLEKS R11 R12 K10 ["packagePermissions"]
  GETTABLEKS R10 R11 K11 ["searchBar"]
  JUMPIFNOT R2 [+2]
  LOADN R11 100
  JUMP [+1]
  LOADN R11 50
  MINUS R12 R11
  JUMPIFNOT R2 [+7]
  GETTABLEKS R15 R10 K12 ["dropDown"]
  GETTABLEKS R14 R15 K13 ["hovered"]
  GETTABLEKS R13 R14 K14 ["backgroundColor"]
  JUMPIF R13 [+4]
  GETTABLEKS R14 R10 K12 ["dropDown"]
  GETTABLEKS R13 R14 K14 ["backgroundColor"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K17 [{"Size", "LayoutOrder", "OnClick"}]
  SETTABLEKS R7 R16 K6 ["Size"]
  SETTABLEKS R5 R16 K4 ["LayoutOrder"]
  SETTABLEKS R6 R16 K16 ["OnClick"]
  DUPTABLE R17 K19 [{"Container"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K20 ["Frame"]
  DUPTABLE R20 K23 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency"}]
  GETIMPORT R21 K26 [Enum.AutomaticSize.X]
  SETTABLEKS R21 R20 K21 ["AutomaticSize"]
  LOADN R21 0
  SETTABLEKS R21 R20 K4 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K22 ["BackgroundTransparency"]
  DUPTABLE R21 K30 [{"UIListLayout", "IconFrame", "TextLabel"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K15 ["createElement"]
  LOADK R23 K27 ["UIListLayout"]
  DUPTABLE R24 K33 [{"SortOrder", "FillDirection"}]
  GETIMPORT R25 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K31 ["SortOrder"]
  GETIMPORT R25 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K32 ["FillDirection"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K27 ["UIListLayout"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K15 ["createElement"]
  LOADK R23 K20 ["Frame"]
  DUPTABLE R24 K37 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["BackgroundTransparency"]
  LOADN R25 1
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  GETIMPORT R25 K40 [UDim2.new]
  LOADN R26 0
  LOADN R27 50
  LOADN R28 0
  LOADN R29 50
  CALL R25 4 1
  SETTABLEKS R25 R24 K6 ["Size"]
  DUPTABLE R25 K42 [{"SmallIcon"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K15 ["createElement"]
  LOADK R27 K20 ["Frame"]
  DUPTABLE R28 K47 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
  GETIMPORT R29 K49 [Vector2.new]
  LOADK R30 K50 [0.5]
  LOADK R31 K50 [0.5]
  CALL R29 2 1
  SETTABLEKS R29 R28 K43 ["AnchorPoint"]
  SETTABLEKS R13 R28 K44 ["BackgroundColor3"]
  LOADN R29 0
  SETTABLEKS R29 R28 K45 ["BorderSizePixel"]
  GETIMPORT R29 K40 [UDim2.new]
  LOADK R30 K50 [0.5]
  LOADN R31 0
  LOADK R32 K50 [0.5]
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K46 ["Position"]
  GETIMPORT R29 K40 [UDim2.new]
  LOADN R30 0
  LOADN R31 32
  LOADN R32 0
  LOADN R33 32
  CALL R29 4 1
  SETTABLEKS R29 R28 K6 ["Size"]
  DUPTABLE R29 K51 [{"Icon"}]
  SETTABLEKS R3 R29 K2 ["Icon"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K41 ["SmallIcon"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K28 ["IconFrame"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K15 ["createElement"]
  LOADK R23 K29 ["TextLabel"]
  DUPTABLE R24 K59 [{"BackgroundTransparency", "ClipsDescendants", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["BackgroundTransparency"]
  LOADB R25 1
  SETTABLEKS R25 R24 K52 ["ClipsDescendants"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K60 ["FONT"]
  SETTABLEKS R25 R24 K53 ["Font"]
  LOADN R25 2
  SETTABLEKS R25 R24 K4 ["LayoutOrder"]
  GETIMPORT R25 K40 [UDim2.new]
  LOADN R26 1
  MOVE R27 R12
  LOADN R28 0
  LOADN R29 50
  CALL R25 4 1
  SETTABLEKS R25 R24 K6 ["Size"]
  SETTABLEKS R4 R24 K54 ["Text"]
  GETTABLEKS R26 R9 K9 ["assetConfig"]
  GETTABLEKS R25 R26 K61 ["textColor"]
  SETTABLEKS R25 R24 K55 ["TextColor3"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K62 ["FONT_SIZE_TITLE"]
  SETTABLEKS R25 R24 K56 ["TextSize"]
  LOADB R25 1
  SETTABLEKS R25 R24 K57 ["TextWrapped"]
  GETIMPORT R25 K64 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K58 ["TextXAlignment"]
  DUPTABLE R25 K66 [{"Padding"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K15 ["createElement"]
  LOADK R27 K67 ["UIPadding"]
  DUPTABLE R28 K69 [{"PaddingLeft"}]
  GETIMPORT R29 K71 [UDim.new]
  LOADN R30 0
  MOVE R31 R8
  CALL R29 2 1
  SETTABLEKS R29 R28 K68 ["PaddingLeft"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K65 ["Padding"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K29 ["TextLabel"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K18 ["Container"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K7 ["Core"]
  GETTABLEKS R3 R4 K8 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K9 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETTABLEKS R9 R5 K13 ["UI"]
  GETTABLEKS R8 R9 K14 ["Button"]
  GETTABLEKS R9 R2 K15 ["PureComponent"]
  LOADK R11 K16 ["CollaboratorSearchItem"]
  NAMECALL R9 R9 K17 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K19 ["render"]
  MOVE R10 R7
  DUPTABLE R11 K21 [{"Stylizer"}]
  GETTABLEKS R12 R6 K20 ["Stylizer"]
  SETTABLEKS R12 R11 K20 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
