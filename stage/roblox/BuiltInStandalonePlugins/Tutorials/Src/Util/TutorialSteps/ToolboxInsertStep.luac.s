PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K1 ["toolboxConnection"]
  LOADK R4 K2 ["AssetInserted"]
  NAMECALL R2 R1 K3 ["ensureEventExists"]
  CALL R2 2 0
  LOADK R4 K2 ["AssetInserted"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R2 R1 K4 ["Connect"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K5 ["connection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["extend"]
  LOADK R2 K7 ["ToolboxInsert"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K8 ["showComplete"]
  DUPCLOSURE R2 K9 [PROTO_1]
  SETTABLEKS R2 R1 K10 ["bind"]
  DUPCLOSURE R2 K11 [PROTO_2]
  SETTABLEKS R2 R1 K12 ["unbind"]
  RETURN R1 1