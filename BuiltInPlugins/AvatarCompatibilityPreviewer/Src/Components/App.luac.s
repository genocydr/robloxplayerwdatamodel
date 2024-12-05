PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["openPlugin"]
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  CALL R2 0 1
  LOADNIL R3
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+19]
  GETUPVAL R4 4
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETUPVAL R4 5
  MOVE R5 R2
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R2 K1 ["autoSetupTarget"]
  CALL R4 1 1
  MOVE R3 R4
  JUMP [+9]
  GETUPVAL R4 6
  MOVE R5 R2
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R2 K1 ["autoSetupTarget"]
  CALL R4 1 1
  MOVE R3 R4
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R4 7
  NAMECALL R4 R4 K2 ["use"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 0
  LOADNIL R5
  GETTABLEKS R6 R1 K4 ["isRunning"]
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 8
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+33]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+30]
  GETTABLEKS R7 R3 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["type"]
  JUMPIFEQKS R6 K8 ["none"] [+25]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 9
  DUPTABLE R8 K13 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
  GETTABLEKS R9 R3 K6 ["state"]
  SETTABLEKS R9 R8 K9 ["autoSetupState"]
  GETTABLEKS R9 R3 K10 ["cancelAutoSetup"]
  SETTABLEKS R9 R8 K10 ["cancelAutoSetup"]
  GETTABLEKS R9 R3 K11 ["startAutoSetup"]
  SETTABLEKS R9 R8 K11 ["startAutoSetup"]
  GETTABLEKS R9 R3 K12 ["clearError"]
  SETTABLEKS R9 R8 K12 ["clearError"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R5 1
  JUMPIFNOTEQKNIL R2 [+18]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 10
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 11
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+30]
  GETTABLEKS R7 R3 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["type"]
  JUMPIFEQKS R6 K8 ["none"] [+25]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 9
  DUPTABLE R8 K13 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
  GETTABLEKS R9 R3 K6 ["state"]
  SETTABLEKS R9 R8 K9 ["autoSetupState"]
  GETTABLEKS R9 R3 K10 ["cancelAutoSetup"]
  SETTABLEKS R9 R8 K10 ["cancelAutoSetup"]
  GETTABLEKS R9 R3 K11 ["startAutoSetup"]
  SETTABLEKS R9 R8 K11 ["startAutoSetup"]
  GETTABLEKS R9 R3 K12 ["clearError"]
  SETTABLEKS R9 R8 K12 ["clearError"]
  CALL R6 2 1
  MOVE R5 R6
  RETURN R5 1
  GETTABLEKS R6 R2 K14 ["avatar"]
  JUMPIFNOT R6 [+84]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 12
  DUPTABLE R8 K16 [{"providers"}]
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K17 ["List"]
  GETTABLEKS R9 R10 K18 ["join"]
  NEWTABLE R10 0 5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 14
  DUPTABLE R13 K20 [{"root"}]
  GETTABLEKS R15 R2 K14 ["avatar"]
  GETTABLEKS R14 R15 K21 ["WorldModel"]
  SETTABLEKS R14 R13 K19 ["root"]
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 15
  DUPTABLE R14 K20 [{"root"}]
  GETTABLEKS R16 R2 K14 ["avatar"]
  GETTABLEKS R15 R16 K21 ["WorldModel"]
  SETTABLEKS R15 R14 K19 ["root"]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 16
  CALL R13 1 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 17
  CALL R14 1 1
  GETUPVAL R16 4
  CALL R16 0 1
  JUMPIF R16 [+8]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R17 18
  GETTABLEKS R16 R17 K22 ["Provider"]
  CALL R15 1 1
  JUMP [+1]
  LOADNIL R15
  SETLIST R10 R11 5 [1]
  GETTABLEKS R11 R0 K23 ["DEPRECATED_additionalAvatarContext"]
  JUMPIF R11 [+2]
  NEWTABLE R11 0 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["providers"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 19
  DUPTABLE R11 K26 [{"Avatar", "IsSelected"}]
  GETTABLEKS R12 R2 K14 ["avatar"]
  SETTABLEKS R12 R11 K24 ["Avatar"]
  GETTABLEKS R12 R2 K27 ["isSelected"]
  SETTABLEKS R12 R11 K25 ["IsSelected"]
  CALL R9 2 -1
  CALL R6 -1 1
  MOVE R5 R6
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["Screens"]
  GETTABLEKS R5 R6 K13 ["AvatarScreen"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K12 ["Screens"]
  GETTABLEKS R6 R7 K14 ["AutoSetupScreen"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["Screens"]
  GETTABLEKS R7 R8 K15 ["SelectScreen"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Components"]
  GETTABLEKS R9 R10 K12 ["Screens"]
  GETTABLEKS R8 R9 K16 ["SimpleSelectScreen"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K11 ["Components"]
  GETTABLEKS R10 R11 K12 ["Screens"]
  GETTABLEKS R9 R10 K17 ["TestingScreen"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K11 ["Components"]
  GETTABLEKS R10 R11 K18 ["EquipmentStateProvider"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K11 ["Components"]
  GETTABLEKS R11 R12 K19 ["OriginalLimbProvider"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K11 ["Components"]
  GETTABLEKS R12 R13 K20 ["RunServiceContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K11 ["Components"]
  GETTABLEKS R13 R14 K21 ["SimpleSerializedStateProvider"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K11 ["Components"]
  GETTABLEKS R14 R15 K22 ["UGCValidationContext"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K11 ["Components"]
  GETTABLEKS R15 R16 K23 ["UserCatalogProvider"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K11 ["Components"]
  GETTABLEKS R16 R17 K24 ["ContextStack"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K25 ["Hooks"]
  GETTABLEKS R17 R18 K26 ["useAutoSetupState"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K25 ["Hooks"]
  GETTABLEKS R18 R19 K27 ["DEPRECATED_useAutoSetupState"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K25 ["Hooks"]
  GETTABLEKS R19 R20 K28 ["useMostRecentSelected"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K29 ["Flags"]
  GETTABLEKS R20 R21 K30 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K10 ["Src"]
  GETTABLEKS R22 R23 K29 ["Flags"]
  GETTABLEKS R21 R22 K31 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R20 1 1
  GETTABLEKS R22 R2 K32 ["ContextServices"]
  GETTABLEKS R21 R22 K33 ["Analytics"]
  DUPCLOSURE R22 K34 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R4
  RETURN R22 1
