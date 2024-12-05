PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 0 0
  DUPTABLE R7 K5 [{"Label"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K6 ["TextLabel"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["Dictionary"]
  GETTABLEKS R10 R11 K8 ["join"]
  GETTABLEKS R12 R2 K9 ["fontStyle"]
  GETTABLEKS R11 R12 K10 ["Normal"]
  DUPTABLE R12 K15 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  LOADK R15 K16 ["General"]
  LOADK R16 K17 ["SettingsInsufficientPermission"]
  NAMECALL R13 R3 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K12 ["Text"]
  GETIMPORT R13 K21 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  CALL R10 2 1
  DUPTABLE R11 K23 [{"Padding"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K24 ["UIPadding"]
  DUPTABLE R14 K27 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K30 [UDim.new]
  LOADN R16 0
  GETTABLEKS R19 R2 K32 ["settingsPage"]
  GETTABLEKS R18 R19 K33 ["failLabelPaddingX"]
  DIVK R17 R18 K31 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["PaddingLeft"]
  GETIMPORT R15 K30 [UDim.new]
  LOADN R16 0
  GETTABLEKS R19 R2 K32 ["settingsPage"]
  GETTABLEKS R18 R19 K33 ["failLabelPaddingX"]
  DIVK R17 R18 K31 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["Padding"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K4 ["Label"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Container"]
  GETTABLEKS R8 R1 K13 ["Component"]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K14 ["Name"]
  NAMECALL R8 R8 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K17 ["render"]
  MOVE R9 R5
  DUPTABLE R10 K20 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R4 K18 ["Stylizer"]
  SETTABLEKS R11 R10 K18 ["Stylizer"]
  GETTABLEKS R11 R4 K19 ["Localization"]
  SETTABLEKS R11 R10 K19 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1