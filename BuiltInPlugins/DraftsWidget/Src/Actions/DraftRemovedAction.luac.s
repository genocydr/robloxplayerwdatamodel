PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["Instance"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R5 K3 ["Expected draft to be Instance. Got '"]
  MOVE R6 R1
  LOADK R7 K4 ["'"]
  CONCAT R4 R5 R7
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R5 K7 ["LuaSourceContainer"]
  NAMECALL R3 R0 K8 ["IsA"]
  CALL R3 2 1
  LOADK R5 K9 ["Expected draft to be a LuaSourceContainer. Got '"]
  GETTABLEKS R6 R0 K10 ["ClassName"]
  LOADK R7 K4 ["'"]
  CONCAT R4 R5 R7
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  DUPTABLE R2 K12 [{"Draft"}]
  SETTABLEKS R0 R2 K11 ["Draft"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1