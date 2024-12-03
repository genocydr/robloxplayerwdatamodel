PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["AVATAR_IMPORTER_DEVHUB"]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"Name", "Size", "BackgroundColor3"}]
  LOADK R4 K6 ["AvatarPrompt"]
  SETTABLEKS R4 R3 K2 ["Name"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["Theme"]
  GETIMPORT R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
  GETIMPORT R7 K17 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R4 R4 K18 ["GetColor"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["BackgroundColor3"]
  DUPTABLE R4 K20 [{"content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K23 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K21 ["BackgroundTransparency"]
  LOADK R8 K24 ["Content"]
  SETTABLEKS R8 R7 K2 ["Name"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K22 ["Position"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  DUPTABLE R8 K28 [{"topDescription", "buttons", "bottomDescription"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K29 ["TextLabel"]
  DUPTABLE R11 K36 [{"BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K37 ["FONT"]
  SETTABLEKS R12 R11 K30 ["Font"]
  LOADK R12 K38 ["TopDescription"]
  SETTABLEKS R12 R11 K2 ["Name"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Position"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 18
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  LOADK R12 K39 ["Choose the Avatar type you are going to import:"]
  SETTABLEKS R12 R11 K31 ["Text"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K40 ["FONT_SIZE_LARGE"]
  SETTABLEKS R12 R11 K32 ["TextSize"]
  GETIMPORT R12 K42 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K33 ["TextXAlignment"]
  GETIMPORT R12 K44 [Enum.TextYAlignment.Top]
  SETTABLEKS R12 R11 K34 ["TextYAlignment"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["Theme"]
  GETIMPORT R14 K46 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R15 K17 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R12 R12 K18 ["GetColor"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K35 ["TextColor3"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["topDescription"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K1 ["Frame"]
  DUPTABLE R11 K23 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  LOADK R12 K47 ["Buttons"]
  SETTABLEKS R12 R11 K2 ["Name"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 0
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K48 ["BUTTON_SIDE_PADDING"]
  LOADN R15 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K50 ["BUTTON_TOP_PADDING"]
  ADDK R16 R17 K49 [0]
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Position"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K48 ["BUTTON_SIDE_PADDING"]
  MINUS R15 R16
  MULK R14 R15 K51 [2]
  LOADN R15 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K52 ["BUTTON_HEIGHT"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  DUPTABLE R12 K58 [{"buttonsListLayout", "rthroButton", "rthroNarrowButton", "r15Button", "customButton"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K59 ["UIListLayout"]
  DUPTABLE R15 K63 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K65 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K60 ["FillDirection"]
  GETIMPORT R16 K67 [UDim.new]
  LOADN R17 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K68 ["BUTTON_CENTER_PADDING"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["Padding"]
  GETIMPORT R16 K70 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K62 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K53 ["buttonsListLayout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R16 K77 ["Rthro"]
  SETTABLEKS R16 R15 K71 ["name"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K78 ["AVATAR_TYPE"]
  GETTABLEKS R16 R17 K79 ["RTHRO"]
  SETTABLEKS R16 R15 K72 ["avatarType"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K79 ["RTHRO"]
  SETTABLEKS R16 R15 K73 ["iconOptions"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K80 ["RTHRO_INFO"]
  SETTABLEKS R16 R15 K74 ["contextInfo"]
  LOADN R16 0
  SETTABLEKS R16 R15 K75 ["layoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K54 ["rthroButton"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R16 K81 ["Rthro Narrow"]
  SETTABLEKS R16 R15 K71 ["name"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K78 ["AVATAR_TYPE"]
  GETTABLEKS R16 R17 K82 ["RTHRO_SLENDER"]
  SETTABLEKS R16 R15 K72 ["avatarType"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K83 ["RTHRO_NARROW"]
  SETTABLEKS R16 R15 K73 ["iconOptions"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K84 ["RTHRO_SLENDER_INFO"]
  SETTABLEKS R16 R15 K74 ["contextInfo"]
  LOADN R16 1
  SETTABLEKS R16 R15 K75 ["layoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["rthroNarrowButton"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R16 K85 ["R15"]
  SETTABLEKS R16 R15 K71 ["name"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K78 ["AVATAR_TYPE"]
  GETTABLEKS R16 R17 K85 ["R15"]
  SETTABLEKS R16 R15 K72 ["avatarType"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K85 ["R15"]
  SETTABLEKS R16 R15 K73 ["iconOptions"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K86 ["R15_INFO"]
  SETTABLEKS R16 R15 K74 ["contextInfo"]
  LOADN R16 2
  SETTABLEKS R16 R15 K75 ["layoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["r15Button"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R16 K87 ["Custom"]
  SETTABLEKS R16 R15 K71 ["name"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K78 ["AVATAR_TYPE"]
  GETTABLEKS R16 R17 K88 ["CUSTOM"]
  SETTABLEKS R16 R15 K72 ["avatarType"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K88 ["CUSTOM"]
  SETTABLEKS R16 R15 K73 ["iconOptions"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K89 ["CUSTOM_INFO"]
  SETTABLEKS R16 R15 K74 ["contextInfo"]
  LOADN R16 3
  SETTABLEKS R16 R15 K75 ["layoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K57 ["customButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K26 ["buttons"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K1 ["Frame"]
  DUPTABLE R11 K90 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 51
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Position"]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 205
  CALL R12 4 1
  SETTABLEKS R12 R11 K3 ["Size"]
  DUPTABLE R12 K94 [{"bottomDescriptionListLayout", "requirementsText", "infoLink"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K59 ["UIListLayout"]
  DUPTABLE R15 K96 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R16 K98 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K60 ["FillDirection"]
  GETIMPORT R16 K99 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K95 ["HorizontalAlignment"]
  GETIMPORT R16 K70 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K62 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K91 ["bottomDescriptionListLayout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K29 ["TextLabel"]
  DUPTABLE R15 K100 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K37 ["FONT"]
  SETTABLEKS R16 R15 K30 ["Font"]
  LOADN R16 0
  SETTABLEKS R16 R15 K69 ["LayoutOrder"]
  GETIMPORT R16 K9 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 5
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K101 ["REQUIREMENTS_DESCRIPTION"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K102 ["FONT_SIZE_SMALL"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K37 ["FONT"]
  CALL R18 3 1
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K102 ["FONT_SIZE_SMALL"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K3 ["Size"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K101 ["REQUIREMENTS_DESCRIPTION"]
  SETTABLEKS R16 R15 K31 ["Text"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K102 ["FONT_SIZE_SMALL"]
  SETTABLEKS R16 R15 K32 ["TextSize"]
  GETIMPORT R16 K42 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K33 ["TextXAlignment"]
  GETIMPORT R16 K103 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K34 ["TextYAlignment"]
  GETUPVAL R16 6
  DUPTABLE R17 K106 [{"Light", "Dark"}]
  GETIMPORT R18 K109 [Color3.fromRGB]
  LOADN R19 98
  LOADN R20 98
  LOADN R21 98
  CALL R18 3 1
  SETTABLEKS R18 R17 K104 ["Light"]
  GETIMPORT R18 K109 [Color3.fromRGB]
  LOADN R19 204
  LOADN R20 204
  LOADN R21 204
  CALL R18 3 1
  SETTABLEKS R18 R17 K105 ["Dark"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K35 ["TextColor3"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K92 ["requirementsText"]
  LOADB R13 0
  SETTABLEKS R13 R12 K93 ["infoLink"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["bottomDescription"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K19 ["content"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["HttpRbxApiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K12 ["src"]
  GETTABLEKS R5 R6 K13 ["Assets"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K14 ["components"]
  GETTABLEKS R6 R7 K15 ["AvatarButton"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K12 ["src"]
  GETTABLEKS R9 R10 K17 ["utils"]
  GETTABLEKS R8 R9 K18 ["themeConfig"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K12 ["src"]
  GETTABLEKS R10 R11 K17 ["utils"]
  GETTABLEKS R9 R10 K19 ["getTextWidth"]
  CALL R8 1 1
  GETIMPORT R10 K21 [settings]
  CALL R10 0 1
  GETTABLEKS R9 R10 K22 ["Studio"]
  GETTABLEKS R10 R3 K23 ["Component"]
  LOADK R12 K24 ["AvatarPrompt"]
  NAMECALL R10 R10 K25 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K26 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K27 ["render"]
  RETURN R10 1
