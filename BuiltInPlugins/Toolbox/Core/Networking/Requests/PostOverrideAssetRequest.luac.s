PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R1 R0 K0 ["AssetId"]
  JUMP [+2]
  GETTABLEKS R1 R0 K1 ["responseBody"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+11]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K2 ["SCREENS"]
  GETTABLEKS R5 R6 K3 ["UPLOADING_ASSET"]
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  GETUPVAL R4 5
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  GETUPVAL R4 6
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Lua toolbox: SerializeInstances failed"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["SCREENS"]
  GETTABLEKS R4 R5 K5 ["UPLOAD_ASSET_RESULT"]
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETUPVAL R3 4
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K8 [tostring]
  CALL R4 1 1
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETUPVAL R3 5
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Got false response from PostInsertAsset"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["SCREENS"]
  GETTABLEKS R4 R5 K5 ["UPLOAD_ASSET_RESULT"]
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETUPVAL R3 4
  GETUPVAL R5 5
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  MOVE R4 R0
  JUMP [+2]
  GETTABLEKS R4 R0 K7 ["responseBody"]
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETUPVAL R3 6
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 1
  GETIMPORT R1 K3 [Enum.AssetCreatorType.User]
  GETUPVAL R2 1
  GETIMPORT R4 K6 [Enum.AssetType.Model]
  GETTABLEKS R3 R4 K7 ["Name"]
  JUMPIFNOTEQ R2 R3 [+37]
  DUPTABLE R2 K16 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K4 ["AssetType"]
  LOADK R3 K17 [""]
  SETTABLEKS R3 R2 K8 ["AssetName"]
  LOADK R3 K17 [""]
  SETTABLEKS R3 R2 K9 ["Description"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K10 ["AssetId"]
  SETTABLEKS R0 R2 K11 ["CreatorId"]
  SETTABLEKS R1 R2 K12 ["CreatorType"]
  LOADK R3 K18 ["model/x-rbxm"]
  SETTABLEKS R3 R2 K13 ["ContentType"]
  LOADK R3 K17 [""]
  SETTABLEKS R3 R2 K14 ["Token"]
  DUPTABLE R3 K20 [{"PublishAsPackage"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K19 ["PublishAsPackage"]
  SETTABLEKS R3 R2 K15 ["AdditionalParameters"]
  GETUPVAL R3 3
  GETUPVAL R5 4
  MOVE R6 R2
  NAMECALL R3 R3 K21 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
  CALL R3 3 -1
  RETURN R3 -1
  GETUPVAL R2 3
  GETUPVAL R4 4
  MOVE R5 R1
  MOVE R6 R0
  GETUPVAL R7 1
  GETUPVAL R8 2
  LOADK R9 K17 [""]
  LOADK R10 K17 [""]
  LOADK R11 K17 [""]
  LOADK R12 K18 ["model/x-rbxm"]
  LOADN R13 0
  NAMECALL R2 R2 K22 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
  CALL R2 11 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+24]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["PublishService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 4
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 5
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R1 6
  GETUPVAL R3 3
  GETUPVAL R4 2
  MOVE R5 R0
  NAMECALL R1 R1 K6 ["postOverrideAsset"]
  CALL R1 4 1
  GETUPVAL R3 4
  GETUPVAL R4 5
  NAMECALL R1 R1 K7 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R4 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["SCREENS"]
  GETTABLEKS R5 R6 K1 ["UPLOADING_ASSET"]
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  GETUPVAL R5 8
  GETUPVAL R6 9
  GETTABLEKS R7 R1 K3 ["StudioAssetService"]
  CALL R5 2 1
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U13
  MOVE R8 R3
  NAMECALL R5 R5 K4 ["andThen"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_6:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["AssetConfigConstants"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K9 ["getUserId"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K11 ["NetworkError"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R4 K12 ["SetCurrentScreen"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R4 K13 ["UploadResult"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R4 K14 ["SetAssetId"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K5 ["Core"]
  GETTABLEKS R9 R10 K6 ["Util"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K15 ["SerializeInstances"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Core"]
  GETTABLEKS R13 R14 K16 ["Types"]
  GETTABLEKS R12 R13 K17 ["AssetUploadAPIPublishInfo"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K5 ["Core"]
  GETTABLEKS R15 R16 K6 ["Util"]
  GETTABLEKS R14 R15 K18 ["SharedFlags"]
  GETTABLEKS R13 R14 K19 ["getFFlagToolboxMigrateToOpenCloudUpload"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R17 R0 K5 ["Core"]
  GETTABLEKS R16 R17 K6 ["Util"]
  GETTABLEKS R15 R16 K18 ["SharedFlags"]
  GETTABLEKS R14 R15 K20 ["getFFlagToolboxFixDoublePublish"]
  CALL R13 1 1
  DUPCLOSURE R14 K21 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R3
  RETURN R14 1
