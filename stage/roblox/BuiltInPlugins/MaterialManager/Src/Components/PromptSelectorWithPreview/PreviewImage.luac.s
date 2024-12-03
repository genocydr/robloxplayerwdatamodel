PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"promptSelectionHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["promptSelectionHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"promptSelectionHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["promptSelectionHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"promptSelectionHovered"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["promptSelectionHovered"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onPromptSelectionHover"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onPromptSelectionHoverEnd"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["PromptSelectorWithPreview"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R0 K4 ["state"]
  GETTABLEKS R5 R1 K5 ["ImageId"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R1 K5 ["ImageId"]
  JUMPIFNOTEQKS R6 K6 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R7 R4 K7 ["promptSelectionHovered"]
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADB R6 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["createElement"]
  LOADK R8 K9 ["ImageLabel"]
  NEWTABLE R9 8 0
  LOADN R10 1
  SETTABLEKS R10 R9 K10 ["ZIndex"]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 0
  GETTABLEKS R12 R2 K14 ["PreviewSize"]
  LOADN R13 0
  GETTABLEKS R14 R2 K14 ["PreviewSize"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Size"]
  LOADK R10 K6 [""]
  SETTABLEKS R10 R9 K16 ["Image"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["Event"]
  GETTABLEKS R10 R11 K18 ["MouseEnter"]
  GETTABLEKS R11 R0 K19 ["onPromptSelectionHover"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["Event"]
  GETTABLEKS R10 R11 K20 ["MouseLeave"]
  GETTABLEKS R11 R0 K21 ["onPromptSelectionHoverEnd"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K25 [{"PreviewNoImageSign", "PreviewContentContainer", "Toolbar"}]
  NOT R11 R5
  JUMPIFNOT R11 [+62]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K26 ["Frame"]
  DUPTABLE R13 K28 [{"ZIndex", "Size", "BackgroundColor3"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K10 ["ZIndex"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  GETTABLEKS R14 R2 K29 ["ImportImageBackground"]
  SETTABLEKS R14 R13 K27 ["BackgroundColor3"]
  DUPTABLE R14 K31 [{"NoImageText"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K37 [{"Size", "TextXAlignment", "TextSize", "Text", "TextWrapped", "TextColor"}]
  GETIMPORT R18 K13 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K15 ["Size"]
  GETIMPORT R18 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K32 ["TextXAlignment"]
  GETTABLEKS R18 R2 K41 ["TextHeight"]
  SETTABLEKS R18 R17 K33 ["TextSize"]
  LOADK R20 K42 ["CreateDialog"]
  LOADK R21 K43 ["NoImageSelected"]
  NAMECALL R18 R3 K44 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["Text"]
  LOADB R18 1
  SETTABLEKS R18 R17 K35 ["TextWrapped"]
  GETTABLEKS R18 R2 K45 ["ButtonIconColor"]
  SETTABLEKS R18 R17 K36 ["TextColor"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["NoImageText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["PreviewNoImageSign"]
  MOVE R11 R5
  JUMPIFNOT R11 [+71]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K26 ["Frame"]
  DUPTABLE R13 K46 [{"ZIndex", "Size"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K10 ["ZIndex"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  DUPTABLE R14 K48 [{"PreviewContent"}]
  GETTABLEKS R16 R1 K49 ["IsTempId"]
  JUMPIFNOTEQKB R16 TRUE [+28]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K52 [{"BackgroundTransparency", "Size", "Image", "ScaleType"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K50 ["BackgroundTransparency"]
  GETIMPORT R18 K13 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K15 ["Size"]
  GETTABLEKS R18 R1 K5 ["ImageId"]
  SETTABLEKS R18 R17 K16 ["Image"]
  GETIMPORT R18 K54 [Enum.ScaleType.Fit]
  SETTABLEKS R18 R17 K51 ["ScaleType"]
  CALL R15 2 1
  JUMP [+19]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K55 [{"Size", "Image"}]
  GETIMPORT R18 K13 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K15 ["Size"]
  GETTABLEKS R18 R1 K5 ["ImageId"]
  SETTABLEKS R18 R17 K16 ["Image"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["PreviewContent"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["PreviewContentContainer"]
  GETTABLEKS R12 R1 K49 ["IsTempId"]
  JUMPIFNOTEQKB R12 FALSE [+109]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K26 ["Frame"]
  DUPTABLE R13 K60 [{"ZIndex", "AnchorPoint", "Position", "Size", "Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  LOADN R14 3
  SETTABLEKS R14 R13 K10 ["ZIndex"]
  GETIMPORT R14 K62 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K56 ["AnchorPoint"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K57 ["Position"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R2 K63 ["ToolbarHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  SETTABLEKS R6 R13 K58 ["Visible"]
  GETTABLEKS R14 R2 K64 ["ToolbarTransparency"]
  SETTABLEKS R14 R13 K50 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K59 ["BorderSizePixel"]
  GETTABLEKS R14 R2 K65 ["ToolbarBackgroundColor"]
  SETTABLEKS R14 R13 K27 ["BackgroundColor3"]
  DUPTABLE R14 K68 [{"ExpandPreview", "ClearButton"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  NEWTABLE R17 2 0
  GETTABLEKS R18 R2 K69 ["ExpandIcon"]
  SETTABLEKS R18 R17 K70 ["Icon"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K17 ["Event"]
  GETTABLEKS R18 R19 K71 ["Activated"]
  GETTABLEKS R19 R1 K72 ["OpenExpandedPreview"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["ExpandPreview"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  NEWTABLE R17 4 0
  GETIMPORT R18 K62 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["AnchorPoint"]
  GETIMPORT R18 K13 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K57 ["Position"]
  GETTABLEKS R18 R2 K73 ["ClearIcon"]
  SETTABLEKS R18 R17 K70 ["Icon"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K17 ["Event"]
  GETTABLEKS R18 R19 K71 ["Activated"]
  GETTABLEKS R19 R1 K74 ["ClearSelection"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K67 ["ClearButton"]
  CALL R11 3 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K24 ["Toolbar"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R5 R3 K10 ["withContext"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Image"]
  GETTABLEKS R9 R7 K15 ["TextLabel"]
  GETTABLEKS R11 R0 K16 ["Src"]
  GETTABLEKS R10 R11 K17 ["Components"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R10 K18 ["PromptSelectorWithPreview"]
  GETTABLEKS R12 R13 K19 ["PreviewToolbarButton"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K16 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K20 ["LoadingImage"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K21 ["PureComponent"]
  LOADK R15 K22 ["PreviewImage"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K24 [PROTO_2]
  SETTABLEKS R14 R13 K25 ["init"]
  DUPCLOSURE R14 K26 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K27 ["render"]
  MOVE R14 R5
  DUPTABLE R15 K28 [{"Stylizer", "Localization"}]
  SETTABLEKS R6 R15 K12 ["Stylizer"]
  SETTABLEKS R4 R15 K9 ["Localization"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1