PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSetCount"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Count"]
  ADDK R1 R2 K2 [1]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K4 ["Analytics"]
  LOADK R2 K5 ["counterClicked"]
  LOADK R3 K6 ["increment"]
  NAMECALL R0 R0 K7 ["report"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSetCount"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Count"]
  SUBK R1 R2 K2 [1]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K4 ["Analytics"]
  LOADK R2 K5 ["counterClicked"]
  LOADK R3 K6 ["decrement"]
  NAMECALL R0 R0 K7 ["report"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSetCount"]
  LOADN R1 0
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["Analytics"]
  LOADK R2 K3 ["counterClicked"]
  LOADK R3 K4 ["reset"]
  NAMECALL R0 R0 K5 ["report"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["increaseCountByOne"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["decreaseCountByOne"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["resetCount"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R5 R1 K3 ["Count"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K5 [tostring]
  CALL R4 1 1
  GETTABLEKS R5 R1 K6 ["Localization"]
  LOADK R7 K7 ["CountModifier"]
  LOADK R8 K8 ["Reset"]
  NAMECALL R5 R5 K9 ["getText"]
  CALL R5 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K12 [{"Size", "LayoutOrder", "Layout"}]
  SETTABLEKS R2 R8 K1 ["Size"]
  SETTABLEKS R3 R8 K2 ["LayoutOrder"]
  GETIMPORT R9 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K11 ["Layout"]
  DUPTABLE R9 K19 [{"CountController", "ResetButton"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K20 [{"Size", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K23 [UDim2.fromScale]
  LOADN R14 1
  LOADK R15 K24 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K1 ["Size"]
  GETIMPORT R13 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K11 ["Layout"]
  LOADN R13 1
  SETTABLEKS R13 R12 K2 ["LayoutOrder"]
  DUPTABLE R13 K30 [{"Decrease", "Display", "Increase"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K33 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETIMPORT R17 K35 [UDim2.fromOffset]
  LOADN R18 50
  LOADN R19 50
  CALL R17 2 1
  SETTABLEKS R17 R16 K1 ["Size"]
  LOADK R17 K36 ["-"]
  SETTABLEKS R17 R16 K31 ["Text"]
  GETTABLEKS R17 R0 K37 ["decreaseCountByOne"]
  SETTABLEKS R17 R16 K32 ["OnClick"]
  LOADN R17 1
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["Decrease"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K38 [{"Size", "Text", "LayoutOrder"}]
  GETIMPORT R17 K35 [UDim2.fromOffset]
  LOADN R18 150
  LOADN R19 50
  CALL R17 2 1
  SETTABLEKS R17 R16 K1 ["Size"]
  SETTABLEKS R4 R16 K31 ["Text"]
  LOADN R17 2
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["Display"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K39 [{"Text", "Size", "OnClick", "LayoutOrder"}]
  LOADK R17 K40 ["+"]
  SETTABLEKS R17 R16 K31 ["Text"]
  GETIMPORT R17 K35 [UDim2.fromOffset]
  LOADN R18 50
  LOADN R19 50
  CALL R17 2 1
  SETTABLEKS R17 R16 K1 ["Size"]
  GETTABLEKS R17 R0 K41 ["increaseCountByOne"]
  SETTABLEKS R17 R16 K32 ["OnClick"]
  LOADN R17 3
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["Increase"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K17 ["CountController"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K33 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETIMPORT R13 K35 [UDim2.fromOffset]
  LOADN R14 150
  LOADN R15 50
  CALL R13 2 1
  SETTABLEKS R13 R12 K1 ["Size"]
  SETTABLEKS R5 R12 K31 ["Text"]
  GETTABLEKS R13 R0 K42 ["resetCount"]
  SETTABLEKS R13 R12 K32 ["OnClick"]
  LOADN R13 2
  SETTABLEKS R13 R12 K2 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["ResetButton"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  DUPTABLE R2 K1 [{"Count"}]
  GETTABLEKS R4 R0 K2 ["CountReducer"]
  GETTABLEKS R3 R4 K0 ["Count"]
  SETTABLEKS R3 R2 K0 ["Count"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"dispatchSetCount"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetCount"]
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
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Analytics"]
  GETTABLEKS R7 R4 K12 ["Localization"]
  GETTABLEKS R9 R3 K13 ["Style"]
  GETTABLEKS R8 R9 K14 ["Stylizer"]
  GETTABLEKS R9 R3 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Pane"]
  GETTABLEKS R11 R9 K17 ["TextLabel"]
  GETTABLEKS R12 R9 K18 ["Button"]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Actions"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K21 ["SetCount"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K22 ["PureComponent"]
  LOADK R17 K23 ["CountModifier"]
  NAMECALL R15 R15 K24 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K25 [PROTO_3]
  SETTABLEKS R16 R15 K26 ["init"]
  DUPCLOSURE R16 K27 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K28 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K29 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R17 K11 ["Analytics"]
  SETTABLEKS R7 R17 K12 ["Localization"]
  SETTABLEKS R8 R17 K14 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  GETTABLEKS R16 R2 K30 ["connect"]
  DUPCLOSURE R17 K31 [PROTO_5]
  DUPCLOSURE R18 K32 [PROTO_7]
  CAPTURE VAL R14
  CALL R16 2 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
