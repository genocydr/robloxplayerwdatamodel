PROTO_0:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 2
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SetShowUploadWidget"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetUploadWidgetItem"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K4 ["Src"]
  GETTABLEKS R6 R7 K10 ["DataTypes"]
  GETTABLEKS R5 R6 K11 ["QueuedSession"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1