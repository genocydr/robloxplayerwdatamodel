PROTO_0:
  GETTABLEKS R2 R0 K0 ["gameIds"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K1 [0] [+2]
  RETURN R0 1
  DUPTABLE R1 K6 [{"returnPolicy", "size", "format", "universeIds"}]
  LOADK R2 K7 ["Autogenerated"]
  SETTABLEKS R2 R1 K2 ["returnPolicy"]
  LOADK R2 K8 ["256x256"]
  SETTABLEKS R2 R1 K3 ["size"]
  LOADK R2 K9 ["png"]
  SETTABLEKS R2 R1 K4 ["format"]
  GETTABLEKS R2 R0 K0 ["gameIds"]
  SETTABLEKS R2 R1 K5 ["universeIds"]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K10 ["setter"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["DEPRECATED_Network"]
  GETTABLEKS R3 R4 K9 ["DiscoverGameIcons"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1