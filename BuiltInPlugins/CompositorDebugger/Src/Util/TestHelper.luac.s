PROTO_0:
  JUMPIFNOT R0 [+27]
  JUMPIFNOT R1 [+26]
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+23]
  GETIMPORT R2 K2 [table.remove]
  MOVE R3 R1
  LOADN R4 1
  CALL R2 2 1
  JUMPIFNOT R2 [+14]
  MOVE R5 R2
  NAMECALL R3 R0 K3 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["findDeepInstance"]
  MOVE R5 R3
  MOVE R6 R1
  CALL R4 2 1
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1
  LOADNIL R3
  RETURN R3 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["findDeepInstance"]
  MOVE R2 R0
  NEWTABLE R3 0 5
  LOADK R4 K1 ["MainSplitPane"]
  LOADK R5 K2 ["Contents"]
  LOADK R6 K3 ["Pane 2"]
  LOADK R7 K4 ["Child"]
  LOADK R8 K5 ["LayerData"]
  SETLIST R3 R4 5 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["findDeepInstance"]
  MOVE R2 R0
  NEWTABLE R3 0 4
  LOADK R4 K1 ["MainSplitPane"]
  LOADK R5 K2 ["Contents"]
  LOADK R6 K3 ["Pane 1"]
  LOADK R7 K4 ["Child"]
  SETLIST R3 R4 4 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ShowLayerID"]
  JUMPIFNOT R2 [+1]
  ADDK R1 R1 K1 [1]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["findDeepInstance"]
  MOVE R3 R0
  NEWTABLE R4 0 4
  LOADK R5 K3 ["Contents"]
  LOADK R6 K4 ["List"]
  LOADK R7 K5 ["Child"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K7 [tostring]
  CALL R8 1 1
  SETLIST R4 R5 4 [1]
  CALL R2 2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["1"]
  LOADK R7 K3 ["Left"]
  LOADK R8 K4 ["Text"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["2"]
  LOADK R7 K3 ["Left"]
  LOADK R8 K4 ["Text"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 8
  LOADK R6 K2 ["2"]
  LOADK R7 K3 ["Left"]
  LOADK R8 K4 ["Text"]
  LOADK R9 K5 ["PropertyCell"]
  LOADK R10 K6 ["Content"]
  LOADK R11 K7 ["TextInput"]
  LOADK R12 K8 ["Contents"]
  LOADK R13 K9 ["TextBox"]
  SETLIST R5 R6 8 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 6
  LOADK R6 K2 ["2"]
  LOADK R7 K3 ["Left"]
  LOADK R8 K4 ["Text"]
  LOADK R9 K5 ["Content"]
  LOADK R10 K6 ["Contents"]
  LOADK R11 K7 ["TextButton"]
  SETLIST R5 R6 6 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["2"]
  LOADK R7 K3 ["Right"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R8 R9 K5 ["Clear"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getLayerViewItem"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["findDeepInstance"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["2"]
  LOADK R7 K3 ["Right"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R8 R9 K5 ["History"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  RETURN R3 1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["findDeepInstance"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["List"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K3 [tostring]
  CALL R6 1 1
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  RETURN R2 1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["findDeepInstance"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["Tabs"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K3 [tostring]
  CALL R6 1 1
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["new"]
  LOADN R6 60
  CALL R5 1 1
  LOADN R8 1
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  DUPTABLE R9 K3 [{"layerMap", "timestamp"}]
  NEWTABLE R10 1 0
  NEWTABLE R11 1 0
  DUPTABLE R12 K7 [{"number", "vector2", "vector3"}]
  GETIMPORT R13 K10 [math.random]
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["number"]
  GETIMPORT R13 K12 [Vector2.new]
  GETIMPORT R14 K10 [math.random]
  CALL R14 0 1
  GETIMPORT R15 K10 [math.random]
  CALL R15 0 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K5 ["vector2"]
  GETIMPORT R14 K10 [math.random]
  CALL R14 0 1
  GETIMPORT R15 K10 [math.random]
  CALL R15 0 1
  GETIMPORT R16 K10 [math.random]
  CALL R16 0 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K14 [Vector3.new]
  CALL R13 -1 1
  SETTABLEKS R13 R12 K6 ["vector3"]
  SETTABLE R12 R11 R1
  SETTABLE R11 R10 R0
  SETTABLEKS R10 R9 K1 ["layerMap"]
  SUBK R11 R8 K16 [1]
  MULK R10 R11 K15 [0.1]
  SETTABLEKS R10 R9 K2 ["timestamp"]
  GETTABLEKS R13 R9 K1 ["layerMap"]
  GETTABLE R12 R13 R0
  GETTABLE R11 R12 R1
  GETTABLE R10 R11 R2
  JUMPIFNOTEQKNIL R10 [+49]
  JUMPIFNOTEQKS R4 K4 ["number"] [+10]
  GETTABLEKS R12 R9 K1 ["layerMap"]
  GETTABLE R11 R12 R0
  GETTABLE R10 R11 R1
  GETIMPORT R11 K10 [math.random]
  CALL R11 0 1
  SETTABLE R11 R10 R2
  JUMP [+37]
  JUMPIFNOTEQKS R4 K11 ["Vector2"] [+16]
  GETTABLEKS R12 R9 K1 ["layerMap"]
  GETTABLE R11 R12 R0
  GETTABLE R10 R11 R1
  GETIMPORT R11 K12 [Vector2.new]
  GETIMPORT R12 K10 [math.random]
  CALL R12 0 1
  GETIMPORT R13 K10 [math.random]
  CALL R13 0 -1
  CALL R11 -1 1
  SETTABLE R11 R10 R2
  JUMP [+20]
  JUMPIFNOTEQKS R4 K13 ["Vector3"] [+19]
  GETTABLEKS R12 R9 K1 ["layerMap"]
  GETTABLE R11 R12 R0
  GETTABLE R10 R11 R1
  GETIMPORT R12 K10 [math.random]
  CALL R12 0 1
  GETIMPORT R13 K10 [math.random]
  CALL R13 0 1
  GETIMPORT R14 K10 [math.random]
  CALL R14 0 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K14 [Vector3.new]
  CALL R11 -1 1
  SETTABLE R11 R10 R2
  MOVE R12 R9
  NAMECALL R10 R5 K17 ["push"]
  CALL R10 2 0
  FORNLOOP R6
  RETURN R5 1

PROTO_13:
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R5 5 1
  DUPTABLE R6 K2 [{"FrameBuffer", "HistoryField"}]
  SETTABLEKS R5 R6 K0 ["FrameBuffer"]
  DUPTABLE R7 K6 [{"id", "section", "field"}]
  SETTABLEKS R0 R7 K3 ["id"]
  SETTABLEKS R1 R7 K4 ["section"]
  SETTABLEKS R2 R7 K5 ["field"]
  SETTABLEKS R7 R6 K1 ["HistoryField"]
  RETURN R6 1

PROTO_14:
  LOADN R2 1
  GETUPVAL R3 0
  ORK R0 R3 K0 [1]
  LOADN R1 1
  FORNPREP R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["fireEvent"]
  GETTABLEKS R3 R4 K2 ["click"]
  GETUPVAL R4 2
  CALL R3 1 0
  FORNLOOP R0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["act"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  LOADN R2 2
  NAMECALL R0 R0 K0 ["click"]
  CALL R0 2 0
  GETUPVAL R0 0
  GETIMPORT R2 K4 [Enum.KeyCode.Delete]
  NAMECALL R0 R0 K5 ["sendKey"]
  CALL R0 2 0
  GETIMPORT R0 K8 [task.wait]
  LOADK R1 K9 [0.1]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Element"]
  GETTABLEKS R1 R2 K1 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["act"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["sendText"]
  CALL R0 2 0
  GETIMPORT R0 K3 [task.wait]
  LOADK R1 K4 [0.1]
  CALL R0 1 0
  GETUPVAL R0 0
  GETIMPORT R2 K8 [Enum.KeyCode.Return]
  NAMECALL R0 R0 K9 ["sendKey"]
  CALL R0 2 0
  GETIMPORT R0 K3 [task.wait]
  LOADK R1 K4 [0.1]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Element"]
  GETTABLEKS R2 R3 K1 ["new"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["act"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CALL R3 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VirtualInput"]
  GETTABLEKS R1 R2 K1 ["Mouse"]
  GETTABLEKS R0 R1 K2 ["mouseLeftDown"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VirtualInput"]
  GETTABLEKS R1 R2 K1 ["Mouse"]
  GETTABLEKS R0 R1 K3 ["mouseDrag"]
  GETUPVAL R1 1
  GETUPVAL R3 1
  GETUPVAL R4 2
  ADD R2 R3 R4
  LOADN R3 5
  CALL R0 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VirtualInput"]
  GETTABLEKS R1 R2 K1 ["Mouse"]
  GETTABLEKS R0 R1 K4 ["mouseLeftUp"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Element"]
  GETTABLEKS R2 R3 K1 ["new"]
  MOVE R3 R0
  CALL R2 1 1
  NAMECALL R3 R2 K2 ["getCenter"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["act"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CALL R4 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getLayerViewItem"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["findDeepInstance"]
  MOVE R5 R3
  NEWTABLE R6 0 3
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K3 [tostring]
  CALL R7 1 1
  LOADK R8 K4 ["Left"]
  LOADK R9 K5 ["Text"]
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K5 ["Text"]
  RETURN R5 1
  LOADNIL R5
  RETURN R5 1

PROTO_23:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getLayerViewLabel"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  FASTCALL1 ASSERT R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K2 [assert]
  CALL R5 1 0
  GETTABLEKS R5 R4 K3 ["Text"]
  JUMPIFEQ R5 R2 [+3]
  LOADB R5 0
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getLayerViewValue"]
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 1
  JUMPIFNOT R3 [+12]
  FASTCALL1 ASSERT R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K2 [assert]
  CALL R6 1 0
  GETTABLEKS R7 R5 K3 ["Text"]
  JUMPIFEQ R7 R3 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1
  JUMPIFEQKNIL R5 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["findDeepInstance"]
  MOVE R2 R0
  NEWTABLE R3 0 2
  LOADK R4 K1 ["Content"]
  LOADK R5 K2 ["1"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  JUMPIF R1 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  NEWTABLE R2 0 0
  NAMECALL R3 R1 K3 ["GetChildren"]
  CALL R3 1 3
  FORGPREP R3
  LOADK R10 K4 ["ImageButton"]
  NAMECALL R8 R7 K5 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R8 R7 K6 ["Name"]
  SETTABLE R7 R2 R8
  FORGLOOP R3 2 [-9]
  RETURN R2 1

PROTO_25:
  ORK R3 R2 K0 [3]
  LOADN R6 1
  SUBK R4 R3 K1 [1]
  LOADN R5 1
  FORNPREP R4
  GETIMPORT R7 K3 [pcall]
  MOVE R8 R0
  CALL R7 1 1
  JUMPIFNOT R7 [+1]
  RETURN R0 0
  GETIMPORT R7 K5 [print]
  GETIMPORT R8 K8 [string.format]
  LOADK R9 K9 ["WARN: Flaky test [%d/%d]"]
  MOVE R10 R6
  MOVE R11 R3
  CALL R8 3 -1
  CALL R7 -1 0
  JUMPIFNOT R1 [+2]
  MOVE R7 R1
  CALL R7 0 0
  FORNLOOP R4
  MOVE R4 R0
  CALL R4 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["ReactRoblox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Dev"]
  GETTABLEKS R3 R4 K9 ["Rhodium"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Dev"]
  GETTABLEKS R4 R5 K10 ["ReactTestingLibrary"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K11 ["Src"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K13 ["CircularBuffer"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K14 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K15 ["debugFlags"]
  CALL R7 1 1
  NEWTABLE R8 32 0
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K17 ["findDeepInstance"]
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K19 ["getLayerView"]
  DUPCLOSURE R9 K20 [PROTO_2]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K21 ["getLayerTree"]
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K23 ["getLayerViewItem"]
  DUPCLOSURE R9 K24 [PROTO_4]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K25 ["getLayerViewLabel"]
  DUPCLOSURE R9 K26 [PROTO_5]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K27 ["getLayerViewValue"]
  DUPCLOSURE R9 K28 [PROTO_6]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K29 ["getLayerViewTextBox"]
  DUPCLOSURE R9 K30 [PROTO_7]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K31 ["getLayerViewCheckBox"]
  DUPCLOSURE R9 K32 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K33 ["getLayerViewDeleteButton"]
  DUPCLOSURE R9 K34 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K35 ["getLayerViewHistoryButton"]
  DUPCLOSURE R9 K36 [PROTO_10]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K37 ["getLayerTreeItem"]
  DUPCLOSURE R9 K38 [PROTO_11]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K39 ["getLayerPanelTab"]
  DUPCLOSURE R9 K40 [PROTO_12]
  CAPTURE VAL R5
  DUPCLOSURE R10 K41 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R10 R8 K42 ["makeHistoryGraphProperties"]
  DUPCLOSURE R10 K43 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R10 R8 K44 ["clickComponent"]
  DUPCLOSURE R10 K45 [PROTO_17]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R10 R8 K46 ["clearText"]
  DUPCLOSURE R10 K47 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R10 R8 K48 ["sendText"]
  DUPCLOSURE R10 K49 [PROTO_21]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R10 R8 K50 ["dragComponent"]
  DUPCLOSURE R10 K51 [PROTO_22]
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K52 ["getLayerViewCell"]
  DUPCLOSURE R10 K53 [PROTO_23]
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K54 ["checkLayerViewItemLabels"]
  DUPCLOSURE R10 K55 [PROTO_24]
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K56 ["getBlendDots"]
  DUPCLOSURE R10 K57 [PROTO_25]
  SETTABLEKS R10 R8 K58 ["repeatFlakyTest"]
  RETURN R8 1
