PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"onActivated", "SelectionImageObject", "layoutOrder", "size", "head", "tail"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["onActivated"]
  SETTABLEKS R4 R3 K1 ["onActivated"]
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["Square"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["SelectionImageObject"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["layoutOrder"]
  SETTABLEKS R4 R3 K3 ["layoutOrder"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 72
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K12 ["Frame"]
  DUPTABLE R6 K15 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 72
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  DUPTABLE R7 K18 [{"GameIcon", "Label"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K24 [{"gameId", "iconSize", "cornerRadius", "Position", "AnchorPoint"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K19 ["gameId"]
  SETTABLEKS R11 R10 K19 ["gameId"]
  LOADN R11 48
  SETTABLEKS R11 R10 K20 ["iconSize"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["cornerRadius"]
  GETIMPORT R11 K11 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADK R14 K27 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Position"]
  GETIMPORT R11 K29 [Vector2.new]
  LOADN R12 0
  LOADK R13 K27 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["AnchorPoint"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["GameIcon"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K35 [{"fontKey", "themeKey", "BackgroundTransparency", "AnchorPoint", "AutomaticSize", "Text", "TextXAlignment", "Position"}]
  LOADK R11 K36 ["Header2"]
  SETTABLEKS R11 R10 K30 ["fontKey"]
  LOADK R11 K37 ["TextEmphasis"]
  SETTABLEKS R11 R10 K31 ["themeKey"]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  GETIMPORT R11 K29 [Vector2.new]
  LOADN R12 0
  LOADK R13 K27 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["AnchorPoint"]
  GETIMPORT R11 K40 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K32 ["AutomaticSize"]
  GETTABLEKS R11 R0 K41 ["labelText"]
  SETTABLEKS R11 R10 K33 ["Text"]
  GETIMPORT R11 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K34 ["TextXAlignment"]
  GETIMPORT R11 K11 [UDim2.new]
  LOADN R12 0
  LOADN R13 54
  LOADK R14 K27 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Position"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["Label"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["head"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K12 ["Frame"]
  DUPTABLE R6 K44 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R7 K29 [Vector2.new]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K23 ["AnchorPoint"]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K22 ["Position"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["tail"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETUPVAL R3 0
  DUPTABLE R4 K2 [{"labelText"}]
  LOADK R5 K3 ["CoreScripts.InGameMenu.Report.ReportExperience"]
  SETTABLEKS R5 R4 K1 ["labelText"]
  CALL R3 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R3 1 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderWithSelectionCursor"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETTABLEKS R6 R2 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["Table"]
  GETTABLEKS R4 R5 K12 ["Cell"]
  GETTABLEKS R7 R2 K10 ["App"]
  GETTABLEKS R6 R7 K13 ["SelectionImage"]
  GETTABLEKS R5 R6 K14 ["CursorKind"]
  GETTABLEKS R8 R2 K10 ["App"]
  GETTABLEKS R7 R8 K13 ["SelectionImage"]
  GETTABLEKS R6 R7 K15 ["withSelectionCursorProvider"]
  GETIMPORT R9 K17 [script]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R7 R8 K18 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K19 ["Dependencies"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K20 ["GameIcon"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K21 ["ThemedTextLabel"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R8 K22 ["withLocalization"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K23 ["PureComponent"]
  LOADK R14 K24 ["GameCell"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R3 K26 ["strictInterface"]
  DUPTABLE R14 K30 [{"gameId", "layoutOrder", "onActivated"}]
  GETTABLEKS R15 R3 K31 ["number"]
  SETTABLEKS R15 R14 K27 ["gameId"]
  GETTABLEKS R15 R3 K32 ["optional"]
  GETTABLEKS R16 R3 K33 ["union"]
  GETTABLEKS R17 R3 K34 ["integer"]
  GETTABLEKS R18 R3 K35 ["table"]
  CALL R16 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K28 ["layoutOrder"]
  GETTABLEKS R15 R3 K32 ["optional"]
  GETTABLEKS R16 R3 K36 ["callback"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K29 ["onActivated"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K37 ["validateProps"]
  DUPCLOSURE R13 K38 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K39 ["renderWithSelectionCursor"]
  DUPCLOSURE R13 K40 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K41 ["render"]
  RETURN R12 1
