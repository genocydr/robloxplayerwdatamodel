PROTO_0:
  GETTABLEKS R3 R0 K0 ["responseBody"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  JUMPIFEQKS R2 K3 ["true"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 0
  FASTCALL1 TONUMBER R3 [+2]
  GETIMPORT R2 K5 [tonumber]
  CALL R2 1 1
  SETUPVAL R2 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  MOVE R5 R1
  GETUPVAL R6 0
  CALL R4 2 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Could not get asset ownership"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K1 ["purchase"]
  GETTABLEKS R3 R4 K2 ["cachedOwnedAssets"]
  GETUPVAL R5 0
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K4 [tostring]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIFEQKNIL R2 [+14]
  GETUPVAL R5 1
  MOVE R6 R2
  GETUPVAL R7 0
  CALL R5 2 -1
  NAMECALL R3 R0 K5 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["resolve"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R3 3
  CALL R3 0 1
  GETUPVAL R5 0
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K8 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K9 ["string"] [+8]
  GETUPVAL R6 0
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K12 [tonumber]
  CALL R5 1 1
  ORK R4 R5 K10 [0]
  SETUPVAL R4 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["Inventory"]
  GETTABLEKS R7 R8 K14 ["V1"]
  GETTABLEKS R6 R7 K15 ["Users"]
  GETTABLEKS R5 R6 K16 ["Items"]
  GETTABLEKS R4 R5 K17 ["isOwned"]
  MOVE R5 R3
  GETIMPORT R6 K21 [Enum.AvatarItemType.Asset]
  GETUPVAL R7 0
  CALL R4 3 1
  NAMECALL R4 R4 K22 ["makeRequest"]
  CALL R4 1 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  NAMECALL R4 R4 K23 ["andThen"]
  CALL R4 3 1
  RETURN R4 1

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CLOSEUPVALS R1
  RETURN R2 1

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
  GETTABLEKS R3 R4 K8 ["getUserId"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K9 ["Actions"]
  GETTABLEKS R4 R5 K10 ["NetworkError"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K9 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetOwnsAsset"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K13 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K14 ["RobloxAPI"]
  GETTABLEKS R9 R6 K15 ["Http"]
  GETTABLEKS R8 R9 K16 ["Networking"]
  GETTABLEKS R10 R6 K6 ["Util"]
  GETTABLEKS R9 R10 K17 ["Promise"]
  GETTABLEKS R10 R7 K18 ["new"]
  DUPTABLE R11 K20 [{"networking"}]
  GETTABLEKS R12 R8 K18 ["new"]
  DUPTABLE R13 K23 [{"isInternal", "loggingLevel"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K21 ["isInternal"]
  GETTABLEKS R15 R1 K24 ["shouldDebugUrls"]
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADN R14 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K22 ["loggingLevel"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["networking"]
  CALL R10 1 1
  DUPCLOSURE R11 K25 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R11 1
