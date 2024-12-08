PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetUserLayerVariables"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+22]
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 2
  JUMPIFNOT R0 [+5]
  JUMPIFNOT R1 [+4]
  GETUPVAL R3 3
  GETTABLE R2 R1 R3
  JUMPIFNOTEQKNIL R2 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 1
  GETUPVAL R4 2
  NAMECALL R2 R2 K3 ["LogUserLayerExposure"]
  CALL R2 2 0
  GETUPVAL R3 3
  GETTABLE R2 R1 R3
  RETURN R2 1
  LOADB R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["DisableCameraToastShown"]
  NAMECALL R0 R0 K1 ["GetItem"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["DisableCameraToastShown"]
  LOADK R3 K1 ["true"]
  NAMECALL R0 R0 K2 ["SetItem"]
  CALL R0 3 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["Flush"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__TESTEZ_RUNNING_TEST__"]
  JUMPIFNOT R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K4 [pcall]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["GetClientFeaturesAsync"]
  GETUPVAL R2 1
  CALL R0 2 2
  JUMPIF R0 [+6]
  GETIMPORT R2 K7 [warn]
  LOADK R3 K8 ["Unable to get Client Features from AvatarChatService"]
  CALL R2 1 0
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 1
  MOVE R4 R1
  GETIMPORT R5 K12 [Enum.AvatarChatServiceFeature.PlaceVideo]
  NAMECALL R2 R2 K13 ["IsEnabled"]
  CALL R2 3 1
  GETUPVAL R3 1
  MOVE R5 R1
  GETIMPORT R6 K15 [Enum.AvatarChatServiceFeature.UserVideo]
  NAMECALL R3 R3 K13 ["IsEnabled"]
  CALL R3 3 1
  GETUPVAL R4 1
  MOVE R6 R1
  GETIMPORT R7 K17 [Enum.AvatarChatServiceFeature.UserVideoEligible]
  NAMECALL R4 R4 K13 ["IsEnabled"]
  CALL R4 3 1
  GETUPVAL R5 2
  JUMPIFNOT R5 [+83]
  JUMPIFNOT R2 [+82]
  JUMPIFNOT R3 [+81]
  JUMPIFNOT R4 [+80]
  GETUPVAL R5 1
  GETIMPORT R7 K20 [Enum.DeviceFeatureType.DeviceCapture]
  NAMECALL R5 R5 K21 ["deviceMeetsRequirementsForFeature"]
  CALL R5 2 1
  JUMPIF R5 [+73]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+70]
  GETUPVAL R6 4
  JUMPIFNOT R6 [+30]
  GETUPVAL R6 5
  JUMPIFNOT R6 [+28]
  GETIMPORT R6 K4 [pcall]
  DUPCLOSURE R7 K22 [PROTO_2]
  CAPTURE UPVAL U6
  CALL R6 1 2
  NOT R8 R6
  JUMPIF R8 [+7]
  JUMPIFEQKS R7 K23 ["true"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  NOT R8 R9
  JUMPIF R8 [+1]
  GETUPVAL R8 7
  JUMPIFNOT R8 [+49]
  GETUPVAL R9 8
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K24 ["CameraUnavailable"]
  NAMECALL R9 R9 K25 ["showPrompt"]
  CALL R9 2 0
  GETIMPORT R9 K4 [pcall]
  DUPCLOSURE R10 K26 [PROTO_3]
  CAPTURE UPVAL U6
  CALL R9 1 0
  JUMP [+36]
  GETUPVAL R6 10
  JUMPIFNOT R6 [+27]
  GETUPVAL R8 11
  LOADK R10 K27 ["DisableCameraToastShown"]
  NAMECALL R8 R8 K28 ["GetItem"]
  CALL R8 2 1
  JUMPIFEQKS R8 K23 ["true"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  NOT R6 R7
  JUMPIF R6 [+1]
  GETUPVAL R6 7
  JUMPIFNOT R6 [+21]
  GETUPVAL R7 8
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K24 ["CameraUnavailable"]
  NAMECALL R7 R7 K25 ["showPrompt"]
  CALL R7 2 0
  GETUPVAL R7 11
  LOADK R9 K27 ["DisableCameraToastShown"]
  LOADK R10 K23 ["true"]
  NAMECALL R7 R7 K29 ["SetItem"]
  CALL R7 3 0
  JUMP [+7]
  GETUPVAL R6 8
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K24 ["CameraUnavailable"]
  NAMECALL R6 R6 K25 ["showPrompt"]
  CALL R6 2 0
  LOADB R6 0
  RETURN R6 1
  GETUPVAL R5 12
  CALL R5 0 1
  JUMPIFNOT R5 [+29]
  LOADNIL R5
  GETUPVAL R6 13
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K30 ["GetDevices"]
  CALL R6 0 1
  MOVE R5 R6
  JUMP [+5]
  GETUPVAL R6 15
  NAMECALL R6 R6 K31 ["GetCameraDevices"]
  CALL R6 1 1
  MOVE R5 R6
  GETUPVAL R8 16
  GETTABLEKS R7 R8 K32 ["isEmpty"]
  MOVE R8 R5
  CALL R7 1 1
  NOT R6 R7
  MOVE R7 R2
  JUMPIFNOT R7 [+5]
  MOVE R7 R4
  JUMPIFNOT R7 [+3]
  MOVE R7 R3
  JUMPIFNOT R7 [+1]
  MOVE R7 R6
  RETURN R7 1
  MOVE R5 R2
  JUMPIFNOT R5 [+3]
  MOVE R5 R4
  JUMPIFNOT R5 [+1]
  MOVE R5 R3
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarChatService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AppStorageService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["VideoCaptureService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R3 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Cryo"]
  CALL R5 1 1
  LOADK R8 K12 ["RobloxGui"]
  NAMECALL R6 R2 K13 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K14 ["IXPService"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K15 ["MemStorageService"]
  NAMECALL R8 R8 K3 ["GetService"]
  CALL R8 2 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R3 K16 ["Workspace"]
  GETTABLEKS R12 R13 K10 ["Packages"]
  GETTABLEKS R11 R12 K17 ["SharedFlags"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K18 ["GetFFlagAvatarChatServiceEnabled"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R6 K19 ["Modules"]
  GETTABLEKS R12 R13 K20 ["Flags"]
  GETTABLEKS R11 R12 K21 ["getFFlagEnableAlwaysAvailableCamera"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R6 K19 ["Modules"]
  GETTABLEKS R13 R14 K20 ["Flags"]
  GETTABLEKS R12 R13 K22 ["getFFlagUseCameraDevicesListener"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R6 K19 ["Modules"]
  GETTABLEKS R14 R15 K23 ["Settings"]
  GETTABLEKS R13 R14 K24 ["cameraDevicesHelper"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R6 K19 ["Modules"]
  GETTABLEKS R15 R16 K25 ["Tracker"]
  GETTABLEKS R14 R15 K26 ["TrackerMenu"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R6 K19 ["Modules"]
  GETTABLEKS R16 R17 K25 ["Tracker"]
  GETTABLEKS R15 R16 K27 ["TrackerPromptType"]
  CALL R14 1 1
  GETIMPORT R15 K1 [game]
  LOADK R17 K28 ["DisableCameraOnLowSpecDevices2"]
  LOADB R18 0
  NAMECALL R15 R15 K29 ["DefineFastFlag"]
  CALL R15 3 1
  GETIMPORT R16 K1 [game]
  LOADK R18 K30 ["DisableCameraOnLowSpecDevicesIXPLayer"]
  LOADK R19 K31 ["AvatarChat.DisableOnLowSpecAndroid"]
  NAMECALL R16 R16 K32 ["DefineFastString"]
  CALL R16 3 1
  GETIMPORT R17 K1 [game]
  LOADK R19 K33 ["DisableCameraOnLowSpecDevicesIXPField"]
  LOADK R20 K34 ["DisableOnAndroid"]
  NAMECALL R17 R17 K32 ["DefineFastString"]
  CALL R17 3 1
  GETIMPORT R18 K1 [game]
  LOADK R20 K35 ["OnlyShowToastOnce2"]
  LOADB R21 0
  NAMECALL R18 R18 K29 ["DefineFastFlag"]
  CALL R18 3 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K36 ["DebugAlwaysShowDisableCameraToast"]
  LOADB R22 0
  NAMECALL R19 R19 K29 ["DefineFastFlag"]
  CALL R19 3 1
  GETIMPORT R20 K1 [game]
  LOADK R22 K37 ["OnlyShowToastOnceInLifetime2"]
  LOADB R23 0
  NAMECALL R20 R20 K29 ["DefineFastFlag"]
  CALL R20 3 1
  GETIMPORT R21 K1 [game]
  LOADK R23 K38 ["DisableCameraToastShownStorageKey"]
  NAMECALL R21 R21 K39 ["GetEngineFeature"]
  CALL R21 2 1
  DUPCLOSURE R22 K40 [PROTO_1]
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R17
  DUPCLOSURE R23 K41 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R23 1
