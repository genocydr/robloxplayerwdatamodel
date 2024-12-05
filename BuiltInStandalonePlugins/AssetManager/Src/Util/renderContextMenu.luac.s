PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["InsertAction"]
  GETTABLEKS R2 R3 K2 ["ACTION_RIGHTCLICK"]
  NAMECALL R0 R0 K3 ["setAnalyticsInsertAction"]
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R1 1
  GETUPVAL R2 4
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["InsertAction"]
  GETTABLEKS R2 R3 K2 ["ACTION_RIGHTCLICK"]
  NAMECALL R0 R0 K3 ["setAnalyticsInsertAction"]
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R1 1
  GETUPVAL R2 4
  LOADB R3 1
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["copyAssetId"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openItemInBrowser"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  GETUPVAL R3 1
  NAMECALL R3 R3 K0 ["getItems"]
  CALL R3 1 1
  GETTABLE R2 R3 R0
  GETTABLEKS R1 R2 K1 ["AssetType"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["openAssetConfig"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["keys"]
  NAMECALL R5 R0 K1 ["getSelection"]
  CALL R5 1 -1
  CALL R4 -1 1
  NEWTABLE R5 0 3
  NEWTABLE R6 1 2
  LENGTH R10 R4
  JUMPIFNOTEQKN R10 K2 [1] [+7]
  LOADK R11 K3 ["ContextMenu"]
  LOADK R12 K4 ["InsertAsset"]
  NAMECALL R9 R2 K5 ["getText"]
  CALL R9 3 1
  JUMP [+5]
  LOADK R11 K3 ["ContextMenu"]
  LOADK R12 K6 ["InsertSelection"]
  NAMECALL R9 R2 K5 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R6 K7 ["Text"]
  DUPTABLE R7 K9 [{"Text", "OnItemClicked"}]
  LOADK R10 K3 ["ContextMenu"]
  LOADK R11 K10 ["InsertAtCamera"]
  NAMECALL R8 R2 K5 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K8 ["OnItemClicked"]
  DUPTABLE R8 K9 [{"Text", "OnItemClicked"}]
  LOADK R11 K3 ["ContextMenu"]
  LOADK R12 K11 ["InsertAtAssetPosition"]
  NAMECALL R9 R2 K5 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K8 ["OnItemClicked"]
  SETLIST R6 R7 2 [1]
  DUPTABLE R7 K9 [{"Text", "OnItemClicked"}]
  LOADK R10 K3 ["ContextMenu"]
  LOADK R11 K12 ["CopyAssetId"]
  NAMECALL R8 R2 K5 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K8 ["OnItemClicked"]
  DUPTABLE R8 K9 [{"Text", "OnItemClicked"}]
  LOADK R11 K3 ["ContextMenu"]
  LOADK R12 K13 ["ViewInBrowser"]
  NAMECALL R9 R2 K5 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  NEWCLOSURE R9 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K8 ["OnItemClicked"]
  SETLIST R5 R6 3 [1]
  LENGTH R6 R4
  JUMPIFNOTEQKN R6 K2 [1] [+21]
  DUPTABLE R8 K9 [{"Text", "OnItemClicked"}]
  LOADK R11 K3 ["ContextMenu"]
  LOADK R12 K14 ["EditAsset"]
  NAMECALL R9 R2 K5 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R9 R8 K8 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R5 R8 [+4]
  MOVE R7 R5
  GETIMPORT R6 K17 [table.insert]
  CALL R6 2 0
  GETUPVAL R6 5
  NAMECALL R7 R0 K18 ["getPlugin"]
  CALL R7 1 1
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["toggleVisibleProperty"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getEnumAsList"]
  GETUPVAL R6 0
  GETTABLEKS R4 R6 K1 ["AssetInfoField"]
  CALL R3 1 3
  FORGPREP R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["AssetInfoField"]
  GETTABLEKS R8 R9 K2 ["DisplayName"]
  JUMPIFEQ R7 R8 [+52]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["AssetInfoField"]
  GETTABLEKS R8 R9 K3 ["ModerationStatus"]
  JUMPIFEQ R7 R8 [+45]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["AssetInfoField"]
  GETTABLEKS R8 R9 K4 ["VersionNumber"]
  JUMPIFEQ R7 R8 [+38]
  DUPTABLE R10 K8 [{"Text", "OnItemClicked", "Icon"}]
  LOADK R13 K9 ["AssetProperty"]
  MOVE R14 R7
  NAMECALL R11 R1 K10 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K5 ["Text"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K6 ["OnItemClicked"]
  MOVE R14 R7
  NAMECALL R12 R0 K11 ["getVisiblePropertyIndex"]
  CALL R12 2 1
  JUMPIFNOT R12 [+10]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["getImageHelper"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["AvailableImages"]
  GETTABLEKS R12 R13 K14 ["Checkmark"]
  CALL R11 1 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K7 ["Icon"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K17 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-59]
  GETUPVAL R3 2
  NAMECALL R4 R0 K18 ["getPlugin"]
  CALL R4 1 1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["toggleVisibleGroup"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["enableScopeOptions"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["refreshGroups"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  NEWTABLE R3 0 3
  DUPTABLE R4 K2 [{"Text", "OnItemClicked"}]
  LOADK R7 K3 ["Scopes"]
  LOADK R8 K4 ["Hide"]
  NAMECALL R5 R1 K5 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["Text"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K1 ["OnItemClicked"]
  DUPTABLE R5 K2 [{"Text", "OnItemClicked"}]
  LOADK R8 K3 ["Scopes"]
  LOADK R9 K6 ["Customize"]
  NAMECALL R6 R1 K5 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K0 ["Text"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K1 ["OnItemClicked"]
  DUPTABLE R6 K2 [{"Text", "OnItemClicked"}]
  LOADK R9 K7 ["Refresh Groups"]
  NAMECALL R7 R1 K5 ["getText"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K0 ["Text"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K1 ["OnItemClicked"]
  SETLIST R3 R4 3 [1]
  GETUPVAL R4 0
  NAMECALL R5 R2 K8 ["getPlugin"]
  CALL R5 1 1
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["enableScopeOptions"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["refreshGroups"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  NEWTABLE R2 0 2
  DUPTABLE R3 K2 [{"Text", "OnItemClicked"}]
  LOADK R6 K3 ["Scopes"]
  LOADK R7 K4 ["Customize"]
  NAMECALL R4 R0 K5 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K0 ["Text"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K1 ["OnItemClicked"]
  DUPTABLE R4 K2 [{"Text", "OnItemClicked"}]
  LOADK R7 K3 ["Scopes"]
  LOADK R8 K6 ["Refresh"]
  NAMECALL R5 R0 K5 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["Text"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K1 ["OnItemClicked"]
  SETLIST R2 R3 2 [1]
  GETUPVAL R3 0
  NAMECALL R4 R1 K7 ["getPlugin"]
  CALL R4 1 1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["showContextMenu"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["MenuContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["insertItems"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K16 ["Images"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K17 ["ContextMenuUtils"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K18 ["Analytics"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K19 ["Flags"]
  GETTABLEKS R12 R13 K20 ["getFFlagDebugAmrAnalytics"]
  CALL R11 1 1
  NEWTABLE R12 0 0
  GETTABLEKS R13 R6 K21 ["Asset"]
  DUPCLOSURE R14 K22 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K23 ["Column"]
  DUPCLOSURE R14 K24 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K25 ["Scope"]
  DUPCLOSURE R14 K26 [PROTO_11]
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K27 ["Sidebar"]
  DUPCLOSURE R14 K28 [PROTO_14]
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  RETURN R12 1