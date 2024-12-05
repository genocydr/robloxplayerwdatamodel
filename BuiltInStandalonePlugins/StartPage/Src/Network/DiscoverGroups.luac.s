PROTO_0:
  DUPTABLE R2 K3 [{"DropdownLabel", "Key", "Query"}]
  GETTABLEKS R3 R1 K4 ["name"]
  SETTABLEKS R3 R2 K0 ["DropdownLabel"]
  GETTABLEKS R3 R1 K5 ["id"]
  SETTABLEKS R3 R2 K1 ["Key"]
  DUPTABLE R3 K7 [{"creatorTargetId"}]
  GETTABLEKS R4 R1 K5 ["id"]
  SETTABLEKS R4 R3 K6 ["creatorTargetId"]
  SETTABLEKS R3 R2 K2 ["Query"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["DropdownLabel"]
  GETTABLEKS R4 R1 K0 ["DropdownLabel"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  DUPTABLE R2 K3 [{"DropdownLabel", "Key", "Query"}]
  GETTABLEKS R3 R1 K4 ["name"]
  SETTABLEKS R3 R2 K0 ["DropdownLabel"]
  GETTABLEKS R3 R1 K5 ["id"]
  SETTABLEKS R3 R2 K1 ["Key"]
  DUPTABLE R3 K7 [{"creatorTargetId"}]
  GETTABLEKS R4 R1 K5 ["id"]
  SETTABLEKS R4 R3 K6 ["creatorTargetId"]
  SETTABLEKS R3 R2 K2 ["Query"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["data"]
  DUPCLOSURE R3 K1 [PROTO_2]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETTABLEKS R2 R1 K0 ["data"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K0 ["data"]
  DUPCLOSURE R4 K1 [PROTO_0]
  CALL R2 2 1
  GETIMPORT R3 K4 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K5 [PROTO_1]
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R2 3
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverGroups experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R1 K1 ["composeUrl"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["GROUPS_SEARCH_URL"]
  GETTABLEKS R3 R4 K3 ["Prefix"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["GROUPS_SEARCH_URL"]
  GETTABLEKS R4 R5 K4 ["Url"]
  CALL R4 0 -1
  CALL R2 -1 1
  GETUPVAL R3 2
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K6 ["parseJson"]
  CALL R4 2 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R4 R4 K7 ["andThen"]
  CALL R4 2 1
  DUPCLOSURE R6 K8 [PROTO_5]
  NAMECALL R4 R4 K9 ["catch"]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["StartPageSortGroups"]
  LOADB R5 0
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K13 ["Packages"]
  GETTABLEKS R4 R5 K14 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K15 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K16 ["Models"]
  GETTABLEKS R6 R7 K17 ["ApiArrayResponseGroupModel"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K18 ["Network"]
  GETTABLEKS R7 R8 K19 ["Urls"]
  CALL R6 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K20 ["Util"]
  GETTABLEKS R9 R10 K21 ["Services"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K22 ["Networking"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K20 ["Util"]
  GETTABLEKS R9 R10 K23 ["createResponseValidator"]
  CALL R8 1 1
  GETTABLEKS R10 R3 K24 ["RobloxAPI"]
  GETTABLEKS R9 R10 K25 ["Url"]
  GETTABLEKS R10 R7 K26 ["new"]
  DUPTABLE R11 K29 [{"isInternal", "loggingLevel"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["isInternal"]
  SETTABLEKS R1 R11 K28 ["loggingLevel"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Packages"]
  GETTABLEKS R12 R13 K30 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K31 ["collectArray"]
  MOVE R13 R8
  GETTABLEKS R14 R5 K32 ["validate"]
  CALL R13 1 1
  DUPCLOSURE R14 K33 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R12
  RETURN R14 1