PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Stylizer"]
  GETTABLEKS R5 R3 K2 ["OnClick"]
  GETTABLEKS R6 R4 K3 ["searchPill"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["lower"]
  MOVE R8 R1
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K10 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
  GETIMPORT R11 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K6 ["AutomaticSize"]
  SETTABLEKS R0 R10 K7 ["LayoutOrder"]
  SETTABLEKS R5 R10 K2 ["OnClick"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 0
  MOVE R13 R2
  LOADN R14 0
  GETTABLEKS R15 R6 K17 ["textSize"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K8 ["Size"]
  SETTABLEKS R7 R10 K9 ["Text"]
  CALL R8 2 -1
  RETURN R8 -1

PROTO_1:
  LENGTH R3 R0
  JUMPIFNOTEQKN R3 K0 [0] [+2]
  RETURN R0 0
  SUB R3 R2 R1
  LENGTH R6 R0
  DIV R5 R3 R6
  FASTCALL1 MATH_FLOOR R5 [+2]
  GETIMPORT R4 K3 [math.floor]
  CALL R4 1 1
  GETIMPORT R5 K5 [ipairs]
  MOVE R6 R0
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETTABLEKS R10 R9 K6 ["Width"]
  ADD R10 R10 R4
  SETTABLEKS R10 R9 K6 ["Width"]
  FORGLOOP R5 2 [inext] [-6]
  LENGTH R7 R0
  MUL R6 R4 R7
  SUB R5 R3 R6
  LENGTH R7 R0
  GETTABLE R6 R0 R7
  GETTABLEKS R7 R6 K6 ["Width"]
  ADD R7 R7 R5
  SETTABLEKS R7 R6 K6 ["Width"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Stylizer"]
  GETTABLEKS R2 R0 K2 ["Items"]
  GETTABLEKS R3 R0 K3 ["ItemMinWidth"]
  GETTABLEKS R4 R0 K4 ["MaxRowCount"]
  GETTABLEKS R6 R0 K5 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K6 ["X"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  LOADN R8 0
  GETTABLEKS R9 R1 K7 ["searchList"]
  GETTABLEKS R10 R1 K8 ["searchPill"]
  GETIMPORT R11 K10 [ipairs]
  MOVE R12 R2
  CALL R11 1 3
  FORGPREP_INEXT R11
  GETUPVAL R16 1
  MOVE R18 R15
  GETTABLEKS R19 R10 K11 ["textSize"]
  GETTABLEKS R20 R10 K12 ["font"]
  GETIMPORT R21 K15 [Vector2.new]
  MOVE R22 R5
  LOADK R23 K16 [∞]
  CALL R21 2 -1
  NAMECALL R16 R16 K17 ["GetTextSize"]
  CALL R16 -1 1
  GETTABLEKS R17 R16 K6 ["X"]
  ADD R18 R17 R3
  DUPTABLE R19 K20 [{"Item", "Width"}]
  SETTABLEKS R15 R19 K18 ["Item"]
  SETTABLEKS R18 R19 K19 ["Width"]
  MOVE R20 R8
  ADD R8 R8 R18
  JUMPIFEQKN R14 K21 [1] [+4]
  GETTABLEKS R21 R9 K22 ["buttonSpacing"]
  ADD R8 R8 R21
  JUMPIFNOTLT R5 R8 [+18]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K23 ["resizeRowItemsToAvailableSpace"]
  MOVE R22 R7
  MOVE R23 R20
  MOVE R24 R5
  CALL R21 3 0
  FASTCALL2 TABLE_INSERT R6 R7 [+5]
  MOVE R22 R6
  MOVE R23 R7
  GETIMPORT R21 K26 [table.insert]
  CALL R21 2 0
  MOVE R8 R18
  NEWTABLE R7 0 0
  LENGTH R21 R6
  JUMPIFNOTLT R21 R4 [+12]
  FASTCALL2 TABLE_INSERT R7 R19 [+5]
  MOVE R22 R7
  MOVE R23 R19
  GETIMPORT R21 K26 [table.insert]
  CALL R21 2 0
  JUMP [+1]
  JUMP [+2]
  FORGLOOP R11 2 [inext] [-61]
  LENGTH R11 R7
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+15]
  FASTCALL2 TABLE_INSERT R6 R7 [+5]
  MOVE R12 R6
  MOVE R13 R7
  GETIMPORT R11 K26 [table.insert]
  CALL R11 2 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["resizeRowItemsToAvailableSpace"]
  MOVE R12 R7
  MOVE R13 R8
  MOVE R14 R5
  CALL R11 3 0
  RETURN R6 1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K0 ["onRenderItem"]
  DUPCLOSURE R1 K1 [PROTO_1]
  SETTABLEKS R1 R0 K2 ["resizeRowItemsToAvailableSpace"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K3 ["getRowMatrix"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Items"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["Size"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETTABLEKS R7 R6 K6 ["searchList"]
  GETTABLEKS R8 R0 K7 ["getRowMatrix"]
  CALL R8 0 1
  NEWTABLE R9 0 0
  GETIMPORT R10 K9 [pairs]
  MOVE R11 R8
  CALL R10 1 3
  FORGPREP_NEXT R10
  NEWTABLE R15 0 0
  GETIMPORT R16 K9 [pairs]
  MOVE R17 R14
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETTABLEKS R21 R0 K10 ["onRenderItem"]
  MOVE R22 R19
  GETTABLEKS R23 R20 K11 ["Item"]
  GETTABLEKS R24 R20 K12 ["Width"]
  CALL R21 3 1
  FASTCALL2 TABLE_INSERT R15 R21 [+5]
  MOVE R23 R15
  MOVE R24 R21
  GETIMPORT R22 K15 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-16]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K22 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R19 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K17 ["AutomaticSize"]
  GETIMPORT R19 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K18 ["Layout"]
  SETTABLEKS R13 R18 K1 ["LayoutOrder"]
  GETIMPORT R19 K31 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K4 ["Size"]
  GETTABLEKS R19 R7 K32 ["buttonSpacing"]
  SETTABLEKS R19 R18 K19 ["Spacing"]
  GETIMPORT R19 K34 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K20 ["HorizontalAlignment"]
  GETIMPORT R19 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K21 ["VerticalAlignment"]
  MOVE R19 R15
  CALL R16 3 1
  FASTCALL2 TABLE_INSERT R9 R16 [+5]
  MOVE R18 R9
  MOVE R19 R16
  GETIMPORT R17 K15 [table.insert]
  CALL R17 2 0
  FORGLOOP R10 2 [-70]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K37 ["join"]
  DUPTABLE R13 K38 [{"AutomaticSize", "Layout", "LayoutOrder", "Position", "Size", "Spacing"}]
  GETIMPORT R14 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K17 ["AutomaticSize"]
  GETIMPORT R14 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K18 ["Layout"]
  SETTABLEKS R2 R13 K1 ["LayoutOrder"]
  SETTABLEKS R4 R13 K3 ["Position"]
  SETTABLEKS R5 R13 K4 ["Size"]
  GETTABLEKS R14 R7 K32 ["buttonSpacing"]
  SETTABLEKS R14 R13 K19 ["Spacing"]
  GETTABLEKS R14 R1 K41 ["WrapperProps"]
  CALL R12 2 1
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K8 ["Packages"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R4 R2 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R2 K12 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K13 ["ContextServices"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R7 R2 K14 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R7 R8 K16 ["HoverArea"]
  GETTABLEKS R9 R3 K15 ["UI"]
  GETTABLEKS R8 R9 K17 ["Pane"]
  GETTABLEKS R10 R3 K18 ["Wrappers"]
  GETTABLEKS R9 R10 K19 ["withAbsoluteSizeAndPosition"]
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R0 K20 ["Core"]
  GETTABLEKS R12 R13 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["multiLanguageUtils"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R15 R0 K20 ["Core"]
  GETTABLEKS R14 R15 K23 ["Components"]
  GETTABLEKS R13 R14 K24 ["Categorization"]
  GETTABLEKS R12 R13 K25 ["SearchPill"]
  CALL R11 1 1
  GETTABLEKS R12 R5 K26 ["withContext"]
  GETTABLEKS R13 R4 K27 ["PureComponent"]
  LOADK R15 K28 ["SearchList"]
  NAMECALL R13 R13 K29 ["extend"]
  CALL R13 2 1
  DUPTABLE R14 K33 [{"ItemMinWidth", "MaxRowCount", "Size"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K30 ["ItemMinWidth"]
  LOADK R15 K34 [∞]
  SETTABLEKS R15 R14 K31 ["MaxRowCount"]
  GETIMPORT R15 K37 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K32 ["Size"]
  SETTABLEKS R14 R13 K38 ["defaultProps"]
  DUPCLOSURE R14 K39 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K40 ["init"]
  DUPCLOSURE R14 K41 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K42 ["render"]
  MOVE R14 R12
  DUPTABLE R15 K44 [{"Stylizer"}]
  GETTABLEKS R16 R5 K43 ["Stylizer"]
  SETTABLEKS R16 R15 K43 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  MOVE R14 R9
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1