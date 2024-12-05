PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"sizes"}]
  SETTABLEKS R0 R3 K0 ["sizes"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"sizes"}]
  NEWTABLE R2 0 2
  GETIMPORT R3 K4 [UDim.new]
  LOADK R4 K5 [0.333333333333333]
  LOADN R5 0
  CALL R3 2 1
  GETIMPORT R4 K4 [UDim.new]
  LOADK R5 K6 [0.666666666666667]
  LOADN R6 0
  CALL R4 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K0 ["sizes"]
  SETTABLEKS R1 R0 K7 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onSizesChange"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Width"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["sizes"]
  GETTABLE R5 R6 R1
  SETTABLEKS R5 R4 K0 ["Width"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K0 ["Instance"]
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K1 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K4 [{"Name"}]
  LOADK R8 K5 ["Table"]
  LOADK R9 K6 ["Instance"]
  NAMECALL R6 R3 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Name"]
  DUPTABLE R6 K4 [{"Name"}]
  LOADK R9 K5 ["Table"]
  LOADK R10 K8 ["Path"]
  NAMECALL R7 R3 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Name"]
  SETLIST R4 R5 2 [1]
  GETUPVAL R5 0
  MOVE R6 R4
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CALL R5 2 1
  GETTABLEKS R6 R1 K9 ["Rows"]
  JUMPIFNOT R6 [+51]
  GETTABLEKS R7 R1 K9 ["Rows"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+46]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K21 [{"Scroll", "UseScale", "ClampSize", "OnColumnSizesChange", "SortIndex", "SortOrder", "OnSortChange", "Columns", "Rows", "CellComponent", "OnSelectRow"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K11 ["Scroll"]
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["UseScale"]
  LOADB R9 1
  SETTABLEKS R9 R8 K13 ["ClampSize"]
  GETTABLEKS R9 R0 K22 ["onSizesChange"]
  SETTABLEKS R9 R8 K14 ["OnColumnSizesChange"]
  GETTABLEKS R9 R1 K15 ["SortIndex"]
  SETTABLEKS R9 R8 K15 ["SortIndex"]
  GETTABLEKS R9 R1 K16 ["SortOrder"]
  SETTABLEKS R9 R8 K16 ["SortOrder"]
  GETTABLEKS R9 R1 K23 ["Sort"]
  SETTABLEKS R9 R8 K17 ["OnSortChange"]
  SETTABLEKS R5 R8 K18 ["Columns"]
  GETTABLEKS R9 R1 K9 ["Rows"]
  SETTABLEKS R9 R8 K9 ["Rows"]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K19 ["CellComponent"]
  DUPCLOSURE R9 K24 [PROTO_3]
  CAPTURE UPVAL U5
  SETTABLEKS R9 R8 K20 ["OnSelectRow"]
  CALL R6 2 -1
  RETURN R6 -1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K26 [{"Padding"}]
  LOADN R9 5
  SETTABLEKS R9 R8 K25 ["Padding"]
  DUPTABLE R9 K28 [{"Child"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K35 [{"TextXAlignment", "TextYAlignment", "TextWrapped", "Size", "RichText", "Text"}]
  GETIMPORT R13 K38 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K29 ["TextXAlignment"]
  GETIMPORT R13 K40 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K30 ["TextYAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K31 ["TextWrapped"]
  GETIMPORT R13 K43 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["Size"]
  LOADB R13 1
  SETTABLEKS R13 R12 K33 ["RichText"]
  LOADK R15 K44 ["Plugin"]
  LOADK R16 K45 ["Info"]
  NAMECALL R13 R3 K7 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K34 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["Child"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["Audio"]
  GETTABLEKS R3 R4 K1 ["SelectedRow"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R4 R0 K0 ["Audio"]
  GETTABLEKS R3 R4 K2 ["Rows"]
  GETTABLEKS R5 R0 K0 ["Audio"]
  GETTABLEKS R4 R5 K1 ["SelectedRow"]
  GETTABLE R2 R3 R4
  JUMP [+1]
  LOADNIL R2
  DUPTABLE R3 K5 [{"Rows", "SortOrder", "SortIndex"}]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R6 R0 K0 ["Audio"]
  GETTABLEKS R5 R6 K6 ["Locations"]
  GETTABLEKS R6 R2 K7 ["Id"]
  GETTABLE R4 R5 R6
  JUMP [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K2 ["Rows"]
  GETTABLEKS R6 R0 K0 ["Audio"]
  GETTABLEKS R5 R6 K8 ["Right"]
  GETTABLEKS R4 R5 K3 ["SortOrder"]
  SETTABLEKS R4 R3 K3 ["SortOrder"]
  GETTABLEKS R6 R0 K0 ["Audio"]
  GETTABLEKS R5 R6 K8 ["Right"]
  GETTABLEKS R4 R5 K4 ["SortIndex"]
  SETTABLEKS R4 R3 K4 ["SortIndex"]
  RETURN R3 1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  LOADK R4 K0 ["Right"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"Sort"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["Sort"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["Dash"]
  GETTABLEKS R5 R4 K10 ["map"]
  GETTABLEKS R6 R4 K11 ["join"]
  GETTABLEKS R7 R3 K12 ["ContextServices"]
  GETTABLEKS R8 R7 K13 ["withContext"]
  GETTABLEKS R9 R7 K14 ["Localization"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Actions"]
  GETTABLEKS R11 R12 K17 ["SortTable"]
  CALL R10 1 1
  GETIMPORT R11 K19 [game]
  LOADK R13 K20 ["Selection"]
  NAMECALL R11 R11 K21 ["GetService"]
  CALL R11 2 1
  GETTABLEKS R13 R3 K22 ["Style"]
  GETTABLEKS R12 R13 K23 ["Stylizer"]
  GETTABLEKS R13 R3 K24 ["UI"]
  GETTABLEKS R14 R13 K25 ["Pane"]
  GETTABLEKS R15 R13 K26 ["TextLabel"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K27 ["Components"]
  GETTABLEKS R17 R18 K28 ["AudioTable"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K29 ["RightCell"]
  CALL R17 1 1
  GETTABLEKS R18 R1 K30 ["PureComponent"]
  LOADK R20 K31 ["RightPanel"]
  NAMECALL R18 R18 K32 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K33 [PROTO_1]
  SETTABLEKS R19 R18 K34 ["init"]
  DUPCLOSURE R19 K35 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K36 ["render"]
  MOVE R19 R8
  DUPTABLE R20 K37 [{"Localization", "Stylizer"}]
  SETTABLEKS R9 R20 K14 ["Localization"]
  SETTABLEKS R12 R20 K23 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  GETTABLEKS R19 R2 K38 ["connect"]
  DUPCLOSURE R20 K39 [PROTO_5]
  DUPCLOSURE R21 K40 [PROTO_7]
  CAPTURE VAL R10
  CALL R19 2 1
  MOVE R20 R18
  CALL R19 1 -1
  RETURN R19 -1
