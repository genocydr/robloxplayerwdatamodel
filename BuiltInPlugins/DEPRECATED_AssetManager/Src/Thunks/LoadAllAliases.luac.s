PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R1 K3 ["Aliases"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  GETIMPORT R8 K7 [Enum.AssetType.Image]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K12 ["Images/"]
  CALL R7 2 1
  JUMPIF R7 [+54]
  GETUPVAL R7 0
  GETIMPORT R8 K14 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K15 ["Meshes/"]
  CALL R7 2 1
  JUMPIF R7 [+42]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K17 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K18 ["Audio/"]
  CALL R7 2 1
  JUMPIF R7 [+27]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K20 [Enum.AssetType.Video]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K21 ["Video/"]
  CALL R7 2 1
  JUMPIF R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K23 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+163]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K24 ["Models/"]
  CALL R7 2 1
  JUMPIFNOT R7 [+155]
  NEWTABLE R7 8 0
  GETTABLEKS R9 R6 K25 ["TargetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K27 [tostring]
  CALL R8 1 1
  GETUPVAL R9 0
  SETTABLEKS R9 R7 K28 ["assetType"]
  GETTABLEKS R9 R6 K29 ["Asset"]
  SETTABLEKS R9 R7 K30 ["asset"]
  GETTABLEKS R9 R6 K25 ["TargetId"]
  SETTABLEKS R9 R7 K31 ["id"]
  GETUPVAL R9 0
  GETIMPORT R10 K7 [Enum.AssetType.Image]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K12 ["Images/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K12 ["Images/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+93]
  GETUPVAL R9 0
  GETIMPORT R10 K14 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K15 ["Meshes/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K15 ["Meshes/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+71]
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 0
  GETIMPORT R10 K17 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K18 ["Audio/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K18 ["Audio/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+46]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 0
  GETIMPORT R10 K20 [Enum.AssetType.Video]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K21 ["Video/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K21 ["Video/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+21]
  GETUPVAL R9 0
  GETIMPORT R10 K23 [Enum.AssetType.Model]
  JUMPIFNOTEQ R9 R10 [+17]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K24 ["Models/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K24 ["Models/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  GETUPVAL R9 3
  SETTABLEKS R9 R7 K36 ["layoutOrder"]
  GETUPVAL R9 4
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K37 ["Dictionary"]
  GETTABLEKS R10 R11 K38 ["join"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K39 ["assets"]
  NEWTABLE R12 1 0
  SETTABLE R7 R12 R8
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["assets"]
  GETUPVAL R10 3
  ADDK R9 R10 K40 [1]
  SETUPVAL R9 3
  FORGLOOP R2 2 [-222]
  GETTABLEKS R2 R1 K41 ["NextPageToken"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 6
  GETTABLEKS R3 R1 K41 ["NextPageToken"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R2 4
  GETUPVAL R3 3
  RETURN R2 2

PROTO_1:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.AssetType.Image]
  JUMPIFEQ R1 R2 [+27]
  GETUPVAL R1 0
  GETIMPORT R2 K5 [Enum.AssetType.MeshPart]
  JUMPIFEQ R1 R2 [+22]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K7 [Enum.AssetType.Audio]
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K9 [Enum.AssetType.Video]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K11 [Enum.AssetType.Model]
  JUMPIFNOTEQ R1 R2 [+30]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["APIS"]
  GETTABLEKS R2 R3 K13 ["ContentAliasesApi"]
  GETTABLEKS R1 R2 K14 ["aliases"]
  GETIMPORT R3 K16 [game]
  GETTABLEKS R2 R3 K17 ["GameId"]
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R1 3 1
  NAMECALL R1 R1 K18 ["makeRequest"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NAMECALL R1 R1 K19 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R1 K3 ["Aliases"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  GETIMPORT R8 K7 [Enum.AssetType.Image]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K12 ["Images/"]
  CALL R7 2 1
  JUMPIF R7 [+54]
  GETUPVAL R7 0
  GETIMPORT R8 K14 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K15 ["Meshes/"]
  CALL R7 2 1
  JUMPIF R7 [+42]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K17 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K18 ["Audio/"]
  CALL R7 2 1
  JUMPIF R7 [+27]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K20 [Enum.AssetType.Video]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K21 ["Video/"]
  CALL R7 2 1
  JUMPIF R7 [+12]
  GETUPVAL R7 0
  GETIMPORT R8 K23 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+163]
  GETIMPORT R7 K10 [string.find]
  GETTABLEKS R8 R6 K11 ["Name"]
  LOADK R9 K24 ["Models/"]
  CALL R7 2 1
  JUMPIFNOT R7 [+155]
  NEWTABLE R7 8 0
  GETTABLEKS R9 R6 K25 ["TargetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K27 [tostring]
  CALL R8 1 1
  GETUPVAL R9 0
  SETTABLEKS R9 R7 K28 ["assetType"]
  GETTABLEKS R9 R6 K29 ["Asset"]
  SETTABLEKS R9 R7 K30 ["asset"]
  GETTABLEKS R9 R6 K25 ["TargetId"]
  SETTABLEKS R9 R7 K31 ["id"]
  GETUPVAL R9 0
  GETIMPORT R10 K7 [Enum.AssetType.Image]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K12 ["Images/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K12 ["Images/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+93]
  GETUPVAL R9 0
  GETIMPORT R10 K14 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K15 ["Meshes/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K15 ["Meshes/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+71]
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 0
  GETIMPORT R10 K17 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K18 ["Audio/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K18 ["Audio/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+46]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 0
  GETIMPORT R10 K20 [Enum.AssetType.Video]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K21 ["Video/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K21 ["Video/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  JUMP [+21]
  GETUPVAL R9 0
  GETIMPORT R10 K23 [Enum.AssetType.Model]
  JUMPIFNOTEQ R9 R10 [+17]
  GETIMPORT R9 K10 [string.find]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K24 ["Models/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETIMPORT R9 K33 [string.gsub]
  GETTABLEKS R10 R6 K11 ["Name"]
  LOADK R11 K24 ["Models/"]
  LOADK R12 K34 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K35 ["name"]
  GETUPVAL R9 3
  SETTABLEKS R9 R7 K36 ["layoutOrder"]
  GETUPVAL R9 4
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K37 ["Dictionary"]
  GETTABLEKS R10 R11 K38 ["join"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K39 ["assets"]
  NEWTABLE R12 1 0
  SETTABLE R7 R12 R8
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["assets"]
  GETUPVAL R10 3
  ADDK R9 R10 K40 [1]
  SETUPVAL R9 3
  FORGLOOP R2 2 [-222]
  GETTABLEKS R2 R1 K41 ["FinalPage"]
  JUMPIF R2 [+5]
  GETUPVAL R2 6
  GETUPVAL R4 7
  ADDK R3 R4 K40 [1]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R2 4
  GETUPVAL R3 3
  RETURN R2 2

PROTO_3:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.AssetType.Image]
  JUMPIFEQ R1 R2 [+27]
  GETUPVAL R1 0
  GETIMPORT R2 K5 [Enum.AssetType.MeshPart]
  JUMPIFEQ R1 R2 [+22]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K7 [Enum.AssetType.Audio]
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K9 [Enum.AssetType.Video]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K11 [Enum.AssetType.Model]
  JUMPIFNOTEQ R1 R2 [+30]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["API"]
  GETTABLEKS R2 R3 K13 ["Universes"]
  GETTABLEKS R1 R2 K14 ["getAliases"]
  GETIMPORT R3 K16 [game]
  GETTABLEKS R2 R3 K17 ["GameId"]
  MOVE R3 R0
  CALL R1 2 1
  NAMECALL R1 R1 K18 ["makeRequest"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  NAMECALL R1 R1 K19 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_4:
  NEWTABLE R3 1 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["assets"]
  LOADN R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  GETUPVAL R7 4
  JUMPIFNOT R7 [+4]
  MOVE R7 R5
  CALL R7 0 -1
  CLOSEUPVALS R4
  RETURN R7 -1
  MOVE R7 R6
  LOADN R8 1
  CALL R7 1 -1
  CLOSEUPVALS R4
  RETURN R7 -1

PROTO_5:
  GETUPVAL R3 0
  GETUPVAL R5 1
  LOADB R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R5 2
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 -1
  NAMECALL R3 R3 K0 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Failed to load aliases"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R4 0
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["resolve"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R3 3 -1
  CALL R2 -1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K3 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  RETURN R2 1

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
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Promise"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["AssetManagerUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["enableAudioImport"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K11 ["AssetManagerUtilities"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["enableVideoImport"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["SetAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetIsFetchingAssets"]
  CALL R6 1 1
  GETIMPORT R7 K18 [game]
  LOADK R9 K19 ["StudioAssetManagerAssetFetchNumber"]
  NAMECALL R7 R7 K20 ["GetFastInt"]
  CALL R7 2 1
  GETIMPORT R8 K18 [game]
  LOADK R10 K21 ["AssetManagerMigrateAliasesEndpoint2"]
  NAMECALL R8 R8 K22 ["GetFastFlag"]
  CALL R8 2 1
  DUPCLOSURE R9 K23 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R10 K24 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  RETURN R10 1