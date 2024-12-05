PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LENGTH R7 R1
  LOADK R10 K0 ["Wire"]
  NAMECALL R8 R6 K1 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+11]
  GETTABLEKS R8 R6 K2 ["SourceInstance"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R10 R6 K2 ["SourceInstance"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["hasInputPin"]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIFNOT R8 [+18]
  LOADK R10 K7 ["Input"]
  NAMECALL R8 R6 K8 ["GetConnectedWires"]
  CALL R8 2 1
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R16 R13 K2 ["SourceInstance"]
  FASTCALL2 TABLE_INSERT R1 R16 [+4]
  MOVE R15 R1
  GETIMPORT R14 K5 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-9]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["hasSidechainPin"]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIFNOT R8 [+18]
  LOADK R10 K10 ["Sidechain"]
  NAMECALL R8 R6 K8 ["GetConnectedWires"]
  CALL R8 2 1
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R16 R13 K2 ["SourceInstance"]
  FASTCALL2 TABLE_INSERT R1 R16 [+4]
  MOVE R15 R1
  GETIMPORT R14 K5 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-9]
  LOADK R10 K11 ["AudioListener"]
  NAMECALL R8 R6 K1 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  NAMECALL R8 R6 K12 ["GetInteractingEmitters"]
  CALL R8 1 1
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  FASTCALL2 TABLE_INSERT R1 R13 [+5]
  MOVE R15 R1
  MOVE R16 R13
  GETIMPORT R14 K5 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-8]
  LENGTH R8 R1
  JUMPIFNOTEQ R7 R8 [+8]
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R9 R1
  MOVE R10 R6
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-97]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LENGTH R7 R1
  LOADK R10 K0 ["Wire"]
  NAMECALL R8 R6 K1 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+11]
  GETTABLEKS R8 R6 K2 ["TargetInstance"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R10 R6 K2 ["TargetInstance"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["hasOutputPin"]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIFNOT R8 [+15]
  LOADK R10 K7 ["Output"]
  NAMECALL R8 R6 K8 ["GetConnectedWires"]
  CALL R8 2 3
  FORGPREP R8
  GETTABLEKS R15 R12 K2 ["TargetInstance"]
  FASTCALL2 TABLE_INSERT R1 R15 [+4]
  MOVE R14 R1
  GETIMPORT R13 K5 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-9]
  LOADK R10 K9 ["AudioEmitter"]
  NAMECALL R8 R6 K1 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  NAMECALL R8 R6 K10 ["GetInteractingListeners"]
  CALL R8 1 1
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  FASTCALL2 TABLE_INSERT R1 R13 [+5]
  MOVE R15 R1
  MOVE R16 R13
  GETIMPORT R14 K5 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-8]
  LENGTH R8 R1
  JUMPIFNOTEQ R7 R8 [+8]
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R9 R1
  MOVE R10 R6
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-70]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 -1
  CALL R0 -1 1
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 -1
  CALL R0 -1 1
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  LOADK R3 K0 ["Actions"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  DUPTABLE R2 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
  DUPTABLE R3 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R4 K15 ["Standalone"]
  SETTABLEKS R4 R3 K10 ["DataModel"]
  LOADK R4 K16 ["Audio"]
  SETTABLEKS R4 R3 K11 ["PluginId"]
  LOADK R4 K0 ["Actions"]
  SETTABLEKS R4 R3 K12 ["Category"]
  LOADK R4 K17 ["Select Inputs"]
  SETTABLEKS R4 R3 K13 ["ItemId"]
  SETTABLEKS R3 R2 K2 ["Uri"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["Enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Visible"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["action"]
  LOADK R4 K19 ["SelectInputs"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["Text"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K20 ["tooltip"]
  LOADK R4 K19 ["SelectInputs"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["Tooltip"]
  LOADK R3 K21 ["Help"]
  SETTABLEKS R3 R2 K7 ["Icon"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["Shortcuts"]
  DUPTABLE R3 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
  DUPTABLE R4 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R5 K15 ["Standalone"]
  SETTABLEKS R5 R4 K10 ["DataModel"]
  LOADK R5 K16 ["Audio"]
  SETTABLEKS R5 R4 K11 ["PluginId"]
  LOADK R5 K0 ["Actions"]
  SETTABLEKS R5 R4 K12 ["Category"]
  LOADK R5 K22 ["Select Outputs"]
  SETTABLEKS R5 R4 K13 ["ItemId"]
  SETTABLEKS R4 R3 K2 ["Uri"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Enabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["Visible"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["action"]
  LOADK R5 K23 ["SelectOutputs"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["Text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K20 ["tooltip"]
  LOADK R5 K23 ["SelectOutputs"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["Tooltip"]
  LOADK R4 K21 ["Help"]
  SETTABLEKS R4 R3 K7 ["Icon"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K8 ["Shortcuts"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 1
  NAMECALL R4 R4 K24 ["Disconnect"]
  CALL R4 1 0
  LOADNIL R4
  SETUPVAL R4 1
  GETUPVAL R4 2
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 2
  NAMECALL R4 R4 K24 ["Disconnect"]
  CALL R4 1 0
  LOADNIL R4
  SETUPVAL R4 2
  MOVE R7 R2
  LOADB R8 1
  NAMECALL R5 R1 K25 ["CreateAsync"]
  CALL R5 3 1
  GETTABLEN R4 R5 1
  GETUPVAL R6 3
  NAMECALL R4 R4 K26 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 1
  MOVE R7 R3
  LOADB R8 1
  NAMECALL R5 R1 K25 ["CreateAsync"]
  CALL R5 3 1
  GETTABLEN R4 R5 1
  GETUPVAL R6 4
  NAMECALL R4 R4 K26 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 2
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AudioActions"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["LocalizationUtil"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["WiringUtil"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R6 K16 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R0
  DUPCLOSURE R7 K17 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R0
  LOADNIL R8
  LOADNIL R9
  NEWTABLE R10 2 0
  NEWCLOSURE R11 P4
  CAPTURE VAL R2
  CAPTURE REF R8
  CAPTURE REF R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K18 ["register"]
  NEWCLOSURE R11 P5
  CAPTURE REF R8
  CAPTURE REF R9
  SETTABLEKS R11 R10 K19 ["deregister"]
  CLOSEUPVALS R8
  RETURN R10 1
