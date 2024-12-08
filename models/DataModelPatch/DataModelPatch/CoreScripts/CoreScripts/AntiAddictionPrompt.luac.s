PROTO_0:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["SelectedCoreObject"]
  GETIMPORT R0 K2 [game]
  NAMECALL R0 R0 K3 ["Shutdown"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K2 ["response"]
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K0 ["type"]
  GETTABLEKS R4 R0 K2 ["response"]
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K3 ["messages"]
  DUPTABLE R3 K6 [{"State", "Messages"}]
  SETTABLEKS R1 R3 K4 ["State"]
  SETTABLEKS R2 R3 K5 ["Messages"]
  RETURN R3 1

PROTO_2:
  LOADK R2 K0 ["mesasgeId="]
  MOVE R3 R0
  CONCAT R1 R2 R3
  GETUPVAL R7 0
  GETTABLEKS R3 R7 K1 ["RCS_URL"]
  LOADK R4 K2 ["screen-time-api/v1/messages/mark-read"]
  LOADK R5 K3 ["?"]
  MOVE R6 R1
  CONCAT R2 R3 R6
  GETIMPORT R3 K5 [pcall]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["GetAsyncFullUrl"]
  GETUPVAL R5 1
  MOVE R6 R2
  CALL R3 3 2
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R7 K4 [{"id", "message"}]
  GETTABLEKS R8 R6 K2 ["id"]
  SETTABLEKS R8 R7 K2 ["id"]
  GETTABLEKS R8 R6 K5 ["text"]
  SETTABLEKS R8 R7 K3 ["message"]
  GETTABLEKS R9 R0 K6 ["pendingResolveMessage"]
  FASTCALL2 TABLE_INSERT R9 R7 [+4]
  MOVE R10 R7
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-18]
  NAMECALL R2 R0 K10 ["processNext"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["id"]
  LOADK R2 K1 ["mesasgeId="]
  MOVE R3 R0
  CONCAT R1 R2 R3
  GETUPVAL R7 1
  GETTABLEKS R3 R7 K2 ["RCS_URL"]
  LOADK R4 K3 ["screen-time-api/v1/messages/mark-read"]
  LOADK R5 K4 ["?"]
  MOVE R6 R1
  CONCAT R2 R3 R6
  GETIMPORT R3 K6 [pcall]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["GetAsyncFullUrl"]
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R3 3 2
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["displaying"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K3 [table.remove]
  GETTABLEKS R2 R0 K4 ["pendingResolveMessage"]
  LOADN R3 1
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K5 ["resolvedMessage"]
  GETTABLEKS R4 R1 K6 ["id"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K7 ["processNext"]
  CALL R2 1 0
  RETURN R0 0
  SETTABLEKS R1 R0 K0 ["displaying"]
  GETTABLEKS R2 R0 K8 ["displayMessageCallback"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K8 ["displayMessageCallback"]
  GETTABLEKS R3 R1 K9 ["message"]
  CALL R2 1 0
  GETIMPORT R2 K11 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["resolvedMessage"]
  GETTABLEKS R3 R0 K1 ["displaying"]
  GETTABLEKS R2 R3 K2 ["id"]
  GETTABLEKS R4 R0 K1 ["displaying"]
  GETTABLEKS R3 R4 K3 ["message"]
  SETTABLE R3 R1 R2
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["displaying"]
  NAMECALL R1 R0 K4 ["processNext"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_open"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_close"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["resolve"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AbsoluteSize"]
  GETTABLEKS R0 R1 K1 ["X"]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+20]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K2 ["Y"]
  GETUPVAL R2 3
  JUMPIFNOTEQ R2 R0 [+4]
  GETUPVAL R2 4
  JUMPIFEQ R2 R1 [+19]
  SETUPVAL R0 3
  SETUPVAL R1 4
  GETUPVAL R2 0
  GETUPVAL R4 3
  GETUPVAL R5 4
  NAMECALL R2 R2 K3 ["resizeWidthAndHeight"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R1 3
  JUMPIFEQ R1 R0 [+7]
  SETUPVAL R0 3
  GETUPVAL R1 0
  GETUPVAL R3 3
  NAMECALL R1 R1 K4 ["resizeWidth"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R4 R0 K2 ["response"]
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K0 ["type"]
  GETTABLEKS R5 R0 K2 ["response"]
  GETTABLEKS R4 R5 K1 ["state"]
  GETTABLEKS R3 R4 K3 ["messages"]
  DUPTABLE R1 K6 [{"State", "Messages"}]
  SETTABLEKS R2 R1 K4 ["State"]
  SETTABLEKS R3 R1 K5 ["Messages"]
  GETTABLEKS R2 R1 K4 ["State"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Lockout"]
  JUMPIFNOTEQ R2 R3 [+16]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  NAMECALL R2 R2 K8 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["SelectedCoreObject"]
  GETIMPORT R2 K11 [game]
  NAMECALL R2 R2 K12 ["Shutdown"]
  CALL R2 1 0
  GETUPVAL R2 3
  GETTABLEKS R4 R1 K5 ["Messages"]
  NAMECALL R2 R2 K13 ["update"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["namespace"]
  JUMPIFNOTEQKS R1 K1 ["AntiAddictionNotifications"] [+52]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K2 ["detail"]
  NAMECALL R1 R1 K3 ["JSONDecode"]
  CALL R1 2 1
  GETTABLEKS R5 R1 K6 ["response"]
  GETTABLEKS R4 R5 K5 ["state"]
  GETTABLEKS R3 R4 K4 ["type"]
  GETTABLEKS R6 R1 K6 ["response"]
  GETTABLEKS R5 R6 K5 ["state"]
  GETTABLEKS R4 R5 K7 ["messages"]
  DUPTABLE R2 K10 [{"State", "Messages"}]
  SETTABLEKS R3 R2 K8 ["State"]
  SETTABLEKS R4 R2 K9 ["Messages"]
  GETTABLEKS R3 R2 K8 ["State"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["Lockout"]
  JUMPIFNOTEQ R3 R4 [+16]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 2
  NAMECALL R3 R3 K12 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 3
  LOADNIL R4
  SETTABLEKS R4 R3 K13 ["SelectedCoreObject"]
  GETIMPORT R3 K15 [game]
  NAMECALL R3 R3 K16 ["Shutdown"]
  CALL R3 1 0
  GETUPVAL R3 4
  GETTABLEKS R5 R2 K9 ["Messages"]
  NAMECALL R3 R3 K17 ["update"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K7 ["RobloxGui"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["NotificationService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K9 ["HttpService"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K10 ["HttpRbxApiService"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R4 K13 ["Modules"]
  GETTABLEKS R9 R10 K14 ["ErrorPrompt"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R4 K13 ["Modules"]
  GETTABLEKS R11 R12 K15 ["Common"]
  GETTABLEKS R10 R11 K16 ["Url"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R4 K13 ["Modules"]
  GETTABLEKS R12 R13 K17 ["Flags"]
  GETTABLEKS R11 R12 K18 ["FFlagErrorPromptResizesHeight"]
  CALL R10 1 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R12 K22 [{"Warning", "Lockout"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K20 ["Warning"]
  LOADN R13 2
  SETTABLEKS R13 R12 K21 ["Lockout"]
  DUPCLOSURE R13 K23 [PROTO_1]
  DUPCLOSURE R14 K24 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R7
  DUPTABLE R15 K32 [{"pendingResolveMessage", "displaying", "resolvedMessage", "displayMessageCallback", "update", "processNext", "resolve"}]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K25 ["pendingResolveMessage"]
  LOADNIL R16
  SETTABLEKS R16 R15 K26 ["displaying"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K27 ["resolvedMessage"]
  LOADNIL R16
  SETTABLEKS R16 R15 K28 ["displayMessageCallback"]
  DUPCLOSURE R16 K33 [PROTO_3]
  SETTABLEKS R16 R15 K29 ["update"]
  DUPCLOSURE R16 K34 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R16 R15 K30 ["processNext"]
  DUPCLOSURE R16 K35 [PROTO_6]
  SETTABLEKS R16 R15 K31 ["resolve"]
  DUPTABLE R16 K39 [{"MessageTextScaled", "HideErrorCode", "MenuIsOpenKey"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K36 ["MessageTextScaled"]
  LOADB R17 1
  SETTABLEKS R17 R16 K37 ["HideErrorCode"]
  LOADK R17 K40 ["AnitAddictionPrompt"]
  SETTABLEKS R17 R16 K38 ["MenuIsOpenKey"]
  GETTABLEKS R17 R8 K41 ["new"]
  LOADK R18 K42 ["Default"]
  MOVE R19 R16
  CALL R17 2 1
  MOVE R20 R4
  NAMECALL R18 R17 K43 ["setParent"]
  CALL R18 2 0
  DUPCLOSURE R18 K44 [PROTO_7]
  CAPTURE VAL R17
  DUPCLOSURE R19 K45 [PROTO_8]
  CAPTURE VAL R17
  CAPTURE VAL R15
  NEWTABLE R20 0 1
  DUPTABLE R21 K51 [{"Text", "LocalizationKey", "LayoutOrder", "Callback", "Primary"}]
  LOADK R22 K52 ["OK"]
  SETTABLEKS R22 R21 K46 ["Text"]
  LOADK R22 K53 ["InGame.CommonUI.Button.Ok"]
  SETTABLEKS R22 R21 K47 ["LocalizationKey"]
  LOADN R22 1
  SETTABLEKS R22 R21 K48 ["LayoutOrder"]
  SETTABLEKS R19 R21 K49 ["Callback"]
  LOADB R22 1
  SETTABLEKS R22 R21 K50 ["Primary"]
  SETLIST R20 R21 1 [1]
  SETTABLEKS R18 R15 K28 ["displayMessageCallback"]
  MOVE R23 R20
  NAMECALL R21 R17 K54 ["updateButtons"]
  CALL R21 2 0
  LOADK R23 K20 ["Warning"]
  LOADK R24 K55 ["InGame.CommonUI.Title.Warning"]
  NAMECALL R21 R17 K56 ["setErrorTitle"]
  CALL R21 3 0
  GETTABLEKS R22 R4 K57 ["AbsoluteSize"]
  GETTABLEKS R21 R22 K58 ["X"]
  LOADNIL R22
  MOVE R23 R10
  CALL R23 0 1
  JUMPIFNOT R23 [+4]
  GETTABLEKS R23 R4 K57 ["AbsoluteSize"]
  GETTABLEKS R22 R23 K59 ["Y"]
  NEWCLOSURE R23 P8
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE REF R21
  CAPTURE REF R22
  LOADK R26 K57 ["AbsoluteSize"]
  NAMECALL R24 R4 K60 ["GetPropertyChangedSignal"]
  CALL R24 2 1
  MOVE R26 R23
  NAMECALL R24 R24 K61 ["connect"]
  CALL R24 2 0
  MOVE R24 R23
  CALL R24 0 0
  LOADNIL R24
  NEWCLOSURE R25 P9
  CAPTURE VAL R12
  CAPTURE REF R24
  CAPTURE VAL R1
  CAPTURE VAL R15
  GETTABLEKS R26 R5 K62 ["RobloxEventReceived"]
  NEWCLOSURE R28 P10
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE REF R24
  CAPTURE VAL R1
  CAPTURE VAL R15
  NAMECALL R26 R26 K63 ["Connect"]
  CALL R26 2 1
  MOVE R24 R26
  CLOSEUPVALS R21
  RETURN R0 0