PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["AssetType"]
  GETTABLEKS R5 R3 K2 ["homeConfiguration"]
  LOADB R6 1
  GETTABLEKS R7 R1 K1 ["AssetType"]
  JUMPIFNOTEQ R4 R7 [+7]
  GETUPVAL R7 0
  MOVE R8 R5
  GETTABLEKS R9 R1 K2 ["homeConfiguration"]
  CALL R7 2 1
  NOT R6 R7
  RETURN R6 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["AssetType"]
  GETTABLEKS R3 R1 K2 ["CategoryName"]
  GETTABLEKS R5 R1 K3 ["homeConfiguration"]
  GETTABLEKS R6 R2 K4 ["Name"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R1 K5 ["SortName"]
  GETTABLEKS R6 R1 K6 ["Stylizer"]
  GETTABLEKS R7 R1 K7 ["TryOpenAssetConfig"]
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R8
  RETURN R8 1
  NEWTABLE R8 0 0
  NEWTABLE R9 0 0
  JUMPIFNOT R4 [+28]
  GETIMPORT R10 K9 [pairs]
  GETTABLEKS R11 R4 K10 ["sections"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETTABLEKS R15 R14 K11 ["name"]
  JUMPIFNOTEQKS R15 K12 ["categories"] [+10]
  GETTABLEKS R15 R14 K13 ["subcategory"]
  JUMPIFEQKNIL R15 [+6]
  GETTABLEKS R15 R14 K13 ["subcategory"]
  GETTABLEKS R9 R15 K14 ["children"]
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R8 R14 [+5]
  MOVE R16 R8
  MOVE R17 R14
  GETIMPORT R15 K17 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [-21]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K18 ["createElement"]
  LOADK R11 K19 ["Frame"]
  DUPTABLE R12 K24 [{"BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
  GETTABLEKS R13 R6 K25 ["backgroundColor"]
  SETTABLEKS R13 R12 K20 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K21 ["BorderSizePixel"]
  GETTABLEKS R13 R1 K22 ["Position"]
  SETTABLEKS R13 R12 K22 ["Position"]
  GETTABLEKS R13 R1 K23 ["Size"]
  SETTABLEKS R13 R12 K23 ["Size"]
  DUPTABLE R13 K27 [{"Navigation"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K33 [{"AssetType", "CategoryName", "Config", "MaxWidth", "SortName", "AssetSections", "SubcategoryDict", "TopKeywords", "TryOpenAssetConfig"}]
  SETTABLEKS R2 R16 K1 ["AssetType"]
  SETTABLEKS R3 R16 K2 ["CategoryName"]
  SETTABLEKS R4 R16 K28 ["Config"]
  GETTABLEKS R17 R1 K29 ["MaxWidth"]
  SETTABLEKS R17 R16 K29 ["MaxWidth"]
  SETTABLEKS R5 R16 K5 ["SortName"]
  SETTABLEKS R8 R16 K30 ["AssetSections"]
  SETTABLEKS R9 R16 K31 ["SubcategoryDict"]
  GETTABLEKS R17 R4 K34 ["topKeywords"]
  SETTABLEKS R17 R16 K32 ["TopKeywords"]
  SETTABLEKS R7 R16 K7 ["TryOpenAssetConfig"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["Navigation"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_2:
  GETIMPORT R1 K1 [ipairs]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R2 R4 K3 ["EnabledAssetTypes"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R8 R0 K2 ["props"]
  GETTABLEKS R7 R8 K4 ["homeConfiguration"]
  GETTABLEKS R8 R5 K5 ["Name"]
  GETTABLE R6 R7 R8
  JUMPIFNOTEQKNIL R6 [+18]
  GETTABLEKS R8 R0 K2 ["props"]
  GETTABLEKS R7 R8 K6 ["Network"]
  GETTABLEKS R6 R7 K7 ["networkInterface"]
  GETTABLEKS R8 R0 K2 ["props"]
  GETTABLEKS R7 R8 K8 ["getHomeConfigurationRequest"]
  MOVE R8 R6
  MOVE R9 R5
  GETTABLEKS R11 R0 K2 ["props"]
  GETTABLEKS R10 R11 K9 ["Locale"]
  CALL R7 3 0
  FORGLOOP R1 2 [inext] [-27]
  RETURN R0 0

PROTO_3:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K1 [{"homeConfiguration"}]
  GETTABLEKS R3 R0 K0 ["homeConfiguration"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["homeConfiguration"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"getHomeConfigurationRequest"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getHomeConfigurationRequest"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Networking"]
  GETTABLEKS R5 R6 K11 ["Requests"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K12 ["GetHomeConfigurationRequest"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K13 ["ContextServices"]
  GETTABLEKS R8 R7 K14 ["withContext"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K13 ["ContextServices"]
  GETTABLEKS R10 R11 K15 ["NetworkContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Core"]
  GETTABLEKS R12 R13 K16 ["Types"]
  GETTABLEKS R11 R12 K17 ["Category"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Core"]
  GETTABLEKS R13 R14 K16 ["Types"]
  GETTABLEKS R12 R13 K18 ["HomeTypes"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Core"]
  GETTABLEKS R14 R15 K16 ["Types"]
  GETTABLEKS R13 R14 K19 ["Sort"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K9 ["Core"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K21 ["Home"]
  GETTABLEKS R14 R15 K22 ["NavigationContainer"]
  CALL R13 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R1 K8 ["Framework"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K23 ["Util"]
  GETTABLEKS R15 R14 K24 ["deepEqual"]
  GETTABLEKS R16 R2 K25 ["Component"]
  LOADK R18 K26 ["HomeWrapper"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPTABLE R17 K30 [{"CategoryName", "SortName"}]
  GETTABLEKS R19 R10 K31 ["FREE_MODELS"]
  GETTABLEKS R18 R19 K32 ["name"]
  SETTABLEKS R18 R17 K28 ["CategoryName"]
  GETTABLEKS R18 R12 K33 ["getDefaultSortNameForCategory"]
  GETTABLEKS R20 R10 K31 ["FREE_MODELS"]
  GETTABLEKS R19 R20 K32 ["name"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["SortName"]
  SETTABLEKS R17 R16 K34 ["defaultProps"]
  DUPCLOSURE R17 K35 [PROTO_0]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K36 ["shouldUpdate"]
  DUPCLOSURE R17 K37 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K38 ["render"]
  DUPCLOSURE R17 K39 [PROTO_2]
  SETTABLEKS R17 R16 K40 ["didMount"]
  MOVE R17 R8
  DUPTABLE R18 K43 [{"Stylizer", "Network"}]
  GETTABLEKS R19 R7 K41 ["Stylizer"]
  SETTABLEKS R19 R18 K41 ["Stylizer"]
  SETTABLEKS R9 R18 K42 ["Network"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K44 [PROTO_3]
  DUPCLOSURE R18 K45 [PROTO_5]
  CAPTURE VAL R6
  GETTABLEKS R19 R3 K46 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1