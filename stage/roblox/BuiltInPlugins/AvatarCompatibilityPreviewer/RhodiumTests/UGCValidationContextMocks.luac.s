PROTO_0:
  DUPTABLE R0 K1 [{"type"}]
  LOADK R1 K2 ["allowed"]
  SETTABLEKS R1 R0 K0 ["type"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["getFFlagAvatarPreviewerUseAnyModel() must be enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createCachedResponse"]
  CALL R1 0 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 1
  GETIMPORT R2 K3 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R3 0
  SETTABLE R1 R2 R3
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createCachedResponse"]
  CALL R1 0 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETIMPORT R2 K6 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R0 R2
  GETUPVAL R2 0
  SETTABLE R1 R0 R2
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 4
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["waitForSignal"]
  JUMPIFNOTEQKNIL R2 [+4]
  MOVE R2 R1
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["waitForSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Once"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R0 K2 [{"ok", "errors"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["ok"]
  NEWTABLE R1 0 1
  LOADK R2 K3 ["Not implemented"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["errors"]
  RETURN R0 1

PROTO_7:
  DUPTABLE R0 K2 [{"ok", "errors"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["ok"]
  NEWTABLE R1 0 1
  LOADK R2 K3 ["Not implemented"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["errors"]
  RETURN R0 1

PROTO_8:
  LOADB R0 0
  RETURN R0 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+2]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  NEWTABLE R4 0 0
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  NEWTABLE R7 0 1
  MOVE R8 R3
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["useCallback"]
  DUPCLOSURE R8 K2 [PROTO_6]
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["useCallback"]
  DUPCLOSURE R9 K3 [PROTO_7]
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["useCallback"]
  DUPCLOSURE R10 K4 [PROTO_8]
  NEWTABLE R11 0 0
  CALL R9 2 1
  GETUPVAL R10 3
  GETTABLEKS R11 R0 K5 ["canUploadBundlesAsync"]
  JUMPIF R11 [+1]
  GETUPVAL R11 4
  CALL R10 1 2
  DUPTABLE R12 K16 [{"cachedResponses", "DEPRECATED_cachedResponses", "validateBundle", "revalidateBundle", "calculateScaleToValidateBoundsAsync", "preprocessDataAsync", "isPreprocessDataCached", "findCachedValidationResponse", "canUploadBundles", "requestCanUploadBundles"}]
  SETTABLEKS R3 R12 K6 ["cachedResponses"]
  SETTABLEKS R1 R12 K7 ["DEPRECATED_cachedResponses"]
  SETTABLEKS R6 R12 K8 ["validateBundle"]
  SETTABLEKS R6 R12 K9 ["revalidateBundle"]
  SETTABLEKS R7 R12 K10 ["calculateScaleToValidateBoundsAsync"]
  SETTABLEKS R8 R12 K11 ["preprocessDataAsync"]
  SETTABLEKS R9 R12 K12 ["isPreprocessDataCached"]
  SETTABLEKS R5 R12 K13 ["findCachedValidationResponse"]
  SETTABLEKS R10 R12 K14 ["canUploadBundles"]
  SETTABLEKS R11 R12 K15 ["requestCanUploadBundles"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K17 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K18 ["Context"]
  GETTABLEKS R14 R15 K19 ["Provider"]
  DUPTABLE R15 K21 [{"value"}]
  SETTABLEKS R12 R15 K20 ["value"]
  GETTABLEKS R16 R0 K22 ["children"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_10:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"waitForSignal", "canUploadBundlesAsync", "createCachedResponse"}]
  GETTABLEKS R4 R0 K1 ["waitForSignal"]
  SETTABLEKS R4 R3 K1 ["waitForSignal"]
  GETTABLEKS R4 R0 K2 ["canUploadBundlesAsync"]
  SETTABLEKS R4 R3 K2 ["canUploadBundlesAsync"]
  DUPCLOSURE R4 K5 [PROTO_10]
  SETTABLEKS R4 R3 K3 ["createCachedResponse"]
  GETTABLEKS R4 R0 K6 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_12:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 3
  DUPTABLE R3 K8 [{"assetType", "error"}]
  GETIMPORT R4 K12 [Enum.AssetType.Head]
  SETTABLEKS R4 R3 K6 ["assetType"]
  DUPTABLE R4 K15 [{"type", "message"}]
  LOADK R5 K14 ["message"]
  SETTABLEKS R5 R4 K13 ["type"]
  LOADK R5 K16 ["Your brain gets smart, but your head gets dumb"]
  SETTABLEKS R5 R4 K14 ["message"]
  SETTABLEKS R4 R3 K7 ["error"]
  DUPTABLE R4 K8 [{"assetType", "error"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["assetType"]
  DUPTABLE R5 K15 [{"type", "message"}]
  LOADK R6 K14 ["message"]
  SETTABLEKS R6 R5 K13 ["type"]
  LOADK R6 K17 ["Full body error"]
  SETTABLEKS R6 R5 K14 ["message"]
  SETTABLEKS R5 R4 K7 ["error"]
  DUPTABLE R5 K8 [{"assetType", "error"}]
  GETIMPORT R6 K19 [Enum.AssetType.LeftArm]
  SETTABLEKS R6 R5 K6 ["assetType"]
  DUPTABLE R6 K20 [{"type"}]
  LOADK R7 K21 ["notFound"]
  SETTABLEKS R7 R6 K13 ["type"]
  SETTABLEKS R6 R5 K7 ["error"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_12]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_14:
  LOADNIL R0
  RETURN R0 1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_14]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_16:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_16]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_18:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 1
  DUPTABLE R3 K8 [{"assetType", "error"}]
  GETIMPORT R4 K12 [Enum.AssetType.Head]
  SETTABLEKS R4 R3 K6 ["assetType"]
  DUPTABLE R4 K15 [{"type", "message"}]
  LOADK R5 K14 ["message"]
  SETTABLEKS R5 R4 K13 ["type"]
  LOADK R5 K16 ["Your brain gets smart, but your head gets dumb"]
  SETTABLEKS R5 R4 K14 ["message"]
  SETTABLEKS R4 R3 K7 ["error"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_18]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K11 ["Signal"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["UGCValidation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["UGCValidationContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["UGCValidationContext"]
  GETTABLEKS R7 R8 K15 ["useCanUploadBundles"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Flags"]
  GETTABLEKS R8 R9 K17 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R7 1 1
  NEWTABLE R8 8 0
  DUPCLOSURE R9 K18 [PROTO_0]
  DUPCLOSURE R10 K19 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R5
  DUPCLOSURE R11 K20 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K21 ["AlwaysPassesProvider"]
  DUPCLOSURE R11 K22 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K23 ["AlwaysFailsProvider"]
  DUPCLOSURE R11 K24 [PROTO_15]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K25 ["NeverReturnsProvider"]
  DUPCLOSURE R11 K26 [PROTO_17]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K27 ["InProgressProvider"]
  DUPCLOSURE R11 K28 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K29 ["InProgressErrorsProvider"]
  RETURN R8 1
