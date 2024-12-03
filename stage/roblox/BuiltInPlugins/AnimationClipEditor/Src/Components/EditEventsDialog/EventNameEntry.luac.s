PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ACTION_KEYS"]
  GETTABLEKS R1 R2 K1 ["Edit"]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R1 1
  DUPTABLE R3 K3 [{"editing"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["editing"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ACTION_KEYS"]
  GETTABLEKS R1 R2 K5 ["Delete"]
  JUMPIFNOTEQ R0 R1 [+12]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["props"]
  GETTABLEKS R1 R2 K7 ["OnDeleteAllEvents"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["props"]
  GETTABLEKS R2 R3 K8 ["Name"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnDeleteEvent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Name"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  JUMPIF R1 [+33]
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"editing"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["editing"]
  NAMECALL R2 R2 K2 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["Name"]
  GETTABLEKS R3 R0 K5 ["Text"]
  JUMPIFNOTEQKS R3 K6 [""] [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K7 ["OnDeleteEvent"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["props"]
  GETTABLEKS R4 R5 K8 ["OnRenameEvent"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"editing"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["editing"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Name"]
  JUMPIFNOTEQKS R1 K5 [""] [+11]
  JUMPIFNOTEQKS R0 K5 [""] [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["props"]
  GETTABLEKS R2 R3 K6 ["OnDeleteEvent"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  JUMPIFEQKS R0 K5 [""] [+11]
  JUMPIFEQ R0 R1 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["props"]
  GETTABLEKS R2 R3 K7 ["OnRenameEvent"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showContextMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showContextMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showContextMenu"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showContextMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Mouse"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Mouse"]
  LOADK R2 K2 ["PointingHand"]
  NAMECALL R0 R0 K3 ["__pushCursor"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Mouse"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Mouse"]
  NAMECALL R0 R0 K2 ["__popCursor"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K2 [{"editing", "showContextMenu"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["editing"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showContextMenu"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onMenuItemClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onDeleteEvent"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["focusChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onItemClicked"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["showMenu"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["hideMenu"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["mouseEnter"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["mouseLeave"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Name"]
  JUMPIFNOTEQKS R1 K2 [""] [+8]
  DUPTABLE R3 K4 [{"editing"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["editing"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Mouse"]
  NAMECALL R1 R1 K2 ["__resetCursor"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["Name"]
  GETTABLEKS R6 R1 K5 ["PaddingLeft"]
  GETTABLEKS R7 R1 K6 ["PaddingRight"]
  GETTABLEKS R8 R1 K7 ["UnusedEvents"]
  GETTABLEKS R9 R3 K8 ["editing"]
  GETTABLEKS R10 R2 K9 ["trackTheme"]
  GETTABLEKS R11 R2 K10 ["dialogTheme"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K12 ["Frame"]
  DUPTABLE R14 K15 [{"Size", "BackgroundColor3", "BorderColor3"}]
  SETTABLEKS R4 R14 K3 ["Size"]
  GETTABLEKS R15 R10 K16 ["shadedBackgroundColor"]
  SETTABLEKS R15 R14 K13 ["BackgroundColor3"]
  GETTABLEKS R15 R2 K17 ["borderColor"]
  SETTABLEKS R15 R14 K14 ["BorderColor3"]
  DUPTABLE R15 K24 [{"Padding", "Label", "TextBox", "DeleteButton", "ContextButton", "EditEventMenu"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K25 ["UIPadding"]
  DUPTABLE R18 K28 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R6 R18 K5 ["PaddingLeft"]
  SETTABLEKS R7 R18 K6 ["PaddingRight"]
  GETIMPORT R19 K31 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["PaddingTop"]
  GETIMPORT R19 K31 [UDim.new]
  LOADN R20 0
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["PaddingBottom"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K18 ["Padding"]
  NOT R16 R9
  JUMPIFNOT R16 [+43]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K32 ["TextLabel"]
  DUPTABLE R18 K40 [{"Size", "Text", "TextColor3", "TextTruncate", "Font", "TextSize", "TextXAlignment", "BackgroundTransparency"}]
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 1
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K43 ["TRACKLIST_BUTTON_SIZE"]
  MINUS R21 R22
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K3 ["Size"]
  SETTABLEKS R5 R18 K33 ["Text"]
  GETTABLEKS R19 R11 K44 ["textColor"]
  SETTABLEKS R19 R18 K34 ["TextColor3"]
  GETIMPORT R19 K47 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K35 ["TextTruncate"]
  GETTABLEKS R19 R2 K48 ["font"]
  SETTABLEKS R19 R18 K36 ["Font"]
  GETTABLEKS R19 R11 K49 ["textSize"]
  SETTABLEKS R19 R18 K37 ["TextSize"]
  GETIMPORT R19 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K38 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K39 ["BackgroundTransparency"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["Label"]
  MOVE R16 R9
  JUMPIFNOT R16 [+44]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K58 [{"Size", "TextXAlignment", "CaptureFocus", "Text", "ClearTextOnFocus", "FocusChanged", "OnItemClicked", "Items", "MaxItems"}]
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 1
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K43 ["TRACKLIST_BUTTON_SIZE"]
  MINUS R22 R23
  SUBK R21 R22 K59 [8]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K3 ["Size"]
  GETIMPORT R19 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K38 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K52 ["CaptureFocus"]
  SETTABLEKS R5 R18 K33 ["Text"]
  LOADB R19 0
  SETTABLEKS R19 R18 K53 ["ClearTextOnFocus"]
  GETTABLEKS R19 R0 K60 ["focusChanged"]
  SETTABLEKS R19 R18 K54 ["FocusChanged"]
  GETTABLEKS R19 R0 K61 ["onItemClicked"]
  SETTABLEKS R19 R18 K55 ["OnItemClicked"]
  SETTABLEKS R8 R18 K56 ["Items"]
  LOADN R19 3
  SETTABLEKS R19 R18 K57 ["MaxItems"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["TextBox"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K62 ["ImageButton"]
  NEWTABLE R18 16 0
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 0
  LOADN R21 8
  LOADN R22 0
  LOADN R23 8
  CALL R19 4 1
  SETTABLEKS R19 R18 K3 ["Size"]
  GETIMPORT R19 K64 [Vector2.new]
  LOADK R20 K65 [0.5]
  LOADK R21 K65 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["AnchorPoint"]
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 0
  GETTABLEKS R23 R6 K68 ["Offset"]
  MINUS R22 R23
  DIVK R21 R22 K67 [2]
  LOADK R22 K65 [0.5]
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K69 ["Position"]
  LOADN R19 1
  SETTABLEKS R19 R18 K39 ["BackgroundTransparency"]
  GETTABLEKS R19 R11 K70 ["deleteImage"]
  SETTABLEKS R19 R18 K71 ["Image"]
  GETTABLEKS R19 R11 K72 ["subTextColor"]
  SETTABLEKS R19 R18 K73 ["ImageColor3"]
  GETIMPORT R19 K76 [Enum.ScaleType.Fit]
  SETTABLEKS R19 R18 K74 ["ScaleType"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K77 ["Event"]
  GETTABLEKS R19 R20 K78 ["Activated"]
  GETTABLEKS R20 R0 K79 ["onDeleteEvent"]
  SETTABLE R20 R18 R19
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K77 ["Event"]
  GETTABLEKS R19 R20 K80 ["MouseEnter"]
  GETTABLEKS R20 R0 K81 ["mouseEnter"]
  SETTABLE R20 R18 R19
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K77 ["Event"]
  GETTABLEKS R19 R20 K82 ["MouseLeave"]
  GETTABLEKS R20 R0 K83 ["mouseLeave"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["DeleteButton"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K85 [{"AnchorPoint", "Position", "OnActivated"}]
  GETIMPORT R19 K64 [Vector2.new]
  LOADN R20 1
  LOADK R21 K65 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["AnchorPoint"]
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADK R22 K65 [0.5]
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K69 ["Position"]
  GETTABLEKS R19 R0 K86 ["showMenu"]
  SETTABLEKS R19 R18 K84 ["OnActivated"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["ContextButton"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K90 [{"ShowMenu", "OnMenuOpened", "OnMenuItemClicked"}]
  GETTABLEKS R19 R3 K91 ["showContextMenu"]
  SETTABLEKS R19 R18 K87 ["ShowMenu"]
  GETTABLEKS R19 R0 K92 ["hideMenu"]
  SETTABLEKS R19 R18 K88 ["OnMenuOpened"]
  GETTABLEKS R19 R0 K93 ["onMenuItemClicked"]
  SETTABLEKS R19 R18 K89 ["OnMenuItemClicked"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["EditEventMenu"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["FilteringTextBox"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K16 ["EditEventsDialog"]
  GETTABLEKS R8 R9 K17 ["EditEventMenu"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K18 ["ContextButton"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K19 ["PureComponent"]
  LOADK R11 K20 ["EventNameEntry"]
  NAMECALL R9 R9 K21 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K22 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K23 ["init"]
  DUPCLOSURE R10 K24 [PROTO_9]
  SETTABLEKS R10 R9 K25 ["didMount"]
  DUPCLOSURE R10 K26 [PROTO_10]
  SETTABLEKS R10 R9 K27 ["willUnmount"]
  DUPCLOSURE R10 K28 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K29 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K32 [{"Stylizer", "Mouse"}]
  GETTABLEKS R12 R4 K30 ["Stylizer"]
  SETTABLEKS R12 R11 K30 ["Stylizer"]
  GETTABLEKS R12 R4 K31 ["Mouse"]
  SETTABLEKS R12 R11 K31 ["Mouse"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
