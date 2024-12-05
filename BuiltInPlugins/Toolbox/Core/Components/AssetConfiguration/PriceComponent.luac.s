PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnPriceChange"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnPriceChange"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["getVerificationDocumentationUrl"]
  CALL R2 0 -1
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K0 ["onPriceChange"]
  DUPCLOSURE R2 K1 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K2 ["onClickLearnMore"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["AssetTypeEnum"]
  GETTABLEKS R5 R1 K4 ["AllowedAssetTypesForRelease"]
  GETTABLEKS R6 R1 K5 ["AllowedAssetTypesForFree"]
  GETTABLEKS R7 R1 K6 ["NewAssetStatus"]
  GETTABLEKS R8 R1 K7 ["Price"]
  GETTABLEKS R9 R1 K8 ["MinPrice"]
  GETTABLEKS R10 R1 K9 ["MaxPrice"]
  GETTABLEKS R11 R1 K10 ["FeeRate"]
  GETTABLEKS R12 R1 K11 ["IsPriceValid"]
  GETTABLEKS R13 R1 K12 ["LayoutOrder"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K13 ["new"]
  CALL R14 0 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K14 ["calculatePotentialEarning"]
  MOVE R16 R5
  MOVE R17 R8
  MOVE R18 R4
  MOVE R19 R9
  CALL R15 4 1
  GETTABLEKS R16 R2 K15 ["assetConfig"]
  GETTABLEKS R17 R2 K16 ["publishAsset"]
  SUBRK R19 R17 K11 ["IsPriceValid"]
  FASTCALL2K MATH_MAX R19 K18 [+4]
  LOADK R20 K18 [0]
  GETIMPORT R18 K21 [math.max]
  CALL R18 2 1
  DIVK R19 R11 K17 [100]
  SUBRK R20 R22 K19 ["math"]
  MUL R24 R20 R10
  FASTCALL2 MATH_MIN R15 R24 [+4]
  MOVE R23 R15
  GETIMPORT R22 K24 [math.min]
  CALL R22 2 1
  FASTCALL1 MATH_FLOOR R22 [+2]
  GETIMPORT R21 K26 [math.floor]
  CALL R21 1 1
  MOVE R15 R21
  FASTCALL1 TOSTRING R15 [+3]
  MOVE R22 R15
  GETIMPORT R21 K28 [tostring]
  CALL R21 1 1
  JUMPIFNOT R6 [+8]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K29 ["find"]
  MOVE R23 R6
  NEWCLOSURE R24 P0
  CAPTURE VAL R4
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  FASTCALL1 TONUMBER R8 [+3]
  MOVE R24 R8
  GETIMPORT R23 K31 [tonumber]
  CALL R23 1 1
  JUMPIFNOT R23 [+5]
  JUMPIFLT R10 R23 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  JUMP [+1]
  LOADNIL R24
  GETIMPORT R25 K33 [Vector2]
  GETUPVAL R27 3
  JUMPIFNOT R27 [+6]
  GETIMPORT R26 K34 [Vector2.new]
  LOADN R27 225
  LOADN R28 24
  CALL R26 2 1
  JUMPIF R26 [+7]
  GETTABLEKS R26 R25 K13 ["new"]
  LOADN R27 0
  LOADN R28 225
  LOADN R29 0
  LOADN R30 24
  CALL R26 4 1
  GETUPVAL R27 4
  MOVE R28 R21
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K35 ["FONT_SIZE_MEDIUM"]
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K36 ["FONT"]
  MOVE R31 R26
  CALL R27 4 1
  ORK R29 R8 K37 [""]
  FASTCALL1 TOSTRING R29 [+2]
  GETIMPORT R28 K28 [tostring]
  CALL R28 1 1
  GETIMPORT R29 K40 [utf8.len]
  MOVE R30 R28
  CALL R29 1 1
  GETUPVAL R31 6
  JUMPIFLT R31 R29 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R31 R16 K41 ["labelTextColor"]
  JUMP [+2]
  GETTABLEKS R31 R16 K42 ["errorColor"]
  GETTABLEKS R32 R1 K43 ["publishingRequirements"]
  MOVE R33 R32
  JUMPIFNOT R33 [+7]
  GETTABLEKS R33 R32 K44 ["verification"]
  JUMPIFNOT R33 [+4]
  GETTABLEKS R34 R32 K44 ["verification"]
  GETTABLEKS R33 R34 K45 ["isVerified"]
  LOADB R34 1
  JUMPIFEQKNIL R32 [+2]
  MOVE R34 R33
  JUMPIF R34 [+159]
  GETUPVAL R36 7
  GETTABLEKS R35 R36 K46 ["createElement"]
  GETUPVAL R36 8
  DUPTABLE R37 K48 [{"Title", "LayoutOrder"}]
  LOADK R40 K49 ["General"]
  LOADK R41 K50 ["SalesPrice"]
  NAMECALL R38 R3 K51 ["getText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K47 ["Title"]
  SETTABLEKS R13 R37 K12 ["LayoutOrder"]
  DUPTABLE R38 K53 [{"RightFrame"}]
  GETUPVAL R40 7
  GETTABLEKS R39 R40 K46 ["createElement"]
  LOADK R40 K54 ["Frame"]
  DUPTABLE R41 K58 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R42 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R42 R41 K55 ["AutomaticSize"]
  LOADN R42 1
  SETTABLEKS R42 R41 K56 ["BackgroundTransparency"]
  GETIMPORT R42 K63 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 0
  CALL R42 4 1
  SETTABLEKS R42 R41 K57 ["Size"]
  LOADN R42 1
  SETTABLEKS R42 R41 K12 ["LayoutOrder"]
  DUPTABLE R42 K67 [{"UIListLayout", "SalesVerification", "LearnMore"}]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K64 ["UIListLayout"]
  DUPTABLE R45 K73 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R46 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R46 R45 K68 ["SortOrder"]
  GETIMPORT R46 K76 [Enum.FillDirection.Vertical]
  SETTABLEKS R46 R45 K69 ["FillDirection"]
  GETIMPORT R46 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R46 R45 K70 ["HorizontalAlignment"]
  GETIMPORT R46 K80 [Enum.VerticalAlignment.Top]
  SETTABLEKS R46 R45 K71 ["VerticalAlignment"]
  GETIMPORT R46 K82 [UDim.new]
  LOADN R47 0
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K72 ["Padding"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K64 ["UIListLayout"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  GETUPVAL R44 9
  DUPTABLE R45 K88 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R46 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K55 ["AutomaticSize"]
  LOADN R46 1
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADK R48 K49 ["General"]
  LOADK R49 K65 ["SalesVerification"]
  NAMECALL R46 R3 K51 ["getText"]
  CALL R46 3 1
  SETTABLEKS R46 R45 K83 ["Text"]
  GETTABLEKS R46 R17 K89 ["verifyTextColor"]
  SETTABLEKS R46 R45 K84 ["TextColor"]
  GETUPVAL R47 5
  GETTABLEKS R46 R47 K90 ["FONT_SIZE_LARGE"]
  SETTABLEKS R46 R45 K85 ["TextSize"]
  GETIMPORT R46 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K86 ["TextXAlignment"]
  GETIMPORT R46 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R46 R45 K87 ["TextYAlignment"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K65 ["SalesVerification"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  GETUPVAL R44 10
  DUPTABLE R45 K95 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
  GETIMPORT R46 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K55 ["AutomaticSize"]
  LOADN R46 2
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  GETTABLEKS R46 R0 K96 ["onClickLearnMore"]
  SETTABLEKS R46 R45 K94 ["OnClick"]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADK R48 K49 ["General"]
  LOADK R49 K66 ["LearnMore"]
  NAMECALL R46 R3 K51 ["getText"]
  CALL R46 3 1
  SETTABLEKS R46 R45 K83 ["Text"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K66 ["LearnMore"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K52 ["RightFrame"]
  CALL R35 3 -1
  RETURN R35 -1
  GETUPVAL R36 7
  GETTABLEKS R35 R36 K46 ["createElement"]
  GETUPVAL R36 8
  DUPTABLE R37 K48 [{"Title", "LayoutOrder"}]
  LOADK R40 K49 ["General"]
  LOADK R41 K50 ["SalesPrice"]
  NAMECALL R38 R3 K51 ["getText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K47 ["Title"]
  SETTABLEKS R13 R37 K12 ["LayoutOrder"]
  DUPTABLE R38 K99 [{"InputRow", "CreatorEarningsFrame"}]
  GETUPVAL R40 7
  GETTABLEKS R39 R40 K46 ["createElement"]
  LOADK R40 K54 ["Frame"]
  DUPTABLE R41 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  JUMPIFNOT R22 [+8]
  GETIMPORT R42 K63 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 67
  CALL R42 4 1
  JUMP [+7]
  GETIMPORT R42 K63 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 52
  CALL R42 4 1
  SETTABLEKS R42 R41 K57 ["Size"]
  LOADN R42 1
  SETTABLEKS R42 R41 K56 ["BackgroundTransparency"]
  LOADN R42 0
  SETTABLEKS R42 R41 K100 ["BorderSizePixel"]
  NAMECALL R42 R14 K102 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K12 ["LayoutOrder"]
  DUPTABLE R42 K105 [{"UIListLayout", "TextInputBox", "PriceRangeFrame"}]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K64 ["UIListLayout"]
  DUPTABLE R45 K106 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R46 K76 [Enum.FillDirection.Vertical]
  SETTABLEKS R46 R45 K69 ["FillDirection"]
  GETIMPORT R46 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R46 R45 K70 ["HorizontalAlignment"]
  GETIMPORT R46 K80 [Enum.VerticalAlignment.Top]
  SETTABLEKS R46 R45 K71 ["VerticalAlignment"]
  GETIMPORT R46 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R46 R45 K68 ["SortOrder"]
  GETIMPORT R46 K82 [UDim.new]
  LOADN R47 0
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K72 ["Padding"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K64 ["UIListLayout"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K54 ["Frame"]
  DUPTABLE R45 K107 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 0
  LOADN R48 225
  LOADN R49 0
  LOADN R50 40
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADN R46 1
  SETTABLEKS R46 R45 K56 ["BackgroundTransparency"]
  LOADN R46 1
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  DUPTABLE R46 K110 [{"UIListLayout", "RobuxIcon", "RoundTextBox"}]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K64 ["UIListLayout"]
  DUPTABLE R49 K106 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R50 K112 [Enum.FillDirection.Horizontal]
  SETTABLEKS R50 R49 K69 ["FillDirection"]
  GETIMPORT R50 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R50 R49 K70 ["HorizontalAlignment"]
  GETIMPORT R50 K113 [Enum.VerticalAlignment.Center]
  SETTABLEKS R50 R49 K71 ["VerticalAlignment"]
  GETIMPORT R50 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R50 R49 K68 ["SortOrder"]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 10
  CALL R50 2 1
  SETTABLEKS R50 R49 K72 ["Padding"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K64 ["UIListLayout"]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K114 ["ImageLabel"]
  DUPTABLE R49 K117 [{"Size", "Image", "ImageColor3", "BackgroundTransparency"}]
  GETUPVAL R52 5
  GETTABLEKS R51 R52 K118 ["Dialog"]
  GETTABLEKS R50 R51 K119 ["ROBUX_SIZE"]
  SETTABLEKS R50 R49 K57 ["Size"]
  GETUPVAL R51 11
  GETTABLEKS R50 R51 K120 ["ROBUX_SMALL"]
  SETTABLEKS R50 R49 K115 ["Image"]
  GETTABLEKS R50 R16 K121 ["textColor"]
  SETTABLEKS R50 R49 K116 ["ImageColor3"]
  LOADN R50 1
  SETTABLEKS R50 R49 K56 ["BackgroundTransparency"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K108 ["RobuxIcon"]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 12
  DUPTABLE R49 K125 [{"Enabled", "OnTextChanged", "Size", "Style", "Text"}]
  GETUPVAL R51 1
  GETTABLEKS R50 R51 K126 ["isOnSale"]
  MOVE R51 R7
  CALL R50 1 1
  SETTABLEKS R50 R49 K122 ["Enabled"]
  GETTABLEKS R50 R0 K127 ["onPriceChange"]
  SETTABLEKS R50 R49 K123 ["OnTextChanged"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADK R51 K128 [0.9]
  LOADN R52 0
  LOADN R53 1
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  JUMPIF R30 [+1]
  JUMPIF R12 [+2]
  LOADK R50 K129 ["FilledRoundedRedBorder"]
  JUMP [+1]
  LOADK R50 K130 ["FilledRoundedBorder"]
  SETTABLEKS R50 R49 K124 ["Style"]
  SETTABLEKS R28 R49 K83 ["Text"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K109 ["RoundTextBox"]
  CALL R43 3 1
  SETTABLEKS R43 R42 K103 ["TextInputBox"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K54 ["Frame"]
  DUPTABLE R45 K131 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R46 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K55 ["AutomaticSize"]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 1
  LOADN R48 225
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADN R46 1
  SETTABLEKS R46 R45 K56 ["BackgroundTransparency"]
  LOADN R46 2
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  DUPTABLE R46 K137 [{"UIPadding", "UIListLayout", "MinimumPriceLabel", "FreePriceLabel", "MaxPriceLabel", "PriceRangeLabel"}]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K132 ["UIPadding"]
  DUPTABLE R49 K140 [{"PaddingTop", "PaddingLeft"}]
  JUMPIFNOT R22 [+6]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 4
  CALL R50 2 1
  JUMP [+5]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 8
  CALL R50 2 1
  SETTABLEKS R50 R49 K138 ["PaddingTop"]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 26
  CALL R50 2 1
  SETTABLEKS R50 R49 K139 ["PaddingLeft"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K132 ["UIPadding"]
  JUMPIFNOT R22 [+30]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K64 ["UIListLayout"]
  DUPTABLE R49 K73 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R50 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R50 R49 K68 ["SortOrder"]
  GETIMPORT R50 K76 [Enum.FillDirection.Vertical]
  SETTABLEKS R50 R49 K69 ["FillDirection"]
  GETIMPORT R50 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R50 R49 K70 ["HorizontalAlignment"]
  GETIMPORT R50 K80 [Enum.VerticalAlignment.Top]
  SETTABLEKS R50 R49 K71 ["VerticalAlignment"]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 0
  CALL R50 2 1
  SETTABLEKS R50 R49 K72 ["Padding"]
  CALL R47 2 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K64 ["UIListLayout"]
  JUMPIFNOT R22 [+57]
  JUMPIF R24 [+56]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 9
  DUPTABLE R49 K142 [{"AutomaticSize", "LayoutOrder", "LineHeight", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R50 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R50 R49 K55 ["AutomaticSize"]
  LOADN R50 1
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  LOADK R50 K143 [1.5]
  SETTABLEKS R50 R49 K141 ["LineHeight"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADN R51 1
  LOADN R52 0
  LOADN R53 0
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  LOADK R52 K49 ["General"]
  LOADK R53 K144 ["SalesMinimumPrice"]
  DUPTABLE R54 K146 [{"minPrice"}]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R56 R9
  GETIMPORT R55 K28 [tostring]
  CALL R55 1 1
  SETTABLEKS R55 R54 K145 ["minPrice"]
  NAMECALL R50 R3 K51 ["getText"]
  CALL R50 4 1
  SETTABLEKS R50 R49 K83 ["Text"]
  SETTABLEKS R31 R49 K84 ["TextColor"]
  GETUPVAL R51 5
  GETTABLEKS R50 R51 K147 ["FONT_SIZE_SMALL"]
  SETTABLEKS R50 R49 K85 ["TextSize"]
  GETIMPORT R50 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R50 R49 K86 ["TextXAlignment"]
  GETIMPORT R50 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R50 R49 K87 ["TextYAlignment"]
  CALL R47 2 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K133 ["MinimumPriceLabel"]
  JUMPIFNOT R22 [+49]
  JUMPIF R24 [+48]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 9
  DUPTABLE R49 K142 [{"AutomaticSize", "LayoutOrder", "LineHeight", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R50 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R50 R49 K55 ["AutomaticSize"]
  LOADN R50 2
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  LOADK R50 K143 [1.5]
  SETTABLEKS R50 R49 K141 ["LineHeight"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADN R51 1
  LOADN R52 0
  LOADN R53 0
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  LOADK R52 K49 ["General"]
  LOADK R53 K148 ["SalesFreePrice"]
  NAMECALL R50 R3 K51 ["getText"]
  CALL R50 3 1
  SETTABLEKS R50 R49 K83 ["Text"]
  SETTABLEKS R31 R49 K84 ["TextColor"]
  GETUPVAL R51 5
  GETTABLEKS R50 R51 K147 ["FONT_SIZE_SMALL"]
  SETTABLEKS R50 R49 K85 ["TextSize"]
  GETIMPORT R50 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R50 R49 K86 ["TextXAlignment"]
  GETIMPORT R50 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R50 R49 K87 ["TextYAlignment"]
  CALL R47 2 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K134 ["FreePriceLabel"]
  JUMPIFNOT R22 [+57]
  JUMPIFNOT R24 [+56]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 9
  DUPTABLE R49 K142 [{"AutomaticSize", "LayoutOrder", "LineHeight", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R50 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R50 R49 K55 ["AutomaticSize"]
  LOADN R50 1
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  LOADK R50 K143 [1.5]
  SETTABLEKS R50 R49 K141 ["LineHeight"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADN R51 1
  LOADN R52 0
  LOADN R53 0
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  LOADK R52 K49 ["General"]
  LOADK R53 K149 ["SalesMaxPrice"]
  DUPTABLE R54 K151 [{"maxPrice"}]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R56 R10
  GETIMPORT R55 K28 [tostring]
  CALL R55 1 1
  SETTABLEKS R55 R54 K150 ["maxPrice"]
  NAMECALL R50 R3 K51 ["getText"]
  CALL R50 4 1
  SETTABLEKS R50 R49 K83 ["Text"]
  SETTABLEKS R31 R49 K84 ["TextColor"]
  GETUPVAL R51 5
  GETTABLEKS R50 R51 K147 ["FONT_SIZE_SMALL"]
  SETTABLEKS R50 R49 K85 ["TextSize"]
  GETIMPORT R50 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R50 R49 K86 ["TextXAlignment"]
  GETIMPORT R50 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R50 R49 K87 ["TextYAlignment"]
  CALL R47 2 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K135 ["MaxPriceLabel"]
  JUMPIF R22 [+56]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 9
  DUPTABLE R49 K152 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R50 1
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADN R51 1
  LOADN R52 225
  LOADN R53 0
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  LOADK R52 K49 ["General"]
  LOADK R53 K153 ["SalesPriceRange"]
  DUPTABLE R54 K154 [{"minPrice", "maxPrice"}]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R56 R9
  GETIMPORT R55 K28 [tostring]
  CALL R55 1 1
  SETTABLEKS R55 R54 K145 ["minPrice"]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R56 R10
  GETIMPORT R55 K28 [tostring]
  CALL R55 1 1
  SETTABLEKS R55 R54 K150 ["maxPrice"]
  NAMECALL R50 R3 K51 ["getText"]
  CALL R50 4 1
  SETTABLEKS R50 R49 K83 ["Text"]
  SETTABLEKS R31 R49 K84 ["TextColor"]
  GETUPVAL R51 5
  GETTABLEKS R50 R51 K147 ["FONT_SIZE_SMALL"]
  SETTABLEKS R50 R49 K85 ["TextSize"]
  GETIMPORT R50 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R50 R49 K86 ["TextXAlignment"]
  GETIMPORT R50 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R50 R49 K87 ["TextYAlignment"]
  CALL R47 2 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K136 ["PriceRangeLabel"]
  CALL R43 3 1
  SETTABLEKS R43 R42 K104 ["PriceRangeFrame"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K97 ["InputRow"]
  GETUPVAL R40 7
  GETTABLEKS R39 R40 K46 ["createElement"]
  LOADK R40 K54 ["Frame"]
  DUPTABLE R41 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R42 K63 [UDim2.new]
  LOADN R43 0
  LOADN R44 225
  LOADN R45 0
  LOADN R46 24
  CALL R42 4 1
  SETTABLEKS R42 R41 K57 ["Size"]
  LOADN R42 1
  SETTABLEKS R42 R41 K56 ["BackgroundTransparency"]
  LOADN R42 0
  SETTABLEKS R42 R41 K100 ["BorderSizePixel"]
  LOADN R42 2
  SETTABLEKS R42 R41 K12 ["LayoutOrder"]
  DUPTABLE R42 K157 [{"UIPadding", "EarningsLabel", "BaseFrame"}]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K132 ["UIPadding"]
  DUPTABLE R45 K158 [{"PaddingLeft"}]
  GETIMPORT R46 K82 [UDim.new]
  LOADN R47 0
  LOADN R48 26
  CALL R46 2 1
  SETTABLEKS R46 R45 K139 ["PaddingLeft"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K132 ["UIPadding"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  GETUPVAL R44 9
  DUPTABLE R45 K159 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
  LOADN R46 1
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 1
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADK R48 K49 ["General"]
  LOADK R49 K160 ["SalesCreatorEarnings"]
  DUPTABLE R50 K162 [{"earningsPercent"}]
  FASTCALL1 TOSTRING R18 [+3]
  MOVE R52 R18
  GETIMPORT R51 K28 [tostring]
  CALL R51 1 1
  SETTABLEKS R51 R50 K161 ["earningsPercent"]
  NAMECALL R46 R3 K51 ["getText"]
  CALL R46 4 1
  SETTABLEKS R46 R45 K83 ["Text"]
  GETTABLEKS R46 R16 K121 ["textColor"]
  SETTABLEKS R46 R45 K84 ["TextColor"]
  GETUPVAL R47 5
  GETTABLEKS R46 R47 K35 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R46 R45 K85 ["TextSize"]
  GETIMPORT R46 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K86 ["TextXAlignment"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K155 ["EarningsLabel"]
  GETUPVAL R44 7
  GETTABLEKS R43 R44 K46 ["createElement"]
  LOADK R44 K54 ["Frame"]
  DUPTABLE R45 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R46 K63 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 1
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K57 ["Size"]
  LOADN R46 1
  SETTABLEKS R46 R45 K56 ["BackgroundTransparency"]
  LOADN R46 0
  SETTABLEKS R46 R45 K100 ["BorderSizePixel"]
  LOADN R46 2
  SETTABLEKS R46 R45 K12 ["LayoutOrder"]
  DUPTABLE R46 K165 [{"UIListLayout", "Robux", "Earnings"}]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K64 ["UIListLayout"]
  DUPTABLE R49 K106 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R50 K112 [Enum.FillDirection.Horizontal]
  SETTABLEKS R50 R49 K69 ["FillDirection"]
  GETIMPORT R50 K167 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R50 R49 K70 ["HorizontalAlignment"]
  GETIMPORT R50 K113 [Enum.VerticalAlignment.Center]
  SETTABLEKS R50 R49 K71 ["VerticalAlignment"]
  GETIMPORT R50 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R50 R49 K68 ["SortOrder"]
  GETIMPORT R50 K82 [UDim.new]
  LOADN R51 0
  LOADN R52 5
  CALL R50 2 1
  SETTABLEKS R50 R49 K72 ["Padding"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K64 ["UIListLayout"]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  LOADK R48 K114 ["ImageLabel"]
  DUPTABLE R49 K168 [{"Size", "Image", "ImageColor3", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R52 5
  GETTABLEKS R51 R52 K118 ["Dialog"]
  GETTABLEKS R50 R51 K119 ["ROBUX_SIZE"]
  SETTABLEKS R50 R49 K57 ["Size"]
  GETUPVAL R51 11
  GETTABLEKS R50 R51 K120 ["ROBUX_SMALL"]
  SETTABLEKS R50 R49 K115 ["Image"]
  GETTABLEKS R50 R16 K121 ["textColor"]
  SETTABLEKS R50 R49 K116 ["ImageColor3"]
  LOADN R50 1
  SETTABLEKS R50 R49 K56 ["BackgroundTransparency"]
  LOADN R50 1
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K163 ["Robux"]
  GETUPVAL R48 7
  GETTABLEKS R47 R48 K46 ["createElement"]
  GETUPVAL R48 9
  DUPTABLE R49 K159 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
  LOADN R50 2
  SETTABLEKS R50 R49 K12 ["LayoutOrder"]
  GETIMPORT R50 K63 [UDim2.new]
  LOADN R51 0
  GETTABLEKS R52 R27 K169 ["X"]
  LOADN R53 1
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K57 ["Size"]
  SETTABLEKS R21 R49 K83 ["Text"]
  GETTABLEKS R50 R16 K121 ["textColor"]
  SETTABLEKS R50 R49 K84 ["TextColor"]
  GETUPVAL R51 5
  GETTABLEKS R50 R51 K90 ["FONT_SIZE_LARGE"]
  SETTABLEKS R50 R49 K85 ["TextSize"]
  GETIMPORT R50 K170 [Enum.TextXAlignment.Right]
  SETTABLEKS R50 R49 K86 ["TextXAlignment"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K164 ["Earnings"]
  CALL R43 3 1
  SETTABLEKS R43 R42 K156 ["BaseFrame"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K98 ["CreatorEarningsFrame"]
  CALL R35 3 -1
  RETURN R35 -1

PROTO_5:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  DUPTABLE R1 K1 [{"publishingRequirements"}]
  GETTABLEKS R2 R0 K0 ["publishingRequirements"]
  SETTABLEKS R2 R1 K0 ["publishingRequirements"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxPriceTextBoxMaxCount"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K12 ["RoactRodux"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["withContext"]
  GETTABLEKS R8 R4 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["DEPRECATED_TextInput"]
  GETTABLEKS R10 R8 K17 ["TextLabel"]
  GETTABLEKS R11 R8 K18 ["LinkText"]
  GETTABLEKS R12 R8 K19 ["TitledFrame"]
  GETTABLEKS R14 R4 K20 ["Util"]
  GETTABLEKS R13 R14 K21 ["GetTextSize"]
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R2 K22 ["Dash"]
  CALL R14 1 1
  GETTABLEKS R16 R1 K23 ["Core"]
  GETTABLEKS R15 R16 K20 ["Util"]
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R15 K24 ["LayoutOrderIterator"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R15 K25 ["Constants"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R15 K26 ["AssetConfigUtil"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R15 K27 ["Images"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R21 R15 K28 ["ToolboxUtilities"]
  CALL R20 1 1
  GETIMPORT R21 K1 [game]
  LOADK R23 K29 ["GuiService"]
  NAMECALL R21 R21 K30 ["GetService"]
  CALL R21 2 1
  GETTABLEKS R22 R3 K31 ["PureComponent"]
  LOADK R24 K32 ["PriceComponent"]
  NAMECALL R22 R22 K33 ["extend"]
  CALL R22 2 1
  GETIMPORT R23 K1 [game]
  LOADK R25 K34 ["PriceComponentTextSize"]
  NAMECALL R23 R23 K35 ["GetFastFlag"]
  CALL R23 2 1
  DUPCLOSURE R24 K36 [PROTO_2]
  CAPTURE VAL R21
  CAPTURE VAL R20
  SETTABLEKS R24 R22 K37 ["init"]
  DUPCLOSURE R24 K38 [PROTO_4]
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R23
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R9
  SETTABLEKS R24 R22 K39 ["render"]
  DUPCLOSURE R24 K40 [PROTO_5]
  MOVE R25 R7
  DUPTABLE R26 K43 [{"Stylizer", "Localization"}]
  GETTABLEKS R27 R6 K41 ["Stylizer"]
  SETTABLEKS R27 R26 K41 ["Stylizer"]
  GETTABLEKS R27 R6 K42 ["Localization"]
  SETTABLEKS R27 R26 K42 ["Localization"]
  CALL R25 1 1
  MOVE R26 R22
  CALL R25 1 1
  MOVE R22 R25
  GETTABLEKS R25 R5 K44 ["connect"]
  MOVE R26 R24
  LOADNIL R27
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1