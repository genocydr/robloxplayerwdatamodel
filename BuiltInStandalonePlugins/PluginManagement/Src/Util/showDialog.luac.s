PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  NEWCLOSURE R2 P0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  DUPTABLE R3 K1 [{"Dialog"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"pluginId", "OnButtonClicked", "OnClose"}]
  SETTABLEKS R0 R6 K3 ["pluginId"]
  SETTABLEKS R2 R6 K4 ["OnButtonClicked"]
  SETTABLEKS R2 R6 K5 ["OnClose"]
  DUPTABLE R7 K8 [{"Main"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K9 [{"pluginId"}]
  SETTABLEKS R0 R10 K3 ["pluginId"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Main"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K0 ["Dialog"]
  GETUPVAL R4 3
  CALL R4 0 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K10 ["provide"]
  NEWTABLE R6 0 4
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K11 ["Plugin"]
  GETTABLEKS R7 R8 K12 ["new"]
  GETTABLEKS R8 R4 K13 ["plugin"]
  CALL R7 1 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K14 ["Store"]
  GETTABLEKS R8 R9 K12 ["new"]
  GETTABLEKS R9 R4 K15 ["store"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K16 ["localization"]
  GETTABLEKS R10 R4 K17 ["theme"]
  SETLIST R6 R7 4 [1]
  MOVE R7 R3
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["mount"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R1 R6
  CLOSEUPVALS R1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["ContextServices"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["InstallationDialog"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K12 ["MainView"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["getPluginGlobals"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1