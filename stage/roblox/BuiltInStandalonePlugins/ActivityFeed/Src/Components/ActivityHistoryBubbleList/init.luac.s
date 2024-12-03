PROTO_0:
  JUMPIFNOT R0 [+15]
  GETTABLE R2 R0 R1
  JUMPIFNOT R2 [+13]
  GETTABLE R3 R0 R1
  GETTABLEKS R2 R3 K0 ["key"]
  JUMPIFNOTEQKNIL R2 [+7]
  GETTABLE R2 R0 R1
  GETTABLE R4 R0 R1
  GETTABLEKS R3 R4 K1 ["id"]
  SETTABLEKS R3 R2 K0 ["key"]
  GETTABLE R2 R0 R1
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADN R1 0
  RETURN R1 1
  LENGTH R1 R0
  RETURN R1 1

PROTO_2:
  DUPTABLE R2 K3 [{"length", "offset", "index"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["bubbleHeight"]
  SETTABLEKS R3 R2 K0 ["length"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["bubbleHeight"]
  MUL R3 R4 R1
  SETTABLEKS R3 R2 K1 ["offset"]
  SETTABLEKS R1 R2 K2 ["index"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  GETUPVAL R5 1
  LOADK R6 K3 ["X-Border"]
  LOADK R7 K4 ["X-Fill"]
  LOADK R8 K5 ["CX-Invisible"]
  LOADK R9 K6 ["Component-BubbleFrame"]
  LOADK R10 K7 ["X-Column"]
  CALL R5 5 1
  SETTABLE R5 R3 R4
  DUPTABLE R4 K11 [{"BubbleHeader", "BubbleContainer", "BubbleFooter"}]
  GETTABLEKS R7 R0 K12 ["item"]
  GETTABLEKS R6 R7 K13 ["headerText"]
  JUMPIFEQKNIL R6 [+20]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"title", "layoutOrder"}]
  GETTABLEKS R9 R0 K12 ["item"]
  GETTABLEKS R8 R9 K13 ["headerText"]
  SETTABLEKS R8 R7 K14 ["title"]
  GETUPVAL R8 3
  NAMECALL R8 R8 K17 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K15 ["layoutOrder"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K8 ["BubbleHeader"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K20 [{"Bubble", "LayoutOrder"}]
  GETTABLEKS R8 R0 K12 ["item"]
  SETTABLEKS R8 R7 K18 ["Bubble"]
  GETUPVAL R8 3
  NAMECALL R8 R8 K17 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["BubbleContainer"]
  GETTABLEKS R7 R0 K12 ["item"]
  GETTABLEKS R6 R7 K21 ["footerText"]
  JUMPIFEQKNIL R6 [+20]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K16 [{"title", "layoutOrder"}]
  GETTABLEKS R9 R0 K12 ["item"]
  GETTABLEKS R8 R9 K21 ["footerText"]
  SETTABLEKS R8 R7 K14 ["title"]
  GETUPVAL R8 3
  NAMECALL R8 R8 K17 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K15 ["layoutOrder"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["BubbleFooter"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["cache"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  LOADB R2 1
  SETUPVAL R2 1
  GETUPVAL R2 2
  LOADB R3 1
  SETTABLE R3 R2 R0
  GETUPVAL R1 3
  LOADK R3 K1 ["Bubble"]
  LOADK R4 K2 ["Unknown"]
  NAMECALL R1 R1 K3 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADB R8 0
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE REF R8
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R11 2
  GETTABLEKS R12 R7 K2 ["id"]
  GETTABLE R10 R11 R12
  JUMPIFNOT R10 [+12]
  GETTABLEKS R11 R10 K3 ["headerText"]
  GETTABLEKS R12 R7 K3 ["headerText"]
  JUMPIFNOTEQ R11 R12 [+7]
  GETTABLEKS R11 R10 K4 ["footerText"]
  GETTABLEKS R12 R7 K4 ["footerText"]
  JUMPIFEQ R11 R12 [+14]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K5 ["translateEvent"]
  MOVE R12 R9
  GETUPVAL R13 1
  MOVE R14 R7
  CALL R11 3 1
  MOVE R10 R11
  JUMPIF R8 [+4]
  GETUPVAL R11 2
  GETTABLEKS R12 R7 K2 ["id"]
  SETTABLE R10 R11 R12
  FASTCALL2 TABLE_INSERT R1 R10 [+5]
  MOVE R12 R1
  MOVE R13 R10
  GETIMPORT R11 K8 [table.insert]
  CALL R11 2 0
  CLOSEUPVALS R8
  FORGLOOP R3 2 [-45]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["fetchUsernames"]
  GETUPVAL R4 4
  MOVE R5 R2
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R3 2
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  DUPTABLE R5 K4 [{"updated", "getTranslations"}]
  GETTABLEKS R6 R0 K5 ["cache"]
  SETTABLEKS R6 R5 K2 ["updated"]
  SETTABLEKS R4 R5 K3 ["getTranslations"]
  RETURN R5 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getTranslations"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Events"]
  CALL R0 1 1
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["viewableItems"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K3 ["key"]
  LOADB R8 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["OnViewableItemsChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R0 K2 [{"viewabilityConfig", "onViewableItemsChanged"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["viewabilityConfig"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["onViewableItemsChanged"]
  RETURN R0 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["id"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["Events"]
  GETTABLEKS R6 R1 K2 ["updated"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K4 ["OnViewableItemsChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["useMemo"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  LOADK R6 K6 ["Frame"]
  NEWTABLE R7 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["Tag"]
  GETUPVAL R9 4
  LOADK R10 K8 ["X-Fill"]
  LOADK R11 K9 ["CX-Invisible"]
  LOADK R12 K10 ["Component-ActivityHistoryBubbleList"]
  CALL R9 3 1
  SETTABLE R9 R7 R8
  DUPTABLE R8 K12 [{"VirtualizedList"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K29 [{"keyExtractor", "ref", "data", "getItem", "getItemCount", "getItemLayout", "renderItem", "windowSize", "viewabilityConfigCallbackPairs", "showsVerticalScrollIndicator", "showsHorizontalScrollIndicator", "showDefaultLoadingIndicators", "ListHeaderComponent", "ListFooterComponent", "onScroll", "ListEmptyComponent"}]
  DUPCLOSURE R12 K30 [PROTO_10]
  SETTABLEKS R12 R11 K13 ["keyExtractor"]
  GETTABLEKS R12 R0 K31 ["Vlref"]
  SETTABLEKS R12 R11 K14 ["ref"]
  SETTABLEKS R2 R11 K15 ["data"]
  GETUPVAL R12 6
  SETTABLEKS R12 R11 K16 ["getItem"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K17 ["getItemCount"]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K18 ["getItemLayout"]
  GETUPVAL R12 9
  SETTABLEKS R12 R11 K19 ["renderItem"]
  LOADN R12 3
  SETTABLEKS R12 R11 K20 ["windowSize"]
  NEWTABLE R12 0 1
  MOVE R13 R4
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K21 ["viewabilityConfigCallbackPairs"]
  LOADB R12 0
  SETTABLEKS R12 R11 K22 ["showsVerticalScrollIndicator"]
  LOADB R12 0
  SETTABLEKS R12 R11 K23 ["showsHorizontalScrollIndicator"]
  LOADB R12 0
  SETTABLEKS R12 R11 K24 ["showDefaultLoadingIndicators"]
  GETTABLEKS R13 R0 K32 ["ShowHeaderLoadingIndicator"]
  JUMPIFNOT R13 [+2]
  GETUPVAL R12 10
  JUMPIF R12 [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K25 ["ListHeaderComponent"]
  GETTABLEKS R13 R0 K33 ["ShowFooterLoadingIndicator"]
  JUMPIFNOT R13 [+2]
  GETUPVAL R12 10
  JUMPIF R12 [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K26 ["ListFooterComponent"]
  GETTABLEKS R12 R0 K34 ["OnScroll"]
  SETTABLEKS R12 R11 K27 ["onScroll"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 11
  DUPTABLE R14 K36 [{"openFiltersFn"}]
  GETTABLEKS R15 R0 K37 ["OpenFiltersFn"]
  SETTABLEKS R15 R14 K35 ["openFiltersFn"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["ListEmptyComponent"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["VirtualizedList"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["VirtualizedList"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Resources"]
  GETTABLEKS R6 R7 K12 ["StyleTips"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["SharedTypes"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["ActivityHistoryBubble"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["ActivityHistoryBubbleListSectionHeader"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K18 ["ActivityHistoryBubbleListFooter"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K13 ["Util"]
  GETTABLEKS R11 R12 K19 ["ActivityHistoryEventTranslated"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K15 ["Components"]
  GETTABLEKS R12 R13 K20 ["ListLoadingIndicator"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K15 ["Components"]
  GETTABLEKS R13 R14 K21 ["ListEmptyComponent"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K22 ["Hooks"]
  GETTABLEKS R14 R15 K23 ["UsernameCache"]
  CALL R13 1 1
  GETTABLEKS R14 R4 K9 ["VirtualizedList"]
  GETTABLEKS R16 R2 K24 ["ContextServices"]
  GETTABLEKS R15 R16 K25 ["Localization"]
  GETTABLEKS R17 R3 K26 ["Dictionary"]
  GETTABLEKS R16 R17 K27 ["keys"]
  GETTABLEKS R18 R3 K26 ["Dictionary"]
  GETTABLEKS R17 R18 K28 ["values"]
  GETTABLEKS R19 R2 K29 ["Styling"]
  GETTABLEKS R18 R19 K30 ["joinTags"]
  GETTABLEKS R20 R2 K13 ["Util"]
  GETTABLEKS R19 R20 K31 ["LayoutOrderIterator"]
  GETTABLEKS R20 R19 K32 ["new"]
  CALL R20 0 1
  DUPCLOSURE R21 K33 [PROTO_0]
  DUPCLOSURE R22 K34 [PROTO_1]
  DUPCLOSURE R23 K35 [PROTO_2]
  CAPTURE VAL R5
  DUPCLOSURE R24 K36 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R9
  DUPCLOSURE R25 K37 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R16
  DUPTABLE R26 K42 [{"minimumViewTime", "viewAreaCoveragePercentThreshold", "itemVisiblePercentThreshold", "waitForInteraction"}]
  LOADN R27 208
  SETTABLEKS R27 R26 K38 ["minimumViewTime"]
  LOADN R27 80
  SETTABLEKS R27 R26 K39 ["viewAreaCoveragePercentThreshold"]
  LOADNIL R27
  SETTABLEKS R27 R26 K40 ["itemVisiblePercentThreshold"]
  LOADB R27 0
  SETTABLEKS R27 R26 K41 ["waitForInteraction"]
  DUPCLOSURE R27 K43 [PROTO_11]
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R11
  CAPTURE VAL R12
  RETURN R27 1