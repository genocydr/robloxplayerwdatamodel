PROTO_0:
  LOADB R1 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+29]
  LOADB R1 0
  GETTABLEKS R3 R0 K3 ["visualizationModeCategoryName"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["string"] [+20]
  LOADB R1 0
  GETTABLEKS R3 R0 K5 ["visualizationModeName"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["string"] [+11]
  GETTABLEKS R3 R0 K6 ["lastEditUnixTimeStamp"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K7 ["number"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  LOADB R2 0
  GETTABLEKS R3 R0 K0 ["visualizationModeCategoryName"]
  GETTABLEKS R4 R1 K0 ["visualizationModeCategoryName"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R3 R0 K1 ["visualizationModeName"]
  GETTABLEKS R4 R1 K1 ["visualizationModeName"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_lastReportedClientCombinerStateMap"]
  GETTABLEKS R2 R0 K1 ["hostDataModelType"]
  SETTABLE R0 R1 R2
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["_queueUpdateState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R2 8 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["_maid"]
  FASTCALL2K ASSERT R0 K4 [+5]
  MOVE R3 R0
  LOADK R4 K4 ["No plugin"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 1
  SETTABLEKS R2 R1 K7 ["_plugin"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K8 ["_recentModeRecordList"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K9 ["_lastReportedClientCombinerStateMap"]
  LOADNIL R2
  SETTABLEKS R2 R1 K10 ["_state"]
  LOADNIL R2
  SETTABLEKS R2 R1 K11 ["_session"]
  GETTABLEKS R2 R1 K3 ["_maid"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["new"]
  CALL R4 0 -1
  NAMECALL R2 R2 K12 ["add"]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K13 ["changed"]
  NAMECALL R2 R1 K14 ["_connectToFocusedDataModelSession"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K3 ["_maid"]
  GETTABLEKS R4 R1 K7 ["_plugin"]
  LOADK R6 K15 ["reportClientCombinerState"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  NAMECALL R4 R4 K16 ["OnInvoke"]
  CALL R4 3 -1
  NAMECALL R2 R2 K17 ["giveTask"]
  CALL R2 -1 0
  NAMECALL R2 R1 K18 ["_loadRecentRecords"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K7 ["_plugin"]
  LOADK R4 K19 ["queryClientCombinerState"]
  NAMECALL R2 R2 K20 ["Invoke"]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_maid"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_stateUpdateQueue"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["_updateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_maid"]
  GETTABLEKS R1 R2 K1 ["_stateUpdateQueue"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETIMPORT R2 K4 [task.defer]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["_stateUpdateQueue"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  NEWTABLE R1 0 0
  GETIMPORT R2 K3 [Enum.StudioDataModelType.None]
  GETTABLEKS R3 R0 K4 ["_session"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R0 K4 ["_session"]
  GETTABLEKS R2 R3 K5 ["CurrentDataModelType"]
  GETTABLEKS R3 R0 K6 ["_lastReportedClientCombinerStateMap"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K7 ["visualizationModeServiceState"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R14 R12 K8 ["name"]
  GETTABLE R13 R1 R14
  JUMPIFNOTEQKNIL R13 [+12]
  DUPTABLE R14 K11 [{"lastState", "visualizationModes"}]
  SETTABLEKS R12 R14 K9 ["lastState"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K10 ["visualizationModes"]
  MOVE R13 R14
  GETTABLEKS R14 R12 K8 ["name"]
  SETTABLE R13 R1 R14
  JUMPIFNOTEQ R6 R2 [+3]
  SETTABLEKS R12 R13 K9 ["lastState"]
  GETTABLEKS R14 R12 K12 ["visualizationModeList"]
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  GETTABLEKS R19 R13 K10 ["visualizationModes"]
  GETTABLEKS R20 R18 K8 ["name"]
  SETTABLE R18 R19 R20
  FORGLOOP R14 2 [-6]
  FORGLOOP R8 2 [-33]
  FORGLOOP R3 2 [-40]
  NEWTABLE R3 0 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R11 R8 K9 ["lastState"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-9]
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETIMPORT R10 K18 [string.lower]
  GETTABLEKS R11 R9 K19 ["title"]
  CALL R10 1 1
  SETTABLE R10 R4 R9
  FORGLOOP R5 2 [-7]
  GETIMPORT R5 K21 [table.sort]
  MOVE R6 R3
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CALL R5 2 0
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K22 ["_recentModeRecordList"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R10 K23 ["visualizationModeCategoryName"]
  GETTABLE R11 R1 R12
  JUMPIFEQKNIL R11 [+23]
  GETTABLEKS R13 R11 K10 ["visualizationModes"]
  GETTABLEKS R14 R10 K24 ["visualizationModeName"]
  GETTABLE R12 R13 R14
  JUMPIFEQKNIL R12 [+16]
  GETIMPORT R13 K26 [table.clone]
  MOVE R14 R12
  CALL R13 1 1
  GETTABLEKS R14 R10 K23 ["visualizationModeCategoryName"]
  SETTABLEKS R14 R13 K23 ["visualizationModeCategoryName"]
  FASTCALL2 TABLE_INSERT R5 R13 [+5]
  MOVE R15 R5
  MOVE R16 R13
  GETIMPORT R14 K15 [table.insert]
  CALL R14 2 0
  FORGLOOP R6 2 [-28]
  GETIMPORT R8 K28 [table.freeze]
  DUPTABLE R9 K31 [{"categories", "recentModes"}]
  SETTABLEKS R3 R9 K29 ["categories"]
  GETIMPORT R10 K28 [table.freeze]
  MOVE R11 R5
  CALL R10 1 1
  SETTABLEKS R10 R9 K30 ["recentModes"]
  CALL R8 1 -1
  NAMECALL R6 R0 K32 ["_setState"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_state"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K0 ["_state"]
  GETTABLEKS R2 R0 K1 ["changed"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_state"]
  RETURN R1 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Dictionary"]
  GETTABLEKS R1 R2 K2 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K4 [{"enabled"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["enabled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_plugin"]
  LOADK R5 K1 ["updateVisualizationModeCategoryIsEnabled"]
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K2 ["Invoke"]
  CALL R3 4 0
  GETTABLEKS R3 R0 K3 ["_lastReportedClientCombinerStateMap"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R0 K3 ["_lastReportedClientCombinerStateMap"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["Dictionary"]
  GETTABLEKS R9 R10 K5 ["join"]
  MOVE R10 R7
  DUPTABLE R11 K7 [{"visualizationModeServiceState"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["map"]
  GETTABLEKS R13 R7 K6 ["visualizationModeServiceState"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CALL R12 2 1
  SETTABLEKS R12 R11 K6 ["visualizationModeServiceState"]
  CALL R9 2 1
  SETTABLE R9 R8 R6
  FORGLOOP R3 2 [-24]
  NAMECALL R3 R0 K9 ["_queueUpdateState"]
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Dictionary"]
  GETTABLEKS R1 R2 K2 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K4 [{"enabled"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["enabled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["map"]
  GETTABLEKS R2 R0 K2 ["visualizationModeList"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Dictionary"]
  GETTABLEKS R2 R3 K4 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"visualizationModeList"}]
  SETTABLEKS R1 R4 K2 ["visualizationModeList"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETTABLEKS R4 R0 K0 ["_plugin"]
  LOADK R6 K1 ["updateVisualizationModeIsEnabled"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R4 R4 K2 ["Invoke"]
  CALL R4 5 0
  GETTABLEKS R4 R0 K3 ["_lastReportedClientCombinerStateMap"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["Dictionary"]
  GETTABLEKS R9 R10 K5 ["join"]
  MOVE R10 R8
  DUPTABLE R11 K7 [{"visualizationModeServiceState"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["map"]
  GETTABLEKS R13 R8 K6 ["visualizationModeServiceState"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CALL R12 2 1
  SETTABLEKS R12 R11 K6 ["visualizationModeServiceState"]
  CALL R9 2 1
  GETTABLEKS R10 R0 K3 ["_lastReportedClientCombinerStateMap"]
  SETTABLE R9 R10 R7
  FORGLOOP R4 2 [-26]
  NAMECALL R4 R0 K9 ["_queueUpdateState"]
  CALL R4 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R3 R0 K0 ["lastEditUnixTimeStamp"]
  GETTABLEKS R4 R1 K0 ["lastEditUnixTimeStamp"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_plugin"]
  LOADK R3 K1 ["RecentVisualizationModes"]
  NAMECALL R1 R1 K2 ["GetSetting"]
  CALL R1 2 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K4 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K5 ["table"] [+2]
  RETURN R0 0
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADB R8 0
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K4 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K5 ["table"] [+29]
  LOADB R8 0
  GETTABLEKS R10 R7 K6 ["visualizationModeCategoryName"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K4 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K7 ["string"] [+20]
  LOADB R8 0
  GETTABLEKS R10 R7 K8 ["visualizationModeName"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K4 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K7 ["string"] [+11]
  GETTABLEKS R10 R7 K9 ["lastEditUnixTimeStamp"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K4 [typeof]
  CALL R9 1 1
  JUMPIFEQKS R9 K10 ["number"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K12 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-45]
  GETIMPORT R3 K14 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K15 [PROTO_15]
  CALL R3 2 0
  LENGTH R3 R2
  LOADN R4 3
  JUMPIFNOTLT R4 R3 [+6]
  GETIMPORT R3 K17 [table.remove]
  MOVE R4 R2
  CALL R3 1 0
  JUMPBACK [-9]
  SETTABLEKS R2 R0 K18 ["_recentModeRecordList"]
  NAMECALL R3 R0 K19 ["_queueUpdateState"]
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_queueUpdateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["_plugin"]
  GETTABLEKS R1 R2 K1 ["MultipleDocumentInterfaceInstance"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["FocusedDataModelSession"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  SETTABLEKS R2 R0 K3 ["_session"]
  GETTABLEKS R3 R0 K4 ["_maid"]
  GETTABLEKS R5 R2 K5 ["CurrentDataModelTypeChanged"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K6 ["Connect"]
  CALL R5 2 -1
  NAMECALL R3 R3 K7 ["giveTask"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R3 K3 [{"visualizationModeCategoryName", "visualizationModeName", "lastEditUnixTimeStamp"}]
  SETTABLEKS R1 R3 K0 ["visualizationModeCategoryName"]
  SETTABLEKS R2 R3 K1 ["visualizationModeName"]
  GETIMPORT R5 K6 [DateTime.now]
  CALL R5 0 1
  GETTABLEKS R4 R5 K7 ["UnixTimestamp"]
  SETTABLEKS R4 R3 K2 ["lastEditUnixTimeStamp"]
  LOADNIL R4
  LOADNIL R5
  GETTABLEKS R6 R0 K8 ["_recentModeRecordList"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  LOADB R11 0
  GETTABLEKS R12 R10 K0 ["visualizationModeCategoryName"]
  GETTABLEKS R13 R3 K0 ["visualizationModeCategoryName"]
  JUMPIFNOTEQ R12 R13 [+9]
  GETTABLEKS R12 R10 K1 ["visualizationModeName"]
  GETTABLEKS R13 R3 K1 ["visualizationModeName"]
  JUMPIFEQ R12 R13 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  JUMPIFNOT R11 [+2]
  MOVE R4 R9
  JUMP [+14]
  JUMPIFNOTEQKNIL R5 [+3]
  MOVE R5 R9
  JUMP [+10]
  GETTABLEKS R11 R10 K2 ["lastEditUnixTimeStamp"]
  GETTABLEKS R14 R0 K8 ["_recentModeRecordList"]
  GETTABLE R13 R14 R5
  GETTABLEKS R12 R13 K2 ["lastEditUnixTimeStamp"]
  JUMPIFNOTLT R11 R12 [+2]
  MOVE R5 R9
  FORGLOOP R6 2 [-33]
  LOADNIL R6
  JUMPIFEQKNIL R4 [+3]
  MOVE R6 R4
  JUMP [+14]
  GETTABLEKS R8 R0 K8 ["_recentModeRecordList"]
  LENGTH R7 R8
  LOADN R8 3
  JUMPIFNOTLE R8 R7 [+5]
  JUMPIFEQKNIL R5 [+3]
  MOVE R6 R5
  JUMP [+4]
  GETTABLEKS R8 R0 K8 ["_recentModeRecordList"]
  LENGTH R7 R8
  ADDK R6 R7 K9 [1]
  GETIMPORT R7 K12 [table.clone]
  GETTABLEKS R8 R0 K8 ["_recentModeRecordList"]
  CALL R7 1 1
  SETTABLE R3 R7 R6
  GETIMPORT R8 K14 [table.freeze]
  MOVE R9 R7
  CALL R8 1 1
  SETTABLEKS R8 R0 K8 ["_recentModeRecordList"]
  GETTABLEKS R8 R0 K15 ["_plugin"]
  LOADK R10 K16 ["RecentVisualizationModes"]
  MOVE R11 R7
  NAMECALL R8 R8 K17 ["SetSetting"]
  CALL R8 3 0
  NAMECALL R8 R0 K18 ["_queueUpdateState"]
  CALL R8 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_maid"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Maid"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["Signal"]
  CALL R5 1 1
  NEWTABLE R6 16 0
  SETTABLEKS R6 R6 K14 ["__index"]
  DUPCLOSURE R7 K15 [PROTO_0]
  DUPCLOSURE R8 K16 [PROTO_1]
  DUPCLOSURE R9 K17 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R9 R6 K18 ["new"]
  DUPCLOSURE R9 K19 [PROTO_5]
  SETTABLEKS R9 R6 K20 ["_queueUpdateState"]
  DUPCLOSURE R9 K21 [PROTO_7]
  SETTABLEKS R9 R6 K22 ["_updateState"]
  DUPCLOSURE R9 K23 [PROTO_8]
  SETTABLEKS R9 R6 K24 ["_setState"]
  DUPCLOSURE R9 K25 [PROTO_9]
  SETTABLEKS R9 R6 K26 ["getState"]
  DUPCLOSURE R9 K27 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R9 R6 K28 ["updateVisualizationModeCategoryIsEnabled"]
  DUPCLOSURE R9 K29 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R9 R6 K30 ["updateVisualizationModeIsEnabled"]
  DUPCLOSURE R9 K31 [PROTO_16]
  SETTABLEKS R9 R6 K32 ["_loadRecentRecords"]
  DUPCLOSURE R9 K33 [PROTO_18]
  SETTABLEKS R9 R6 K34 ["_connectToFocusedDataModelSession"]
  DUPCLOSURE R9 K35 [PROTO_19]
  SETTABLEKS R9 R6 K36 ["recordRecentVisualizationMode"]
  DUPCLOSURE R9 K37 [PROTO_20]
  SETTABLEKS R9 R6 K38 ["destroy"]
  RETURN R6 1
