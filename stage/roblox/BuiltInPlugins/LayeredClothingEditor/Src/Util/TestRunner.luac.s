PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  NEWTABLE R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["thunkMiddleware"]
  SETLIST R4 R5 1 [1]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["Store"]
  GETTABLEKS R5 R6 K0 ["new"]
  GETUPVAL R6 2
  LOADNIL R7
  MOVE R8 R4
  CALL R5 3 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K0 ["new"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K3 ["SIGNAL_KEYS"]
  CALL R6 1 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K0 ["new"]
  CALL R7 0 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K4 ["mock"]
  CALL R8 0 1
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K4 ["mock"]
  CALL R9 0 1
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K4 ["mock"]
  CALL R10 0 1
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K4 ["mock"]
  CALL R11 0 1
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K5 ["Localization"]
  GETTABLEKS R12 R13 K4 ["mock"]
  DUPTABLE R13 K7 [{"libraries"}]
  NEWTABLE R14 1 0
  GETUPVAL R17 11
  GETTABLEKS R16 R17 K8 ["Resources"]
  GETTABLEKS R15 R16 K9 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R16 K12 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K8 ["Resources"]
  GETTABLEKS R17 R18 K13 ["SourceStrings"]
  SETTABLEKS R17 R16 K10 ["stringResourceTable"]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K8 ["Resources"]
  GETTABLEKS R17 R18 K14 ["LocalizedStrings"]
  SETTABLEKS R17 R16 K11 ["translationResourceTable"]
  SETTABLE R16 R14 R15
  SETTABLEKS R14 R13 K6 ["libraries"]
  CALL R12 1 1
  GETUPVAL R14 12
  GETTABLEKS R13 R14 K0 ["new"]
  CALL R13 0 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K15 ["DEFAULT_FALLOFF"]
  NAMECALL R14 R13 K16 ["setFalloff"]
  CALL R14 2 0
  GETUPVAL R15 13
  GETTABLEKS R14 R15 K0 ["new"]
  NEWTABLE R15 1 0
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K17 ["TOOL_MODE"]
  GETTABLEKS R16 R17 K18 ["Point"]
  SETTABLE R13 R15 R16
  CALL R14 1 1
  GETUPVAL R16 14
  GETTABLEKS R15 R16 K0 ["new"]
  CALL R15 0 1
  GETUPVAL R16 15
  NEWTABLE R17 0 16
  MOVE R18 R11
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K19 ["Analytics"]
  GETTABLEKS R19 R20 K4 ["mock"]
  CALL R19 0 1
  MOVE R20 R12
  GETUPVAL R23 10
  GETTABLEKS R22 R23 K2 ["Store"]
  GETTABLEKS R21 R22 K0 ["new"]
  MOVE R22 R5
  CALL R21 1 1
  GETUPVAL R24 10
  GETTABLEKS R23 R24 K20 ["API"]
  GETTABLEKS R22 R23 K0 ["new"]
  DUPTABLE R23 K22 [{"networking"}]
  GETUPVAL R26 16
  GETTABLEKS R25 R26 K23 ["Networking"]
  GETTABLEKS R24 R25 K4 ["mock"]
  DUPTABLE R25 K25 [{"onRequest"}]
  GETUPVAL R26 17
  SETTABLEKS R26 R25 K24 ["onRequest"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K21 ["networking"]
  CALL R22 1 1
  GETUPVAL R25 10
  GETTABLEKS R24 R25 K26 ["Plugin"]
  GETTABLEKS R23 R24 K0 ["new"]
  MOVE R24 R3
  CALL R23 1 1
  GETUPVAL R26 10
  GETTABLEKS R25 R26 K27 ["Mouse"]
  GETTABLEKS R24 R25 K0 ["new"]
  NAMECALL R25 R3 K28 ["GetMouse"]
  CALL R25 1 -1
  CALL R24 -1 1
  GETUPVAL R27 10
  GETTABLEKS R26 R27 K29 ["PluginActions"]
  GETTABLEKS R25 R26 K0 ["new"]
  MOVE R26 R3
  GETUPVAL R27 18
  MOVE R28 R3
  MOVE R29 R12
  CALL R27 2 -1
  CALL R25 -1 1
  GETUPVAL R28 10
  GETTABLEKS R27 R28 K30 ["Focus"]
  GETTABLEKS R26 R27 K0 ["new"]
  MOVE R27 R1
  CALL R26 1 1
  MOVE R27 R6
  MOVE R28 R7
  MOVE R29 R15
  MOVE R30 R14
  MOVE R31 R8
  MOVE R32 R9
  MOVE R33 R10
  SETLIST R17 R18 16 [1]
  MOVE R18 R0
  CALL R16 2 1
  GETUPVAL R18 19
  GETTABLEKS R17 R18 K31 ["mount"]
  MOVE R18 R16
  MOVE R19 R1
  CALL R17 2 1
  GETIMPORT R18 K33 [pcall]
  NEWCLOSURE R19 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R18 1 2
  GETUPVAL R21 19
  GETTABLEKS R20 R21 K34 ["unmount"]
  MOVE R21 R17
  CALL R20 1 0
  NAMECALL R20 R1 K35 ["Destroy"]
  CALL R20 1 0
  NAMECALL R20 R5 K36 ["destruct"]
  CALL R20 1 0
  GETUPVAL R21 20
  GETTABLEKS R20 R21 K37 ["cleanTempInstances"]
  CALL R20 0 0
  JUMPIF R18 [+4]
  GETIMPORT R20 K39 [error]
  MOVE R21 R19
  CALL R20 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["cleanTempInstances"]
  CALL R3 0 0
  JUMPIF R1 [+4]
  GETIMPORT R3 K4 [error]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"test"}]
  SETTABLEKS R0 R3 K0 ["test"]
  GETIMPORT R4 K4 [Instance.new]
  LOADK R5 K5 ["ScreenGui"]
  CALL R4 1 1
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["ScreenGui"]
  GETIMPORT R3 K5 [game]
  GETTABLEKS R2 R3 K6 ["CoreGui"]
  CALL R0 2 1
  LOADK R1 K7 ["PluginMockGui"]
  SETTABLEKS R1 R0 K8 ["Name"]
  GETIMPORT R1 K12 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R1 R0 K10 ["ZIndexBehavior"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"LayeredClothingEditor"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["LayeredClothingEditor"]
  GETIMPORT R4 K5 [Instance.new]
  LOADK R5 K6 ["ScreenGui"]
  GETIMPORT R7 K8 [game]
  GETTABLEKS R6 R7 K9 ["CoreGui"]
  CALL R4 2 1
  LOADK R5 K10 ["PluginMockGui"]
  SETTABLEKS R5 R4 K11 ["Name"]
  GETIMPORT R5 K15 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K13 ["ZIndexBehavior"]
  MOVE R3 R4
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

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
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K9 ["LuaMeshEditingModule"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K10 ["Tools"]
  GETTABLEKS R6 R7 K11 ["PointTool"]
  CALL R5 1 1
  GETTABLEKS R7 R3 K12 ["Contexts"]
  GETTABLEKS R6 R7 K13 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R8 R3 K12 ["Contexts"]
  GETTABLEKS R7 R8 K14 ["Signals"]
  GETTABLEKS R9 R3 K12 ["Contexts"]
  GETTABLEKS R8 R9 K15 ["PreviewContext"]
  GETTABLEKS R10 R3 K12 ["Contexts"]
  GETTABLEKS R9 R10 K16 ["EditingItemContext"]
  GETTABLEKS R11 R3 K12 ["Contexts"]
  GETTABLEKS R10 R11 K17 ["AssetServiceWrapper"]
  GETTABLEKS R12 R3 K12 ["Contexts"]
  GETTABLEKS R11 R12 K18 ["StudioServiceWrapper"]
  GETTABLEKS R13 R3 K12 ["Contexts"]
  GETTABLEKS R12 R13 K19 ["MannequinContext"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Resources"]
  GETTABLEKS R14 R15 K22 ["PluginTheme"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K5 ["Packages"]
  GETTABLEKS R15 R16 K23 ["Framework"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K24 ["ContextServices"]
  GETTABLEKS R16 R14 K25 ["TestHelpers"]
  GETTABLEKS R17 R14 K26 ["Http"]
  GETTABLEKS R18 R16 K27 ["provideMockContext"]
  GETTABLEKS R20 R16 K28 ["Instances"]
  GETTABLEKS R19 R20 K29 ["MockPlugin"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K20 ["Src"]
  GETTABLEKS R22 R23 K30 ["Util"]
  GETTABLEKS R21 R22 K31 ["Constants"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K20 ["Src"]
  GETTABLEKS R23 R24 K30 ["Util"]
  GETTABLEKS R22 R23 K32 ["TestHelper"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K20 ["Src"]
  GETTABLEKS R24 R25 K30 ["Util"]
  GETTABLEKS R23 R24 K33 ["makePluginActions"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K20 ["Src"]
  GETTABLEKS R25 R26 K30 ["Util"]
  GETTABLEKS R24 R25 K34 ["makeMockNetworkLayer"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K20 ["Src"]
  GETTABLEKS R26 R27 K35 ["Reducers"]
  GETTABLEKS R25 R26 K36 ["MainReducer"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K20 ["Src"]
  GETTABLEKS R27 R28 K37 ["Components"]
  GETTABLEKS R26 R27 K38 ["LayeredClothingEditor"]
  CALL R25 1 1
  NEWTABLE R26 4 0
  DUPCLOSURE R27 K39 [PROTO_1]
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R21
  DUPCLOSURE R28 K40 [PROTO_3]
  CAPTURE VAL R21
  SETTABLEKS R28 R26 K41 ["runTestMinimal"]
  DUPCLOSURE R28 K42 [PROTO_4]
  CAPTURE VAL R27
  SETTABLEKS R28 R26 K43 ["runComponentTest"]
  DUPCLOSURE R28 K44 [PROTO_5]
  DUPCLOSURE R29 K45 [PROTO_6]
  CAPTURE VAL R27
  CAPTURE VAL R1
  CAPTURE VAL R25
  SETTABLEKS R29 R26 K46 ["runRhodiumTest"]
  RETURN R26 1
