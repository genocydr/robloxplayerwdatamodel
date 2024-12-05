PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+20]
  GETUPVAL R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  NAMECALL R0 R0 K2 ["setRoot"]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETTABLEKS R3 R4 K3 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K4 ["X"]
  NAMECALL R0 R0 K5 ["setPluginWidth"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETTABLEKS R3 R4 K1 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K2 ["X"]
  NAMECALL R0 R0 K3 ["setPluginWidth"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["toggleSidebar"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R4 3
  MOVE R5 R2
  CALL R4 1 2
  GETUPVAL R6 4
  LOADNIL R7
  CALL R6 1 1
  GETUPVAL R7 5
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CAPTURE VAL R2
  NEWTABLE R9 0 0
  CALL R7 2 0
  GETUPVAL R7 6
  NEWCLOSURE R8 P1
  CAPTURE VAL R6
  CAPTURE VAL R2
  NEWTABLE R9 0 1
  MOVE R10 R2
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K5 [{"LayoutOrder", "ZIndex"}]
  NAMECALL R11 R1 K6 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  LOADN R11 2
  SETTABLEKS R11 R10 K4 ["ZIndex"]
  CALL R8 2 1
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R10 9
  DUPTABLE R11 K7 [{"LayoutOrder"}]
  NAMECALL R12 R1 K6 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  CALL R9 2 1
  JUMPIFNOT R3 [+15]
  NEWTABLE R10 0 2
  GETUPVAL R11 10
  LOADK R13 K8 ["DefaultSizeSidebar"]
  NAMECALL R11 R11 K9 ["GetAttribute"]
  CALL R11 2 1
  GETUPVAL R12 10
  LOADK R14 K10 ["DefaultSizeMainView"]
  NAMECALL R12 R12 K9 ["GetAttribute"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  JUMP [+1]
  LOADNIL R10
  JUMPIFNOT R3 [+15]
  NEWTABLE R11 0 2
  GETUPVAL R12 10
  LOADK R14 K11 ["MinimumSizeSidebar"]
  NAMECALL R12 R12 K9 ["GetAttribute"]
  CALL R12 2 1
  GETUPVAL R13 10
  LOADK R15 K12 ["MinimumSizeMainView"]
  NAMECALL R13 R13 K9 ["GetAttribute"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R12 11
  MOVE R13 R10
  CALL R12 1 2
  NEWTABLE R14 4 0
  JUMPIFNOT R3 [+36]
  JUMPIFNOT R5 [+3]
  SETTABLEKS R8 R14 K13 ["Sidebar"]
  JUMP [+34]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 12
  DUPTABLE R17 K19 [{"ZIndex", "UseScale", "ClampSize", "MinSizes", "Sizes", "OnSizesChange"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K4 ["ZIndex"]
  LOADB R18 1
  SETTABLEKS R18 R17 K14 ["UseScale"]
  LOADB R18 1
  SETTABLEKS R18 R17 K15 ["ClampSize"]
  SETTABLEKS R11 R17 K16 ["MinSizes"]
  SETTABLEKS R12 R17 K17 ["Sizes"]
  NEWCLOSURE R18 P2
  CAPTURE VAL R13
  SETTABLEKS R18 R17 K18 ["OnSizesChange"]
  NEWTABLE R18 0 2
  MOVE R19 R8
  MOVE R20 R9
  SETLIST R18 R19 2 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K20 ["SplitContents"]
  JUMP [+2]
  SETTABLEKS R9 R14 K21 ["MainView"]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 13
  NEWTABLE R17 8 0
  NAMECALL R18 R1 K6 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K3 ["LayoutOrder"]
  LOADN R18 3
  SETTABLEKS R18 R17 K4 ["ZIndex"]
  JUMPIFNOT R3 [+10]
  GETUPVAL R19 14
  GETTABLEKS R18 R19 K22 ["getImageHelper"]
  GETUPVAL R21 14
  GETTABLEKS R20 R21 K23 ["AvailableImages"]
  GETTABLEKS R19 R20 K24 ["SidebarCollapseIcon"]
  CALL R18 1 1
  JUMP [+9]
  GETUPVAL R19 14
  GETTABLEKS R18 R19 K22 ["getImageHelper"]
  GETUPVAL R21 14
  GETTABLEKS R20 R21 K23 ["AvailableImages"]
  GETTABLEKS R19 R20 K25 ["SidebarExpandIcon"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K26 ["LeftIcon"]
  LOADK R18 K27 ["PointingHand"]
  SETTABLEKS R18 R17 K28 ["Cursor"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K29 ["OnClick"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K30 ["Tag"]
  LOADK R19 K31 ["SidebarButton"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["CollapseSidebarButton"]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 15
  NEWTABLE R17 4 0
  SETTABLEKS R6 R17 K33 ["ForwardRef"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K34 ["Change"]
  GETTABLEKS R18 R19 K35 ["AbsoluteSize"]
  SETTABLE R7 R17 R18
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K30 ["Tag"]
  LOADK R19 K36 ["App X-Fill"]
  SETTABLE R19 R17 R18
  MOVE R18 R14
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R2 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["IconButton"]
  GETTABLEKS R6 R4 K13 ["Pane"]
  GETTABLEKS R7 R4 K14 ["SplitPane"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K15 ["MainView"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K16 ["Sidebar"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Controllers"]
  GETTABLEKS R11 R12 K19 ["PluginController"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K20 ["useCallback"]
  GETTABLEKS R12 R1 K21 ["useEffect"]
  GETTABLEKS R13 R1 K22 ["useRef"]
  GETTABLEKS R14 R1 K23 ["useState"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K24 ["Hooks"]
  GETTABLEKS R16 R17 K25 ["useShowSidebar"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K24 ["Hooks"]
  GETTABLEKS R17 R18 K26 ["usePluginSize"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K9 ["Util"]
  GETTABLEKS R18 R19 K27 ["Images"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K28 ["styles"]
  CALL R18 1 1
  DUPCLOSURE R19 K29 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R6
  RETURN R19 1