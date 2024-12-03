PROTO_0:
  GETTABLEKS R1 R0 K0 ["Uri"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["equals"]
  GETTABLEKS R2 R0 K1 ["Uri"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Uri"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  LOADK R4 K0 ["Settings"]
  NAMECALL R2 R0 K1 ["GetPluginComponent"]
  CALL R2 2 1
  GETUPVAL R5 0
  NAMECALL R3 R2 K2 ["GetAsync"]
  CALL R3 2 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETUPVAL R6 1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  DUPTABLE R11 K8 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  GETTABLEKS R12 R10 K3 ["Uri"]
  SETTABLEKS R12 R11 K3 ["Uri"]
  GETTABLEKS R13 R10 K4 ["Text"]
  JUMPIFEQKS R13 K9 [""] [+8]
  LOADK R14 K10 ["Plugin"]
  GETTABLEKS R15 R10 K4 ["Text"]
  NAMECALL R12 R1 K11 ["getText"]
  CALL R12 3 1
  JUMP [+1]
  LOADK R12 K9 [""]
  SETTABLEKS R12 R11 K4 ["Text"]
  GETTABLEKS R13 R10 K5 ["Tooltip"]
  JUMPIFEQKS R13 K9 [""] [+8]
  LOADK R14 K10 ["Plugin"]
  GETTABLEKS R15 R10 K5 ["Tooltip"]
  NAMECALL R12 R1 K11 ["getText"]
  CALL R12 3 1
  JUMP [+1]
  LOADK R12 K9 [""]
  SETTABLEKS R12 R11 K5 ["Tooltip"]
  GETTABLEKS R12 R10 K6 ["Enabled"]
  SETTABLEKS R12 R11 K6 ["Enabled"]
  GETTABLEKS R12 R10 K7 ["Value"]
  SETTABLEKS R12 R11 K7 ["Value"]
  GETUPVAL R12 2
  MOVE R13 R3
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  CALL R12 2 1
  JUMPIFNOT R12 [+7]
  FASTCALL2 TABLE_INSERT R5 R11 [+4]
  MOVE R13 R5
  MOVE R14 R11
  GETUPVAL R12 4
  CALL R12 2 0
  JUMP [+6]
  FASTCALL2 TABLE_INSERT R4 R11 [+4]
  MOVE R13 R4
  MOVE R14 R11
  GETUPVAL R12 4
  CALL R12 2 0
  FORGLOOP R6 2 [-62]
  LENGTH R6 R4
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+5]
  MOVE R8 R4
  NAMECALL R6 R2 K12 ["CreateAsync"]
  CALL R6 2 0
  LENGTH R6 R5
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+5]
  MOVE R8 R5
  NAMECALL R6 R2 K13 ["UpdateAsync"]
  CALL R6 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["StudioUri"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["fromSetting"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["find"]
  GETTABLEKS R6 R4 K14 ["map"]
  GETIMPORT R7 K17 [table.insert]
  NEWTABLE R8 1 0
  GETIMPORT R9 K19 [game]
  LOADK R11 K20 ["UpdateUITabLuaRibbon"]
  NAMECALL R9 R9 K21 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K22 ["SharedFlags"]
  GETTABLEKS R11 R12 K23 ["getFFlagLuaRibbonAnchorLockModes"]
  CALL R10 1 1
  CALL R10 0 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K22 ["SharedFlags"]
  GETTABLEKS R12 R13 K24 ["getFFlagAddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  CALL R11 1 1
  CALL R11 0 1
  NEWTABLE R12 0 15
  DUPTABLE R13 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R14 R3
  LOADK R15 K31 ["RunTools"]
  LOADK R16 K32 ["RunMode"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Uri"]
  LOADK R14 K33 ["Setting_RunMode"]
  SETTABLEKS R14 R13 K26 ["Text"]
  LOADK R14 K34 [""]
  SETTABLEKS R14 R13 K27 ["Tooltip"]
  LOADB R14 1
  SETTABLEKS R14 R13 K28 ["Enabled"]
  LOADN R14 255
  SETTABLEKS R14 R13 K29 ["Value"]
  DUPTABLE R14 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R15 R3
  LOADK R16 K35 ["BuilderTools"]
  LOADK R17 K36 ["PartShape"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Uri"]
  LOADK R15 K37 ["Setting_Part"]
  SETTABLEKS R15 R14 K26 ["Text"]
  LOADK R15 K34 [""]
  SETTABLEKS R15 R14 K27 ["Tooltip"]
  LOADB R15 1
  SETTABLEKS R15 R14 K28 ["Enabled"]
  LOADN R15 255
  SETTABLEKS R15 R14 K29 ["Value"]
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K35 ["BuilderTools"]
  LOADK R18 K38 ["EffectType"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K39 ["Setting_Effect"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  DUPTABLE R16 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R17 R3
  LOADK R18 K35 ["BuilderTools"]
  LOADK R19 K40 ["ConstraintType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["Uri"]
  LOADK R17 K41 ["Setting_Constraint"]
  SETTABLEKS R17 R16 K26 ["Text"]
  LOADK R17 K34 [""]
  SETTABLEKS R17 R16 K27 ["Tooltip"]
  LOADB R17 1
  SETTABLEKS R17 R16 K28 ["Enabled"]
  LOADN R17 255
  SETTABLEKS R17 R16 K29 ["Value"]
  DUPTABLE R17 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R18 R3
  LOADK R19 K42 ["ScriptTools"]
  LOADK R20 K43 ["CreateScript"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K25 ["Uri"]
  LOADK R18 K44 ["Setting_Script"]
  SETTABLEKS R18 R17 K26 ["Text"]
  LOADK R18 K45 ["Tooltip_Script"]
  SETTABLEKS R18 R17 K27 ["Tooltip"]
  LOADB R18 1
  SETTABLEKS R18 R17 K28 ["Enabled"]
  LOADN R18 255
  SETTABLEKS R18 R17 K29 ["Value"]
  DUPTABLE R18 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R19 R3
  LOADK R20 K35 ["BuilderTools"]
  LOADK R21 K46 ["Group"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Uri"]
  LOADK R19 K47 ["Setting_Group"]
  SETTABLEKS R19 R18 K26 ["Text"]
  LOADK R19 K48 ["Tooltip_Group"]
  SETTABLEKS R19 R18 K27 ["Tooltip"]
  LOADB R19 1
  SETTABLEKS R19 R18 K28 ["Enabled"]
  LOADN R19 255
  SETTABLEKS R19 R18 K29 ["Value"]
  DUPTABLE R19 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R20 R3
  LOADK R21 K42 ["ScriptTools"]
  LOADK R22 K49 ["FormatScript"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K25 ["Uri"]
  LOADK R20 K50 ["Setting_Format"]
  SETTABLEKS R20 R19 K26 ["Text"]
  LOADK R20 K51 ["Tooltip_Format"]
  SETTABLEKS R20 R19 K27 ["Tooltip"]
  LOADB R20 1
  SETTABLEKS R20 R19 K28 ["Enabled"]
  LOADN R20 255
  SETTABLEKS R20 R19 K29 ["Value"]
  DUPTABLE R20 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R21 R3
  LOADK R22 K42 ["ScriptTools"]
  LOADK R23 K52 ["Find"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K25 ["Uri"]
  LOADK R21 K53 ["Setting_Find"]
  SETTABLEKS R21 R20 K26 ["Text"]
  LOADK R21 K34 [""]
  SETTABLEKS R21 R20 K27 ["Tooltip"]
  LOADB R21 1
  SETTABLEKS R21 R20 K28 ["Enabled"]
  LOADN R21 255
  SETTABLEKS R21 R20 K29 ["Value"]
  DUPTABLE R21 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R22 R3
  LOADK R23 K35 ["BuilderTools"]
  LOADK R24 K54 ["InsertGui"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K25 ["Uri"]
  LOADK R22 K55 ["Setting_GUI"]
  SETTABLEKS R22 R21 K26 ["Text"]
  LOADK R22 K56 ["Tooltip_GUI"]
  SETTABLEKS R22 R21 K27 ["Tooltip"]
  LOADB R22 1
  SETTABLEKS R22 R21 K28 ["Enabled"]
  LOADN R22 255
  SETTABLEKS R22 R21 K29 ["Value"]
  DUPTABLE R22 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R23 R3
  LOADK R24 K35 ["BuilderTools"]
  LOADK R25 K57 ["InsertUIFrame"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K25 ["Uri"]
  LOADK R23 K58 ["Setting_Frame"]
  SETTABLEKS R23 R22 K26 ["Text"]
  LOADK R23 K34 [""]
  SETTABLEKS R23 R22 K27 ["Tooltip"]
  LOADB R23 1
  SETTABLEKS R23 R22 K28 ["Enabled"]
  LOADN R23 255
  SETTABLEKS R23 R22 K29 ["Value"]
  DUPTABLE R23 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R24 R3
  LOADK R25 K35 ["BuilderTools"]
  LOADK R26 K59 ["InsertUILabel"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K25 ["Uri"]
  LOADK R24 K60 ["Setting_Label"]
  SETTABLEKS R24 R23 K26 ["Text"]
  LOADK R24 K34 [""]
  SETTABLEKS R24 R23 K27 ["Tooltip"]
  LOADB R24 1
  SETTABLEKS R24 R23 K28 ["Enabled"]
  LOADN R24 255
  SETTABLEKS R24 R23 K29 ["Value"]
  DUPTABLE R24 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R25 R3
  LOADK R26 K35 ["BuilderTools"]
  LOADK R27 K61 ["InsertUIInput"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K25 ["Uri"]
  LOADK R25 K62 ["Setting_Input"]
  SETTABLEKS R25 R24 K26 ["Text"]
  LOADK R25 K34 [""]
  SETTABLEKS R25 R24 K27 ["Tooltip"]
  LOADB R25 1
  SETTABLEKS R25 R24 K28 ["Enabled"]
  LOADN R25 255
  SETTABLEKS R25 R24 K29 ["Value"]
  DUPTABLE R25 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  JUMPIFNOT R9 [+5]
  MOVE R26 R3
  LOADK R27 K35 ["BuilderTools"]
  LOADK R28 K63 ["InsertUIAppearance"]
  CALL R26 2 1
  JUMP [+4]
  MOVE R26 R3
  LOADK R27 K35 ["BuilderTools"]
  LOADK R28 K64 ["InsertUIStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K25 ["Uri"]
  JUMPIFNOT R9 [+2]
  LOADK R26 K65 ["Setting_Appearance"]
  JUMP [+1]
  LOADK R26 K66 ["Setting_Style"]
  SETTABLEKS R26 R25 K26 ["Text"]
  LOADK R26 K34 [""]
  SETTABLEKS R26 R25 K27 ["Tooltip"]
  LOADB R26 1
  SETTABLEKS R26 R25 K28 ["Enabled"]
  LOADN R26 255
  SETTABLEKS R26 R25 K29 ["Value"]
  DUPTABLE R26 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R27 R3
  LOADK R28 K35 ["BuilderTools"]
  LOADK R29 K67 ["InsertUILayout"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K25 ["Uri"]
  LOADK R27 K68 ["Setting_Layout"]
  SETTABLEKS R27 R26 K26 ["Text"]
  LOADK R27 K34 [""]
  SETTABLEKS R27 R26 K27 ["Tooltip"]
  LOADB R27 1
  SETTABLEKS R27 R26 K28 ["Enabled"]
  LOADN R27 255
  SETTABLEKS R27 R26 K29 ["Value"]
  DUPTABLE R27 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R28 R3
  LOADK R29 K35 ["BuilderTools"]
  LOADK R30 K69 ["InsertUIConstraint"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K25 ["Uri"]
  LOADK R28 K70 ["Setting_UIConstraint"]
  SETTABLEKS R28 R27 K26 ["Text"]
  LOADK R28 K34 [""]
  SETTABLEKS R28 R27 K27 ["Tooltip"]
  LOADB R28 1
  SETTABLEKS R28 R27 K28 ["Enabled"]
  LOADN R28 255
  SETTABLEKS R28 R27 K29 ["Value"]
  SETLIST R12 R13 15 [1]
  JUMPIFNOT R10 [+50]
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K35 ["BuilderTools"]
  LOADK R18 K71 ["AnchorMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K72 ["Setting_Anchor"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+4]
  MOVE R14 R12
  GETIMPORT R13 K17 [table.insert]
  CALL R13 2 0
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K35 ["BuilderTools"]
  LOADK R18 K73 ["LockMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K74 ["Setting_Lock"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+4]
  MOVE R14 R12
  GETIMPORT R13 K17 [table.insert]
  CALL R13 2 0
  JUMPIFNOT R11 [+96]
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K31 ["RunTools"]
  LOADK R18 K75 ["PauseMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K76 ["Setting_PauseMode"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+3]
  MOVE R14 R12
  MOVE R13 R7
  CALL R13 2 0
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K31 ["RunTools"]
  LOADK R18 K77 ["ResumeMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K78 ["Setting_ResumeMode"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+3]
  MOVE R14 R12
  MOVE R13 R7
  CALL R13 2 0
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K31 ["RunTools"]
  LOADK R18 K79 ["StepForwardMode"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K80 ["Setting_StepForwardMode"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+3]
  MOVE R14 R12
  MOVE R13 R7
  CALL R13 2 0
  DUPTABLE R15 K30 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
  MOVE R16 R3
  LOADK R17 K31 ["RunTools"]
  LOADK R18 K81 ["AddClients"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Uri"]
  LOADK R16 K82 ["Setting_AddClients"]
  SETTABLEKS R16 R15 K26 ["Text"]
  LOADK R16 K34 [""]
  SETTABLEKS R16 R15 K27 ["Tooltip"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Enabled"]
  LOADN R16 255
  SETTABLEKS R16 R15 K29 ["Value"]
  FASTCALL2 TABLE_INSERT R12 R15 [+3]
  MOVE R14 R12
  MOVE R13 R7
  CALL R13 2 0
  MOVE R13 R6
  MOVE R14 R12
  DUPCLOSURE R15 K83 [PROTO_0]
  CALL R13 2 1
  DUPCLOSURE R14 K84 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R14 R8 K85 ["createSettings"]
  RETURN R8 1
