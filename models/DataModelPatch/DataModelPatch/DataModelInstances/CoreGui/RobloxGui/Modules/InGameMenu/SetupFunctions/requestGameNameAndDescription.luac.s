PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["Name"]
  GETTABLEKS R5 R0 K1 ["Description"]
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [warn]
  LOADK R1 K2 ["Unable to retrieve game name for in game menu"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["GameId"]
  JUMPIFNOTEQKN R1 K3 [0] [+2]
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETIMPORT R4 K1 [game]
  GETTABLEKS R3 R4 K2 ["GameId"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K4 ["andThen"]
  CALL R1 2 1
  DUPCLOSURE R3 K5 [PROTO_1]
  NAMECALL R1 R1 K6 ["catch"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpRbxApiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Actions"]
  GETTABLEKS R4 R5 K11 ["SetGameNameAndDescription"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K12 ["Network"]
  GETTABLEKS R5 R6 K13 ["httpRequest"]
  CALL R4 1 1
  MOVE R5 R0
  CALL R4 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K14 ["Workspace"]
  GETTABLEKS R8 R9 K15 ["Packages"]
  GETTABLEKS R7 R8 K16 ["GameDetailRodux"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K17 ["GetGameNameAndDescription"]
  DUPCLOSURE R6 K18 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
