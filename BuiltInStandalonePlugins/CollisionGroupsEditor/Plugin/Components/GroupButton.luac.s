PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"Hovering"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["Hovering"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"Hovering"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["Hovering"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"Hovering"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["Hovering"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["mouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["mouseLeave"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K10 [{"Size", "Padding", "LayoutOrder", "Style", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
  GETTABLEKS R6 R2 K3 ["Size"]
  SETTABLEKS R6 R5 K3 ["Size"]
  GETTABLEKS R6 R2 K4 ["Padding"]
  SETTABLEKS R6 R5 K4 ["Padding"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  DUPTABLE R6 K15 [{"Foreground", "ForegroundStyle", "Background", "BackgroundStyle"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K11 ["Foreground"]
  DUPTABLE R7 K20 [{"Image", "Size", "AnchorPoint", "Position", "ScaleType"}]
  GETTABLEKS R10 R0 K21 ["state"]
  GETTABLEKS R9 R10 K22 ["Hovering"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R2 K23 ["HoveredImage"]
  JUMP [+2]
  GETTABLEKS R8 R2 K16 ["Image"]
  SETTABLEKS R8 R7 K16 ["Image"]
  GETTABLEKS R8 R2 K24 ["ImageSize"]
  SETTABLEKS R8 R7 K3 ["Size"]
  GETIMPORT R8 K27 [Vector2.new]
  LOADK R9 K28 [0.5]
  LOADK R10 K28 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["AnchorPoint"]
  GETIMPORT R8 K30 [UDim2.new]
  LOADK R9 K28 [0.5]
  LOADN R10 0
  LOADK R11 K28 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Position"]
  GETIMPORT R8 K33 [Enum.ScaleType.Stretch]
  SETTABLEKS R8 R7 K19 ["ScaleType"]
  SETTABLEKS R7 R6 K12 ["ForegroundStyle"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K13 ["Background"]
  LOADK R7 K34 ["None"]
  SETTABLEKS R7 R6 K14 ["BackgroundStyle"]
  SETTABLEKS R6 R5 K6 ["Style"]
  GETTABLEKS R6 R1 K7 ["OnClick"]
  SETTABLEKS R6 R5 K7 ["OnClick"]
  GETTABLEKS R6 R0 K35 ["mouseEnter"]
  SETTABLEKS R6 R5 K8 ["OnMouseEnter"]
  GETTABLEKS R6 R0 K36 ["mouseLeave"]
  SETTABLEKS R6 R5 K9 ["OnMouseLeave"]
  DUPTABLE R6 K39 [{"HoverArea", "Tooltip"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K41 [{"Cursor"}]
  LOADK R10 K42 ["PointingHand"]
  SETTABLEKS R10 R9 K40 ["Cursor"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K37 ["HoverArea"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K44 [{"Text"}]
  GETTABLEKS R10 R1 K45 ["TooltipMessage"]
  SETTABLEKS R10 R9 K43 ["Text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K38 ["Tooltip"]
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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Button"]
  GETTABLEKS R6 R4 K11 ["HoverArea"]
  GETTABLEKS R7 R4 K12 ["Image"]
  GETTABLEKS R8 R4 K13 ["Pane"]
  GETTABLEKS R9 R4 K14 ["Tooltip"]
  GETTABLEKS R10 R1 K15 ["Component"]
  LOADK R12 K16 ["GroupButton"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_2]
  SETTABLEKS R11 R10 K19 ["init"]
  DUPCLOSURE R11 K20 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K21 ["render"]
  GETTABLEKS R11 R3 K22 ["withContext"]
  DUPTABLE R12 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R3 K23 ["Stylizer"]
  SETTABLEKS R13 R12 K23 ["Stylizer"]
  GETTABLEKS R13 R3 K24 ["Localization"]
  SETTABLEKS R13 R12 K24 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
