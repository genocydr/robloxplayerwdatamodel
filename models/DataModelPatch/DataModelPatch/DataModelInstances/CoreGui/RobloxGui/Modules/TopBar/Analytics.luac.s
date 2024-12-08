PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["_defaultProps"]
  MOVE R4 R1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["_target"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["_context"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K5 ["SendEventDeferred"]
  CALL R3 5 0
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_sendEvent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Analytics"]
  GETTABLEKS R3 R4 K2 ["EventNameTopBarButtonActivated"]
  DUPTABLE R4 K5 [{"button", "status"}]
  SETTABLEKS R0 R4 K3 ["button"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["Analytics"]
  GETTABLEKS R5 R6 K6 ["StatusActive"]
  JUMP [+5]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["Analytics"]
  GETTABLEKS R5 R6 K7 ["StatusInactive"]
  SETTABLEKS R5 R4 K4 ["status"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  DUPTABLE R1 K3 [{"_target", "_context", "_defaultProps"}]
  LOADK R2 K4 ["client"]
  SETTABLEKS R2 R1 K0 ["_target"]
  LOADK R2 K5 ["topbar"]
  SETTABLEKS R2 R1 K1 ["_context"]
  DUPTABLE R2 K9 [{"universeid", "placeid", "sessionid"}]
  GETIMPORT R5 K11 [game]
  GETTABLEKS R4 R5 K12 ["GameId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K14 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["universeid"]
  GETIMPORT R5 K11 [game]
  GETTABLEKS R4 R5 K15 ["PlaceId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K14 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["placeid"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K16 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["sessionid"]
  SETTABLEKS R2 R1 K2 ["_defaultProps"]
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K18 [setmetatable]
  CALL R0 2 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_defaultProps"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K19 ["GetPlaySessionId"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K20 ["playsessionid"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K21 ["_sendEvent"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K22 ["_onButtonActivated"]
  RETURN R0 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_onButtonActivated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Analytics"]
  GETTABLEKS R3 R4 K2 ["ChatButtonName"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_onButtonActivated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Analytics"]
  GETTABLEKS R2 R3 K2 ["MoreMenuButtonName"]
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_onButtonActivated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Analytics"]
  GETTABLEKS R3 R4 K2 ["InventoryButtonName"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_onButtonActivated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Analytics"]
  GETTABLEKS R3 R4 K2 ["LeaderboardButtonName"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_onButtonActivated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Analytics"]
  GETTABLEKS R3 R4 K2 ["EmotesButtonName"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_sendEvent"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Analytics"]
  GETTABLEKS R2 R3 K2 ["ShowGamepadNavigationDialog"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_sendEvent"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Analytics"]
  GETTABLEKS R2 R3 K2 ["DismissGamepadNavigationDialog"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R3 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["UserInputService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["Players"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K11 ["RbxAnalyticsServiceExposePlaySessionId"]
  NAMECALL R7 R7 K12 ["GetEngineFeature"]
  CALL R7 2 1
  GETIMPORT R8 K14 [require]
  GETTABLEKS R10 R1 K15 ["Packages"]
  GETTABLEKS R9 R10 K16 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R10 K18 [script]
  GETTABLEKS R9 R10 K19 ["Parent"]
  GETIMPORT R10 K14 [require]
  GETTABLEKS R11 R9 K20 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R13 R9 K21 ["Flags"]
  GETTABLEKS R12 R13 K22 ["GetFFlagEnableTopBarAnalytics"]
  CALL R11 1 1
  CALL R11 0 1
  NEWTABLE R12 0 0
  SETTABLEKS R12 R12 K23 ["__index"]
  DUPCLOSURE R13 K24 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K25 ["new"]
  DUPCLOSURE R13 K26 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K27 ["onChatButtonActivated"]
  DUPCLOSURE R13 K28 [PROTO_4]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K29 ["onMoreMenuActivated"]
  DUPCLOSURE R13 K30 [PROTO_5]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K31 ["onInventoryActivated"]
  DUPCLOSURE R13 K32 [PROTO_6]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K33 ["onLeaderboardActivated"]
  DUPCLOSURE R13 K34 [PROTO_7]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K35 ["onEmotesActivated"]
  DUPCLOSURE R13 K36 [PROTO_8]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K37 ["onShowGamepadNavigationDialog"]
  DUPCLOSURE R13 K38 [PROTO_9]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K39 ["onDismissGamepadNavigationDialog"]
  GETTABLEKS R13 R12 K25 ["new"]
  CALL R13 0 1
  SETTABLEKS R13 R12 K40 ["default"]
  RETURN R12 1
