PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"lastRemovedFriendId"}]
  GETTABLEKS R9 R1 K2 ["lastRemovedFriendId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K5 [tostring]
  CALL R8 1 1
  MOVE R6 R8
  GETIMPORT R8 K8 [DateTime.now]
  CALL R8 0 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K5 [tostring]
  CALL R7 -1 1
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K2 ["lastRemovedFriendId"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETTABLEKS R4 R5 K13 ["UpdateLastFriend"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K14 ["createReducer"]
  DUPTABLE R5 K16 [{"lastRemovedFriendId"}]
  LOADK R6 K17 [""]
  SETTABLEKS R6 R5 K15 ["lastRemovedFriendId"]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R3 K18 ["name"]
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R1
  SETTABLE R8 R6 R7
  CALL R4 2 -1
  RETURN R4 -1
