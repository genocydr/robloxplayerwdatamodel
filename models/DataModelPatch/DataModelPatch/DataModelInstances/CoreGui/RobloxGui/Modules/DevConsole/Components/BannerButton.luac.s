PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Children"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["size"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["pos"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["isExpandable"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["isExpanded"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["layoutOrder"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["inset"]
  ORK R7 R8 K7 [0]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K9 ["onButtonPress"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K10 ["onMouseEnter"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K11 ["onMouseLeave"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K12 ["onMouseMove"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K13 ["onMouse2Click"]
  DUPTABLE R13 K17 [{"BannerButtonArrow", "HorizontalLineTop", "HorizontalLineBottom"}]
  MOVE R14 R8
  JUMPIFNOT R14 [+37]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  LOADK R15 K19 ["ImageLabel"]
  DUPTABLE R16 K25 [{"Visible", "Image", "BackgroundTransparency", "Size", "Position"}]
  SETTABLEKS R4 R16 K20 ["Visible"]
  JUMPIFNOT R5 [+2]
  GETUPVAL R17 1
  JUMPIF R17 [+1]
  GETUPVAL R17 2
  SETTABLEKS R17 R16 K21 ["Image"]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["BackgroundTransparency"]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 0
  GETUPVAL R19 3
  LOADN R20 0
  GETUPVAL R21 3
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 0
  MOVE R19 R7
  LOADK R20 K29 [0.5]
  GETUPVAL R23 3
  MINUS R22 R23
  DIVK R21 R22 K30 [2]
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["Position"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["BannerButtonArrow"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  LOADK R15 K31 ["Frame"]
  DUPTABLE R16 K34 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R21 4
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETUPVAL R17 5
  SETTABLEKS R17 R16 K32 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K33 ["BorderSizePixel"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["HorizontalLineTop"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  LOADK R15 K31 ["Frame"]
  DUPTABLE R16 K35 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R21 4
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  GETUPVAL R22 4
  MINUS R21 R22
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["Position"]
  GETUPVAL R17 5
  SETTABLEKS R17 R16 K32 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K33 ["BorderSizePixel"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["HorizontalLineBottom"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  LOADK R15 K36 ["ImageButton"]
  NEWTABLE R16 16 0
  SETTABLEKS R2 R16 K23 ["Size"]
  SETTABLEKS R3 R16 K24 ["Position"]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["BackgroundTransparency"]
  SETTABLEKS R6 R16 K37 ["LayoutOrder"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K38 ["Event"]
  GETTABLEKS R17 R18 K39 ["Activated"]
  SETTABLE R8 R16 R17
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K38 ["Event"]
  GETTABLEKS R17 R18 K40 ["MouseEnter"]
  SETTABLE R9 R16 R17
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K38 ["Event"]
  GETTABLEKS R17 R18 K41 ["MouseLeave"]
  SETTABLE R10 R16 R17
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K38 ["Event"]
  GETTABLEKS R17 R18 K42 ["MouseMoved"]
  SETTABLE R11 R16 R17
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K38 ["Event"]
  GETTABLEKS R17 R18 K43 ["MouseButton2Click"]
  SETTABLE R12 R16 R17
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K44 ["JoinDictionaries"]
  MOVE R18 R13
  MOVE R19 R1
  CALL R17 2 -1
  CALL R14 -1 -1
  RETURN R14 -1

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
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Immutable"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["GeneralFormatting"]
  GETTABLEKS R4 R5 K14 ["LineWidth"]
  GETTABLEKS R6 R3 K13 ["GeneralFormatting"]
  GETTABLEKS R5 R6 K15 ["LineColor"]
  GETTABLEKS R7 R3 K13 ["GeneralFormatting"]
  GETTABLEKS R6 R7 K16 ["ArrowWidth"]
  GETTABLEKS R8 R3 K17 ["Image"]
  GETTABLEKS R7 R8 K18 ["RightArrow"]
  GETTABLEKS R9 R3 K17 ["Image"]
  GETTABLEKS R8 R9 K19 ["DownArrow"]
  GETTABLEKS R9 R1 K20 ["Component"]
  LOADK R11 K21 ["BannerButton"]
  NAMECALL R9 R9 K22 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K23 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K24 ["render"]
  RETURN R9 1
