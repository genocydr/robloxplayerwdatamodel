PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExperienceMenuABTest"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+2]
  GETUPVAL R0 1
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["SharedFlags"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["GetFFlagEnableInGameMenuChromeABTest"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["SharedFlags"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["GetFFlagEnableInGameMenuSongbirdABTest"]
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1