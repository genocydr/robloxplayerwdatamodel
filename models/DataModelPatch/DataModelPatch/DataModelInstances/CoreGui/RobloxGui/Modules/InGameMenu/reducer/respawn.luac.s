PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"dialogOpen"}]
  GETTABLEKS R5 R1 K4 ["respawning"]
  SETTABLEKS R5 R4 K2 ["dialogOpen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["menuOpen"]
  JUMPIF R2 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"dialogOpen"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["dialogOpen"]
  CALL R2 2 -1
  RETURN R2 -1
  RETURN R0 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"dialogOpen"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["dialogOpen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["dialogOpen"]
  GETTABLEKS R3 R1 K1 ["respawnEnabled"]
  JUMPIF R3 [+1]
  LOADB R2 0
  DUPTABLE R3 K4 [{"customCallback", "enabled", "dialogOpen"}]
  GETTABLEKS R4 R1 K2 ["customCallback"]
  SETTABLEKS R4 R3 K2 ["customCallback"]
  GETTABLEKS R4 R1 K1 ["respawnEnabled"]
  SETTABLEKS R4 R3 K3 ["enabled"]
  SETTABLEKS R2 R3 K0 ["dialogOpen"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Cryo"]
  GETTABLEKS R3 R1 K9 ["Rodux"]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R4 K13 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetRespawning"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R4 K13 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetRespawnBehavior"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R4 K13 ["Actions"]
  GETTABLEKS R8 R9 K16 ["SetMenuOpen"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R4 K13 ["Actions"]
  GETTABLEKS R9 R10 K17 ["SetCurrentPage"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K18 ["createReducer"]
  DUPTABLE R10 K22 [{"dialogOpen", "enabled", "customCallback"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["dialogOpen"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["enabled"]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["customCallback"]
  NEWTABLE R11 4 0
  GETTABLEKS R12 R5 K23 ["name"]
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K23 ["name"]
  DUPCLOSURE R13 K25 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R8 K23 ["name"]
  DUPCLOSURE R13 K26 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K23 ["name"]
  DUPCLOSURE R13 K27 [PROTO_3]
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1
