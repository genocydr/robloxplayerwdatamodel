PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["boolean"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected canManage to be a boolean"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  DUPTABLE R1 K7 [{"canManageTranslation"}]
  SETTABLEKS R0 R1 K6 ["canManageTranslation"]
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
