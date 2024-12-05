PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Name"]
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  DUPTABLE R3 K4 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R4 0
  NAMECALL R4 R4 K5 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["studioSid"]
  GETUPVAL R4 0
  NAMECALL R4 R4 K6 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["clientId"]
  GETIMPORT R5 K8 [game]
  GETTABLEKS R4 R5 K9 ["PlaceId"]
  SETTABLEKS R4 R3 K2 ["placeId"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K10 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["userId"]
  GETIMPORT R4 K12 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  SETTABLE R8 R3 R7
  FORGLOOP R4 2 [-2]
  GETUPVAL R4 0
  LOADK R6 K13 ["studio"]
  LOADK R7 K14 ["Modeling"]
  MOVE R8 R1
  MOVE R9 R3
  NAMECALL R4 R4 K15 ["SendEventDeferred"]
  CALL R4 5 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  MOVE R5 R1
  ORK R6 R2 K0 [1]
  NAMECALL R3 R3 K1 ["ReportCounter"]
  CALL R3 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K0 ["ReportStats"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R2 4 0
  GETIMPORT R3 K6 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R0
  CALL R3 1 1
  JUMPIF R3 [+17]
  NEWTABLE R0 0 0
  DUPCLOSURE R3 K7 [PROTO_1]
  SETTABLEKS R3 R0 K8 ["SendEventDeferred"]
  DUPCLOSURE R3 K9 [PROTO_2]
  SETTABLEKS R3 R0 K10 ["ReportCounter"]
  DUPCLOSURE R3 K11 [PROTO_3]
  SETTABLEKS R3 R0 K12 ["GetSessionId"]
  DUPCLOSURE R3 K13 [PROTO_4]
  SETTABLEKS R3 R0 K14 ["GetClientId"]
  DUPCLOSURE R3 K15 [PROTO_5]
  SETTABLEKS R3 R0 K16 ["ReportStats"]
  NEWCLOSURE R3 P6
  CAPTURE REF R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K17 ["sendEvent"]
  NEWCLOSURE R3 P7
  CAPTURE REF R0
  SETTABLEKS R3 R2 K18 ["reportCounter"]
  NEWCLOSURE R3 P8
  CAPTURE REF R0
  SETTABLEKS R3 R2 K19 ["reportStats"]
  CLOSEUPVALS R0
  RETURN R2 1
