PROTO_0:
  GETUPVAL R2 0
  LOADK R4 K1 ["NativeCloseLuaPromptDisplayCount"]
  NAMECALL R2 R2 K2 ["GetItem"]
  CALL R2 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R1 K4 [tonumber]
  CALL R1 -1 1
  ORK R0 R1 K0 [0]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["NativeCloseLuaPromptDisplayCount"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  NAMECALL R1 R1 K3 ["SetItem"]
  CALL R1 3 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["flush"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["nativeClosePrompt"]
  GETTABLEKS R1 R2 K2 ["closingApp"]
  GETUPVAL R4 0
  LOADK R6 K4 ["NativeCloseLuaPromptDisplayCount"]
  NAMECALL R4 R4 K5 ["GetItem"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K7 [tonumber]
  CALL R3 -1 1
  ORK R2 R3 K3 [0]
  JUMPIF R1 [+3]
  GETUPVAL R3 1
  JUMPIFNOTLE R3 R2 [+10]
  GETUPVAL R3 2
  LOADK R5 K8 [""]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["NATIVE_EXIT"]
  NAMECALL R3 R3 K10 ["BroadcastNotification"]
  CALL R3 3 0
  RETURN R0 0
  GETUPVAL R5 4
  CALL R5 0 -1
  NAMECALL R3 R0 K11 ["dispatch"]
  CALL R3 -1 0
  ADDK R3 R2 K12 [1]
  GETUPVAL R4 0
  LOADK R6 K4 ["NativeCloseLuaPromptDisplayCount"]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  NAMECALL R4 R4 K15 ["SetItem"]
  CALL R4 3 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K16 ["flush"]
  CALL R4 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  NAMECALL R5 R0 K0 ["GetNotificationTypeList"]
  CALL R5 1 1
  NEWCLOSURE R6 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE UPVAL U0
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Actions"]
  GETTABLEKS R2 R3 K6 ["OpenNativeClosePrompt"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_3]
  CAPTURE VAL R1
  RETURN R2 1
