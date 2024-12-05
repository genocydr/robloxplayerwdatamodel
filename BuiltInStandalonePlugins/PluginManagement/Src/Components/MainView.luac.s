PROTO_0:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["pluginId"]
  NEWTABLE R4 0 1
  MOVE R5 R3
  SETLIST R4 R5 1 [1]
  DUPTABLE R5 K3 [{"SimpleLabel"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K5 ["TextLabel"]
  DUPTABLE R8 K15 [{"Text", "Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  LOADK R11 K16 ["Main"]
  LOADK R12 K17 ["InstallingPlugin"]
  MOVE R13 R4
  NAMECALL R9 R2 K18 ["getText"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Text"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Position"]
  LOADN R9 1
  SETTABLEKS R9 R8 K9 ["BackgroundTransparency"]
  GETTABLEKS R9 R1 K22 ["TextColor"]
  SETTABLEKS R9 R8 K10 ["TextColor3"]
  LOADN R9 18
  SETTABLEKS R9 R8 K11 ["TextSize"]
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["TextWrapped"]
  GETIMPORT R9 K25 [Enum.TextXAlignment.Center]
  SETTABLEKS R9 R8 K13 ["TextXAlignment"]
  GETIMPORT R9 K26 [Enum.TextYAlignment.Center]
  SETTABLEKS R9 R8 K14 ["TextYAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["SimpleLabel"]
  RETURN R5 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["info"]
  GETTABLEKS R5 R3 K3 ["name"]
  ORK R4 R5 K2 [""]
  NEWTABLE R5 0 1
  LOADK R7 K4 ["\""]
  MOVE R8 R4
  LOADK R9 K4 ["\""]
  CONCAT R6 R7 R9
  SETLIST R5 R6 1 [1]
  DUPTABLE R6 K9 [{"ListLayout", "Title", "Padding", "Message"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  LOADK R8 K11 ["UIListLayout"]
  DUPTABLE R9 K13 [{"SortOrder"}]
  GETIMPORT R10 K16 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K12 ["SortOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["ListLayout"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  LOADK R8 K17 ["TextLabel"]
  DUPTABLE R9 K26 [{"Text", "TextColor3", "TextSize", "Font", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "Size", "LayoutOrder"}]
  LOADK R12 K27 ["Progress"]
  LOADK R13 K28 ["Completed"]
  NAMECALL R10 R2 K29 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["Text"]
  GETTABLEKS R10 R1 K30 ["TextColor"]
  SETTABLEKS R10 R9 K19 ["TextColor3"]
  LOADN R10 16
  SETTABLEKS R10 R9 K20 ["TextSize"]
  GETIMPORT R10 K32 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R10 R9 K21 ["Font"]
  LOADN R10 1
  SETTABLEKS R10 R9 K22 ["BackgroundTransparency"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["TextWrapped"]
  GETIMPORT R10 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K24 ["TextXAlignment"]
  GETIMPORT R10 K37 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 18
  CALL R10 4 1
  SETTABLEKS R10 R9 K25 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K15 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Title"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  LOADK R8 K38 ["Frame"]
  DUPTABLE R9 K39 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K22 ["BackgroundTransparency"]
  GETIMPORT R10 K37 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K25 ["Size"]
  LOADN R10 2
  SETTABLEKS R10 R9 K15 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Padding"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  LOADK R8 K17 ["TextLabel"]
  DUPTABLE R9 K40 [{"Text", "TextColor3", "TextSize", "Font", "TextWrapped", "TextXAlignment", "Size", "BackgroundTransparency", "LayoutOrder"}]
  LOADK R12 K27 ["Progress"]
  LOADK R13 K41 ["CompletedMessage"]
  MOVE R14 R5
  NAMECALL R10 R2 K29 ["getText"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K18 ["Text"]
  GETTABLEKS R10 R1 K30 ["TextColor"]
  SETTABLEKS R10 R9 K19 ["TextColor3"]
  LOADN R10 16
  SETTABLEKS R10 R9 K20 ["TextSize"]
  GETIMPORT R10 K43 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K21 ["Font"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["TextWrapped"]
  GETIMPORT R10 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K24 ["TextXAlignment"]
  GETIMPORT R10 K37 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 48
  CALL R10 4 1
  SETTABLEKS R10 R9 K25 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K22 ["BackgroundTransparency"]
  LOADN R10 3
  SETTABLEKS R10 R9 K15 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Message"]
  RETURN R6 1

PROTO_2:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["pluginId"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["info"]
  GETTABLEKS R5 R4 K3 ["installStatus"]
  GETTABLEKS R6 R4 K4 ["installationMsg"]
  LOADNIL R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["UNKNOWN"]
  JUMPIFNOTEQ R5 R8 [+13]
  LOADK R10 K6 ["Main"]
  LOADK R11 K7 ["InstallingPlugin"]
  NEWTABLE R12 0 1
  MOVE R13 R3
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+84]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["HTTP_ERROR"]
  JUMPIFNOTEQ R5 R8 [+13]
  LOADK R10 K10 ["Progress"]
  LOADK R11 K11 ["HttpError"]
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+67]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["PLUGIN_NOT_OWNED"]
  JUMPIFNOTEQ R5 R8 [+13]
  LOADK R10 K10 ["Progress"]
  LOADK R11 K13 ["NotOwned"]
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+50]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["PLUGIN_DETAILS_UNAVAILABLE"]
  JUMPIFNOTEQ R5 R8 [+13]
  LOADK R10 K10 ["Progress"]
  LOADK R11 K15 ["Unavailable"]
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+33]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["PLUGIN_NOT_INSTALLED"]
  JUMPIFNOTEQ R5 R8 [+13]
  LOADK R10 K10 ["Progress"]
  LOADK R11 K17 ["NotInstalled"]
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  JUMP [+16]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K18 ["PLUGIN_AlREADY_INSTALLED"]
  JUMPIFNOTEQ R5 R8 [+12]
  LOADK R10 K10 ["Progress"]
  LOADK R11 K19 ["AlreadyInstalled"]
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 4 1
  MOVE R7 R8
  DUPTABLE R8 K21 [{"SimpleLabel"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K22 ["createElement"]
  LOADK R10 K23 ["TextLabel"]
  DUPTABLE R11 K33 [{"Text", "Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  SETTABLEKS R7 R11 K24 ["Text"]
  GETIMPORT R12 K36 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Size"]
  GETIMPORT R12 K36 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Position"]
  LOADN R12 1
  SETTABLEKS R12 R11 K27 ["BackgroundTransparency"]
  GETTABLEKS R12 R1 K37 ["TextColor"]
  SETTABLEKS R12 R11 K28 ["TextColor3"]
  LOADN R12 18
  SETTABLEKS R12 R11 K29 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["TextWrapped"]
  GETIMPORT R12 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K31 ["TextXAlignment"]
  GETIMPORT R12 K41 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K32 ["TextYAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["SimpleLabel"]
  RETURN R8 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["info"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Localization"]
  LOADNIL R4
  JUMPIF R1 [+7]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R0 K4 ["renderContentNotReady"]
  CALL R5 3 1
  MOVE R4 R5
  JUMP [+20]
  GETTABLEKS R5 R1 K5 ["installStatus"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
  JUMPIFNOTEQ R5 R6 [+8]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R0 K7 ["renderInstallSuccess"]
  CALL R5 3 1
  MOVE R4 R5
  JUMP [+6]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R0 K8 ["renderInstallProgress"]
  CALL R5 3 1
  MOVE R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K10 ["Frame"]
  DUPTABLE R7 K14 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K11 ["Size"]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Position"]
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["pluginId"]
  DUPTABLE R3 K2 [{"info"}]
  GETTABLEKS R6 R0 K3 ["PluginInfo"]
  GETTABLEKS R5 R6 K4 ["plugins"]
  GETTABLE R4 R5 R2
  SETTABLEKS R4 R3 K1 ["info"]
  RETURN R3 1

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
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Constants"]
  GETTABLEKS R6 R7 K13 ["PluginInstalledStatus"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["Component"]
  LOADK R8 K15 ["MainView"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K18 ["renderContentNotReady"]
  DUPCLOSURE R7 K19 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K20 ["renderInstallSuccess"]
  DUPCLOSURE R7 K21 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K22 ["renderInstallProgress"]
  DUPCLOSURE R7 K23 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K24 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K27 [{"Localization", "Stylizer"}]
  GETTABLEKS R9 R3 K25 ["Localization"]
  SETTABLEKS R9 R8 K25 ["Localization"]
  GETTABLEKS R9 R3 K26 ["Stylizer"]
  SETTABLEKS R9 R8 K26 ["Stylizer"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  GETTABLEKS R7 R2 K28 ["connect"]
  DUPCLOSURE R8 K29 [PROTO_4]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 -1
  RETURN R7 -1
