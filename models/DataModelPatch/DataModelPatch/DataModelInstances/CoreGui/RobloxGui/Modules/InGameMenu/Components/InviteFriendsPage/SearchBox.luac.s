PROTO_0:
  DUPTABLE R1 K1 [{"searchText"}]
  LOADK R2 K2 [""]
  SETTABLEKS R2 R1 K0 ["searchText"]
  SETTABLEKS R1 R0 K3 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"searchText"}]
  LOADK R3 K2 [""]
  SETTABLEKS R3 R2 K0 ["searchText"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["props"]
  GETTABLEKS R0 R1 K5 ["searchCleared"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["searchText"]
  GETTABLEKS R2 R0 K2 ["Text"]
  JUMPIFEQ R1 R2 [+18]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"searchText"}]
  GETTABLEKS R4 R0 K2 ["Text"]
  SETTABLEKS R4 R3 K1 ["searchText"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["searchUpdated"]
  GETTABLEKS R2 R0 K2 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["Theme"]
  GETTABLEKS R1 R2 K1 ["TextEmphasis"]
  GETTABLEKS R3 R0 K2 ["Font"]
  GETTABLEKS R2 R3 K3 ["Body"]
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["state"]
  GETTABLEKS R5 R6 K5 ["searchText"]
  JUMPIFNOTEQKS R5 K6 [""] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADN R4 49
  JUMPIFNOT R3 [+1]
  ADDK R4 R4 K7 [46]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["TextButton"]
  NEWTABLE R7 8 0
  GETIMPORT R8 K12 [UDim2.fromOffset]
  LOADN R9 32
  LOADN R10 32
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  GETIMPORT R8 K15 [UDim2.new]
  LOADN R9 1
  LOADN R10 249
  LOADK R11 K16 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Position"]
  GETIMPORT R8 K19 [Vector2.new]
  LOADN R9 1
  LOADK R10 K16 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["AnchorPoint"]
  LOADN R8 1
  SETTABLEKS R8 R7 K21 ["BackgroundTransparency"]
  SETTABLEKS R3 R7 K22 ["Visible"]
  GETUPVAL R8 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K23 ["SmallPill"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["SelectionImageObject"]
  LOADB R8 1
  SETTABLEKS R8 R7 K25 ["Selectable"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K26 ["Event"]
  GETTABLEKS R8 R9 K27 ["Activated"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  SETTABLE R9 R7 R8
  DUPTABLE R8 K30 [{"UIPadding", "ClearImage"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K28 ["UIPadding"]
  DUPTABLE R11 K35 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 7
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["PaddingLeft"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 7
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["PaddingRight"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 7
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["PaddingTop"]
  GETIMPORT R12 K37 [UDim.new]
  LOADN R13 0
  LOADN R14 7
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["PaddingBottom"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["UIPadding"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K40 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "Selectable"}]
  GETIMPORT R12 K42 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K43 ["Images"]
  GETTABLEKS R12 R13 K44 ["ClearIcon"]
  SETTABLEKS R12 R11 K38 ["Image"]
  GETTABLEKS R14 R0 K0 ["Theme"]
  GETTABLEKS R13 R14 K45 ["IconEmphasis"]
  GETTABLEKS R12 R13 K46 ["Color"]
  SETTABLEKS R12 R11 K39 ["ImageColor3"]
  LOADB R12 0
  SETTABLEKS R12 R11 K25 ["Selectable"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K29 ["ClearImage"]
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K50 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Image", "ImageColor3", "ImageTransparency", "ScaleType", "SliceCenter"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K21 ["BackgroundTransparency"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K51 ["props"]
  GETTABLEKS R9 R10 K13 ["Size"]
  SETTABLEKS R9 R8 K13 ["Size"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K51 ["props"]
  GETTABLEKS R9 R10 K17 ["Position"]
  SETTABLEKS R9 R8 K17 ["Position"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K51 ["props"]
  GETTABLEKS R9 R10 K20 ["AnchorPoint"]
  SETTABLEKS R9 R8 K20 ["AnchorPoint"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K43 ["Images"]
  GETTABLEKS R10 R11 K52 ["RoundedRect"]
  GETTABLEKS R9 R10 K38 ["Image"]
  SETTABLEKS R9 R8 K38 ["Image"]
  GETTABLEKS R11 R0 K0 ["Theme"]
  GETTABLEKS R10 R11 K53 ["BackgroundUIContrast"]
  GETTABLEKS R9 R10 K46 ["Color"]
  SETTABLEKS R9 R8 K39 ["ImageColor3"]
  GETTABLEKS R11 R0 K0 ["Theme"]
  GETTABLEKS R10 R11 K53 ["BackgroundUIContrast"]
  GETTABLEKS R9 R10 K54 ["Transparency"]
  SETTABLEKS R9 R8 K47 ["ImageTransparency"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K43 ["Images"]
  GETTABLEKS R10 R11 K52 ["RoundedRect"]
  GETTABLEKS R9 R10 K48 ["ScaleType"]
  SETTABLEKS R9 R8 K48 ["ScaleType"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K43 ["Images"]
  GETTABLEKS R10 R11 K52 ["RoundedRect"]
  GETTABLEKS R9 R10 K49 ["SliceCenter"]
  SETTABLEKS R9 R8 K49 ["SliceCenter"]
  DUPTABLE R9 K60 [{"Border", "SearchIcon", "TextBox", "PlaceholderText", "ClearButton"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K61 [{"Size", "BackgroundTransparency", "Image", "SliceCenter", "ScaleType", "ImageColor3", "ImageTransparency"}]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K43 ["Images"]
  GETTABLEKS R14 R15 K62 ["RoundedRectBorder"]
  GETTABLEKS R13 R14 K38 ["Image"]
  SETTABLEKS R13 R12 K38 ["Image"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K43 ["Images"]
  GETTABLEKS R14 R15 K62 ["RoundedRectBorder"]
  GETTABLEKS R13 R14 K49 ["SliceCenter"]
  SETTABLEKS R13 R12 K49 ["SliceCenter"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K43 ["Images"]
  GETTABLEKS R14 R15 K62 ["RoundedRectBorder"]
  GETTABLEKS R13 R14 K48 ["ScaleType"]
  SETTABLEKS R13 R12 K48 ["ScaleType"]
  GETTABLEKS R15 R0 K0 ["Theme"]
  GETTABLEKS R14 R15 K63 ["Divider"]
  GETTABLEKS R13 R14 K46 ["Color"]
  SETTABLEKS R13 R12 K39 ["ImageColor3"]
  GETTABLEKS R15 R0 K0 ["Theme"]
  GETTABLEKS R14 R15 K63 ["Divider"]
  GETTABLEKS R13 R14 K54 ["Transparency"]
  SETTABLEKS R13 R12 K47 ["ImageTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K55 ["Border"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K64 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Image", "ImageColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 16
  LOADN R16 0
  LOADN R17 16
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 22
  LOADK R16 K16 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Position"]
  GETIMPORT R13 K19 [Vector2.new]
  LOADK R14 K16 [0.5]
  LOADK R15 K16 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["AnchorPoint"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K43 ["Images"]
  GETTABLEKS R13 R14 K56 ["SearchIcon"]
  SETTABLEKS R13 R12 K38 ["Image"]
  GETTABLEKS R15 R0 K0 ["Theme"]
  GETTABLEKS R14 R15 K45 ["IconEmphasis"]
  GETTABLEKS R13 R14 K46 ["Color"]
  SETTABLEKS R13 R12 K39 ["ImageColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["SearchIcon"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K57 ["TextBox"]
  NEWTABLE R12 16 0
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 1
  MINUS R15 R4
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 44
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Position"]
  LOADK R13 K6 [""]
  SETTABLEKS R13 R12 K58 ["PlaceholderText"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K4 ["state"]
  GETTABLEKS R13 R14 K5 ["searchText"]
  SETTABLEKS R13 R12 K65 ["Text"]
  LOADB R13 0
  SETTABLEKS R13 R12 K66 ["ClearTextOnFocus"]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  GETIMPORT R13 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K68 ["TextXAlignment"]
  GETIMPORT R13 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K71 ["TextYAlignment"]
  GETTABLEKS R13 R1 K46 ["Color"]
  SETTABLEKS R13 R12 K74 ["TextColor3"]
  GETTABLEKS R13 R1 K54 ["Transparency"]
  SETTABLEKS R13 R12 K75 ["TextTransparency"]
  GETTABLEKS R13 R2 K2 ["Font"]
  SETTABLEKS R13 R12 K2 ["Font"]
  GETTABLEKS R14 R2 K76 ["RelativeSize"]
  GETTABLEKS R16 R0 K2 ["Font"]
  GETTABLEKS R15 R16 K77 ["BaseSize"]
  MUL R13 R14 R15
  SETTABLEKS R13 R12 K78 ["TextSize"]
  LOADB R13 0
  SETTABLEKS R13 R12 K79 ["TextWrapped"]
  GETUPVAL R13 2
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K80 ["InputFields"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K24 ["SelectionImageObject"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K81 ["Change"]
  GETTABLEKS R13 R14 K65 ["Text"]
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U0
  SETTABLE R14 R12 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K82 ["Ref"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K51 ["props"]
  GETTABLEKS R14 R15 K83 ["itemRef"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K57 ["TextBox"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K87 [{"themeKey", "fontKey", "Text", "Size", "Position", "TextTransparency", "TextXAlignment", "ZIndex", "Visible"}]
  LOADK R13 K1 ["TextEmphasis"]
  SETTABLEKS R13 R12 K84 ["themeKey"]
  LOADK R13 K3 ["Body"]
  SETTABLEKS R13 R12 K85 ["fontKey"]
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K88 ["searchPlaceholder"]
  SETTABLEKS R13 R12 K65 ["Text"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 1
  LOADN R15 212
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 44
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Position"]
  LOADK R13 K16 [0.5]
  SETTABLEKS R13 R12 K75 ["TextTransparency"]
  GETIMPORT R13 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K68 ["TextXAlignment"]
  LOADN R13 2
  SETTABLEKS R13 R12 K86 ["ZIndex"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["state"]
  GETTABLEKS R14 R15 K5 ["searchText"]
  JUMPIFEQKS R14 K6 [""] [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K22 ["Visible"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K58 ["PlaceholderText"]
  SETTABLEKS R5 R9 K59 ["ClearButton"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"searchPlaceholder"}]
  LOADK R4 K2 ["CoreScripts.InGameMenu.InviteFriends.Search"]
  SETTABLEKS R4 R3 K0 ["searchPlaceholder"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderWithSelectionCursor"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETTABLEKS R4 R1 K10 ["UIBlox"]
  GETTABLEKS R7 R4 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETTABLEKS R8 R4 K14 ["App"]
  GETTABLEKS R7 R8 K15 ["SelectionImage"]
  GETTABLEKS R6 R7 K16 ["withSelectionCursorProvider"]
  GETTABLEKS R9 R4 K14 ["App"]
  GETTABLEKS R8 R9 K15 ["SelectionImage"]
  GETTABLEKS R7 R8 K17 ["CursorKind"]
  GETIMPORT R11 K19 [script]
  GETTABLEKS R10 R11 K20 ["Parent"]
  GETTABLEKS R9 R10 K20 ["Parent"]
  GETTABLEKS R8 R9 K20 ["Parent"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R8 K21 ["Resources"]
  GETTABLEKS R10 R11 K22 ["Assets"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R8 K23 ["Localization"]
  GETTABLEKS R11 R12 K24 ["withLocalization"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R8 K25 ["Components"]
  GETTABLEKS R12 R13 K26 ["ThemedTextLabel"]
  CALL R11 1 1
  GETTABLEKS R14 R4 K11 ["Core"]
  GETTABLEKS R13 R14 K27 ["ImageSet"]
  GETTABLEKS R12 R13 K28 ["ImageSetLabel"]
  GETTABLEKS R13 R2 K29 ["PureComponent"]
  LOADK R15 K30 ["SearchBox"]
  NAMECALL R13 R13 K31 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R3 K32 ["strictInterface"]
  DUPTABLE R15 K39 [{"Size", "Position", "AnchorPoint", "searchUpdated", "searchCleared", "itemRef"}]
  GETTABLEKS R16 R3 K40 ["UDim2"]
  SETTABLEKS R16 R15 K33 ["Size"]
  GETTABLEKS R16 R3 K40 ["UDim2"]
  SETTABLEKS R16 R15 K34 ["Position"]
  GETTABLEKS R16 R3 K41 ["Vector2"]
  SETTABLEKS R16 R15 K35 ["AnchorPoint"]
  GETTABLEKS R16 R3 K42 ["callback"]
  SETTABLEKS R16 R15 K36 ["searchUpdated"]
  GETTABLEKS R16 R3 K42 ["callback"]
  SETTABLEKS R16 R15 K37 ["searchCleared"]
  GETTABLEKS R16 R3 K43 ["optional"]
  GETTABLEKS R17 R3 K44 ["table"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K38 ["itemRef"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K45 ["validateProps"]
  DUPCLOSURE R14 K46 [PROTO_0]
  SETTABLEKS R14 R13 K47 ["init"]
  DUPCLOSURE R14 K48 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K49 ["renderWithSelectionCursor"]
  DUPCLOSURE R14 K50 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K51 ["render"]
  RETURN R13 1