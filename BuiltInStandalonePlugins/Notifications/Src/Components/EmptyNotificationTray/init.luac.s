PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnRetry"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Loading"]
  JUMPIFNOT R0 [+26]
  DUPTABLE R0 K2 [{"LoadingContent"}]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K6 [{"Position", "AnchorPoint"}]
  GETIMPORT R4 K9 [UDim2.new]
  LOADK R5 K10 [0.5]
  LOADN R6 0
  LOADK R7 K10 [0.5]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Position"]
  GETIMPORT R4 K12 [Vector2.new]
  LOADK R5 K10 [0.5]
  LOADK R6 K10 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["AnchorPoint"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["LoadingContent"]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K13 ["OnLoadError"]
  JUMPIFNOT R0 [+142]
  DUPTABLE R0 K15 [{"ErrorState"}]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K16 ["Frame"]
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K17 ["Tag"]
  LOADK R5 K18 ["Component-EmptyNotificationTray-Centering Component-EmptyNotificationTray-ErrorLayout"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K22 [{"ErrorImage", "TextContent", "RefreshButton"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K23 ["ImageLabel"]
  DUPTABLE R7 K25 [{"LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K24 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K19 ["ErrorImage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K16 ["Frame"]
  NEWTABLE R7 8 0
  LOADN R8 2
  SETTABLEKS R8 R7 K24 ["LayoutOrder"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K26 ["Size"]
  GETIMPORT R8 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K28 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K31 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K32 ["BorderSizePixel"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K17 ["Tag"]
  LOADK R9 K33 ["X-Column"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K36 [{"Mainline", "Subline"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K37 ["TextLabel"]
  NEWTABLE R11 4 0
  LOADN R12 1
  SETTABLEKS R12 R11 K24 ["LayoutOrder"]
  GETUPVAL R12 3
  LOADK R14 K38 ["EmptyNotificationTray"]
  LOADK R15 K39 ["LoadErrorMain"]
  NAMECALL R12 R12 K40 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K41 ["Text"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["Tag"]
  LOADK R13 K42 ["Component-EmptyNotificationTray-MainText"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["Mainline"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K37 ["TextLabel"]
  NEWTABLE R11 4 0
  LOADN R12 2
  SETTABLEKS R12 R11 K24 ["LayoutOrder"]
  GETUPVAL R12 3
  LOADK R14 K38 ["EmptyNotificationTray"]
  LOADK R15 K43 ["LoadErrorSub"]
  NAMECALL R12 R12 K40 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K41 ["Text"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["Tag"]
  LOADK R13 K44 ["Component-EmptyNotificationTray-SubText"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K35 ["Subline"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K20 ["TextContent"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K45 ["TextButton"]
  NEWTABLE R7 4 0
  LOADN R8 3
  SETTABLEKS R8 R7 K24 ["LayoutOrder"]
  GETUPVAL R8 3
  LOADK R10 K38 ["EmptyNotificationTray"]
  LOADK R11 K46 ["RefreshAction"]
  NAMECALL R8 R8 K40 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K41 ["Text"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K47 ["Event"]
  GETTABLEKS R8 R9 K48 ["MouseButton1Click"]
  GETUPVAL R9 4
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["RefreshButton"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K14 ["ErrorState"]
  RETURN R0 1
  DUPTABLE R0 K50 [{"EmptyState"}]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K16 ["Frame"]
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K17 ["Tag"]
  LOADK R5 K51 ["Component-EmptyNotificationTray-Centering"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K53 [{"EmptyImage", "TextLabel"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K23 ["ImageLabel"]
  DUPTABLE R7 K25 [{"LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K24 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K52 ["EmptyImage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K37 ["TextLabel"]
  NEWTABLE R7 4 0
  LOADN R8 2
  SETTABLEKS R8 R7 K24 ["LayoutOrder"]
  GETUPVAL R8 3
  LOADK R10 K38 ["EmptyNotificationTray"]
  LOADK R11 K54 ["NoNewNotifications"]
  NAMECALL R8 R8 K40 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K41 ["Text"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K17 ["Tag"]
  LOADK R9 K44 ["Component-EmptyNotificationTray-SubText"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K37 ["TextLabel"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K49 ["EmptyState"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K2 ["OnRetry"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useMemo"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K4 ["Loading"]
  GETTABLEKS R7 R0 K5 ["OnLoadError"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  LOADK R5 K7 ["Frame"]
  NEWTABLE R6 2 0
  GETTABLEKS R7 R0 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["Tag"]
  LOADK R8 K10 ["Component-EmptyNotificationTray"]
  SETTABLE R8 R6 R7
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["ContextServices"]
  GETTABLEKS R3 R4 K9 ["Localization"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["LoadingIndicator"]
  DUPCLOSURE R6 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R6 1
