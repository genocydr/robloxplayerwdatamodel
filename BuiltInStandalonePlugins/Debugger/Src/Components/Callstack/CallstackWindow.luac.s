PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Enabled"]
  GETTABLEKS R4 R1 K3 ["OnClose"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 16 0
  LOADK R8 K5 ["Callstack"]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K5 ["Callstack"]
  LOADK R11 K7 ["WindowName"]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["Title"]
  GETIMPORT R8 K13 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K11 ["ZIndexBehavior"]
  GETIMPORT R8 K16 [Enum.InitialDockState.Bottom]
  SETTABLEKS R8 R7 K14 ["InitialDockState"]
  GETIMPORT R8 K19 [Vector2.new]
  LOADN R9 128
  LOADN R10 224
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Size"]
  GETIMPORT R8 K19 [Vector2.new]
  LOADN R9 250
  LOADN R10 200
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["MinSize"]
  SETTABLEKS R3 R7 K2 ["Enabled"]
  SETTABLEKS R4 R7 K3 ["OnClose"]
  LOADB R8 1
  SETTABLEKS R8 R7 K22 ["ShouldRestore"]
  GETTABLEKS R8 R1 K23 ["OnRestore"]
  SETTABLEKS R8 R7 K24 ["OnWidgetRestored"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["Change"]
  GETTABLEKS R8 R9 K2 ["Enabled"]
  GETTABLEKS R9 R1 K26 ["OnWidgetEnabledChanged"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K27 [{"Callstack"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["Callstack"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["DockWidget"]
  GETTABLEKS R5 R2 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETTABLEKS R7 R5 K12 ["Localization"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Components"]
  GETTABLEKS R10 R11 K15 ["Callstack"]
  GETTABLEKS R9 R10 K16 ["CallstackComponent"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K17 ["PureComponent"]
  LOADK R11 K18 ["CallstackWindow"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K21 ["render"]
  MOVE R10 R6
  DUPTABLE R11 K22 [{"Localization"}]
  SETTABLEKS R7 R11 K12 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
