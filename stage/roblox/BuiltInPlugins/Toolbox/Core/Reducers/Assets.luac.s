PROTO_0:
  JUMPIF R1 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["shouldDebugWarnings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETIMPORT R4 K2 [warn]
  LOADK R5 K3 ["Lua Toolbox: handleAssetsAddedToState() got assets = nil"]
  CALL R4 1 0
  RETURN R0 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  DUPTABLE R6 K5 [{"Voting"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K4 ["Voting"]
  GETIMPORT R7 K8 [ipairs]
  MOVE R8 R1
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R13 R11 K9 ["Asset"]
  GETTABLEKS R12 R13 K10 ["Id"]
  LENGTH R14 R5
  ADDK R13 R14 K11 [1]
  GETTABLE R14 R4 R12
  JUMPIFNOTEQKNIL R14 [+46]
  GETTABLEKS R15 R0 K13 ["assetsReceived"]
  ORK R14 R15 K12 [0]
  ADD R15 R14 R13
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K14 ["round"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K15 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
  DIV R18 R14 R19
  LOADN R19 0
  CALL R17 2 1
  ADDK R16 R17 K11 [1]
  GETTABLEKS R17 R11 K16 ["Context"]
  JUMPIF R17 [+2]
  NEWTABLE R17 0 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K17 ["Dictionary"]
  GETTABLEKS R18 R19 K18 ["join"]
  MOVE R19 R17
  DUPTABLE R20 K22 [{"page", "pagePosition", "position"}]
  SETTABLEKS R16 R20 K19 ["page"]
  SETTABLEKS R13 R20 K20 ["pagePosition"]
  SETTABLEKS R15 R20 K21 ["position"]
  CALL R18 2 1
  SETTABLEKS R18 R11 K16 ["Context"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K17 ["Dictionary"]
  GETTABLEKS R18 R19 K18 ["join"]
  MOVE R19 R11
  MOVE R20 R6
  CALL R18 2 1
  SETTABLE R18 R4 R12
  SETTABLE R12 R5 R13
  FORGLOOP R7 2 [inext] [-55]
  GETTABLEKS R9 R0 K23 ["totalAssets"]
  ORK R8 R9 K12 [0]
  ORK R9 R2 K12 [0]
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K26 [math.max]
  CALL R7 2 1
  GETTABLEKS R10 R0 K13 ["assetsReceived"]
  ORK R9 R10 K12 [0]
  LENGTH R10 R5
  ADD R8 R9 R10
  LOADB R9 0
  JUMPIFNOT R3 [+7]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K27 ["isNextPageAvailable"]
  MOVE R11 R3
  CALL R10 1 1
  NOT R9 R10
  JUMP [+23]
  LOADB R10 0
  JUMPIFNOTLE R7 R8 [+6]
  LENGTH R11 R1
  JUMPIFEQKN R11 K12 [0] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETTABLEKS R11 R0 K28 ["hasReachedBottom"]
  JUMPIF R11 [+11]
  MOVE R11 R10
  JUMPIF R11 [+9]
  LOADB R11 0
  LENGTH R12 R5
  JUMPIFNOTEQKN R12 K12 [0] [+6]
  LOADN R12 0
  JUMPIFLT R12 R7 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  MOVE R9 R11
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["Dictionary"]
  GETTABLEKS R10 R11 K18 ["join"]
  MOVE R11 R0
  DUPTABLE R12 K32 [{"idToAssetMap", "idsToRender", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["Dictionary"]
  GETTABLEKS R13 R14 K18 ["join"]
  GETTABLEKS R14 R0 K29 ["idToAssetMap"]
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  MOVE R15 R4
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["idToAssetMap"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K33 ["List"]
  GETTABLEKS R13 R14 K18 ["join"]
  GETTABLEKS R14 R0 K30 ["idsToRender"]
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  MOVE R15 R5
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["idsToRender"]
  SETTABLEKS R7 R12 K23 ["totalAssets"]
  SETTABLEKS R8 R12 K13 ["assetsReceived"]
  SETTABLEKS R9 R12 K28 ["hasReachedBottom"]
  MOVE R13 R3
  JUMPIF R13 [+4]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K34 ["createDefaultCursor"]
  CALL R13 0 1
  SETTABLEKS R13 R12 K31 ["currentCursor"]
  CALL R10 2 -1
  RETURN R10 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"idsToRender", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor", "manageableAssets"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["idsToRender"]
  LOADN R5 0
  SETTABLEKS R5 R4 K3 ["totalAssets"]
  LOADN R5 0
  SETTABLEKS R5 R4 K4 ["assetsReceived"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["hasReachedBottom"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createDefaultCursor"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K6 ["currentCursor"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["manageableAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isLoading"}]
  GETTABLEKS R5 R1 K2 ["isLoading"]
  SETTABLEKS R5 R4 K2 ["isLoading"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"cachedCreatorInfo"}]
  GETTABLEKS R5 R1 K2 ["cachedCreatorInfo"]
  SETTABLEKS R5 R4 K2 ["cachedCreatorInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["idToAssetMap"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R0 K0 ["idToAssetMap"]
  GETTABLEKS R5 R1 K1 ["assetId"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R0 K0 ["idToAssetMap"]
  GETTABLEKS R5 R1 K1 ["assetId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K2 ["Asset"]
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"AssetMediaIds"}]
  GETTABLEKS R6 R1 K7 ["assetMediaIds"]
  SETTABLEKS R6 R5 K5 ["AssetMediaIds"]
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  GETTABLEKS R6 R0 K0 ["idToAssetMap"]
  GETTABLEKS R7 R1 K1 ["assetId"]
  GETTABLE R5 R6 R7
  DUPTABLE R6 K8 [{"Asset"}]
  SETTABLEKS R3 R6 K2 ["Asset"]
  CALL R4 2 1
  NEWTABLE R5 0 0
  GETTABLEKS R6 R1 K1 ["assetId"]
  SETTABLE R4 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Dictionary"]
  GETTABLEKS R6 R7 K4 ["join"]
  MOVE R7 R0
  DUPTABLE R8 K9 [{"idToAssetMap"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["Dictionary"]
  GETTABLEKS R9 R10 K4 ["join"]
  GETTABLEKS R10 R0 K0 ["idToAssetMap"]
  MOVE R11 R5
  CALL R9 2 1
  SETTABLEKS R9 R8 K0 ["idToAssetMap"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  GETTABLEKS R4 R1 K0 ["assets"]
  GETTABLEKS R5 R1 K1 ["totalResults"]
  GETTABLEKS R6 R1 K2 ["cursor"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"isPreviewing", "previewAssetId", "previewSwimlaneName"}]
  GETTABLEKS R5 R1 K2 ["isPreviewing"]
  SETTABLEKS R5 R4 K2 ["isPreviewing"]
  GETTABLEKS R5 R1 K3 ["previewAssetId"]
  SETTABLEKS R5 R4 K3 ["previewAssetId"]
  GETTABLEKS R6 R1 K4 ["previewSwimlaneName"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K4 ["previewSwimlaneName"]
  JUMP [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  SETTABLEKS R5 R4 K4 ["previewSwimlaneName"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"previewModel"}]
  GETTABLEKS R5 R1 K2 ["previewModel"]
  SETTABLEKS R5 R4 K2 ["previewModel"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"previewModel", "previewPluginData"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["None"]
  SETTABLEKS R5 R4 K2 ["previewModel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["None"]
  SETTABLEKS R5 R4 K3 ["previewPluginData"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["canManage"]
  GETTABLEKS R3 R1 K1 ["assetId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  GETTABLEKS R5 R0 K4 ["manageableAssets"]
  NEWTABLE R6 1 0
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  SETTABLE R2 R6 R7
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Dictionary"]
  GETTABLEKS R5 R6 K3 ["join"]
  MOVE R6 R0
  DUPTABLE R7 K7 [{"manageableAssets"}]
  SETTABLEKS R4 R7 K4 ["manageableAssets"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"previewPluginData"}]
  GETTABLEKS R5 R1 K4 ["pluginData"]
  SETTABLEKS R5 R4 K2 ["previewPluginData"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"mostRecentAssetInsertTime"}]
  GETTABLEKS R5 R1 K2 ["mostRecentAssetInsertTime"]
  SETTABLEKS R5 R4 K2 ["mostRecentAssetInsertTime"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"creatingUniverseId", "creatingUniverseName", "creatingUniverseRootPlaceId"}]
  GETTABLEKS R5 R1 K2 ["creatingUniverseId"]
  SETTABLEKS R5 R4 K2 ["creatingUniverseId"]
  GETTABLEKS R5 R1 K3 ["creatingUniverseName"]
  SETTABLEKS R5 R4 K3 ["creatingUniverseName"]
  GETTABLEKS R5 R1 K4 ["creatingUniverseRootPlaceId"]
  SETTABLEKS R5 R4 K4 ["creatingUniverseRootPlaceId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"codeSummaryMap"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  MOVE R6 R0
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K4 ["assetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K6 [tostring]
  CALL R8 1 1
  GETTABLEKS R9 R1 K7 ["codeSummary"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["codeSummaryMap"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["idToAssetMap"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R4 R0 K0 ["idToAssetMap"]
  GETTABLEKS R5 R1 K1 ["assetId"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K0 ["idToAssetMap"]
  GETTABLEKS R4 R1 K1 ["assetId"]
  GETTABLE R2 R3 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"idToAssetMap"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Dictionary"]
  GETTABLEKS R6 R7 K3 ["join"]
  GETTABLEKS R7 R0 K0 ["idToAssetMap"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R1 K1 ["assetId"]
  GETTABLEKS R10 R1 K5 ["assetData"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["idToAssetMap"]
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["DebugFlags"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K12 ["PagedRequestCursor"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R1 K13 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K9 ["Util"]
  GETTABLEKS R9 R10 K14 ["Math"]
  GETTABLEKS R11 R0 K8 ["Core"]
  GETTABLEKS R10 R11 K15 ["Actions"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K16 ["ClearAssets"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Core"]
  GETTABLEKS R14 R15 K15 ["Actions"]
  GETTABLEKS R13 R14 K17 ["SetAssetMediaIds"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R10 K18 ["GetAssets"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R10 K19 ["SetLoading"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R10 K20 ["SetCachedCreatorInfo"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R10 K21 ["SetAssetPreview"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R10 K22 ["SetPreviewModel"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R10 K23 ["ClearPreview"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R10 K24 ["SetCanManageAsset"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R10 K25 ["SetCodeSummaryForAsset"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R10 K26 ["SetPluginData"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R10 K27 ["SetMostRecentAssetInsertTime"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R10 K28 ["GetAssetContentAttributionInfo"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K8 ["Core"]
  GETTABLEKS R26 R27 K15 ["Actions"]
  GETTABLEKS R25 R26 K29 ["UpdateAssetData"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R29 R0 K8 ["Core"]
  GETTABLEKS R28 R29 K9 ["Util"]
  GETTABLEKS R27 R28 K30 ["SharedFlags"]
  GETTABLEKS R26 R27 K31 ["getFFlagToolboxCodeUnderstandingSummary"]
  CALL R25 1 1
  DUPCLOSURE R26 K32 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R7
  GETTABLEKS R27 R3 K33 ["createReducer"]
  DUPTABLE R28 K51 [{"idToAssetMap", "idsToRender", "isLoading", "totalAssets", "assetsReceived", "hasReachedBottom", "currentCursor", "previewModel", "previewAssetId", "previewSwimlaneName", "isPreviewing", "mostRecentAssetInsertTime", "manageableAssets", "previewPluginData", "creatingUniverseName", "creatingUniverseRootPlaceId", "codeSummaryMap"}]
  NEWTABLE R29 0 0
  SETTABLEKS R29 R28 K34 ["idToAssetMap"]
  NEWTABLE R29 0 0
  SETTABLEKS R29 R28 K35 ["idsToRender"]
  LOADB R29 1
  SETTABLEKS R29 R28 K36 ["isLoading"]
  LOADN R29 0
  SETTABLEKS R29 R28 K37 ["totalAssets"]
  LOADN R29 0
  SETTABLEKS R29 R28 K38 ["assetsReceived"]
  LOADB R29 0
  SETTABLEKS R29 R28 K39 ["hasReachedBottom"]
  GETTABLEKS R29 R7 K52 ["createDefaultCursor"]
  CALL R29 0 1
  SETTABLEKS R29 R28 K40 ["currentCursor"]
  LOADNIL R29
  SETTABLEKS R29 R28 K41 ["previewModel"]
  LOADNIL R29
  SETTABLEKS R29 R28 K42 ["previewAssetId"]
  LOADNIL R29
  SETTABLEKS R29 R28 K43 ["previewSwimlaneName"]
  LOADB R29 0
  SETTABLEKS R29 R28 K44 ["isPreviewing"]
  LOADN R29 0
  SETTABLEKS R29 R28 K45 ["mostRecentAssetInsertTime"]
  NEWTABLE R29 0 0
  SETTABLEKS R29 R28 K46 ["manageableAssets"]
  LOADNIL R29
  SETTABLEKS R29 R28 K47 ["previewPluginData"]
  LOADNIL R29
  SETTABLEKS R29 R28 K48 ["creatingUniverseName"]
  LOADNIL R29
  SETTABLEKS R29 R28 K49 ["creatingUniverseRootPlaceId"]
  MOVE R30 R25
  CALL R30 0 1
  JUMPIFNOT R30 [+3]
  NEWTABLE R29 0 0
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K50 ["codeSummaryMap"]
  NEWTABLE R29 16 0
  GETTABLEKS R30 R11 K53 ["name"]
  DUPCLOSURE R31 K54 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R14 K53 ["name"]
  DUPCLOSURE R31 K55 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R15 K53 ["name"]
  DUPCLOSURE R31 K56 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R12 K53 ["name"]
  DUPCLOSURE R31 K57 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R13 K53 ["name"]
  DUPCLOSURE R31 K58 [PROTO_5]
  CAPTURE VAL R26
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R16 K53 ["name"]
  DUPCLOSURE R31 K59 [PROTO_6]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R17 K53 ["name"]
  DUPCLOSURE R31 K60 [PROTO_7]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R18 K53 ["name"]
  DUPCLOSURE R31 K61 [PROTO_8]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R19 K53 ["name"]
  DUPCLOSURE R31 K62 [PROTO_9]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R21 K53 ["name"]
  DUPCLOSURE R31 K63 [PROTO_10]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K53 ["name"]
  DUPCLOSURE R31 K64 [PROTO_11]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R23 K53 ["name"]
  DUPCLOSURE R31 K65 [PROTO_12]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R20 K53 ["name"]
  MOVE R32 R25
  CALL R32 0 1
  JUMPIFNOT R32 [+3]
  DUPCLOSURE R31 K66 [PROTO_13]
  CAPTURE VAL R2
  JUMP [+1]
  LOADNIL R31
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R24 K53 ["name"]
  DUPCLOSURE R31 K67 [PROTO_14]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  CALL R27 2 -1
  RETURN R27 -1
