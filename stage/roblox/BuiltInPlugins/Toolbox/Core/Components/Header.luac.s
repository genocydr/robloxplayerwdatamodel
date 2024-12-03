PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["IXP"]
  LOADK R5 K4 ["MarketplaceModelsAsPackages"]
  LOADK R6 K5 ["MarketplaceModelsAsPackagesEnabled"]
  CALL R3 3 1
  JUMP [+1]
  LOADNIL R3
  LOADNIL R4
  JUMPIFNOT R3 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["unlocalizedCategories"]
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K7 ["name"]
  JUMP [+8]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K8 ["categories"]
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K7 ["name"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K9 ["categoryName"]
  JUMPIFEQ R5 R4 [+53]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["onCategorySelected"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K9 ["categoryName"]
  MOVE R7 R4
  CALL R5 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K11 ["Settings"]
  LOADK R7 K12 ["Plugin"]
  NAMECALL R5 R5 K13 ["get"]
  CALL R5 2 1
  SETUPVAL R5 4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K14 ["selectCategory"]
  MOVE R6 R2
  GETUPVAL R7 4
  MOVE R8 R4
  CALL R5 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K15 ["searchTerm"]
  JUMPIFNOT R5 [+17]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K15 ["searchTerm"]
  JUMPIFEQKS R5 K16 [""] [+11]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["onSearchRequested"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K15 ["searchTerm"]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["groupIndex"]
  JUMPIFEQ R1 R0 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["selectGroup"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mostRecentSearchRequestTime"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["checkRecentAssetInsertion"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Settings"]
  LOADK R5 K4 ["Plugin"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K7 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["string"] [+18]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["shouldDebugWarnings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETIMPORT R4 K11 [warn]
  LOADK R5 K12 ["Toolbox onSearchRequested searchTerm = %s is not a string"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  NAMECALL R5 R5 K15 ["format"]
  CALL R5 2 -1
  CALL R4 -1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K16 ["creatorFilter"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K17 ["Id"]
  JUMPIF R5 [+1]
  LOADNIL R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["getCategory"]
  MOVE R7 R1
  JUMPIF R7 [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K19 ["categoryName"]
  CALL R6 1 1
  GETUPVAL R7 0
  LOADN R8 0
  SETTABLEKS R8 R7 K20 ["keyCount"]
  GETUPVAL R7 0
  LOADN R8 0
  SETTABLEKS R8 R7 K21 ["deleteCount"]
  GETUPVAL R7 0
  GETIMPORT R8 K23 [tick]
  CALL R8 0 1
  SETTABLEKS R8 R7 K24 ["mostRecentSearchRequestTime"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K24 ["mostRecentSearchRequestTime"]
  GETUPVAL R8 3
  CALL R8 0 1
  LOADK R10 K25 ["StudioSearchWithoutInsertionTimeSeconds"]
  NAMECALL R8 R8 K26 ["GetFVariable"]
  CALL R8 2 1
  GETIMPORT R9 K28 [delay]
  MOVE R10 R8
  NEWCLOSURE R11 P0
  CAPTURE VAL R7
  CAPTURE UPVAL U0
  CALL R9 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K19 ["categoryName"]
  JUMPIFNOT R1 [+2]
  MOVE R10 R1
  JUMP [+5]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K19 ["categoryName"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K29 ["categoryIsFont"]
  MOVE R12 R9
  CALL R11 1 1
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K29 ["categoryIsFont"]
  MOVE R12 R10
  CALL R11 1 1
  JUMPIFNOT R11 [+8]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["props"]
  GETTABLEKS R12 R13 K30 ["updateSearchTerm"]
  MOVE R13 R0
  CALL R12 1 0
  RETURN R0 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["props"]
  GETTABLEKS R12 R13 K31 ["requestSearch"]
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R0
  MOVE R16 R1
  CALL R12 4 0
  GETUPVAL R12 5
  LOADK R14 K32 ["SearchRequested"]
  DUPTABLE R15 K34 [{"searchTerm"}]
  SETTABLEKS R0 R15 K33 ["searchTerm"]
  NAMECALL R12 R12 K35 ["fire"]
  CALL R12 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onSearchOptionsToggled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onSearchOptionsToggled"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["searchTerm"]
  FASTCALL1 STRING_LEN R3 [+2]
  GETIMPORT R2 K2 [string.len]
  CALL R2 1 1
  JUMPIFNOTLT R2 R1 [+8]
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K5 ["keyCount"]
  ADDK R2 R2 K6 [1]
  SETTABLEKS R2 R1 K5 ["keyCount"]
  JUMP [+22]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["searchTerm"]
  FASTCALL1 STRING_LEN R3 [+2]
  GETIMPORT R2 K2 [string.len]
  CALL R2 1 1
  JUMPIFNOTLT R1 R2 [+7]
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K7 ["deleteCount"]
  ADDK R2 R2 K6 [1]
  SETTABLEKS R2 R1 K7 ["deleteCount"]
  GETUPVAL R1 0
  DUPTABLE R3 K8 [{"searchTerm"}]
  SETTABLEKS R0 R3 K4 ["searchTerm"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Settings"]
  LOADK R3 K2 ["Plugin"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K4 ["layoutMode"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Grid"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["ListView"]
  JUMP [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["Grid"]
  GETTABLEKS R3 R0 K7 ["setLayoutMode"]
  MOVE R4 R2
  CALL R3 1 0
  MOVE R5 R2
  NAMECALL R3 R1 K7 ["setLayoutMode"]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["getCategoryByName"]
  GETTABLEKS R4 R0 K9 ["categoryName"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"assetType", "searchId"}]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K10 ["assetType"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["assetType"]
  GETTABLEKS R5 R0 K11 ["searchId"]
  SETTABLEKS R5 R4 K11 ["searchId"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["MarketplaceListViewToggleClicked"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"searchTerm"}]
  LOADK R2 K2 [""]
  SETTABLEKS R2 R1 K0 ["searchTerm"]
  SETTABLEKS R1 R0 K3 ["state"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["keyCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["deleteCount"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["unlocalizedCategories"]
  LOADNIL R1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R1
  SETTABLEKS R2 R0 K7 ["onCategorySelected"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onGroupSelected"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K9 ["onSearchRequested"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onSearchOptionsToggled"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K11 ["onSearchTextChanged"]
  GETUPVAL R3 8
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R0 K12 ["toggleLayoutMode"]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K0 ["categories"]
  SETTABLEKS R3 R0 K1 ["unlocalizedCategories"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+7]
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K3 ["IXP"]
  LOADK R6 K4 ["MarketplaceModelsAsPackages"]
  LOADK R7 K5 ["MarketplaceModelsAsPackagesEnabled"]
  CALL R4 3 1
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R1 K6 ["categoryName"]
  LOADNIL R6
  LOADNIL R7
  JUMPIFNOT R4 [+42]
  GETUPVAL R8 2
  GETTABLEKS R9 R1 K7 ["categories"]
  CALL R8 1 1
  GETIMPORT R9 K9 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETUPVAL R15 3
  GETTABLEKS R16 R13 K10 ["category"]
  GETTABLE R14 R15 R16
  JUMPIFNOT R14 [+5]
  GETIMPORT R14 K13 [table.remove]
  MOVE R15 R8
  MOVE R16 R12
  CALL R14 2 0
  FORGLOOP R9 2 [-11]
  GETUPVAL R9 4
  MOVE R10 R3
  MOVE R11 R8
  CALL R9 2 1
  MOVE R6 R9
  LOADN R7 1
  GETIMPORT R9 K15 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEKS R14 R13 K16 ["name"]
  JUMPIFNOTEQ R14 R5 [+2]
  MOVE R7 R12
  FORGLOOP R9 2 [inext] [-6]
  SETTABLEKS R8 R0 K17 ["unlocalizedCategories"]
  JUMP [+21]
  GETUPVAL R8 4
  MOVE R9 R3
  GETTABLEKS R10 R1 K7 ["categories"]
  CALL R8 2 1
  MOVE R6 R8
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K18 ["getCategoryIndex"]
  MOVE R9 R5
  GETTABLEKS R10 R1 K19 ["roles"]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R1 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R11
  CALL R8 3 1
  MOVE R7 R8
  GETTABLEKS R8 R0 K20 ["onCategorySelected"]
  GETTABLEKS R9 R1 K21 ["searchTerm"]
  GETTABLEKS R10 R0 K22 ["onSearchRequested"]
  GETTABLEKS R11 R1 K23 ["groups"]
  GETTABLEKS R12 R1 K24 ["groupIndex"]
  GETTABLEKS R13 R0 K25 ["onGroupSelected"]
  GETUPVAL R15 7
  GETTABLEKS R16 R1 K3 ["IXP"]
  CALL R15 1 1
  JUMPIFNOT R15 [+34]
  LOADB R14 0
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K26 ["getTabForCategoryName"]
  GETTABLEKS R16 R1 K6 ["categoryName"]
  CALL R15 1 1
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K27 ["INVENTORY"]
  JUMPIFNOTEQ R15 R16 [+24]
  LOADB R14 0
  GETTABLEKS R15 R1 K6 ["categoryName"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K28 ["MY_AUDIO"]
  GETTABLEKS R16 R17 K16 ["name"]
  JUMPIFEQ R15 R16 [+14]
  GETTABLEKS R15 R1 K6 ["categoryName"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K29 ["MY_FONTS"]
  GETTABLEKS R16 R17 K16 ["name"]
  JUMPIFNOTEQ R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMP [+1]
  LOADNIL R14
  GETTABLEKS R15 R1 K30 ["searchIsFiltered"]
  LOADNIL R16
  LOADNIL R17
  GETUPVAL R18 7
  GETTABLEKS R19 R1 K3 ["IXP"]
  CALL R18 1 1
  JUMPIFNOT R18 [+24]
  JUMPIFNOT R14 [+2]
  LOADN R18 5
  JUMP [+1]
  LOADN R18 0
  JUMPIFNOT R14 [+5]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K31 ["HEADER_DROPDOWN_MIN_WIDTH"]
  ADD R16 R19 R18
  JUMP [+3]
  GETUPVAL R19 8
  GETTABLEKS R16 R19 K32 ["HEADER_DROPDOWN_MAX_WIDTH"]
  JUMPIFNOT R14 [+8]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K33 ["HEADER_OPTIONSBUTTON_WIDTH"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K34 ["HEADER_INNER_PADDING"]
  ADD R17 R19 R20
  JUMP [+6]
  LOADN R17 0
  JUMP [+4]
  GETUPVAL R18 8
  GETTABLEKS R16 R18 K32 ["HEADER_DROPDOWN_MAX_WIDTH"]
  LOADN R17 0
  GETTABLEKS R18 R0 K35 ["onSearchOptionsToggled"]
  GETTABLEKS R20 R1 K37 ["maxWidth"]
  ORK R19 R20 K36 [0]
  LOADN R21 100
  LOADN R27 2
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K38 ["HEADER_OUTER_PADDING"]
  MUL R26 R27 R28
  SUB R25 R19 R26
  SUB R24 R25 R16
  SUB R23 R24 R17
  GETUPVAL R25 8
  GETTABLEKS R24 R25 K34 ["HEADER_INNER_PADDING"]
  SUB R22 R23 R24
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K41 [math.max]
  CALL R20 2 1
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K42 ["categoryIsGroupAsset"]
  MOVE R22 R5
  CALL R21 1 1
  GETTABLEKS R22 R2 K43 ["header"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K26 ["getTabForCategoryName"]
  MOVE R25 R5
  CALL R24 1 1
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K44 ["CREATIONS"]
  JUMPIFEQ R24 R25 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K26 ["getTabForCategoryName"]
  MOVE R26 R5
  CALL R25 1 1
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K27 ["INVENTORY"]
  JUMPIFEQ R25 R26 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  MOVE R25 R23
  JUMPIFNOT R25 [+1]
  NOT R25 R21
  NOT R26 R21
  JUMPIFNOT R26 [+1]
  NOT R26 R23
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K26 ["getTabForCategoryName"]
  MOVE R29 R5
  CALL R28 1 1
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K45 ["RECENT"]
  JUMPIFEQ R28 R29 [+2]
  LOADB R27 0 +1
  LOADB R27 1
  JUMPIFNOT R27 [+2]
  LOADB R26 0
  LOADB R25 1
  DUPTABLE R28 K54 [{"LayoutOrder", "OnSearchRequested", "OnTextChanged", "SearchTerm", "Width", "OnSearchOptionsToggled", "SearchIsFiltered", "ShowRecentSearchesInAutoComplete"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K46 ["LayoutOrder"]
  SETTABLEKS R10 R28 K47 ["OnSearchRequested"]
  GETTABLEKS R29 R0 K55 ["onSearchTextChanged"]
  SETTABLEKS R29 R28 K48 ["OnTextChanged"]
  SETTABLEKS R9 R28 K49 ["SearchTerm"]
  SETTABLEKS R20 R28 K50 ["Width"]
  GETTABLEKS R29 R0 K35 ["onSearchOptionsToggled"]
  SETTABLEKS R29 R28 K51 ["OnSearchOptionsToggled"]
  SETTABLEKS R15 R28 K52 ["SearchIsFiltered"]
  GETUPVAL R30 9
  CALL R30 0 1
  JUMPIFNOT R30 [+16]
  LOADB R29 1
  GETTABLEKS R31 R0 K56 ["state"]
  GETTABLEKS R30 R31 K21 ["searchTerm"]
  JUMPIFEQKS R30 K57 [""] [+11]
  GETTABLEKS R31 R0 K56 ["state"]
  GETTABLEKS R30 R31 K21 ["searchTerm"]
  JUMPIFEQKNIL R30 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K53 ["ShowRecentSearchesInAutoComplete"]
  GETUPVAL R30 10
  GETTABLEKS R29 R30 K58 ["createElement"]
  GETUPVAL R30 11
  MOVE R31 R28
  CALL R29 2 1
  GETUPVAL R31 10
  GETTABLEKS R30 R31 K58 ["createElement"]
  LOADK R31 K59 ["ImageButton"]
  DUPTABLE R32 K66 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel", "ZIndex", "AutoButtonColor"}]
  GETTABLEKS R33 R1 K60 ["Position"]
  SETTABLEKS R33 R32 K60 ["Position"]
  GETIMPORT R33 K69 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  GETUPVAL R38 8
  GETTABLEKS R37 R38 K70 ["HEADER_HEIGHT"]
  CALL R33 4 1
  SETTABLEKS R33 R32 K61 ["Size"]
  GETTABLEKS R33 R22 K71 ["backgroundColor"]
  SETTABLEKS R33 R32 K62 ["BackgroundColor3"]
  LOADN R33 0
  SETTABLEKS R33 R32 K63 ["BorderSizePixel"]
  LOADN R33 2
  SETTABLEKS R33 R32 K64 ["ZIndex"]
  LOADB R33 0
  SETTABLEKS R33 R32 K65 ["AutoButtonColor"]
  DUPTABLE R33 K78 [{"UIPadding", "UIListLayout", "CategoryMenu", "SearchBar", "ToggleListViewButton", "GroupMenu"}]
  GETUPVAL R35 10
  GETTABLEKS R34 R35 K58 ["createElement"]
  LOADK R35 K72 ["UIPadding"]
  DUPTABLE R36 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K38 ["HEADER_OUTER_PADDING"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K79 ["PaddingBottom"]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K38 ["HEADER_OUTER_PADDING"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K80 ["PaddingLeft"]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K38 ["HEADER_OUTER_PADDING"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K81 ["PaddingRight"]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K38 ["HEADER_OUTER_PADDING"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K82 ["PaddingTop"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K72 ["UIPadding"]
  GETUPVAL R35 10
  GETTABLEKS R34 R35 K58 ["createElement"]
  LOADK R35 K73 ["UIListLayout"]
  DUPTABLE R36 K89 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R37 K92 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K86 ["FillDirection"]
  GETIMPORT R37 K93 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K87 ["SortOrder"]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K34 ["HEADER_INNER_PADDING"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K88 ["Padding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K73 ["UIListLayout"]
  GETUPVAL R35 10
  GETTABLEKS R34 R35 K58 ["createElement"]
  GETUPVAL R35 12
  DUPTABLE R36 K100 [{"Disabled", "Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
  GETTABLEKS R37 R1 K101 ["hasTutorialLimits"]
  SETTABLEKS R37 R36 K94 ["Disabled"]
  GETIMPORT R37 K69 [UDim2.new]
  LOADN R38 0
  LOADN R39 0
  LOADN R40 0
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K60 ["Position"]
  JUMPIFNOT R25 [+8]
  GETIMPORT R37 K69 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 1
  LOADN R41 0
  CALL R37 4 1
  JUMPIF R37 [+7]
  GETIMPORT R37 K69 [UDim2.new]
  LOADN R38 0
  MOVE R39 R16
  LOADN R40 1
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K61 ["Size"]
  LOADN R37 0
  SETTABLEKS R37 R36 K46 ["LayoutOrder"]
  LOADN R37 8
  SETTABLEKS R37 R36 K95 ["visibleDropDownCount"]
  SETTABLEKS R7 R36 K96 ["selectedDropDownIndex"]
  SETTABLEKS R6 R36 K97 ["items"]
  JUMPIF R23 [+2]
  LOADK R37 K10 ["category"]
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K98 ["menuKey"]
  SETTABLEKS R8 R36 K99 ["onItemClicked"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K74 ["CategoryMenu"]
  AND R34 R26 R29
  SETTABLEKS R34 R33 K75 ["SearchBar"]
  GETUPVAL R35 13
  CALL R35 0 1
  JUMPIFNOT R35 [+78]
  JUMPIFNOT R14 [+77]
  GETUPVAL R35 10
  GETTABLEKS R34 R35 K58 ["createElement"]
  GETUPVAL R35 14
  DUPTABLE R36 K109 [{"BackgroundStyle", "Cursor", "IconColor", "IconSize", "LayoutOrder", "LeftIcon", "OnClick", "Padding", "Size", "TooltipText"}]
  LOADK R37 K110 ["None"]
  SETTABLEKS R37 R36 K102 ["BackgroundStyle"]
  LOADK R37 K111 ["PointingHand"]
  SETTABLEKS R37 R36 K103 ["Cursor"]
  GETTABLEKS R37 R22 K112 ["iconColor"]
  SETTABLEKS R37 R36 K104 ["IconColor"]
  GETUPVAL R38 8
  GETTABLEKS R37 R38 K33 ["HEADER_OPTIONSBUTTON_WIDTH"]
  SETTABLEKS R37 R36 K105 ["IconSize"]
  LOADN R37 2
  SETTABLEKS R37 R36 K46 ["LayoutOrder"]
  GETTABLEKS R38 R1 K113 ["layoutMode"]
  GETUPVAL R40 15
  GETTABLEKS R39 R40 K114 ["ListView"]
  JUMPIFNOTEQ R38 R39 [+5]
  GETUPVAL R38 16
  GETTABLEKS R37 R38 K115 ["GALLERY_ICON"]
  JUMP [+3]
  GETUPVAL R38 16
  GETTABLEKS R37 R38 K116 ["LIST_ICON"]
  SETTABLEKS R37 R36 K106 ["LeftIcon"]
  GETTABLEKS R37 R0 K117 ["toggleLayoutMode"]
  SETTABLEKS R37 R36 K107 ["OnClick"]
  LOADN R37 2
  SETTABLEKS R37 R36 K88 ["Padding"]
  GETIMPORT R37 K119 [UDim2.fromOffset]
  MOVE R38 R17
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K120 ["HEADER_OPTIONSBUTTON_HEIGHT"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K61 ["Size"]
  GETTABLEKS R38 R1 K113 ["layoutMode"]
  GETUPVAL R40 15
  GETTABLEKS R39 R40 K114 ["ListView"]
  JUMPIFNOTEQ R38 R39 [+7]
  LOADK R39 K121 ["General"]
  LOADK R40 K122 ["GridView"]
  NAMECALL R37 R3 K123 ["getText"]
  CALL R37 3 1
  JUMP [+5]
  LOADK R39 K121 ["General"]
  LOADK R40 K114 ["ListView"]
  NAMECALL R37 R3 K123 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K108 ["TooltipText"]
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K76 ["ToggleListViewButton"]
  MOVE R34 R21
  JUMPIFNOT R34 [+39]
  GETUPVAL R35 10
  GETTABLEKS R34 R35 K58 ["createElement"]
  GETUPVAL R35 12
  DUPTABLE R36 K124 [{"Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
  GETIMPORT R37 K69 [UDim2.new]
  LOADN R38 0
  LOADN R39 0
  LOADN R40 0
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K60 ["Position"]
  GETIMPORT R37 K69 [UDim2.new]
  LOADN R38 0
  MOVE R39 R20
  LOADN R40 1
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K61 ["Size"]
  LOADN R37 1
  SETTABLEKS R37 R36 K46 ["LayoutOrder"]
  LOADN R37 8
  SETTABLEKS R37 R36 K95 ["visibleDropDownCount"]
  SETTABLEKS R12 R36 K96 ["selectedDropDownIndex"]
  SETTABLEKS R11 R36 K97 ["items"]
  LOADK R37 K125 ["id"]
  SETTABLEKS R37 R36 K98 ["menuKey"]
  SETTABLEKS R13 R36 K99 ["onItemClicked"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K77 ["GroupMenu"]
  CALL R30 3 -1
  RETURN R30 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["mostRecentSearchRequestTime"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["mostRecentAssetInsertTime"]
  JUMPIFNOTLT R2 R1 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["onTermSearchedWithoutInsertion"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["getCategory"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K5 ["categoryName"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["searchTerm"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+4]
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+10]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["BindableEvent"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["tabRefresh"]
  SETTABLEKS R2 R1 K6 ["Name"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  RETURN R1 1

PROTO_13:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+4]
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K2 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["categoryName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Settings"]
  LOADK R3 K3 ["Plugin"]
  NAMECALL R1 R1 K4 ["get"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["selectCategory"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["Network"]
  GETTABLEKS R3 R4 K7 ["networkInterface"]
  MOVE R4 R1
  MOVE R5 R0
  CALL R2 3 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  JUMPIF R1 [+32]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["pluginGui"]
  JUMPIF R2 [+2]
  LOADNIL R3
  JUMP [+4]
  LOADK R5 K3 ["tabRefresh"]
  NAMECALL R3 R2 K4 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+10]
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K8 ["BindableEvent"]
  CALL R4 1 1
  MOVE R3 R4
  LOADK R4 K3 ["tabRefresh"]
  SETTABLEKS R4 R3 K9 ["Name"]
  SETTABLEKS R2 R3 K10 ["Parent"]
  MOVE R1 R3
  GETTABLEKS R2 R1 K11 ["Event"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K12 ["connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K0 ["tabRefreshConnection"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["categories"]
  SETTABLEKS R1 R0 K2 ["unlocalizedCategories"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["pluginGui"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+4]
  LOADK R4 K4 ["tabRefresh"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  GETIMPORT R3 K8 [Instance.new]
  LOADK R4 K9 ["BindableEvent"]
  CALL R3 1 1
  MOVE R2 R3
  LOADK R3 K4 ["tabRefresh"]
  SETTABLEKS R3 R2 K10 ["Name"]
  SETTABLEKS R1 R2 K11 ["Parent"]
  NAMECALL R1 R0 K12 ["addTabRefreshCallback"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  NAMECALL R1 R0 K0 ["removeTabRefreshCallback"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["pluginGui"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+4]
  LOADK R4 K3 ["tabRefresh"]
  NAMECALL R2 R1 K4 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K5 ["Destroy"]
  CALL R3 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["includeUnverifiedCreators"]
  RETURN R1 1

PROTO_20:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["assets"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K1 ["pageInfo"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  DUPTABLE R4 K14 [{"categories", "categoryName", "creatorFilter", "groups", "groupIndex", "layoutMode", "mostRecentAssetInsertTime", "roles", "searchId", "searchIsFiltered", "searchTerm", "hasTutorialLimits"}]
  GETTABLEKS R5 R3 K2 ["categories"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["categories"]
  GETTABLEKS R5 R3 K3 ["categoryName"]
  JUMPIF R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["DEFAULT"]
  GETTABLEKS R5 R6 K16 ["name"]
  SETTABLEKS R5 R4 K3 ["categoryName"]
  GETTABLEKS R5 R3 K17 ["creator"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["creatorFilter"]
  GETTABLEKS R5 R3 K5 ["groups"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["groups"]
  GETTABLEKS R6 R3 K6 ["groupIndex"]
  ORK R5 R6 K18 [0]
  SETTABLEKS R5 R4 K6 ["groupIndex"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K7 ["layoutMode"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["layoutMode"]
  GETTABLEKS R5 R2 K8 ["mostRecentAssetInsertTime"]
  SETTABLEKS R5 R4 K8 ["mostRecentAssetInsertTime"]
  GETTABLEKS R5 R0 K9 ["roles"]
  SETTABLEKS R5 R4 K9 ["roles"]
  GETTABLEKS R5 R3 K10 ["searchId"]
  SETTABLEKS R5 R4 K10 ["searchId"]
  GETGLOBAL R5 K19 ["isSearchFiltered"]
  MOVE R6 R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["searchIsFiltered"]
  GETTABLEKS R6 R3 K12 ["searchTerm"]
  ORK R5 R6 K20 [""]
  SETTABLEKS R5 R4 K12 ["searchTerm"]
  GETTABLEKS R7 R0 K21 ["tutorialLimits"]
  GETTABLEKS R6 R7 K22 ["assetIds"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["hasTutorialLimits"]
  RETURN R4 1

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  LOADB R10 0
  CALL R5 5 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  DUPTABLE R1 K5 [{"selectCategory", "selectGroup", "requestSearch", "setLayoutMode", "updateSearchTerm"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectCategory"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["selectGroup"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["requestSearch"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["setLayoutMode"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["updateSearchTerm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Analytics"]
  GETTABLEKS R6 R7 K14 ["Analytics"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Core"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K16 ["DebugFlags"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Core"]
  GETTABLEKS R10 R11 K13 ["Util"]
  GETTABLEKS R9 R10 K17 ["Images"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Core"]
  GETTABLEKS R11 R12 K13 ["Util"]
  GETTABLEKS R10 R11 K18 ["PageInfoHelper"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K12 ["Core"]
  GETTABLEKS R12 R13 K19 ["Localization"]
  GETTABLEKS R11 R12 K20 ["getLocalizedCategories"]
  CALL R10 1 1
  LOADNIL R11
  JUMPIFNOT R0 [+10]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K12 ["Core"]
  GETTABLEKS R14 R15 K13 ["Util"]
  GETTABLEKS R13 R14 K21 ["getIsIXPVariableEnabled"]
  CALL R12 1 1
  MOVE R11 R12
  GETIMPORT R12 K9 [require]
  GETTABLEKS R16 R1 K12 ["Core"]
  GETTABLEKS R15 R16 K13 ["Util"]
  GETTABLEKS R14 R15 K22 ["SharedFlags"]
  GETTABLEKS R13 R14 K23 ["getFFlagToolboxContentManagementCombineTabs"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K12 ["Core"]
  GETTABLEKS R15 R16 K24 ["Types"]
  GETTABLEKS R14 R15 K25 ["Category"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R1 K12 ["Core"]
  GETTABLEKS R16 R17 K24 ["Types"]
  GETTABLEKS R15 R16 K26 ["LayoutMode"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K12 ["Core"]
  GETTABLEKS R17 R18 K24 ["Types"]
  GETTABLEKS R16 R17 K27 ["AnalyticsTypes"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R2 K28 ["Framework"]
  CALL R16 1 1
  GETTABLEKS R18 R16 K13 ["Util"]
  GETTABLEKS R17 R18 K29 ["deepCopy"]
  GETTABLEKS R19 R16 K30 ["UI"]
  GETTABLEKS R18 R19 K31 ["IconButton"]
  GETTABLEKS R20 R16 K30 ["UI"]
  GETTABLEKS R19 R20 K32 ["Tooltip"]
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R1 K12 ["Core"]
  GETTABLEKS R22 R23 K33 ["ContextServices"]
  GETTABLEKS R21 R22 K34 ["IXPContext"]
  CALL R20 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R2 K28 ["Framework"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K33 ["ContextServices"]
  GETTABLEKS R22 R21 K35 ["withContext"]
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R1 K12 ["Core"]
  GETTABLEKS R25 R26 K33 ["ContextServices"]
  GETTABLEKS R24 R25 K36 ["Settings"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R1 K12 ["Core"]
  GETTABLEKS R26 R27 K33 ["ContextServices"]
  GETTABLEKS R25 R26 K37 ["NetworkContext"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R1 K12 ["Core"]
  GETTABLEKS R27 R28 K38 ["Components"]
  GETTABLEKS R26 R27 K39 ["DropdownMenu"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R1 K12 ["Core"]
  GETTABLEKS R28 R29 K38 ["Components"]
  GETTABLEKS R27 R28 K40 ["SearchBarWithAutocomplete"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R30 R1 K12 ["Core"]
  GETTABLEKS R29 R30 K41 ["Actions"]
  GETTABLEKS R28 R29 K42 ["SetLayoutMode"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETTABLEKS R31 R1 K12 ["Core"]
  GETTABLEKS R30 R31 K41 ["Actions"]
  GETTABLEKS R29 R30 K43 ["UpdateSearchTerm"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETTABLEKS R33 R1 K12 ["Core"]
  GETTABLEKS R32 R33 K44 ["Networking"]
  GETTABLEKS R31 R32 K45 ["Requests"]
  GETTABLEKS R30 R31 K46 ["RequestSearchRequest"]
  CALL R29 1 1
  GETIMPORT R30 K9 [require]
  GETTABLEKS R34 R1 K12 ["Core"]
  GETTABLEKS R33 R34 K44 ["Networking"]
  GETTABLEKS R32 R33 K45 ["Requests"]
  GETTABLEKS R31 R32 K47 ["SelectCategoryRequest"]
  CALL R30 1 1
  GETIMPORT R31 K9 [require]
  GETTABLEKS R35 R1 K12 ["Core"]
  GETTABLEKS R34 R35 K44 ["Networking"]
  GETTABLEKS R33 R34 K45 ["Requests"]
  GETTABLEKS R32 R33 K48 ["SelectGroupRequest"]
  CALL R31 1 1
  GETIMPORT R32 K9 [require]
  GETTABLEKS R36 R1 K12 ["Core"]
  GETTABLEKS R35 R36 K13 ["Util"]
  GETTABLEKS R34 R35 K22 ["SharedFlags"]
  GETTABLEKS R33 R34 K49 ["getFFlagToolboxAddRecentSearchesToAutoComplete"]
  CALL R32 1 1
  GETIMPORT R33 K9 [require]
  GETTABLEKS R37 R1 K12 ["Core"]
  GETTABLEKS R36 R37 K13 ["Util"]
  GETTABLEKS R35 R36 K22 ["SharedFlags"]
  GETTABLEKS R34 R35 K50 ["getFFlagToolboxEnableAssetRows"]
  CALL R33 1 1
  GETIMPORT R34 K9 [require]
  GETTABLEKS R38 R1 K12 ["Core"]
  GETTABLEKS R37 R38 K13 ["Util"]
  GETTABLEKS R36 R37 K22 ["SharedFlags"]
  GETTABLEKS R35 R36 K51 ["getIsIXPEnabledForListView"]
  CALL R34 1 1
  GETIMPORT R35 K9 [require]
  GETTABLEKS R38 R1 K12 ["Core"]
  GETTABLEKS R37 R38 K13 ["Util"]
  GETTABLEKS R36 R37 K52 ["ToolboxCommunication"]
  CALL R35 1 1
  GETTABLEKS R36 R3 K53 ["PureComponent"]
  LOADK R38 K54 ["Header"]
  NAMECALL R36 R36 K55 ["extend"]
  CALL R36 2 1
  GETIMPORT R37 K57 [settings]
  LOADNIL R38
  JUMPIFNOT R0 [+21]
  NEWTABLE R39 4 0
  GETTABLEKS R41 R13 K58 ["MY_PACKAGES"]
  GETTABLEKS R40 R41 K59 ["name"]
  LOADB R41 1
  SETTABLE R41 R39 R40
  GETTABLEKS R41 R13 K60 ["GROUP_PACKAGES"]
  GETTABLEKS R40 R41 K59 ["name"]
  LOADB R41 1
  SETTABLE R41 R39 R40
  GETTABLEKS R41 R13 K61 ["CREATIONS_GROUP_PACKAGES"]
  GETTABLEKS R40 R41 K59 ["name"]
  LOADB R41 1
  SETTABLE R41 R39 R40
  MOVE R38 R39
  NEWCLOSURE R39 P0
  CAPTURE VAL R0
  CAPTURE REF R11
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R37
  CAPTURE VAL R13
  CAPTURE VAL R35
  CAPTURE VAL R33
  CAPTURE VAL R14
  SETTABLEKS R39 R36 K62 ["init"]
  DUPCLOSURE R39 K63 [PROTO_8]
  CAPTURE VAL R0
  SETTABLEKS R39 R36 K64 ["willUpdate"]
  NEWCLOSURE R39 P2
  CAPTURE VAL R0
  CAPTURE REF R11
  CAPTURE VAL R17
  CAPTURE REF R38
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R34
  CAPTURE VAL R6
  CAPTURE VAL R32
  CAPTURE VAL R3
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R33
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R8
  SETTABLEKS R39 R36 K65 ["render"]
  DUPCLOSURE R39 K66 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R39 R36 K67 ["checkRecentAssetInsertion"]
  DUPCLOSURE R39 K68 [PROTO_11]
  DUPCLOSURE R40 K69 [PROTO_12]
  DUPCLOSURE R41 K70 [PROTO_13]
  DUPCLOSURE R42 K71 [PROTO_15]
  SETTABLEKS R42 R36 K72 ["addTabRefreshCallback"]
  DUPCLOSURE R42 K73 [PROTO_16]
  SETTABLEKS R42 R36 K74 ["removeTabRefreshCallback"]
  DUPCLOSURE R42 K75 [PROTO_17]
  CAPTURE VAL R0
  SETTABLEKS R42 R36 K76 ["didMount"]
  DUPCLOSURE R42 K77 [PROTO_18]
  SETTABLEKS R42 R36 K78 ["willUnmount"]
  MOVE R42 R22
  DUPTABLE R43 K82 [{"IXP", "Settings", "Stylizer", "Localization", "Network"}]
  JUMPIF R0 [+6]
  MOVE R45 R33
  CALL R45 0 1
  JUMPIF R45 [+3]
  MOVE R45 R12
  CALL R45 0 1
  JUMPIFNOT R45 [+2]
  MOVE R44 R20
  JUMP [+1]
  LOADNIL R44
  SETTABLEKS R44 R43 K79 ["IXP"]
  SETTABLEKS R23 R43 K36 ["Settings"]
  GETTABLEKS R44 R21 K80 ["Stylizer"]
  SETTABLEKS R44 R43 K80 ["Stylizer"]
  GETTABLEKS R44 R21 K19 ["Localization"]
  SETTABLEKS R44 R43 K19 ["Localization"]
  SETTABLEKS R24 R43 K81 ["Network"]
  CALL R42 1 1
  MOVE R43 R36
  CALL R42 1 1
  MOVE R36 R42
  DUPCLOSURE R42 K83 [PROTO_19]
  SETGLOBAL R42 K84 ["isSearchFiltered"]
  DUPCLOSURE R42 K85 [PROTO_20]
  CAPTURE VAL R13
  CAPTURE VAL R33
  DUPCLOSURE R43 K86 [PROTO_26]
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R33
  CAPTURE VAL R27
  CAPTURE VAL R28
  GETTABLEKS R44 R4 K87 ["connect"]
  MOVE R45 R42
  MOVE R46 R43
  CALL R44 2 1
  MOVE R45 R36
  CALL R44 1 -1
  CLOSEUPVALS R11
  RETURN R44 -1