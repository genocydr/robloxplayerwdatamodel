PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["data"]
  GETTABLEKS R4 R1 K2 ["Version"]
  JUMPIFEQKN R4 K3 [2] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K5 [assert]
  CALL R2 1 0
  GETUPVAL R2 0
  MOVE R3 R1
  LOADN R4 0
  CALL R2 2 1
  NEWTABLE R3 0 0
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["searchFilter"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["showPlugins"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K8 ["showGC"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K9 ["gcFunctionOffsets"]
  LOADN R8 1
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K10 ["average"]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+16]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K11 ["sessionLength"]
  JUMPIFNOT R9 [+10]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K11 ["sessionLength"]
  DIVK R9 R10 K12 [1000]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K10 ["average"]
  DIV R8 R9 R10
  GETIMPORT R9 K14 [ipairs]
  GETTABLEKS R10 R1 K15 ["Functions"]
  CALL R9 1 3
  FORGPREP_INEXT R9
  LENGTH R14 R4
  LOADN R15 0
  JUMPIFNOTLT R15 R14 [+3]
  GETTABLE R14 R4 R12
  JUMPIFNOT R14 [+45]
  JUMPIF R5 [+5]
  GETUPVAL R14 1
  MOVE R15 R1
  MOVE R16 R13
  CALL R14 2 1
  JUMPIF R14 [+39]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K22 [{"layoutOrder", "data", "functionId", "nodeName", "average", "gcOffset", "percentageRatio"}]
  GETTABLEKS R19 R13 K24 ["TotalDuration"]
  SUB R18 R2 R19
  MULK R17 R18 K23 [1000000]
  SETTABLEKS R17 R16 K17 ["layoutOrder"]
  SETTABLEKS R1 R16 K1 ["data"]
  SETTABLEKS R12 R16 K18 ["functionId"]
  GETTABLEKS R17 R13 K25 ["Name"]
  SETTABLEKS R17 R16 K19 ["nodeName"]
  SETTABLEKS R8 R16 K10 ["average"]
  JUMPIF R6 [+2]
  GETTABLE R17 R7 R12
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K20 ["gcOffset"]
  GETTABLEKS R19 R0 K0 ["props"]
  GETTABLEKS R18 R19 K26 ["showAsPercentages"]
  JUMPIFNOT R18 [+2]
  DIVK R17 R2 K27 [100]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K21 ["percentageRatio"]
  CALL R14 2 1
  SETTABLE R14 R3 R12
  FORGLOOP R9 2 [inext] [-52]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["layoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["size"]
  LOADNIL R3
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["profiling"]
  JUMPIFNOT R4 [+46]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["data"]
  JUMPIF R4 [+41]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["TextLabel"]
  DUPTABLE R6 K13 [{"Size", "Position", "Text", "TextColor3", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Size"]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K8 ["Position"]
  LOADK R7 K17 ["Press Stop to Finish Profiling"]
  SETTABLEKS R7 R6 K9 ["Text"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Color"]
  GETTABLEKS R7 R8 K9 ["Text"]
  SETTABLEKS R7 R6 K10 ["TextColor3"]
  LOADN R7 1
  SETTABLEKS R7 R6 K11 ["BackgroundTransparency"]
  SETTABLEKS R1 R6 K12 ["LayoutOrder"]
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+45]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["data"]
  JUMPIF R4 [+40]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["TextLabel"]
  DUPTABLE R6 K13 [{"Size", "Position", "Text", "TextColor3", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Size"]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K8 ["Position"]
  LOADK R7 K19 ["Start Profiling to View Data"]
  SETTABLEKS R7 R6 K9 ["Text"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Color"]
  GETTABLEKS R7 R8 K9 ["Text"]
  SETTABLEKS R7 R6 K10 ["TextColor3"]
  LOADN R7 1
  SETTABLEKS R7 R6 K11 ["BackgroundTransparency"]
  SETTABLEKS R1 R6 K12 ["LayoutOrder"]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R4 2
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K20 ["sessionLength"]
  CALL R4 1 1
  JUMPIFNOT R4 [+3]
  LOADK R5 K21 ["Session Duration: "]
  MOVE R6 R4
  CONCAT R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  LOADK R6 K22 ["Frame"]
  DUPTABLE R7 K23 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R2 R7 K7 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K11 ["BackgroundTransparency"]
  SETTABLEKS R1 R7 K12 ["LayoutOrder"]
  DUPTABLE R8 K27 [{"SessionInfo", "Header", "Entries"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K22 ["Frame"]
  DUPTABLE R11 K28 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R16 3
  CALL R12 4 1
  SETTABLEKS R12 R11 K7 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  DUPTABLE R12 K31 [{"Name", "TopHorizontal"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K34 [{"text", "size", "pos"}]
  ORK R16 R4 K35 ["Session Info"]
  SETTABLEKS R16 R15 K32 ["text"]
  GETIMPORT R16 K16 [UDim2.new]
  GETUPVAL R19 5
  MULK R18 R19 K37 [2]
  SUBRK R17 R36 K18 ["Color"]
  GETUPVAL R20 6
  MINUS R19 R20
  GETUPVAL R20 7
  SUB R18 R19 R20
  LOADN R19 0
  GETUPVAL R20 3
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["size"]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 7
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K33 ["pos"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["Name"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K22 ["Frame"]
  DUPTABLE R15 K40 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  CALL R16 4 1
  SETTABLEKS R16 R15 K7 ["Size"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K39 ["BorderSizePixel"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["TopHorizontal"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K24 ["SessionInfo"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K22 ["Frame"]
  DUPTABLE R11 K41 [{"Size", "BackgroundTransparency", "Position"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R16 3
  CALL R12 4 1
  SETTABLEKS R12 R11 K7 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R16 3
  CALL R12 4 1
  SETTABLEKS R12 R11 K8 ["Position"]
  DUPTABLE R12 K45 [{"Name", "Inclusive", "TopHorizontal", "LowerHorizontal", "Vertical1"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K47 [{"text", "size", "pos", "sortfunction"}]
  GETUPVAL R17 9
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K32 ["text"]
  GETIMPORT R16 K16 [UDim2.new]
  GETUPVAL R19 5
  MULK R18 R19 K37 [2]
  SUBRK R17 R36 K18 ["Color"]
  GETUPVAL R20 6
  MINUS R19 R20
  GETUPVAL R20 7
  SUB R18 R19 R20
  LOADN R19 0
  GETUPVAL R20 3
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["size"]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 7
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K33 ["pos"]
  GETTABLEKS R16 R0 K48 ["onSortChanged"]
  SETTABLEKS R16 R15 K46 ["sortfunction"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["Name"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K47 [{"text", "size", "pos", "sortfunction"}]
  GETUPVAL R17 9
  GETTABLEN R16 R17 2
  SETTABLEKS R16 R15 K32 ["text"]
  GETIMPORT R16 K16 [UDim2.new]
  GETUPVAL R17 5
  GETUPVAL R19 7
  MINUS R18 R19
  LOADN R19 0
  GETUPVAL R20 3
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["size"]
  GETIMPORT R16 K16 [UDim2.new]
  GETUPVAL R19 5
  MULK R18 R19 K36 [1]
  SUBRK R17 R36 K18 ["Color"]
  GETUPVAL R18 6
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K33 ["pos"]
  GETTABLEKS R16 R0 K48 ["onSortChanged"]
  SETTABLEKS R16 R15 K46 ["sortfunction"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["Inclusive"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K22 ["Frame"]
  DUPTABLE R15 K40 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  CALL R16 4 1
  SETTABLEKS R16 R15 K7 ["Size"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K39 ["BorderSizePixel"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["TopHorizontal"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K22 ["Frame"]
  DUPTABLE R15 K49 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R20 10
  CALL R16 4 1
  SETTABLEKS R16 R15 K7 ["Size"]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K8 ["Position"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K39 ["BorderSizePixel"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K43 ["LowerHorizontal"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K22 ["Frame"]
  DUPTABLE R15 K49 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 10
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K7 ["Size"]
  GETIMPORT R16 K16 [UDim2.new]
  GETUPVAL R18 5
  SUBRK R17 R36 K18 ["Color"]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K8 ["Position"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K39 ["BorderSizePixel"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K44 ["Vertical1"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["Header"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K50 ["ScrollingFrame"]
  DUPTABLE R11 K55 [{"Size", "Position", "BackgroundTransparency", "VerticalScrollBarInset", "ScrollBarThickness", "CanvasSize", "AutomaticCanvasSize"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  GETUPVAL R18 3
  MINUS R17 R18
  MULK R16 R17 K37 [2]
  CALL R12 4 1
  SETTABLEKS R12 R11 K7 ["Size"]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 3
  MULK R16 R17 K37 [2]
  CALL R12 4 1
  SETTABLEKS R12 R11 K8 ["Position"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  GETIMPORT R12 K59 [Enum.ScrollBarInset.None]
  SETTABLEKS R12 R11 K51 ["VerticalScrollBarInset"]
  LOADN R12 5
  SETTABLEKS R12 R11 K52 ["ScrollBarThickness"]
  GETIMPORT R12 K61 [UDim2.fromScale]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K53 ["CanvasSize"]
  GETIMPORT R12 K64 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K54 ["AutomaticCanvasSize"]
  DUPTABLE R12 K67 [{"Layout", "Children"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K68 ["UIListLayout"]
  DUPTABLE R15 K71 [{"FillDirection", "SortOrder"}]
  GETIMPORT R16 K73 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K69 ["FillDirection"]
  GETIMPORT R16 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K70 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K65 ["Layout"]
  JUMPIFNOT R3 [+2]
  MOVE R13 R3
  JUMP [+7]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K75 ["createFragment"]
  NAMECALL R14 R0 K76 ["renderChildren"]
  CALL R14 1 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K66 ["Children"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K26 ["Entries"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ProfilerDataFormatV2"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["ProfilerUtil"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["getDurations"]
  GETTABLEKS R5 R3 K14 ["formatSessionLength"]
  GETTABLEKS R6 R3 K15 ["getPluginFlag"]
  GETIMPORT R11 K9 [script]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K16 ["Components"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K17 ["HeaderButton"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K9 [script]
  GETTABLEKS R11 R12 K10 ["Parent"]
  GETTABLEKS R10 R11 K18 ["ProfilerFunctionViewEntry"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R15 K9 [script]
  GETTABLEKS R14 R15 K10 ["Parent"]
  GETTABLEKS R13 R14 K10 ["Parent"]
  GETTABLEKS R12 R13 K10 ["Parent"]
  GETTABLEKS R11 R12 K19 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K20 ["GeneralFormatting"]
  GETTABLEKS R11 R12 K21 ["LineWidth"]
  GETTABLEKS R13 R10 K20 ["GeneralFormatting"]
  GETTABLEKS R12 R13 K22 ["LineColor"]
  GETTABLEKS R14 R10 K20 ["GeneralFormatting"]
  GETTABLEKS R13 R14 K23 ["HeaderFrameHeight"]
  GETTABLEKS R15 R10 K20 ["GeneralFormatting"]
  GETTABLEKS R14 R15 K24 ["EntryFrameHeight"]
  GETTABLEKS R16 R10 K20 ["GeneralFormatting"]
  GETTABLEKS R15 R16 K25 ["NoResultSearchStr"]
  GETTABLEKS R17 R10 K26 ["ScriptProfilerFormatting"]
  GETTABLEKS R16 R17 K27 ["HeaderNames"]
  GETTABLEKS R18 R10 K26 ["ScriptProfilerFormatting"]
  GETTABLEKS R17 R18 K28 ["ValueCellWidth"]
  GETTABLEKS R19 R10 K26 ["ScriptProfilerFormatting"]
  GETTABLEKS R18 R19 K29 ["CellPadding"]
  GETTABLEKS R20 R10 K26 ["ScriptProfilerFormatting"]
  GETTABLEKS R19 R20 K30 ["ValuePadding"]
  GETTABLEKS R20 R1 K31 ["PureComponent"]
  LOADK R22 K32 ["ProfilerView"]
  NAMECALL R20 R20 K33 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K34 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R21 R20 K35 ["renderChildren"]
  DUPCLOSURE R21 K36 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K37 ["render"]
  RETURN R20 1