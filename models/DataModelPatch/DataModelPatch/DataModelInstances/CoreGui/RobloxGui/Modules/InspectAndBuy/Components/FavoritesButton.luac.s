PROTO_0:
  GETIMPORT R3 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R3 [+8]
  GETUPVAL R3 0
  NAMECALL R3 R3 K4 ["activateButton"]
  CALL R3 1 0
  GETIMPORT R3 K7 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R3 K9 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["selectedImage"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["fetchFavoriteRetries"]
  GETUPVAL R1 1
  LOADK R3 K2 ["FavoriteGamepadShortcut"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  LOADB R5 0
  GETUPVAL R6 2
  NAMECALL R1 R1 K3 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIF R0 [+6]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["assetId"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["getBundleId"]
  GETUPVAL R1 2
  CALL R0 1 1
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["gotFavoriteForDetailsItem"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["getFavoriteForAsset"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K3 ["getFavoriteForBundle"]
  MOVE R5 R1
  JUMPIFNOT R5 [+12]
  GETTABLEKS R5 R1 K4 ["assetInfo"]
  JUMPIFNOT R5 [+9]
  NOT R5 R2
  JUMPIFNOT R5 [+7]
  GETTABLEKS R6 R0 K5 ["fetchFavoriteRetries"]
  LOADN R7 10
  JUMPIFLT R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+25]
  GETTABLEKS R6 R1 K4 ["assetInfo"]
  MOVE R7 R6
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R6 K6 ["parentBundleId"]
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETIMPORT R8 K9 [coroutine.wrap]
  NEWCLOSURE R9 P0
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CALL R8 1 1
  CALL R8 0 0
  GETTABLEKS R8 R0 K5 ["fetchFavoriteRetries"]
  ADDK R8 R8 K10 [1]
  SETTABLEKS R8 R0 K5 ["fetchFavoriteRetries"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isFavorited"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["IsDetailsItemPartOfBundleAndOffsale"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["createFavoriteForAsset"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["deleteFavoriteForAsset"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["createFavoriteForBundle"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["deleteFavoriteForBundle"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["assetInfo"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R7 K8 ["creatorId"]
  JUMPIF R8 [+1]
  LOADN R8 0
  GETUPVAL R9 0
  JUMPIF R9 [+3]
  JUMPIFEQKS R8 K9 ["1"] [+2]
  RETURN R0 0
  JUMPIFNOT R1 [+15]
  JUMPIFNOT R2 [+9]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["getBundleId"]
  MOVE R10 R7
  CALL R9 1 1
  MOVE R10 R6
  MOVE R11 R9
  CALL R10 1 0
  RETURN R0 0
  MOVE R9 R4
  GETTABLEKS R10 R7 K11 ["assetId"]
  CALL R9 1 0
  RETURN R0 0
  JUMPIFNOT R2 [+9]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["getBundleId"]
  MOVE R10 R7
  CALL R9 1 1
  MOVE R10 R5
  MOVE R11 R9
  CALL R10 1 0
  RETURN R0 0
  MOVE R9 R3
  GETTABLEKS R10 R7 K11 ["assetId"]
  CALL R9 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  LOADK R3 K0 ["FavoriteGamepadShortcut"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["activateButton"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isFavorited"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["favoriteButtonRef"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["assetInfo"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K4 ["creatorId"]
  JUMPIF R4 [+1]
  LOADN R4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  LOADK R6 K6 ["ImageButton"]
  NEWTABLE R7 16 0
  GETIMPORT R8 K9 [Vector2.new]
  LOADK R9 K10 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["AnchorPoint"]
  LOADN R8 1
  SETTABLEKS R8 R7 K12 ["BackgroundTransparency"]
  GETIMPORT R8 K14 [UDim2.new]
  LOADN R9 0
  LOADN R10 44
  LOADN R11 0
  LOADN R12 44
  CALL R8 4 1
  SETTABLEKS R8 R7 K15 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  LOADK R8 K17 ["rbxasset://textures/ui/InspectMenu/Button_outline.png"]
  SETTABLEKS R8 R7 K18 ["Image"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K19 ["White"]
  SETTABLEKS R8 R7 K20 ["ImageColor3"]
  GETIMPORT R8 K24 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K22 ["ScaleType"]
  GETIMPORT R8 K26 [Rect.new]
  LOADN R9 5
  LOADN R10 5
  LOADN R11 120
  LOADN R12 20
  CALL R8 4 1
  SETTABLEKS R8 R7 K27 ["SliceCenter"]
  GETTABLEKS R8 R0 K28 ["selectedImage"]
  SETTABLEKS R8 R7 K29 ["SelectionImageObject"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+2]
  LOADB R8 1
  JUMP [+4]
  JUMPIFEQKS R4 K30 ["1"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K31 ["Visible"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K32 ["Ref"]
  SETTABLE R2 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K33 ["Event"]
  GETTABLEKS R8 R9 K34 ["Activated"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLE R9 R7 R8
  DUPTABLE R8 K36 [{"FavoriteIcon"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K37 ["ImageLabel"]
  DUPTABLE R11 K39 [{"AnchorPoint", "BackgroundTransparency", "Size", "Position", "Image", "ImageColor3"}]
  GETIMPORT R12 K9 [Vector2.new]
  LOADK R13 K10 [0.5]
  LOADK R14 K10 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["AnchorPoint"]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["BackgroundTransparency"]
  GETIMPORT R12 K14 [UDim2.new]
  LOADN R13 0
  LOADN R14 26
  LOADN R15 0
  LOADN R16 26
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  GETIMPORT R12 K14 [UDim2.new]
  LOADN R13 0
  LOADN R14 22
  LOADN R15 0
  LOADN R16 22
  CALL R12 4 1
  SETTABLEKS R12 R11 K38 ["Position"]
  JUMPIFNOT R1 [+2]
  LOADK R12 K40 ["rbxasset://textures/ui/InspectMenu/ico_favorite.png"]
  JUMP [+1]
  LOADK R12 K41 ["rbxasset://textures/ui/InspectMenu/ico_favorite_off.png"]
  SETTABLEKS R12 R11 K18 ["Image"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["White"]
  SETTABLEKS R12 R11 K20 ["ImageColor3"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K35 ["FavoriteIcon"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["detailsInformation"]
  GETTABLEKS R2 R3 K1 ["assetId"]
  DUPTABLE R3 K8 [{"view", "assetInfo", "bundleInfo", "gotFavoriteForDetailsItem", "isFavorited", "IsDetailsItemPartOfBundleAndOffsale"}]
  GETTABLEKS R4 R0 K2 ["view"]
  SETTABLEKS R4 R3 K2 ["view"]
  GETTABLEKS R5 R0 K9 ["assets"]
  GETTABLE R4 R5 R2
  SETTABLEKS R4 R3 K3 ["assetInfo"]
  GETTABLEKS R4 R0 K10 ["bundles"]
  SETTABLEKS R4 R3 K4 ["bundleInfo"]
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["gotFavoriteForDetailsItem"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["isFavorited"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["IsDetailsItemPartOfBundleAndOffsale"]
  RETURN R3 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K6 [{"createFavoriteForAsset", "deleteFavoriteForAsset", "createFavoriteForBundle", "deleteFavoriteForBundle", "getFavoriteForAsset", "getFavoriteForBundle"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["createFavoriteForAsset"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["deleteFavoriteForAsset"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["createFavoriteForBundle"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["deleteFavoriteForBundle"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["getFavoriteForAsset"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["getFavoriteForBundle"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
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
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K13 ["Colors"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R4 K14 ["Thunks"]
  GETTABLEKS R7 R8 K15 ["CreateFavoriteForAsset"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R4 K14 ["Thunks"]
  GETTABLEKS R8 R9 K16 ["DeleteFavoriteForAsset"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R4 K14 ["Thunks"]
  GETTABLEKS R9 R10 K17 ["CreateFavoriteForBundle"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R4 K14 ["Thunks"]
  GETTABLEKS R10 R11 K18 ["DeleteFavoriteForBundle"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R4 K14 ["Thunks"]
  GETTABLEKS R11 R12 K19 ["GetFavoriteForAsset"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R4 K14 ["Thunks"]
  GETTABLEKS R12 R13 K20 ["GetFavoriteForBundle"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R4 K21 ["Selectors"]
  GETTABLEKS R13 R14 K22 ["GotFavoriteForDetailsItem"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R4 K21 ["Selectors"]
  GETTABLEKS R14 R15 K23 ["IsDetailsItemPartOfBundleAndOffsale"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R4 K21 ["Selectors"]
  GETTABLEKS R15 R16 K24 ["GetIsFavorite"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R4 K25 ["UtilityFunctions"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R4 K26 ["getSelectionImageObjectRounded"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R4 K27 ["Flags"]
  GETTABLEKS R18 R19 K28 ["FFlagEnableFavoriteButtonForUgc"]
  CALL R17 1 1
  GETIMPORT R19 K6 [require]
  GETIMPORT R23 K11 [script]
  GETTABLEKS R22 R23 K12 ["Parent"]
  GETTABLEKS R21 R22 K29 ["Common"]
  GETTABLEKS R20 R21 K30 ["ControllerShortcutKeycodes"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K31 ["Favorite"]
  GETTABLEKS R19 R2 K32 ["PureComponent"]
  LOADK R21 K33 ["FavoritesButton"]
  NAMECALL R19 R19 K34 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K35 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_3]
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K38 ["willUpdate"]
  DUPCLOSURE R20 K39 [PROTO_4]
  CAPTURE VAL R17
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K40 ["activateButton"]
  DUPCLOSURE R20 K41 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K42 ["willUnmount"]
  DUPCLOSURE R20 K43 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R17
  SETTABLEKS R20 R19 K44 ["render"]
  GETTABLEKS R20 R3 K45 ["UNSTABLE_connect2"]
  DUPCLOSURE R21 K46 [PROTO_8]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R13
  DUPCLOSURE R22 K47 [PROTO_15]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CALL R20 2 1
  MOVE R21 R19
  CALL R20 1 -1
  RETURN R20 -1
