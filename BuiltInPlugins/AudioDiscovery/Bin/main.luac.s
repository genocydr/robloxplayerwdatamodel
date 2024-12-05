PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["IsEdit"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["new"]
  DUPTABLE R1 K3 [{"isInternal"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["isInternal"]
  CALL R0 1 1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K1 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 3
  GETUPVAL R1 3
  NAMECALL R1 R1 K4 ["start"]
  CALL R1 1 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K5 ["createElement"]
  GETUPVAL R2 6
  DUPTABLE R3 K9 [{"Plugin", "pluginLoaderContext", "SoundAssetChecker"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K6 ["Plugin"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K7 ["pluginLoaderContext"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K8 ["SoundAssetChecker"]
  CALL R1 2 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K10 ["mount"]
  MOVE R3 R1
  CALL R2 1 1
  SETUPVAL R2 8
  GETUPVAL R2 9
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 9
  LOADK R4 K11 ["Roact tree"]
  GETUPVAL R5 8
  NAMECALL R2 R2 K12 ["addRoactTree"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 2
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_4:
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R2 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K8 [pcall]
  DUPCLOSURE R5 K9 [PROTO_0]
  CALL R4 1 2
  GETIMPORT R6 K8 [pcall]
  DUPCLOSURE R7 K10 [PROTO_1]
  CALL R6 1 2
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R2 K5 ["Packages"]
  GETTABLEKS R9 R10 K11 ["Roact"]
  CALL R8 1 1
  GETTABLEKS R10 R3 K12 ["Http"]
  GETTABLEKS R9 R10 K13 ["Networking"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R2 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["MainPlugin"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R2 K14 ["Src"]
  GETTABLEKS R13 R14 K16 ["Util"]
  GETTABLEKS R12 R13 K17 ["SoundAssetChecker"]
  CALL R11 1 1
  LOADNIL R12
  LOADNIL R13
  LOADNIL R14
  JUMPIFNOT R5 [+9]
  GETTABLEKS R16 R3 K18 ["DeveloperTools"]
  GETTABLEKS R15 R16 K19 ["forPlugin"]
  GETTABLEKS R16 R2 K20 ["Name"]
  MOVE R17 R0
  CALL R15 2 1
  MOVE R14 R15
  NEWCLOSURE R15 P2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE REF R13
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE REF R12
  CAPTURE REF R14
  GETTABLEKS R16 R0 K21 ["Unloading"]
  NEWCLOSURE R18 P3
  CAPTURE REF R13
  CAPTURE REF R14
  CAPTURE REF R12
  CAPTURE VAL R8
  NAMECALL R16 R16 K22 ["Connect"]
  CALL R16 2 0
  MOVE R16 R15
  CALL R16 0 0
  CLOSEUPVALS R12
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_4]
  RETURN R0 1
