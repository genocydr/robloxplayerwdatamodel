PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K6 ["createRoot"]
  GETUPVAL R2 5
  CALL R1 1 1
  SETUPVAL R1 3
  GETUPVAL R1 3
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K7 ["render"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Common"]
  GETTABLEKS R1 R2 K6 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K5 ["Common"]
  GETIMPORT R1 K8 [plugin]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R3 R0 K9 ["commonInit"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 0
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["launch"]
  LOADK R5 K13 ["ActivityFeed"]
  GETTABLEKS R6 R1 K14 ["Src"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K15 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [require]
  GETTABLEKS R5 R0 K16 ["getEnableActivityHistory"]
  CALL R4 1 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K19 [Instance.new]
  LOADK R5 K20 ["Frame"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K21 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETTABLEKS R8 R1 K10 ["Packages"]
  GETTABLEKS R7 R8 K22 ["ReactRoblox"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K23 ["MainPlugin"]
  CALL R7 1 1
  LOADNIL R8
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE REF R8
  CAPTURE VAL R6
  CAPTURE VAL R4
  GETIMPORT R11 K8 [plugin]
  GETTABLEKS R10 R11 K24 ["Unloading"]
  NEWCLOSURE R12 P1
  CAPTURE REF R8
  NAMECALL R10 R10 K25 ["Connect"]
  CALL R10 2 0
  MOVE R10 R9
  CALL R10 0 0
  CLOSEUPVALS R8
  RETURN R0 0
