PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R7 R1 K1 ["data"]
  GETTABLEN R6 R7 1
  GETTABLEKS R5 R6 K2 ["state"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  GETUPVAL R3 2
  GETUPVAL R5 3
  NAMECALL R3 R3 K0 ["getThumbnailStatus"]
  CALL R3 2 1
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K1 ["andThen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["SetAssetConfigThumbnailStatus"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["NetworkError"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1