MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Settings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["GameSettingsConstants"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"PAGE_ID", "TAB_HEADER", "LAYOUT_ORDER"}]
  LOADK R3 K12 ["gamesettings"]
  SETTABLEKS R3 R2 K8 ["PAGE_ID"]
  DUPTABLE R3 K16 [{"NAME", "TEXT", "ICON"}]
  LOADK R4 K17 ["GameSettingsTab"]
  SETTABLEKS R4 R3 K13 ["NAME"]
  LOADK R4 K2 ["Settings"]
  SETTABLEKS R4 R3 K14 ["TEXT"]
  LOADK R4 K18 ["icons/common/settings"]
  SETTABLEKS R4 R3 K15 ["ICON"]
  SETTABLEKS R3 R2 K9 ["TAB_HEADER"]
  GETTABLEKS R3 R1 K19 ["SETTINGS_MENU_LAYOUT_ORDER"]
  SETTABLEKS R3 R2 K10 ["LAYOUT_ORDER"]
  DUPTABLE R3 K21 [{"GAMESETTINGS"}]
  SETTABLEKS R2 R3 K20 ["GAMESETTINGS"]
  RETURN R3 1