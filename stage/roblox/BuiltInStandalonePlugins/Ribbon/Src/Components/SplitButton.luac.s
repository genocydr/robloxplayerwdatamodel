PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Uri"]
  NAMECALL R0 R0 K1 ["deregister"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Uri"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Uri"]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["register"]
  CALL R1 3 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K1 [wait]
  LOADK R1 K2 [0.4]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["current"]
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K4 ["OnSelectArrow"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["Uri"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Disabled"]
  JUMPIF R2 [+28]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+23]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["cancelShowTooltip"]
  CALL R2 0 0
  GETUPVAL R2 2
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["current"]
  GETIMPORT R2 K9 [coroutine.create]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CALL R2 1 1
  GETIMPORT R3 K11 [coroutine.resume]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 2
  SETTABLEKS R2 R3 K6 ["current"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Disabled"]
  JUMPIF R2 [+44]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+39]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["current"]
  JUMPIF R2 [+30]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["current"]
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K8 [coroutine.status]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["current"]
  CALL R2 1 1
  JUMPIFEQKS R2 K9 ["dead"] [+11]
  GETIMPORT R2 K11 [coroutine.close]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["current"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["current"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["OnSelect"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Uri"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["current"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R0 1
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["cancelShowTooltip"]
  CALL R2 0 0
  GETUPVAL R2 1
  LOADB R3 1
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["OnSelectArrow"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["Uri"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+4]
  GETUPVAL R2 0
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R5 1
  DUPTABLE R6 K4 [{"Uri", "Title", "Text", "Shortcuts"}]
  GETTABLEKS R7 R0 K0 ["Uri"]
  SETTABLEKS R7 R6 K0 ["Uri"]
  GETTABLEKS R7 R0 K2 ["Text"]
  SETTABLEKS R7 R6 K1 ["Title"]
  GETTABLEKS R7 R0 K5 ["Tooltip"]
  SETTABLEKS R7 R6 K2 ["Text"]
  GETTABLEKS R7 R0 K3 ["Shortcuts"]
  SETTABLEKS R7 R6 K3 ["Shortcuts"]
  CALL R5 1 2
  GETUPVAL R7 2
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R8 2
  LOADB R9 0
  CALL R8 1 1
  GETUPVAL R9 3
  CALL R9 0 1
  GETUPVAL R10 2
  LOADNIL R11
  CALL R10 1 1
  GETUPVAL R11 4
  NEWCLOSURE R12 P0
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R9
  NEWTABLE R13 0 1
  GETTABLEKS R14 R0 K0 ["Uri"]
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  LOADNIL R11
  GETTABLEKS R12 R0 K6 ["Size"]
  JUMPIFNOTEQKS R12 K7 ["Small"] [+3]
  LOADK R11 K7 ["Small"]
  JUMP [+1]
  LOADK R11 K8 ["Large"]
  GETTABLEKS R13 R0 K6 ["Size"]
  JUMPIFEQKS R13 K7 ["Small"] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K10 ["TextButton"]
  NEWTABLE R15 8 0
  GETTABLEKS R16 R0 K11 ["LayoutOrder"]
  SETTABLEKS R16 R15 K11 ["LayoutOrder"]
  SETTABLEKS R10 R15 K12 ["ref"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K13 ["Event"]
  GETTABLEKS R16 R17 K14 ["InputBegan"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLE R17 R15 R16
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K13 ["Event"]
  GETTABLEKS R16 R17 K15 ["InputEnded"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLE R17 R15 R16
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K13 ["Event"]
  GETTABLEKS R16 R17 K16 ["MouseEnter"]
  SETTABLE R5 R15 R16
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K13 ["Event"]
  GETTABLEKS R16 R17 K17 ["MouseLeave"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLE R17 R15 R16
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K18 ["Tag"]
  GETUPVAL R17 7
  LOADK R18 K19 ["Component-RibbonButton X-Fit X-Column X-Center"]
  GETTABLEKS R20 R0 K20 ["Disabled"]
  JUMPIFNOT R20 [+2]
  LOADK R19 K21 ["State-Disabled"]
  JUMP [+6]
  GETTABLEKS R20 R0 K22 ["Selected"]
  JUMPIFNOT R20 [+2]
  LOADK R19 K23 ["State-Selected"]
  JUMP [+1]
  LOADK R19 K24 ["State-Default"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  DUPTABLE R16 K26 [{"StateLayer", "Text"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K27 ["Frame"]
  NEWTABLE R19 1 0
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K18 ["Tag"]
  GETUPVAL R21 7
  LOADK R22 K28 ["Role-Surface X-Fit"]
  JUMPIFNOT R3 [+2]
  LOADK R23 K29 ["State-Gradient-Pressed"]
  JUMP [+4]
  JUMPIFNOT R1 [+2]
  LOADK R23 K30 ["State-Gradient-Hover"]
  JUMP [+1]
  LOADNIL R23
  JUMPIFNOT R12 [+2]
  LOADK R24 K31 ["X-CornerXS"]
  JUMP [+1]
  LOADK R24 K32 ["X-CornerM"]
  CALL R21 3 1
  SETTABLE R21 R19 R20
  DUPTABLE R20 K34 [{"RibbonTool"}]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K27 ["Frame"]
  NEWTABLE R23 1 0
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K18 ["Tag"]
  GETUPVAL R25 7
  LOADK R26 K35 ["Role-Surface X-Fit X-Middle"]
  JUMPIFNOT R12 [+2]
  LOADK R27 K36 ["X-RowSplitButtonSmall X-PadSplitButtonToolSmall X-CornerXS"]
  JUMP [+1]
  LOADK R27 K37 ["X-PadSplitButtonTool X-RowSplitButton X-CornerM"]
  CALL R25 2 1
  SETTABLE R25 R23 R24
  DUPTABLE R24 K40 [{"RibbonToolButtonIcon", "DropdownArrow"}]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K9 ["createElement"]
  LOADK R26 K41 ["ImageLabel"]
  NEWTABLE R27 2 0
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K42 ["getPathForIcon"]
  GETTABLEKS R29 R0 K43 ["Icon"]
  MOVE R30 R11
  CALL R28 2 1
  SETTABLEKS R28 R27 K44 ["Image"]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K18 ["Tag"]
  JUMPIFNOT R12 [+2]
  LOADK R29 K45 ["Icon-Small"]
  JUMP [+1]
  LOADK R29 K46 ["Icon-Large"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["RibbonToolButtonIcon"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K9 ["createElement"]
  LOADK R26 K27 ["Frame"]
  NEWTABLE R27 1 0
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K18 ["Tag"]
  GETUPVAL R29 7
  LOADK R30 K47 ["Component-SplitButtonDropdown Role-Surface X-Fit X-Row X-Bottom"]
  JUMPIFNOT R12 [+2]
  LOADK R31 K7 ["Small"]
  JUMP [+1]
  LOADNIL R31
  CALL R29 2 1
  SETTABLE R29 R27 R28
  DUPTABLE R28 K49 [{"DropdownArrowButton"}]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K9 ["createElement"]
  LOADK R30 K10 ["TextButton"]
  NEWTABLE R31 8 0
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K13 ["Event"]
  GETTABLEKS R32 R33 K14 ["InputBegan"]
  NEWCLOSURE R33 P4
  CAPTURE UPVAL U6
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLE R33 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K13 ["Event"]
  GETTABLEKS R32 R33 K15 ["InputEnded"]
  NEWCLOSURE R33 P5
  CAPTURE VAL R4
  SETTABLE R33 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K13 ["Event"]
  GETTABLEKS R32 R33 K16 ["MouseEnter"]
  NEWCLOSURE R33 P6
  CAPTURE VAL R2
  SETTABLE R33 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K13 ["Event"]
  GETTABLEKS R32 R33 K17 ["MouseLeave"]
  NEWCLOSURE R33 P7
  CAPTURE VAL R2
  SETTABLE R33 R31 R32
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K18 ["Tag"]
  GETUPVAL R33 7
  LOADK R34 K28 ["Role-Surface X-Fit"]
  JUMPIFNOT R12 [+2]
  LOADK R35 K50 ["X-PadSplitButtonDropdownSmall"]
  JUMP [+1]
  LOADK R35 K51 ["X-PadSplitButtonDropdown"]
  CALL R33 2 1
  SETTABLE R33 R31 R32
  DUPTABLE R32 K53 [{"DropdownArrowIcon"}]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K41 ["ImageLabel"]
  NEWTABLE R35 1 0
  GETUPVAL R37 5
  GETTABLEKS R36 R37 K18 ["Tag"]
  GETUPVAL R37 7
  LOADK R38 K54 ["Role-Surface"]
  JUMPIFNOT R12 [+2]
  LOADK R39 K7 ["Small"]
  JUMP [+1]
  LOADNIL R39
  CALL R37 2 1
  SETTABLE R37 R35 R36
  CALL R33 2 1
  SETTABLEKS R33 R32 K52 ["DropdownArrowIcon"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K48 ["DropdownArrowButton"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K39 ["DropdownArrow"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K33 ["RibbonTool"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K25 ["StateLayer"]
  GETTABLEKS R18 R0 K55 ["IconOnly"]
  JUMPIF R18 [+17]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K56 ["TextLabel"]
  NEWTABLE R19 2 0
  GETTABLEKS R20 R0 K2 ["Text"]
  SETTABLEKS R20 R19 K2 ["Text"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K18 ["Tag"]
  LOADK R21 K57 ["X-Fit X-PadButtonLabel"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K2 ["Text"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useEffect"]
  GETTABLEKS R3 R1 K9 ["useRef"]
  GETTABLEKS R4 R1 K10 ["useState"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["IconHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["Styling"]
  GETTABLEKS R9 R8 K17 ["joinTags"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K18 ["Hooks"]
  GETTABLEKS R11 R12 K19 ["TooltipSettings"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K18 ["Hooks"]
  GETTABLEKS R12 R13 K20 ["useTooltip"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K18 ["Hooks"]
  GETTABLEKS R13 R14 K21 ["useWidgets"]
  CALL R12 1 1
  DUPCLOSURE R13 K22 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R6
  RETURN R13 1