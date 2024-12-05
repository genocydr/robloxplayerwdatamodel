PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["AbsoluteSize"]
  MOVE R2 R1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R1 K2 ["X"]
  LOADN R4 128
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["LogAssetImpression"]
  JUMPIFNOT R5 [+12]
  GETTABLEKS R5 R4 K1 ["LogAssetImpression"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R1
  MOVE R9 R2
  GETTABLEKS R10 R4 K2 ["AbsoluteSize"]
  GETTABLEKS R11 R4 K3 ["AbsolutePosition"]
  CALL R5 6 -1
  RETURN R5 -1
  LOADNIL R5
  RETURN R5 1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["logImpression"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  CALL R4 4 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["OnAssetPreviewButtonClicked"]
  JUMPIFNOT R2 [+2]
  LOADK R5 K2 [0.5]
  JUMP [+1]
  LOADN R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K9 [{"AssetInfo", "LayoutOrder", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "Size"}]
  SETTABLEKS R1 R8 K4 ["AssetInfo"]
  SETTABLEKS R0 R8 K5 ["LayoutOrder"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  SETTABLEKS R9 R8 K6 ["LogImpression"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K1 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R9 R3 K10 ["AbsoluteSize"]
  SETTABLEKS R9 R8 K7 ["ParentAbsoluteSize"]
  GETIMPORT R9 K13 [UDim2.new]
  MOVE R10 R5
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R13 3
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Size"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getNextOrder"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["renderFontTile"]
  MOVE R3 R1
  MOVE R4 R0
  LOADB R5 0
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["hasExceededContentMaxWidth"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  LOADNIL R3
  JUMPIFNOT R1 [+109]
  LENGTH R4 R0
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+106]
  NEWTABLE R4 0 0
  NEWTABLE R3 0 0
  GETIMPORT R5 K3 [pairs]
  MOVE R6 R0
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["renderFontTile"]
  LENGTH R11 R4
  MOVE R12 R9
  LOADB R13 1
  CALL R10 3 1
  FASTCALL2 TABLE_INSERT R4 R10 [+5]
  MOVE R12 R4
  MOVE R13 R10
  GETIMPORT R11 K7 [table.insert]
  CALL R11 2 0
  LENGTH R11 R4
  JUMPIFNOTEQKN R11 K8 [2] [+36]
  NAMECALL R11 R2 K9 ["getNextOrder"]
  CALL R11 1 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K16 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R15 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K11 ["AutomaticSize"]
  GETIMPORT R15 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K12 ["Layout"]
  SETTABLEKS R11 R14 K13 ["LayoutOrder"]
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 10
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADN R15 10
  SETTABLEKS R15 R14 K15 ["Spacing"]
  MOVE R15 R4
  CALL R12 3 1
  SETTABLE R12 R3 R11
  NEWTABLE R4 0 0
  FORGLOOP R5 2 [-53]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+48]
  NAMECALL R5 R2 K9 ["getNextOrder"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K26 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R9 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K11 ["AutomaticSize"]
  GETIMPORT R9 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K25 ["HorizontalAlignment"]
  GETIMPORT R9 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K12 ["Layout"]
  SETTABLEKS R5 R8 K13 ["LayoutOrder"]
  GETIMPORT R9 K24 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 10
  CALL R9 4 1
  SETTABLEKS R9 R8 K14 ["Size"]
  LOADN R9 10
  SETTABLEKS R9 R8 K15 ["Spacing"]
  MOVE R9 R4
  CALL R6 3 1
  SETTABLE R6 R3 R5
  JUMP [+9]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["map"]
  MOVE R5 R0
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K33 [{"AutomaticSize", "Layout", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R7 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K11 ["AutomaticSize"]
  GETIMPORT R7 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K12 ["Layout"]
  GETIMPORT R7 K24 [UDim2.new]
  LOADN R8 1
  LOADN R9 1
  LOADN R10 0
  LOADN R11 10
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADN R7 10
  SETTABLEKS R7 R6 K15 ["Spacing"]
  GETIMPORT R7 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K32 ["VerticalAlignment"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assets"]
  LENGTH R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["loading"]
  JUMPIFNOT R2 [+2]
  LOADN R1 60
  JUMP [+1]
  LOADN R1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+6]
  DIVK R3 R0 K2 [2]
  FASTCALL1 MATH_CEIL R3 [+2]
  GETIMPORT R2 K5 [math.ceil]
  CALL R2 1 1
  JUMP [+1]
  MOVE R2 R0
  GETUPVAL R7 2
  ADDK R6 R7 K7 [10]
  MUL R5 R6 R2
  ADD R4 R5 R1
  ADDK R3 R4 K6 [20]
  RETURN R3 1

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fetchNextPage"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fetchNextPage"]
  CALL R0 0 -1
  RETURN R0 -1
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["hasExceededContentMaxWidth"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K1 ["assets"]
  LENGTH R2 R3
  GETTABLEKS R3 R0 K2 ["loading"]
  JUMPIF R3 [+39]
  FASTCALL1 TYPE R2 [+3]
  MOVE R5 R2
  GETIMPORT R4 K4 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K5 ["number"] [+4]
  LOADN R4 0
  JUMPIFLT R4 R2 [+30]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K10 [{"Position", "Text", "ZIndex"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["props"]
  GETTABLEKS R7 R8 K12 ["NoResultsPosition"]
  SETTABLEKS R7 R6 K7 ["Position"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["props"]
  GETTABLEKS R7 R8 K13 ["Localization"]
  LOADK R9 K14 ["General"]
  LOADK R10 K15 ["InfoBannerText"]
  NAMECALL R7 R7 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Text"]
  LOADN R7 2
  SETTABLEKS R7 R6 K9 ["ZIndex"]
  CALL R4 2 -1
  RETURN R4 -1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K25 [{"CalculateCanvasHeight", "FetchNextPage", "Items", "Loading", "PageSize", "RenderContent", "RenderTopContent", "Total"}]
  SETTABLEKS R4 R7 K17 ["CalculateCanvasHeight"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K18 ["FetchNextPage"]
  GETTABLEKS R8 R0 K1 ["assets"]
  SETTABLEKS R8 R7 K19 ["Items"]
  GETTABLEKS R8 R0 K2 ["loading"]
  SETTABLEKS R8 R7 K20 ["Loading"]
  LOADN R8 30
  SETTABLEKS R8 R7 K21 ["PageSize"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K26 ["renderResponsiveContent"]
  SETTABLEKS R8 R7 K22 ["RenderContent"]
  LOADNIL R8
  SETTABLEKS R8 R7 K23 ["RenderTopContent"]
  GETTABLEKS R8 R0 K27 ["total"]
  SETTABLEKS R8 R7 K24 ["Total"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_10:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["hasExceededContentMaxWidth"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["logImpression"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K2 ["renderFontTile"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K3 ["renderResponsiveContent"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  SETTABLEKS R1 R0 K4 ["renderList"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["CategoryName"]
  GETTABLEKS R3 R1 K2 ["IncludeUnverifiedCreators"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["Stylizer"]
  GETTABLEKS R8 R1 K7 ["WrapperProps"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["join"]
  DUPTABLE R12 K12 [{"BackgroundColor", "LayoutOrder", "Position", "Size", "Style"}]
  GETTABLEKS R13 R7 K13 ["backgroundColor"]
  SETTABLEKS R13 R12 K10 ["BackgroundColor"]
  SETTABLEKS R4 R12 K3 ["LayoutOrder"]
  SETTABLEKS R5 R12 K4 ["Position"]
  SETTABLEKS R6 R12 K5 ["Size"]
  LOADK R13 K14 ["Box"]
  SETTABLEKS R13 R12 K11 ["Style"]
  MOVE R13 R8
  CALL R11 2 1
  DUPTABLE R12 K16 [{"Results"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["Generator"]
  DUPTABLE R14 K26 [{"categoryName", "networkInterface", "initialPageSize", "includeUnverifiedCreators", "queryParams", "render", "searchTerm", "sectionName"}]
  SETTABLEKS R2 R14 K18 ["categoryName"]
  GETTABLEKS R16 R1 K27 ["Network"]
  GETTABLEKS R15 R16 K19 ["networkInterface"]
  SETTABLEKS R15 R14 K19 ["networkInterface"]
  LOADN R15 30
  SETTABLEKS R15 R14 K20 ["initialPageSize"]
  SETTABLEKS R3 R14 K21 ["includeUnverifiedCreators"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K22 ["queryParams"]
  GETTABLEKS R15 R0 K28 ["renderList"]
  SETTABLEKS R15 R14 K23 ["render"]
  GETTABLEKS R15 R1 K24 ["searchTerm"]
  SETTABLEKS R15 R14 K24 ["searchTerm"]
  LOADNIL R15
  SETTABLEKS R15 R14 K25 ["sectionName"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K15 ["Results"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_12:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"searchTerm"}]
  GETTABLEKS R4 R2 K1 ["searchTerm"]
  SETTABLEKS R4 R3 K1 ["searchTerm"]
  RETURN R3 1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_14:
  DUPTABLE R1 K1 [{"getPageInfoAnalyticsContextInfo"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getPageInfoAnalyticsContextInfo"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["Pane"]
  GETTABLEKS R8 R2 K13 ["Wrappers"]
  GETTABLEKS R7 R8 K14 ["withAbsoluteSize"]
  GETTABLEKS R9 R2 K13 ["Wrappers"]
  GETTABLEKS R8 R9 K15 ["withAbsoluteSizeAndPosition"]
  GETTABLEKS R9 R2 K16 ["ContextServices"]
  GETTABLEKS R10 R9 K17 ["withContext"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K18 ["Core"]
  GETTABLEKS R13 R14 K16 ["ContextServices"]
  GETTABLEKS R12 R13 K19 ["NetworkContext"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K18 ["Core"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R12 K21 ["Analytics"]
  GETTABLEKS R14 R15 K22 ["AssetAnalyticsContextItem"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R15 R12 K23 ["Constants"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R12 K24 ["LayoutOrderIterator"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K18 ["Core"]
  GETTABLEKS R18 R19 K25 ["Types"]
  GETTABLEKS R17 R18 K26 ["AssetLogicTypes"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R0 K18 ["Core"]
  GETTABLEKS R19 R20 K27 ["Components"]
  GETTABLEKS R18 R19 K28 ["AssetLogicWrapper"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K18 ["Core"]
  GETTABLEKS R20 R21 K27 ["Components"]
  GETTABLEKS R19 R20 K29 ["ResultsFetcher"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K18 ["Core"]
  GETTABLEKS R21 R22 K27 ["Components"]
  GETTABLEKS R20 R21 K30 ["LoadScroller"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R23 R0 K18 ["Core"]
  GETTABLEKS R22 R23 K27 ["Components"]
  GETTABLEKS R21 R22 K31 ["InfoBanner"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R0 K18 ["Core"]
  GETTABLEKS R23 R24 K32 ["Models"]
  GETTABLEKS R22 R23 K33 ["AssetInfo"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R26 R0 K18 ["Core"]
  GETTABLEKS R25 R26 K27 ["Components"]
  GETTABLEKS R24 R25 K34 ["Font"]
  GETTABLEKS R23 R24 K35 ["FontTile"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K18 ["Core"]
  GETTABLEKS R25 R26 K36 ["Thunks"]
  GETTABLEKS R24 R25 K37 ["GetPageInfoAnalyticsContextInfo"]
  CALL R23 1 1
  GETTABLEKS R24 R14 K38 ["FONT_TILE_HEIGHT"]
  GETTABLEKS R25 R3 K39 ["PureComponent"]
  LOADK R27 K40 ["FontView"]
  NAMECALL R25 R25 K41 ["extend"]
  CALL R25 2 1
  DUPTABLE R26 K43 [{"Size"}]
  GETIMPORT R27 K46 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K42 ["Size"]
  SETTABLEKS R26 R25 K47 ["defaultProps"]
  DUPCLOSURE R26 K48 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R19
  SETTABLEKS R26 R25 K49 ["init"]
  DUPCLOSURE R26 K50 [PROTO_11]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R18
  SETTABLEKS R26 R25 K51 ["render"]
  DUPCLOSURE R26 K52 [PROTO_12]
  DUPCLOSURE R27 K53 [PROTO_14]
  CAPTURE VAL R23
  GETTABLEKS R28 R4 K54 ["connect"]
  MOVE R29 R26
  MOVE R30 R27
  CALL R28 2 1
  MOVE R29 R25
  CALL R28 1 1
  MOVE R25 R28
  MOVE R28 R10
  DUPTABLE R29 K59 [{"AssetAnalytics", "Localization", "Stylizer", "Network"}]
  SETTABLEKS R13 R29 K55 ["AssetAnalytics"]
  GETTABLEKS R30 R9 K56 ["Localization"]
  SETTABLEKS R30 R29 K56 ["Localization"]
  GETTABLEKS R30 R9 K57 ["Stylizer"]
  SETTABLEKS R30 R29 K57 ["Stylizer"]
  SETTABLEKS R11 R29 K58 ["Network"]
  CALL R28 1 1
  MOVE R29 R25
  CALL R28 1 1
  MOVE R25 R28
  MOVE R28 R8
  MOVE R29 R17
  MOVE R30 R25
  CALL R29 1 -1
  CALL R28 -1 -1
  RETURN R28 -1