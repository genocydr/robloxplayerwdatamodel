PROTO_0:
  GETUPVAL R3 0
  DUPTABLE R4 K1 [{"assets"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K0 ["assets"]
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 2
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 3
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 4
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 5
  LOADK R4 K3 [""]
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K4 ["Path"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K5 ["MAIN"]
  GETTABLEKS R2 R3 K4 ["Path"]
  JUMPIFEQ R1 R2 [+10]
  GETUPVAL R3 8
  GETUPVAL R4 9
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K6 ["AssetType"]
  CALL R3 2 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetAssets"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["SetAssetsModerationData"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Actions"]
  GETTABLEKS R4 R5 K9 ["SetIsFetchingAssets"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K6 ["Actions"]
  GETTABLEKS R5 R6 K10 ["SetEditingAssets"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K6 ["Actions"]
  GETTABLEKS R6 R7 K11 ["SetSelectedAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K6 ["Actions"]
  GETTABLEKS R7 R8 K12 ["SetSearchTerm"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K13 ["Thunks"]
  GETTABLEKS R8 R9 K14 ["GetAssets"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K5 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["Screens"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R9 1
