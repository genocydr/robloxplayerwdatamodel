PROTO_0:
  LOADK R4 K0 ["StyleRule"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["SelectorSchema"]
  GETTABLEKS R3 R1 K3 ["Selector"]
  JUMPIFNOTEQKS R3 K4 [""] [+11]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["SelectorSchema"]
  DUPTABLE R5 K6 [{"Editing"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["Editing"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K11 [{"Name", "Id", "Instance", "Children"}]
  DUPTABLE R4 K16 [{"Actions", "ErrorMessage", "Schema", "Value"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K17 ["MoreAction"]
  SETTABLEKS R5 R4 K12 ["Actions"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R5 R1 K18 ["SelectorError"]
  JUMP [+1]
  LOADK R5 K4 [""]
  SETTABLEKS R5 R4 K13 ["ErrorMessage"]
  SETTABLEKS R2 R4 K14 ["Schema"]
  GETTABLEKS R5 R1 K3 ["Selector"]
  SETTABLEKS R5 R4 K15 ["Value"]
  SETTABLEKS R4 R3 K7 ["Name"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K19 ["createItemId"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["Id"]
  SETTABLEKS R1 R3 K9 ["Instance"]
  GETUPVAL R4 4
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["Children"]
  RETURN R3 1

PROTO_1:
  JUMPIF R0 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETUPVAL R1 0
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 1
  DUPCLOSURE R3 K1 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  LOADK R3 K0 ["StyleRule"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+31]
  LOADK R3 K2 ["StyleCategory"]
  NAMECALL R1 R0 K3 ["GetAttribute"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["getSelectorCategory"]
  GETTABLEKS R2 R0 K5 ["Selector"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIF R2 [+10]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R1
  GETUPVAL R3 2
  FASTCALL2 TABLE_INSERT R3 R1 [+3]
  MOVE R4 R1
  GETUPVAL R2 3
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  FASTCALL2 TABLE_INSERT R3 R0 [+3]
  MOVE R4 R0
  GETUPVAL R2 3
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SelectorSchema"]
  GETTABLEKS R2 R0 K1 ["Selector"]
  JUMPIFNOTEQKS R2 K2 [""] [+11]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SelectorSchema"]
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  MOVE R1 R2
  DUPTABLE R2 K9 [{"Name", "Id", "Instance", "Children"}]
  DUPTABLE R3 K14 [{"Actions", "ErrorMessage", "Schema", "Value"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["MoreAction"]
  SETTABLEKS R4 R3 K10 ["Actions"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R4 R0 K16 ["SelectorError"]
  JUMP [+1]
  LOADK R4 K2 [""]
  SETTABLEKS R4 R3 K11 ["ErrorMessage"]
  SETTABLEKS R1 R3 K12 ["Schema"]
  GETTABLEKS R4 R0 K1 ["Selector"]
  SETTABLEKS R4 R3 K13 ["Value"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K17 ["createItemId"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["Id"]
  SETTABLEKS R0 R2 K7 ["Instance"]
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["Children"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K0 [0] [+3]
  LOADNIL R3
  RETURN R3 1
  DUPTABLE R3 K4 [{"Id", "Name", "Children"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["createItemId"]
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["Id"]
  DUPTABLE R4 K9 [{"Actions", "LeftIcon", "Value"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["MoreAction"]
  SETTABLEKS R5 R4 K6 ["Actions"]
  DUPTABLE R5 K13 [{"Image", "Size"}]
  JUMPIFNOTEQKS R1 K14 ["UI Elements"] [+8]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["Selectors"]
  GETTABLEKS R6 R7 K16 ["Class"]
  CALL R6 0 1
  JUMP [+13]
  JUMPIFNOTEQKS R1 K17 ["Tags"] [+8]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["Selectors"]
  GETTABLEKS R6 R7 K18 ["Tag"]
  CALL R6 0 1
  JUMP [+4]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K19 ["folder"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["Image"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K12 ["Size"]
  SETTABLEKS R5 R4 K7 ["LeftIcon"]
  SETTABLEKS R1 R4 K8 ["Value"]
  SETTABLEKS R4 R3 K2 ["Name"]
  GETUPVAL R4 6
  MOVE R5 R2
  DUPCLOSURE R6 K20 [PROTO_3]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U9
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Children"]
  RETURN R3 1

PROTO_5:
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 4 0
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["UI Elements"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Tags"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["Components"]
  NEWTABLE R2 0 3
  LOADK R3 K0 ["UI Elements"]
  LOADK R4 K1 ["Tags"]
  LOADK R5 K2 ["Components"]
  SETLIST R2 R3 3 [1]
  GETUPVAL R3 0
  NAMECALL R4 R0 K3 ["GetStyleRules"]
  CALL R4 1 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R2
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CALL R3 2 1
  RETURN R3 1

PROTO_6:
  DUPTABLE R2 K4 [{"Name", "Id", "Children", "Instance"}]
  DUPTABLE R3 K8 [{"Actions", "Schema", "Value"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["MoreAction"]
  SETTABLEKS R4 R3 K5 ["Actions"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["StyleSheetSchema"]
  SETTABLEKS R4 R3 K6 ["Schema"]
  GETTABLEKS R4 R1 K0 ["Name"]
  SETTABLEKS R4 R3 K7 ["Value"]
  SETTABLEKS R3 R2 K0 ["Name"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["createItemId"]
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["Id"]
  GETUPVAL R3 3
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["Children"]
  SETTABLEKS R1 R2 K3 ["Instance"]
  RETURN R2 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["Name"]
  OR R2 R3 R0
  DUPTABLE R3 K4 [{"Name", "Id", "Instance", "Children"}]
  DUPTABLE R4 K8 [{"Actions", "Schema", "Value"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["MoreAction"]
  SETTABLEKS R5 R4 K5 ["Actions"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["FolderSchema"]
  SETTABLEKS R5 R4 K6 ["Schema"]
  SETTABLEKS R2 R4 K7 ["Value"]
  SETTABLEKS R4 R3 K0 ["Name"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["createItemId"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["Id"]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K13 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K2 ["Instance"] [+3]
  MOVE R4 R0
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["Instance"]
  GETUPVAL R4 3
  MOVE R5 R1
  DUPCLOSURE R6 K14 [PROTO_6]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Children"]
  RETURN R3 1

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_7]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CALL R1 2 1
  RETURN R1 1

PROTO_9:
  LOADK R3 K0 ["StyleCategory"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  LOADK R4 K2 ["Folder"]
  NAMECALL R2 R0 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+14]
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 0
  MOVE R3 R1
  LOADK R4 K4 ["Themes"]
  CALL R2 2 1
  JUMPIFNOT R2 [+74]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  JUMPIF R2 [+71]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R0
  RETURN R0 0
  LOADK R4 K5 ["StyleSheet"]
  NAMECALL R2 R0 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+61]
  GETTABLEKS R2 R0 K6 ["Parent"]
  JUMPIF R1 [+9]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["isTheme"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R1 K4 ["Themes"]
  JUMP [+1]
  LOADK R1 K8 ["Other"]
  GETUPVAL R3 3
  JUMPIFNOTEQ R3 R0 [+2]
  LOADK R1 K9 ["Designs"]
  JUMPIFNOTEQKS R1 K4 ["Themes"] [+24]
  LOADK R6 K2 ["Folder"]
  NAMECALL R4 R2 K3 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  MOVE R3 R2
  JUMP [+1]
  LOADK R3 K8 ["Other"]
  GETUPVAL R5 1
  GETTABLE R4 R5 R3
  JUMPIF R4 [+4]
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  SETTABLE R5 R4 R3
  GETUPVAL R6 1
  GETTABLE R5 R6 R3
  FASTCALL2 TABLE_INSERT R5 R0 [+3]
  MOVE R6 R0
  GETUPVAL R4 4
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R4 5
  GETTABLE R3 R4 R1
  JUMPIF R3 [+10]
  GETUPVAL R3 5
  NEWTABLE R4 0 0
  SETTABLE R4 R3 R1
  GETUPVAL R4 6
  FASTCALL2 TABLE_INSERT R4 R1 [+3]
  MOVE R5 R1
  GETUPVAL R3 4
  CALL R3 2 0
  GETUPVAL R5 5
  GETTABLE R4 R5 R1
  FASTCALL2 TABLE_INSERT R4 R0 [+3]
  MOVE R5 R0
  GETUPVAL R3 4
  CALL R3 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R2 R0 K0 ["GetDescendants"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["StyleSheetSchema"]
  GETTABLEKS R2 R0 K1 ["Name"]
  JUMPIFNOTEQKS R2 K2 [""] [+9]
  GETUPVAL R2 1
  MOVE R3 R1
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  MOVE R1 R2
  DUPTABLE R2 K8 [{"Name", "Id", "Children", "Instance"}]
  DUPTABLE R3 K12 [{"Actions", "Schema", "Value"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["MoreAction"]
  SETTABLEKS R4 R3 K9 ["Actions"]
  SETTABLEKS R1 R3 K10 ["Schema"]
  GETTABLEKS R4 R0 K1 ["Name"]
  SETTABLEKS R4 R3 K11 ["Value"]
  SETTABLEKS R3 R2 K1 ["Name"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K14 ["createItemId"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["Id"]
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["Children"]
  SETTABLEKS R0 R2 K7 ["Instance"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOTEQKS R1 K0 ["Designs"] [+78]
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+74]
  GETTABLEN R3 R2 1
  GETTABLEKS R4 R3 K1 ["Name"]
  LOADK R7 K2 ["StyleSheet"]
  NAMECALL R5 R4 K3 ["match"]
  CALL R5 2 1
  JUMPIF R5 [+3]
  MOVE R5 R4
  LOADK R6 K4 [" StyleSheet"]
  CONCAT R4 R5 R6
  JUMPIFNOT R3 [+59]
  DUPTABLE R5 K8 [{"Name", "Id", "Children", "Instance"}]
  DUPTABLE R6 K15 [{"Actions", "ExpandByDefault", "FullSpan", "Schema", "Value", "LeftIcon"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["FullSpanMoreAction"]
  SETTABLEKS R7 R6 K9 ["Actions"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["ExpandByDefault"]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["FullSpan"]
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K17 ["StyleSheetSchema"]
  DUPTABLE R9 K19 [{"GetImageProps"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K20 ["None"]
  SETTABLEKS R10 R9 K18 ["GetImageProps"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Schema"]
  SETTABLEKS R4 R6 K13 ["Value"]
  DUPTABLE R7 K23 [{"Image", "Size"}]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K24 ["Standard"]
  GETTABLEKS R8 R9 K25 ["DesignSheet"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K21 ["Image"]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K22 ["Size"]
  SETTABLEKS R7 R6 K14 ["LeftIcon"]
  SETTABLEKS R6 R5 K1 ["Name"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K26 ["createItemId"]
  MOVE R7 R3
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["Id"]
  GETUPVAL R6 8
  MOVE R7 R3
  CALL R6 1 1
  SETTABLEKS R6 R5 K6 ["Children"]
  SETTABLEKS R3 R5 K7 ["Instance"]
  RETURN R5 1
  LOADNIL R5
  RETURN R5 1
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 9
  MOVE R6 R1
  LOADK R7 K27 ["Themes"]
  CALL R5 2 1
  JUMPIFNOT R5 [+19]
  GETUPVAL R5 10
  GETUPVAL R6 11
  MOVE R7 R5
  DUPCLOSURE R8 K28 [PROTO_7]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U11
  CAPTURE UPVAL U8
  CALL R6 2 1
  MOVE R3 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K24 ["Standard"]
  GETTABLEKS R5 R6 K29 ["ThemeSheet"]
  CALL R5 0 1
  MOVE R4 R5
  JUMP [+17]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K24 ["Standard"]
  GETTABLEKS R5 R6 K30 ["TokenSheet"]
  CALL R5 0 1
  MOVE R4 R5
  GETUPVAL R5 12
  MOVE R6 R2
  DUPCLOSURE R7 K31 [PROTO_11]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CALL R5 2 1
  MOVE R3 R5
  DUPTABLE R5 K32 [{"Name", "Id", "Children"}]
  DUPTABLE R6 K33 [{"Actions", "ExpandByDefault", "FullSpan", "Value", "LeftIcon"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["FullSpanMoreAction"]
  SETTABLEKS R7 R6 K9 ["Actions"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["ExpandByDefault"]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["FullSpan"]
  SETTABLEKS R1 R6 K13 ["Value"]
  DUPTABLE R7 K23 [{"Image", "Size"}]
  SETTABLEKS R4 R7 K21 ["Image"]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K22 ["Size"]
  SETTABLEKS R7 R6 K14 ["LeftIcon"]
  SETTABLEKS R6 R5 K1 ["Name"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K26 ["createItemId"]
  MOVE R7 R1
  CALL R6 1 1
  SETTABLEKS R6 R5 K5 ["Id"]
  SETTABLEKS R3 R5 K6 ["Children"]
  RETURN R5 1

PROTO_13:
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K0 ["Parent"]
  JUMPIF R2 [+27]
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"Id", "Name"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createItemId"]
  LOADK R5 K5 ["Design"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["Id"]
  DUPTABLE R4 K9 [{"Actions", "FullSpan", "Value"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["FullSpanMoreAction"]
  SETTABLEKS R5 R4 K6 ["Actions"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["FullSpan"]
  LOADK R5 K5 ["Design"]
  SETTABLEKS R5 R4 K8 ["Value"]
  SETTABLEKS R4 R3 K2 ["Name"]
  SETLIST R2 R3 1 [1]
  RETURN R2 1
  JUMPIF R0 [+6]
  NEWTABLE R2 0 1
  GETUPVAL R3 2
  SETLIST R2 R3 1 [1]
  MOVE R0 R2
  DUPTABLE R2 K13 [{"Tokens", "Designs"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K11 ["Tokens"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K12 ["Designs"]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 3
  LOADK R5 K12 ["Designs"]
  LOADK R6 K11 ["Tokens"]
  LOADK R7 K14 ["Themes"]
  SETLIST R4 R5 3 [1]
  GETUPVAL R5 3
  MOVE R6 R0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CALL R5 2 0
  GETUPVAL R5 7
  MOVE R6 R4
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U14
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["DesignHelpers"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K12 ["MenuHelpers"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K13 ["StyleSchema"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K9 ["Src"]
  GETTABLEKS R7 R8 K14 ["Resources"]
  GETTABLEKS R6 R7 K15 ["ModernIcons"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K16 ["TreeTableHelpers"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K17 ["Packages"]
  GETTABLEKS R8 R9 K18 ["Dash"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K19 ["collectArray"]
  GETTABLEKS R9 R7 K20 ["forEach"]
  GETTABLEKS R10 R7 K21 ["join"]
  GETTABLEKS R11 R7 K22 ["map"]
  GETTABLEKS R12 R7 K23 ["startsWith"]
  GETIMPORT R13 K26 [table.insert]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K9 ["Src"]
  GETTABLEKS R16 R17 K14 ["Resources"]
  GETTABLEKS R15 R16 K27 ["PluginStyles"]
  CALL R14 1 1
  LOADK R17 K28 ["Icon16"]
  NAMECALL R15 R14 K29 ["GetAttribute"]
  CALL R15 2 1
  DUPCLOSURE R16 K30 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R16
  DUPCLOSURE R17 K31 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R16
  DUPCLOSURE R18 K32 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R17
  DUPCLOSURE R19 K33 [PROTO_13]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R11
  RETURN R19 1
