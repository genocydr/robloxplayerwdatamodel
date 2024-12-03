PROTO_0:
  NEWTABLE R1 2 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["__permissionsCache"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["groups"]
  LOADK R7 K2 ["/v1/groups/"]
  MOVE R8 R1
  LOADK R9 K3 ["/roles/permissions"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["__permissionsCache"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+46]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["groupRolePermissionsV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K2 ["await"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K3 ["responseCode"]
  JUMPIFEQKN R3 K4 [200] [+10]
  GETUPVAL R3 0
  LOADK R5 K5 ["ManageCollaboratorsPlugin.FetchRolePermsFailed"]
  LOADN R6 1
  NAMECALL R3 R3 K6 ["reportCounter"]
  CALL R3 3 0
  NEWTABLE R3 0 0
  RETURN R3 1
  GETTABLEKS R4 R0 K0 ["__permissionsCache"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+22]
  NEWTABLE R3 0 0
  GETIMPORT R4 K8 [ipairs]
  GETTABLEKS R7 R2 K9 ["responseBody"]
  GETTABLEKS R5 R7 K10 ["data"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R10 R8 K11 ["role"]
  GETTABLEKS R9 R10 K12 ["id"]
  GETTABLEKS R10 R8 K13 ["permissions"]
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [inext] [-8]
  GETTABLEKS R4 R0 K0 ["__permissionsCache"]
  SETTABLE R3 R4 R1
  GETTABLEKS R3 R0 K0 ["__permissionsCache"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["__permissionsCache"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 8 0
  SETTABLEKS R1 R1 K4 ["__index"]
  DUPCLOSURE R2 K5 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K6 ["new"]
  DUPCLOSURE R2 K7 [PROTO_1]
  SETTABLEKS R2 R1 K8 ["groupRolePermissionsV1GET"]
  DUPCLOSURE R2 K9 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K10 ["getGroupRolePermissions"]
  DUPCLOSURE R2 K11 [PROTO_3]
  SETTABLEKS R2 R1 K12 ["clearCache"]
  RETURN R1 1
