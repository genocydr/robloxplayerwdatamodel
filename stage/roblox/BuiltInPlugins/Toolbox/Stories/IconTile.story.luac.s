PROTO_0:
  GETIMPORT R2 K2 [Random.new]
  CALL R2 0 1
  LOADN R4 1
  LENGTH R5 R0
  NAMECALL R2 R2 K3 ["NextInteger"]
  CALL R2 3 1
  GETTABLE R1 R0 R2
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K1 [{"maxTileHeight"}]
  GETTABLEKS R3 R0 K0 ["maxTileHeight"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Y"]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K5 [math.max]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["maxTileHeight"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"maxTileHeight"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["maxTileHeight"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["setMaxTileHeight"]
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  LOADN R4 1
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R2 R5 K1 ["numTiles"]
  LOADN R3 1
  FORNPREP R2
  LOADK R6 K2 ["Tile%*"]
  MOVE R8 R4
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K10 [{"Title", "BackgroundColor", "Image", "LayoutOrder", "OnAbsoluteSizeChanged"}]
  LOADK R10 K11 ["Category %*"]
  MOVE R12 R4
  NAMECALL R10 R10 K3 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  SETTABLEKS R9 R8 K5 ["Title"]
  GETUPVAL R10 2
  GETTABLE R9 R10 R4
  SETTABLEKS R9 R8 K6 ["BackgroundColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["constructAssetThumbnailUrl"]
  GETUPVAL R11 4
  GETIMPORT R12 K15 [Random.new]
  CALL R12 0 1
  LOADN R14 1
  LENGTH R15 R11
  NAMECALL R12 R12 K16 ["NextInteger"]
  CALL R12 3 1
  GETTABLE R10 R11 R12
  GETUPVAL R11 5
  GETUPVAL R12 5
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Image"]
  SETTABLEKS R4 R8 K8 ["LayoutOrder"]
  GETTABLEKS R9 R0 K17 ["setMaxTileHeight"]
  SETTABLEKS R9 R8 K9 ["OnAbsoluteSizeChanged"]
  CALL R6 2 1
  SETTABLE R6 R1 R5
  FORNLOOP R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 6
  DUPTABLE R4 K22 [{"AutomaticSize", "CutOffs", "ItemHeight", "Size"}]
  GETIMPORT R5 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K18 ["AutomaticSize"]
  NEWTABLE R5 0 3
  DUPTABLE R6 K28 [{"ColumnCount", "MinWidth"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K26 ["ColumnCount"]
  LOADN R7 0
  SETTABLEKS R7 R6 K27 ["MinWidth"]
  DUPTABLE R7 K28 [{"ColumnCount", "MinWidth"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K26 ["ColumnCount"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K30 ["tileWidth"]
  MULK R8 R9 K29 [3]
  SETTABLEKS R8 R7 K27 ["MinWidth"]
  DUPTABLE R8 K28 [{"ColumnCount", "MinWidth"}]
  LOADN R9 3
  SETTABLEKS R9 R8 K26 ["ColumnCount"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K30 ["tileWidth"]
  MULK R9 R10 K31 [8]
  SETTABLEKS R9 R8 K27 ["MinWidth"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K19 ["CutOffs"]
  GETIMPORT R5 K33 [UDim.new]
  LOADN R6 0
  GETTABLEKS R8 R0 K34 ["state"]
  GETTABLEKS R7 R8 K35 ["maxTileHeight"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K20 ["ItemHeight"]
  GETIMPORT R5 K38 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["Size"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETIMPORT R1 K1 [print]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"IconTile"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K9 [{"BackgroundColor", "Image", "Key", "OnClick", "Size", "Title"}]
  GETIMPORT R7 K12 [Color3.fromRGB]
  LOADN R8 50
  LOADN R9 168
  LOADN R10 82
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["BackgroundColor"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["constructAssetThumbnailUrl"]
  GETUPVAL R9 4
  GETTABLEN R8 R9 1
  GETUPVAL R9 5
  GETUPVAL R10 5
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["Image"]
  LOADK R7 K14 ["Click"]
  SETTABLEKS R7 R6 K5 ["Key"]
  DUPCLOSURE R7 K15 [PROTO_5]
  SETTABLEKS R7 R6 K6 ["OnClick"]
  GETIMPORT R7 K18 [UDim2.new]
  LOADN R8 0
  LOADN R9 75
  LOADN R10 0
  LOADN R11 90
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Size"]
  LOADK R7 K19 ["Category"]
  SETTABLEKS R7 R6 K8 ["Title"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["IconTile"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"GridStory"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["GridStory"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R1 K1 [print]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"IconTile"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K10 [{"BackgroundColor", "Image", "Key", "OnClick", "Size", "AutomaticSize", "Title"}]
  GETIMPORT R7 K13 [Color3.fromRGB]
  LOADN R8 50
  LOADN R9 168
  LOADN R10 82
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["BackgroundColor"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K14 ["constructAssetThumbnailUrl"]
  GETUPVAL R9 4
  GETTABLEN R8 R9 1
  GETUPVAL R9 5
  GETUPVAL R10 5
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["Image"]
  LOADK R7 K15 ["Click"]
  SETTABLEKS R7 R6 K5 ["Key"]
  DUPCLOSURE R7 K16 [PROTO_8]
  SETTABLEKS R7 R6 K6 ["OnClick"]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  LOADN R8 120
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Size"]
  GETIMPORT R7 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K8 ["AutomaticSize"]
  LOADK R7 K23 ["OnlyTwentyCharacters"]
  SETTABLEKS R7 R6 K9 ["Title"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["IconTile"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["MockWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["Urls"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K9 ["Core"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["Categorization"]
  GETTABLEKS R7 R8 K16 ["IconTile"]
  CALL R6 1 1
  GETTABLEKS R7 R5 K17 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
  GETTABLEKS R9 R1 K18 ["UI"]
  GETTABLEKS R8 R9 K19 ["ResponsiveGrid"]
  NEWTABLE R9 0 8
  LOADK R10 K20 [5657301130]
  LOADK R11 K21 [13986559755]
  LOADK R12 K22 [7062372311]
  LOADK R13 K23 [494291269]
  LOADK R14 K24 [9346039031]
  LOADK R15 K25 [14318578453]
  LOADK R16 K26 [8530191225]
  LOADK R17 K27 [13902359897]
  SETLIST R9 R10 8 [1]
  NEWTABLE R10 0 12
  GETIMPORT R11 K30 [Color3.fromHex]
  LOADK R12 K31 ["#005D92"]
  CALL R11 1 1
  GETIMPORT R12 K30 [Color3.fromHex]
  LOADK R13 K32 ["#A2120B"]
  CALL R12 1 1
  GETIMPORT R13 K30 [Color3.fromHex]
  LOADK R14 K33 ["#008347"]
  CALL R13 1 1
  GETIMPORT R14 K30 [Color3.fromHex]
  LOADK R15 K34 ["#AD8007"]
  CALL R14 1 1
  GETIMPORT R15 K30 [Color3.fromHex]
  LOADK R16 K35 ["#B61CA2"]
  CALL R15 1 1
  GETIMPORT R16 K30 [Color3.fromHex]
  LOADK R17 K36 ["#008BDB"]
  CALL R16 1 1
  GETIMPORT R17 K30 [Color3.fromHex]
  LOADK R18 K37 ["#C2510F"]
  CALL R17 1 1
  GETIMPORT R18 K30 [Color3.fromHex]
  LOADK R19 K38 ["#6D34E3"]
  CALL R18 1 1
  GETIMPORT R19 K30 [Color3.fromHex]
  LOADK R20 K39 ["#7A0D08"]
  CALL R19 1 1
  GETIMPORT R20 K30 [Color3.fromHex]
  LOADK R21 K34 ["#AD8007"]
  CALL R20 1 1
  GETIMPORT R21 K30 [Color3.fromHex]
  LOADK R22 K40 ["#00456D"]
  CALL R21 1 1
  GETIMPORT R22 K30 [Color3.fromHex]
  LOADK R23 K41 ["#006939"]
  CALL R22 1 -1
  SETLIST R10 R11 -1 [1]
  DUPCLOSURE R11 K42 [PROTO_0]
  GETTABLEKS R12 R2 K43 ["PureComponent"]
  LOADK R14 K44 ["GridStory"]
  NAMECALL R12 R12 K45 ["extend"]
  CALL R12 2 1
  DUPTABLE R13 K48 [{"numTiles", "tileWidth"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K46 ["numTiles"]
  LOADN R14 120
  SETTABLEKS R14 R13 K47 ["tileWidth"]
  SETTABLEKS R13 R12 K49 ["defaultProps"]
  DUPCLOSURE R13 K50 [PROTO_3]
  SETTABLEKS R13 R12 K51 ["init"]
  DUPCLOSURE R13 K52 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K53 ["render"]
  DUPTABLE R13 K56 [{"summary", "stories"}]
  LOADK R14 K57 ["A generic tile with an icon and flat color background."]
  SETTABLEKS R14 R13 K54 ["summary"]
  NEWTABLE R14 0 3
  DUPTABLE R15 K60 [{"name", "summary", "story"}]
  LOADK R16 K61 ["Single"]
  SETTABLEKS R16 R15 K58 ["name"]
  LOADK R16 K62 ["Sends a key on click and has a pointer cursor."]
  SETTABLEKS R16 R15 K54 ["summary"]
  DUPCLOSURE R16 K63 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R16 R15 K59 ["story"]
  DUPTABLE R16 K60 [{"name", "summary", "story"}]
  LOADK R17 K64 ["Grid"]
  SETTABLEKS R17 R16 K58 ["name"]
  LOADK R17 K65 ["A grid of tiles to show off use in responsive layouts"]
  SETTABLEKS R17 R16 K54 ["summary"]
  DUPCLOSURE R17 K66 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K59 ["story"]
  DUPTABLE R17 K60 [{"name", "summary", "story"}]
  LOADK R18 K67 ["Text truncation"]
  SETTABLEKS R18 R17 K58 ["name"]
  LOADK R18 K68 ["The title text of an IconTile will truncate on smaller sized tiles"]
  SETTABLEKS R18 R17 K54 ["summary"]
  DUPCLOSURE R18 K69 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K59 ["story"]
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K55 ["stories"]
  RETURN R13 1