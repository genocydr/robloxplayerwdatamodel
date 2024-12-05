MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["defaultPadding"]
  MULK R5 R4 K13 [3]
  GETTABLEKS R8 R3 K14 ["normalFontSize"]
  ADD R7 R8 R5
  ADD R6 R7 R4
  MOVE R7 R2
  LOADK R8 K15 [".Component-ActivityHistoryBubbleListFooter"]
  DUPTABLE R9 K17 [{"Size"}]
  GETIMPORT R10 K20 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R6
  CALL R10 4 1
  SETTABLEKS R10 R9 K16 ["Size"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K21 ["::UIListLayout"]
  DUPTABLE R13 K23 [{"HorizontalAlignment"}]
  GETIMPORT R14 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K22 ["HorizontalAlignment"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K27 ["::UIPadding"]
  DUPTABLE R14 K32 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  MOVE R17 R5
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["PaddingTop"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K29 ["PaddingBottom"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["PaddingLeft"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["PaddingRight"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K35 ["> #Title"]
  DUPTABLE R15 K37 [{"TextColor3"}]
  LOADK R16 K38 ["$TextSecondary"]
  SETTABLEKS R16 R15 K36 ["TextColor3"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1
