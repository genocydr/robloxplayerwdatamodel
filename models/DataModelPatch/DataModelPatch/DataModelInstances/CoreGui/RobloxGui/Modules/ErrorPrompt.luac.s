PROTO_0:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["CoreScriptLocalization"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["RobloxLocaleId"]
  NAMECALL R0 R0 K2 ["GetTranslator"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["FormatByKey"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R3 0
  JUMPIF R3 [+1]
  RETURN R1 1
  GETIMPORT R3 K1 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+2]
  MOVE R5 R4
  JUMPIF R5 [+1]
  MOVE R5 R1
  RETURN R5 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["Frame"]
  CALL R0 1 1
  NEWTABLE R1 16 5
  LOADK R7 K1 ["ErrorPrompt"]
  SETTABLEKS R7 R1 K2 ["Name"]
  LOADN R7 0
  SETTABLEKS R7 R1 K3 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R1 K4 ["BorderSizePixel"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["COLORS"]
  GETTABLEKS R7 R8 K6 ["FLINT"]
  SETTABLEKS R7 R1 K7 ["BackgroundColor3"]
  GETIMPORT R7 K10 [Vector2.new]
  LOADK R8 K11 [0.5]
  LOADK R9 K11 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R1 K12 ["AnchorPoint"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADK R8 K11 [0.5]
  LOADN R9 0
  LOADK R10 K11 [0.5]
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R1 K15 ["Position"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["ERROR_PROMPT_MAX_WIDTH"]
  GETTABLEKS R9 R10 K17 ["Default"]
  LOADN R10 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K18 ["ERROR_PROMPT_HEIGHT"]
  GETTABLEKS R11 R12 K17 ["Default"]
  CALL R7 4 1
  SETTABLEKS R7 R1 K19 ["Size"]
  LOADB R7 0
  SETTABLEKS R7 R1 K20 ["Visible"]
  LOADB R7 0
  SETTABLEKS R7 R1 K21 ["AutoLocalize"]
  LOADN R7 8
  SETTABLEKS R7 R1 K22 ["ZIndex"]
  GETUPVAL R2 0
  LOADK R3 K23 ["UIListLayout"]
  CALL R2 1 1
  DUPTABLE R3 K26 [{"Name", "SortOrder", "HorizontalAlignment"}]
  LOADK R4 K27 ["PromptLayout"]
  SETTABLEKS R4 R3 K2 ["Name"]
  GETIMPORT R4 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R4 R3 K24 ["SortOrder"]
  GETIMPORT R4 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R4 R3 K25 ["HorizontalAlignment"]
  CALL R2 1 1
  GETUPVAL R3 0
  LOADK R4 K33 ["UIScale"]
  CALL R3 1 1
  DUPTABLE R4 K35 [{"Name", "Scale"}]
  LOADK R5 K36 ["PromptScale"]
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADN R5 0
  SETTABLEKS R5 R4 K34 ["Scale"]
  CALL R3 1 1
  GETUPVAL R4 0
  LOADK R5 K0 ["Frame"]
  CALL R4 1 1
  NEWTABLE R5 8 2
  LOADK R8 K37 ["TitleFrame"]
  SETTABLEKS R8 R5 K2 ["Name"]
  LOADN R8 1
  SETTABLEKS R8 R5 K29 ["LayoutOrder"]
  LOADN R8 1
  SETTABLEKS R8 R5 K3 ["BackgroundTransparency"]
  GETIMPORT R8 K14 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K38 ["ERROR_TITLE_FRAME_HEIGHT"]
  GETTABLEKS R12 R13 K17 ["Default"]
  CALL R8 4 1
  SETTABLEKS R8 R5 K19 ["Size"]
  LOADN R8 0
  SETTABLEKS R8 R5 K4 ["BorderSizePixel"]
  LOADN R8 8
  SETTABLEKS R8 R5 K22 ["ZIndex"]
  GETUPVAL R6 0
  LOADK R7 K39 ["UIPadding"]
  CALL R6 1 1
  DUPTABLE R7 K42 [{"Name", "PaddingBottom", "PaddingTop"}]
  LOADK R8 K43 ["TitleFramePadding"]
  SETTABLEKS R8 R7 K2 ["Name"]
  GETIMPORT R8 K45 [UDim.new]
  LOADN R9 0
  LOADN R10 11
  CALL R8 2 1
  SETTABLEKS R8 R7 K40 ["PaddingBottom"]
  GETIMPORT R8 K45 [UDim.new]
  LOADN R9 0
  LOADN R10 11
  CALL R8 2 1
  SETTABLEKS R8 R7 K41 ["PaddingTop"]
  CALL R6 1 1
  GETUPVAL R7 0
  LOADK R8 K46 ["TextLabel"]
  CALL R7 1 1
  DUPTABLE R8 K52 [{"Name", "TextColor3", "TextSize", "Size", "BackgroundTransparency", "Font", "TextXAlignment", "TextYAlignment", "ZIndex"}]
  LOADK R9 K53 ["ErrorTitle"]
  SETTABLEKS R9 R8 K2 ["Name"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["COLORS"]
  GETTABLEKS R9 R10 K54 ["WHITE"]
  SETTABLEKS R9 R8 K47 ["TextColor3"]
  LOADN R9 25
  SETTABLEKS R9 R8 K48 ["TextSize"]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 28
  CALL R9 4 1
  SETTABLEKS R9 R8 K19 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETIMPORT R9 K56 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R9 R8 K49 ["Font"]
  GETIMPORT R9 K57 [Enum.TextXAlignment.Center]
  SETTABLEKS R9 R8 K50 ["TextXAlignment"]
  GETIMPORT R9 K58 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K51 ["TextYAlignment"]
  LOADN R9 8
  SETTABLEKS R9 R8 K22 ["ZIndex"]
  CALL R7 1 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  GETUPVAL R5 0
  LOADK R6 K0 ["Frame"]
  CALL R5 1 1
  DUPTABLE R6 K59 [{"Name", "LayoutOrder", "Size", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  LOADK R7 K60 ["SplitLine"]
  SETTABLEKS R7 R6 K2 ["Name"]
  LOADN R7 2
  SETTABLEKS R7 R6 K29 ["LayoutOrder"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R10 254
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K61 ["SIDE_PADDING"]
  MUL R9 R10 R11
  LOADN R10 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K62 ["SPLIT_LINE_THICKNESS"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K19 ["Size"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["COLORS"]
  GETTABLEKS R7 R8 K63 ["PUMICE"]
  SETTABLEKS R7 R6 K7 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K4 ["BorderSizePixel"]
  LOADN R7 8
  SETTABLEKS R7 R6 K22 ["ZIndex"]
  CALL R5 1 1
  GETUPVAL R6 0
  LOADK R7 K0 ["Frame"]
  CALL R6 1 1
  NEWTABLE R7 8 2
  LOADK R10 K64 ["MessageArea"]
  SETTABLEKS R10 R7 K2 ["Name"]
  LOADN R10 3
  SETTABLEKS R10 R7 K29 ["LayoutOrder"]
  GETIMPORT R10 K14 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K38 ["ERROR_TITLE_FRAME_HEIGHT"]
  GETTABLEKS R16 R17 K17 ["Default"]
  MINUS R15 R16
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K62 ["SPLIT_LINE_THICKNESS"]
  SUB R14 R15 R16
  CALL R10 4 1
  SETTABLEKS R10 R7 K19 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R7 K3 ["BackgroundTransparency"]
  LOADN R10 0
  SETTABLEKS R10 R7 K4 ["BorderSizePixel"]
  LOADN R10 8
  SETTABLEKS R10 R7 K22 ["ZIndex"]
  GETUPVAL R8 0
  LOADK R9 K39 ["UIPadding"]
  CALL R8 1 1
  DUPTABLE R9 K67 [{"Name", "PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R10 K68 ["MessageAreaPadding"]
  SETTABLEKS R10 R9 K2 ["Name"]
  GETIMPORT R10 K45 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K61 ["SIDE_PADDING"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K40 ["PaddingBottom"]
  GETIMPORT R10 K45 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K61 ["SIDE_PADDING"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K65 ["PaddingLeft"]
  GETIMPORT R10 K45 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K61 ["SIDE_PADDING"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K66 ["PaddingRight"]
  GETIMPORT R10 K45 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K61 ["SIDE_PADDING"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K41 ["PaddingTop"]
  CALL R8 1 1
  GETUPVAL R9 0
  LOADK R10 K0 ["Frame"]
  CALL R9 1 1
  NEWTABLE R10 4 3
  LOADK R14 K69 ["ErrorFrame"]
  SETTABLEKS R14 R10 K2 ["Name"]
  LOADN R14 1
  SETTABLEKS R14 R10 K3 ["BackgroundTransparency"]
  GETIMPORT R14 K14 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R10 K19 ["Size"]
  LOADN R14 8
  SETTABLEKS R14 R10 K22 ["ZIndex"]
  GETUPVAL R11 0
  LOADK R12 K23 ["UIListLayout"]
  CALL R11 1 1
  DUPTABLE R12 K71 [{"Name", "Padding", "HorizontalAlignment", "SortOrder"}]
  LOADK R13 K72 ["ErrorFrameLayout"]
  SETTABLEKS R13 R12 K2 ["Name"]
  GETIMPORT R13 K45 [UDim.new]
  LOADN R14 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K73 ["LAYOUT_PADDING"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K70 ["Padding"]
  GETIMPORT R13 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K25 ["HorizontalAlignment"]
  GETIMPORT R13 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K24 ["SortOrder"]
  CALL R11 1 1
  GETUPVAL R12 0
  LOADK R13 K46 ["TextLabel"]
  CALL R12 1 1
  DUPTABLE R13 K75 [{"Name", "LayoutOrder", "Size", "TextSize", "TextColor3", "ZIndex", "BackgroundTransparency", "TextWrapped", "Font"}]
  LOADK R14 K76 ["ErrorMessage"]
  SETTABLEKS R14 R13 K2 ["Name"]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  GETIMPORT R14 K14 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K77 ["BUTTON_HEIGHT"]
  MINUS R19 R20
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K73 ["LAYOUT_PADDING"]
  SUB R18 R19 R20
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Size"]
  LOADN R14 20
  SETTABLEKS R14 R13 K48 ["TextSize"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K5 ["COLORS"]
  GETTABLEKS R14 R15 K63 ["PUMICE"]
  SETTABLEKS R14 R13 K47 ["TextColor3"]
  LOADN R14 8
  SETTABLEKS R14 R13 K22 ["ZIndex"]
  LOADN R14 1
  SETTABLEKS R14 R13 K3 ["BackgroundTransparency"]
  LOADB R14 1
  SETTABLEKS R14 R13 K74 ["TextWrapped"]
  GETIMPORT R14 K79 [Enum.Font.SourceSans]
  SETTABLEKS R14 R13 K49 ["Font"]
  CALL R12 1 1
  GETUPVAL R13 0
  LOADK R14 K0 ["Frame"]
  CALL R13 1 1
  NEWTABLE R14 16 1
  LOADK R16 K80 ["ButtonArea"]
  SETTABLEKS R16 R14 K2 ["Name"]
  LOADN R16 1
  SETTABLEKS R16 R14 K3 ["BackgroundTransparency"]
  GETIMPORT R16 K14 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K77 ["BUTTON_HEIGHT"]
  CALL R16 4 1
  SETTABLEKS R16 R14 K19 ["Size"]
  LOADN R16 8
  SETTABLEKS R16 R14 K22 ["ZIndex"]
  LOADN R16 2
  SETTABLEKS R16 R14 K29 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R14 K81 ["SelectionGroup"]
  GETIMPORT R16 K84 [Enum.SelectionBehavior.Stop]
  SETTABLEKS R16 R14 K85 ["SelectionBehaviorUp"]
  GETIMPORT R16 K84 [Enum.SelectionBehavior.Stop]
  SETTABLEKS R16 R14 K86 ["SelectionBehaviorDown"]
  GETIMPORT R16 K84 [Enum.SelectionBehavior.Stop]
  SETTABLEKS R16 R14 K87 ["SelectionBehaviorLeft"]
  GETIMPORT R16 K84 [Enum.SelectionBehavior.Stop]
  SETTABLEKS R16 R14 K88 ["SelectionBehaviorRight"]
  GETUPVAL R15 0
  LOADK R16 K89 ["UIGridLayout"]
  CALL R15 1 1
  DUPTABLE R16 K93 [{"Name", "CellPadding", "CellSize", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  LOADK R17 K94 ["ButtonLayout"]
  SETTABLEKS R17 R16 K2 ["Name"]
  GETIMPORT R17 K14 [UDim2.new]
  LOADN R18 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K95 ["BUTTON_CELL_PADDING"]
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K90 ["CellPadding"]
  GETIMPORT R17 K14 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K77 ["BUTTON_HEIGHT"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K91 ["CellSize"]
  GETIMPORT R17 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K25 ["HorizontalAlignment"]
  GETIMPORT R17 K96 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K92 ["VerticalAlignment"]
  GETIMPORT R17 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K24 ["SortOrder"]
  CALL R15 1 -1
  SETLIST R14 R15 -1 [1]
  CALL R13 1 -1
  SETLIST R10 R11 -1 [1]
  CALL R9 1 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 -1
  SETLIST R1 R2 -1 [1]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R3 0
  LOADK R4 K0 ["ImageButton"]
  CALL R3 1 1
  NEWTABLE R4 16 1
  MOVE R7 R0
  LOADK R8 K1 ["Button"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K2 ["Name"]
  LOADN R6 1
  SETTABLEKS R6 R4 K3 ["BackgroundTransparency"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["COLORS"]
  GETTABLEKS R6 R7 K5 ["WHITE"]
  JUMPIF R6 [+5]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["COLORS"]
  GETTABLEKS R6 R7 K6 ["PUMICE"]
  SETTABLEKS R6 R4 K7 ["ImageColor3"]
  GETIMPORT R6 K10 [Vector2.new]
  LOADK R7 K11 [0.5]
  LOADK R8 K11 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R4 K12 ["AnchorPoint"]
  GETIMPORT R6 K14 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R4 K15 ["Size"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["PRIMARY_BUTTON_TEXTURE"]
  JUMPIF R6 [+3]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K17 ["SECONDARY_BUTTON_TEXTURE"]
  SETTABLEKS R6 R4 K18 ["Image"]
  GETIMPORT R6 K22 [Enum.ScaleType.Slice]
  SETTABLEKS R6 R4 K20 ["ScaleType"]
  GETIMPORT R6 K24 [Rect.new]
  LOADN R7 8
  LOADN R8 8
  LOADN R9 9
  LOADN R10 9
  CALL R6 4 1
  SETTABLEKS R6 R4 K25 ["SliceCenter"]
  SETTABLEKS R1 R4 K26 ["LayoutOrder"]
  LOADN R6 8
  SETTABLEKS R6 R4 K27 ["ZIndex"]
  GETUPVAL R5 0
  LOADK R6 K28 ["TextLabel"]
  CALL R5 1 1
  DUPTABLE R6 K35 [{"Name", "Text", "Size", "TextColor3", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "ZIndex"}]
  LOADK R7 K36 ["ButtonText"]
  SETTABLEKS R7 R6 K2 ["Name"]
  SETTABLEKS R0 R6 K29 ["Text"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K15 ["Size"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["COLORS"]
  GETTABLEKS R7 R8 K37 ["SLATE"]
  JUMPIF R7 [+5]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["COLORS"]
  GETTABLEKS R7 R8 K6 ["PUMICE"]
  SETTABLEKS R7 R6 K30 ["TextColor3"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["BackgroundTransparency"]
  GETIMPORT R7 K39 [Enum.TextXAlignment.Center]
  SETTABLEKS R7 R6 K31 ["TextXAlignment"]
  GETIMPORT R7 K40 [Enum.TextYAlignment.Center]
  SETTABLEKS R7 R6 K32 ["TextYAlignment"]
  GETIMPORT R7 K42 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K33 ["Font"]
  LOADN R7 20
  SETTABLEKS R7 R6 K34 ["TextSize"]
  LOADN R7 8
  SETTABLEKS R7 R6 K27 ["ZIndex"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isOpen"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["SelectedCoreObject"]
  JUMPIFNOTEQKNIL R0 [+14]
  GETUPVAL R0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["_frame"]
  GETTABLEKS R4 R5 K3 ["MessageArea"]
  GETTABLEKS R3 R4 K4 ["ErrorFrame"]
  GETTABLEKS R2 R3 K5 ["ButtonArea"]
  NAMECALL R0 R0 K6 ["Select"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R3 8 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Default"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K3 ["_frame"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["_isOpen"]
  GETUPVAL R3 2
  GETTABLEKS R6 R2 K3 ["_frame"]
  GETTABLEKS R5 R6 K5 ["PromptScale"]
  GETUPVAL R6 3
  DUPTABLE R7 K7 [{"Scale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["Scale"]
  NAMECALL R3 R3 K8 ["Create"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K9 ["_openAnimation"]
  GETUPVAL R3 2
  GETTABLEKS R6 R2 K3 ["_frame"]
  GETTABLEKS R5 R6 K5 ["PromptScale"]
  GETUPVAL R6 3
  DUPTABLE R7 K7 [{"Scale"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K6 ["Scale"]
  NAMECALL R3 R3 K8 ["Create"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["_closeAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K11 ["_buttonCount"]
  LOADB R3 1
  SETTABLEKS R3 R2 K12 ["_playAnimation"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["_hideErrorCode"]
  LOADK R3 K14 ["ErrorPrompt"]
  SETTABLEKS R3 R2 K15 ["_menuIsOpenKey"]
  JUMPIFNOT R1 [+37]
  GETTABLEKS R3 R1 K16 ["PlayAnimation"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R1 K16 ["PlayAnimation"]
  SETTABLEKS R3 R2 K12 ["_playAnimation"]
  GETTABLEKS R3 R1 K17 ["HideErrorCode"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R1 K17 ["HideErrorCode"]
  SETTABLEKS R3 R2 K13 ["_hideErrorCode"]
  GETTABLEKS R3 R1 K18 ["MenuIsOpenKey"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R1 K18 ["MenuIsOpenKey"]
  SETTABLEKS R3 R2 K15 ["_menuIsOpenKey"]
  GETTABLEKS R6 R2 K3 ["_frame"]
  GETTABLEKS R5 R6 K19 ["MessageArea"]
  GETTABLEKS R4 R5 K20 ["ErrorFrame"]
  GETTABLEKS R3 R4 K21 ["ErrorMessage"]
  GETTABLEKS R5 R1 K23 ["MessageTextScaled"]
  ORK R4 R5 K22 [False]
  SETTABLEKS R4 R3 K24 ["TextScaled"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K25 ["GamepadEnabled"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R3 5
  LOADK R5 K26 ["SelectedCoreObject"]
  NAMECALL R3 R3 K27 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K28 ["Connect"]
  CALL R3 2 0
  RETURN R2 1

PROTO_7:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["setErrorText"]
  CALL R3 3 0
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K2 ["Y"]
  NAMECALL R3 R0 K3 ["resizeHeight"]
  CALL R3 2 0
  JUMP [+3]
  NAMECALL R3 R0 K3 ["resizeHeight"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K4 ["_isOpen"]
  JUMPIF R3 [+75]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["push"]
  LOADK R4 K6 ["ErrorPromptOverride"]
  GETIMPORT R5 K10 [Enum.OverrideMouseIconBehavior.ForceShow]
  CALL R3 2 0
  GETUPVAL R3 3
  LOADB R5 1
  GETTABLEKS R6 R0 K11 ["_menuIsOpenKey"]
  NAMECALL R3 R3 K12 ["SetMenuIsOpen"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K13 ["_frame"]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["Visible"]
  LOADB R3 1
  SETTABLEKS R3 R0 K4 ["_isOpen"]
  GETTABLEKS R3 R0 K15 ["_playAnimation"]
  JUMPIFNOT R3 [+20]
  GETTABLEKS R3 R0 K16 ["_openAnimation"]
  NAMECALL R3 R3 K17 ["Play"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K16 ["_openAnimation"]
  GETTABLEKS R3 R4 K18 ["Completed"]
  NAMECALL R3 R3 K19 ["wait"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K13 ["_frame"]
  GETTABLEKS R3 R4 K20 ["PromptScale"]
  LOADN R4 1
  SETTABLEKS R4 R3 K21 ["Scale"]
  JUMP [+7]
  GETTABLEKS R4 R0 K13 ["_frame"]
  GETTABLEKS R3 R4 K20 ["PromptScale"]
  LOADN R4 1
  SETTABLEKS R4 R3 K21 ["Scale"]
  GETUPVAL R3 4
  JUMPIF R3 [+21]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K22 ["VREnabled"]
  JUMPIF R3 [+5]
  GETUPVAL R3 3
  NAMECALL R3 R3 K23 ["IsTenFootInterface"]
  CALL R3 1 1
  JUMPIFNOT R3 [+12]
  GETUPVAL R3 3
  GETTABLEKS R8 R0 K13 ["_frame"]
  GETTABLEKS R7 R8 K24 ["MessageArea"]
  GETTABLEKS R6 R7 K25 ["ErrorFrame"]
  GETTABLEKS R5 R6 K26 ["ButtonArea"]
  NAMECALL R3 R3 K27 ["Select"]
  CALL R3 2 0
  GETUPVAL R3 4
  JUMPIFNOT R3 [+24]
  GETTABLEKS R3 R0 K4 ["_isOpen"]
  JUMPIFNOT R3 [+21]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K22 ["VREnabled"]
  JUMPIF R3 [+5]
  GETUPVAL R3 3
  NAMECALL R3 R3 K23 ["IsTenFootInterface"]
  CALL R3 1 1
  JUMPIFNOT R3 [+12]
  GETUPVAL R3 3
  GETTABLEKS R8 R0 K13 ["_frame"]
  GETTABLEKS R7 R8 K24 ["MessageArea"]
  GETTABLEKS R6 R7 K25 ["ErrorFrame"]
  GETTABLEKS R5 R6 K26 ["ButtonArea"]
  NAMECALL R3 R3 K27 ["Select"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_isOpen"]
  JUMPIFNOT R1 [+43]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["pop"]
  LOADK R2 K2 ["ErrorPromptOverride"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADB R3 0
  GETTABLEKS R4 R0 K3 ["_menuIsOpenKey"]
  NAMECALL R1 R1 K4 ["SetMenuIsOpen"]
  CALL R1 3 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isOpen"]
  GETTABLEKS R1 R0 K5 ["_playAnimation"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K6 ["_closeAnimation"]
  NAMECALL R1 R1 K7 ["Play"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K6 ["_closeAnimation"]
  GETTABLEKS R1 R2 K8 ["Completed"]
  NAMECALL R1 R1 K9 ["wait"]
  CALL R1 1 0
  JUMP [+7]
  GETTABLEKS R2 R0 K10 ["_frame"]
  GETTABLEKS R1 R2 K11 ["PromptScale"]
  LOADN R2 0
  SETTABLEKS R2 R1 K12 ["Scale"]
  GETTABLEKS R1 R0 K10 ["_frame"]
  LOADB R2 0
  SETTABLEKS R2 R1 K13 ["Visible"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_frame"]
  SETTABLEKS R1 R2 K1 ["Parent"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R6 R0 K0 ["_frame"]
  GETTABLEKS R5 R6 K1 ["MessageArea"]
  GETTABLEKS R4 R5 K2 ["ErrorFrame"]
  GETTABLEKS R3 R4 K3 ["ErrorMessage"]
  GETTABLEKS R4 R0 K4 ["_hideErrorCode"]
  JUMPIFNOT R4 [+3]
  SETTABLEKS R1 R3 K5 ["Text"]
  RETURN R0 0
  GETUPVAL R4 0
  JUMPIFNOT R4 [+42]
  LOADN R4 255
  JUMPIFNOT R2 [+2]
  GETTABLEKS R4 R2 K6 ["Value"]
  LOADK R5 K7 ["Error Code: %d"]
  MOVE R7 R4
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 2 1
  DUPTABLE R7 K10 [{"ERROR_CODE"}]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R9 R4
  GETIMPORT R8 K12 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K9 ["ERROR_CODE"]
  GETUPVAL R8 1
  JUMPIF R8 [+2]
  MOVE R6 R5
  JUMP [+12]
  GETIMPORT R8 K14 [pcall]
  LOADK R10 K15 ["InGame.ConnectionError.Message.ErrorCode"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R10
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMPIF R6 [+1]
  MOVE R6 R5
  LOADK R7 K16 ["%s
(%s)"]
  MOVE R9 R1
  MOVE R10 R6
  NAMECALL R7 R7 K8 ["format"]
  CALL R7 3 1
  SETTABLEKS R7 R3 K5 ["Text"]
  RETURN R0 0
  JUMPIF R2 [+8]
  LOADK R4 K17 ["%s
(Error Code: -1)"]
  MOVE R6 R1
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Text"]
  RETURN R0 0
  LOADK R4 K18 ["%s
(Error Code: %d)"]
  MOVE R6 R1
  GETTABLEKS R7 R2 K6 ["Value"]
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["Text"]
  RETURN R0 0

PROTO_11:
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_frame"]
  GETTABLEKS R4 R5 K1 ["TitleFrame"]
  GETTABLEKS R3 R4 K2 ["ErrorTitle"]
  JUMPIFNOT R2 [+19]
  GETUPVAL R5 0
  JUMPIF R5 [+2]
  MOVE R4 R1
  JUMP [+12]
  GETIMPORT R5 K4 [pcall]
  LOADNIL R7
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R7
  CALL R5 1 2
  JUMPIFNOT R5 [+2]
  MOVE R4 R6
  JUMPIF R4 [+1]
  MOVE R4 R1
  SETTABLEKS R4 R3 K5 ["Text"]
  RETURN R0 0
  SETTABLEKS R1 R3 K5 ["Text"]
  RETURN R0 0

PROTO_12:
  JUMPIFNOTEQKS R1 K0 [""] [+5]
  NAMECALL R3 R0 K1 ["_close"]
  CALL R3 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K0 [""] [+6]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K2 ["_open"]
  CALL R3 3 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R4 R0 K0 ["_frame"]
  GETTABLEKS R3 R4 K1 ["MessageArea"]
  GETTABLEKS R2 R3 K2 ["ErrorFrame"]
  GETTABLEKS R1 R2 K3 ["ButtonArea"]
  GETTABLEKS R2 R0 K4 ["_buttonCount"]
  JUMPIFNOTEQKN R2 K5 [0] [+5]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["Visible"]
  RETURN R0 0
  GETTABLEKS R8 R0 K0 ["_frame"]
  GETTABLEKS R7 R8 K7 ["Size"]
  GETTABLEKS R6 R7 K8 ["X"]
  GETTABLEKS R5 R6 K9 ["Offset"]
  GETTABLEKS R8 R0 K4 ["_buttonCount"]
  SUBK R7 R8 K10 [1]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["BUTTON_CELL_PADDING"]
  MUL R6 R7 R8
  SUB R4 R5 R6
  LOADN R6 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["SIDE_PADDING"]
  MUL R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R0 K4 ["_buttonCount"]
  DIV R2 R3 R4
  LOADB R3 1
  SETTABLEKS R3 R1 K6 ["Visible"]
  GETTABLEKS R3 R1 K13 ["ButtonLayout"]
  GETIMPORT R4 K16 [UDim2.new]
  LOADN R5 0
  MOVE R6 R2
  LOADN R7 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["BUTTON_HEIGHT"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K18 ["CellSize"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R4 R0 K0 ["_frame"]
  GETTABLEKS R3 R4 K1 ["MessageArea"]
  GETTABLEKS R2 R3 K2 ["ErrorFrame"]
  GETTABLEKS R1 R2 K3 ["ButtonArea"]
  GETTABLEKS R2 R0 K4 ["_primaryShimmer"]
  JUMPIFNOT R2 [+3]
  LOADNIL R2
  SETTABLEKS R2 R0 K4 ["_primaryShimmer"]
  NAMECALL R2 R1 K5 ["GetChildren"]
  CALL R2 1 1
  GETIMPORT R3 K7 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K8 ["name"]
  JUMPIFEQKS R8 K9 ["ButtonLayout"] [+4]
  NAMECALL R8 R7 K10 ["Destroy"]
  CALL R8 1 0
  FORGLOOP R3 2 [-8]
  RETURN R0 0

PROTO_15:
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  JUMPIF R2 [+1]
  LOADK R2 K0 ["Default"]
  NAMECALL R3 R0 K1 ["clearButtons"]
  CALL R3 1 0
  GETTABLEKS R6 R0 K2 ["_frame"]
  GETTABLEKS R5 R6 K3 ["MessageArea"]
  GETTABLEKS R4 R5 K4 ["ErrorFrame"]
  GETTABLEKS R3 R4 K5 ["ButtonArea"]
  LOADN R4 0
  GETIMPORT R5 K7 [pairs]
  MOVE R6 R1
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R9 K8 ["Text"]
  GETTABLEKS R11 R9 K9 ["LocalizationKey"]
  JUMPIFNOT R11 [+20]
  GETTABLEKS R11 R9 K9 ["LocalizationKey"]
  GETTABLEKS R12 R9 K8 ["Text"]
  GETUPVAL R13 0
  JUMPIF R13 [+2]
  MOVE R10 R12
  JUMP [+12]
  GETIMPORT R13 K11 [pcall]
  LOADNIL R15
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R11
  CAPTURE VAL R15
  CALL R13 1 2
  JUMPIFNOT R13 [+2]
  MOVE R10 R14
  JUMPIF R10 [+1]
  MOVE R10 R12
  GETUPVAL R12 1
  GETTABLE R11 R12 R2
  MOVE R12 R10
  GETTABLEKS R13 R9 K12 ["LayoutOrder"]
  GETTABLEKS R14 R9 K13 ["Primary"]
  CALL R11 3 1
  GETTABLEKS R12 R9 K13 ["Primary"]
  JUMPIFNOT R12 [+8]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["new"]
  MOVE R13 R11
  LOADK R14 K15 ["PrimaryButton"]
  CALL R12 2 1
  SETTABLEKS R12 R0 K16 ["_primaryShimmer"]
  SETTABLEKS R3 R11 K17 ["Parent"]
  GETTABLEKS R12 R11 K18 ["Activated"]
  GETTABLEKS R14 R9 K19 ["Callback"]
  NAMECALL R12 R12 K20 ["connect"]
  CALL R12 2 0
  ADDK R4 R4 K21 [1]
  FORGLOOP R5 2 [-55]
  GETTABLEKS R5 R0 K22 ["_buttonCount"]
  JUMPIFEQ R5 R4 [+6]
  SETTABLEKS R4 R0 K22 ["_buttonCount"]
  NAMECALL R5 R0 K23 ["_relayout"]
  CALL R5 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_primaryShimmer"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_primaryShimmer"]
  NAMECALL R1 R1 K1 ["play"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_primaryShimmer"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_primaryShimmer"]
  NAMECALL R1 R1 K1 ["stop"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["resizeWidth"]
  CALL R3 2 0
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["resizeHeight"]
  CALL R3 2 0
  NAMECALL R3 R0 K2 ["_relayout"]
  CALL R3 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R5 R0 K0 ["_frame"]
  GETTABLEKS R4 R5 K1 ["Size"]
  GETTABLEKS R3 R4 K2 ["X"]
  GETTABLEKS R2 R3 K3 ["Offset"]
  LOADN R5 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["SIDE_MARGIN"]
  MUL R4 R5 R6
  SUB R3 R1 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["ERROR_PROMPT_MAX_WIDTH"]
  GETTABLEKS R4 R5 K6 ["Default"]
  JUMPIFNOTLT R4 R3 [+14]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["ERROR_PROMPT_MAX_WIDTH"]
  GETTABLEKS R4 R5 K6 ["Default"]
  JUMPIFNOTEQ R2 R4 [+2]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["ERROR_PROMPT_MAX_WIDTH"]
  GETTABLEKS R3 R4 K6 ["Default"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["ERROR_PROMPT_MIN_WIDTH"]
  GETTABLEKS R4 R5 K6 ["Default"]
  JUMPIFNOTLT R3 R4 [+14]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["ERROR_PROMPT_MIN_WIDTH"]
  GETTABLEKS R4 R5 K6 ["Default"]
  JUMPIFNOTEQ R2 R4 [+2]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ERROR_PROMPT_MIN_WIDTH"]
  GETTABLEKS R3 R4 K6 ["Default"]
  GETTABLEKS R4 R0 K0 ["_frame"]
  GETIMPORT R5 K10 [UDim2.new]
  LOADN R6 0
  MOVE R7 R3
  LOADN R8 0
  GETTABLEKS R12 R0 K0 ["_frame"]
  GETTABLEKS R11 R12 K1 ["Size"]
  GETTABLEKS R10 R11 K11 ["Y"]
  GETTABLEKS R9 R10 K3 ["Offset"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K1 ["Size"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIF R4 [+6]
  NAMECALL R4 R0 K12 ["resizeHeight"]
  CALL R4 1 0
  NAMECALL R4 R0 K13 ["_relayout"]
  CALL R4 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R5 R0 K0 ["_frame"]
  GETTABLEKS R4 R5 K1 ["MessageArea"]
  GETTABLEKS R3 R4 K2 ["ErrorFrame"]
  GETTABLEKS R2 R3 K3 ["ErrorMessage"]
  GETIMPORT R3 K6 [Vector2.new]
  GETTABLEKS R8 R0 K0 ["_frame"]
  GETTABLEKS R7 R8 K7 ["Size"]
  GETTABLEKS R6 R7 K8 ["X"]
  GETTABLEKS R5 R6 K9 ["Offset"]
  LOADN R7 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["SIDE_PADDING"]
  MUL R6 R7 R8
  SUB R4 R5 R6
  LOADN R5 232
  CALL R3 2 1
  GETUPVAL R4 1
  GETTABLEKS R6 R2 K11 ["Text"]
  GETTABLEKS R7 R2 K12 ["TextSize"]
  GETTABLEKS R8 R2 K13 ["Font"]
  MOVE R9 R3
  NAMECALL R4 R4 K14 ["GetTextSize"]
  CALL R4 5 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["ERROR_TITLE_FRAME_HEIGHT"]
  GETTABLEKS R11 R12 K17 ["Default"]
  GETTABLEKS R12 R4 K18 ["Y"]
  ADD R10 R11 R12
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["SPLIT_LINE_THICKNESS"]
  ADD R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K20 ["BUTTON_HEIGHT"]
  ADD R8 R9 R10
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K21 ["LAYOUT_PADDING"]
  ADD R7 R8 R9
  LOADN R9 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["SIDE_PADDING"]
  MUL R8 R9 R10
  ADD R6 R7 R8
  ADDK R5 R6 K15 [1]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+26]
  LOADN R8 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K22 ["VERTICAL_MARGIN"]
  MUL R7 R8 R9
  SUB R6 R1 R7
  FASTCALL2 MATH_MIN R5 R6 [+5]
  MOVE R8 R5
  MOVE R9 R6
  GETIMPORT R7 K25 [math.min]
  CALL R7 2 1
  MOVE R5 R7
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K26 ["ERROR_PROMPT_MIN_HEIGHT"]
  GETTABLEKS R9 R10 K17 ["Default"]
  FASTCALL2 MATH_MAX R5 R9 [+4]
  MOVE R8 R5
  GETIMPORT R7 K28 [math.max]
  CALL R7 2 1
  MOVE R5 R7
  GETTABLEKS R6 R0 K0 ["_frame"]
  GETIMPORT R7 K30 [UDim2.new]
  LOADN R8 0
  GETTABLEKS R12 R0 K0 ["_frame"]
  GETTABLEKS R11 R12 K7 ["Size"]
  GETTABLEKS R10 R11 K8 ["X"]
  GETTABLEKS R9 R10 K9 ["Offset"]
  LOADN R10 0
  MOVE R11 R5
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Size"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TweenService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R0 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["TextService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["GuiService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["LocalizationService"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K11 ["VRService"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K12 ["UserInputService"]
  NAMECALL R8 R8 K3 ["GetService"]
  CALL R8 2 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R13 R1 K15 ["Workspace"]
  GETTABLEKS R12 R13 K16 ["Packages"]
  GETTABLEKS R11 R12 K17 ["AppCommonLib"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K18 ["Create"]
  GETIMPORT R10 K14 [require]
  GETTABLEKS R12 R1 K19 ["InGameServices"]
  GETTABLEKS R11 R12 K20 ["MouseIconOverrideService"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R14 R3 K21 ["Modules"]
  GETTABLEKS R13 R14 K22 ["Common"]
  GETTABLEKS R12 R13 K23 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R14 R3 K21 ["Modules"]
  GETTABLEKS R13 R14 K24 ["Shimmer"]
  CALL R12 1 1
  GETIMPORT R13 K26 [settings]
  CALL R13 0 1
  LOADK R15 K27 ["LocalizeErrorCodeString"]
  NAMECALL R13 R13 K28 ["GetFFlag"]
  CALL R13 2 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K29 ["FixGamepadDisconnectHighlight2"]
  LOADB R17 0
  NAMECALL R14 R14 K30 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R15 K14 [require]
  GETTABLEKS R18 R3 K21 ["Modules"]
  GETTABLEKS R17 R18 K31 ["Flags"]
  GETTABLEKS R16 R17 K32 ["FFlagErrorPromptResizesHeight"]
  CALL R15 1 1
  GETIMPORT R16 K35 [TweenInfo.new]
  LOADK R17 K36 [0.15]
  GETIMPORT R18 K40 [Enum.EasingStyle.Quint]
  GETIMPORT R19 K43 [Enum.EasingDirection.InOut]
  LOADN R20 0
  LOADB R21 0
  LOADN R22 0
  CALL R16 6 1
  LOADNIL R17
  NEWCLOSURE R18 P0
  CAPTURE REF R17
  CAPTURE VAL R0
  CAPTURE VAL R6
  GETTABLEKS R19 R0 K44 ["CoreScriptLocalization"]
  GETTABLEKS R21 R6 K45 ["RobloxLocaleId"]
  NAMECALL R19 R19 K46 ["GetTranslator"]
  CALL R19 2 1
  MOVE R17 R19
  LOADK R21 K45 ["RobloxLocaleId"]
  NAMECALL R19 R6 K47 ["GetPropertyChangedSignal"]
  CALL R19 2 1
  MOVE R21 R18
  NAMECALL R19 R19 K48 ["connect"]
  CALL R19 2 0
  NEWCLOSURE R19 P1
  CAPTURE REF R17
  NEWTABLE R20 1 0
  DUPCLOSURE R21 K49 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K50 ["Default"]
  NEWTABLE R21 1 0
  DUPCLOSURE R22 K51 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R22 R21 K50 ["Default"]
  NEWTABLE R22 16 0
  SETTABLEKS R22 R22 K52 ["__index"]
  DUPCLOSURE R23 K53 [PROTO_6]
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K34 ["new"]
  DUPCLOSURE R23 K54 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K55 ["_open"]
  DUPCLOSURE R23 K56 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K57 ["_close"]
  DUPCLOSURE R23 K58 [PROTO_9]
  SETTABLEKS R23 R22 K59 ["setParent"]
  NEWCLOSURE R23 P8
  CAPTURE VAL R13
  CAPTURE REF R17
  SETTABLEKS R23 R22 K60 ["setErrorText"]
  NEWCLOSURE R23 P9
  CAPTURE REF R17
  SETTABLEKS R23 R22 K61 ["setErrorTitle"]
  DUPCLOSURE R23 K62 [PROTO_12]
  SETTABLEKS R23 R22 K63 ["onErrorChanged"]
  DUPCLOSURE R23 K64 [PROTO_13]
  CAPTURE VAL R11
  SETTABLEKS R23 R22 K65 ["_relayout"]
  DUPCLOSURE R23 K66 [PROTO_14]
  SETTABLEKS R23 R22 K67 ["clearButtons"]
  NEWCLOSURE R23 P13
  CAPTURE REF R17
  CAPTURE VAL R21
  CAPTURE VAL R12
  SETTABLEKS R23 R22 K68 ["updateButtons"]
  DUPCLOSURE R23 K69 [PROTO_16]
  SETTABLEKS R23 R22 K70 ["primaryShimmerPlay"]
  DUPCLOSURE R23 K71 [PROTO_17]
  SETTABLEKS R23 R22 K72 ["primaryShimmerStop"]
  DUPCLOSURE R23 K73 [PROTO_18]
  SETTABLEKS R23 R22 K74 ["resizeWidthAndHeight"]
  DUPCLOSURE R23 K75 [PROTO_19]
  CAPTURE VAL R11
  CAPTURE VAL R15
  SETTABLEKS R23 R22 K76 ["resizeWidth"]
  DUPCLOSURE R23 K77 [PROTO_20]
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R15
  SETTABLEKS R23 R22 K78 ["resizeHeight"]
  CLOSEUPVALS R17
  RETURN R22 1
