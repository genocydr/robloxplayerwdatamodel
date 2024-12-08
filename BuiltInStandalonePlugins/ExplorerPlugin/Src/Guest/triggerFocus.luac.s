PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["fromAction"]
  LOADK R3 K1 ["BuilderTools"]
  LOADK R4 K2 ["ZoomExtents"]
  CALL R2 2 -1
  NAMECALL R0 R0 K3 ["ActivateAsync"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["Actions"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  GETIMPORT R2 K4 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["StudioUri"]
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R2
  RETURN R3 1