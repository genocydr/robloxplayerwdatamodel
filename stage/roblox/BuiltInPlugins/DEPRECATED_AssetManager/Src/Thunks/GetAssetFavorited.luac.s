PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFEQKS R1 K1 ["null"] [+10]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  LOADB R6 1
  CALL R4 2 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  LOADB R6 0
  CALL R4 2 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Failed to get asset favorite information for asset id: "]
  GETUPVAL R2 0
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Catalog"]
  GETTABLEKS R4 R5 K1 ["V1"]
  GETTABLEKS R3 R4 K2 ["Favorites"]
  GETTABLEKS R2 R3 K3 ["Assets"]
  GETTABLEKS R1 R2 K4 ["favorite"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  NAMECALL R1 R1 K5 ["makeRequest"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K6 ["andThen"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetAssetFavorited"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_3]
  CAPTURE VAL R1
  RETURN R2 1
