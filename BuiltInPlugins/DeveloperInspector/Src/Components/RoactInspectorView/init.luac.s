PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"Layout", "Padding", "Spacing"}]
  GETIMPORT R6 K10 [Enum.FillDirection.Horizontal]
  SETTABLEKS R6 R5 K3 ["Layout"]
  GETTABLEKS R6 R2 K4 ["Padding"]
  SETTABLEKS R6 R5 K4 ["Padding"]
  GETTABLEKS R6 R2 K4 ["Padding"]
  SETTABLEKS R6 R5 K5 ["Spacing"]
  DUPTABLE R6 K13 [{"Left", "Right"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K16 [{"LayoutOrder", "Layout", "Size", "Spacing"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  GETIMPORT R10 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K3 ["Layout"]
  GETIMPORT R10 K21 [UDim2.new]
  LOADK R11 K22 [0.5]
  GETTABLEKS R13 R2 K4 ["Padding"]
  MINUS R12 R13
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Size"]
  GETTABLEKS R10 R2 K4 ["Padding"]
  SETTABLEKS R10 R9 K5 ["Spacing"]
  DUPTABLE R10 K25 [{"TreeContainer", "ListContainer"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K26 [{"LayoutOrder", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  GETIMPORT R14 K21 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  GETTABLEKS R19 R2 K27 ["NodeListHeight"]
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  DUPTABLE R14 K29 [{"RoactElementTree"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 2
  NEWTABLE R17 0 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["RoactElementTree"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["TreeContainer"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K26 [{"LayoutOrder", "Size"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  GETIMPORT R14 K21 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R19 R2 K27 ["NodeListHeight"]
  GETTABLEKS R20 R2 K4 ["Padding"]
  SUB R18 R19 R20
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  DUPTABLE R14 K31 [{"NodeList"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K33 [{"selectTarget"}]
  GETTABLEKS R18 R0 K32 ["selectTarget"]
  SETTABLEKS R18 R17 K32 ["selectTarget"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["NodeList"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K24 ["ListContainer"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Left"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K26 [{"LayoutOrder", "Size"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  GETIMPORT R10 K35 [UDim2.fromScale]
  LOADK R11 K22 [0.5]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Size"]
  DUPTABLE R10 K37 [{"Child"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  NEWTABLE R13 0 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["Child"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Right"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["RoactElementTree"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["FieldsTable"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["NodeList"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Pane"]
  GETTABLEKS R8 R2 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["withContext"]
  GETTABLEKS R10 R1 K15 ["PureComponent"]
  LOADK R12 K16 ["RoactInspectorView"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K19 ["render"]
  MOVE R11 R9
  DUPTABLE R12 K21 [{"Stylizer"}]
  GETTABLEKS R13 R8 K20 ["Stylizer"]
  SETTABLEKS R13 R12 K20 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
