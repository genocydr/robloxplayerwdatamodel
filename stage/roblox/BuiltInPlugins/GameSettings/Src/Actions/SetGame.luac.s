PROTO_0:
  LOADB R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["Instance"] [+5]
  LOADK R4 K3 ["DataModel"]
  NAMECALL R2 R0 K4 ["IsA"]
  CALL R2 2 1
  GETIMPORT R3 K7 [string.format]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R5 R7 K10 ["Name"]
  LOADK R6 K11 [" requires game to be a DataModel, not %s"]
  CONCAT R4 R5 R6
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K13 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K15 [{"game"}]
  SETTABLEKS R0 R1 K14 ["game"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Action"]
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["Name"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
