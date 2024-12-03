PROTO_0:
  ORK R0 R0 K0 [""]
  ORK R1 R1 K0 [""]
  ORK R2 R2 K0 [""]
  GETUPVAL R4 0
  MOVE R5 R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["FONT_SIZE_SMALL"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["FONT_BOLD"]
  CALL R4 3 1
  GETUPVAL R5 0
  MOVE R6 R1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["FONT_SIZE_SMALL"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["FONT"]
  CALL R5 3 1
  GETUPVAL R6 0
  MOVE R7 R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["FONT_SIZE_SMALL"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["FONT"]
  CALL R6 3 -1
  FASTCALL MATH_MAX [+2]
  GETIMPORT R3 K6 [math.max]
  CALL R3 -1 1
  LOADN R4 0
  JUMPIFEQKS R0 K0 [""] [+2]
  ADDK R4 R4 K7 [1]
  JUMPIFEQKS R1 K0 [""] [+2]
  ADDK R4 R4 K7 [1]
  JUMPIFEQKS R2 K0 [""] [+2]
  ADDK R4 R4 K7 [1]
  ADDK R5 R3 K8 [10]
  LOADN R8 5
  LOADN R10 14
  MUL R9 R10 R4
  ADD R7 R8 R9
  ADDK R6 R7 K9 [5]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R6
  CALL R7 4 -1
  RETURN R7 -1

PROTO_1:
  DUPTABLE R1 K2 [{"hover", "down"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["hover"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["down"]
  SETTABLEKS R1 R0 K3 ["state"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["down"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Theme"]
  GETIMPORT R3 K6 [Enum.StudioStyleGuideColor.Button]
  GETIMPORT R4 K9 [Enum.StudioStyleGuideModifier.Pressed]
  NAMECALL R1 R1 K10 ["GetColor"]
  CALL R1 3 -1
  RETURN R1 -1
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K11 ["hover"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Theme"]
  GETIMPORT R3 K6 [Enum.StudioStyleGuideColor.Button]
  GETIMPORT R4 K13 [Enum.StudioStyleGuideModifier.Hover]
  NAMECALL R1 R1 K10 ["GetColor"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Theme"]
  GETIMPORT R3 K6 [Enum.StudioStyleGuideColor.Button]
  GETIMPORT R4 K15 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R1 R1 K10 ["GetColor"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  NEWTABLE R1 0 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["contextInfo"]
  GETTABLEKS R2 R3 K2 ["title"]
  JUMPIFNOT R2 [+9]
  LENGTH R3 R1
  ADDK R2 R3 K3 [1]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["contextInfo"]
  GETTABLEKS R3 R4 K2 ["title"]
  SETTABLE R3 R1 R2
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["contextInfo"]
  GETTABLEKS R2 R3 K4 ["height"]
  JUMPIFNOT R2 [+17]
  LENGTH R3 R1
  ADDK R2 R3 K3 [1]
  GETIMPORT R3 K7 [string.format]
  LOADK R4 K8 ["Ideal height: %s studs"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K1 ["contextInfo"]
  GETTABLEKS R6 R7 K4 ["height"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K10 [tostring]
  CALL R5 1 1
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["contextInfo"]
  GETTABLEKS R2 R3 K11 ["description"]
  JUMPIFNOT R2 [+9]
  LENGTH R3 R1
  ADDK R2 R3 K3 [1]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["contextInfo"]
  GETTABLEKS R3 R4 K11 ["description"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["AVATAR_TYPE"]
  GETTABLEKS R2 R3 K1 ["CUSTOM"]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["doImport"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["avatarType"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K5 ["detectTypeWithOrigAvatarType"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["hover"]
  JUMPIF R2 [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"hover"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["hover"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["hover"]
  JUMPIF R2 [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"hover"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["hover"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["hover"]
  JUMPIF R2 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K6 ["down"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R2 0
  DUPTABLE R4 K7 [{"hover", "down"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["hover"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["down"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"down"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["down"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"down"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["down"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["avatarType"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["AVATAR_TYPE"]
  GETTABLEKS R1 R2 K3 ["CUSTOM"]
  JUMPIFNOTEQ R0 R1 [+36]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["avatarType"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AVATAR_TYPE"]
  GETTABLEKS R2 R3 K3 ["CUSTOM"]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["doImport"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["avatarType"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["detectTypeWithOrigAvatarType"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["avatarType"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["AVATAR_TYPE"]
  GETTABLEKS R1 R2 K3 ["CUSTOM"]
  JUMPIFEQ R0 R1 [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["detectTypeWithOrigAvatarType"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["avatarType"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K4 ["doImport"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["avatarType"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["getTooltipFields"]
  CALL R1 1 1
  GETTABLEN R2 R1 1
  GETTABLEN R3 R1 2
  GETTABLEN R4 R1 3
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K2 ["ImageButton"]
  NEWTABLE R8 16 0
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["BUTTON_AVATAR_TYPE"]
  SETTABLEKS R9 R8 K5 ["Image"]
  GETTABLEKS R10 R0 K6 ["props"]
  GETTABLEKS R9 R10 K7 ["layoutOrder"]
  SETTABLEKS R9 R8 K8 ["LayoutOrder"]
  GETIMPORT R9 K12 [Enum.ScaleType.Slice]
  SETTABLEKS R9 R8 K10 ["ScaleType"]
  GETIMPORT R9 K15 [UDim2.new]
  LOADN R10 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["BUTTON_WIDTH"]
  LOADN R12 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K17 ["BUTTON_HEIGHT"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K18 ["Size"]
  GETIMPORT R9 K20 [Rect.new]
  LOADN R10 4
  LOADN R11 4
  LOADN R12 5
  LOADN R13 5
  CALL R9 4 1
  SETTABLEKS R9 R8 K21 ["SliceCenter"]
  NAMECALL R9 R0 K22 ["getColor"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K23 ["ImageColor3"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K25 ["InputBegan"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K26 ["InputChanged"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K27 ["InputEnded"]
  NEWCLOSURE R10 P3
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K28 ["MouseButton1Down"]
  NEWCLOSURE R10 P4
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K29 ["MouseButton1Up"]
  NEWCLOSURE R10 P5
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["Event"]
  GETTABLEKS R9 R10 K30 ["Activated"]
  NEWCLOSURE R10 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLE R10 R8 R9
  DUPTABLE R9 K35 [{"tooltip", "border", "icon", "title"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K36 [{"Size"}]
  GETUPVAL R13 4
  MOVE R14 R2
  MOVE R15 R3
  MOVE R16 R4
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Size"]
  DUPTABLE R13 K42 [{"UIListLayout", "UIPadding", "Title", "Top", "Bottom"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K1 ["createElement"]
  LOADK R15 K37 ["UIListLayout"]
  DUPTABLE R16 K44 [{"SortOrder"}]
  GETIMPORT R17 K45 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K43 ["SortOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["UIListLayout"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K1 ["createElement"]
  LOADK R15 K38 ["UIPadding"]
  DUPTABLE R16 K48 [{"PaddingLeft", "PaddingTop"}]
  GETIMPORT R17 K50 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["PaddingLeft"]
  GETIMPORT R17 K50 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K47 ["PaddingTop"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["UIPadding"]
  MOVE R14 R2
  JUMPIFNOT R14 [+58]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K1 ["createElement"]
  LOADK R15 K51 ["TextLabel"]
  DUPTABLE R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K52 ["ZIndex"]
  LOADN R17 0
  SETTABLEKS R17 R16 K8 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K3 ["BackgroundTransparency"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K60 ["FONT_BOLD"]
  SETTABLEKS R17 R16 K53 ["Font"]
  GETIMPORT R17 K15 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K61 ["FONT_SIZE_SMALL"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K18 ["Size"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K61 ["FONT_SIZE_SMALL"]
  SETTABLEKS R17 R16 K54 ["TextSize"]
  GETIMPORT R17 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K55 ["TextXAlignment"]
  GETIMPORT R17 K64 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K56 ["TextYAlignment"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K65 ["Theme"]
  GETIMPORT R19 K68 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R20 K71 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R17 R17 K72 ["GetColor"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K57 ["TextColor3"]
  SETTABLEKS R2 R16 K58 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K39 ["Title"]
  MOVE R14 R3
  JUMPIFNOT R14 [+58]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K1 ["createElement"]
  LOADK R15 K51 ["TextLabel"]
  DUPTABLE R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K52 ["ZIndex"]
  LOADN R17 1
  SETTABLEKS R17 R16 K8 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K3 ["BackgroundTransparency"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K73 ["FONT"]
  SETTABLEKS R17 R16 K53 ["Font"]
  GETIMPORT R17 K15 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K61 ["FONT_SIZE_SMALL"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K18 ["Size"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K61 ["FONT_SIZE_SMALL"]
  SETTABLEKS R17 R16 K54 ["TextSize"]
  GETIMPORT R17 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K55 ["TextXAlignment"]
  GETIMPORT R17 K64 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K56 ["TextYAlignment"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K65 ["Theme"]
  GETIMPORT R19 K68 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R20 K71 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R17 R17 K72 ["GetColor"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K57 ["TextColor3"]
  SETTABLEKS R3 R16 K58 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K40 ["Top"]
  MOVE R14 R4
  JUMPIFNOT R14 [+58]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K1 ["createElement"]
  LOADK R15 K51 ["TextLabel"]
  DUPTABLE R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K52 ["ZIndex"]
  LOADN R17 2
  SETTABLEKS R17 R16 K8 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K3 ["BackgroundTransparency"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K73 ["FONT"]
  SETTABLEKS R17 R16 K53 ["Font"]
  GETIMPORT R17 K15 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K61 ["FONT_SIZE_SMALL"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K18 ["Size"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K61 ["FONT_SIZE_SMALL"]
  SETTABLEKS R17 R16 K54 ["TextSize"]
  GETIMPORT R17 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K55 ["TextXAlignment"]
  GETIMPORT R17 K64 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K56 ["TextYAlignment"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K65 ["Theme"]
  GETIMPORT R19 K68 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R20 K71 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R17 R17 K72 ["GetColor"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K57 ["TextColor3"]
  SETTABLEKS R4 R16 K58 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["Bottom"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K31 ["tooltip"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  LOADK R11 K74 ["ImageLabel"]
  DUPTABLE R12 K75 [{"BackgroundTransparency", "Image", "ScaleType", "Size", "SliceCenter", "ImageColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["BackgroundTransparency"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K76 ["BUTTON_AVATAR_TYPE_BORDER"]
  SETTABLEKS R13 R12 K5 ["Image"]
  GETIMPORT R13 K12 [Enum.ScaleType.Slice]
  SETTABLEKS R13 R12 K10 ["ScaleType"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K18 ["Size"]
  GETIMPORT R13 K20 [Rect.new]
  LOADN R14 4
  LOADN R15 4
  LOADN R16 5
  LOADN R17 5
  CALL R13 4 1
  SETTABLEKS R13 R12 K21 ["SliceCenter"]
  GETUPVAL R13 6
  DUPTABLE R14 K79 [{"Light", "Dark"}]
  GETIMPORT R15 K82 [Color3.fromRGB]
  LOADN R16 184
  LOADN R17 184
  LOADN R18 184
  CALL R15 3 1
  SETTABLEKS R15 R14 K77 ["Light"]
  GETIMPORT R15 K82 [Color3.fromRGB]
  LOADN R16 60
  LOADN R17 60
  LOADN R18 60
  CALL R15 3 1
  SETTABLEKS R15 R14 K78 ["Dark"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K23 ["ImageColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["border"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  LOADK R11 K74 ["ImageLabel"]
  DUPTABLE R12 K84 [{"BackgroundTransparency", "Position", "Size", "Image"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["BackgroundTransparency"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 28
  LOADN R16 0
  LOADN R17 17
  CALL R13 4 1
  SETTABLEKS R13 R12 K83 ["Position"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 91
  LOADN R16 0
  LOADN R17 160
  CALL R13 4 1
  SETTABLEKS R13 R12 K18 ["Size"]
  GETUPVAL R13 6
  GETTABLEKS R15 R0 K6 ["props"]
  GETTABLEKS R14 R15 K85 ["iconOptions"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K5 ["Image"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["icon"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  LOADK R11 K51 ["TextLabel"]
  DUPTABLE R12 K86 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["BackgroundTransparency"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K87 ["FONT_SEMIBOLD"]
  SETTABLEKS R13 R12 K53 ["Font"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 188
  CALL R13 4 1
  SETTABLEKS R13 R12 K83 ["Position"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K88 ["FONT_SIZE_TITLE"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K18 ["Size"]
  GETTABLEKS R14 R0 K6 ["props"]
  GETTABLEKS R13 R14 K89 ["name"]
  SETTABLEKS R13 R12 K58 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K88 ["FONT_SIZE_TITLE"]
  SETTABLEKS R13 R12 K54 ["TextSize"]
  GETIMPORT R13 K91 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K55 ["TextXAlignment"]
  GETIMPORT R13 K64 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K56 ["TextYAlignment"]
  GETUPVAL R13 6
  DUPTABLE R14 K79 [{"Light", "Dark"}]
  GETIMPORT R15 K82 [Color3.fromRGB]
  LOADN R16 0
  LOADN R17 162
  LOADN R18 255
  CALL R15 3 1
  SETTABLEKS R15 R14 K77 ["Light"]
  GETIMPORT R15 K82 [Color3.fromRGB]
  LOADN R16 204
  LOADN R17 204
  LOADN R18 204
  CALL R15 3 1
  SETTABLEKS R15 R14 K78 ["Dark"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K57 ["TextColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["title"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K3 [{"doImport", "detectType", "detectTypeWithOrigAvatarType"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["doImport"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["detectType"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["detectTypeWithOrigAvatarType"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["src"]
  GETTABLEKS R4 R5 K9 ["Assets"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["src"]
  GETTABLEKS R6 R7 K10 ["utils"]
  GETTABLEKS R5 R6 K11 ["themeConfig"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K8 ["src"]
  GETTABLEKS R7 R8 K10 ["utils"]
  GETTABLEKS R6 R7 K12 ["getTextWidth"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K8 ["src"]
  GETTABLEKS R8 R9 K13 ["components"]
  GETTABLEKS R7 R8 K14 ["Tooltip"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K8 ["src"]
  GETTABLEKS R9 R10 K15 ["thunks"]
  GETTABLEKS R8 R9 K16 ["Import"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K8 ["src"]
  GETTABLEKS R10 R11 K15 ["thunks"]
  GETTABLEKS R9 R10 K17 ["DetectType"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K8 ["src"]
  GETTABLEKS R11 R12 K15 ["thunks"]
  GETTABLEKS R10 R11 K18 ["DetectTypeWithOrigAvatarType"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K8 ["src"]
  GETTABLEKS R11 R12 K19 ["Constants"]
  CALL R10 1 1
  GETIMPORT R12 K21 [settings]
  CALL R12 0 1
  GETTABLEKS R11 R12 K22 ["Studio"]
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R10
  GETTABLEKS R13 R1 K24 ["Component"]
  LOADK R15 K25 ["AvatarButton"]
  NAMECALL R13 R13 K26 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K27 [PROTO_1]
  SETTABLEKS R14 R13 K28 ["init"]
  DUPCLOSURE R14 K29 [PROTO_2]
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K30 ["getColor"]
  DUPCLOSURE R14 K31 [PROTO_3]
  SETTABLEKS R14 R13 K32 ["getTooltipFields"]
  DUPCLOSURE R14 K33 [PROTO_11]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K34 ["render"]
  DUPCLOSURE R14 K35 [PROTO_15]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  GETTABLEKS R15 R2 K36 ["connect"]
  LOADNIL R16
  MOVE R17 R14
  CALL R15 2 1
  MOVE R16 R13
  CALL R15 1 -1
  RETURN R15 -1
