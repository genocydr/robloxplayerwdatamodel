PROTO_0:
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  ADDK R8 R8 K0 [1]
  SETUPVAL R8 0
  GETUPVAL R7 0
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETUPVAL R13 1
  GETTABLEKS R14 R12 K1 ["key"]
  DUPTABLE R15 K6 [{"item", "categoryIndex", "submenusInside", "index"}]
  SETTABLEKS R12 R15 K2 ["item"]
  SETTABLEKS R7 R15 K3 ["categoryIndex"]
  SETTABLEKS R1 R15 K4 ["submenusInside"]
  GETUPVAL R17 0
  ADDK R17 R17 K0 [1]
  SETUPVAL R17 0
  GETUPVAL R16 0
  SETTABLEKS R16 R15 K5 ["index"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R12 K7 ["source"]
  GETTABLEKS R13 R14 K8 ["type"]
  JUMPIFNOTEQKS R13 K9 ["submenu"] [+20]
  GETIMPORT R13 K12 [table.clone]
  MOVE R14 R1
  CALL R13 1 1
  GETTABLEKS R16 R12 K1 ["key"]
  FASTCALL2 TABLE_INSERT R13 R16 [+4]
  MOVE R15 R13
  GETIMPORT R14 K14 [table.insert]
  CALL R14 2 0
  GETUPVAL R14 2
  GETTABLEKS R16 R12 K7 ["source"]
  GETTABLEKS R15 R16 K15 ["submenuCategories"]
  MOVE R16 R13
  CALL R14 2 0
  FORGLOOP R8 2 [-43]
  FORGLOOP R2 2 [-53]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["index"]
  GETTABLEKS R4 R1 K0 ["index"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K0 [+4]
  LOADK R9 K0 ["Luau: Generalized iteration over T? can't give nil"]
  GETIMPORT R7 K2 [assert]
  CALL R7 2 0
  DUPTABLE R9 K5 [{"index", "value"}]
  SETTABLEKS R5 R9 K3 ["index"]
  SETTABLEKS R6 R9 K4 ["value"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K8 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-22]
  GETIMPORT R2 K10 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K11 [PROTO_2]
  CALL R2 2 0
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R10 R7 K4 ["value"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K8 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-9]
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 1
  GETTABLE R8 R9 R7
  GETTABLEKS R10 R8 K0 ["categoryIndex"]
  GETTABLE R9 R2 R10
  JUMPIFNOTEQKNIL R9 [+6]
  NEWTABLE R9 0 0
  GETTABLEKS R10 R8 K0 ["categoryIndex"]
  SETTABLE R9 R2 R10
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  FASTCALL2K ASSERT R11 K1 [+4]
  LOADK R12 K1 ["Luau"]
  GETIMPORT R10 K3 [assert]
  CALL R10 2 0
  GETTABLEKS R11 R8 K4 ["index"]
  GETTABLE R10 R9 R11
  JUMPIFNOTEQKNIL R10 [+15]
  DUPTABLE R11 K8 [{"key", "type", "items"}]
  SETTABLEKS R7 R11 K5 ["key"]
  LOADK R12 K9 ["submenu"]
  SETTABLEKS R12 R11 K6 ["type"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K7 ["items"]
  MOVE R10 R11
  GETTABLEKS R11 R8 K4 ["index"]
  SETTABLE R10 R9 R11
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  FASTCALL2K ASSERT R12 K1 [+4]
  LOADK R13 K1 ["Luau"]
  GETIMPORT R11 K3 [assert]
  CALL R11 2 0
  GETTABLEKS R13 R10 K6 ["type"]
  JUMPIFEQKS R13 K9 ["submenu"] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  FASTCALL2K ASSERT R12 K10 [+4]
  LOADK R13 K10 ["Found submenu is not a submenu"]
  GETIMPORT R11 K3 [assert]
  CALL R11 2 0
  GETTABLEKS R2 R10 K7 ["items"]
  FORGLOOP R3 2 [-66]
  GETTABLE R3 R2 R1
  JUMPIFNOTEQKNIL R3 [+5]
  NEWTABLE R4 0 0
  SETTABLE R4 R2 R1
  RETURN R4 1
  RETURN R3 1

PROTO_5:
  NEWTABLE R2 0 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 0
  GETTABLE R9 R10 R7
  JUMPIFNOTEQKNIL R9 [+10]
  GETIMPORT R10 K1 [error]
  LOADK R12 K2 ["Couldn't find action that Studio gave: %*"]
  MOVE R14 R7
  NAMECALL R12 R12 K3 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  CALL R10 1 0
  MOVE R10 R3
  GETTABLEKS R11 R9 K4 ["submenusInside"]
  GETTABLEKS R12 R9 K5 ["categoryIndex"]
  CALL R10 2 1
  GETTABLEKS R13 R9 K6 ["item"]
  GETTABLEKS R12 R13 K7 ["source"]
  GETTABLEKS R11 R12 K8 ["type"]
  JUMPIFNOTEQKS R11 K9 ["studioAction"] [+25]
  GETTABLEKS R11 R1 K10 ["getStudioActionState"]
  GETTABLEKS R14 R9 K6 ["item"]
  GETTABLEKS R13 R14 K7 ["source"]
  GETTABLEKS R12 R13 K11 ["uri"]
  CALL R11 1 1
  GETTABLEKS R12 R9 K12 ["index"]
  DUPTABLE R13 K14 [{"type", "action"}]
  LOADK R14 K13 ["action"]
  SETTABLEKS R14 R13 K8 ["type"]
  DUPTABLE R14 K17 [{"key", "state"}]
  SETTABLEKS R7 R14 K15 ["key"]
  SETTABLEKS R11 R14 K16 ["state"]
  SETTABLEKS R14 R13 K13 ["action"]
  SETTABLE R13 R10 R12
  JUMP [+26]
  GETTABLEKS R13 R9 K6 ["item"]
  GETTABLEKS R12 R13 K7 ["source"]
  GETTABLEKS R11 R12 K8 ["type"]
  JUMPIFNOTEQKS R11 K18 ["submenu"] [+11]
  GETIMPORT R11 K1 [error]
  LOADK R13 K19 ["Submenu is being sent as something that is enabled, but this should just be real actions: %*"]
  MOVE R15 R7
  NAMECALL R13 R13 K3 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  CALL R11 1 0
  JUMP [+8]
  GETUPVAL R11 1
  GETTABLEKS R14 R9 K6 ["item"]
  GETTABLEKS R13 R14 K7 ["source"]
  GETTABLEKS R12 R13 K8 ["type"]
  CALL R11 1 0
  FORGLOOP R4 1 [-78]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  LOADK R4 K0 ["Explorer_"]
  GETUPVAL R5 1
  NAMECALL R5 R5 K1 ["GenerateGUID"]
  CALL R5 1 1
  CONCAT R3 R4 R5
  NAMECALL R1 R1 K2 ["CreatePluginMenu"]
  CALL R1 2 1
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R2 1 1
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R11 2
  MOVE R12 R7
  CALL R11 1 1
  MOVE R8 R11
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K4 ["submenu"] [+19]
  GETUPVAL R13 3
  GETTABLEKS R14 R12 K5 ["items"]
  CALL R13 1 1
  GETUPVAL R14 4
  LOADK R16 K6 ["ContextMenu"]
  GETTABLEKS R17 R12 K7 ["key"]
  NAMECALL R14 R14 K8 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K9 ["Title"]
  MOVE R16 R13
  NAMECALL R14 R1 K10 ["AddMenu"]
  CALL R14 2 0
  JUMP [+53]
  GETTABLEKS R13 R12 K3 ["type"]
  JUMPIFNOTEQKS R13 K11 ["action"] [+50]
  GETUPVAL R14 5
  GETTABLEKS R16 R12 K11 ["action"]
  GETTABLEKS R15 R16 K7 ["key"]
  GETTABLE R13 R14 R15
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  FASTCALL2K ASSERT R15 K12 [+4]
  LOADK R16 K12 ["Couldn't find plugin action"]
  GETIMPORT R14 K14 [assert]
  CALL R14 2 0
  GETTABLEKS R16 R12 K11 ["action"]
  GETTABLEKS R15 R16 K15 ["state"]
  GETTABLEKS R14 R15 K16 ["Text"]
  SETTABLEKS R14 R13 K16 ["Text"]
  GETTABLEKS R17 R12 K11 ["action"]
  GETTABLEKS R16 R17 K15 ["state"]
  GETTABLEKS R15 R16 K17 ["Shortcuts"]
  GETTABLEN R14 R15 1
  JUMPIFNOTEQKNIL R14 [+5]
  LOADK R15 K18 [""]
  SETTABLEKS R15 R13 K19 ["DefaultShortcut"]
  JUMP [+8]
  SETTABLEKS R14 R13 K19 ["DefaultShortcut"]
  GETTABLEKS R16 R13 K16 ["Text"]
  LOADK R17 K20 ["     "]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R13 K16 ["Text"]
  MOVE R17 R13
  NAMECALL R15 R1 K21 ["AddAction"]
  CALL R15 2 0
  FORGLOOP R8 2 [-76]
  LENGTH R8 R2
  JUMPIFEQ R6 R8 [+4]
  NAMECALL R8 R1 K22 ["AddSeparator"]
  CALL R8 1 0
  FORGLOOP R3 2 [-91]
  GETUPVAL R4 6
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K25 [table.insert]
  CALL R3 2 0
  RETURN R1 1

PROTO_10:
  NEWTABLE R0 0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  MOVE R2 R1
  GETUPVAL R3 5
  GETUPVAL R4 6
  GETUPVAL R5 7
  CALL R3 2 1
  CALL R2 1 1
  NAMECALL R3 R2 K0 ["ShowAsync"]
  CALL R3 1 0
  GETUPVAL R3 4
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K1 [+4]
  LOADK R10 K1 ["Luau"]
  GETIMPORT R8 K3 [assert]
  CALL R8 2 0
  LOADK R8 K4 [""]
  SETTABLEKS R8 R7 K5 ["DefaultShortcut"]
  FORGLOOP R3 2 [-14]
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K6 ["Destroy"]
  CALL R8 1 0
  FORGLOOP R3 2 [-4]
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["useState"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["useEffect"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["useState"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["Signal"]
  GETTABLEKS R5 R6 K7 ["new"]
  CALL R4 1 1
  GETUPVAL R5 5
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["useCallback"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  NEWTABLE R8 0 2
  MOVE R9 R2
  MOVE R10 R5
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R7 9
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K9 ["Components"]
  GETTABLEKS R9 R10 K10 ["Contexts"]
  GETTABLEKS R8 R9 K11 ["ContextMenuContextProvider"]
  DUPTABLE R9 K14 [{"showContextMenu", "actionTriggeredSignal"}]
  SETTABLEKS R6 R9 K12 ["showContextMenu"]
  SETTABLEKS R4 R9 K13 ["actionTriggeredSignal"]
  GETTABLEKS R10 R0 K15 ["children"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFeatures"]
  GETTABLEKS R4 R5 K12 ["ContextMenu"]
  GETTABLEKS R3 R4 K13 ["ContextMenuActionList"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFeatures"]
  GETTABLEKS R5 R6 K12 ["ContextMenu"]
  GETTABLEKS R4 R5 K14 ["ContextMenuTypes"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K15 ["Packages"]
  GETTABLEKS R5 R6 K16 ["Explorer"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K15 ["Packages"]
  GETTABLEKS R6 R7 K17 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K15 ["Packages"]
  GETTABLEKS R7 R8 K18 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["SharedFeatures"]
  GETTABLEKS R9 R10 K12 ["ContextMenu"]
  GETTABLEKS R8 R9 K19 ["createContextMenuActionWatcher"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K20 ["Util"]
  GETTABLEKS R9 R10 K21 ["exhaustiveMatch"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R13 R1 K10 ["Src"]
  GETTABLEKS R12 R13 K11 ["SharedFeatures"]
  GETTABLEKS R11 R12 K12 ["ContextMenu"]
  GETTABLEKS R10 R11 K22 ["usePluginActions"]
  CALL R9 1 1
  GETTABLEKS R11 R5 K23 ["ContextServices"]
  GETTABLEKS R10 R11 K24 ["Localization"]
  GETTABLEKS R11 R6 K25 ["createElement"]
  NEWTABLE R12 0 0
  LOADN R13 0
  NEWCLOSURE R14 P0
  CAPTURE REF R13
  NEWCLOSURE R15 P1
  CAPTURE REF R13
  CAPTURE VAL R12
  CAPTURE VAL R15
  MOVE R16 R15
  MOVE R17 R2
  NEWTABLE R18 0 0
  CALL R16 2 0
  DUPCLOSURE R16 K26 [PROTO_3]
  DUPCLOSURE R17 K27 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R8
  DUPCLOSURE R18 K28 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CLOSEUPVALS R13
  RETURN R18 1
