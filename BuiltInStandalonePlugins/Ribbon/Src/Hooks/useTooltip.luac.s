PROTO_0:
  LOADK R1 K0 [""]
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADN R7 1
  JUMPIFNOTLT R7 R5 [+4]
  MOVE R7 R1
  LOADK R8 K3 [", "]
  CONCAT R1 R7 R8
  MOVE R7 R1
  MOVE R8 R6
  CONCAT R1 R7 R8
  FORGLOOP R2 2 [inext] [-10]
  RETURN R1 1

PROTO_1:
  LOADN R4 0
  GETTABLEKS R5 R1 K0 ["current"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R1 K0 ["current"]
  GETTABLEKS R5 R6 K1 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K2 ["X"]
  GETTABLEKS R5 R2 K0 ["current"]
  JUMPIFNOT R5 [+13]
  GETTABLEKS R9 R2 K0 ["current"]
  GETTABLEKS R8 R9 K1 ["AbsoluteSize"]
  GETTABLEKS R7 R8 K2 ["X"]
  FASTCALL2 MATH_MAX R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K5 [math.max]
  CALL R5 2 1
  MOVE R4 R5
  JUMPIFNOT R3 [+1]
  ADDK R4 R4 K6 [24]
  GETIMPORT R5 K9 [Vector2.new]
  GETTABLEKS R8 R0 K2 ["X"]
  FASTCALL2 MATH_MIN R8 R4 [+4]
  MOVE R9 R4
  GETIMPORT R7 K12 [math.min]
  CALL R7 2 1
  ADDK R6 R7 K10 [12]
  GETTABLEKS R7 R0 K13 ["Y"]
  CALL R5 2 1
  MOVE R0 R5
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+68]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+79]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["current"]
  GETTABLEKS R1 R2 K1 ["AbsoluteSize"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K2 ["Icon"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADN R5 0
  GETTABLEKS R6 R2 K0 ["current"]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R2 K0 ["current"]
  GETTABLEKS R6 R7 K1 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K3 ["X"]
  GETTABLEKS R6 R3 K0 ["current"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R10 R3 K0 ["current"]
  GETTABLEKS R9 R10 K1 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K3 ["X"]
  FASTCALL2 MATH_MAX R5 R8 [+4]
  MOVE R7 R5
  GETIMPORT R6 K6 [math.max]
  CALL R6 2 1
  MOVE R5 R6
  JUMPIFNOT R4 [+1]
  ADDK R5 R5 K7 [24]
  GETIMPORT R6 K10 [Vector2.new]
  GETTABLEKS R9 R1 K3 ["X"]
  FASTCALL2 MATH_MIN R9 R5 [+4]
  MOVE R10 R5
  GETIMPORT R8 K13 [math.min]
  CALL R8 2 1
  ADDK R7 R8 K11 [12]
  GETTABLEKS R8 R1 K14 ["Y"]
  CALL R6 2 1
  MOVE R1 R6
  MOVE R0 R1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K15 ["OnResize"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K16 ["DEPRECATED_OnResize"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K16 ["DEPRECATED_OnResize"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+61]
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["Icon"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADN R6 0
  GETTABLEKS R7 R3 K2 ["current"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R3 K2 ["current"]
  GETTABLEKS R7 R8 K0 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K3 ["X"]
  GETTABLEKS R7 R4 K2 ["current"]
  JUMPIFNOT R7 [+13]
  GETTABLEKS R11 R4 K2 ["current"]
  GETTABLEKS R10 R11 K0 ["AbsoluteSize"]
  GETTABLEKS R9 R10 K3 ["X"]
  FASTCALL2 MATH_MAX R6 R9 [+4]
  MOVE R8 R6
  GETIMPORT R7 K6 [math.max]
  CALL R7 2 1
  MOVE R6 R7
  JUMPIFNOT R5 [+1]
  ADDK R6 R6 K7 [24]
  GETIMPORT R7 K10 [Vector2.new]
  GETTABLEKS R10 R2 K3 ["X"]
  FASTCALL2 MATH_MIN R10 R6 [+4]
  MOVE R11 R6
  GETIMPORT R9 K13 [math.min]
  CALL R9 2 1
  ADDK R8 R9 K11 [12]
  GETTABLEKS R9 R2 K14 ["Y"]
  CALL R7 2 1
  MOVE R2 R7
  MOVE R1 R2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K15 ["OnResize"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K16 ["DEPRECATED_OnResize"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R2 0
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R3 0
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R4 1
  CALL R4 0 1
  GETUPVAL R5 2
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R7 0 3
  GETTABLEKS R8 R0 K0 ["Title"]
  GETTABLEKS R9 R0 K1 ["Text"]
  GETTABLEKS R10 R0 K2 ["Icon"]
  SETLIST R7 R8 3 [1]
  CALL R5 2 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["Frame"]
  NEWTABLE R7 4 0
  SETTABLEKS R1 R7 K5 ["ref"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K6 ["Change"]
  GETTABLEKS R8 R9 K7 ["AbsoluteSize"]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLE R9 R7 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K8 ["Tag"]
  GETUPVAL R10 3
  JUMPIFNOT R10 [+2]
  LOADK R9 K9 ["TooltipBackground X-RowSpace50 X-FitY X-PadTooltip X-Middle"]
  JUMP [+1]
  LOADK R9 K10 ["TooltipBackground X-RowSpace50 X-Fit X-PadTooltip X-Middle"]
  SETTABLE R9 R7 R8
  GETUPVAL R9 3
  JUMPIFNOT R9 [+8]
  GETIMPORT R8 K13 [UDim2.new]
  LOADN R9 0
  LOADN R10 232
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["Size"]
  DUPTABLE R8 K17 [{"Icon", "Content", "StyleLink"}]
  GETTABLEKS R10 R0 K2 ["Icon"]
  JUMPIFNOT R10 [+25]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K18 ["ImageLabel"]
  DUPTABLE R11 K22 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETTABLEKS R12 R0 K2 ["Icon"]
  SETTABLEKS R12 R11 K19 ["Image"]
  LOADN R12 1
  SETTABLEKS R12 R11 K20 ["BackgroundTransparency"]
  GETIMPORT R12 K24 [UDim2.fromOffset]
  LOADN R13 24
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Size"]
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K2 ["Icon"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K4 ["Frame"]
  NEWTABLE R11 2 0
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K8 ["Tag"]
  LOADK R13 K25 ["Role-Surface X-Fit X-ColumnSpace25"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K27 [{"TitleFrame", "Text"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K3 ["createElement"]
  LOADK R14 K4 ["Frame"]
  NEWTABLE R15 4 0
  GETUPVAL R17 3
  JUMPIFNOT R17 [+2]
  MOVE R16 R3
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K5 ["ref"]
  MOVE R16 R4
  CALL R16 0 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K8 ["Tag"]
  LOADK R17 K28 ["Role-Surface X-Fit X-RowSpace50"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K30 [{"Title", "Shortcuts"}]
  GETTABLEKS R18 R0 K0 ["Title"]
  JUMPIFNOT R18 [+21]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K3 ["createElement"]
  LOADK R18 K31 ["TextLabel"]
  NEWTABLE R19 4 0
  MOVE R20 R4
  CALL R20 0 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  GETTABLEKS R20 R0 K0 ["Title"]
  SETTABLEKS R20 R19 K1 ["Text"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K8 ["Tag"]
  LOADK R21 K32 ["X-Fit Text-Title"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K0 ["Title"]
  GETTABLEKS R18 R0 K29 ["Shortcuts"]
  JUMPIFNOT R18 [+39]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K3 ["createElement"]
  LOADK R18 K31 ["TextLabel"]
  NEWTABLE R19 4 0
  MOVE R20 R4
  CALL R20 0 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  GETTABLEKS R21 R0 K29 ["Shortcuts"]
  LOADK R22 K33 [""]
  GETIMPORT R23 K35 [ipairs]
  MOVE R24 R21
  CALL R23 1 3
  FORGPREP_INEXT R23
  LOADN R28 1
  JUMPIFNOTLT R28 R26 [+4]
  MOVE R28 R22
  LOADK R29 K36 [", "]
  CONCAT R22 R28 R29
  MOVE R28 R22
  MOVE R29 R27
  CONCAT R22 R28 R29
  FORGLOOP R23 2 [inext] [-10]
  MOVE R20 R22
  SETTABLEKS R20 R19 K1 ["Text"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K8 ["Tag"]
  LOADK R21 K37 ["X-Fit Text-Label"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K29 ["Shortcuts"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K26 ["TitleFrame"]
  GETTABLEKS R14 R0 K1 ["Text"]
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K3 ["createElement"]
  LOADK R14 K31 ["TextLabel"]
  NEWTABLE R15 4 0
  GETUPVAL R17 3
  JUMPIFNOT R17 [+2]
  MOVE R16 R2
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K5 ["ref"]
  MOVE R16 R4
  CALL R16 0 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETTABLEKS R16 R0 K1 ["Text"]
  SETTABLEKS R16 R15 K1 ["Text"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K8 ["Tag"]
  GETUPVAL R17 5
  LOADK R18 K38 ["Text-Label X-Fit"]
  GETUPVAL R20 3
  JUMPIFNOT R20 [+2]
  LOADK R19 K39 ["TooltipTextBounds"]
  JUMP [+1]
  LOADNIL R19
  CALL R17 2 1
  SETTABLE R17 R15 R16
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K1 ["Text"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Content"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K16 ["StyleLink"]
  DUPTABLE R11 K41 [{"StyleSheet"}]
  GETTABLEKS R12 R0 K42 ["Design"]
  SETTABLEKS R12 R11 K40 ["StyleSheet"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["StyleLink"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_5:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 0
  RETURN R1 1
  LOADK R3 K0 ["Tooltip"]
  DUPTABLE R4 K8 [{"Id", "InitialEnabled", "MinSize", "Modal", "Tooltip", "Resizable", "Size", "Title"}]
  LOADK R5 K0 ["Tooltip"]
  SETTABLEKS R5 R4 K1 ["Id"]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["InitialEnabled"]
  GETIMPORT R5 K11 [Vector2.new]
  LOADN R6 50
  LOADN R7 50
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["MinSize"]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["Modal"]
  LOADB R5 1
  SETTABLEKS R5 R4 K0 ["Tooltip"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["Resizable"]
  GETIMPORT R5 K11 [Vector2.new]
  LOADN R6 220
  LOADN R7 224
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Size"]
  LOADK R5 K0 ["Tooltip"]
  SETTABLEKS R5 R4 K7 ["Title"]
  NAMECALL R1 R0 K12 ["CreateQWidgetPluginGui"]
  CALL R1 3 1
  SETUPVAL R1 0
  GETUPVAL R1 0
  GETIMPORT R2 K16 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K14 ["ZIndexBehavior"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K17 ["createRoot"]
  GETUPVAL R2 0
  CALL R1 1 1
  SETUPVAL R1 1
  GETUPVAL R1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetSizeAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["AbsoluteSize"]
  NAMECALL R1 R1 K1 ["SetSizeAsync"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["uniqueTooltipId"]
  GETUPVAL R1 1
  JUMPIFNOTEQ R0 R1 [+13]
  GETUPVAL R0 2
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 3
  GETUPVAL R2 4
  NAMECALL R0 R0 K1 ["ShowIfAttachedAsync"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 5
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Enabled"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  NAMECALL R4 R0 K0 ["GetUri"]
  CALL R4 1 1
  GETUPVAL R5 1
  MOVE R6 R4
  DUPTABLE R7 K3 [{"Category", "ItemId"}]
  LOADK R8 K4 ["Panels"]
  SETTABLEKS R8 R7 K1 ["Category"]
  LOADK R8 K5 ["Tooltip"]
  SETTABLEKS R8 R7 K2 ["ItemId"]
  CALL R5 2 1
  LOADK R8 K4 ["Panels"]
  NAMECALL R6 R0 K6 ["GetPluginComponent"]
  CALL R6 2 1
  GETUPVAL R7 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 4
  GETUPVAL R11 1
  MOVE R12 R1
  DUPTABLE R13 K11 [{"Design", "OnResize", "DEPRECATED_OnResize"}]
  SETTABLEKS R2 R13 K8 ["Design"]
  GETUPVAL R15 5
  JUMPIFNOT R15 [+4]
  NEWCLOSURE R14 P0
  CAPTURE VAL R6
  CAPTURE VAL R5
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K9 ["OnResize"]
  GETUPVAL R15 5
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+3]
  NEWCLOSURE R14 P1
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K10 ["DEPRECATED_OnResize"]
  CALL R11 2 -1
  CALL R9 -1 -1
  NAMECALL R7 R7 K12 ["render"]
  CALL R7 -1 0
  GETIMPORT R7 K15 [Vector2.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K15 [Vector2.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  GETUPVAL R9 5
  JUMPIFNOT R9 [+70]
  GETTABLEKS R9 R1 K16 ["Location"]
  JUMPIFNOT R9 [+67]
  GETTABLEKS R9 R1 K16 ["Location"]
  JUMPIFNOTEQKS R9 K17 ["Above"] [+14]
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  MOVE R7 R9
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+50]
  GETTABLEKS R9 R1 K16 ["Location"]
  JUMPIFNOTEQKS R9 K18 ["Below"] [+14]
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  MOVE R7 R9
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+33]
  GETTABLEKS R9 R1 K16 ["Location"]
  JUMPIFNOTEQKS R9 K19 ["Left"] [+14]
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  MOVE R7 R9
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+16]
  GETTABLEKS R9 R1 K16 ["Location"]
  JUMPIFNOTEQKS R9 K20 ["Right"] [+13]
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  MOVE R7 R9
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  MOVE R8 R9
  MOVE R11 R5
  DUPTABLE R12 K25 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  GETTABLEKS R13 R1 K26 ["Uri"]
  SETTABLEKS R13 R12 K21 ["TargetWidgetUri"]
  SETTABLEKS R7 R12 K22 ["TargetAnchorPoint"]
  SETTABLEKS R8 R12 K23 ["SubjectAnchorPoint"]
  GETIMPORT R13 K15 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["Offset"]
  NAMECALL R9 R6 K27 ["SetAttachmentAsync"]
  CALL R9 3 0
  GETUPVAL R9 6
  GETTABLEKS R10 R9 K28 ["uniqueTooltipId"]
  ADDK R10 R10 K29 [1]
  SETTABLEKS R10 R9 K28 ["uniqueTooltipId"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K28 ["uniqueTooltipId"]
  GETIMPORT R10 K31 [delay]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K32 ["showDelay"]
  NEWCLOSURE R12 P2
  CAPTURE UPVAL U6
  CAPTURE VAL R9
  CAPTURE UPVAL U7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CALL R10 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["uniqueTooltipId"]
  GETUPVAL R1 1
  JUMPIFNOTEQ R0 R1 [+12]
  GETUPVAL R0 2
  GETUPVAL R1 3
  CALL R0 1 1
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["Enabled"]
  GETUPVAL R1 4
  LOADNIL R3
  NAMECALL R1 R1 K2 ["render"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K0 ["uniqueTooltipId"]
  ADDK R2 R2 K1 [1]
  SETTABLEKS R2 R1 K0 ["uniqueTooltipId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["uniqueTooltipId"]
  GETIMPORT R2 K3 [delay]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["hideDelay"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["disableAllTooltips"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["Text"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 3
  NAMECALL R0 R0 K3 ["get"]
  CALL R0 1 1
  GETUPVAL R1 4
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  GETUPVAL R2 5
  MOVE R3 R0
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["get"]
  CALL R0 1 1
  GETUPVAL R1 2
  GETTABLEKS R2 R1 K2 ["uniqueTooltipId"]
  ADDK R2 R2 K3 [1]
  SETTABLEKS R2 R1 K2 ["uniqueTooltipId"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["uniqueTooltipId"]
  GETIMPORT R2 K5 [delay]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["hideDelay"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CALL R2 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  GETUPVAL R3 2
  LOADB R4 0
  CALL R3 1 1
  NEWTABLE R4 0 4
  GETTABLEKS R5 R0 K1 ["Uri"]
  GETTABLEKS R6 R0 K2 ["Title"]
  GETTABLEKS R7 R0 K3 ["Icon"]
  GETTABLEKS R8 R0 K4 ["Text"]
  SETLIST R4 R5 4 [1]
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R6 3
  NEWCLOSURE R7 P1
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  MOVE R8 R4
  CALL R6 2 1
  RETURN R5 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagDevFrameworkRibbonHooks"]
  CALL R4 1 1
  CALL R4 0 1
  JUMPIFNOT R4 [+7]
  GETTABLEKS R7 R3 K13 ["UI"]
  GETTABLEKS R6 R7 K14 ["Hooks"]
  GETTABLEKS R5 R6 K15 ["useTooltip"]
  RETURN R5 1
  GETIMPORT R5 K17 [game]
  LOADK R7 K18 ["StudioRibbonHideOldTooltips"]
  NAMECALL R5 R5 K19 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["SharedFlags"]
  GETTABLEKS R7 R8 K20 ["getFFlagUseTooltipSizeAttachmentFixes"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K21 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K22 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K23 ["join"]
  GETTABLEKS R10 R1 K24 ["useCallback"]
  GETTABLEKS R11 R1 K25 ["useEffect"]
  GETTABLEKS R12 R1 K26 ["useRef"]
  GETTABLEKS R13 R3 K27 ["ContextServices"]
  GETTABLEKS R14 R13 K28 ["Plugin"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K29 ["Util"]
  GETTABLEKS R16 R17 K30 ["DesignContext"]
  CALL R15 1 1
  GETTABLEKS R17 R3 K29 ["Util"]
  GETTABLEKS R16 R17 K31 ["counter"]
  GETTABLEKS R17 R3 K32 ["Styling"]
  GETTABLEKS R18 R17 K33 ["joinTags"]
  GETIMPORT R19 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K34 ["Parent"]
  GETTABLEKS R20 R21 K35 ["TooltipSettings"]
  CALL R19 1 1
  DUPCLOSURE R20 K36 [PROTO_0]
  DUPCLOSURE R21 K37 [PROTO_1]
  DUPCLOSURE R22 K38 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R18
  LOADNIL R23
  LOADNIL R24
  NEWCLOSURE R25 P3
  CAPTURE REF R23
  CAPTURE REF R24
  CAPTURE VAL R2
  NEWCLOSURE R26 P4
  CAPTURE VAL R25
  CAPTURE VAL R9
  CAPTURE REF R24
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R5
  NEWCLOSURE R27 P5
  CAPTURE VAL R19
  CAPTURE VAL R25
  CAPTURE REF R24
  NEWCLOSURE R28 P6
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE REF R24
  CLOSEUPVALS R23
  RETURN R28 1
