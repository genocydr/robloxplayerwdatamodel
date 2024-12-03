PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ChangeCurrentEventName"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["OnChange"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["CurrentEventName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"Label", "Text", "LayoutOrder", "OnChange"}]
  LOADK R5 K8 ["Name"]
  SETTABLEKS R5 R4 K3 ["Label"]
  SETTABLEKS R1 R4 K4 ["Text"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["NameBox"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  GETTABLEKS R5 R0 K6 ["OnChange"]
  SETTABLEKS R5 R4 K6 ["OnChange"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  DUPTABLE R2 K1 [{"CurrentEventName"}]
  GETTABLEKS R4 R0 K2 ["Status"]
  GETTABLEKS R3 R4 K0 ["CurrentEventName"]
  SETTABLEKS R3 R2 K0 ["CurrentEventName"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"ChangeCurrentEventName"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ChangeCurrentEventName"]
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
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Components"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K13 ["TextInput"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R8 K15 ["ChangeCurrentEventName"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K17 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K18 ["INPUT_PANE_LAYOUT"]
  GETTABLEKS R12 R1 K19 ["PureComponent"]
  LOADK R14 K20 ["NameBox"]
  NAMECALL R12 R12 K21 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K22 [PROTO_1]
  SETTABLEKS R13 R12 K23 ["init"]
  DUPCLOSURE R13 K24 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K25 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K27 [{"Stylizer"}]
  GETTABLEKS R15 R4 K26 ["Stylizer"]
  SETTABLEKS R15 R14 K26 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  GETTABLEKS R13 R2 K28 ["connect"]
  DUPCLOSURE R14 K29 [PROTO_3]
  DUPCLOSURE R15 K30 [PROTO_5]
  CAPTURE VAL R9
  CALL R13 2 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
