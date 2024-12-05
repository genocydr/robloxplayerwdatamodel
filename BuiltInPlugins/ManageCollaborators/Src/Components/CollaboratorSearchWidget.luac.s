PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["SearchData"]
  GETTABLEKS R3 R2 K2 ["CachedSearchResults"]
  GETTABLEKS R4 R2 K3 ["SearchText"]
  LOADB R5 1
  GETTABLEKS R6 R2 K4 ["LocalUserGroups"]
  GETUPVAL R7 0
  JUMPIFEQ R6 R7 [+20]
  LOADB R5 1
  GETTABLEKS R6 R2 K5 ["LocalUserFriends"]
  GETUPVAL R7 0
  JUMPIFEQ R6 R7 [+14]
  LOADB R5 1
  GETTABLE R6 R3 R4
  GETUPVAL R7 0
  JUMPIFEQ R6 R7 [+9]
  LOADB R5 0
  GETTABLE R6 R3 R4
  JUMPIFNOTEQKNIL R6 [+5]
  JUMPIFNOTEQKS R4 K6 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["ownerType"]
  GETTABLEKS R4 R2 K2 ["ownerFriends"]
  GETIMPORT R5 K6 [Enum.CreatorType.User]
  JUMPIFNOTEQ R3 R5 [+12]
  GETIMPORT R5 K8 [ipairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_INEXT R5
  JUMPIFNOTEQ R9 R1 [+3]
  LOADB R10 1
  RETURN R10 1
  FORGLOOP R5 2 [inext] [-5]
  LOADB R5 0
  RETURN R5 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["SearchData"]
  GETTABLEKS R3 R1 K2 ["UserCollaborators"]
  GETTABLEKS R4 R1 K3 ["GroupCollaborators"]
  GETTABLEKS R5 R2 K4 ["CachedSearchResults"]
  GETTABLEKS R6 R2 K5 ["SearchText"]
  NEWTABLE R7 0 0
  GETIMPORT R8 K7 [ipairs]
  MOVE R9 R3
  CALL R8 1 3
  FORGPREP_INEXT R8
  LOADB R13 1
  SETTABLE R13 R7 R12
  FORGLOOP R8 2 [inext] [-3]
  NEWCLOSURE R8 P0
  CAPTURE VAL R7
  NEWTABLE R9 0 0
  GETIMPORT R10 K7 [ipairs]
  MOVE R11 R4
  CALL R10 1 3
  FORGPREP_INEXT R10
  LOADB R15 1
  SETTABLE R15 R9 R14
  FORGLOOP R10 2 [inext] [-3]
  NEWCLOSURE R10 P1
  CAPTURE VAL R9
  DUPTABLE R11 K10 [{"Users", "Groups"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K8 ["Users"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K9 ["Groups"]
  GETTABLE R12 R5 R6
  JUMPIFNOT R12 [+70]
  GETTABLE R12 R5 R6
  GETUPVAL R13 0
  JUMPIFEQ R12 R13 [+67]
  GETTABLE R13 R5 R6
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["UserSubjectKey"]
  GETTABLE R12 R13 R14
  GETTABLE R14 R5 R6
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["GroupSubjectKey"]
  GETTABLE R13 R14 R15
  NEWTABLE R14 0 0
  GETIMPORT R15 K14 [pairs]
  MOVE R16 R12
  CALL R15 1 3
  FORGPREP_NEXT R15
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["SubjectIdKey"]
  GETTABLE R20 R19 R21
  GETTABLE R22 R7 R20
  JUMPIFNOTEQKNIL R22 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  JUMPIF R21 [+7]
  FASTCALL2 TABLE_INSERT R14 R19 [+5]
  MOVE R22 R14
  MOVE R23 R19
  GETIMPORT R21 K18 [table.insert]
  CALL R21 2 0
  FORGLOOP R15 2 [-18]
  NEWTABLE R15 0 0
  GETIMPORT R16 K14 [pairs]
  MOVE R17 R13
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K19 ["GroupIdKey"]
  GETTABLE R21 R20 R22
  GETTABLE R23 R9 R21
  JUMPIFNOTEQKNIL R23 [+2]
  LOADB R22 0 +1
  LOADB R22 1
  JUMPIF R22 [+7]
  FASTCALL2 TABLE_INSERT R15 R20 [+5]
  MOVE R23 R15
  MOVE R24 R20
  GETIMPORT R22 K18 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-18]
  SETTABLEKS R14 R11 K8 ["Users"]
  SETTABLEKS R15 R11 K9 ["Groups"]
  RETURN R11 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["SearchData"]
  GETTABLEKS R3 R1 K2 ["IsGroupGame"]
  GETTABLEKS R4 R2 K3 ["SearchText"]
  JUMPIFNOTEQKS R4 K4 [""] [+4]
  NEWTABLE R5 0 0
  RETURN R5 1
  NAMECALL R5 R0 K5 ["getMatches"]
  CALL R5 1 1
  NEWTABLE R6 0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
  GETTABLEKS R12 R5 K8 ["Users"]
  LENGTH R11 R12
  SUB R9 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
  GETTABLEKS R13 R5 K9 ["Groups"]
  LENGTH R12 R13
  SUB R10 R11 R12
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+10]
  LOADB R11 0
  LOADN R12 0
  JUMPIFNOTLT R12 R10 [+5]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
  ADD R11 R12 R10
  MOVE R7 R11
  LOADN R11 0
  JUMPIFNOTLT R11 R9 [+10]
  LOADB R11 0
  LOADN R12 0
  JUMPIFNOTLT R12 R9 [+5]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
  ADD R11 R12 R9
  MOVE R8 R11
  GETTABLEKS R12 R5 K8 ["Users"]
  LENGTH R11 R12
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+118]
  NEWTABLE R11 1 0
  NEWTABLE R12 0 0
  GETIMPORT R13 K11 [pairs]
  GETTABLEKS R14 R5 K8 ["Users"]
  CALL R13 1 3
  FORGPREP_NEXT R13
  LENGTH R20 R11
  LENGTH R21 R12
  ADD R19 R20 R21
  ADDK R18 R19 K12 [1]
  JUMPIFLT R7 R18 [+84]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K13 ["SubjectIdKey"]
  GETTABLE R18 R17 R19
  DUPTABLE R19 K17 [{"Icon", "Name", "Key"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K21 [{"Id", "Size"}]
  SETTABLEKS R18 R22 K19 ["Id"]
  GETIMPORT R23 K24 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K20 ["Size"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Icon"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K25 ["SubjectNameKey"]
  GETTABLE R20 R17 R21
  SETTABLEKS R20 R19 K15 ["Name"]
  DUPTABLE R20 K29 [{"Type", "Id", "Name", "IsEligible", "EligibilityText"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K30 ["UserSubjectKey"]
  SETTABLEKS R21 R20 K26 ["Type"]
  SETTABLEKS R18 R20 K19 ["Id"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K25 ["SubjectNameKey"]
  GETTABLE R21 R17 R22
  SETTABLEKS R21 R20 K15 ["Name"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K31 ["IsEligibleKey"]
  GETTABLE R21 R17 R22
  SETTABLEKS R21 R20 K27 ["IsEligible"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K32 ["EligibilityTextKey"]
  GETTABLE R21 R17 R22
  SETTABLEKS R21 R20 K28 ["EligibilityText"]
  SETTABLEKS R20 R19 K16 ["Key"]
  MOVE R22 R18
  NAMECALL R20 R0 K33 ["isFriend"]
  CALL R20 2 1
  JUMPIFNOT R20 [+11]
  LOADB R20 1
  SETTABLEKS R20 R19 K34 ["IsFriend"]
  FASTCALL2 TABLE_INSERT R11 R19 [+5]
  MOVE R21 R11
  MOVE R22 R19
  GETIMPORT R20 K37 [table.insert]
  CALL R20 2 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R12 R19 [+5]
  MOVE R21 R12
  MOVE R22 R19
  GETIMPORT R20 K37 [table.insert]
  CALL R20 2 0
  FORGLOOP R13 2 [-88]
  MOVE R13 R12
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  FASTCALL2 TABLE_INSERT R11 R17 [+5]
  MOVE R19 R11
  MOVE R20 R17
  GETIMPORT R18 K37 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-8]
  LOADN R13 0
  SETTABLEKS R13 R11 K38 ["LayoutOrder"]
  GETUPVAL R13 3
  SETTABLE R11 R6 R13
  GETTABLEKS R12 R5 K9 ["Groups"]
  LENGTH R11 R12
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+80]
  JUMPIF R3 [+78]
  NEWTABLE R11 1 0
  GETIMPORT R12 K11 [pairs]
  GETTABLEKS R13 R5 K9 ["Groups"]
  CALL R12 1 3
  FORGPREP_NEXT R12
  LENGTH R18 R11
  ADDK R17 R18 K12 [1]
  JUMPIFLT R8 R17 [+62]
  DUPTABLE R19 K17 [{"Icon", "Name", "Key"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K21 [{"Id", "Size"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K39 ["GroupIdKey"]
  GETTABLE R23 R16 R24
  SETTABLEKS R23 R22 K19 ["Id"]
  GETIMPORT R23 K24 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K20 ["Size"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Icon"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K40 ["GroupNameKey"]
  GETTABLE R20 R16 R21
  SETTABLEKS R20 R19 K15 ["Name"]
  DUPTABLE R20 K41 [{"Type", "Id", "Name", "IsEligible"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K42 ["GroupSubjectKey"]
  SETTABLEKS R21 R20 K26 ["Type"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K39 ["GroupIdKey"]
  GETTABLE R21 R16 R22
  SETTABLEKS R21 R20 K19 ["Id"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K40 ["GroupNameKey"]
  GETTABLE R21 R16 R22
  SETTABLEKS R21 R20 K15 ["Name"]
  LOADB R21 1
  SETTABLEKS R21 R20 K27 ["IsEligible"]
  SETTABLEKS R20 R19 K16 ["Key"]
  FASTCALL2 TABLE_INSERT R11 R19 [+4]
  MOVE R18 R11
  GETIMPORT R17 K37 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 2 [-64]
  LOADN R12 0
  SETTABLEKS R12 R11 K38 ["LayoutOrder"]
  GETUPVAL R12 5
  SETTABLE R11 R6 R12
  RETURN R6 1

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADB R3 0
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LoadFriends"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K1 ["Type"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["UserSubjectKey"]
  JUMPIFNOTEQ R1 R2 [+27]
  GETTABLEKS R1 R0 K3 ["IsEligible"]
  JUMPIFNOT R1 [+23]
  GETUPVAL R1 2
  GETTABLEKS R3 R0 K4 ["Id"]
  NAMECALL R1 R1 K5 ["isFriend"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 3
  GETTABLEKS R2 R0 K4 ["Id"]
  GETTABLEKS R3 R0 K6 ["Name"]
  GETUPVAL R4 4
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R1 3
  GETTABLEKS R2 R0 K4 ["Id"]
  GETTABLEKS R3 R0 K6 ["Name"]
  GETUPVAL R4 5
  CALL R1 3 0
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["Type"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["GroupSubjectKey"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R1 6
  GETTABLEKS R2 R0 K4 ["Id"]
  GETUPVAL R3 5
  CALL R1 2 0
  RETURN R0 0
  LOADB R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K9 [assert]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Writable"]
  GETTABLEKS R4 R1 K3 ["UserCollaborators"]
  GETTABLEKS R5 R1 K4 ["AddUserCollaborator"]
  GETTABLEKS R6 R1 K5 ["AddGroupCollaborator"]
  GETTABLEKS R7 R1 K6 ["SearchCollaborators"]
  GETTABLEKS R8 R1 K7 ["IsGroupGame"]
  GETTABLEKS R9 R1 K8 ["Is17PlusGame"]
  GETTABLEKS R10 R1 K9 ["Stylizer"]
  GETTABLEKS R11 R1 K10 ["Localization"]
  NAMECALL R12 R0 K11 ["getResults"]
  CALL R12 1 1
  NAMECALL R13 R0 K12 ["isLoading"]
  CALL R13 1 1
  LENGTH R14 R4
  GETIMPORT R15 K14 [game]
  LOADK R17 K15 ["TeamCreateMaxCollaborators"]
  NAMECALL R15 R15 K16 ["GetFastInt"]
  CALL R15 2 1
  JUMPIFLE R15 R14 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  LOADK R19 K17 ["SearchBar"]
  LOADK R20 K18 ["TooManyResultsText"]
  DUPTABLE R21 K20 [{"maxNumCollaborators"}]
  SETTABLEKS R15 R21 K19 ["maxNumCollaborators"]
  NAMECALL R17 R11 K21 ["getText"]
  CALL R17 4 1
  JUMPIFNOT R8 [+6]
  LOADK R20 K17 ["SearchBar"]
  LOADK R21 K22 ["AgeWarningGroups"]
  NAMECALL R18 R11 K21 ["getText"]
  CALL R18 3 1
  JUMP [+5]
  LOADK R20 K17 ["SearchBar"]
  LOADK R21 K23 ["AgeWarningUsers"]
  NAMECALL R18 R11 K21 ["getText"]
  CALL R18 3 1
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K24 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K26 [{"BackgroundTransparency", "LayoutOrder"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K25 ["BackgroundTransparency"]
  SETTABLEKS R2 R21 K1 ["LayoutOrder"]
  DUPTABLE R22 K30 [{"Padding", "AgeWarningFrame", "Searchbar"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K24 ["createElement"]
  LOADK R24 K31 ["UIPadding"]
  DUPTABLE R25 K35 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETTABLEKS R27 R10 K36 ["searchWidget"]
  GETTABLEKS R26 R27 K37 ["paddingTop"]
  SETTABLEKS R26 R25 K32 ["PaddingTop"]
  GETTABLEKS R27 R10 K36 ["searchWidget"]
  GETTABLEKS R26 R27 K38 ["paddingHorizontal"]
  SETTABLEKS R26 R25 K33 ["PaddingLeft"]
  GETTABLEKS R27 R10 K36 ["searchWidget"]
  GETTABLEKS R26 R27 K38 ["paddingHorizontal"]
  SETTABLEKS R26 R25 K34 ["PaddingRight"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K27 ["Padding"]
  MOVE R23 R9
  JUMPIFNOT R23 [+56]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K24 ["createElement"]
  LOADK R24 K39 ["Frame"]
  DUPTABLE R25 K42 [{"BackgroundTransparency", "LayoutOrder", "Size", "BorderSizePixel"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["BackgroundTransparency"]
  LOADN R26 1
  SETTABLEKS R26 R25 K1 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  GETTABLEKS R32 R10 K36 ["searchWidget"]
  GETTABLEKS R31 R32 K46 ["ageWarning"]
  GETTABLEKS R30 R31 K47 ["Height"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K40 ["Size"]
  LOADN R26 0
  SETTABLEKS R26 R25 K41 ["BorderSizePixel"]
  DUPTABLE R26 K49 [{"AgeWarning"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K24 ["createElement"]
  LOADK R28 K50 ["TextLabel"]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K51 ["Dictionary"]
  GETTABLEKS R29 R30 K52 ["join"]
  GETTABLEKS R32 R10 K36 ["searchWidget"]
  GETTABLEKS R31 R32 K46 ["ageWarning"]
  GETTABLEKS R30 R31 K53 ["fontStyle"]
  DUPTABLE R31 K56 [{"Text", "TextXAlignment"}]
  SETTABLEKS R18 R31 K54 ["Text"]
  GETIMPORT R32 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K55 ["TextXAlignment"]
  CALL R29 2 -1
  CALL R27 -1 1
  SETTABLEKS R27 R26 K48 ["AgeWarning"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K28 ["AgeWarningFrame"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K24 ["createElement"]
  GETUPVAL R24 3
  DUPTABLE R25 K71 [{"LayoutOrder", "Enabled", "HeaderHeight", "ItemHeight", "ErrorText", "DefaultText", "NoResultsText", "LoadingMore", "IsGroupGame", "onSearchRequested", "onTextChanged", "OnItemClicked", "Results", "Is17PlusGame"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K1 ["LayoutOrder"]
  MOVE R26 R3
  JUMPIFNOT R26 [+1]
  NOT R26 R16
  SETTABLEKS R26 R25 K60 ["Enabled"]
  GETTABLEKS R27 R10 K72 ["searchBar"]
  GETTABLEKS R26 R27 K73 ["headerHeight"]
  SETTABLEKS R26 R25 K61 ["HeaderHeight"]
  GETTABLEKS R27 R10 K72 ["searchBar"]
  GETTABLEKS R26 R27 K74 ["itemHeight"]
  SETTABLEKS R26 R25 K62 ["ItemHeight"]
  JUMPIFNOT R16 [+2]
  MOVE R26 R17
  JUMPIF R26 [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K63 ["ErrorText"]
  LOADK R28 K17 ["SearchBar"]
  JUMPIFNOT R8 [+2]
  LOADK R29 K75 ["AddUsers"]
  JUMP [+1]
  LOADK R29 K76 ["AddUsersGroups"]
  NAMECALL R26 R11 K21 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K64 ["DefaultText"]
  LOADK R28 K17 ["SearchBar"]
  LOADK R29 K65 ["NoResultsText"]
  NAMECALL R26 R11 K21 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K65 ["NoResultsText"]
  SETTABLEKS R13 R25 K66 ["LoadingMore"]
  SETTABLEKS R8 R25 K7 ["IsGroupGame"]
  NEWCLOSURE R26 P0
  CAPTURE VAL R7
  SETTABLEKS R26 R25 K67 ["onSearchRequested"]
  NEWCLOSURE R26 P1
  CAPTURE VAL R7
  SETTABLEKS R26 R25 K68 ["onTextChanged"]
  NEWCLOSURE R26 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R6
  SETTABLEKS R26 R25 K69 ["OnItemClicked"]
  SETTABLEKS R12 R25 K70 ["Results"]
  SETTABLEKS R9 R25 K8 ["Is17PlusGame"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K29 ["Searchbar"]
  CALL R19 3 -1
  RETURN R19 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 2
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Dictionary"]
  GETTABLEKS R6 R7 K1 ["join"]
  MOVE R7 R2
  MOVE R8 R3
  CALL R6 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["Dictionary"]
  GETTABLEKS R7 R8 K1 ["join"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R7 2 1
  DUPTABLE R8 K9 [{"IsGroupGame", "Is17PlusGame", "UserCollaborators", "GroupCollaborators", "SearchData", "ownerType", "ownerFriends"}]
  GETUPVAL R9 3
  MOVE R10 R0
  CALL R9 1 1
  SETTABLEKS R9 R8 K2 ["IsGroupGame"]
  GETUPVAL R9 4
  MOVE R10 R0
  CALL R9 1 1
  SETTABLEKS R9 R8 K3 ["Is17PlusGame"]
  SETTABLEKS R6 R8 K4 ["UserCollaborators"]
  SETTABLEKS R7 R8 K5 ["GroupCollaborators"]
  GETTABLEKS R9 R0 K10 ["CollaboratorSearch"]
  SETTABLEKS R9 R8 K6 ["SearchData"]
  GETTABLEKS R10 R0 K11 ["GameOwnerMetadata"]
  GETTABLEKS R9 R10 K12 ["creatorType"]
  SETTABLEKS R9 R8 K7 ["ownerType"]
  GETTABLEKS R10 R0 K11 ["GameOwnerMetadata"]
  GETTABLEKS R9 R10 K13 ["creatorFriends"]
  SETTABLEKS R9 R8 K8 ["ownerFriends"]
  RETURN R8 1

PROTO_11:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["LoadFriends"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K4 [{"AddUserCollaborator", "AddGroupCollaborator", "SearchCollaborators", "LoadFriends"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["AddUserCollaborator"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["AddGroupCollaborator"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SearchCollaborators"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["LoadFriends"]
  RETURN R1 1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R4 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETTABLEKS R8 R6 K14 ["Localization"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K17 ["PermissionsConstants"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K18 ["Keys"]
  GETTABLEKS R11 R12 K19 ["loadingInProgress"]
  CALL R10 1 1
  GETTABLEKS R11 R9 K20 ["PlayKey"]
  GETTABLEKS R12 R9 K21 ["EditKey"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K16 ["Util"]
  GETTABLEKS R14 R15 K22 ["Constants"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K23 ["COLLABORATORTYPE_USER"]
  GETTABLEKS R15 R13 K24 ["COLLABORATORTYPE_GROUP"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K25 ["Components"]
  GETTABLEKS R18 R19 K26 ["Thumbnails"]
  GETTABLEKS R17 R18 K27 ["UserHeadshotThumbnail"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K26 ["Thumbnails"]
  GETTABLEKS R18 R19 K28 ["GroupIconThumbnail"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K29 ["SearchBar"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K15 ["Src"]
  GETTABLEKS R21 R22 K16 ["Util"]
  GETTABLEKS R20 R21 K30 ["CreateFitToContent"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K15 ["Src"]
  GETTABLEKS R22 R23 K31 ["Selectors"]
  GETTABLEKS R21 R22 K32 ["GetUserCollaborators"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K15 ["Src"]
  GETTABLEKS R23 R24 K31 ["Selectors"]
  GETTABLEKS R22 R23 K33 ["GetGroupCollaborators"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K15 ["Src"]
  GETTABLEKS R24 R25 K34 ["Thunks"]
  GETTABLEKS R23 R24 K35 ["AddUserCollaborator"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K15 ["Src"]
  GETTABLEKS R25 R26 K34 ["Thunks"]
  GETTABLEKS R24 R25 K36 ["AddGroupCollaborator"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K15 ["Src"]
  GETTABLEKS R26 R27 K34 ["Thunks"]
  GETTABLEKS R25 R26 K37 ["SearchCollaborators"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K15 ["Src"]
  GETTABLEKS R27 R28 K34 ["Thunks"]
  GETTABLEKS R26 R27 K38 ["PermissionsLoader"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R29 R0 K15 ["Src"]
  GETTABLEKS R28 R29 K31 ["Selectors"]
  GETTABLEKS R27 R28 K39 ["IsGroupGame"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R30 R0 K15 ["Src"]
  GETTABLEKS R29 R30 K31 ["Selectors"]
  GETTABLEKS R28 R29 K40 ["IsGame17Plus"]
  CALL R27 1 1
  MOVE R28 R19
  LOADK R29 K41 ["Frame"]
  LOADK R30 K42 ["UIListLayout"]
  DUPTABLE R31 K46 [{"SortOrder", "Padding", "HorizontalAlignment"}]
  GETIMPORT R32 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K43 ["SortOrder"]
  GETIMPORT R32 K52 [UDim.new]
  LOADN R33 0
  LOADN R34 32
  CALL R32 2 1
  SETTABLEKS R32 R31 K44 ["Padding"]
  GETIMPORT R32 K54 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R32 R31 K45 ["HorizontalAlignment"]
  CALL R28 3 1
  GETTABLEKS R29 R1 K55 ["PureComponent"]
  LOADK R31 K56 ["CollaboratorSearchWidget"]
  NAMECALL R29 R29 K57 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K58 [PROTO_0]
  CAPTURE VAL R10
  SETTABLEKS R30 R29 K59 ["isLoading"]
  DUPCLOSURE R30 K60 [PROTO_1]
  SETTABLEKS R30 R29 K61 ["isFriend"]
  DUPCLOSURE R30 K62 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R30 R29 K63 ["getMatches"]
  DUPCLOSURE R30 K64 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R15
  SETTABLEKS R30 R29 K65 ["getResults"]
  DUPCLOSURE R30 K66 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R28
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R30 R29 K67 ["render"]
  MOVE R30 R7
  DUPTABLE R31 K69 [{"Stylizer", "Localization", "Mouse"}]
  SETTABLEKS R5 R31 K11 ["Stylizer"]
  SETTABLEKS R8 R31 K14 ["Localization"]
  GETTABLEKS R32 R6 K68 ["Mouse"]
  SETTABLEKS R32 R31 K68 ["Mouse"]
  CALL R30 1 1
  MOVE R31 R29
  CALL R30 1 1
  MOVE R29 R30
  GETTABLEKS R30 R2 K70 ["connect"]
  DUPCLOSURE R31 K71 [PROTO_10]
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R26
  CAPTURE VAL R27
  DUPCLOSURE R32 K72 [PROTO_15]
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R25
  CALL R30 2 1
  MOVE R31 R29
  CALL R30 1 1
  MOVE R29 R30
  RETURN R29 1
