PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+4]
  DUPTABLE R2 K1 [{"statsSearchTerm"}]
  LOADK R3 K2 [""]
  SETTABLEKS R3 R2 K0 ["statsSearchTerm"]
  GETTABLEKS R3 R1 K3 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["name"]
  JUMPIFNOTEQ R3 R4 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["Set"]
  MOVE R4 R2
  LOADK R5 K0 ["statsSearchTerm"]
  GETTABLEKS R6 R1 K6 ["searchTerm"]
  CALL R3 3 1
  RETURN R3 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["ServerStatsUpdateSearchFilter"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1
