PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserSubject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UserSubjectKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["RoleSubject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["RoleSubjectKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["GroupSubject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["GroupSubjectKey"]
  RETURN R1 1
  GETIMPORT R1 K7 [error]
  LOADK R2 K8 ["Could not determine subject type"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GrantAssetPermissionsAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OwnKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["UseAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["UseViewKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["EditAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["EditKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["UseViewAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["UseViewKey"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["RevokedAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["NoAccessKey"]
  RETURN R1 1
  JUMPIFNOTEQKNIL R0 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["NoAccessKey"]
  RETURN R1 1
  GETIMPORT R1 K10 [error]
  LOADK R3 K11 ["Unsupported Action: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K13 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AccountPermissionLevel"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AccountPermissionLevel"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["UniversePermissionLevel"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UniversePermissionLevel"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["AssetPermissionLevel"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["AssetPermissionLevel"]
  RETURN R1 1
  GETIMPORT R1 K4 [error]
  LOADK R3 K5 ["Unsupported PermissionLevel: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K7 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AssetPermissionSource"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AssetPermissionSource"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["GroupPermissionSource"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["GroupPermissionSource"]
  RETURN R1 1
  GETIMPORT R1 K3 [error]
  LOADK R3 K4 ["Unsupported PermissionSource: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UserSubject"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["GroupSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["GroupSubject"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["RoleSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["RoleSubject"]
  RETURN R1 1
  GETIMPORT R1 K7 [error]
  LOADK R3 K8 ["Invalid SubjectType: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K10 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UseViewKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UseViewAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["EditKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["EditAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["NoAccessKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["RevokedAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["RevokedKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["RevokedAction"]
  RETURN R1 1
  GETIMPORT R1 K8 [error]
  LOADK R3 K9 ["Invalid Action: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UseViewAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["UseAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["OwnAction"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["EditAction"]
  RETURN R1 1
  RETURN R0 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RoleSubject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["GroupRolesetSubject"]
  RETURN R1 1
  RETURN R0 1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UnknownError"]
  JUMPIFNOTEQ R1 R3 [+32]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["shouldDebugWarnings"]
  CALL R3 0 1
  JUMPIFNOT R3 [+22]
  GETIMPORT R3 K3 [warn]
  GETIMPORT R4 K6 [string.format]
  LOADK R5 K7 ["Ignoring %s for assetId: %s, webKey: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K9 [tostring]
  CALL R6 1 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K9 [tostring]
  CALL R7 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R9 R0
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  CALL R4 4 -1
  CALL R3 -1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["NoneKey"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["HasPermission"]
  JUMPIFNOTEQ R1 R3 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["getInternalAction"]
  MOVE R4 R0
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["NoPermission"]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["NoAccessKey"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K15 ["AssetNotFound"]
  JUMPIFNOTEQ R1 R3 [+19]
  GETIMPORT R3 K17 [error]
  LOADK R5 K18 ["Permissions Error: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K9 [tostring]
  CALL R9 1 1
  MOVE R6 R9
  LOADK R7 K19 [", assetId: "]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K17 [error]
  LOADK R5 K18 ["Permissions Error: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K9 [tostring]
  CALL R9 1 1
  MOVE R6 R9
  LOADK R7 K19 [", assetId: "]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["AssetConfiguration"]
  GETTABLEKS R3 R4 K8 ["Permissions"]
  GETTABLEKS R2 R3 K9 ["PermissionsConstants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K8 ["Permissions"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["webKeys"]
  GETTABLEKS R4 R2 K13 ["webValues"]
  NEWTABLE R5 16 0
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Core"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K14 ["DebugFlags"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R7 R5 K16 ["getInternalSubjectType"]
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R7 R5 K18 ["getInternalAction"]
  DUPCLOSURE R7 K19 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R7 R5 K20 ["getPermissionLevel"]
  DUPCLOSURE R7 K21 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R7 R5 K22 ["getPermissionSource"]
  DUPCLOSURE R7 K23 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R7 R5 K24 ["getWebSubjectType"]
  DUPCLOSURE R7 K25 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R7 R5 K26 ["getWebAction"]
  DUPCLOSURE R7 K27 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R7 R5 K28 ["getAssetPermissionAction"]
  DUPCLOSURE R7 K29 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R7 R5 K30 ["getAssetPermissionSubjectType"]
  DUPCLOSURE R7 K31 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R5 K32 ["resolveActionPermission"]
  RETURN R5 1
