PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnEdit"]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Keypoint"]
  NEWTABLE R4 1 0
  GETUPVAL R5 2
  SETTABLE R0 R4 R5
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Context"]
  GETTABLEKS R2 R3 K1 ["Consumer"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Localization"]
  GETTABLEKS R3 R4 K3 ["Key"]
  GETTABLE R2 R1 R3
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 4
  NEWTABLE R6 2 0
  GETTABLEKS R7 R0 K5 ["LayoutOrder"]
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["Tag"]
  LOADK R8 K7 ["X-Center X-Middle X-RowM X-Fit"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K10 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 2 0
  LOADN R11 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K6 ["Tag"]
  LOADK R12 K11 ["X-Left X-Pad X-RowM X-Fit"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K15 [{"Time", "Value", "Envelope"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K20 [{"LayoutOrder", "Text", "Schema", "Disabled", "Value", "OnChanged"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K21 ["Label"]
  LOADK R18 K12 ["Time"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETUPVAL R15 6
  SETTABLEKS R15 R14 K17 ["Schema"]
  GETTABLEKS R15 R0 K23 ["IsKeypointFixed"]
  SETTABLEKS R15 R14 K18 ["Disabled"]
  GETTABLEKS R16 R0 K24 ["Keypoint"]
  GETTABLEKS R15 R16 K12 ["Time"]
  SETTABLEKS R15 R14 K13 ["Value"]
  LOADK R16 K12 ["Time"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R16
  SETTABLEKS R15 R14 K19 ["OnChanged"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["Time"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K21 ["Label"]
  LOADK R18 K13 ["Value"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETUPVAL R15 6
  SETTABLEKS R15 R14 K17 ["Schema"]
  GETTABLEKS R16 R0 K24 ["Keypoint"]
  GETTABLEKS R15 R16 K13 ["Value"]
  SETTABLEKS R15 R14 K13 ["Value"]
  LOADK R16 K13 ["Value"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R16
  SETTABLEKS R15 R14 K19 ["OnChanged"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Value"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
  LOADN R15 3
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K21 ["Label"]
  LOADK R18 K14 ["Envelope"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETUPVAL R15 6
  SETTABLEKS R15 R14 K17 ["Schema"]
  GETTABLEKS R16 R0 K24 ["Keypoint"]
  GETTABLEKS R15 R16 K14 ["Envelope"]
  SETTABLEKS R15 R14 K13 ["Value"]
  LOADK R16 K14 ["Envelope"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R16
  SETTABLEKS R15 R14 K19 ["OnChanged"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Envelope"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["SequenceButtonsContainer"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 2 0
  LOADN R11 3
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K6 ["Tag"]
  LOADK R12 K26 ["X-Right X-Pad X-RowM X-Fit"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K29 [{"Delete", "Save"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K33 [{"LayoutOrder", "TooltipText", "LeftIcon", "Disabled", "OnClick"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K34 ["Control"]
  LOADK R18 K35 ["DeleteTooltip"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["TooltipText"]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K36 ["delete"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K31 ["LeftIcon"]
  GETTABLEKS R15 R0 K23 ["IsKeypointFixed"]
  SETTABLEKS R15 R14 K18 ["Disabled"]
  GETTABLEKS R15 R0 K37 ["OnDelete"]
  SETTABLEKS R15 R14 K32 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["Delete"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K38 [{"LayoutOrder", "Text", "OnClick"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K39 ["Modal"]
  LOADK R18 K28 ["Save"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETTABLEKS R15 R0 K40 ["OnSave"]
  SETTABLEKS R15 R14 K32 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Save"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["CommitButtonsContainer"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useContext"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["join"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K11 ["ContextServices"]
  GETTABLEKS R8 R5 K12 ["UI"]
  GETTABLEKS R7 R8 K13 ["IconButton"]
  GETTABLEKS R9 R5 K12 ["UI"]
  GETTABLEKS R8 R9 K14 ["Pane"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["ModernIcons"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K18 ["Renderers"]
  GETTABLEKS R12 R13 K19 ["SequenceRenderers"]
  GETTABLEKS R11 R12 K20 ["LabelCell"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K21 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K18 ["Renderers"]
  GETTABLEKS R14 R15 K19 ["SequenceRenderers"]
  GETTABLEKS R13 R14 K21 ["Types"]
  CALL R12 1 1
  DUPTABLE R13 K25 [{"Type", "Min", "Max"}]
  LOADK R14 K26 ["Number"]
  SETTABLEKS R14 R13 K22 ["Type"]
  LOADN R14 0
  SETTABLEKS R14 R13 K23 ["Min"]
  LOADN R14 1
  SETTABLEKS R14 R13 K24 ["Max"]
  DUPCLOSURE R14 K27 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R14 1