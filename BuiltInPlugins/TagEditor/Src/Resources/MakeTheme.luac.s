PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R3 1
  DUPTABLE R4 K2 [{"VisibleIcon", "VisibleOffIcon"}]
  LOADK R5 K3 ["rbxasset://textures/TagEditor/VisibilityOnDarkTheme.png"]
  SETTABLEKS R5 R4 K0 ["VisibleIcon"]
  LOADK R5 K4 ["rbxasset://textures/TagEditor/VisibilityOffDarkTheme.png"]
  SETTABLEKS R5 R4 K1 ["VisibleOffIcon"]
  CALL R2 2 1
  GETUPVAL R3 0
  GETUPVAL R4 2
  DUPTABLE R5 K2 [{"VisibleIcon", "VisibleOffIcon"}]
  LOADK R6 K5 ["rbxasset://textures/TagEditor/VisibilityOnLightTheme.png"]
  SETTABLEKS R6 R5 K0 ["VisibleIcon"]
  LOADK R6 K6 ["rbxasset://textures/TagEditor/VisibilityOffLightTheme.png"]
  SETTABLEKS R6 R5 K1 ["VisibleOffIcon"]
  CALL R3 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["mock"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  JUMP [+7]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["new"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 4
  NAMECALL R4 R1 K9 ["extend"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["join"]
  GETTABLEKS R4 R1 K9 ["Style"]
  GETTABLEKS R6 R4 K10 ["Themes"]
  GETTABLEKS R5 R6 K11 ["StudioTheme"]
  GETTABLEKS R7 R4 K10 ["Themes"]
  GETTABLEKS R6 R7 K12 ["DarkTheme"]
  GETTABLEKS R8 R4 K10 ["Themes"]
  GETTABLEKS R7 R8 K13 ["LightTheme"]
  GETTABLEKS R9 R4 K10 ["Themes"]
  GETTABLEKS R8 R9 K14 ["BaseTheme"]
  GETTABLEKS R9 R4 K15 ["StyleKey"]
  GETTABLEKS R10 R4 K16 ["ComponentSymbols"]
  LOADK R13 K17 ["Icon"]
  NAMECALL R11 R10 K18 ["add"]
  CALL R11 2 0
  NEWTABLE R11 32 0
  GETTABLEKS R12 R10 K19 ["Checkbox"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K19 ["Checkbox"]
  GETTABLE R14 R8 R15
  DUPTABLE R15 K21 [{"Spacing"}]
  LOADN R16 8
  SETTABLEKS R16 R15 K20 ["Spacing"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K22 ["IconButton"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K22 ["IconButton"]
  GETTABLE R14 R8 R15
  NEWTABLE R15 8 0
  GETTABLEKS R16 R9 K23 ["TextPrimary"]
  SETTABLEKS R16 R15 K24 ["IconColor"]
  GETTABLEKS R16 R9 K25 ["ForegroundMain"]
  SETTABLEKS R16 R15 K26 ["Background"]
  GETIMPORT R16 K29 [UDim2.fromOffset]
  LOADN R17 24
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["Size"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K22 ["IconButton"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K32 [{"IconColor", "BackgroundStyle", "Size"}]
  GETTABLEKS R19 R9 K33 ["ButtonDisabled"]
  SETTABLEKS R19 R18 K24 ["IconColor"]
  LOADK R19 K34 ["None"]
  SETTABLEKS R19 R18 K31 ["BackgroundStyle"]
  GETIMPORT R19 K29 [UDim2.fromOffset]
  LOADN R20 24
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["&Disabled"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K22 ["IconButton"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K37 [{"TextColor", "IconColor", "Size"}]
  GETTABLEKS R19 R9 K38 ["DimmedText"]
  SETTABLEKS R19 R18 K36 ["TextColor"]
  GETTABLEKS R19 R9 K23 ["TextPrimary"]
  SETTABLEKS R19 R18 K24 ["IconColor"]
  GETIMPORT R19 K29 [UDim2.fromOffset]
  LOADN R20 24
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["&ToggledOff"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K40 ["Pane"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K40 ["Pane"]
  GETTABLE R14 R8 R15
  NEWTABLE R15 8 0
  MOVE R16 R3
  GETTABLEKS R19 R10 K40 ["Pane"]
  GETTABLE R18 R8 R19
  GETTABLEKS R17 R18 K41 ["&BorderBox"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K42 ["&ColorTextInput"]
  MOVE R16 R3
  GETTABLEKS R19 R10 K40 ["Pane"]
  GETTABLE R18 R8 R19
  GETTABLEKS R17 R18 K41 ["&BorderBox"]
  DUPTABLE R18 K44 [{"Background", "Border"}]
  GETTABLEKS R19 R9 K45 ["SubBackground"]
  SETTABLEKS R19 R18 K26 ["Background"]
  DUPTABLE R19 K47 [{"Color"}]
  GETTABLEKS R20 R9 K45 ["SubBackground"]
  SETTABLEKS R20 R19 K46 ["Color"]
  SETTABLEKS R19 R18 K43 ["Border"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K48 ["&WStyle"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K40 ["Pane"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K49 [{"Background"}]
  GETTABLEKS R19 R9 K45 ["SubBackground"]
  SETTABLEKS R19 R18 K26 ["Background"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["&PaneHover"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K40 ["Pane"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K49 [{"Background"}]
  GETTABLEKS R19 R9 K51 ["ActionSelected"]
  SETTABLEKS R19 R18 K26 ["Background"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K52 ["&SelectedTag"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K40 ["Pane"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K49 [{"Background"}]
  GETTABLEKS R19 R9 K53 ["ButtonHover"]
  SETTABLEKS R19 R18 K26 ["Background"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K54 ["&ButtonHover"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K55 ["SearchBar"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K55 ["SearchBar"]
  GETTABLE R14 R8 R15
  NEWTABLE R15 1 0
  DUPTABLE R16 K57 [{"Padding"}]
  DUPTABLE R17 K62 [{"Top", "Left", "Bottom", "Right"}]
  LOADN R18 255
  SETTABLEKS R18 R17 K58 ["Top"]
  LOADN R18 5
  SETTABLEKS R18 R17 K59 ["Left"]
  LOADN R18 255
  SETTABLEKS R18 R17 K60 ["Bottom"]
  LOADN R18 5
  SETTABLEKS R18 R17 K61 ["Right"]
  SETTABLEKS R17 R16 K56 ["Padding"]
  SETTABLEKS R16 R15 K63 ["&	"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K64 ["SimpleTab"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K64 ["SimpleTab"]
  GETTABLE R14 R8 R15
  DUPTABLE R15 K57 [{"Padding"}]
  DUPTABLE R16 K65 [{"Left", "Top", "Bottom", "Right"}]
  LOADN R17 12
  SETTABLEKS R17 R16 K59 ["Left"]
  LOADN R17 4
  SETTABLEKS R17 R16 K58 ["Top"]
  LOADN R17 0
  SETTABLEKS R17 R16 K60 ["Bottom"]
  LOADN R17 12
  SETTABLEKS R17 R16 K61 ["Right"]
  SETTABLEKS R16 R15 K56 ["Padding"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K66 ["TextInput"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K66 ["TextInput"]
  GETTABLE R14 R8 R15
  NEWTABLE R15 1 0
  MOVE R16 R3
  GETTABLEKS R18 R10 K66 ["TextInput"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K68 [{"BottomTextSpacing"}]
  LOADN R19 254
  SETTABLEKS R19 R18 K67 ["BottomTextSpacing"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["&ColorTextInput"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K69 ["TextLabel"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K69 ["TextLabel"]
  GETTABLE R14 R8 R15
  NEWTABLE R15 2 0
  MOVE R16 R3
  GETTABLEKS R18 R10 K69 ["TextLabel"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K70 [{"TextColor"}]
  GETTABLEKS R19 R9 K71 ["TextSecondary"]
  SETTABLEKS R19 R18 K36 ["TextColor"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K72 ["&ButtonText"]
  MOVE R16 R3
  GETTABLEKS R18 R10 K69 ["TextLabel"]
  GETTABLE R17 R8 R18
  DUPTABLE R18 K70 [{"TextColor"}]
  GETTABLEKS R19 R9 K23 ["TextPrimary"]
  SETTABLEKS R19 R18 K36 ["TextColor"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K73 ["&ButtonTextHover"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R10 K74 ["Tooltip"]
  MOVE R13 R3
  GETTABLEKS R15 R10 K74 ["Tooltip"]
  GETTABLE R14 R8 R15
  DUPTABLE R15 K76 [{"ShowDelay"}]
  LOADK R16 K77 [0.7]
  SETTABLEKS R16 R15 K75 ["ShowDelay"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  DUPTABLE R12 K81 [{"Padding", "Spacing", "BodySize", "BodySpacing", "PickerSize"}]
  LOADN R13 10
  SETTABLEKS R13 R12 K56 ["Padding"]
  LOADN R13 8
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 176
  CALL R13 4 1
  SETTABLEKS R13 R12 K78 ["BodySize"]
  LOADN R13 8
  SETTABLEKS R13 R12 K79 ["BodySpacing"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K80 ["PickerSize"]
  SETTABLEKS R12 R11 K85 ["ColorPicker"]
  DUPTABLE R12 K87 [{"Size", "Spacing", "TextInputSize"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 96
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 7
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K86 ["TextInputSize"]
  SETTABLEKS R12 R11 K88 ["ColorPropertiesPanel"]
  DUPTABLE R12 K100 [{"Size", "Spacing", "TitleTextSize", "ButtonsPaneSize", "ButtonsPaneSpacing", "ButtonsPanePadding", "CancelButtonSize", "SubmitButtonSize", "ColorPaneSize", "ColorPaneSpacing", "ColorPanePadding", "ColorPreviewSize", "PreviewTitleSize"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 72
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 5
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 208
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K89 ["TitleTextSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K90 ["ButtonsPaneSize"]
  LOADN R13 10
  SETTABLEKS R13 R12 K91 ["ButtonsPaneSpacing"]
  LOADN R13 8
  SETTABLEKS R13 R12 K92 ["ButtonsPanePadding"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K93 ["CancelButtonSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K94 ["SubmitButtonSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 26
  CALL R13 4 1
  SETTABLEKS R13 R12 K95 ["ColorPaneSize"]
  LOADN R13 10
  SETTABLEKS R13 R12 K96 ["ColorPaneSpacing"]
  LOADN R13 2
  SETTABLEKS R13 R12 K97 ["ColorPanePadding"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K98 ["ColorPreviewSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K99 ["PreviewTitleSize"]
  SETTABLEKS R12 R11 K101 ["ColorPickerTopControls"]
  DUPTABLE R12 K108 [{"Size", "Black", "White", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K111 [Color3.fromRGB]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K102 ["Black"]
  GETIMPORT R13 K111 [Color3.fromRGB]
  LOADN R14 1
  LOADN R15 1
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K103 ["White"]
  LOADK R13 K112 ["rbxasset://textures/TagEditor/lineargradient.png"]
  SETTABLEKS R13 R12 K104 ["GradientImage"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 0
  LOADN R15 8
  LOADN R16 0
  LOADN R17 5
  CALL R13 4 1
  SETTABLEKS R13 R12 K105 ["PositionIndicatorSize"]
  GETIMPORT R13 K114 [Vector2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K106 ["PositionIndicatorAnchor"]
  LOADK R13 K115 ["rbxasset://textures/TagEditor/trianglesmall.png"]
  SETTABLEKS R13 R12 K107 ["PositionIndicatorImage"]
  SETTABLEKS R12 R11 K116 ["ColorValueSlider"]
  DUPTABLE R12 K122 [{"Padding", "SkinToneModifierPaneSize", "SkinToneModifierButtonSize", "GridSize", "GridPosition", "GridCellSize"}]
  LOADN R13 2
  SETTABLEKS R13 R12 K56 ["Padding"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 248
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K117 ["SkinToneModifierPaneSize"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K118 ["SkinToneModifierButtonSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 224
  CALL R13 4 1
  SETTABLEKS R13 R12 K119 ["GridSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 32
  CALL R13 4 1
  SETTABLEKS R13 R12 K120 ["GridPosition"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 28
  LOADN R15 28
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["GridCellSize"]
  SETTABLEKS R12 R11 K123 ["EmojiPage"]
  DUPTABLE R12 K124 [{"Size", "Black", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADN R16 1
  LOADN R17 206
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K111 [Color3.fromRGB]
  LOADN R14 1
  LOADN R15 1
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K102 ["Black"]
  LOADK R13 K125 ["rbxasset://textures/TagEditor/huesatgradient.png"]
  SETTABLEKS R13 R12 K104 ["GradientImage"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 0
  LOADN R15 8
  LOADN R16 0
  LOADN R17 5
  CALL R13 4 1
  SETTABLEKS R13 R12 K105 ["PositionIndicatorSize"]
  GETIMPORT R13 K114 [Vector2.new]
  LOADK R14 K84 [0.5]
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K106 ["PositionIndicatorAnchor"]
  LOADK R13 K115 ["rbxasset://textures/TagEditor/trianglesmall.png"]
  SETTABLEKS R13 R12 K107 ["PositionIndicatorImage"]
  SETTABLEKS R12 R11 K126 ["HueSaturationPicker"]
  GETTABLEKS R12 R10 K17 ["Icon"]
  NEWTABLE R13 8 0
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  LOADN R14 20
  SETTABLEKS R14 R13 K127 ["TextSize"]
  GETTABLEKS R14 R9 K23 ["TextPrimary"]
  SETTABLEKS R14 R13 K24 ["IconColor"]
  DUPTABLE R14 K128 [{"IconColor", "Size", "Padding", "TextSize"}]
  GETTABLEKS R15 R9 K23 ["TextPrimary"]
  SETTABLEKS R15 R14 K24 ["IconColor"]
  GETIMPORT R15 K29 [UDim2.fromOffset]
  LOADN R16 32
  LOADN R17 32
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K56 ["Padding"]
  LOADN R15 30
  SETTABLEKS R15 R14 K127 ["TextSize"]
  SETTABLEKS R14 R13 K129 ["&WorldView"]
  DUPTABLE R14 K128 [{"IconColor", "Size", "Padding", "TextSize"}]
  GETTABLEKS R15 R9 K23 ["TextPrimary"]
  SETTABLEKS R15 R14 K24 ["IconColor"]
  GETIMPORT R15 K29 [UDim2.fromOffset]
  LOADN R16 28
  LOADN R17 28
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K56 ["Padding"]
  LOADN R15 28
  SETTABLEKS R15 R14 K127 ["TextSize"]
  SETTABLEKS R14 R13 K130 ["&Preview"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K140 [{"TopPaneSize", "TopPaneSpacing", "CancelButtonSize", "TitleTextSize", "MiddlePaneSize", "PreviewIconSize", "SearchBarPaneSize", "SearchBarSize", "IconNameTextSize", "TabsPaneSize", "SelectedPageSize"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 144
  CALL R13 4 1
  SETTABLEKS R13 R12 K131 ["TopPaneSize"]
  LOADN R13 2
  SETTABLEKS R13 R12 K132 ["TopPaneSpacing"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 65
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K93 ["CancelButtonSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K89 ["TitleTextSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 48
  CALL R13 4 1
  SETTABLEKS R13 R12 K133 ["MiddlePaneSize"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 40
  LOADN R15 40
  CALL R13 2 1
  SETTABLEKS R13 R12 K134 ["PreviewIconSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 212
  LOADN R16 0
  LOADN R17 48
  CALL R13 4 1
  SETTABLEKS R13 R12 K135 ["SearchBarPaneSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K136 ["SearchBarSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K137 ["IconNameTextSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 36
  CALL R13 4 1
  SETTABLEKS R13 R12 K138 ["TabsPaneSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 112
  CALL R13 4 1
  SETTABLEKS R13 R12 K139 ["SelectedPageSize"]
  SETTABLEKS R12 R11 K141 ["IconPicker"]
  DUPTABLE R12 K143 [{"GridCellSize", "GridCellPadding"}]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["GridCellSize"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 4
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K142 ["GridCellPadding"]
  SETTABLEKS R12 R11 K144 ["IconsPage"]
  DUPTABLE R12 K148 [{"SplitPaneMinsizes", "SplitPaneInitialSizes", "SoloTopPaneSize"}]
  NEWTABLE R13 0 2
  GETIMPORT R14 K150 [UDim.new]
  LOADN R15 0
  LOADN R16 100
  CALL R14 2 1
  GETIMPORT R15 K150 [UDim.new]
  LOADN R16 0
  LOADN R17 60
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  SETTABLEKS R13 R12 K145 ["SplitPaneMinsizes"]
  NEWTABLE R13 0 2
  GETIMPORT R14 K150 [UDim.new]
  LOADK R15 K84 [0.5]
  LOADN R16 0
  CALL R14 2 1
  GETIMPORT R15 K150 [UDim.new]
  LOADK R16 K84 [0.5]
  LOADN R17 0
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  SETTABLEKS R13 R12 K146 ["SplitPaneInitialSizes"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 221
  CALL R13 4 1
  SETTABLEKS R13 R12 K147 ["SoloTopPaneSize"]
  SETTABLEKS R12 R11 K151 ["MainGui"]
  DUPTABLE R12 K156 [{"Height", "EditingSize", "TextInputSize", "Spacing", "IconColorHover", "IconColor", "IconSize"}]
  LOADN R13 30
  SETTABLEKS R13 R12 K152 ["Height"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K153 ["EditingSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 226
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K86 ["TextInputSize"]
  LOADN R13 9
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETTABLEKS R13 R9 K157 ["ActionEnabled"]
  SETTABLEKS R13 R12 K154 ["IconColorHover"]
  GETTABLEKS R13 R9 K157 ["ActionEnabled"]
  SETTABLEKS R13 R12 K24 ["IconColor"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K155 ["IconSize"]
  SETTABLEKS R12 R11 K158 ["NewTagTextInput"]
  DUPTABLE R12 K165 [{"SearchBarPaneSize", "SearchBarSize", "NewTagRowSize", "WorldViewButtonSize", "ButtonSize", "Padding", "RowSpacing", "NewGroupIcon", "DeleteIcon"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 248
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K135 ["SearchBarPaneSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 196
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K136 ["SearchBarSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 248
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K159 ["NewTagRowSize"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 98
  LOADN R15 30
  CALL R13 2 1
  SETTABLEKS R13 R12 K160 ["WorldViewButtonSize"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K161 ["ButtonSize"]
  DUPTABLE R13 K166 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R14 5
  SETTABLEKS R14 R13 K58 ["Top"]
  LOADN R14 5
  SETTABLEKS R14 R13 K60 ["Bottom"]
  LOADN R14 0
  SETTABLEKS R14 R13 K59 ["Left"]
  LOADN R14 0
  SETTABLEKS R14 R13 K61 ["Right"]
  SETTABLEKS R13 R12 K56 ["Padding"]
  LOADN R13 9
  SETTABLEKS R13 R12 K162 ["RowSpacing"]
  LOADK R13 K167 ["rbxasset://textures/TagEditor/Folder.png"]
  SETTABLEKS R13 R12 K163 ["NewGroupIcon"]
  LOADK R13 K168 ["rbxasset://textures/TagEditor/Trash.png"]
  SETTABLEKS R13 R12 K164 ["DeleteIcon"]
  SETTABLEKS R12 R11 K169 ["TagTopPane"]
  DUPTABLE R12 K171 [{"Size", "Spacing", "CanvasYPadding"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 196
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K150 [UDim.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Spacing"]
  LOADN R13 14
  SETTABLEKS R13 R12 K170 ["CanvasYPadding"]
  SETTABLEKS R12 R11 K172 ["TagListView"]
  DUPTABLE R12 K186 [{"CheckboxSize", "Size", "Spacing", "TextSize", "GroupTextSize", "AssignIcon", "AssignIconColor", "UnassignIcon", "UnassignIconColor", "PaddingIndented", "PaddingUnindented", "EditAssignmentsIcon", "StopAssigningIcon", "ArrowColor", "ClosedArrowImage", "OpenArrowImage"}]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K173 ["CheckboxSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 9
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 156
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K127 ["TextSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 148
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K174 ["GroupTextSize"]
  LOADK R13 K187 ["rbxasset://textures/TagEditor/Add.png"]
  SETTABLEKS R13 R12 K175 ["AssignIcon"]
  GETTABLEKS R13 R9 K188 ["PrimaryMain"]
  SETTABLEKS R13 R12 K176 ["AssignIconColor"]
  LOADK R13 K189 ["rbxasset://textures/TagEditor/Remove.png"]
  SETTABLEKS R13 R12 K177 ["UnassignIcon"]
  GETTABLEKS R13 R9 K190 ["ErrorMain"]
  SETTABLEKS R13 R12 K178 ["UnassignIconColor"]
  DUPTABLE R13 K166 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K58 ["Top"]
  LOADN R14 0
  SETTABLEKS R14 R13 K60 ["Bottom"]
  LOADN R14 14
  SETTABLEKS R14 R13 K59 ["Left"]
  LOADN R14 0
  SETTABLEKS R14 R13 K61 ["Right"]
  SETTABLEKS R13 R12 K179 ["PaddingIndented"]
  LOADN R13 0
  SETTABLEKS R13 R12 K180 ["PaddingUnindented"]
  LOADK R13 K191 ["rbxasset://textures/TagEditor/Compose.png"]
  SETTABLEKS R13 R12 K181 ["EditAssignmentsIcon"]
  LOADK R13 K192 ["rbxasset://textures/TagEditor/Close.png"]
  SETTABLEKS R13 R12 K182 ["StopAssigningIcon"]
  GETTABLEKS R13 R9 K23 ["TextPrimary"]
  SETTABLEKS R13 R12 K183 ["ArrowColor"]
  LOADK R13 K193 ["rbxassetid://2606412312"]
  SETTABLEKS R13 R12 K184 ["ClosedArrowImage"]
  LOADK R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
  SETTABLEKS R13 R12 K185 ["OpenArrowImage"]
  SETTABLEKS R12 R11 K195 ["TagListRow"]
  DUPTABLE R12 K199 [{"Size", "Spacing", "SpacerSize", "TextSize", "IconColorActive", "IconColorInactive", "EditAssignmentsIcon", "StopAssigningIcon", "ArrowColor", "ClosedArrowImage", "OpenArrowImage"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 9
  SETTABLEKS R13 R12 K20 ["Spacing"]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K196 ["SpacerSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 148
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K127 ["TextSize"]
  GETTABLEKS R13 R9 K200 ["TextContrast"]
  SETTABLEKS R13 R12 K197 ["IconColorActive"]
  GETTABLEKS R13 R9 K157 ["ActionEnabled"]
  SETTABLEKS R13 R12 K198 ["IconColorInactive"]
  LOADK R13 K191 ["rbxasset://textures/TagEditor/Compose.png"]
  SETTABLEKS R13 R12 K181 ["EditAssignmentsIcon"]
  LOADK R13 K192 ["rbxasset://textures/TagEditor/Close.png"]
  SETTABLEKS R13 R12 K182 ["StopAssigningIcon"]
  GETTABLEKS R13 R9 K23 ["TextPrimary"]
  SETTABLEKS R13 R12 K183 ["ArrowColor"]
  LOADK R13 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
  SETTABLEKS R13 R12 K184 ["ClosedArrowImage"]
  LOADK R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
  SETTABLEKS R13 R12 K185 ["OpenArrowImage"]
  SETTABLEKS R12 R11 K202 ["TagListGroupRow"]
  DUPTABLE R12 K203 [{"CheckboxSize", "Size", "TextSize", "AssignIcon", "AssignIconColor", "Spacing", "PaddingIndented"}]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 24
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K173 ["CheckboxSize"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 156
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K127 ["TextSize"]
  LOADK R13 K187 ["rbxasset://textures/TagEditor/Add.png"]
  SETTABLEKS R13 R12 K175 ["AssignIcon"]
  GETTABLEKS R13 R9 K188 ["PrimaryMain"]
  SETTABLEKS R13 R12 K176 ["AssignIconColor"]
  LOADN R13 9
  SETTABLEKS R13 R12 K20 ["Spacing"]
  DUPTABLE R13 K166 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K58 ["Top"]
  LOADN R14 0
  SETTABLEKS R14 R13 K60 ["Bottom"]
  LOADN R14 14
  SETTABLEKS R14 R13 K59 ["Left"]
  LOADN R14 0
  SETTABLEKS R14 R13 K61 ["Right"]
  SETTABLEKS R13 R12 K179 ["PaddingIndented"]
  SETTABLEKS R12 R11 K204 ["TagListUnknownRow"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K205 ["TagSettingsPane"]
  DUPTABLE R12 K214 [{"Size", "CanvasSize", "Padding", "Spacing", "GroupRow", "VisualizeAsRow", "TaggedInstancesRow", "ShowTextRow", "AlwaysOnTopRow", "IconRow", "ColorRow"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 226
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 164
  CALL R13 4 1
  SETTABLEKS R13 R12 K206 ["CanvasSize"]
  LOADN R13 4
  SETTABLEKS R13 R12 K56 ["Padding"]
  GETIMPORT R13 K150 [UDim.new]
  LOADN R14 0
  LOADN R15 2
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Spacing"]
  DUPTABLE R13 K218 [{"Size", "Icon", "UnassignIcon", "NewGroupIcon", "DropDownWidth", "ItemHeight", "MaxHeight"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 24
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  LOADK R14 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
  SETTABLEKS R14 R13 K17 ["Icon"]
  LOADK R14 K189 ["rbxasset://textures/TagEditor/Remove.png"]
  SETTABLEKS R14 R13 K177 ["UnassignIcon"]
  LOADK R14 K187 ["rbxasset://textures/TagEditor/Add.png"]
  SETTABLEKS R14 R13 K163 ["NewGroupIcon"]
  LOADN R14 170
  SETTABLEKS R14 R13 K215 ["DropDownWidth"]
  LOADN R14 30
  SETTABLEKS R14 R13 K216 ["ItemHeight"]
  LOADN R14 150
  SETTABLEKS R14 R13 K217 ["MaxHeight"]
  SETTABLEKS R13 R12 K207 ["GroupRow"]
  DUPTABLE R13 K219 [{"Size", "Icon", "DropDownWidth", "ItemHeight", "MaxHeight"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 90
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  LOADK R14 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
  SETTABLEKS R14 R13 K17 ["Icon"]
  LOADN R14 120
  SETTABLEKS R14 R13 K215 ["DropDownWidth"]
  LOADN R14 30
  SETTABLEKS R14 R13 K216 ["ItemHeight"]
  LOADN R14 150
  SETTABLEKS R14 R13 K217 ["MaxHeight"]
  SETTABLEKS R13 R12 K208 ["VisualizeAsRow"]
  DUPTABLE R13 K220 [{"Icon", "Size"}]
  LOADK R14 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
  SETTABLEKS R14 R13 K17 ["Icon"]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 24
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  SETTABLEKS R13 R12 K209 ["TaggedInstancesRow"]
  DUPTABLE R13 K221 [{"Size"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  SETTABLEKS R13 R12 K210 ["ShowTextRow"]
  DUPTABLE R13 K221 [{"Size"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  SETTABLEKS R13 R12 K211 ["AlwaysOnTopRow"]
  DUPTABLE R13 K221 [{"Size"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 18
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  SETTABLEKS R13 R12 K212 ["IconRow"]
  DUPTABLE R13 K222 [{"Size", "Icon"}]
  GETIMPORT R14 K29 [UDim2.fromOffset]
  LOADN R15 24
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  LOADK R14 K223 ["rbxasset://textures/ui/InGameMenu/WhiteSquare.png"]
  SETTABLEKS R14 R13 K17 ["Icon"]
  SETTABLEKS R13 R12 K213 ["ColorRow"]
  SETTABLEKS R12 R11 K224 ["TagSettingsListView"]
  DUPTABLE R12 K225 [{"Size", "TextSize", "Spacing"}]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 216
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K127 ["TextSize"]
  LOADN R13 10
  SETTABLEKS R13 R12 K20 ["Spacing"]
  SETTABLEKS R12 R11 K226 ["TagSettingRow"]
  DUPTABLE R12 K227 [{"ClosedArrowImage", "OpenArrowImage", "Size", "Spacing"}]
  LOADK R13 K201 ["rbxasset://textures/TagEditor/rightarrow.png"]
  SETTABLEKS R13 R12 K184 ["ClosedArrowImage"]
  LOADK R13 K194 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
  SETTABLEKS R13 R12 K185 ["OpenArrowImage"]
  GETIMPORT R13 K83 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 10
  SETTABLEKS R13 R12 K20 ["Spacing"]
  SETTABLEKS R12 R11 K228 ["TagSettingsToggleButton"]
  DUPCLOSURE R12 K229 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R11
  RETURN R12 1
