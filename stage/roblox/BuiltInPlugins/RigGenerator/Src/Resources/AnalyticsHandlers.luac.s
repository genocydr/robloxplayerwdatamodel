PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K11 ["studio"]
  LOADK R6 K12 ["RigGenerator"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K13 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  LOADNIL R3
  ORK R3 R3 K0 [1]
  GETUPVAL R4 0
  LOADK R6 K1 ["AvatarGeneratorRigInsert"]
  MOVE R7 R3
  NAMECALL R4 R4 K2 ["ReportCounter"]
  CALL R4 3 0
  GETUPVAL R3 1
  LOADK R4 K3 ["Rig Generated"]
  DUPTABLE R5 K7 [{"rigName", "rigType", "bodyShape"}]
  SETTABLEKS R0 R5 K4 ["rigName"]
  GETTABLEKS R6 R1 K8 ["Name"]
  SETTABLEKS R6 R5 K5 ["rigType"]
  SETTABLEKS R2 R5 K6 ["bodyShape"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R1 0
  LOADK R3 K1 ["AvatarGeneratorMenuOpen"]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R1 0
  LOADK R3 K1 ["AvatarGeneratorMenuClose"]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R1 0
  LOADK R3 K1 ["AvatarGeneratorMenuCloseManual"]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  DUPTABLE R3 K4 [{"rigInsert", "menuOpen", "menuClose", "menuCloseManual"}]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K0 ["rigInsert"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K1 ["menuOpen"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K2 ["menuClose"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K3 ["menuCloseManual"]
  RETURN R3 1

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
  DUPCLOSURE R2 K7 [PROTO_6]
  CAPTURE VAL R1
  RETURN R2 1
