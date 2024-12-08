PROTO_0:
  GETTABLEKS R2 R0 K0 ["LastRemovedFriend"]
  GETTABLEKS R1 R2 K1 ["lastRemovedFriendId"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["Navigation"]
  GETTABLEKS R1 R2 K1 ["currentPage"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["nextPageCursor"]
  CALL R0 1 0
  GETUPVAL R0 4
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K2 ["Done"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Failed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-8]
  GETIMPORT R2 K1 [ipairs]
  GETTABLEKS R5 R0 K5 ["responseBody"]
  GETTABLEKS R3 R5 K6 ["callRecords"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-8]
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETIMPORT R8 K1 [ipairs]
  GETTABLEKS R9 R7 K7 ["participants"]
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R14 R12 K8 ["userId"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K10 [tostring]
  CALL R13 1 1
  LOADB R14 1
  SETTABLE R14 R2 R13
  FORGLOOP R8 2 [inext] [-9]
  FORGLOOP R3 2 [inext] [-17]
  GETUPVAL R3 1
  DUPTABLE R5 K13 [{"query", "variables"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["Queries"]
  GETTABLEKS R6 R7 K15 ["userProfilesCombinedNameAndUsernameByUserIds"]
  SETTABLEKS R6 R5 K11 ["query"]
  DUPTABLE R6 K17 [{"userIds"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["Dictionary"]
  GETTABLEKS R7 R8 K19 ["keys"]
  MOVE R8 R2
  CALL R7 1 1
  SETTABLEKS R7 R6 K16 ["userIds"]
  SETTABLEKS R6 R5 K12 ["variables"]
  NAMECALL R3 R3 K11 ["query"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R3 R3 K20 ["andThen"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R3 R3 K21 ["catch"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Failed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Fetching"]
  CALL R2 1 0
  JUMPIFNOTEQKS R1 K2 [""] [+3]
  LOADN R2 16
  JUMP [+1]
  LOADN R2 8
  GETUPVAL R3 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["GetCallHistory"]
  GETTABLEKS R4 R5 K4 ["API"]
  DUPTABLE R5 K8 [{"cursor", "limit", "universeId"}]
  SETTABLEKS R1 R5 K5 ["cursor"]
  SETTABLEKS R2 R5 K6 ["limit"]
  GETIMPORT R7 K10 [game]
  GETTABLEKS R6 R7 K11 ["GameId"]
  SETTABLEKS R6 R5 K7 ["universeId"]
  CALL R4 1 -1
  CALL R3 -1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K12 ["andThen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K0 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  LOADK R2 K0 [""]
  CALL R0 2 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fireEvent"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PhoneBookNavigate"]
  DUPTABLE R2 K5 [{"eventTimestampMs", "startingPage", "destinationPage"}]
  GETIMPORT R4 K9 [os.time]
  CALL R4 0 1
  MULK R3 R4 K6 [1000]
  SETTABLEKS R3 R2 K2 ["eventTimestampMs"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K3 ["startingPage"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K10 ["FriendList"]
  SETTABLEKS R3 R2 K4 ["destinationPage"]
  CALL R0 2 0
  GETUPVAL R0 4
  GETUPVAL R1 5
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["FriendList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Fetching"]
  JUMPIFEQ R0 R1 [+5]
  GETUPVAL R0 2
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["current"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  LOADNIL R0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Failed"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["genericErrorLabel"]
  JUMP [+3]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["noCallsLabel"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K11 [{"isImageEnabled", "imageName", "isFailedButtonEnabled", "onFailedButtonActivated", "isCallButtonEnabled", "onCallButtonActivated", "messageText"}]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["Failed"]
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["isImageEnabled"]
  LOADK R4 K12 ["icons/graphic/findfriends_xlarge"]
  SETTABLEKS R4 R3 K5 ["imageName"]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["Failed"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["isFailedButtonEnabled"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R4 R3 K7 ["onFailedButtonActivated"]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["Done"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["isCallButtonEnabled"]
  GETUPVAL R4 8
  SETTABLEKS R4 R3 K9 ["onCallButtonActivated"]
  SETTABLEKS R0 R3 K10 ["messageText"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Position"]
  GETTABLEKS R2 R3 K1 ["Y"]
  SETTABLEKS R2 R1 K2 ["current"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R3 R0 K0 ["Position"]
  GETTABLEKS R2 R3 K1 ["Y"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["current"]
  SUB R1 R2 R3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["TOUCH_SLOP"]
  JUMPIFNOTLT R2 R1 [+17]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["current"]
  JUMPIFNOT R2 [+12]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["current"]
  GETTABLEKS R3 R4 K4 ["CanvasPosition"]
  GETTABLEKS R2 R3 K1 ["Y"]
  JUMPIFNOTEQKN R2 K5 [0] [+4]
  GETUPVAL R2 3
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["UIListLayout"]
  DUPTABLE R3 K4 [{"FillDirection", "SortOrder"}]
  GETIMPORT R4 K7 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K2 ["FillDirection"]
  GETIMPORT R4 K9 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R4 R3 K3 ["SortOrder"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["UIListLayout"]
  NEWTABLE R1 0 0
  GETIMPORT R2 K11 [ipairs]
  GETUPVAL R3 1
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R9 R6 K12 ["participants"]
  GETTABLEN R8 R9 1
  GETTABLEKS R7 R8 K13 ["userId"]
  GETUPVAL R8 2
  JUMPIFNOTEQ R7 R8 [+6]
  GETTABLEKS R9 R6 K12 ["participants"]
  GETTABLEN R8 R9 2
  GETTABLEKS R7 R8 K13 ["userId"]
  GETUPVAL R8 3
  MOVE R10 R7
  NAMECALL R8 R8 K14 ["IsPlayerBlockedByUserId"]
  CALL R8 2 1
  JUMPIF R8 [+7]
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R9 R1
  MOVE R10 R6
  GETIMPORT R8 K17 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [inext] [-27]
  GETIMPORT R2 K11 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K23 [{"callRecord", "localUserId", "showDivider", "dismissCallback", "layoutOrder"}]
  SETTABLEKS R6 R9 K18 ["callRecord"]
  GETUPVAL R10 2
  SETTABLEKS R10 R9 K19 ["localUserId"]
  LENGTH R11 R1
  JUMPIFNOTEQ R5 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["showDivider"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["dismissCallback"]
  SETTABLEKS R10 R9 K21 ["dismissCallback"]
  SETTABLEKS R5 R9 K22 ["layoutOrder"]
  CALL R7 2 1
  SETTABLE R7 R0 R5
  FORGLOOP R2 2 [inext] [-27]
  GETUPVAL R2 6
  JUMPIFEQKS R2 K24 [""] [+65]
  LENGTH R3 R0
  ADDK R2 R3 K25 [1]
  GETUPVAL R3 7
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K26 ["Failed"]
  JUMPIFNOTEQ R3 R4 [+4]
  GETUPVAL R3 9
  SETTABLE R3 R0 R2
  RETURN R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K27 ["Frame"]
  DUPTABLE R5 K30 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R6 K33 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETUPVAL R11 10
  GETTABLEKS R10 R11 K34 ["ITEM_HEIGHT"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K28 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K29 ["BackgroundTransparency"]
  SETTABLEKS R2 R5 K8 ["LayoutOrder"]
  DUPTABLE R6 K36 [{"LoadingSpinner"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 11
  DUPTABLE R9 K40 [{"size", "position", "anchorPoint"}]
  GETIMPORT R10 K42 [UDim2.fromOffset]
  LOADN R11 48
  LOADN R12 48
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["size"]
  GETIMPORT R10 K44 [UDim2.fromScale]
  LOADK R11 K45 [0.5]
  LOADK R12 K45 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["position"]
  GETIMPORT R10 K47 [Vector2.new]
  LOADK R11 K45 [0.5]
  LOADK R12 K45 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["anchorPoint"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K35 ["LoadingSpinner"]
  CALL R3 3 1
  SETTABLE R3 R0 R2
  RETURN R0 1

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIF R1 [+29]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Failed"]
  JUMPIFEQ R1 R2 [+24]
  GETUPVAL R1 3
  JUMPIFEQKS R1 K2 [""] [+21]
  GETTABLEKS R2 R0 K3 ["CanvasPosition"]
  GETTABLEKS R1 R2 K4 ["Y"]
  GETTABLEKS R5 R0 K6 ["AbsoluteCanvasSize"]
  GETTABLEKS R4 R5 K4 ["Y"]
  GETTABLEKS R6 R0 K7 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K4 ["Y"]
  SUB R3 R4 R5
  SUBK R2 R3 K5 [50]
  JUMPIFNOTLE R2 R1 [+5]
  GETUPVAL R1 4
  GETUPVAL R2 5
  GETUPVAL R3 3
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  LENGTH R2 R3
  SUBK R1 R2 K0 [1]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["ITEM_HEIGHT"]
  MUL R0 R1 R2
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["current"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["current"]
  GETTABLEKS R2 R3 K3 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K4 ["Y"]
  JUMPIFNOTLE R0 R1 [+6]
  GETUPVAL R1 3
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["current"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  CALL R4 0 1
  GETTABLEKS R5 R4 K0 ["Theme"]
  GETUPVAL R6 4
  DUPTABLE R7 K3 [{"genericErrorLabel", "noCallsLabel"}]
  LOADK R8 K4 ["Feature.Call.Error.Description.Generic"]
  SETTABLEKS R8 R7 K1 ["genericErrorLabel"]
  LOADK R8 K5 ["Feature.Call.Prompt.FirstCall"]
  SETTABLEKS R8 R7 K2 ["noCallsLabel"]
  CALL R6 1 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K6 ["useRef"]
  LOADB R8 1
  CALL R7 1 1
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K6 ["useRef"]
  LOADNIL R9
  CALL R8 1 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K6 ["useRef"]
  LOADN R10 0
  CALL R9 1 1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K7 ["useState"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K8 ["Fetching"]
  CALL R10 1 2
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K7 ["useState"]
  LOADB R13 0
  CALL R12 1 2
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K7 ["useState"]
  NEWTABLE R15 0 0
  CALL R14 1 2
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K7 ["useState"]
  LOADK R17 K9 [""]
  CALL R16 1 2
  GETUPVAL R18 7
  DUPCLOSURE R19 K10 [PROTO_0]
  CALL R18 1 1
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K11 ["useCallback"]
  DUPCLOSURE R20 K12 [PROTO_1]
  NEWTABLE R21 0 0
  CALL R19 2 1
  GETUPVAL R20 7
  MOVE R21 R19
  CALL R20 1 1
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K11 ["useCallback"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R15
  CAPTURE VAL R17
  NEWTABLE R23 0 1
  MOVE R24 R18
  SETLIST R23 R24 1 [1]
  CALL R21 2 1
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K13 ["useEffect"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R21
  CAPTURE VAL R15
  CAPTURE VAL R17
  NEWTABLE R24 0 1
  MOVE R25 R21
  SETLIST R24 R25 1 [1]
  CALL R22 2 0
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K11 ["useCallback"]
  NEWCLOSURE R23 P4
  CAPTURE VAL R2
  CAPTURE UPVAL U11
  CAPTURE VAL R20
  CAPTURE UPVAL U12
  CAPTURE VAL R3
  CAPTURE UPVAL U13
  NEWTABLE R24 0 1
  MOVE R25 R20
  SETLIST R24 R25 1 [1]
  CALL R22 2 1
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K13 ["useEffect"]
  NEWCLOSURE R24 P5
  CAPTURE VAL R10
  CAPTURE UPVAL U6
  CAPTURE VAL R7
  NEWTABLE R25 0 1
  MOVE R26 R10
  SETLIST R25 R26 1 [1]
  CALL R23 2 0
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K14 ["useMemo"]
  NEWCLOSURE R24 P6
  CAPTURE VAL R10
  CAPTURE UPVAL U6
  CAPTURE VAL R6
  CAPTURE UPVAL U5
  CAPTURE UPVAL U14
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R22
  GETUPVAL R25 15
  MOVE R26 R14
  MOVE R27 R21
  GETTABLEKS R28 R6 K1 ["genericErrorLabel"]
  GETTABLEKS R29 R6 K2 ["noCallsLabel"]
  MOVE R30 R22
  MOVE R31 R16
  MOVE R32 R10
  CALL R25 7 -1
  CALL R23 -1 1
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K11 ["useCallback"]
  NEWCLOSURE R25 P7
  CAPTURE VAL R9
  NEWTABLE R26 0 0
  CALL R24 2 1
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K11 ["useCallback"]
  NEWCLOSURE R26 P8
  CAPTURE VAL R9
  CAPTURE UPVAL U16
  CAPTURE VAL R8
  CAPTURE VAL R13
  NEWTABLE R27 0 0
  CALL R25 2 1
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K11 ["useCallback"]
  NEWCLOSURE R27 P9
  CAPTURE VAL R13
  NEWTABLE R28 0 0
  CALL R26 2 1
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K14 ["useMemo"]
  NEWCLOSURE R28 P10
  CAPTURE UPVAL U5
  CAPTURE VAL R14
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE UPVAL U6
  CAPTURE VAL R23
  CAPTURE UPVAL U16
  CAPTURE UPVAL U20
  GETUPVAL R29 15
  MOVE R30 R14
  MOVE R31 R16
  MOVE R32 R23
  MOVE R33 R10
  CALL R29 4 -1
  CALL R27 -1 1
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K11 ["useCallback"]
  NEWCLOSURE R29 P11
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE UPVAL U6
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R14
  GETUPVAL R30 15
  MOVE R31 R14
  MOVE R32 R21
  MOVE R33 R16
  MOVE R34 R10
  CALL R30 4 -1
  CALL R28 -1 1
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K13 ["useEffect"]
  NEWCLOSURE R30 P12
  CAPTURE VAL R27
  CAPTURE UPVAL U16
  CAPTURE VAL R8
  CAPTURE VAL R28
  GETUPVAL R31 15
  MOVE R32 R27
  MOVE R33 R28
  CALL R31 2 -1
  CALL R29 -1 0
  LENGTH R30 R14
  JUMPIFNOTEQKN R30 K15 [0] [+57]
  GETUPVAL R31 6
  GETTABLEKS R30 R31 K8 ["Fetching"]
  JUMPIFNOTEQ R10 R30 [+52]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K16 ["createElement"]
  LOADK R30 K17 ["Frame"]
  DUPTABLE R31 K20 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R32 K23 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  GETUPVAL R37 16
  GETTABLEKS R36 R37 K24 ["ITEM_HEIGHT"]
  CALL R32 4 1
  SETTABLEKS R32 R31 K18 ["Size"]
  LOADN R32 1
  SETTABLEKS R32 R31 K19 ["BackgroundTransparency"]
  DUPTABLE R32 K26 [{"LoadingSpinner"}]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R34 20
  DUPTABLE R35 K30 [{"size", "position", "anchorPoint"}]
  GETIMPORT R36 K32 [UDim2.fromOffset]
  LOADN R37 48
  LOADN R38 48
  CALL R36 2 1
  SETTABLEKS R36 R35 K27 ["size"]
  GETIMPORT R36 K34 [UDim2.fromScale]
  LOADK R37 K35 [0.5]
  LOADK R38 K35 [0.5]
  CALL R36 2 1
  SETTABLEKS R36 R35 K28 ["position"]
  GETIMPORT R36 K37 [Vector2.new]
  LOADK R37 K35 [0.5]
  LOADK R38 K35 [0.5]
  CALL R36 2 1
  SETTABLEKS R36 R35 K29 ["anchorPoint"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K25 ["LoadingSpinner"]
  CALL R29 3 1
  RETURN R29 1
  LENGTH R30 R14
  JUMPIFNOTEQKN R30 K15 [0] [+3]
  MOVE R29 R23
  RETURN R29 1
  GETUPVAL R30 21
  GETTABLEKS R29 R30 K38 ["createFragment"]
  NEWTABLE R30 4 1
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K16 ["createElement"]
  LOADK R32 K39 ["ScrollingFrame"]
  NEWTABLE R33 16 0
  GETIMPORT R34 K34 [UDim2.fromScale]
  LOADN R35 1
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K18 ["Size"]
  GETIMPORT R34 K43 [Enum.AutomaticSize.Y]
  SETTABLEKS R34 R33 K44 ["AutomaticCanvasSize"]
  GETTABLEKS R35 R5 K45 ["BackgroundDefault"]
  GETTABLEKS R34 R35 K46 ["Color"]
  SETTABLEKS R34 R33 K47 ["BackgroundColor3"]
  GETTABLEKS R35 R5 K45 ["BackgroundDefault"]
  GETTABLEKS R34 R35 K48 ["Transparency"]
  SETTABLEKS R34 R33 K19 ["BackgroundTransparency"]
  LOADN R34 0
  SETTABLEKS R34 R33 K49 ["BorderSizePixel"]
  GETIMPORT R34 K23 [UDim2.new]
  CALL R34 0 1
  SETTABLEKS R34 R33 K50 ["CanvasSize"]
  GETIMPORT R34 K53 [Enum.ElasticBehavior.Never]
  SETTABLEKS R34 R33 K51 ["ElasticBehavior"]
  GETIMPORT R34 K55 [Enum.ScrollingDirection.Y]
  SETTABLEKS R34 R33 K54 ["ScrollingDirection"]
  NOT R34 R12
  JUMPIFNOT R34 [+2]
  GETTABLEKS R34 R0 K56 ["scrollingEnabled"]
  SETTABLEKS R34 R33 K57 ["ScrollingEnabled"]
  GETTABLEKS R35 R5 K58 ["UIEmphasis"]
  GETTABLEKS R34 R35 K46 ["Color"]
  SETTABLEKS R34 R33 K59 ["ScrollBarImageColor3"]
  GETTABLEKS R35 R5 K58 ["UIEmphasis"]
  GETTABLEKS R34 R35 K48 ["Transparency"]
  SETTABLEKS R34 R33 K60 ["ScrollBarImageTransparency"]
  LOADN R34 4
  SETTABLEKS R34 R33 K61 ["ScrollBarThickness"]
  SETTABLEKS R8 R33 K62 ["ref"]
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K63 ["Change"]
  GETTABLEKS R34 R35 K64 ["CanvasPosition"]
  SETTABLE R28 R33 R34
  MOVE R34 R27
  CALL R31 3 1
  SETLIST R30 R31 1 [1]
  GETTABLEKS R32 R0 K65 ["isSmallScreen"]
  JUMPIFNOT R32 [+16]
  GETTABLEKS R32 R0 K56 ["scrollingEnabled"]
  JUMPIFNOT R32 [+13]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K16 ["createElement"]
  GETUPVAL R33 22
  DUPTABLE R34 K68 [{"event", "callback"}]
  GETUPVAL R36 23
  GETTABLEKS R35 R36 K69 ["TouchStarted"]
  SETTABLEKS R35 R34 K66 ["event"]
  SETTABLEKS R24 R34 K67 ["callback"]
  CALL R32 2 1
  SETTABLEKS R32 R30 K70 ["TouchStartedUserInputConnection"]
  GETTABLEKS R32 R0 K65 ["isSmallScreen"]
  JUMPIFNOT R32 [+16]
  GETTABLEKS R32 R0 K56 ["scrollingEnabled"]
  JUMPIFNOT R32 [+13]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K16 ["createElement"]
  GETUPVAL R33 22
  DUPTABLE R34 K68 [{"event", "callback"}]
  GETUPVAL R36 23
  GETTABLEKS R35 R36 K71 ["TouchMoved"]
  SETTABLEKS R35 R34 K66 ["event"]
  SETTABLEKS R25 R34 K67 ["callback"]
  CALL R32 2 1
  SETTABLEKS R32 R30 K72 ["TouchMovedUserInputConnection"]
  GETTABLEKS R32 R0 K65 ["isSmallScreen"]
  JUMPIFNOT R32 [+16]
  GETTABLEKS R32 R0 K56 ["scrollingEnabled"]
  JUMPIFNOT R32 [+13]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K16 ["createElement"]
  GETUPVAL R33 22
  DUPTABLE R34 K68 [{"event", "callback"}]
  GETUPVAL R36 23
  GETTABLEKS R35 R36 K73 ["TouchEnded"]
  SETTABLEKS R35 R34 K66 ["event"]
  SETTABLEKS R26 R34 K67 ["callback"]
  CALL R32 2 1
  SETTABLEKS R32 R30 K74 ["TouchEndedUserInputConnection"]
  CALL R29 1 1
  RETURN R29 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UserInputService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ApolloClient"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K8 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Roact"]
  CALL R6 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R1 K13 ["Workspace"]
  GETTABLEKS R10 R11 K8 ["Packages"]
  GETTABLEKS R9 R10 K14 ["RoactUtils"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["ExternalEventConnection"]
  GETIMPORT R10 K7 [require]
  GETTABLEKS R13 R1 K13 ["Workspace"]
  GETTABLEKS R12 R13 K8 ["Packages"]
  GETTABLEKS R11 R12 K16 ["Http"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K17 ["Enum"]
  GETTABLEKS R8 R9 K18 ["RetrievalStatus"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R12 R1 K13 ["Workspace"]
  GETTABLEKS R11 R12 K8 ["Packages"]
  GETTABLEKS R10 R11 K19 ["UserProfiles"]
  CALL R9 1 1
  LOADK R12 K20 ["RobloxGui"]
  NAMECALL R10 R0 K21 ["WaitForChild"]
  CALL R10 2 1
  GETTABLEKS R11 R3 K22 ["useApolloClient"]
  GETTABLEKS R13 R10 K23 ["Modules"]
  GETTABLEKS R12 R13 K24 ["ContactList"]
  GETIMPORT R13 K7 [require]
  GETTABLEKS R15 R12 K25 ["Actions"]
  GETTABLEKS R14 R15 K26 ["SetCurrentPage"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R12 K27 ["Enums"]
  GETTABLEKS R15 R16 K28 ["Pages"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R16 R12 K29 ["dependencies"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K30 ["NetworkingCall"]
  GETTABLEKS R18 R15 K31 ["Hooks"]
  GETTABLEKS R17 R18 K32 ["dependencyArray"]
  GETTABLEKS R19 R15 K31 ["Hooks"]
  GETTABLEKS R18 R19 K33 ["useDispatch"]
  GETTABLEKS R19 R15 K34 ["UIBlox"]
  GETTABLEKS R21 R15 K31 ["Hooks"]
  GETTABLEKS R20 R21 K35 ["useLocalization"]
  GETTABLEKS R22 R15 K31 ["Hooks"]
  GETTABLEKS R21 R22 K36 ["useSelector"]
  GETTABLEKS R24 R19 K37 ["Core"]
  GETTABLEKS R23 R24 K38 ["Style"]
  GETTABLEKS R22 R23 K39 ["useStyle"]
  GETTABLEKS R25 R19 K40 ["App"]
  GETTABLEKS R24 R25 K41 ["Loading"]
  GETTABLEKS R23 R24 K42 ["LoadingSpinner"]
  GETIMPORT R24 K7 [require]
  GETTABLEKS R26 R12 K43 ["Analytics"]
  GETTABLEKS R25 R26 K44 ["useAnalytics"]
  CALL R24 1 1
  GETIMPORT R25 K7 [require]
  GETTABLEKS R27 R12 K43 ["Analytics"]
  GETTABLEKS R26 R27 K45 ["EventNamesEnum"]
  CALL R25 1 1
  GETIMPORT R26 K7 [require]
  GETTABLEKS R29 R12 K46 ["Components"]
  GETTABLEKS R28 R29 K47 ["CallHistory"]
  GETTABLEKS R27 R28 K48 ["CallHistoryItem"]
  CALL R26 1 1
  GETIMPORT R27 K7 [require]
  GETTABLEKS R30 R12 K46 ["Components"]
  GETTABLEKS R29 R30 K49 ["ContactListCommon"]
  GETTABLEKS R28 R29 K50 ["NoItemView"]
  CALL R27 1 1
  GETIMPORT R28 K7 [require]
  GETTABLEKS R31 R12 K46 ["Components"]
  GETTABLEKS R30 R31 K49 ["ContactListCommon"]
  GETTABLEKS R29 R30 K51 ["Constants"]
  CALL R28 1 1
  GETIMPORT R29 K7 [require]
  GETTABLEKS R31 R10 K23 ["Modules"]
  GETTABLEKS R30 R31 K52 ["BlockingUtility"]
  CALL R29 1 1
  GETIMPORT R30 K1 [game]
  LOADK R32 K53 ["Players"]
  NAMECALL R30 R30 K3 ["GetService"]
  CALL R30 2 1
  GETTABLEKS R31 R30 K54 ["LocalPlayer"]
  JUMPIFNOT R31 [+3]
  GETTABLEKS R32 R31 K55 ["UserId"]
  JUMPIF R32 [+1]
  LOADN R32 0
  DUPCLOSURE R33 K56 [PROTO_19]
  CAPTURE VAL R11
  CAPTURE VAL R24
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R27
  CAPTURE VAL R17
  CAPTURE VAL R28
  CAPTURE VAL R32
  CAPTURE VAL R29
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  RETURN R33 1