MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K9 ["RobloxGui"]
  GETTABLEKS R2 R3 K10 ["Modules"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R2 K11 ["Settings"]
  GETTABLEKS R6 R7 K12 ["Pages"]
  GETTABLEKS R5 R6 K13 ["ShareGame"]
  GETTABLEKS R4 R5 K14 ["AppReducer"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K15 ["Store"]
  GETTABLEKS R4 R5 K16 ["new"]
  MOVE R5 R3
  LOADNIL R6
  NEWTABLE R7 0 1
  GETTABLEKS R8 R1 K17 ["thunkMiddleware"]
  SETLIST R7 R8 1 [1]
  CALL R4 3 -1
  RETURN R4 -1