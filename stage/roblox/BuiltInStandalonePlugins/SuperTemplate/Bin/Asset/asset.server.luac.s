MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["SuperTemplate"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K10 ["launch"]
  LOADK R3 K4 ["SuperTemplate"]
  GETTABLEKS R4 R0 K11 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R0 K13 ["Bin"]
  GETTABLEKS R4 R5 K14 ["Common"]
  GETTABLEKS R3 R4 K15 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K16 ["getFFlagEnableSuperTemplate"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K13 ["Bin"]
  GETTABLEKS R5 R6 K14 ["Common"]
  GETTABLEKS R4 R5 K17 ["pluginType"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K18 ["get"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K19 ["Asset"]
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K13 ["Bin"]
  GETTABLEKS R6 R7 K14 ["Common"]
  GETTABLEKS R5 R6 K20 ["setup"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R8 R0 K13 ["Bin"]
  GETTABLEKS R7 R8 K14 ["Common"]
  GETTABLEKS R6 R7 K21 ["setupMain"]
  CALL R5 1 1
  MOVE R6 R4
  GETIMPORT R7 K1 [plugin]
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0