PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R2 R1 K2 ["Settings"]
  LOADK R4 K3 ["Plugin"]
  NAMECALL R2 R2 K4 ["get"]
  CALL R2 2 1
  NAMECALL R3 R2 K5 ["getLastAnnouncementViewedKey"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["getAnnouncementConfiguration"]
  CALL R4 0 1
  GETTABLEKS R6 R4 K8 ["Date"]
  ORK R5 R6 K7 [""]
  LOADB R6 0
  LOADB R7 0
  LOADB R8 0
  GETTABLEKS R9 R4 K9 ["IXPComparisonDefinitionKey"]
  GETTABLEKS R10 R4 K10 ["IXPComparisonVariableKey"]
  JUMPIFEQKNIL R9 [+20]
  JUMPIFEQKS R9 K7 [""] [+18]
  JUMPIFEQKNIL R10 [+16]
  JUMPIFEQKS R10 K7 [""] [+14]
  GETTABLEKS R11 R1 K11 ["checkUserInIXP"]
  LOADB R12 0
  JUMPIFEQKNIL R11 [+7]
  MOVE R12 R11
  GETTABLEKS R13 R1 K12 ["IXP"]
  MOVE R14 R9
  MOVE R15 R10
  CALL R12 3 1
  MOVE R8 R12
  JUMP [+1]
  LOADB R8 1
  JUMPIFEQKS R5 K7 [""] [+69]
  LOADK R13 K13 ["(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"]
  NAMECALL R11 R5 K14 ["match"]
  CALL R11 2 6
  DUPTABLE R17 K21 [{"year", "month", "day", "hour", "min", "sec"}]
  FASTCALL1 TONUMBER R11 [+3]
  MOVE R19 R11
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K15 ["year"]
  FASTCALL1 TONUMBER R12 [+3]
  MOVE R19 R12
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K16 ["month"]
  FASTCALL1 TONUMBER R13 [+3]
  MOVE R19 R13
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K17 ["day"]
  FASTCALL1 TONUMBER R14 [+3]
  MOVE R19 R14
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K18 ["hour"]
  FASTCALL1 TONUMBER R15 [+3]
  MOVE R19 R15
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K19 ["min"]
  FASTCALL1 TONUMBER R16 [+3]
  MOVE R19 R16
  GETIMPORT R18 K23 [tonumber]
  CALL R18 1 1
  SETTABLEKS R18 R17 K20 ["sec"]
  GETIMPORT R18 K26 [os.time]
  MOVE R19 R17
  CALL R18 1 1
  GETIMPORT R20 K29 [os.difftime]
  GETIMPORT R21 K26 [os.time]
  CALL R21 0 1
  MOVE R22 R18
  CALL R20 2 1
  DIVK R19 R20 K27 [86400]
  FASTCALL1 MATH_FLOOR R19 [+3]
  MOVE R21 R19
  GETIMPORT R20 K32 [math.floor]
  CALL R20 1 1
  LOADN R21 30
  JUMPIFNOTLT R21 R20 [+2]
  LOADB R6 1
  GETTABLEKS R11 R4 K33 ["LatestUserId"]
  JUMPIFNOT R11 [+14]
  JUMPIFEQKS R11 K7 [""] [+13]
  FASTCALL1 TONUMBER R11 [+3]
  MOVE R13 R11
  GETIMPORT R12 K23 [tonumber]
  CALL R12 1 1
  MOVE R11 R12
  GETUPVAL R12 2
  CALL R12 0 1
  JUMPIFLT R11 R12 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETTABLEKS R12 R0 K34 ["isEnabled"]
  JUMPIFNOT R12 [+11]
  LOADB R12 0
  JUMPIFEQKS R5 K7 [""] [+9]
  LOADB R12 0
  JUMPIFEQ R3 R5 [+6]
  NOT R12 R6
  JUMPIFNOT R12 [+3]
  NOT R12 R7
  JUMPIFNOT R12 [+1]
  MOVE R12 R8
  RETURN R12 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["isEnabled"]
  JUMPIFNOT R1 [+5]
  DUPTABLE R1 K1 [{"isEnabled"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isEnabled"]
  RETURN R1 1
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["getAnnouncementConfiguration"]
  CALL R1 0 1
  GETTABLEKS R3 R1 K3 ["Date"]
  ORK R2 R3 K2 [""]
  GETTABLEKS R3 R0 K4 ["Modal"]
  GETTABLEKS R4 R3 K5 ["onAssetPreviewToggled"]
  LOADB R5 0
  CALL R4 1 0
  GETTABLEKS R4 R0 K6 ["Settings"]
  LOADK R6 K7 ["Plugin"]
  NAMECALL R4 R4 K8 ["get"]
  CALL R4 2 1
  MOVE R7 R2
  NAMECALL R5 R4 K9 ["setLastAnnouncementViewedKey"]
  CALL R5 2 0
  GETUPVAL R5 0
  DUPCLOSURE R7 K10 [PROTO_1]
  NAMECALL R5 R5 K11 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getAnnouncementConfiguration"]
  CALL R0 0 1
  GETTABLEKS R1 R0 K1 ["LinkLocation"]
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["OpenBrowserWindow"]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["getAnnouncementConfigurationOrDefault"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["AnnouncementLinkClicked"]
  GETTABLEKS R4 R2 K5 ["ButtonKey"]
  GETTABLEKS R5 R2 K6 ["Date"]
  GETTABLEKS R6 R2 K7 ["DescriptionKey"]
  GETTABLEKS R7 R2 K8 ["HeaderKey"]
  GETTABLEKS R8 R2 K9 ["LinkKey"]
  GETTABLEKS R9 R2 K1 ["LinkLocation"]
  CALL R3 6 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getAnnouncementConfigurationOrDefault"]
  CALL R0 0 1
  GETIMPORT R1 K2 [tick]
  CALL R1 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["openStartTime"]
  SUB R4 R1 R2
  MULK R3 R4 K5 [1000]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["AnnouncementClosed"]
  GETTABLEKS R5 R0 K7 ["ButtonKey"]
  GETTABLEKS R6 R0 K8 ["Date"]
  GETTABLEKS R7 R0 K9 ["DescriptionKey"]
  GETTABLEKS R8 R0 K10 ["HeaderKey"]
  GETTABLEKS R9 R0 K11 ["LinkKey"]
  GETTABLEKS R10 R0 K12 ["LinkLocation"]
  MOVE R11 R3
  CALL R4 7 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["onClose"]
  CALL R4 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getAnnouncementConfigurationOrDefault"]
  CALL R0 0 1
  GETIMPORT R1 K2 [tick]
  CALL R1 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["openStartTime"]
  SUB R4 R1 R2
  MULK R3 R4 K5 [1000]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["AnnouncementAcknowledged"]
  GETTABLEKS R5 R0 K7 ["ButtonKey"]
  GETTABLEKS R6 R0 K8 ["Date"]
  GETTABLEKS R7 R0 K9 ["DescriptionKey"]
  GETTABLEKS R8 R0 K10 ["HeaderKey"]
  GETTABLEKS R9 R0 K11 ["LinkKey"]
  GETTABLEKS R10 R0 K12 ["LinkLocation"]
  MOVE R11 R3
  CALL R4 7 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["onClose"]
  CALL R4 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnnouncementConfiguration"]
  CALL R1 0 1
  DUPTABLE R2 K8 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
  GETTABLEKS R4 R1 K1 ["ButtonKey"]
  ORK R3 R4 K9 ["Button_Default"]
  SETTABLEKS R3 R2 K1 ["ButtonKey"]
  GETTABLEKS R4 R1 K2 ["Date"]
  ORK R3 R4 K10 [""]
  SETTABLEKS R3 R2 K2 ["Date"]
  GETTABLEKS R4 R1 K3 ["DescriptionKey"]
  ORK R3 R4 K10 [""]
  SETTABLEKS R3 R2 K3 ["DescriptionKey"]
  GETTABLEKS R4 R1 K4 ["HeaderKey"]
  ORK R3 R4 K11 ["Header_Default"]
  SETTABLEKS R3 R2 K4 ["HeaderKey"]
  GETTABLEKS R3 R1 K5 ["Image"]
  SETTABLEKS R3 R2 K5 ["Image"]
  GETTABLEKS R4 R1 K6 ["LinkKey"]
  ORK R3 R4 K12 ["LinkText_Default"]
  SETTABLEKS R3 R2 K6 ["LinkKey"]
  GETTABLEKS R3 R1 K7 ["LinkLocation"]
  SETTABLEKS R3 R2 K7 ["LinkLocation"]
  RETURN R2 1

PROTO_7:
  DUPTABLE R2 K2 [{"isEnabled", "openStartTime"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isEnabled"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["openStartTime"]
  SETTABLEKS R2 R0 K3 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K4 ["shouldShowAnnouncementDialog"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K5 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K6 ["onClickLink"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K7 ["onClickXButton"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K8 ["onClickAcknowledgeButton"]
  DUPCLOSURE R2 K9 [PROTO_6]
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K10 ["getAnnouncementConfigurationOrDefault"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["shouldShowAnnouncementDialog"]
  CALL R1 0 1
  JUMPIFNOT R1 [+36]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["Modal"]
  GETTABLEKS R2 R1 K3 ["onAssetPreviewToggled"]
  LOADB R3 1
  CALL R2 1 0
  DUPTABLE R4 K5 [{"openStartTime"}]
  GETIMPORT R5 K7 [tick]
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["openStartTime"]
  NAMECALL R2 R0 K8 ["setState"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K9 ["getAnnouncementConfigurationOrDefault"]
  CALL R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["AnnouncementViewed"]
  GETTABLEKS R4 R2 K11 ["ButtonKey"]
  GETTABLEKS R5 R2 K12 ["Date"]
  GETTABLEKS R6 R2 K13 ["DescriptionKey"]
  GETTABLEKS R7 R2 K14 ["HeaderKey"]
  GETTABLEKS R8 R2 K15 ["LinkKey"]
  GETTABLEKS R9 R2 K16 ["LinkLocation"]
  CALL R3 6 0
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["shouldShowAnnouncementDialog"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R4 R3 K4 ["Localization"]
  GETTABLEKS R5 R3 K5 ["Settings"]
  LOADK R7 K6 ["Plugin"]
  NAMECALL R5 R5 K7 ["get"]
  CALL R5 2 1
  GETTABLEKS R6 R3 K8 ["Stylizer"]
  GETTABLEKS R7 R3 K9 ["WrapperProps"]
  GETTABLEKS R8 R6 K10 ["announcementDialog"]
  GETTABLEKS R9 R0 K11 ["getAnnouncementConfigurationOrDefault"]
  CALL R9 0 1
  GETTABLEKS R10 R9 K12 ["ButtonKey"]
  GETTABLEKS R11 R9 K13 ["DescriptionKey"]
  GETTABLEKS R12 R9 K14 ["HeaderKey"]
  GETTABLEKS R13 R9 K15 ["Image"]
  GETTABLEKS R14 R9 K16 ["LinkKey"]
  GETTABLEKS R15 R9 K17 ["LinkLocation"]
  LOADK R18 K18 ["Announcement"]
  MOVE R19 R10
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  LOADK R19 K18 ["Announcement"]
  MOVE R20 R11
  NAMECALL R17 R4 K19 ["getText"]
  CALL R17 3 1
  LOADK R20 K18 ["Announcement"]
  MOVE R21 R12
  NAMECALL R18 R4 K19 ["getText"]
  CALL R18 3 1
  LOADK R21 K18 ["Announcement"]
  MOVE R22 R14
  NAMECALL R19 R4 K19 ["getText"]
  CALL R19 3 1
  GETTABLEKS R20 R3 K20 ["AbsoluteSize"]
  GETTABLEKS R22 R20 K21 ["X"]
  LOADN R23 144
  JUMPIFLT R23 R22 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  LOADNIL R22
  JUMPIFNOT R21 [+7]
  GETIMPORT R23 K23 [UDim.new]
  LOADN R24 0
  LOADN R25 144
  CALL R23 2 1
  MOVE R22 R23
  JUMP [+6]
  GETIMPORT R23 K23 [UDim.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  MOVE R22 R23
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K24 ["createElement"]
  GETUPVAL R24 2
  DUPTABLE R25 K26 [{"OnFocusLost"}]
  DUPCLOSURE R26 K27 [PROTO_9]
  SETTABLEKS R26 R25 K25 ["OnFocusLost"]
  DUPTABLE R26 K29 [{"Overlay"}]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K24 ["createElement"]
  LOADK R28 K30 ["Frame"]
  DUPTABLE R29 K34 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETTABLEKS R30 R8 K35 ["overlayColor"]
  SETTABLEKS R30 R29 K31 ["BackgroundColor3"]
  GETTABLEKS R30 R8 K36 ["overlayTransparency"]
  SETTABLEKS R30 R29 K32 ["BackgroundTransparency"]
  GETIMPORT R30 K38 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K33 ["Size"]
  DUPTABLE R30 K40 [{"Contents"}]
  GETUPVAL R32 1
  GETTABLEKS R31 R32 K24 ["createElement"]
  GETUPVAL R32 3
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K41 ["join"]
  DUPTABLE R34 K48 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R35 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R35 R34 K42 ["AutomaticSize"]
  GETIMPORT R35 K53 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R35 R34 K43 ["HorizontalAlignment"]
  GETIMPORT R35 K56 [Enum.FillDirection.Vertical]
  SETTABLEKS R35 R34 K44 ["Layout"]
  LOADN R35 20
  SETTABLEKS R35 R34 K45 ["Padding"]
  GETIMPORT R35 K38 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K33 ["Size"]
  LOADN R35 10
  SETTABLEKS R35 R34 K46 ["Spacing"]
  GETIMPORT R35 K58 [Enum.VerticalAlignment.Top]
  SETTABLEKS R35 R34 K47 ["VerticalAlignment"]
  MOVE R35 R7
  CALL R33 2 1
  DUPTABLE R34 K61 [{"CloseButtonContainer", "AnnouncementDialog"}]
  GETUPVAL R36 1
  GETTABLEKS R35 R36 K24 ["createElement"]
  GETUPVAL R36 3
  DUPTABLE R37 K63 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
  GETIMPORT R38 K65 [Enum.AutomaticSize.XY]
  SETTABLEKS R38 R37 K42 ["AutomaticSize"]
  GETIMPORT R38 K67 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R38 R37 K43 ["HorizontalAlignment"]
  GETIMPORT R38 K69 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K44 ["Layout"]
  NAMECALL R38 R2 K70 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K62 ["LayoutOrder"]
  GETIMPORT R38 K38 [UDim2.new]
  MOVE R39 R22
  GETIMPORT R40 K23 [UDim.new]
  LOADN R41 0
  LOADN R42 0
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K33 ["Size"]
  DUPTABLE R38 K72 [{"CloseButton"}]
  GETUPVAL R40 1
  GETTABLEKS R39 R40 K24 ["createElement"]
  LOADK R40 K73 ["ImageButton"]
  NEWTABLE R41 8 0
  LOADB R42 0
  SETTABLEKS R42 R41 K74 ["AutoButtonColor"]
  LOADN R42 1
  SETTABLEKS R42 R41 K32 ["BackgroundTransparency"]
  GETUPVAL R43 5
  GETTABLEKS R42 R43 K75 ["CLOSE_ICON"]
  SETTABLEKS R42 R41 K15 ["Image"]
  GETTABLEKS R42 R8 K76 ["closeIconColor"]
  SETTABLEKS R42 R41 K77 ["ImageColor3"]
  GETIMPORT R42 K79 [UDim2.fromOffset]
  LOADN R43 28
  LOADN R44 28
  CALL R42 2 1
  SETTABLEKS R42 R41 K33 ["Size"]
  LOADN R42 1
  SETTABLEKS R42 R41 K62 ["LayoutOrder"]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K80 ["Event"]
  GETTABLEKS R42 R43 K81 ["Activated"]
  GETTABLEKS R43 R0 K82 ["onClickXButton"]
  SETTABLE R43 R41 R42
  DUPTABLE R42 K84 [{"HoverArea"}]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K24 ["createElement"]
  GETUPVAL R44 6
  DUPTABLE R45 K86 [{"Cursor"}]
  LOADK R46 K87 ["PointingHand"]
  SETTABLEKS R46 R45 K85 ["Cursor"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K83 ["HoverArea"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K71 ["CloseButton"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K59 ["CloseButtonContainer"]
  GETUPVAL R36 1
  GETTABLEKS R35 R36 K24 ["createElement"]
  LOADK R36 K30 ["Frame"]
  DUPTABLE R37 K88 [{"AutomaticSize", "BackgroundColor3", "LayoutOrder", "Size"}]
  GETIMPORT R38 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R38 R37 K42 ["AutomaticSize"]
  GETTABLEKS R38 R8 K89 ["backgroundColor"]
  SETTABLEKS R38 R37 K31 ["BackgroundColor3"]
  NAMECALL R38 R2 K70 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K62 ["LayoutOrder"]
  GETIMPORT R38 K38 [UDim2.new]
  MOVE R39 R22
  GETIMPORT R40 K23 [UDim.new]
  LOADN R41 0
  LOADN R42 0
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K33 ["Size"]
  DUPTABLE R38 K40 [{"Contents"}]
  GETUPVAL R40 1
  GETTABLEKS R39 R40 K24 ["createElement"]
  GETUPVAL R40 3
  DUPTABLE R41 K90 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing", "Size", "VerticalAlignment"}]
  GETIMPORT R42 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R42 R41 K42 ["AutomaticSize"]
  GETIMPORT R42 K67 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R42 R41 K43 ["HorizontalAlignment"]
  GETIMPORT R42 K56 [Enum.FillDirection.Vertical]
  SETTABLEKS R42 R41 K44 ["Layout"]
  DUPTABLE R42 K93 [{"Bottom", "Left", "Right", "Top"}]
  LOADN R43 20
  SETTABLEKS R43 R42 K91 ["Bottom"]
  LOADN R43 16
  SETTABLEKS R43 R42 K92 ["Left"]
  LOADN R43 16
  SETTABLEKS R43 R42 K66 ["Right"]
  LOADN R43 20
  SETTABLEKS R43 R42 K57 ["Top"]
  SETTABLEKS R42 R41 K45 ["Padding"]
  LOADN R42 10
  SETTABLEKS R42 R41 K46 ["Spacing"]
  GETIMPORT R42 K38 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 0
  CALL R42 4 1
  SETTABLEKS R42 R41 K33 ["Size"]
  GETIMPORT R42 K58 [Enum.VerticalAlignment.Top]
  SETTABLEKS R42 R41 K47 ["VerticalAlignment"]
  DUPTABLE R42 K98 [{"Header", "Description", "ActionContainer", "ImageContainer"}]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K24 ["createElement"]
  GETUPVAL R44 7
  DUPTABLE R45 K105 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R46 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K42 ["AutomaticSize"]
  GETIMPORT R46 K107 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R46 R45 K99 ["Font"]
  NAMECALL R46 R2 K70 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K62 ["LayoutOrder"]
  LOADB R46 1
  SETTABLEKS R46 R45 K100 ["RichText"]
  GETIMPORT R46 K38 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K33 ["Size"]
  ORK R46 R18 K108 [""]
  SETTABLEKS R46 R45 K101 ["Text"]
  GETTABLEKS R46 R8 K109 ["headerTextColor"]
  SETTABLEKS R46 R45 K102 ["TextColor"]
  LOADB R46 1
  SETTABLEKS R46 R45 K103 ["TextWrapped"]
  GETIMPORT R46 K110 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K104 ["TextXAlignment"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K94 ["Header"]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K24 ["createElement"]
  GETUPVAL R44 7
  DUPTABLE R45 K111 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R46 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K42 ["AutomaticSize"]
  NAMECALL R46 R2 K70 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K62 ["LayoutOrder"]
  LOADB R46 1
  SETTABLEKS R46 R45 K100 ["RichText"]
  GETIMPORT R46 K38 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K33 ["Size"]
  ORK R46 R17 K108 [""]
  SETTABLEKS R46 R45 K101 ["Text"]
  GETTABLEKS R46 R8 K112 ["descriptionColor"]
  SETTABLEKS R46 R45 K102 ["TextColor"]
  LOADB R46 1
  SETTABLEKS R46 R45 K103 ["TextWrapped"]
  GETIMPORT R46 K110 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K104 ["TextXAlignment"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K95 ["Description"]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K24 ["createElement"]
  GETUPVAL R44 3
  DUPTABLE R45 K113 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
  GETIMPORT R46 K65 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K42 ["AutomaticSize"]
  NAMECALL R46 R2 K70 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K62 ["LayoutOrder"]
  DUPTABLE R46 K114 [{"Top"}]
  LOADN R47 10
  SETTABLEKS R47 R46 K57 ["Top"]
  SETTABLEKS R46 R45 K45 ["Padding"]
  GETIMPORT R46 K38 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K33 ["Size"]
  DUPTABLE R46 K117 [{"LinkContainer", "Button"}]
  JUMPIFNOT R15 [+62]
  JUMPIFEQKS R15 K108 [""] [+61]
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K24 ["createElement"]
  GETUPVAL R48 3
  DUPTABLE R49 K118 [{"AutomaticSize", "LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
  GETIMPORT R50 K119 [Enum.AutomaticSize.X]
  SETTABLEKS R50 R49 K42 ["AutomaticSize"]
  NAMECALL R50 R2 K70 ["getNextOrder"]
  CALL R50 1 1
  SETTABLEKS R50 R49 K62 ["LayoutOrder"]
  GETIMPORT R50 K38 [UDim2.new]
  LOADN R51 0
  LOADN R52 0
  LOADN R53 0
  GETUPVAL R56 8
  GETTABLEKS R55 R56 K50 ["Y"]
  GETTABLEKS R54 R55 K120 ["Offset"]
  CALL R50 4 1
  SETTABLEKS R50 R49 K33 ["Size"]
  GETIMPORT R50 K69 [Enum.FillDirection.Horizontal]
  SETTABLEKS R50 R49 K44 ["Layout"]
  GETIMPORT R50 K121 [Enum.VerticalAlignment.Center]
  SETTABLEKS R50 R49 K47 ["VerticalAlignment"]
  DUPTABLE R50 K123 [{"LinkText"}]
  GETUPVAL R52 1
  GETTABLEKS R51 R52 K24 ["createElement"]
  GETUPVAL R52 9
  DUPTABLE R53 K126 [{"LayoutOrder", "OnClick", "Style", "Text"}]
  NAMECALL R54 R2 K70 ["getNextOrder"]
  CALL R54 1 1
  SETTABLEKS R54 R53 K62 ["LayoutOrder"]
  GETTABLEKS R54 R0 K127 ["onClickLink"]
  SETTABLEKS R54 R53 K124 ["OnClick"]
  LOADK R54 K128 ["Underlined"]
  SETTABLEKS R54 R53 K125 ["Style"]
  SETTABLEKS R19 R53 K101 ["Text"]
  CALL R51 2 1
  SETTABLEKS R51 R50 K122 ["LinkText"]
  CALL R47 3 1
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K115 ["LinkContainer"]
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K24 ["createElement"]
  GETUPVAL R48 10
  DUPTABLE R49 K131 [{"AnchorPoint", "Position", "LayoutOrder", "OnClick", "Size", "Style", "Text"}]
  GETIMPORT R50 K133 [Vector2.new]
  LOADN R51 1
  LOADN R52 0
  CALL R50 2 1
  SETTABLEKS R50 R49 K129 ["AnchorPoint"]
  GETIMPORT R50 K38 [UDim2.new]
  LOADN R51 1
  LOADN R52 0
  LOADN R53 0
  LOADN R54 0
  CALL R50 4 1
  SETTABLEKS R50 R49 K130 ["Position"]
  NAMECALL R50 R2 K70 ["getNextOrder"]
  CALL R50 1 1
  SETTABLEKS R50 R49 K62 ["LayoutOrder"]
  GETTABLEKS R50 R0 K134 ["onClickAcknowledgeButton"]
  SETTABLEKS R50 R49 K124 ["OnClick"]
  GETUPVAL R50 8
  SETTABLEKS R50 R49 K33 ["Size"]
  LOADK R50 K135 ["RoundPrimary"]
  SETTABLEKS R50 R49 K125 ["Style"]
  SETTABLEKS R16 R49 K101 ["Text"]
  DUPTABLE R50 K84 [{"HoverArea"}]
  GETUPVAL R52 1
  GETTABLEKS R51 R52 K24 ["createElement"]
  GETUPVAL R52 6
  DUPTABLE R53 K86 [{"Cursor"}]
  LOADK R54 K87 ["PointingHand"]
  SETTABLEKS R54 R53 K85 ["Cursor"]
  CALL R51 2 1
  SETTABLEKS R51 R50 K83 ["HoverArea"]
  CALL R47 3 1
  SETTABLEKS R47 R46 K116 ["Button"]
  CALL R43 3 1
  SETTABLEKS R43 R42 K96 ["ActionContainer"]
  JUMPIFNOT R13 [+59]
  JUMPIFEQKS R13 K108 [""] [+58]
  GETUPVAL R44 1
  GETTABLEKS R43 R44 K24 ["createElement"]
  GETUPVAL R44 3
  DUPTABLE R45 K137 [{"AutomaticSize", "ClipsDescendants", "HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
  GETIMPORT R46 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R46 R45 K42 ["AutomaticSize"]
  LOADB R46 1
  SETTABLEKS R46 R45 K136 ["ClipsDescendants"]
  GETIMPORT R46 K53 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R46 R45 K43 ["HorizontalAlignment"]
  GETIMPORT R46 K56 [Enum.FillDirection.Vertical]
  SETTABLEKS R46 R45 K44 ["Layout"]
  NAMECALL R46 R2 K70 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K62 ["LayoutOrder"]
  GETIMPORT R46 K38 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K33 ["Size"]
  DUPTABLE R46 K138 [{"Image"}]
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K24 ["createElement"]
  LOADK R48 K139 ["ImageLabel"]
  DUPTABLE R49 K140 [{"AutomaticSize", "BackgroundTransparency", "Image", "Size"}]
  GETIMPORT R50 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R50 R49 K42 ["AutomaticSize"]
  LOADN R50 1
  SETTABLEKS R50 R49 K32 ["BackgroundTransparency"]
  SETTABLEKS R13 R49 K15 ["Image"]
  GETUPVAL R50 11
  SETTABLEKS R50 R49 K33 ["Size"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K15 ["Image"]
  CALL R43 3 1
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K97 ["ImageContainer"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K39 ["Contents"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K60 ["AnnouncementDialog"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K39 ["Contents"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K28 ["Overlay"]
  CALL R23 3 -1
  RETURN R23 -1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["CaptureFocus"]
  GETTABLEKS R7 R5 K14 ["Button"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R2 K15 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R5 K16 ["HoverArea"]
  GETTABLEKS R11 R3 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["LayoutOrderIterator"]
  GETTABLEKS R11 R5 K19 ["LinkText"]
  GETTABLEKS R12 R5 K20 ["Pane"]
  GETTABLEKS R13 R5 K21 ["Image"]
  GETTABLEKS R14 R5 K22 ["TextLabel"]
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K23 ["Core"]
  GETTABLEKS R17 R18 K24 ["ContextServices"]
  GETTABLEKS R16 R17 K25 ["IXPContext"]
  CALL R15 1 1
  GETTABLEKS R16 R3 K24 ["ContextServices"]
  GETTABLEKS R17 R16 K26 ["withContext"]
  GETTABLEKS R19 R3 K17 ["Util"]
  GETTABLEKS R18 R19 K27 ["formatLocalDateTime"]
  GETTABLEKS R20 R1 K23 ["Core"]
  GETTABLEKS R19 R20 K17 ["Util"]
  GETIMPORT R20 K9 [require]
  GETTABLEKS R22 R19 K28 ["Analytics"]
  GETTABLEKS R21 R22 K28 ["Analytics"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R22 R19 K29 ["Images"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R19 K30 ["ToolboxUtilities"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R24 R19 K31 ["getUserId"]
  CALL R23 1 1
  GETTABLEKS R25 R3 K32 ["Wrappers"]
  GETTABLEKS R24 R25 K33 ["withAbsoluteSize"]
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R1 K23 ["Core"]
  GETTABLEKS R27 R28 K24 ["ContextServices"]
  GETTABLEKS R26 R27 K34 ["Settings"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R1 K23 ["Core"]
  GETTABLEKS R28 R29 K24 ["ContextServices"]
  GETTABLEKS R27 R28 K35 ["ModalContext"]
  CALL R26 1 1
  GETIMPORT R27 K38 [UDim2.fromOffset]
  LOADN R28 110
  LOADN R29 30
  CALL R27 2 1
  GETIMPORT R28 K38 [UDim2.fromOffset]
  LOADN R29 8
  LOADN R30 110
  CALL R28 2 1
  GETTABLEKS R29 R4 K39 ["PureComponent"]
  LOADK R31 K40 ["AnnouncementDialog"]
  NAMECALL R29 R29 K41 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K42 [PROTO_7]
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R0
  CAPTURE VAL R20
  SETTABLEKS R30 R29 K43 ["init"]
  DUPCLOSURE R30 K44 [PROTO_8]
  CAPTURE VAL R20
  SETTABLEKS R30 R29 K45 ["didMount"]
  DUPCLOSURE R30 K46 [PROTO_10]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R27
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K47 ["render"]
  MOVE R30 R17
  DUPTABLE R31 K52 [{"IXP", "Localization", "Settings", "Stylizer", "Modal"}]
  SETTABLEKS R15 R31 K48 ["IXP"]
  GETTABLEKS R32 R16 K49 ["Localization"]
  SETTABLEKS R32 R31 K49 ["Localization"]
  SETTABLEKS R25 R31 K34 ["Settings"]
  GETTABLEKS R32 R16 K50 ["Stylizer"]
  SETTABLEKS R32 R31 K50 ["Stylizer"]
  SETTABLEKS R26 R31 K51 ["Modal"]
  CALL R30 1 1
  MOVE R31 R29
  CALL R30 1 1
  MOVE R29 R30
  NEWCLOSURE R30 P3
  CAPTURE VAL R4
  CAPTURE REF R29
  SETGLOBAL R30 K53 ["TypedComponent"]
  MOVE R30 R24
  GETGLOBAL R31 K53 ["TypedComponent"]
  CALL R30 1 -1
  CLOSEUPVALS R29
  RETURN R30 -1