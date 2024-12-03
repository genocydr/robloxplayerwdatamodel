PROTO_0:
  SETUPVAL R0 0
  SETUPVAL R1 1
  JUMPIF R2 [+5]
  GETUPVAL R3 2
  GETUPVAL R5 3
  ADDK R4 R5 K0 [1]
  CALL R3 1 1
  RETURN R3 1
  GETUPVAL R3 0
  GETUPVAL R4 1
  RETURN R3 2

PROTO_1:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["IMAGES"]
  GETTABLEKS R3 R4 K1 ["Path"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["MESHES"]
  GETTABLEKS R4 R5 K1 ["Path"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["AUDIO"]
  GETTABLEKS R5 R6 K1 ["Path"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R5 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["VIDEO"]
  GETTABLEKS R6 R7 K1 ["Path"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["MODELS"]
  GETTABLEKS R7 R8 K1 ["Path"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  NEWTABLE R6 8 0
  SETTABLEKS R1 R6 K6 ["Images/"]
  SETTABLEKS R2 R6 K7 ["Meshes/"]
  SETTABLEKS R3 R6 K8 ["Audio/"]
  SETTABLEKS R4 R6 K9 ["Video/"]
  SETTABLEKS R5 R6 K10 ["Models/"]
  MOVE R7 R1
  JUMPIF R7 [+7]
  MOVE R7 R2
  JUMPIF R7 [+5]
  MOVE R7 R3
  JUMPIF R7 [+3]
  MOVE R7 R4
  JUMPIF R7 [+1]
  MOVE R7 R5
  JUMPIFNOT R7 [+35]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["API"]
  GETTABLEKS R9 R10 K12 ["Universes"]
  GETTABLEKS R8 R9 K13 ["getAliases"]
  GETIMPORT R10 K15 [game]
  GETTABLEKS R9 R10 K16 ["GameId"]
  MOVE R10 R0
  CALL R8 2 1
  NAMECALL R8 R8 K17 ["makeRequest"]
  CALL R8 1 1
  GETUPVAL R10 5
  GETUPVAL R11 6
  GETUPVAL R12 0
  GETUPVAL R13 7
  MOVE R14 R0
  MOVE R15 R6
  CALL R10 5 -1
  NAMECALL R8 R8 K18 ["andThen"]
  CALL R8 -1 1
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  NAMECALL R8 R8 K18 ["andThen"]
  CALL R8 2 -1
  RETURN R8 -1
  RETURN R0 0

PROTO_2:
  NEWTABLE R4 1 0
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K0 ["assets"]
  LOADN R5 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE REF R5
  CAPTURE VAL R6
  MOVE R7 R6
  MOVE R8 R2
  CALL R7 1 -1
  CLOSEUPVALS R4
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["AssetManagerUtilities"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["enableAudioImport"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K9 ["AssetManagerUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["enableVideoImport"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K13 ["GetAssetResponse"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K14 ["Screens"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
