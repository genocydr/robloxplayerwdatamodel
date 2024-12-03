PROTO_0:
  GETUPVAL R2 0
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  JUMPIFNOTEQKS R2 K0 ["Custom"] [+54]
  GETUPVAL R2 1
  NEWTABLE R3 0 1
  DUPTABLE R4 K5 [{"Id", "Type", "Text", "Tooltip"}]
  LOADK R5 K0 ["Custom"]
  SETTABLEKS R5 R4 K1 ["Id"]
  LOADK R5 K3 ["Text"]
  SETTABLEKS R5 R4 K2 ["Type"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K7 ["Tab_Custom"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Text"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K9 ["Tab_Custom_Tooltip"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Tooltip"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R4 3
  DUPTABLE R5 K13 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["SubjectAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["TargetAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Offset"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K17 ["OnSelectTab"]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["child"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["WidgetUri"]
  MOVE R4 R0
  CALL R2 2 1
  LOADNIL R3
  JUMPIFNOTEQKS R0 K2 ["Custom"] [+3]
  LOADK R3 K3 ["+"]
  JUMP [+15]
  JUMPIFNOT R1 [+13]
  GETUPVAL R4 2
  LOADK R6 K4 ["Plugin"]
  LOADK R8 K5 ["Tab_%*"]
  MOVE R10 R0
  NAMECALL R8 R8 K6 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K7 ["getText"]
  CALL R4 3 1
  MOVE R3 R4
  JUMP [+1]
  MOVE R3 R0
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K15 [{"Uri", "LayoutOrder", "Scale", "Selected", "Text", "OnTabSelected"}]
  SETTABLEKS R2 R7 K9 ["Uri"]
  GETUPVAL R8 6
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["Scale"]
  SETTABLEKS R8 R7 K11 ["Scale"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["ActiveTab"]
  JUMPIFEQ R9 R0 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["Selected"]
  SETTABLEKS R3 R7 K13 ["Text"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  SETTABLEKS R8 R7 K14 ["OnTabSelected"]
  CALL R5 2 1
  SETTABLE R5 R4 R0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  JUMPIFNOTEQKS R2 K0 ["Custom"] [+54]
  GETUPVAL R2 1
  NEWTABLE R3 0 1
  DUPTABLE R4 K5 [{"Id", "Type", "Text", "Tooltip"}]
  LOADK R5 K0 ["Custom"]
  SETTABLEKS R5 R4 K1 ["Id"]
  LOADK R5 K3 ["Text"]
  SETTABLEKS R5 R4 K2 ["Type"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K7 ["Tab_Custom"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Text"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K9 ["Tab_Custom_Tooltip"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Tooltip"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R4 3
  DUPTABLE R5 K13 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["SubjectAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["TargetAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Offset"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K17 ["OnSelectTab"]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 3
  CALL R3 0 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETUPVAL R6 4
  JUMPIFNOT R6 [+50]
  GETTABLEKS R7 R0 K1 ["Plugin"]
  FASTCALL2K ASSERT R7 K2 [+4]
  LOADK R8 K2 ["Plugin is guaranteed with above flag"]
  GETIMPORT R6 K4 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R0 K1 ["Plugin"]
  LOADK R8 K5 ["RibbonConfiguration"]
  NAMECALL R6 R6 K6 ["GetPluginComponent"]
  CALL R6 2 1
  NAMECALL R6 R6 K7 ["GetRibbonDefinitionAsync"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K8 ["CustomControls"]
  JUMPIFNOT R7 [+30]
  GETTABLEKS R7 R6 K8 ["CustomControls"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R12 5
  MOVE R13 R5
  NEWCLOSURE R14 P0
  CAPTURE VAL R10
  CALL R12 2 1
  JUMPIFNOT R12 [+10]
  GETIMPORT R12 K10 [warn]
  LOADK R14 K11 ["Tab %* is already defined, skipping..."]
  MOVE R16 R10
  NAMECALL R14 R14 K12 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  CALL R12 1 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R13 R5
  MOVE R14 R10
  GETIMPORT R12 K15 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-24]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE VAL R1
  GETUPVAL R7 4
  JUMPIFNOT R7 [+28]
  GETUPVAL R7 9
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  MOVE R12 R6
  MOVE R13 R11
  LOADB R14 1
  CALL R12 2 0
  FORGLOOP R7 2 [-5]
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  MOVE R12 R6
  MOVE R13 R11
  LOADB R14 0
  CALL R12 2 0
  FORGLOOP R7 2 [-5]
  LENGTH R7 R5
  JUMPIFNOTEQKN R7 K16 [0] [+68]
  MOVE R7 R6
  LOADK R8 K17 ["Custom"]
  LOADB R9 1
  CALL R7 2 0
  JUMP [+62]
  GETUPVAL R7 9
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K18 ["child"]
  GETTABLEKS R13 R0 K19 ["WidgetUri"]
  MOVE R14 R11
  CALL R12 2 1
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K27 [{"Uri", "LayoutOrder", "Scale", "Selected", "Text", "OnTabSelected"}]
  SETTABLEKS R12 R15 K21 ["Uri"]
  MOVE R16 R3
  CALL R16 0 1
  SETTABLEKS R16 R15 K22 ["LayoutOrder"]
  GETTABLEKS R16 R0 K23 ["Scale"]
  SETTABLEKS R16 R15 K23 ["Scale"]
  GETTABLEKS R17 R0 K28 ["ActiveTab"]
  JUMPIFEQ R17 R11 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K24 ["Selected"]
  JUMPIFNOTEQKS R11 K17 ["Custom"] [+3]
  LOADK R16 K29 ["+"]
  JUMP [+10]
  LOADK R18 K1 ["Plugin"]
  LOADK R20 K30 ["Tab_%*"]
  MOVE R22 R11
  NAMECALL R20 R20 K12 ["format"]
  CALL R20 2 1
  MOVE R19 R20
  NAMECALL R16 R2 K31 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K25 ["Text"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K26 ["OnTabSelected"]
  CALL R13 2 1
  SETTABLE R13 R4 R11
  FORGLOOP R7 2 [-57]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K20 ["createElement"]
  LOADK R8 K32 ["ScrollingFrame"]
  NEWTABLE R9 2 0
  GETTABLEKS R10 R0 K22 ["LayoutOrder"]
  SETTABLEKS R10 R9 K22 ["LayoutOrder"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K33 ["Tag"]
  GETUPVAL R11 10
  LOADK R12 K34 ["Component-RibbonTabs Role-Surface X-RowSpace100"]
  GETTABLEKS R13 R0 K23 ["Scale"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  MOVE R10 R4
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["counter"]
  GETTABLEKS R6 R3 K13 ["Styling"]
  GETTABLEKS R5 R6 K14 ["joinTags"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["find"]
  GETTABLEKS R8 R3 K17 ["ContextServices"]
  GETTABLEKS R9 R8 K18 ["Localization"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K19 ["Hooks"]
  GETTABLEKS R11 R12 K20 ["useMenu"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K11 ["Util"]
  GETTABLEKS R12 R13 K21 ["StudioUri"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Src"]
  GETTABLEKS R14 R15 K22 ["Components"]
  GETTABLEKS R13 R14 K23 ["ControlsView"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETTABLEKS R14 R15 K24 ["Tab"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K8 ["Src"]
  GETTABLEKS R16 R17 K25 ["SharedFlags"]
  GETTABLEKS R15 R16 K26 ["getFFlagEnableRibbonConfigurationProvider"]
  CALL R14 1 1
  CALL R14 0 1
  NEWTABLE R15 0 6
  LOADK R16 K27 ["Home"]
  LOADK R17 K28 ["Model"]
  LOADK R18 K29 ["Avatar"]
  LOADK R19 K30 ["UI"]
  LOADK R20 K31 ["Script"]
  LOADK R21 K32 ["Plugins"]
  SETLIST R15 R16 6 [1]
  JUMPIF R14 [+7]
  FASTCALL2K TABLE_INSERT R15 K33 [+5]
  MOVE R17 R15
  LOADK R18 K33 ["Custom"]
  GETIMPORT R16 K36 [table.insert]
  CALL R16 2 0
  DUPCLOSURE R16 K37 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R5
  RETURN R16 1
