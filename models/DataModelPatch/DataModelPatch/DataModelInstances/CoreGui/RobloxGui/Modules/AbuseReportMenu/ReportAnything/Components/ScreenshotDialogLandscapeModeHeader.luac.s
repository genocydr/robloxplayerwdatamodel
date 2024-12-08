PROTO_0:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["TextLabel"]
  DUPTABLE R5 K13 [{"Text", "Font", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "Size", "BackgroundTransparency"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K4 ["Text"]
  GETTABLEKS R7 R2 K14 ["Header2"]
  GETTABLEKS R6 R7 K1 ["Font"]
  SETTABLEKS R6 R5 K1 ["Font"]
  GETTABLEKS R7 R1 K15 ["TextEmphasis"]
  GETTABLEKS R6 R7 K16 ["Color"]
  SETTABLEKS R6 R5 K5 ["TextColor3"]
  GETTABLEKS R7 R1 K15 ["TextEmphasis"]
  GETTABLEKS R6 R7 K17 ["Transparency"]
  SETTABLEKS R6 R5 K6 ["TextTransparency"]
  LOADN R6 20
  SETTABLEKS R6 R5 K7 ["TextSize"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["TextWrapped"]
  GETIMPORT R6 K20 [Enum.TextXAlignment.Center]
  SETTABLEKS R6 R5 K9 ["TextXAlignment"]
  GETIMPORT R6 K21 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K10 ["TextYAlignment"]
  GETIMPORT R6 K24 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K12 ["BackgroundTransparency"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  DUPTABLE R2 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["BackgroundTransparency"]
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 120
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  DUPTABLE R3 K12 [{"Layout", "BackButton", "UndoButton", "RedoButton"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K13 ["UIListLayout"]
  DUPTABLE R6 K18 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R7 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K14 ["FillDirection"]
  GETIMPORT R7 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K15 ["HorizontalAlignment"]
  GETIMPORT R7 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K16 ["VerticalAlignment"]
  GETIMPORT R7 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R7 R6 K17 ["SortOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["Layout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K32 [{"iconSize", "icon", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["Medium"]
  SETTABLEKS R7 R6 K28 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K34 ["icons/navigation/pushBack"]
  SETTABLEKS R7 R6 K29 ["icon"]
  LOADN R7 1
  SETTABLEKS R7 R6 K30 ["layoutOrder"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K31 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["BackButton"]
  GETUPVAL R4 5
  JUMPIFNOT R4 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K36 [{"iconSize", "icon", "isDisabled", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["Medium"]
  SETTABLEKS R7 R6 K28 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K37 ["icons/actions/edit/undo"]
  SETTABLEKS R7 R6 K29 ["icon"]
  GETUPVAL R8 6
  NOT R7 R8
  SETTABLEKS R7 R6 K35 ["isDisabled"]
  LOADN R7 2
  SETTABLEKS R7 R6 K30 ["layoutOrder"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K31 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["UndoButton"]
  GETUPVAL R4 5
  JUMPIFNOT R4 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K36 [{"iconSize", "icon", "isDisabled", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["Medium"]
  SETTABLEKS R7 R6 K28 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K38 ["icons/actions/edit/redo"]
  SETTABLEKS R7 R6 K29 ["icon"]
  GETUPVAL R8 8
  NOT R7 R8
  SETTABLEKS R7 R6 K35 ["isDisabled"]
  LOADN R7 3
  SETTABLEKS R7 R6 K30 ["layoutOrder"]
  GETUPVAL R7 9
  SETTABLEKS R7 R6 K31 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["RedoButton"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  OR R5 R3 R4
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R6 1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  DUPTABLE R2 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["BackgroundTransparency"]
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 144
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  DUPTABLE R3 K10 [{"Layout", "Buttons"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["UIListLayout"]
  DUPTABLE R6 K15 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R7 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K12 ["FillDirection"]
  GETIMPORT R7 K20 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K13 ["HorizontalAlignment"]
  GETIMPORT R7 K21 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K14 ["VerticalAlignment"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["Layout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K23 [{"buttons"}]
  NEWTABLE R7 0 1
  DUPTABLE R8 K26 [{"buttonType", "props"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K27 ["PrimarySystem"]
  SETTABLEKS R9 R8 K24 ["buttonType"]
  DUPTABLE R9 K30 [{"onActivated", "text"}]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R10 R9 K28 ["onActivated"]
  GETUPVAL R10 5
  LOADK R12 K31 ["Feature.ReportAbuse.Action.Next"]
  NAMECALL R10 R10 K32 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K29 ["text"]
  SETTABLEKS R9 R8 K25 ["props"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K22 ["buttons"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["Buttons"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K7 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "ZIndex"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K10 [Color3.fromHex]
  LOADK R5 K11 ["#4F545F"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["BackgroundColor3"]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  GETIMPORT R4 K14 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 47
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  LOADN R4 2
  SETTABLEKS R4 R3 K6 ["ZIndex"]
  DUPTABLE R4 K16 [{"Bar"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K22 [{"backgroundTransparency", "barHeight", "renderLeft", "renderRight", "renderCenter"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K17 ["backgroundTransparency"]
  LOADN R8 48
  SETTABLEKS R8 R7 K18 ["barHeight"]
  GETTABLEKS R9 R0 K23 ["backAction"]
  GETTABLEKS R10 R0 K24 ["undoAnnotationPoints"]
  GETTABLEKS R11 R0 K25 ["redoAnnotationPoints"]
  GETTABLEKS R12 R0 K26 ["isRedoEnabled"]
  GETTABLEKS R13 R0 K27 ["isUndoEnabled"]
  OR R14 R12 R13
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K19 ["renderLeft"]
  GETTABLEKS R9 R0 K28 ["finishAnnotationAction"]
  GETTABLEKS R10 R0 K29 ["annotationPoints"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE UPVAL U7
  SETTABLEKS R8 R7 K20 ["renderRight"]
  GETTABLEKS R9 R0 K30 ["titleText"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K21 ["renderCenter"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["Bar"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Workspace"]
  GETTABLEKS R5 R6 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["RobloxTranslator"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K11 ["App"]
  GETTABLEKS R5 R6 K12 ["Button"]
  GETTABLEKS R4 R5 K13 ["ButtonStack"]
  GETTABLEKS R8 R1 K11 ["App"]
  GETTABLEKS R7 R8 K12 ["Button"]
  GETTABLEKS R6 R7 K14 ["Enum"]
  GETTABLEKS R5 R6 K15 ["ButtonType"]
  GETTABLEKS R8 R1 K11 ["App"]
  GETTABLEKS R7 R8 K16 ["Bar"]
  GETTABLEKS R6 R7 K17 ["HeaderBar"]
  GETTABLEKS R9 R1 K11 ["App"]
  GETTABLEKS R8 R9 K12 ["Button"]
  GETTABLEKS R7 R8 K18 ["IconButton"]
  GETTABLEKS R11 R1 K11 ["App"]
  GETTABLEKS R10 R11 K19 ["ImageSet"]
  GETTABLEKS R9 R10 K14 ["Enum"]
  GETTABLEKS R8 R9 K20 ["IconSize"]
  GETTABLEKS R11 R1 K11 ["App"]
  GETTABLEKS R10 R11 K19 ["ImageSet"]
  GETTABLEKS R9 R10 K21 ["Images"]
  GETTABLEKS R11 R1 K22 ["Style"]
  GETTABLEKS R10 R11 K23 ["withStyle"]
  DUPCLOSURE R11 K24 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R2
  DUPCLOSURE R12 K25 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  DUPCLOSURE R13 K26 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPCLOSURE R14 K27 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R10
  RETURN R14 1