MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  DUPTABLE R2 K8 [{"trayVisible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["trayVisible"]
  GETTABLEKS R3 R1 K9 ["createContext"]
  MOVE R4 R2
  CALL R3 1 1
  RETURN R3 1
