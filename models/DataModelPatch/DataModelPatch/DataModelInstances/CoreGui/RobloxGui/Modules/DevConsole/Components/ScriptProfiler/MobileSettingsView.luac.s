PROTO_0:
  GETIMPORT R2 K2 [table.create]
  LENGTH R3 R0
  CALL R2 1 1
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R9 R2
  MOVE R10 R1
  MOVE R11 R7
  CALL R10 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K4 [table.insert]
  CALL R8 -1 0
  FORGLOOP R3 2 [-9]
  RETURN R2 1

PROTO_1:
  JUMPIFNOTEQKN R0 K0 [0] [+3]
  LOADK R1 K1 ["Off"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["formatTimer"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["isClientView"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["client"]
  JUMP [+4]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["server"]
  GETTABLE R3 R2 R1
  RETURN R3 1

PROTO_6:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["isClientView"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["client"]
  JUMP [+4]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["server"]
  GETIMPORT R4 K6 [table.clone]
  MOVE R5 R3
  CALL R4 1 1
  SETTABLE R2 R4 R1
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["dispatchSetScriptProfilerState"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["isClientView"]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K5 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETUPVAL R11 1
  CALL R7 4 1
  SETTABLEKS R7 R6 K2 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["BackgroundTransparency"]
  LOADN R7 2
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  DUPTABLE R7 K11 [{"Label", "ToggleButton"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K12 ["TextLabel"]
  DUPTABLE R10 K21 [{"Size", "Position", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R11 K8 [UDim2.new]
  LOADN R12 0
  GETUPVAL R13 2
  LOADN R14 0
  GETUPVAL R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K2 ["Size"]
  GETIMPORT R11 K8 [UDim2.new]
  LOADK R12 K22 [0.1]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Position"]
  SETTABLEKS R1 R10 K14 ["Text"]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K15 ["Font"]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K16 ["TextSize"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K23 ["Color"]
  GETTABLEKS R11 R12 K14 ["Text"]
  SETTABLEKS R11 R10 K17 ["TextColor3"]
  GETIMPORT R11 K26 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K18 ["TextXAlignment"]
  GETIMPORT R11 K28 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K19 ["TextYAlignment"]
  GETUPVAL R11 6
  SETTABLEKS R11 R10 K20 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K3 ["BackgroundTransparency"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Label"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K12 ["TextLabel"]
  DUPTABLE R10 K29 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R11 K8 [UDim2.new]
  LOADN R12 0
  GETUPVAL R14 2
  MULK R13 R14 K30 [2]
  LOADN R14 0
  GETUPVAL R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K2 ["Size"]
  GETIMPORT R11 K8 [UDim2.new]
  LOADK R12 K31 [0.9]
  GETUPVAL R15 2
  MINUS R14 R15
  MULK R13 R14 K30 [2]
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Position"]
  LOADN R11 1
  SETTABLEKS R11 R10 K3 ["BackgroundTransparency"]
  DUPTABLE R11 K34 [{"OffButton", "OnButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  LOADK R13 K35 ["TextButton"]
  NEWTABLE R14 16 0
  GETIMPORT R15 K8 [UDim2.new]
  LOADK R16 K36 [0.5]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K2 ["Size"]
  LOADK R15 K37 ["Off"]
  SETTABLEKS R15 R14 K14 ["Text"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K15 ["Font"]
  GETUPVAL R15 4
  SETTABLEKS R15 R14 K16 ["TextSize"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K23 ["Color"]
  GETTABLEKS R15 R16 K14 ["Text"]
  SETTABLEKS R15 R14 K17 ["TextColor3"]
  GETIMPORT R15 K38 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K18 ["TextXAlignment"]
  GETIMPORT R15 K28 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K19 ["TextYAlignment"]
  JUMPIFNOT R2 [+2]
  GETUPVAL R15 7
  JUMPIF R15 [+1]
  GETUPVAL R15 8
  SETTABLEKS R15 R14 K20 ["BackgroundColor3"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K39 ["Event"]
  GETTABLEKS R15 R16 K40 ["Activated"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R3
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["OffButton"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  LOADK R13 K35 ["TextButton"]
  NEWTABLE R14 16 0
  GETIMPORT R15 K8 [UDim2.new]
  LOADK R16 K36 [0.5]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K2 ["Size"]
  GETIMPORT R15 K8 [UDim2.new]
  LOADK R16 K36 [0.5]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Position"]
  LOADK R15 K41 ["On"]
  SETTABLEKS R15 R14 K14 ["Text"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K15 ["Font"]
  GETUPVAL R15 4
  SETTABLEKS R15 R14 K16 ["TextSize"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K23 ["Color"]
  GETTABLEKS R15 R16 K14 ["Text"]
  SETTABLEKS R15 R14 K17 ["TextColor3"]
  GETIMPORT R15 K38 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K18 ["TextXAlignment"]
  GETIMPORT R15 K28 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K19 ["TextYAlignment"]
  JUMPIFNOT R2 [+2]
  GETUPVAL R15 8
  JUMPIF R15 [+1]
  GETUPVAL R15 7
  SETTABLEKS R15 R14 K20 ["BackgroundColor3"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K39 ["Event"]
  GETTABLEKS R15 R16 K40 ["Activated"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R3
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["OnButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["ToggleButton"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["UpdateState"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  MOVE R6 R2
  NAMECALL R4 R0 K0 ["GetState"]
  CALL R4 2 1
  MOVE R7 R1
  MOVE R8 R4
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R5 R0 K1 ["renderToggle"]
  CALL R5 4 -1
  RETURN R5 -1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetState"]
  CALL R1 2 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K3 ["boolean"] [+6]
  JUMPIFEQKN R0 K4 [2] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMP [+9]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K5 ["number"] [+3]
  GETUPVAL R2 2
  GETTABLE R1 R2 R0
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["UpdateState"]
  CALL R2 3 0
  RETURN R0 0

PROTO_13:
  LOADNIL R7
  JUMPIFNOT R6 [+89]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K1 ["TextButton"]
  DUPTABLE R10 K11 [{"Position", "Size", "Text", "TextSize", "TextColor3", "Font", "AutoButtonColor", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R11 K14 [UDim2.new]
  LOADK R12 K15 [0.9]
  GETUPVAL R14 1
  MINUS R13 R14
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K2 ["Position"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 0
  GETUPVAL R13 1
  LOADN R14 0
  GETUPVAL R15 2
  CALL R11 4 1
  SETTABLEKS R11 R10 K3 ["Size"]
  GETTABLE R11 R3 R5
  SETTABLEKS R11 R10 K4 ["Text"]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K5 ["TextSize"]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K6 ["TextColor3"]
  GETUPVAL R11 5
  SETTABLEKS R11 R10 K7 ["Font"]
  LOADB R11 1
  SETTABLEKS R11 R10 K8 ["AutoButtonColor"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K16 ["Color"]
  GETTABLEKS R11 R12 K17 ["InactiveBox"]
  SETTABLEKS R11 R10 K9 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  DUPTABLE R11 K19 [{"arrow"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  LOADK R13 K20 ["ImageLabel"]
  DUPTABLE R14 K22 [{"Image", "BackgroundTransparency", "Size", "Position"}]
  GETUPVAL R15 7
  SETTABLEKS R15 R14 K21 ["Image"]
  LOADN R15 1
  SETTABLEKS R15 R14 K10 ["BackgroundTransparency"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 0
  GETUPVAL R17 8
  LOADN R18 0
  GETUPVAL R19 8
  CALL R15 4 1
  SETTABLEKS R15 R14 K3 ["Size"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  GETUPVAL R19 8
  MINUS R18 R19
  GETUPVAL R19 9
  SUB R17 R18 R19
  LOADK R18 K23 [0.5]
  GETUPVAL R20 9
  MINUS R19 R20
  CALL R15 4 1
  SETTABLEKS R15 R14 K2 ["Position"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["arrow"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+54]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K24 ["Frame"]
  DUPTABLE R10 K25 [{"Position", "Size"}]
  GETIMPORT R11 K14 [UDim2.new]
  LOADK R12 K15 [0.9]
  GETUPVAL R14 1
  MINUS R13 R14
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K2 ["Position"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 0
  GETUPVAL R13 1
  LOADN R14 0
  GETUPVAL R15 2
  CALL R11 4 1
  SETTABLEKS R11 R10 K3 ["Size"]
  DUPTABLE R11 K27 [{"Selection"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K32 [{"buttonSize", "dropDownList", "selectedIndex", "onSelection"}]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  GETUPVAL R19 2
  CALL R15 4 1
  SETTABLEKS R15 R14 K28 ["buttonSize"]
  SETTABLEKS R3 R14 K29 ["dropDownList"]
  SETTABLEKS R5 R14 K30 ["selectedIndex"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K31 ["onSelection"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["Selection"]
  CALL R8 3 1
  MOVE R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K24 ["Frame"]
  DUPTABLE R10 K33 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETUPVAL R15 2
  CALL R11 4 1
  SETTABLEKS R11 R10 K3 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  DUPTABLE R11 K36 [{"Label", "DropDown"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  LOADK R13 K37 ["TextLabel"]
  DUPTABLE R14 K40 [{"Size", "Position", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 0
  GETUPVAL R17 1
  LOADN R18 0
  GETUPVAL R19 2
  CALL R15 4 1
  SETTABLEKS R15 R14 K3 ["Size"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADK R16 K41 [0.1]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K2 ["Position"]
  SETTABLEKS R1 R14 K4 ["Text"]
  GETUPVAL R15 11
  SETTABLEKS R15 R14 K7 ["Font"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K5 ["TextSize"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K16 ["Color"]
  GETTABLEKS R15 R16 K4 ["Text"]
  SETTABLEKS R15 R14 K6 ["TextColor3"]
  GETIMPORT R15 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K38 ["TextXAlignment"]
  GETIMPORT R15 K46 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K39 ["TextYAlignment"]
  GETUPVAL R15 12
  SETTABLEKS R15 R14 K9 ["BackgroundColor3"]
  LOADN R15 1
  SETTABLEKS R15 R14 K10 ["BackgroundTransparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["Label"]
  SETTABLEKS R7 R11 K35 ["DropDown"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetScriptProfilerUsePercentages"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  LOADK R3 K0 ["isProfiling"]
  NAMECALL R1 R0 K1 ["GetState"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["ScrollingFrame"]
  DUPTABLE R4 K9 [{"Size", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder", "AutomaticCanvasSize"}]
  GETTABLEKS R6 R0 K10 ["props"]
  GETTABLEKS R5 R6 K11 ["size"]
  SETTABLEKS R5 R4 K4 ["Size"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["Color"]
  GETTABLEKS R5 R6 K13 ["BaseGray"]
  SETTABLEKS R5 R4 K5 ["BackgroundColor3"]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["BackgroundTransparency"]
  LOADN R5 2
  SETTABLEKS R5 R4 K7 ["LayoutOrder"]
  GETIMPORT R5 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K8 ["AutomaticCanvasSize"]
  DUPTABLE R5 K27 [{"UIListLayout", "Percentages", "LiveToggle", "PluginsToggle", "GCToggle", "AverageDropDown", "FrequencyDropDown", "TimerDropDown", "ViewDropDown"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K18 ["UIListLayout"]
  DUPTABLE R8 K30 [{"Padding", "SortOrder"}]
  GETIMPORT R9 K33 [UDim.new]
  LOADN R10 0
  GETUPVAL R11 2
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["Padding"]
  GETIMPORT R9 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K29 ["SortOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["UIListLayout"]
  LOADK R8 K19 ["Percentages"]
  GETTABLEKS R10 R0 K10 ["props"]
  GETTABLEKS R9 R10 K35 ["usePercentages"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  NAMECALL R6 R0 K36 ["renderToggle"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K19 ["Percentages"]
  LOADK R8 K37 ["Live Update"]
  LOADK R9 K38 ["liveUpdate"]
  NAMECALL R6 R0 K39 ["renderStateToggle"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["LiveToggle"]
  GETUPVAL R7 3
  JUMPIF R7 [+2]
  LOADNIL R6
  JUMP [+5]
  LOADK R8 K40 ["Show Plugins"]
  LOADK R9 K41 ["showPlugins"]
  NAMECALL R6 R0 K39 ["renderStateToggle"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["PluginsToggle"]
  LOADK R8 K42 ["GC Overhead"]
  LOADK R9 K43 ["showGc"]
  NAMECALL R6 R0 K39 ["renderStateToggle"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K22 ["GCToggle"]
  LOADK R8 K44 ["Average"]
  LOADK R9 K45 ["average"]
  GETUPVAL R10 4
  GETUPVAL R11 5
  GETIMPORT R13 K49 [table.find]
  GETUPVAL R14 5
  LOADK R17 K45 ["average"]
  NAMECALL R15 R0 K1 ["GetState"]
  CALL R15 2 -1
  CALL R13 -1 1
  ORK R12 R13 K46 [1]
  NAMECALL R6 R0 K50 ["renderDropDown"]
  CALL R6 6 1
  SETTABLEKS R6 R5 K23 ["AverageDropDown"]
  LOADK R8 K51 ["Frequency"]
  LOADK R9 K52 ["frequency"]
  GETUPVAL R10 6
  GETUPVAL R11 7
  GETIMPORT R13 K49 [table.find]
  GETUPVAL R14 7
  LOADK R17 K52 ["frequency"]
  NAMECALL R15 R0 K1 ["GetState"]
  CALL R15 2 -1
  CALL R13 -1 1
  ORK R12 R13 K46 [1]
  MOVE R13 R1
  NAMECALL R6 R0 K50 ["renderDropDown"]
  CALL R6 7 1
  SETTABLEKS R6 R5 K24 ["FrequencyDropDown"]
  LOADK R9 K53 ["Timer"]
  JUMPIFNOT R1 [+11]
  LOADK R11 K54 [": "]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K55 ["formatTimer"]
  LOADK R15 K56 ["timedProfilingCountdown"]
  NAMECALL R13 R0 K1 ["GetState"]
  CALL R13 2 -1
  CALL R12 -1 1
  CONCAT R10 R11 R12
  JUMP [+1]
  LOADK R10 K57 [""]
  CONCAT R8 R9 R10
  LOADK R9 K58 ["timedProfilingDuration"]
  GETUPVAL R10 9
  GETUPVAL R11 10
  GETIMPORT R13 K49 [table.find]
  GETUPVAL R14 10
  LOADK R17 K58 ["timedProfilingDuration"]
  NAMECALL R15 R0 K1 ["GetState"]
  CALL R15 2 -1
  CALL R13 -1 1
  ORK R12 R13 K46 [1]
  MOVE R13 R1
  NAMECALL R6 R0 K50 ["renderDropDown"]
  CALL R6 7 1
  SETTABLEKS R6 R5 K25 ["TimerDropDown"]
  LOADK R8 K59 ["View"]
  LOADK R9 K60 ["isFunctionsView"]
  GETUPVAL R10 11
  LOADNIL R11
  LOADK R15 K60 ["isFunctionsView"]
  NAMECALL R13 R0 K1 ["GetState"]
  CALL R13 2 1
  JUMPIFNOT R13 [+2]
  LOADN R12 2
  JUMP [+1]
  LOADN R12 1
  NAMECALL R6 R0 K50 ["renderDropDown"]
  CALL R6 6 1
  SETTABLEKS R6 R5 K26 ["ViewDropDown"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_16:
  DUPTABLE R2 K4 [{"usePercentages", "isClientView", "client", "server"}]
  GETTABLEKS R4 R0 K5 ["ScriptProfiler"]
  GETTABLEKS R3 R4 K0 ["usePercentages"]
  SETTABLEKS R3 R2 K0 ["usePercentages"]
  GETTABLEKS R4 R0 K5 ["ScriptProfiler"]
  GETTABLEKS R3 R4 K1 ["isClientView"]
  SETTABLEKS R3 R2 K1 ["isClientView"]
  GETTABLEKS R4 R0 K5 ["ScriptProfiler"]
  GETTABLEKS R3 R4 K2 ["client"]
  SETTABLEKS R3 R2 K2 ["client"]
  GETTABLEKS R4 R0 K5 ["ScriptProfiler"]
  GETTABLEKS R3 R4 K3 ["server"]
  SETTABLEKS R3 R2 K3 ["server"]
  RETURN R2 1

PROTO_17:
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  LOADNIL R5
  MOVE R6 R1
  LOADNIL R7
  CALL R3 4 -1
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  MOVE R7 R1
  CALL R3 4 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADNIL R3
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K2 [{"dispatchSetScriptProfilerState", "dispatchSetScriptProfilerUsePercentages"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetScriptProfilerState"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["dispatchSetScriptProfilerUsePercentages"]
  RETURN R1 1

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
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["ScriptContext"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["ProfilerUtil"]
  CALL R4 1 1
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K14 ["Components"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K15 ["DropDown"]
  CALL R6 1 1
  GETIMPORT R11 K11 [script]
  GETTABLEKS R10 R11 K12 ["Parent"]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K16 ["Actions"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K17 ["SetScriptProfilerState"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R14 K11 [script]
  GETTABLEKS R13 R14 K12 ["Parent"]
  GETTABLEKS R12 R13 K12 ["Parent"]
  GETTABLEKS R11 R12 K12 ["Parent"]
  GETTABLEKS R10 R11 K18 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R12 R9 K20 ["GeneralFormatting"]
  GETTABLEKS R11 R12 K21 ["MainRowPadding"]
  MULK R10 R11 K19 [2]
  GETTABLEKS R12 R9 K22 ["UtilityBarFormatting"]
  GETTABLEKS R11 R12 K23 ["SmallFrameHeight"]
  GETTABLEKS R13 R9 K24 ["Font"]
  GETTABLEKS R12 R13 K25 ["MainWindowHeader"]
  GETTABLEKS R14 R9 K24 ["Font"]
  GETTABLEKS R13 R14 K26 ["MainWindow"]
  GETTABLEKS R15 R9 K27 ["MicroProfilerFormatting"]
  GETTABLEKS R14 R15 K28 ["ButtonTextSize"]
  GETTABLEKS R16 R9 K29 ["Color"]
  GETTABLEKS R15 R16 K30 ["Text"]
  GETTABLEKS R17 R9 K29 ["Color"]
  GETTABLEKS R16 R17 K31 ["UnselectedGray"]
  GETTABLEKS R18 R9 K29 ["Color"]
  GETTABLEKS R17 R18 K31 ["UnselectedGray"]
  GETTABLEKS R19 R9 K29 ["Color"]
  GETTABLEKS R18 R19 K32 ["SelectedBlue"]
  GETTABLEKS R20 R9 K29 ["Color"]
  GETTABLEKS R19 R20 K31 ["UnselectedGray"]
  GETTABLEKS R21 R9 K27 ["MicroProfilerFormatting"]
  GETTABLEKS R20 R21 K33 ["ButtonWidth"]
  GETTABLEKS R22 R9 K20 ["GeneralFormatting"]
  GETTABLEKS R21 R22 K34 ["DropDownArrowHeight"]
  DIVK R22 R21 K19 [2]
  GETTABLEKS R24 R9 K35 ["Image"]
  GETTABLEKS R23 R24 K36 ["DownArrow"]
  GETIMPORT R24 K1 [game]
  LOADK R26 K37 ["ScriptProfilerShowPlugins2"]
  LOADB R27 0
  NAMECALL R24 R24 K38 ["DefineFastFlag"]
  CALL R24 3 1
  DUPCLOSURE R25 K39 [PROTO_0]
  DUPCLOSURE R26 K40 [PROTO_1]
  CAPTURE VAL R4
  NEWTABLE R27 0 2
  LOADK R28 K41 ["Callgraph"]
  LOADK R29 K42 ["Functions"]
  SETLIST R27 R28 2 [1]
  NEWTABLE R28 0 5
  LOADN R29 0
  LOADN R30 1
  LOADN R31 60
  LOADN R32 44
  LOADN R33 88
  SETLIST R28 R29 5 [1]
  GETIMPORT R30 K45 [table.create]
  LENGTH R31 R28
  CALL R30 1 1
  MOVE R31 R28
  LOADNIL R32
  LOADNIL R33
  FORGPREP R31
  MOVE R37 R30
  MOVE R38 R26
  MOVE R39 R35
  CALL R38 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R36 K47 [table.insert]
  CALL R36 -1 0
  FORGLOOP R31 2 [-9]
  MOVE R29 R30
  NEWTABLE R30 0 2
  LOADN R31 232
  LOADN R32 16
  SETLIST R30 R31 2 [1]
  GETTABLEKS R32 R4 K48 ["formatFrequency"]
  GETIMPORT R33 K45 [table.create]
  LENGTH R34 R30
  CALL R33 1 1
  MOVE R34 R30
  LOADNIL R35
  LOADNIL R36
  FORGPREP R34
  MOVE R40 R33
  MOVE R41 R32
  MOVE R42 R38
  CALL R41 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R39 K47 [table.insert]
  CALL R39 -1 0
  FORGLOOP R34 2 [-9]
  MOVE R31 R33
  NEWTABLE R32 0 4
  LOADN R33 0
  LOADN R34 60
  LOADN R35 44
  LOADN R36 88
  SETLIST R32 R33 4 [1]
  GETIMPORT R34 K45 [table.create]
  LENGTH R35 R32
  CALL R34 1 1
  MOVE R35 R32
  LOADNIL R36
  LOADNIL R37
  FORGPREP R35
  MOVE R41 R34
  MOVE R42 R26
  MOVE R43 R39
  CALL R42 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R40 K47 [table.insert]
  CALL R40 -1 0
  FORGLOOP R35 2 [-9]
  MOVE R33 R34
  GETTABLEKS R34 R1 K49 ["PureComponent"]
  LOADK R36 K50 ["MobileSettingsView"]
  NAMECALL R34 R34 K51 ["extend"]
  CALL R34 2 1
  DUPCLOSURE R35 K52 [PROTO_2]
  SETTABLEKS R35 R34 K53 ["init"]
  DUPCLOSURE R35 K54 [PROTO_3]
  SETTABLEKS R35 R34 K55 ["didMount"]
  DUPCLOSURE R35 K56 [PROTO_4]
  SETTABLEKS R35 R34 K57 ["didUpdate"]
  DUPCLOSURE R35 K58 [PROTO_5]
  SETTABLEKS R35 R34 K59 ["GetState"]
  DUPCLOSURE R35 K60 [PROTO_6]
  SETTABLEKS R35 R34 K61 ["UpdateState"]
  DUPCLOSURE R35 K62 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R35 R34 K63 ["renderToggle"]
  DUPCLOSURE R35 K64 [PROTO_11]
  SETTABLEKS R35 R34 K65 ["renderStateToggle"]
  DUPCLOSURE R35 K66 [PROTO_13]
  CAPTURE VAL R1
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R19
  SETTABLEKS R35 R34 K67 ["renderDropDown"]
  DUPCLOSURE R35 K68 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R24
  CAPTURE VAL R29
  CAPTURE VAL R28
  CAPTURE VAL R31
  CAPTURE VAL R30
  CAPTURE VAL R4
  CAPTURE VAL R33
  CAPTURE VAL R32
  CAPTURE VAL R27
  SETTABLEKS R35 R34 K69 ["render"]
  DUPCLOSURE R35 K70 [PROTO_16]
  DUPCLOSURE R36 K71 [PROTO_19]
  CAPTURE VAL R8
  GETTABLEKS R37 R2 K72 ["UNSTABLE_connect2"]
  MOVE R38 R35
  MOVE R39 R36
  CALL R37 2 1
  MOVE R38 R34
  CALL R37 1 -1
  RETURN R37 -1