PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Example"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["Example"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  RETURN R1 1

PROTO_2:
  DUPTABLE R2 K4 [{"BackgroundColor", "Image", "Key", "Title"}]
  GETIMPORT R3 K7 [Color3.fromRGB]
  GETIMPORT R4 K10 [math.random]
  LOADN R5 255
  CALL R4 1 1
  GETIMPORT R5 K10 [math.random]
  LOADN R6 255
  CALL R5 1 1
  GETIMPORT R6 K10 [math.random]
  LOADN R7 255
  CALL R6 1 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K0 ["BackgroundColor"]
  LOADK R3 K11 ["rbxassetid://6002241241"]
  SETTABLEKS R3 R2 K1 ["Image"]
  SETTABLEKS R0 R2 K2 ["Key"]
  SETTABLEKS R1 R2 K3 ["Title"]
  RETURN R2 1

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["See All"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["TextLabel"]
  DUPTABLE R4 K5 [{"LayoutOrder", "Size", "Text"}]
  SETTABLEKS R0 R4 K2 ["LayoutOrder"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 0
  LOADN R7 100
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  SETTABLEKS R1 R4 K4 ["Text"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["See All"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [print]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K8 [{"LayoutOrder", "BackgroundColor", "Image", "Key", "Title", "Size", "OnClick"}]
  SETTABLEKS R0 R4 K1 ["LayoutOrder"]
  GETTABLEKS R5 R1 K2 ["BackgroundColor"]
  SETTABLEKS R5 R4 K2 ["BackgroundColor"]
  GETTABLEKS R5 R1 K3 ["Image"]
  SETTABLEKS R5 R4 K3 ["Image"]
  GETTABLEKS R5 R1 K4 ["Key"]
  SETTABLEKS R5 R4 K4 ["Key"]
  GETTABLEKS R5 R1 K5 ["Title"]
  SETTABLEKS R5 R4 K5 ["Title"]
  GETIMPORT R5 K11 [UDim2.new]
  LOADN R6 0
  LOADN R7 90
  LOADN R8 0
  LOADN R9 105
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["Size"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K7 ["OnClick"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Categorization"]
  GETTABLEKS R3 R4 K10 ["Swimlane"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K11 ["Stories"]
  GETTABLEKS R4 R5 K12 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K8 ["Components"]
  GETTABLEKS R6 R7 K9 ["Categorization"]
  GETTABLEKS R5 R6 K13 ["IconTile"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R6 K15 [PROTO_2]
  DUPTABLE R7 K18 [{"summary", "stories"}]
  LOADK R8 K19 ["A section with a title, horizontal list, and optional 'see all' button"]
  SETTABLEKS R8 R7 K16 ["summary"]
  NEWTABLE R8 0 2
  DUPTABLE R9 K22 [{"name", "summary", "story"}]
  LOADK R10 K23 ["Simple example"]
  SETTABLEKS R10 R9 K20 ["name"]
  LOADK R10 K24 ["a general example with data"]
  SETTABLEKS R10 R9 K16 ["summary"]
  DUPTABLE R11 K30 [{"Data", "Total", "Title", "OnClickSeeAll", "OnRenderItem"}]
  NEWTABLE R12 0 4
  LOADK R13 K31 ["This"]
  LOADK R14 K32 ["is"]
  LOADK R15 K33 ["a"]
  LOADK R16 K34 ["test"]
  SETLIST R12 R13 4 [1]
  SETTABLEKS R12 R11 K25 ["Data"]
  LOADN R12 123
  SETTABLEKS R12 R11 K26 ["Total"]
  LOADK R12 K35 ["Just a bunch of Frames"]
  SETTABLEKS R12 R11 K27 ["Title"]
  DUPCLOSURE R12 K36 [PROTO_3]
  SETTABLEKS R12 R11 K28 ["OnClickSeeAll"]
  DUPCLOSURE R12 K37 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K29 ["OnRenderItem"]
  NEWCLOSURE R10 P4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R10 R9 K21 ["story"]
  DUPTABLE R10 K22 [{"name", "summary", "story"}]
  LOADK R11 K38 ["Icon Tiles"]
  SETTABLEKS R11 R10 K20 ["name"]
  LOADK R11 K39 ["Tiles that represent products to buy"]
  SETTABLEKS R11 R10 K16 ["summary"]
  DUPTABLE R12 K40 [{"Data", "Title", "Total", "OnClickSeeAll", "OnRenderItem"}]
  NEWTABLE R13 0 10
  MOVE R14 R6
  LOADK R15 K41 ["1"]
  LOADK R16 K42 ["Blonde Hair"]
  CALL R14 2 1
  MOVE R15 R6
  LOADK R16 K43 ["2"]
  LOADK R17 K44 ["Cool Blonde Hair"]
  CALL R15 2 1
  MOVE R16 R6
  LOADK R17 K45 ["3"]
  LOADK R18 K46 ["Original Blonde"]
  CALL R16 2 1
  MOVE R17 R6
  LOADK R18 K47 ["4"]
  LOADK R19 K48 ["Blonde"]
  CALL R17 2 1
  MOVE R18 R6
  LOADK R19 K49 ["5"]
  LOADK R20 K50 ["Blondie"]
  CALL R18 2 1
  MOVE R19 R6
  LOADK R20 K51 ["6"]
  LOADK R21 K52 ["Bulond"]
  CALL R19 2 1
  MOVE R20 R6
  LOADK R21 K53 ["7"]
  LOADK R22 K54 ["Blund"]
  CALL R20 2 1
  MOVE R21 R6
  LOADK R22 K55 ["8"]
  LOADK R23 K56 ["Real Blonde"]
  CALL R21 2 1
  MOVE R22 R6
  LOADK R23 K57 ["9"]
  LOADK R24 K58 ["Blond"]
  CALL R22 2 1
  MOVE R23 R6
  LOADK R24 K59 ["10"]
  LOADK R25 K48 ["Blonde"]
  CALL R23 2 1
  SETLIST R13 R14 10 [1]
  SETTABLEKS R13 R12 K25 ["Data"]
  LOADK R13 K60 ["Check Out This Hair!"]
  SETTABLEKS R13 R12 K27 ["Title"]
  LOADK R13 K61 [12341115]
  SETTABLEKS R13 R12 K26 ["Total"]
  DUPCLOSURE R13 K62 [PROTO_5]
  SETTABLEKS R13 R12 K28 ["OnClickSeeAll"]
  DUPCLOSURE R13 K63 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K29 ["OnRenderItem"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R12
  SETTABLEKS R11 R10 K21 ["story"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K17 ["stories"]
  RETURN R7 1