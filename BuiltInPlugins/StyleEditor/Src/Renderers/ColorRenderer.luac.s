PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ToHex"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+4]
  LOADK R4 K2 ["#"]
  MOVE R5 R2
  CONCAT R3 R4 R5
  RETURN R3 1
  LOADK R3 K2 ["#"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Value"]
  GETIMPORT R3 K2 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+4]
  LOADK R5 K3 ["#"]
  MOVE R6 R4
  CONCAT R1 R5 R6
  JUMP [+1]
  LOADK R1 K3 ["#"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFEQ R2 R3 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["OnChanged"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Value"]
  GETIMPORT R6 K3 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CALL R6 1 2
  JUMPIFNOT R6 [+4]
  LOADK R8 K4 ["#"]
  MOVE R9 R7
  CONCAT R4 R8 R9
  JUMP [+1]
  LOADK R4 K4 ["#"]
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 2
  LOADNIL R3
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 2
  LOADK R3 K0 ["Error: invalid color"]
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Value"]
  JUMPIFEQ R0 R1 [+22]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["current"]
  ORK R2 R3 K2 [0]
  ADDK R1 R2 K1 [0.05]
  GETIMPORT R2 K5 [tick]
  CALL R2 0 1
  JUMPIFNOTLT R1 R2 [+12]
  GETUPVAL R1 1
  GETIMPORT R2 K5 [tick]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["current"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["OnChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 0
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R5 0
  GETTABLEKS R7 R0 K0 ["Value"]
  GETIMPORT R8 K2 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+4]
  LOADK R10 K3 ["#"]
  MOVE R11 R9
  CONCAT R6 R10 R11
  JUMP [+1]
  LOADK R6 K3 ["#"]
  CALL R5 1 2
  GETUPVAL R7 1
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R8 1
  GETIMPORT R9 K5 [tick]
  CALL R9 0 -1
  CALL R8 -1 1
  GETUPVAL R9 2
  NEWCLOSURE R10 P1
  CAPTURE VAL R6
  CAPTURE VAL R0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K0 ["Value"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  NEWCLOSURE R9 P2
  CAPTURE VAL R2
  NEWCLOSURE R10 P3
  CAPTURE VAL R2
  NEWCLOSURE R11 P4
  CAPTURE VAL R2
  NEWCLOSURE R12 P5
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R6
  NEWCLOSURE R13 P6
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  CAPTURE VAL R4
  NEWCLOSURE R14 P7
  CAPTURE VAL R0
  CAPTURE VAL R8
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 5
  NEWTABLE R18 0 0
  DUPTABLE R19 K9 [{"Input", "Modal"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 6
  NEWTABLE R22 8 0
  GETTABLEKS R23 R0 K10 ["Disabled"]
  SETTABLEKS R23 R22 K10 ["Disabled"]
  GETUPVAL R23 7
  SETTABLEKS R23 R22 K11 ["LeadingComponent"]
  DUPTABLE R23 K16 [{"BackgroundColor", "Size", "OnClick", "ForwardRef"}]
  GETTABLEKS R24 R0 K0 ["Value"]
  SETTABLEKS R24 R23 K12 ["BackgroundColor"]
  GETUPVAL R24 8
  SETTABLEKS R24 R23 K13 ["Size"]
  SETTABLEKS R9 R23 K14 ["OnClick"]
  SETTABLEKS R7 R23 K15 ["ForwardRef"]
  SETTABLEKS R23 R22 K17 ["LeadingComponentProps"]
  SETTABLEKS R12 R22 K18 ["OnFocusLost"]
  SETTABLEKS R13 R22 K19 ["OnTextChanged"]
  GETTABLEKS R24 R0 K20 ["AutomaticSize"]
  JUMPIFNOT R24 [+10]
  GETIMPORT R23 K23 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  GETTABLEKS R28 R0 K25 ["MinimumHeight"]
  ORK R27 R28 K24 [24]
  CALL R23 4 1
  JUMP [+5]
  GETIMPORT R23 K27 [UDim2.fromScale]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K13 ["Size"]
  SETTABLEKS R5 R22 K28 ["Text"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K29 ["Tag"]
  JUMPIFNOT R15 [+2]
  LOADK R24 K30 ["PropertyCellError"]
  JUMP [+1]
  LOADNIL R24
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K7 ["Input"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 9
  DUPTABLE R22 K35 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
  SETTABLEKS R1 R22 K31 ["Open"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 69
  LOADN R25 250
  CALL R23 2 1
  SETTABLEKS R23 R22 K32 ["MaxSize"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 69
  LOADN R25 250
  CALL R23 2 1
  SETTABLEKS R23 R22 K33 ["MinSize"]
  SETTABLEKS R7 R22 K34 ["ObjectRef"]
  SETTABLEKS R11 R22 K18 ["OnFocusLost"]
  DUPTABLE R23 K39 [{"Container"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K6 ["createElement"]
  GETUPVAL R25 5
  NEWTABLE R26 1 0
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K29 ["Tag"]
  LOADK R28 K40 ["X-Fit"]
  SETTABLE R28 R26 R27
  DUPTABLE R27 K42 [{"ColorPicker"}]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K6 ["createElement"]
  GETUPVAL R29 10
  DUPTABLE R30 K45 [{"Size", "Color", "OnColorChanged"}]
  GETIMPORT R31 K47 [UDim2.fromOffset]
  LOADN R32 69
  LOADN R33 225
  CALL R31 2 1
  SETTABLEKS R31 R30 K13 ["Size"]
  GETTABLEKS R31 R0 K0 ["Value"]
  SETTABLEKS R31 R30 K43 ["Color"]
  SETTABLEKS R14 R30 K44 ["OnColorChanged"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K41 ["ColorPicker"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K38 ["Container"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K8 ["Modal"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useState"]
  GETTABLEKS R3 R1 K8 ["useRef"]
  GETTABLEKS R4 R1 K9 ["useEffect"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["ColorPicker"]
  GETTABLEKS R8 R5 K11 ["UI"]
  GETTABLEKS R7 R8 K13 ["IconButton"]
  GETTABLEKS R9 R5 K11 ["UI"]
  GETTABLEKS R8 R9 K14 ["Pane"]
  GETTABLEKS R10 R5 K11 ["UI"]
  GETTABLEKS R9 R10 K15 ["TextInput"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K18 ["colorFromString"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K16 ["Src"]
  GETTABLEKS R13 R14 K19 ["Renderers"]
  GETTABLEKS R12 R13 K20 ["Modal"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K16 ["Src"]
  GETTABLEKS R13 R14 K21 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K19 ["Renderers"]
  GETTABLEKS R14 R15 K22 ["RendererTypes"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K16 ["Src"]
  GETTABLEKS R16 R17 K23 ["Resources"]
  GETTABLEKS R15 R16 K24 ["PluginStyles"]
  CALL R14 1 1
  LOADK R17 K25 ["Icon16"]
  NAMECALL R15 R14 K26 ["GetAttribute"]
  CALL R15 2 1
  DUPCLOSURE R16 K27 [PROTO_1]
  DUPCLOSURE R17 K28 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R6
  RETURN R17 1