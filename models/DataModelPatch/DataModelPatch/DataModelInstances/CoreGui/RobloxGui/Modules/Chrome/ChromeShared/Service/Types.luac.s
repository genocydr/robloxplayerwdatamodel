MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ChromeShared"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Service"]
  GETTABLEKS R2 R3 K7 ["ChromeUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Service"]
  GETTABLEKS R3 R4 K8 ["WindowSizeSignal"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Service"]
  GETTABLEKS R4 R5 K9 ["ContainerSlotSignal"]
  CALL R3 1 1
  LOADNIL R4
  RETURN R4 1
