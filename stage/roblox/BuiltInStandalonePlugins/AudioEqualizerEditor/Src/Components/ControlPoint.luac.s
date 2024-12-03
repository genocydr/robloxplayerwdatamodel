PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plotToView"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Position"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnMoved"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R1 K3 [Vector2.new]
  GETTABLEKS R3 R0 K4 ["Position"]
  GETTABLEKS R2 R3 K5 ["X"]
  GETTABLEKS R4 R0 K4 ["Position"]
  GETTABLEKS R3 R4 K6 ["Y"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnMoved"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  JUMPIFNOT R2 [+22]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Label"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["OnRightClick"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["OnRightClick"]
  CALL R2 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseWheel]
  JUMPIFNOTEQ R2 R3 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["OnScroll"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["OnScroll"]
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["Z"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Context"]
  GETTABLEKS R2 R3 K1 ["Consumer"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Localization"]
  GETTABLEKS R3 R4 K3 ["Key"]
  GETTABLE R2 R1 R3
  GETUPVAL R3 2
  LOADB R4 0
  CALL R3 1 2
  GETTABLEKS R6 R0 K4 ["DragTarget"]
  GETTABLEKS R7 R0 K5 ["Label"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R6 3
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K6 ["Position"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R7 5
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R8 5
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R9 5
  NEWCLOSURE R10 P3
  CAPTURE VAL R0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K7 ["OnMoved"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 5
  NEWCLOSURE R11 P4
  CAPTURE VAL R0
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K8 ["OnDragEnd"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R11 5
  NEWCLOSURE R12 P5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  NEWTABLE R13 0 2
  GETTABLEKS R14 R0 K9 ["OnDragStart"]
  GETTABLEKS R15 R0 K5 ["Label"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 1
  GETUPVAL R12 5
  NEWCLOSURE R13 P6
  CAPTURE VAL R0
  NEWTABLE R14 0 1
  GETTABLEKS R15 R0 K10 ["OnScroll"]
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  LOADK R13 K11 [""]
  JUMPIFNOT R5 [+2]
  LOADK R13 K12 ["Pressed"]
  JUMP [+2]
  JUMPIFNOT R3 [+1]
  LOADK R13 K13 ["Hovered"]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K14 ["createElement"]
  LOADK R15 K15 ["ImageButton"]
  NEWTABLE R16 4 0
  GETIMPORT R17 K18 [UDim2.fromScale]
  GETTABLEKS R18 R6 K19 ["X"]
  GETTABLEKS R19 R6 K20 ["Y"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K6 ["Position"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K21 ["Tag"]
  GETUPVAL R18 8
  LOADK R19 K22 ["ControlPoint"]
  MOVE R20 R13
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K23 ["Event"]
  GETTABLEKS R17 R18 K24 ["InputBegan"]
  SETTABLE R11 R16 R17
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K23 ["Event"]
  GETTABLEKS R17 R18 K25 ["InputChanged"]
  SETTABLE R12 R16 R17
  DUPTABLE R17 K30 [{"Inner", "Text", "HoverArea", "DragListener"}]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K31 ["ImageLabel"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K26 ["Inner"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K32 ["TextLabel"]
  DUPTABLE R20 K33 [{"Text"}]
  LOADK R23 K5 ["Label"]
  LOADK R25 K34 ["ControlPoint_"]
  GETTABLEKS R26 R0 K5 ["Label"]
  CONCAT R24 R25 R26
  NAMECALL R21 R2 K35 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K27 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Text"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K14 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K39 [{"Cursor", "MouseEnter", "MouseLeave"}]
  GETUPVAL R21 10
  SETTABLEKS R21 R20 K36 ["Cursor"]
  SETTABLEKS R7 R20 K37 ["MouseEnter"]
  SETTABLEKS R8 R20 K38 ["MouseLeave"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["HoverArea"]
  MOVE R18 R5
  JUMPIFNOT R18 [+10]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K14 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K42 [{"OnDragMoved", "OnDragEnded"}]
  SETTABLEKS R9 R20 K40 ["OnDragMoved"]
  SETTABLEKS R10 R20 K41 ["OnDragEnded"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K29 ["DragListener"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useContext"]
  GETTABLEKS R5 R2 K11 ["useMemo"]
  GETTABLEKS R6 R2 K12 ["useState"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R1 K7 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["ContextServices"]
  GETTABLEKS R10 R7 K15 ["Styling"]
  GETTABLEKS R9 R10 K16 ["joinTags"]
  GETTABLEKS R11 R7 K17 ["UI"]
  GETTABLEKS R10 R11 K18 ["DragListener"]
  GETTABLEKS R12 R7 K17 ["UI"]
  GETTABLEKS R11 R12 K19 ["HoverArea"]
  GETTABLEKS R13 R7 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["isInputMainPress"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R1 K22 ["Src"]
  GETTABLEKS R15 R16 K23 ["Resources"]
  GETTABLEKS R14 R15 K24 ["PluginStyles"]
  CALL R13 1 1
  LOADK R16 K25 ["CursorOpenedHand"]
  NAMECALL R14 R13 K26 ["GetAttribute"]
  CALL R14 2 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R1 K22 ["Src"]
  GETTABLEKS R16 R17 K27 ["Types"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R1 K22 ["Src"]
  GETTABLEKS R18 R19 K20 ["Util"]
  GETTABLEKS R17 R18 K28 ["PlotUtil"]
  CALL R16 1 1
  DUPCLOSURE R17 K29 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R10
  RETURN R17 1