PROTO_0:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [table.clone]
  GETTABLEKS R3 R1 K3 ["problems"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLE R3 R2 R4
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 0
  LOADNIL R4
  SETTABLE R4 R2 R3
  JUMP [+3]
  GETUPVAL R3 0
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R3 0
  JUMPIFNOTEQKS R3 K4 ["HeadLooksBad"] [+15]
  GETUPVAL R3 1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADK R9 K5 ["Head%*"]
  MOVE R11 R7
  NAMECALL R9 R9 K6 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  LOADNIL R9
  SETTABLE R9 R2 R8
  FORGLOOP R3 2 [-9]
  SETTABLEKS R2 R1 K3 ["problems"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setResults"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"Key", "Checked", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
  SETTABLEKS R0 R3 K1 ["Key"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["results"]
  GETTABLEKS R5 R6 K9 ["problems"]
  GETTABLE R4 R5 R0
  SETTABLEKS R4 R3 K2 ["Checked"]
  GETUPVAL R4 3
  NAMECALL R4 R4 K10 ["getNextOrder"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K4 ["OnClick"]
  GETUPVAL R4 5
  LOADK R6 K11 ["Survey"]
  LOADK R8 K12 ["Problem%*"]
  MOVE R10 R0
  NAMECALL R8 R8 K13 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K14 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["Text"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["TextWrapped"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K3 ["message"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setResults"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K3 ["rating"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setResults"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setHeight"]
  GETTABLEKS R3 R0 K1 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K2 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADK R3 K0 ["Head%*"]
  MOVE R5 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 1
  MOVE R2 R0
  RETURN R1 2

PROTO_9:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["Survey"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NEWTABLE R6 0 0
  CALL R4 2 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["useCallback"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["useCallback"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 6
  NEWTABLE R10 8 0
  GETIMPORT R11 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K6 ["AutomaticSize"]
  GETIMPORT R11 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K12 ["Layout"]
  GETTABLEKS R11 R2 K13 ["Spacing"]
  SETTABLEKS R11 R10 K13 ["Spacing"]
  GETIMPORT R11 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K14 ["HorizontalAlignment"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["Change"]
  GETTABLEKS R11 R12 K18 ["AbsoluteSize"]
  NEWCLOSURE R12 P4
  CAPTURE VAL R0
  SETTABLE R12 R10 R11
  DUPTABLE R11 K30 [{"PleaseRateYourExperience", "Stars", "Gap", "UserIntent", "WhatAreasShouldWeImproveOn", "CharacterDoesntBend", "CharacterWeirdBend", "BadLayeredClothing", "Heads", "Gap2", "Message"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R15 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K6 ["AutomaticSize"]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["LayoutOrder"]
  LOADK R15 K38 ["Bold"]
  SETTABLEKS R15 R14 K32 ["Style"]
  LOADK R17 K1 ["Survey"]
  LOADK R18 K19 ["PleaseRateYourExperience"]
  NAMECALL R15 R1 K39 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Text"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["PleaseRateYourExperience"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K43 [{"layoutOrder", "rating", "setRating"}]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K40 ["layoutOrder"]
  GETTABLEKS R16 R0 K44 ["results"]
  GETTABLEKS R15 R16 K41 ["rating"]
  SETTABLEKS R15 R14 K41 ["rating"]
  SETTABLEKS R7 R14 K42 ["setRating"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["Stars"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K45 ["Frame"]
  DUPTABLE R14 K46 [{"LayoutOrder"}]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Gap"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K47 ["Fragment"]
  NEWTABLE R14 0 0
  DUPTABLE R15 K52 [{"IntentForResults", "UseAsNPC", "UseForMarketplace", "Gap1"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R19 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K6 ["AutomaticSize"]
  NAMECALL R19 R3 K37 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K31 ["LayoutOrder"]
  LOADK R19 K38 ["Bold"]
  SETTABLEKS R19 R18 K32 ["Style"]
  LOADK R21 K1 ["Survey"]
  LOADK R22 K48 ["IntentForResults"]
  NAMECALL R19 R1 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K33 ["Text"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K48 ["IntentForResults"]
  MOVE R16 R5
  LOADK R17 K49 ["UseAsNPC"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K49 ["UseAsNPC"]
  MOVE R16 R5
  LOADK R17 K50 ["UseForMarketplace"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K50 ["UseForMarketplace"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K4 ["createElement"]
  LOADK R17 K45 ["Frame"]
  DUPTABLE R18 K46 [{"LayoutOrder"}]
  NAMECALL R19 R3 K37 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K31 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["Gap1"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["UserIntent"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R15 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K6 ["AutomaticSize"]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["LayoutOrder"]
  LOADK R15 K38 ["Bold"]
  SETTABLEKS R15 R14 K32 ["Style"]
  LOADK R17 K1 ["Survey"]
  LOADK R18 K23 ["WhatAreasShouldWeImproveOn"]
  NAMECALL R15 R1 K39 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Text"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["WhatAreasShouldWeImproveOn"]
  MOVE R12 R5
  LOADK R13 K24 ["CharacterDoesntBend"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K24 ["CharacterDoesntBend"]
  MOVE R12 R5
  LOADK R13 K25 ["CharacterWeirdBend"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K25 ["CharacterWeirdBend"]
  MOVE R12 R5
  LOADK R13 K26 ["BadLayeredClothing"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["BadLayeredClothing"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K47 ["Fragment"]
  NEWTABLE R14 0 0
  DUPTABLE R15 K55 [{"HeadLooksBad", "SpecificProblems"}]
  MOVE R16 R5
  LOADK R17 K53 ["HeadLooksBad"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K53 ["HeadLooksBad"]
  GETTABLEKS R18 R0 K44 ["results"]
  GETTABLEKS R17 R18 K56 ["problems"]
  GETTABLEKS R16 R17 K53 ["HeadLooksBad"]
  JUMPIFNOT R16 [+86]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K57 [{"AutomaticSize", "LayoutOrder", "Spacing", "Layout", "HorizontalAlignment"}]
  GETIMPORT R19 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K6 ["AutomaticSize"]
  NAMECALL R19 R3 K37 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K31 ["LayoutOrder"]
  GETTABLEKS R19 R2 K13 ["Spacing"]
  SETTABLEKS R19 R18 K13 ["Spacing"]
  GETIMPORT R19 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K12 ["Layout"]
  GETIMPORT R19 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K14 ["HorizontalAlignment"]
  DUPTABLE R19 K60 [{"UIPadding", "Specifically", "SpecificProblems"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K4 ["createElement"]
  LOADK R21 K58 ["UIPadding"]
  DUPTABLE R22 K62 [{"PaddingLeft"}]
  GETIMPORT R23 K64 [UDim.new]
  LOADN R24 0
  GETTABLEKS R25 R2 K65 ["HeadIndent"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K61 ["PaddingLeft"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["UIPadding"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K66 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R23 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K6 ["AutomaticSize"]
  NAMECALL R23 R3 K37 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K31 ["LayoutOrder"]
  LOADK R25 K1 ["Survey"]
  LOADK R26 K59 ["Specifically"]
  NAMECALL R23 R1 K39 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K33 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["Specifically"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K47 ["Fragment"]
  NEWTABLE R22 0 0
  GETUPVAL R24 9
  GETTABLEKS R23 R24 K67 ["map"]
  GETUPVAL R24 4
  NEWCLOSURE R25 P5
  CAPTURE VAL R5
  CALL R23 2 -1
  CALL R20 -1 1
  SETTABLEKS R20 R19 K54 ["SpecificProblems"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["SpecificProblems"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["Heads"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K45 ["Frame"]
  DUPTABLE R14 K46 [{"LayoutOrder"}]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Gap2"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K72 [{"MultiLine", "LayoutOrder", "Size", "PlaceholderText", "Text", "OnTextChanged"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K68 ["MultiLine"]
  NAMECALL R15 R3 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K31 ["LayoutOrder"]
  GETIMPORT R15 K74 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R19 R2 K75 ["MessageHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K69 ["Size"]
  LOADK R17 K1 ["Survey"]
  LOADK R18 K76 ["MessagePlaceholder"]
  NAMECALL R15 R1 K39 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K70 ["PlaceholderText"]
  GETTABLEKS R16 R0 K44 ["results"]
  GETTABLEKS R15 R16 K77 ["message"]
  SETTABLEKS R15 R14 K33 ["Text"]
  SETTABLEKS R6 R14 K71 ["OnTextChanged"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["Message"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["SurveyDialog"]
  GETTABLEKS R5 R6 K13 ["Stars"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K15 ["Resources"]
  GETTABLEKS R7 R8 K16 ["Theme"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K17 ["UI"]
  GETTABLEKS R8 R7 K18 ["Checkbox"]
  GETTABLEKS R9 R7 K19 ["Pane"]
  GETTABLEKS R10 R7 K20 ["TextInput"]
  GETTABLEKS R11 R7 K21 ["TextLabel"]
  GETTABLEKS R13 R2 K22 ["ContextServices"]
  GETTABLEKS R12 R13 K23 ["Localization"]
  GETTABLEKS R14 R2 K22 ["ContextServices"]
  GETTABLEKS R13 R14 K24 ["Stylizer"]
  GETTABLEKS R15 R2 K25 ["Util"]
  GETTABLEKS R14 R15 K26 ["LayoutOrderIterator"]
  NEWTABLE R15 0 6
  LOADK R16 K27 ["Teeth"]
  LOADK R17 K28 ["Mouth"]
  LOADK R18 K29 ["Eyes"]
  LOADK R19 K30 ["Eyebrows"]
  LOADK R20 K31 ["Eyelashes"]
  LOADK R21 K32 ["Hair"]
  SETLIST R15 R16 6 [1]
  DUPCLOSURE R16 K33 [PROTO_9]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  RETURN R16 1