PROTO_0:
  JUMPIFNOT R0 [+8]
  GETTABLEKS R2 R0 K0 ["parentBundleId"]
  JUMPIFEQKNIL R2 [+5]
  GETTABLEKS R2 R0 K1 ["isForSale"]
  NOT R1 R2
  JUMPIF R1 [+1]
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  DUPTABLE R2 K4 [{"AssetId", "Order", "AccessoryType", "IsLayered"}]
  FASTCALL1 TONUMBER R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K6 [tonumber]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["AssetId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["LayeredClothingOrder"]
  GETTABLE R3 R4 R0
  SETTABLEKS R3 R2 K1 ["Order"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLE R3 R4 R0
  SETTABLEKS R3 R2 K2 ["AccessoryType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["LayeredAssetTypes"]
  GETTABLE R4 R5 R0
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["IsLayered"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["localPlayerModel"]
  SETTABLEKS R1 R0 K2 ["model"]
  GETTABLEKS R2 R0 K2 ["model"]
  GETTABLEKS R1 R2 K3 ["HumanoidRootPart"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["Anchored"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["humanoidDescriptions"]
  GETTABLEKS R3 R0 K2 ["model"]
  GETTABLEKS R2 R3 K6 ["Humanoid"]
  GETTABLEKS R1 R2 K7 ["HumanoidDescription"]
  SETTABLEKS R1 R0 K8 ["humanoidDescriptionForLocalPlayer"]
  DUPTABLE R1 K10 [{"obtainedHumanoidDescriptions"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K9 ["obtainedHumanoidDescriptions"]
  SETTABLEKS R1 R0 K11 ["state"]
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isMounted"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+32]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isMounted"]
  JUMPIFNOT R1 [+28]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["humanoidDescriptions"]
  GETUPVAL R2 1
  SETTABLE R0 R1 R2
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"obtainedHumanoidDescriptions"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["state"]
  GETTABLEKS R5 R6 K2 ["obtainedHumanoidDescriptions"]
  NEWTABLE R6 1 0
  GETUPVAL R7 1
  LOADB R8 1
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["obtainedHumanoidDescriptions"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["assetInfo"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["bundles"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["tryingOnInfo"]
  GETTABLEKS R5 R1 K3 ["tryingOnInfo"]
  JUMPIFEQ R4 R5 [+31]
  GETTABLEKS R6 R4 K4 ["tryingOn"]
  JUMPIFNOT R6 [+27]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R7 R2 K5 ["parentBundleId"]
  JUMPIFEQKNIL R7 [+5]
  GETTABLEKS R7 R2 K6 ["isForSale"]
  NOT R6 R7
  JUMPIF R6 [+1]
  LOADB R6 0
  JUMPIFNOT R6 [+16]
  GETTABLEKS R6 R2 K5 ["parentBundleId"]
  GETTABLE R8 R3 R6
  GETTABLEKS R7 R8 K7 ["costumeId"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["getHumanoidDescriptionFromCostumeId"]
  MOVE R9 R7
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE UPVAL U0
  CALL R8 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  LOADB R5 0
  GETIMPORT R6 K1 [pairs]
  GETTABLEKS R11 R0 K2 ["props"]
  GETTABLEKS R10 R11 K3 ["bundles"]
  GETTABLE R9 R10 R1
  GETTABLEKS R7 R9 K4 ["assetIds"]
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETTABLEKS R13 R0 K2 ["props"]
  GETTABLEKS R12 R13 K5 ["assets"]
  GETTABLE R11 R12 R10
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLEKS R14 R11 K7 ["assetTypeId"]
  GETTABLE R12 R13 R14
  JUMPIFNOT R12 [+12]
  LOADB R13 1
  SETTABLE R13 R3 R12
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["AssetTypeToAssetCategory"]
  GETTABLEKS R15 R11 K7 ["assetTypeId"]
  GETTABLE R13 R14 R15
  JUMPIFNOT R13 [+2]
  LOADB R14 1
  SETTABLE R14 R4 R13
  LOADB R5 1
  FORGLOOP R6 2 [-25]
  LOADB R8 1
  NAMECALL R6 R2 K9 ["GetAccessories"]
  CALL R6 2 1
  NEWTABLE R7 0 0
  JUMPIFNOT R5 [+33]
  GETIMPORT R8 K1 [pairs]
  MOVE R9 R6
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["AccessoryTypeEnumToAssetTypeId"]
  GETTABLEKS R15 R12 K11 ["AccessoryType"]
  GETTABLE R13 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["AssetTypeToAssetCategory"]
  GETTABLE R14 R15 R13
  NOT R15 R14
  JUMPIF R15 [+2]
  GETTABLE R16 R4 R14
  NOT R15 R16
  GETTABLEKS R17 R12 K11 ["AccessoryType"]
  GETTABLE R16 R3 R17
  JUMPIF R16 [+8]
  JUMPIFNOT R15 [+7]
  FASTCALL2 TABLE_INSERT R7 R12 [+5]
  MOVE R17 R7
  MOVE R18 R12
  GETIMPORT R16 K14 [table.insert]
  CALL R16 2 0
  FORGLOOP R8 2 [-27]
  GETIMPORT R8 K1 [pairs]
  GETTABLEKS R13 R0 K2 ["props"]
  GETTABLEKS R12 R13 K3 ["bundles"]
  GETTABLE R11 R12 R1
  GETTABLEKS R9 R11 K4 ["assetIds"]
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLEKS R15 R0 K2 ["props"]
  GETTABLEKS R14 R15 K5 ["assets"]
  GETTABLE R13 R14 R12
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLEKS R16 R13 K7 ["assetTypeId"]
  GETTABLE R14 R15 R16
  JUMPIFNOT R14 [+40]
  GETTABLEKS R15 R13 K7 ["assetTypeId"]
  DUPTABLE R14 K18 [{"AssetId", "Order", "AccessoryType", "IsLayered"}]
  FASTCALL1 TONUMBER R12 [+3]
  MOVE R17 R12
  GETIMPORT R16 K20 [tonumber]
  CALL R16 1 1
  SETTABLEKS R16 R14 K15 ["AssetId"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["LayeredClothingOrder"]
  GETTABLE R16 R17 R15
  SETTABLEKS R16 R14 K16 ["Order"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLE R16 R17 R15
  SETTABLEKS R16 R14 K11 ["AccessoryType"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K22 ["LayeredAssetTypes"]
  GETTABLE R17 R18 R15
  JUMPIFNOTEQKNIL R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R14 K17 ["IsLayered"]
  FASTCALL2 TABLE_INSERT R7 R14 [+5]
  MOVE R16 R7
  MOVE R17 R14
  GETIMPORT R15 K14 [table.insert]
  CALL R15 2 0
  JUMP [+7]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K23 ["AssetTypeIdStringToHumanoidDescriptionProp"]
  GETTABLEKS R16 R13 K7 ["assetTypeId"]
  GETTABLE R14 R15 R16
  SETTABLE R12 R2 R14
  FORGLOOP R8 2 [-60]
  JUMPIFNOT R5 [+5]
  MOVE R10 R7
  LOADB R11 1
  NAMECALL R8 R2 K24 ["SetAccessories"]
  CALL R8 3 0
  RETURN R2 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["assetInfo"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["bundles"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["tryingOnInfo"]
  GETTABLEKS R4 R0 K4 ["humanoidDescriptionForLocalPlayer"]
  NAMECALL R4 R4 K5 ["Clone"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K6 ["tryingOn"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K7 ["setScrollingEnabled"]
  JUMPIFNOT R3 [+196]
  GETTABLEKS R7 R3 K6 ["tryingOn"]
  JUMPIFNOT R7 [+193]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R8 R1 K8 ["parentBundleId"]
  JUMPIFEQKNIL R8 [+5]
  GETTABLEKS R8 R1 K9 ["isForSale"]
  NOT R7 R8
  JUMPIF R7 [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+66]
  GETTABLEKS R7 R1 K8 ["parentBundleId"]
  GETTABLE R9 R2 R7
  GETTABLEKS R8 R9 K10 ["costumeId"]
  JUMPIFNOT R8 [+53]
  GETTABLEKS R10 R0 K11 ["humanoidDescriptions"]
  GETTABLE R9 R10 R8
  GETTABLEKS R12 R0 K12 ["state"]
  GETTABLEKS R11 R12 K13 ["obtainedHumanoidDescriptions"]
  GETTABLE R10 R11 R8
  JUMPIFEQKB R10 TRUE [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R9 [+163]
  GETIMPORT R10 K15 [pairs]
  GETUPVAL R13 0
  GETTABLEKS R11 R13 K16 ["AssetTypeIdStringToHumanoidDescriptionProp"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K17 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLE R15 R16 R13
  JUMPIFNOTEQKNIL R15 [+16]
  GETTABLE R16 R9 R14
  FASTCALL1 TONUMBER R16 [+2]
  GETIMPORT R15 K19 [tonumber]
  CALL R15 1 1
  JUMPIFNOT R15 [+9]
  GETTABLE R16 R9 R14
  FASTCALL1 TOSTRING R16 [+2]
  GETIMPORT R15 K21 [tostring]
  CALL R15 1 1
  JUMPIFEQKS R15 K22 ["0"] [+3]
  GETTABLE R15 R9 R14
  SETTABLE R15 R4 R14
  FORGLOOP R10 2 [-22]
  LOADB R12 1
  NAMECALL R10 R9 K23 ["GetAccessories"]
  CALL R10 2 1
  MOVE R13 R10
  LOADB R14 1
  NAMECALL R11 R4 K24 ["SetAccessories"]
  CALL R11 3 0
  JUMP [+123]
  MOVE R11 R7
  MOVE R12 R4
  NAMECALL R9 R0 K25 ["tryOnBundleWithoutCostumeId"]
  CALL R9 3 1
  MOVE R4 R9
  JUMP [+116]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLEKS R9 R3 K26 ["assetTypeId"]
  GETTABLE R7 R8 R9
  JUMPIFNOT R7 [+100]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLEKS R9 R3 K26 ["assetTypeId"]
  GETTABLE R7 R8 R9
  LOADB R10 1
  NAMECALL R8 R4 K23 ["GetAccessories"]
  CALL R8 2 1
  NEWTABLE R9 0 0
  GETIMPORT R10 K15 [pairs]
  MOVE R11 R8
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K27 ["AccessoryTypeEnumToAssetTypeId"]
  GETTABLEKS R17 R14 K28 ["AccessoryType"]
  GETTABLE R15 R16 R17
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K29 ["AssetTypeToAssetCategory"]
  GETTABLEKS R18 R3 K26 ["assetTypeId"]
  GETTABLE R16 R17 R18
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K29 ["AssetTypeToAssetCategory"]
  GETTABLE R17 R18 R15
  NOT R18 R16
  JUMPIF R18 [+4]
  JUMPIFNOTEQ R17 R16 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  GETTABLEKS R19 R14 K28 ["AccessoryType"]
  JUMPIFEQ R19 R7 [+9]
  JUMPIFNOT R18 [+7]
  FASTCALL2 TABLE_INSERT R9 R14 [+5]
  MOVE R20 R9
  MOVE R21 R14
  GETIMPORT R19 K32 [table.insert]
  CALL R19 2 0
  FORGLOOP R10 2 [-35]
  GETTABLEKS R11 R3 K26 ["assetTypeId"]
  GETTABLEKS R12 R3 K33 ["assetId"]
  DUPTABLE R10 K37 [{"AssetId", "Order", "AccessoryType", "IsLayered"}]
  FASTCALL1 TONUMBER R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K19 [tonumber]
  CALL R13 1 1
  SETTABLEKS R13 R10 K34 ["AssetId"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K38 ["LayeredClothingOrder"]
  GETTABLE R13 R14 R11
  SETTABLEKS R13 R10 K35 ["Order"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K17 ["AssetTypeIdToAccessoryTypeEnum"]
  GETTABLE R13 R14 R11
  SETTABLEKS R13 R10 K28 ["AccessoryType"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K39 ["LayeredAssetTypes"]
  GETTABLE R14 R15 R11
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R10 K36 ["IsLayered"]
  FASTCALL2 TABLE_INSERT R9 R10 [+5]
  MOVE R12 R9
  MOVE R13 R10
  GETIMPORT R11 K32 [table.insert]
  CALL R11 2 0
  MOVE R13 R9
  LOADB R14 1
  NAMECALL R11 R4 K24 ["SetAccessories"]
  CALL R11 3 0
  JUMP [+9]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["AssetTypeIdStringToHumanoidDescriptionProp"]
  GETTABLEKS R9 R3 K26 ["assetTypeId"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R3 K33 ["assetId"]
  SETTABLE R8 R4 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K40 ["createElement"]
  LOADK R8 K41 ["Frame"]
  DUPTABLE R9 K46 [{"BackgroundTransparency", "Size", "LayoutOrder", "Visible"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K42 ["BackgroundTransparency"]
  GETIMPORT R10 K49 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETUPVAL R15 2
  CALL R15 0 1
  JUMPIFNOT R15 [+4]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K50 ["DetailsThumbnailFrameHeight"]
  JUMPIF R14 [+1]
  LOADN R14 44
  CALL R10 4 1
  SETTABLEKS R10 R9 K43 ["Size"]
  LOADN R10 2
  SETTABLEKS R10 R9 K44 ["LayoutOrder"]
  SETTABLEKS R5 R9 K45 ["Visible"]
  DUPTABLE R10 K52 [{"AvatarViewport"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K40 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K59 [{"size", "position", "humanoidDescription", "model", "visible", "backgroundTransparency", "setScrollingEnabled"}]
  GETIMPORT R14 K49 [UDim2.new]
  LOADK R15 K60 [0.75]
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K53 ["size"]
  GETIMPORT R14 K49 [UDim2.new]
  LOADK R15 K61 [0.5]
  LOADN R16 0
  LOADK R17 K61 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K54 ["position"]
  SETTABLEKS R4 R13 K55 ["humanoidDescription"]
  GETTABLEKS R14 R0 K56 ["model"]
  SETTABLEKS R14 R13 K56 ["model"]
  LOADB R14 1
  SETTABLEKS R14 R13 K57 ["visible"]
  LOADN R14 1
  SETTABLEKS R14 R13 K58 ["backgroundTransparency"]
  SETTABLEKS R6 R13 K7 ["setScrollingEnabled"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K51 ["AvatarViewport"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_8:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isMounted"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["detailsInformation"]
  GETTABLEKS R2 R3 K1 ["assetId"]
  DUPTABLE R3 K6 [{"assets", "assetInfo", "bundles", "tryingOnInfo"}]
  GETTABLEKS R4 R0 K2 ["assets"]
  SETTABLEKS R4 R3 K2 ["assets"]
  GETTABLEKS R5 R0 K2 ["assets"]
  GETTABLE R4 R5 R2
  SETTABLEKS R4 R3 K3 ["assetInfo"]
  GETTABLEKS R4 R0 K4 ["bundles"]
  SETTABLEKS R4 R3 K4 ["bundles"]
  GETTABLEKS R4 R0 K5 ["tryingOnInfo"]
  SETTABLEKS R4 R3 K5 ["tryingOnInfo"]
  RETURN R3 1

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_11:
  DUPTABLE R1 K1 [{"getHumanoidDescriptionFromCostumeId"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getHumanoidDescriptionFromCostumeId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R2 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["AvatarViewport"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R2 K16 ["Thunks"]
  GETTABLEKS R8 R9 K17 ["GetHumanoidDescriptionFromCostumeId"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R2 K18 ["Flags"]
  GETTABLEKS R9 R10 K19 ["GetFFlagDisplayCollectiblesIcon"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K20 ["PureComponent"]
  LOADK R11 K21 ["TryOnViewport"]
  NAMECALL R9 R9 K22 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K23 [PROTO_0]
  DUPCLOSURE R11 K24 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R12 K25 [PROTO_2]
  SETTABLEKS R12 R9 K26 ["init"]
  DUPCLOSURE R12 K27 [PROTO_3]
  SETTABLEKS R12 R9 K28 ["didMount"]
  DUPCLOSURE R12 K29 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R12 R9 K30 ["didUpdate"]
  DUPCLOSURE R12 K31 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R12 R9 K32 ["tryOnBundleWithoutCostumeId"]
  DUPCLOSURE R12 K33 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R12 R9 K34 ["render"]
  DUPCLOSURE R12 K35 [PROTO_8]
  SETTABLEKS R12 R9 K36 ["willUnmount"]
  GETTABLEKS R12 R4 K37 ["UNSTABLE_connect2"]
  DUPCLOSURE R13 K38 [PROTO_9]
  DUPCLOSURE R14 K39 [PROTO_11]
  CAPTURE VAL R7
  CALL R12 2 1
  MOVE R13 R9
  CALL R12 1 -1
  RETURN R12 -1