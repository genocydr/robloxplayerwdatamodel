PROTO_0:
  GETTABLEKS R1 R0 K0 ["iconType"]
  GETTABLEKS R2 R0 K1 ["visible"]
  GETTABLEKS R3 R0 K2 ["anchorPoint"]
  GETTABLEKS R4 R0 K3 ["position"]
  GETTABLEKS R5 R0 K4 ["size"]
  GETTABLEKS R6 R0 K5 ["zIndex"]
  GETTABLEKS R7 R0 K6 ["onClick"]
  GETUPVAL R9 0
  GETTABLE R8 R9 R1
  JUMPIFNOT R8 [+36]
  GETUPVAL R9 1
  NAMECALL R9 R9 K7 ["GetImagePath"]
  CALL R9 1 1
  GETUPVAL R10 1
  MOVE R12 R8
  NAMECALL R10 R10 K8 ["GetFrame"]
  CALL R10 2 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K13 [{"visible", "anchorPoint", "position", "size", "zIndex", "onClick", "iconHorizontalAlignment", "iconSpritePath", "iconSpriteFrame"}]
  SETTABLEKS R2 R13 K1 ["visible"]
  SETTABLEKS R3 R13 K2 ["anchorPoint"]
  SETTABLEKS R4 R13 K3 ["position"]
  SETTABLEKS R5 R13 K4 ["size"]
  SETTABLEKS R6 R13 K5 ["zIndex"]
  SETTABLEKS R7 R13 K6 ["onClick"]
  GETIMPORT R14 K17 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K10 ["iconHorizontalAlignment"]
  SETTABLEKS R9 R13 K11 ["iconSpritePath"]
  SETTABLEKS R10 R13 K12 ["iconSpriteFrame"]
  CALL R11 2 -1
  RETURN R11 -1
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["iconType"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["zIndex"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["IconType"]
  GETTABLEKS R3 R4 K4 ["None"]
  JUMPIFNOTEQ R1 R3 [+60]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K0 ["props"]
  DUPTABLE R6 K7 [{"TextLabel"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K6 ["TextLabel"]
  DUPTABLE R9 K14 [{"Position", "Text", "TextSize", "TextColor3", "Font", "ZIndex"}]
  GETIMPORT R10 K17 [UDim2.new]
  LOADK R11 K18 [0.5]
  LOADN R12 0
  LOADK R13 K18 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Position"]
  GETUPVAL R10 3
  LOADK R12 K19 ["Feature.SettingsHub.Action.InviteFriendsBack"]
  NAMECALL R10 R10 K20 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["Text"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K21 ["textSize"]
  LOADN R11 24
  LOADK R12 K22 ["BackButton"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["TextSize"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K23 ["Color"]
  GETTABLEKS R10 R11 K24 ["WHITE"]
  SETTABLEKS R10 R9 K11 ["TextColor3"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K25 ["font"]
  GETIMPORT R11 K28 [Enum.Font.SourceSansSemibold]
  LOADK R12 K22 ["BackButton"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Font"]
  SETTABLEKS R2 R9 K13 ["ZIndex"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["TextLabel"]
  CALL R3 3 -1
  RETURN R3 -1
  GETUPVAL R3 6
  GETTABLEKS R4 R0 K0 ["props"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R6 R2 K7 ["Modules"]
  GETTABLEKS R5 R6 K8 ["Settings"]
  GETTABLEKS R4 R5 K9 ["Pages"]
  GETTABLEKS R3 R4 K10 ["ShareGame"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R3 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["RectangleButton"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R3 K13 ["Components"]
  GETTABLEKS R6 R7 K15 ["IconButton"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R0 K16 ["Packages"]
  GETTABLEKS R7 R8 K17 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R3 K18 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R14 R2 K7 ["Modules"]
  GETTABLEKS R13 R14 K8 ["Settings"]
  GETTABLEKS R12 R13 K9 ["Pages"]
  GETTABLEKS R11 R12 K10 ["ShareGame"]
  GETTABLEKS R10 R11 K19 ["Spritesheets"]
  GETTABLEKS R9 R10 K20 ["ShareGameIcons"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R2 K7 ["Modules"]
  GETTABLEKS R11 R12 K8 ["Settings"]
  GETTABLEKS R10 R11 K21 ["Theme"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R11 R3 K22 ["getTranslator"]
  CALL R10 1 1
  MOVE R11 R10
  CALL R11 0 1
  GETTABLEKS R12 R6 K23 ["PureComponent"]
  LOADK R14 K24 ["BackButton"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  DUPTABLE R13 K29 [{"Arrow", "Cross", "None"}]
  LOADK R14 K26 ["Arrow"]
  SETTABLEKS R14 R13 K26 ["Arrow"]
  LOADK R14 K27 ["Cross"]
  SETTABLEKS R14 R13 K27 ["Cross"]
  LOADK R14 K28 ["None"]
  SETTABLEKS R14 R13 K28 ["None"]
  SETTABLEKS R13 R12 K30 ["IconType"]
  DUPTABLE R13 K32 [{"iconType"}]
  GETTABLEKS R15 R12 K30 ["IconType"]
  GETTABLEKS R14 R15 K28 ["None"]
  SETTABLEKS R14 R13 K31 ["iconType"]
  SETTABLEKS R13 R12 K33 ["defaultProps"]
  NEWTABLE R13 2 0
  GETTABLEKS R15 R12 K30 ["IconType"]
  GETTABLEKS R14 R15 K26 ["Arrow"]
  LOADK R15 K34 ["back"]
  SETTABLE R15 R13 R14
  GETTABLEKS R15 R12 K30 ["IconType"]
  GETTABLEKS R14 R15 K27 ["Cross"]
  LOADK R15 K35 ["cross"]
  SETTABLE R15 R13 R14
  DUPCLOSURE R14 K36 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  DUPCLOSURE R15 K37 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R14
  SETTABLEKS R15 R12 K38 ["render"]
  RETURN R12 1
