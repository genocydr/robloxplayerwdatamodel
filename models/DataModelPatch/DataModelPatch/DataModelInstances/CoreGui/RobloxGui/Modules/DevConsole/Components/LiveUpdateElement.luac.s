PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"totalClientMemory"}]
  SETTABLEKS R0 R3 K0 ["totalClientMemory"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"averagePing"}]
  SETTABLEKS R0 R3 K0 ["averagePing"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"numErrors", "numWarnings"}]
  SETTABLEKS R0 R4 K0 ["numErrors"]
  SETTABLEKS R1 R4 K1 ["numWarnings"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ClientMemoryData"]
  NAMECALL R1 R1 K2 ["totalMemSignal"]
  CALL R1 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R1 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["totalMemConnector"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["ServerStatsData"]
  NAMECALL R2 R2 K6 ["avgPing"]
  CALL R2 1 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["avgPingConnector"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K8 ["ClientLogData"]
  NAMECALL R2 R2 K9 ["errorWarningSignal"]
  CALL R2 1 1
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["logWarningErrorConnector"]
  NAMECALL R2 R0 K11 ["doSizeCheck"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["doSizeCheck"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+28]
  GETTABLEKS R2 R0 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["formFactorThreshold"]
  GETTABLEKS R6 R0 K0 ["ref"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K4 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K5 ["X"]
  JUMPIFLT R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K2 ["state"]
  GETTABLEKS R3 R4 K6 ["isSmallerThanFormFactorThreshold"]
  JUMPIFEQ R2 R3 [+7]
  DUPTABLE R5 K7 [{"isSmallerThanFormFactorThreshold"}]
  SETTABLEKS R2 R5 K6 ["isSmallerThanFormFactorThreshold"]
  NAMECALL R3 R0 K8 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["totalMemConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["totalMemConnector"]
  GETTABLEKS R1 R0 K2 ["avgPingConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["avgPingConnector"]
  GETTABLEKS R1 R0 K3 ["logWarningErrorConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["logWarningErrorConnector"]
  RETURN R0 0

PROTO_7:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADB R6 0
  SETTABLE R6 R0 R5
  FORGLOOP R1 2 [-3]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Warning"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["ClientLogData"]
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["setFilters"]
  CALL R1 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K6 ["dispatchChangeTabClientLog"]
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADB R6 0
  SETTABLE R6 R0 R5
  FORGLOOP R1 2 [-3]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Error"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["ClientLogData"]
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["setFilters"]
  CALL R1 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K6 ["dispatchChangeTabClientLog"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ClientLogData"]
  NAMECALL R1 R1 K2 ["getErrorWarningCount"]
  CALL R1 1 2
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K3 ["onLogWarningButton"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K4 ["onLogErrorButton"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createRef"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K6 ["ref"]
  DUPTABLE R3 K13 [{"numErrors", "numWarnings", "totalClientMemory", "averagePing", "formFactorThreshold", "isSmallerThanFormFactorThreshold"}]
  SETTABLEKS R1 R3 K7 ["numErrors"]
  SETTABLEKS R2 R3 K8 ["numWarnings"]
  LOADN R4 0
  SETTABLEKS R4 R3 K9 ["totalClientMemory"]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["averagePing"]
  LOADN R4 124
  SETTABLEKS R4 R3 K11 ["formFactorThreshold"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["isSmallerThanFormFactorThreshold"]
  SETTABLEKS R3 R0 K14 ["state"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["position"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["formFactor"]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K5 ["numErrors"]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K6 ["numWarnings"]
  GETTABLEKS R7 R0 K4 ["state"]
  GETTABLEKS R6 R7 K7 ["totalClientMemory"]
  GETTABLEKS R8 R0 K4 ["state"]
  GETTABLEKS R7 R8 K8 ["averagePing"]
  GETTABLEKS R9 R0 K4 ["state"]
  GETTABLEKS R8 R9 K9 ["isSmallerThanFormFactorThreshold"]
  LOADB R9 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["X"]
  GETIMPORT R11 K14 [Enum.HorizontalAlignment.Center]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K15 ["FormFactor"]
  GETTABLEKS R12 R13 K16 ["Small"]
  JUMPIFEQ R3 R12 [+2]
  JUMPIFNOT R8 [+14]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  LOADN R14 12
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  ADD R2 R2 R12
  GETUPVAL R12 2
  GETTABLEKS R10 R12 K10 ["X"]
  LOADB R9 1
  GETIMPORT R11 K21 [Enum.HorizontalAlignment.Left]
  GETIMPORT R12 K24 [string.format]
  LOADK R13 K25 ["%d"]
  MOVE R14 R4
  CALL R12 2 1
  GETUPVAL R13 3
  MOVE R15 R12
  GETUPVAL R16 4
  GETUPVAL R17 5
  GETIMPORT R18 K27 [Vector2.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 -1
  NAMECALL R13 R13 K28 ["GetTextSize"]
  CALL R13 -1 1
  GETIMPORT R14 K24 [string.format]
  LOADK R15 K25 ["%d"]
  MOVE R16 R5
  CALL R14 2 1
  GETUPVAL R15 3
  MOVE R17 R14
  GETUPVAL R18 4
  GETUPVAL R19 5
  GETIMPORT R20 K27 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 -1
  NAMECALL R15 R15 K28 ["GetTextSize"]
  CALL R15 -1 1
  GETIMPORT R16 K24 [string.format]
  LOADK R17 K29 ["%d MB"]
  MOVE R18 R6
  CALL R16 2 1
  GETUPVAL R17 3
  MOVE R19 R16
  GETUPVAL R20 4
  GETUPVAL R21 5
  GETIMPORT R22 K27 [Vector2.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 -1
  NAMECALL R17 R17 K28 ["GetTextSize"]
  CALL R17 -1 1
  GETIMPORT R18 K24 [string.format]
  LOADK R19 K30 ["%d ms"]
  MOVE R20 R7
  CALL R18 2 1
  GETUPVAL R19 3
  MOVE R21 R18
  GETUPVAL R22 4
  GETUPVAL R23 5
  GETIMPORT R24 K27 [Vector2.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 -1
  NAMECALL R19 R19 K28 ["GetTextSize"]
  CALL R19 -1 1
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["FormFactor"]
  GETTABLEKS R20 R21 K16 ["Small"]
  JUMPIFEQ R3 R20 [+2]
  JUMPIFNOT R8 [+14]
  GETIMPORT R20 K19 [UDim2.new]
  LOADN R21 0
  LOADN R22 12
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  ADD R2 R2 R20
  GETUPVAL R20 2
  GETTABLEKS R10 R20 K10 ["X"]
  LOADB R9 1
  GETIMPORT R11 K21 [Enum.HorizontalAlignment.Left]
  LOADN R21 0
  JUMPIFLT R21 R7 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K31 ["createElement"]
  LOADK R22 K32 ["Frame"]
  NEWTABLE R23 4 0
  SETTABLEKS R2 R23 K33 ["Position"]
  SETTABLEKS R1 R23 K34 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K35 ["BackgroundTransparency"]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K36 ["Ref"]
  GETTABLEKS R25 R0 K37 ["ref"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K50 [{"UIListLayout", "LogErrorIcon", "LogErrorCount", "ErrorWarningPad", "LogWarningIcon", "LogWarningCount", "WarningMemoryPad", "MemoryUsage", "MemoryUsage_MB", "MemoryPingPad", "AvgPing", "AvgPing_ms"}]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K38 ["UIListLayout"]
  DUPTABLE R27 K55 [{"Padding", "HorizontalAlignment", "FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R28 K57 [UDim.new]
  LOADN R29 0
  LOADN R30 6
  CALL R28 2 1
  SETTABLEKS R28 R27 K51 ["Padding"]
  SETTABLEKS R11 R27 K12 ["HorizontalAlignment"]
  GETIMPORT R28 K59 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K52 ["FillDirection"]
  GETIMPORT R28 K61 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K53 ["SortOrder"]
  GETIMPORT R28 K62 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K54 ["VerticalAlignment"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["UIListLayout"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K63 ["ImageButton"]
  NEWTABLE R27 8 0
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K64 ["Image"]
  GETTABLEKS R28 R29 K65 ["Error"]
  SETTABLEKS R28 R27 K64 ["Image"]
  GETUPVAL R28 7
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 1
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R29 R0 K68 ["onLogErrorButton"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["LogErrorIcon"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  SETTABLEKS R12 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R28 8
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  GETTABLEKS R30 R13 K10 ["X"]
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 2
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R29 R0 K68 ["onLogErrorButton"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["LogErrorCount"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K32 ["Frame"]
  DUPTABLE R27 K76 [{"BackgroundTransparency", "LayoutOrder"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 3
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K41 ["ErrorWarningPad"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K63 ["ImageButton"]
  NEWTABLE R27 8 0
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K64 ["Image"]
  GETTABLEKS R28 R29 K77 ["Warning"]
  SETTABLEKS R28 R27 K64 ["Image"]
  GETUPVAL R28 7
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 4
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R29 R0 K78 ["onLogWarningButton"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K42 ["LogWarningIcon"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  SETTABLEKS R14 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R28 8
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  GETTABLEKS R30 R15 K10 ["X"]
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 9
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 5
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R29 R0 K78 ["onLogWarningButton"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K43 ["LogWarningCount"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K32 ["Frame"]
  DUPTABLE R27 K76 [{"BackgroundTransparency", "LayoutOrder"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 6
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["WarningMemoryPad"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  JUMPIFNOT R9 [+2]
  LOADK R28 K79 ["Client Mem:"]
  JUMP [+1]
  LOADK R28 K80 ["Client Memory Usage:"]
  SETTABLEKS R28 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K81 ["Color"]
  GETTABLEKS R28 R29 K82 ["WarningYellow"]
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K84 [Enum.TextXAlignment.Right]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  MOVE R30 R10
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 7
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K85 ["dispatchChangeTabClientMemory"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K45 ["MemoryUsage"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  SETTABLEKS R16 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R28 8
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  GETTABLEKS R30 R17 K10 ["X"]
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 8
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K85 ["dispatchChangeTabClientMemory"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K46 ["MemoryUsage_MB"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K32 ["Frame"]
  DUPTABLE R27 K76 [{"BackgroundTransparency", "LayoutOrder"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 9
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K47 ["MemoryPingPad"]
  NOT R25 R9
  JUMPIFNOT R25 [+56]
  MOVE R25 R20
  JUMPIFNOT R25 [+54]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  LOADK R28 K86 ["Avg. Ping:"]
  SETTABLEKS R28 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K81 ["Color"]
  GETTABLEKS R28 R29 K82 ["WarningYellow"]
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K84 [Enum.TextXAlignment.Right]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K10 ["X"]
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 10
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K87 ["dispatchChangeTabNetworkPing"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K48 ["AvgPing"]
  NOT R25 R9
  JUMPIFNOT R25 [+50]
  MOVE R25 R20
  JUMPIFNOT R25 [+48]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K31 ["createElement"]
  LOADK R26 K69 ["TextButton"]
  NEWTABLE R27 16 0
  SETTABLEKS R18 R27 K70 ["Text"]
  GETUPVAL R28 4
  SETTABLEKS R28 R27 K71 ["TextSize"]
  GETUPVAL R28 8
  SETTABLEKS R28 R27 K72 ["TextColor3"]
  GETIMPORT R28 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K73 ["TextXAlignment"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K75 ["Font"]
  GETIMPORT R28 K19 [UDim2.new]
  LOADN R29 0
  GETTABLEKS R30 R19 K10 ["X"]
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K34 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K35 ["BackgroundTransparency"]
  LOADN R28 11
  SETTABLEKS R28 R27 K60 ["LayoutOrder"]
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K66 ["Event"]
  GETTABLEKS R28 R29 K67 ["Activated"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K87 ["dispatchChangeTabNetworkPing"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K49 ["AvgPing_ms"]
  CALL R21 3 -1
  RETURN R21 -1

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["Log"]
  LOADB R3 1
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["Memory"]
  LOADB R3 1
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["ServerStats"]
  LOADB R3 1
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K3 [{"dispatchChangeTabClientLog", "dispatchChangeTabClientMemory", "dispatchChangeTabNetworkPing"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchChangeTabClientLog"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["dispatchChangeTabClientMemory"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K2 ["dispatchChangeTabNetworkPing"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["DataConsumer"]
  CALL R4 1 1
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K15 ["Actions"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K16 ["SetActiveTab"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETIMPORT R11 K11 [script]
  GETTABLEKS R10 R11 K12 ["Parent"]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K18 ["MsgTypeNamesOrdered"]
  GETTABLEKS R10 R7 K19 ["DefaultFontSize"]
  GETTABLEKS R9 R10 K20 ["TopBar"]
  GETTABLEKS R11 R7 K21 ["Color"]
  GETTABLEKS R10 R11 K22 ["Text"]
  GETTABLEKS R12 R7 K23 ["Font"]
  GETTABLEKS R11 R12 K20 ["TopBar"]
  GETIMPORT R12 K26 [UDim2.new]
  LOADN R13 0
  MOVE R14 R9
  LOADN R15 0
  MOVE R16 R9
  CALL R12 4 1
  LOADK R15 K27 ["Client Mem:"]
  MOVE R16 R9
  MOVE R17 R11
  GETIMPORT R18 K29 [Vector2.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 -1
  NAMECALL R13 R1 K30 ["GetTextSize"]
  CALL R13 -1 1
  LOADK R16 K31 ["Client Memory Usage:"]
  MOVE R17 R9
  MOVE R18 R11
  GETIMPORT R19 K29 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 -1
  NAMECALL R14 R1 K30 ["GetTextSize"]
  CALL R14 -1 1
  LOADK R17 K32 ["Avg. Ping:"]
  MOVE R18 R9
  MOVE R19 R11
  GETIMPORT R20 K29 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 -1
  NAMECALL R15 R1 K30 ["GetTextSize"]
  CALL R15 -1 1
  GETTABLEKS R16 R2 K33 ["PureComponent"]
  LOADK R18 K34 ["LiveUpdateElement"]
  NAMECALL R16 R16 K35 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K36 [PROTO_3]
  SETTABLEKS R17 R16 K37 ["didMount"]
  DUPCLOSURE R17 K38 [PROTO_4]
  SETTABLEKS R17 R16 K39 ["didUpdate"]
  DUPCLOSURE R17 K40 [PROTO_5]
  SETTABLEKS R17 R16 K41 ["doSizeCheck"]
  DUPCLOSURE R17 K42 [PROTO_6]
  SETTABLEKS R17 R16 K43 ["willUnmount"]
  DUPCLOSURE R17 K44 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R17 R16 K45 ["init"]
  DUPCLOSURE R17 K46 [PROTO_10]
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K47 ["render"]
  DUPCLOSURE R17 K48 [PROTO_14]
  CAPTURE VAL R6
  GETTABLEKS R18 R3 K49 ["UNSTABLE_connect2"]
  LOADNIL R19
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R4
  MOVE R20 R16
  LOADK R21 K50 ["ServerStatsData"]
  LOADK R22 K51 ["ClientMemoryData"]
  LOADK R23 K52 ["ClientLogData"]
  CALL R19 4 -1
  CALL R18 -1 -1
  RETURN R18 -1
