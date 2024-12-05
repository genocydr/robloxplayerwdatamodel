PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K0 ["enabled"]
  NOT R3 R4
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Plugin"]
  LOADB R2 1
  NAMECALL R0 R0 K1 ["Activate"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["beginAddAnnotation"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plugin"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R5 R0 K2 ["Checked"]
  NOT R4 R5
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["ActivateAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_7:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  LOADK R4 K1 ["Actions"]
  NAMECALL R2 R2 K2 ["GetPluginComponent"]
  CALL R2 2 1
  DUPTABLE R3 K4 [{"enabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["enabled"]
  SETTABLEKS R3 R0 K5 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["fflagPlaceAnnotationsHotkey"]
  JUMPIFNOT R3 [+24]
  GETUPVAL R5 1
  NAMECALL R3 R2 K7 ["BindToActivatedAsync"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 0
  GETUPVAL R5 2
  NAMECALL R3 R2 K7 ["BindToActivatedAsync"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K9 ["onWidgetClosed"]
  JUMP [+14]
  GETUPVAL R5 1
  NAMECALL R3 R2 K7 ["BindToActivatedAsync"]
  CALL R3 2 1
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 0
  NEWCLOSURE R3 P4
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  SETTABLEKS R3 R0 K9 ["onWidgetClosed"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K10 ["Localization"]
  GETTABLEKS R3 R4 K11 ["new"]
  DUPTABLE R4 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K12 ["stringResourceTable"]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K13 ["translationResourceTable"]
  LOADK R5 K16 ["PlaceAnnotations"]
  SETTABLEKS R5 R4 K14 ["pluginName"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K17 ["localization"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K18 ["Analytics"]
  GETTABLEKS R3 R4 K11 ["new"]
  DUPCLOSURE R4 K19 [PROTO_6]
  NEWTABLE R5 0 0
  CALL R3 2 1
  SETTABLEKS R3 R0 K20 ["analytics"]
  GETUPVAL R3 7
  GETTABLEKS R4 R1 K0 ["Plugin"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K21 ["design"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K7 ["localization"]
  GETTABLEKS R10 R0 K8 ["analytics"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K5 ["new"]
  CALL R11 0 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K5 ["new"]
  CALL R12 0 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K10 [{"MainWidget"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K20 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose"}]
  LOADK R11 K21 ["PlaceAnnotations"]
  SETTABLEKS R11 R10 K12 ["Id"]
  SETTABLEKS R4 R10 K13 ["Enabled"]
  GETTABLEKS R11 R0 K7 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K22 ["Name"]
  NAMECALL R11 R11 K23 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  GETIMPORT R11 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K15 ["ZIndexBehavior"]
  GETIMPORT R11 K28 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K16 ["InitialDockState"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Size"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["MinSize"]
  GETTABLEKS R11 R0 K31 ["onWidgetClosed"]
  SETTABLEKS R11 R10 K19 ["OnClose"]
  DUPTABLE R11 K34 [{"AnnotationListView", "StyleLink"}]
  JUMPIFNOT R4 [+6]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 7
  CALL R12 1 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K32 ["AnnotationListView"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K33 ["StyleLink"]
  DUPTABLE R14 K36 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K37 ["design"]
  SETTABLEKS R15 R14 K35 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["CrossDMCommunication"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Standalone"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K13 ["Bin"]
  GETTABLEKS R6 R7 K14 ["Common"]
  GETTABLEKS R5 R6 K15 ["defineLuaFlags"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K16 ["UI"]
  GETTABLEKS R5 R6 K17 ["DockWidget"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K18 ["Components"]
  GETTABLEKS R7 R8 K19 ["AnnotationListView"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K20 ["ContextServices"]
  GETTABLEKS R8 R7 K21 ["Plugin"]
  GETTABLEKS R9 R7 K22 ["Mouse"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K23 ["Contexts"]
  GETTABLEKS R11 R12 K24 ["UsernameContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K23 ["Contexts"]
  GETTABLEKS R12 R13 K25 ["InputListenerContext"]
  CALL R11 1 1
  GETTABLEKS R13 R2 K26 ["Styling"]
  GETTABLEKS R12 R13 K27 ["registerPluginStyles"]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K28 ["Resources"]
  GETTABLEKS R14 R15 K29 ["Localization"]
  GETTABLEKS R13 R14 K30 ["SourceStrings"]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K28 ["Resources"]
  GETTABLEKS R15 R16 K29 ["Localization"]
  GETTABLEKS R14 R15 K31 ["LocalizedStrings"]
  GETTABLEKS R15 R1 K32 ["PureComponent"]
  LOADK R17 K33 ["MainPlugin"]
  NAMECALL R15 R15 K34 ["extend"]
  CALL R15 2 1
  DUPTABLE R16 K39 [{"DataModel", "Category", "PluginId", "ItemId"}]
  LOADK R17 K12 ["Standalone"]
  SETTABLEKS R17 R16 K35 ["DataModel"]
  LOADK R17 K40 ["Actions"]
  SETTABLEKS R17 R16 K36 ["Category"]
  LOADK R17 K2 ["PlaceAnnotations"]
  SETTABLEKS R17 R16 K37 ["PluginId"]
  LOADK R17 K41 ["Toggle"]
  SETTABLEKS R17 R16 K38 ["ItemId"]
  DUPTABLE R17 K39 [{"DataModel", "Category", "PluginId", "ItemId"}]
  LOADK R18 K12 ["Standalone"]
  SETTABLEKS R18 R17 K35 ["DataModel"]
  LOADK R18 K40 ["Actions"]
  SETTABLEKS R18 R17 K36 ["Category"]
  LOADK R18 K2 ["PlaceAnnotations"]
  SETTABLEKS R18 R17 K37 ["PluginId"]
  LOADK R18 K42 ["AddAnnotation"]
  SETTABLEKS R18 R17 K38 ["ItemId"]
  DUPCLOSURE R18 K43 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  SETTABLEKS R18 R15 K44 ["init"]
  DUPCLOSURE R18 K45 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R18 R15 K46 ["render"]
  RETURN R15 1
