PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClickSeeAllAssets"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["SectionName"]
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["PathName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CategoryName"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["SortName"]
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["QueryParams"]
  CALL R0 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADN R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R1 K0 ["Asset"]
  GETTABLEKS R2 R3 K1 ["Id"]
  LOADB R3 0
  GETUPVAL R4 0
  JUMPIFNOTEQ R4 R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["canHoverAsset"]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K20 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "isHovered", "logImpression", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "onSearchByCreator", "parentAbsolutePosition", "parentSize", "shouldLogOnMount", "swimlaneCategory", "tryInsert", "tryOpenAssetConfig"}]
  SETTABLEKS R2 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["assetData"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["ASSET_TILE_LOCATION"]
  GETTABLEKS R7 R8 K22 ["BROWSE"]
  SETTABLEKS R7 R6 K6 ["assetTileLocation"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K23 ["CanInsertAsset"]
  SETTABLEKS R7 R6 K7 ["canInsertAsset"]
  SETTABLEKS R3 R6 K8 ["isHovered"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K24 ["LogAssetImpression"]
  SETTABLEKS R7 R6 K9 ["logImpression"]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K10 ["onAssetHovered"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K11 ["onAssetHoverEnded"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R7 R6 K12 ["onAssetPreviewButtonClicked"]
  GETUPVAL R8 8
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K26 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K13 ["onSearchByCreator"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K27 ["ParentAbsolutePosition"]
  SETTABLEKS R7 R6 K14 ["parentAbsolutePosition"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K28 ["ParentAbsoluteSize"]
  SETTABLEKS R7 R6 K15 ["parentSize"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K29 ["ShouldLogAssetOnMount"]
  SETTABLEKS R7 R6 K16 ["shouldLogOnMount"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K30 ["SwimlaneCategory"]
  SETTABLEKS R7 R6 K17 ["swimlaneCategory"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K31 ["TryInsert"]
  SETTABLEKS R7 R6 K18 ["tryInsert"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R7 R6 K19 ["tryOpenAssetConfig"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldShowPrices"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CategoryName"]
  CALL R1 1 1
  LOADNIL R2
  JUMPIFNOT R1 [+8]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["ASSET_HEIGHT"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["PRICE_HEIGHT"]
  ADD R2 R3 R4
  JUMP [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["ASSET_HEIGHT"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["SectionName"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K17 [{"Data", "IsHeaderResponsive", "IsLoading", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Total", "Title", "ZIndex"}]
  GETTABLEKS R6 R0 K18 ["assets"]
  SETTABLEKS R6 R5 K7 ["Data"]
  GETUPVAL R7 6
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["IsHeaderResponsive"]
  GETTABLEKS R6 R0 K19 ["loading"]
  SETTABLEKS R6 R5 K9 ["IsLoading"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["LayoutOrder"]
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K11 ["OnClickSeeAll"]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K12 ["OnRenderItem"]
  GETIMPORT R6 K22 [UDim2.new]
  LOADN R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K23 ["SwimlaneWidth"]
  LOADN R9 0
  MOVE R10 R2
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETTABLEKS R6 R0 K24 ["total"]
  SETTABLEKS R6 R5 K14 ["Total"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["Title"]
  SETTABLEKS R6 R5 K15 ["Title"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["ZIndex"]
  SETTABLEKS R6 R5 K16 ["ZIndex"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  LOADN R5 0
  CALL R4 1 2
  GETUPVAL R6 4
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NEWTABLE R8 0 6
  GETTABLEKS R9 R0 K1 ["CategoryName"]
  GETTABLEKS R10 R0 K2 ["OnClickSeeAllAssets"]
  GETTABLEKS R11 R0 K3 ["PathName"]
  GETTABLEKS R12 R0 K4 ["QueryParams"]
  GETTABLEKS R13 R0 K5 ["SectionName"]
  GETTABLEKS R14 R0 K6 ["SortName"]
  SETLIST R8 R9 6 [1]
  CALL R6 2 1
  GETUPVAL R7 4
  NEWCLOSURE R8 P1
  CAPTURE VAL R5
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R8 4
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R9 4
  NEWCLOSURE R10 P3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE UPVAL U8
  NEWTABLE R11 0 14
  MOVE R12 R1
  MOVE R13 R4
  MOVE R14 R7
  MOVE R15 R8
  GETTABLEKS R16 R0 K7 ["CanInsertAsset"]
  GETTABLEKS R17 R0 K8 ["LogAssetImpression"]
  GETTABLEKS R18 R0 K9 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R19 R0 K10 ["OnSearchByCreator"]
  GETTABLEKS R20 R0 K11 ["ParentAbsolutePosition"]
  GETTABLEKS R21 R0 K12 ["ParentAbsoluteSize"]
  GETTABLEKS R22 R0 K13 ["ShouldLogAssetOnMount"]
  GETTABLEKS R23 R0 K14 ["SwimlaneCategory"]
  GETTABLEKS R24 R0 K15 ["TryInsert"]
  GETTABLEKS R25 R0 K16 ["TryOpenAssetConfig"]
  SETLIST R11 R12 14 [1]
  CALL R9 2 1
  GETUPVAL R10 4
  NEWCLOSURE R11 P4
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U10
  CAPTURE UPVAL U5
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE VAL R9
  NEWTABLE R12 0 7
  MOVE R13 R6
  MOVE R14 R9
  GETTABLEKS R15 R0 K1 ["CategoryName"]
  GETTABLEKS R16 R0 K17 ["LayoutOrder"]
  GETTABLEKS R17 R0 K18 ["SwimlaneWidth"]
  GETTABLEKS R18 R0 K19 ["Title"]
  GETTABLEKS R19 R0 K20 ["ZIndex"]
  SETLIST R12 R13 7 [1]
  CALL R10 2 1
  GETTABLEKS R11 R0 K5 ["SectionName"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R12 [+13]
  GETTABLEKS R12 R3 K22 ["assetsInCameraViewport"]
  LENGTH R11 R12
  JUMPIFEQKN R11 K23 [0] [+6]
  GETTABLEKS R12 R3 K24 ["assetsInCameraVicinity"]
  LENGTH R11 R12
  JUMPIFNOTEQKN R11 K23 [0] [+3]
  LOADNIL R11
  RETURN R11 1
  GETUPVAL R12 13
  GETTABLEKS R11 R12 K25 ["Generator"]
  DUPTABLE R12 K36 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "includeUnverifiedCreators", "qualityFilterData", "sortName", "queryParams", "sectionName", "initialPageSize", "render", "searchSource"}]
  GETTABLEKS R14 R0 K5 ["SectionName"]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R3 K22 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K22 ["assetsInCameraViewport"]
  GETTABLEKS R14 R0 K5 ["SectionName"]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R3 K24 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K24 ["assetsInCameraVicinity"]
  GETTABLEKS R13 R2 K26 ["networkInterface"]
  SETTABLEKS R13 R12 K26 ["networkInterface"]
  GETTABLEKS R13 R0 K1 ["CategoryName"]
  SETTABLEKS R13 R12 K27 ["categoryName"]
  GETTABLEKS R13 R0 K37 ["IncludeUnverifiedCreators"]
  SETTABLEKS R13 R12 K28 ["includeUnverifiedCreators"]
  GETUPVAL R14 14
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R0 K38 ["QualityFilterData"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K29 ["qualityFilterData"]
  GETTABLEKS R13 R0 K6 ["SortName"]
  SETTABLEKS R13 R12 K30 ["sortName"]
  GETTABLEKS R13 R0 K4 ["QueryParams"]
  SETTABLEKS R13 R12 K31 ["queryParams"]
  GETTABLEKS R13 R0 K5 ["SectionName"]
  SETTABLEKS R13 R12 K32 ["sectionName"]
  GETTABLEKS R13 R0 K39 ["InitialPageSize"]
  SETTABLEKS R13 R12 K33 ["initialPageSize"]
  SETTABLEKS R10 R12 K34 ["render"]
  GETTABLEKS R13 R0 K35 ["searchSource"]
  SETTABLEKS R13 R12 K35 ["searchSource"]
  CALL R11 1 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Asset"]
  GETTABLEKS R3 R4 K10 ["Asset"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K11 ["Types"]
  GETTABLEKS R4 R5 K12 ["AssetLogicTypes"]
  CALL R3 1 1
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K13 ["Categorization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K11 ["Types"]
  GETTABLEKS R6 R7 K14 ["Category"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Core"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K11 ["Types"]
  GETTABLEKS R8 R9 K17 ["HomeTypes"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Core"]
  GETTABLEKS R10 R11 K18 ["ContextServices"]
  GETTABLEKS R9 R10 K19 ["ModalContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Core"]
  GETTABLEKS R11 R12 K18 ["ContextServices"]
  GETTABLEKS R10 R11 K20 ["NetworkContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Core"]
  GETTABLEKS R12 R13 K9 ["Components"]
  GETTABLEKS R11 R12 K21 ["ResultsFetcher"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K22 ["Swimlane"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Core"]
  GETTABLEKS R14 R15 K23 ["Hooks"]
  GETTABLEKS R13 R14 K24 ["useContextualAssets"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K8 ["Core"]
  GETTABLEKS R16 R17 K15 ["Util"]
  GETTABLEKS R15 R16 K25 ["SharedFlags"]
  GETTABLEKS R14 R15 K26 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K8 ["Core"]
  GETTABLEKS R17 R18 K15 ["Util"]
  GETTABLEKS R16 R17 K25 ["SharedFlags"]
  GETTABLEKS R15 R16 K27 ["getFFlagToolboxContextualRecommendationsShadowTraffic"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K8 ["Core"]
  GETTABLEKS R17 R18 K28 ["Flags"]
  GETTABLEKS R16 R17 K29 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K8 ["Core"]
  GETTABLEKS R19 R20 K15 ["Util"]
  GETTABLEKS R18 R19 K25 ["SharedFlags"]
  GETTABLEKS R17 R18 K30 ["getFFlagToolboxFixSwimlaneHeader"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K31 ["useState"]
  GETTABLEKS R18 R1 K32 ["useCallback"]
  DUPCLOSURE R19 K33 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R15
  RETURN R19 1