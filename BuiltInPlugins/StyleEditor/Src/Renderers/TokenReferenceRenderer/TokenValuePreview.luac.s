PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R0 K0 ["TokenValue"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K2 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K3 ["Color3"] [+3]
  JUMPIFNOTEQKS R2 K4 ["BrickColor"] [+29]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  NEWTABLE R5 4 0
  MOVE R6 R1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  JUMPIFNOTEQKS R2 K3 ["Color3"] [+4]
  GETTABLEKS R6 R0 K0 ["TokenValue"]
  JUMP [+4]
  GETTABLEKS R7 R0 K0 ["TokenValue"]
  GETTABLEKS R6 R7 K7 ["Color"]
  SETTABLEKS R6 R5 K8 ["BackgroundColor3"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Tag"]
  LOADK R7 K10 ["X-Corner Icon16"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  JUMP [+65]
  JUMPIFNOTEQKS R2 K11 ["ColorSequence"] [+31]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K12 ["Frame"]
  NEWTABLE R5 2 0
  MOVE R6 R1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Tag"]
  LOADK R7 K13 ["SequencePreviewButton X-Corner X-Stroke"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K15 [{"Gradient"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K16 ["UIGradient"]
  DUPTABLE R9 K17 [{"Color"}]
  GETTABLEKS R10 R0 K0 ["TokenValue"]
  SETTABLEKS R10 R9 K7 ["Color"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Gradient"]
  CALL R3 3 1
  JUMP [+33]
  JUMPIFNOTEQKS R2 K18 ["NumberSequence"] [+31]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K12 ["Frame"]
  NEWTABLE R5 2 0
  MOVE R6 R1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Tag"]
  LOADK R7 K13 ["SequencePreviewButton X-Corner X-Stroke"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K15 [{"Gradient"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K16 ["UIGradient"]
  DUPTABLE R9 K20 [{"Transparency"}]
  GETTABLEKS R10 R0 K0 ["TokenValue"]
  SETTABLEKS R10 R9 K19 ["Transparency"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Gradient"]
  CALL R3 3 1
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOTEQKS R2 K21 ["Font"] [+4]
  GETTABLEKS R4 R0 K0 ["TokenValue"]
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  NEWTABLE R7 2 0
  GETTABLEKS R8 R0 K6 ["LayoutOrder"]
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["Tag"]
  LOADK R9 K22 ["X-RowM X-Fit"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K25 [{"LeadingComponent", "Label"}]
  SETTABLEKS R3 R8 K23 ["LeadingComponent"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  NEWTABLE R11 8 0
  MOVE R12 R1
  CALL R12 0 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  SETTABLEKS R4 R11 K26 ["FontFace"]
  GETIMPORT R12 K29 [UDim2.fromOffset]
  LOADN R13 0
  GETUPVAL R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["Size"]
  GETUPVAL R12 5
  GETTABLEKS R13 R0 K0 ["TokenValue"]
  DUPTABLE R14 K32 [{"Fonts"}]
  GETTABLEKS R15 R0 K31 ["Fonts"]
  SETTABLEKS R15 R14 K31 ["Fonts"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["Text"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["Tag"]
  LOADK R13 K34 ["X-FitX"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["Label"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_1:
  DUPTABLE R1 K1 [{"Fonts"}]
  GETTABLEKS R3 R0 K2 ["Asset"]
  GETTABLEKS R2 R3 K0 ["Fonts"]
  SETTABLEKS R2 R1 K0 ["Fonts"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["RoactRodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["UI"]
  GETTABLEKS R4 R5 K10 ["Pane"]
  GETTABLEKS R6 R3 K9 ["UI"]
  GETTABLEKS R5 R6 K11 ["TextLabel"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Hooks"]
  GETTABLEKS R7 R8 K14 ["useLayoutOrderCounter"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Resources"]
  GETTABLEKS R8 R9 K16 ["PluginStyles"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K17 ["Reducers"]
  GETTABLEKS R9 R10 K18 ["RootReducer"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K20 ["attributeValueToString"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  LOADK R14 K21 ["TokenTooltipRowHeight"]
  NAMECALL R12 R7 K22 ["GetAttribute"]
  CALL R12 2 1
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R10
  GETTABLEKS R14 R1 K24 ["connect"]
  DUPCLOSURE R15 K25 [PROTO_1]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1