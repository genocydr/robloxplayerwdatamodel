PROTO_0:
  GETTABLEKS R6 R0 K0 ["id"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K1 ["url"]
  JUMPIFNOT R6 [+2]
  GETTABLEKS R6 R0 K2 ["_type"]
  FASTCALL2K ASSERT R6 K3 [+4]
  LOADK R7 K3 ["invalid animation asset info"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K7 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K8 ["string"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["invalid animation name"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K7 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K10 ["number"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K11 [+4]
  LOADK R7 K11 ["invalid animation index"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  DUPTABLE R6 K19 [{"animationAssetInfo", "refs", "oldRefs", "name", "index", "status", "converted"}]
  SETTABLEKS R0 R6 K12 ["animationAssetInfo"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K13 ["refs"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K14 ["oldRefs"]
  SETTABLEKS R1 R6 K15 ["name"]
  SETTABLEKS R2 R6 K16 ["index"]
  SETTABLEKS R3 R6 K17 ["status"]
  SETTABLEKS R4 R6 K18 ["converted"]
  GETUPVAL R7 0
  FASTCALL2 SETMETATABLE R6 R7 [+3]
  GETIMPORT R5 K21 [setmetatable]
  CALL R5 2 1
  RETURN R5 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["refs"]
  SETTABLEKS R1 R0 K1 ["oldRefs"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["refs"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Done"]
  SETTABLEKS R1 R0 K3 ["status"]
  RETURN R0 0

PROTO_2:
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R9 R0 K0 ["refs"]
  GETTABLE R8 R9 R6
  FASTCALL2K ASSERT R8 K1 [+4]
  LOADK R9 K1 ["ref not found"]
  GETIMPORT R7 K3 [assert]
  CALL R7 2 0
  GETTABLEKS R7 R0 K4 ["oldRefs"]
  GETTABLEKS R9 R0 K0 ["refs"]
  GETTABLE R8 R9 R6
  SETTABLE R8 R7 R6
  GETTABLEKS R7 R0 K0 ["refs"]
  LOADNIL R8
  SETTABLE R8 R7 R6
  FORGLOOP R2 2 [-20]
  GETIMPORT R2 K6 [next]
  GETTABLEKS R3 R0 K0 ["refs"]
  CALL R2 1 1
  JUMPIF R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["Done"]
  SETTABLEKS R2 R0 K8 ["status"]
  RETURN R0 0

PROTO_3:
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R9 R0 K0 ["oldRefs"]
  GETTABLE R8 R9 R6
  FASTCALL2K ASSERT R8 K1 [+4]
  LOADK R9 K1 ["ref not found"]
  GETIMPORT R7 K3 [assert]
  CALL R7 2 0
  GETTABLEKS R7 R0 K4 ["refs"]
  GETTABLEKS R9 R0 K0 ["oldRefs"]
  GETTABLE R8 R9 R6
  SETTABLE R8 R7 R6
  GETTABLEKS R7 R0 K0 ["oldRefs"]
  LOADNIL R8
  SETTABLE R8 R7 R6
  FORGLOOP R2 2 [-20]
  GETIMPORT R2 K6 [next]
  GETTABLEKS R3 R0 K0 ["oldRefs"]
  CALL R2 1 1
  JUMPIF R2 [+3]
  LOADNIL R2
  SETTABLEKS R2 R0 K7 ["status"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R3 R0 K4 ["Src"]
  GETTABLEKS R2 R3 K5 ["Util"]
  GETTABLEKS R1 R2 K6 ["AnimationConversion"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K9 ["constants"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["AnimationStatus"]
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K11 ["__index"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K13 ["new"]
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["complete"]
  DUPCLOSURE R4 K16 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K17 ["removeRefs"]
  DUPCLOSURE R4 K18 [PROTO_3]
  SETTABLEKS R4 R3 K19 ["addRefs"]
  RETURN R3 1