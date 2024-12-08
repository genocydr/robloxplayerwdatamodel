PROTO_0:
  GETTABLEKS R1 R0 K0 ["Font"]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETTABLEKS R4 R1 K2 ["CaptionBody"]
  GETTABLEKS R3 R4 K0 ["Font"]
  GETTABLEKS R5 R1 K3 ["BaseSize"]
  GETTABLEKS R7 R1 K2 ["CaptionBody"]
  GETTABLEKS R6 R7 K4 ["RelativeSize"]
  MUL R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["GetTextWidth"]
  LOADK R6 K6 ["• "]
  MOVE R7 R3
  MOVE R8 R4
  CALL R5 3 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["props"]
  GETTABLEKS R6 R7 K8 ["forwardRef"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["FitFrameVertical"]
  NEWTABLE R9 16 0
  GETIMPORT R10 K13 [UDim.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["width"]
  GETIMPORT R10 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K16 ["FillDirection"]
  GETIMPORT R10 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K19 ["VerticalAlignment"]
  LOADN R10 1
  SETTABLEKS R10 R9 K22 ["BackgroundTransparency"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["props"]
  GETTABLEKS R10 R11 K23 ["layoutOrder"]
  SETTABLEKS R10 R9 K24 ["LayoutOrder"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K25 ["Change"]
  GETTABLEKS R10 R11 K26 ["AbsolutePosition"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["props"]
  GETTABLEKS R11 R12 K27 ["positionChangedCallback"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["props"]
  GETTABLEKS R10 R11 K28 ["NextSelectionLeft"]
  SETTABLEKS R10 R9 K28 ["NextSelectionLeft"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["props"]
  GETTABLEKS R10 R11 K29 ["NextSelectionRight"]
  SETTABLEKS R10 R9 K29 ["NextSelectionRight"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["props"]
  GETTABLEKS R10 R11 K30 ["NextSelectionUp"]
  SETTABLEKS R10 R9 K30 ["NextSelectionUp"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["props"]
  GETTABLEKS R10 R11 K31 ["NextSelectionDown"]
  SETTABLEKS R10 R9 K31 ["NextSelectionDown"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K32 ["Ref"]
  SETTABLE R6 R9 R10
  DUPTABLE R10 K35 [{"Bullet", "Text"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["props"]
  GETTABLEKS R11 R12 K36 ["hasBullet"]
  JUMPIFNOT R11 [+42]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["createElement"]
  LOADK R12 K37 ["TextLabel"]
  DUPTABLE R13 K43 [{"BackgroundTransparency", "Size", "Text", "Font", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "LayoutOrder"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K22 ["BackgroundTransparency"]
  GETIMPORT R14 K46 [UDim2.fromOffset]
  MOVE R15 R5
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["Size"]
  LOADK R14 K6 ["• "]
  SETTABLEKS R14 R13 K34 ["Text"]
  SETTABLEKS R3 R13 K0 ["Font"]
  SETTABLEKS R4 R13 K39 ["TextSize"]
  GETTABLEKS R15 R2 K47 ["TextDefault"]
  GETTABLEKS R14 R15 K48 ["Color"]
  SETTABLEKS R14 R13 K40 ["TextColor3"]
  GETTABLEKS R15 R2 K47 ["TextDefault"]
  GETTABLEKS R14 R15 K49 ["Transparency"]
  SETTABLEKS R14 R13 K41 ["TextTransparency"]
  GETIMPORT R14 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K42 ["TextXAlignment"]
  LOADN R14 1
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["Bullet"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K52 [{"width", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "LayoutOrder"}]
  GETIMPORT R14 K13 [UDim.new]
  LOADN R15 1
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K7 ["props"]
  GETTABLEKS R17 R18 K36 ["hasBullet"]
  JUMPIFNOT R17 [+2]
  MINUS R16 R5
  JUMPIF R16 [+1]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["width"]
  LOADN R14 1
  SETTABLEKS R14 R13 K22 ["BackgroundTransparency"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["props"]
  GETTABLEKS R14 R15 K53 ["text"]
  SETTABLEKS R14 R13 K34 ["Text"]
  SETTABLEKS R3 R13 K0 ["Font"]
  SETTABLEKS R4 R13 K39 ["TextSize"]
  GETTABLEKS R15 R2 K47 ["TextDefault"]
  GETTABLEKS R14 R15 K48 ["Color"]
  SETTABLEKS R14 R13 K40 ["TextColor3"]
  GETTABLEKS R15 R2 K47 ["TextDefault"]
  GETTABLEKS R14 R15 K49 ["Transparency"]
  SETTABLEKS R14 R13 K41 ["TextTransparency"]
  GETIMPORT R14 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K42 ["TextXAlignment"]
  LOADN R14 2
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["Dictionary"]
  GETTABLEKS R4 R5 K2 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K4 [{"forwardRef"}]
  SETTABLEKS R1 R6 K3 ["forwardRef"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R1 K5 ["RobloxGui"]
  GETTABLEKS R2 R3 K6 ["Modules"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K13 ["UIBlox"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K9 ["Packages"]
  GETTABLEKS R8 R9 K14 ["AvatarExperienceDeps"]
  CALL R7 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R0 K15 ["Workspace"]
  GETTABLEKS R11 R12 K9 ["Packages"]
  GETTABLEKS R10 R11 K16 ["AppCommonLib"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K17 ["Text"]
  GETTABLEKS R9 R7 K18 ["RoactFitComponents"]
  GETTABLEKS R10 R9 K19 ["FitTextLabel"]
  GETTABLEKS R12 R6 K20 ["Style"]
  GETTABLEKS R11 R12 K21 ["withStyle"]
  GETTABLEKS R12 R4 K22 ["PureComponent"]
  LOADK R14 K23 ["ListEntry"]
  NAMECALL R12 R12 K24 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R5 K25 ["strictInterface"]
  DUPTABLE R14 K35 [{"text", "hasBullet", "layoutOrder", "positionChangedCallback", "NextSelectionLeft", "NextSelectionRight", "NextSelectionUp", "NextSelectionDown", "forwardRef"}]
  GETTABLEKS R15 R5 K36 ["string"]
  SETTABLEKS R15 R14 K26 ["text"]
  GETTABLEKS R15 R5 K37 ["boolean"]
  SETTABLEKS R15 R14 K27 ["hasBullet"]
  GETTABLEKS R15 R5 K38 ["integer"]
  SETTABLEKS R15 R14 K28 ["layoutOrder"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K40 ["callback"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K29 ["positionChangedCallback"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K41 ["table"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["NextSelectionLeft"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K41 ["table"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["NextSelectionRight"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K41 ["table"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K32 ["NextSelectionUp"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K41 ["table"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K33 ["NextSelectionDown"]
  GETTABLEKS R15 R5 K39 ["optional"]
  GETTABLEKS R16 R5 K41 ["table"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K34 ["forwardRef"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K42 ["validateProps"]
  DUPCLOSURE R13 K43 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K44 ["render"]
  GETTABLEKS R13 R4 K34 ["forwardRef"]
  DUPCLOSURE R14 K45 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R3
  CALL R13 1 -1
  RETURN R13 -1