PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["hasDragWaypoint"]
  JUMPIF R0 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["props"]
  GETTABLEKS R0 R1 K3 ["AddWaypoint"]
  CALL R0 0 0
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"hasDragWaypoint"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["hasDragWaypoint"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getKeyframeFromPosition"]
  MOVE R3 R0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["StartTick"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K3 ["EndTick"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["props"]
  GETTABLEKS R8 R9 K4 ["AbsolutePosition"]
  GETTABLEKS R7 R8 K5 ["X"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["props"]
  GETTABLEKS R9 R10 K7 ["TrackPadding"]
  DIVK R8 R9 K6 [2]
  ADD R6 R7 R8
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["props"]
  GETTABLEKS R9 R10 K8 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K5 ["X"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["props"]
  GETTABLEKS R9 R10 K7 ["TrackPadding"]
  SUB R7 R8 R9
  CALL R2 5 1
  JUMPIFNOT R1 [+23]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K9 ["SnapMode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["SNAP_MODES"]
  GETTABLEKS R4 R5 K11 ["None"]
  JUMPIFEQ R3 R4 [+12]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["getNearestFrame"]
  MOVE R4 R2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K13 ["FrameRate"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SelectedEvents"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["AnimationData"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["eventFilters"]
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["newEvents"]
  MOVE R6 R2
  MOVE R7 R1
  MOVE R8 R3
  MOVE R9 R0
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["DragContext"]
  GETUPVAL R4 0
  DUPTABLE R6 K10 [{"dragging", "dragTick", "hasDragWaypoint"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["dragging"]
  SETTABLEKS R0 R6 K8 ["dragTick"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["hasDragWaypoint"]
  NAMECALL R4 R4 K11 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTickFromPosition"]
  GETTABLEKS R2 R0 K1 ["Position"]
  LOADB R3 1
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["dragTick"]
  JUMPIFEQ R2 R1 [+32]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["DragContext"]
  JUMPIFNOT R2 [+27]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["addDragWaypoint"]
  CALL R2 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["DragContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["moveEvents"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["props"]
  GETTABLEKS R2 R3 K8 ["MoveSelectedEvents"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["DragContext"]
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K9 [{"dragTick"}]
  SETTABLEKS R1 R4 K3 ["dragTick"]
  NAMECALL R2 R2 K10 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"dragging", "dragTick", "hasDragWaypoint"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["dragging"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["None"]
  SETTABLEKS R3 R2 K1 ["dragTick"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["hasDragWaypoint"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["DragContext"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["showContextMenu"]
  JUMPIF R1 [+36]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["updateSelectDragStart"]
  GETIMPORT R2 K5 [Vector2.new]
  GETTABLEKS R4 R0 K6 ["Position"]
  GETTABLEKS R3 R4 K7 ["X"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["TRACK_HEIGHT"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["updateSelectDragEnd"]
  GETIMPORT R2 K5 [Vector2.new]
  GETTABLEKS R4 R0 K6 ["Position"]
  GETTABLEKS R3 R4 K7 ["X"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["TRACK_HEIGHT"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  DUPTABLE R3 K11 [{"draggingSelection"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["draggingSelection"]
  NAMECALL R1 R1 K12 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["DeselectAllEvents"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K2 ["Position"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["selectDragStart"]
  NAMECALL R2 R2 K4 ["getValue"]
  CALL R2 1 1
  GETIMPORT R3 K7 [Vector2.new]
  GETTABLEKS R5 R1 K8 ["X"]
  GETTABLEKS R6 R2 K8 ["X"]
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K11 [math.min]
  CALL R4 2 1
  LOADN R5 0
  CALL R3 2 1
  GETIMPORT R4 K7 [Vector2.new]
  GETTABLEKS R6 R1 K8 ["X"]
  GETTABLEKS R7 R2 K8 ["X"]
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K13 [math.max]
  CALL R5 2 1
  LOADN R6 0
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K14 ["StartTick"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K15 ["EndTick"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K16 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K8 ["X"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K17 ["TrackPadding"]
  SUB R7 R8 R9
  SUB R9 R6 R5
  DIV R8 R7 R9
  GETIMPORT R9 K7 [Vector2.new]
  DIVK R10 R8 K18 [2]
  LOADN R11 0
  CALL R9 2 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K19 ["getTickFromPosition"]
  ADD R11 R3 R9
  LOADB R12 0
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["getTickFromPosition"]
  SUB R12 R4 R9
  LOADB R13 0
  CALL R11 2 1
  GETIMPORT R12 K21 [ipairs]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["props"]
  GETTABLEKS R16 R17 K22 ["AnimationData"]
  GETTABLEKS R15 R16 K23 ["Events"]
  GETTABLEKS R13 R15 K24 ["Keyframes"]
  CALL R12 1 3
  FORGPREP_INEXT R12
  JUMPIFNOTLE R10 R16 [+11]
  JUMPIFNOTLE R16 R11 [+9]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K0 ["props"]
  GETTABLEKS R17 R18 K25 ["SelectEvent"]
  MOVE R18 R16
  LOADB R19 1
  CALL R17 2 0
  FORGLOOP R12 2 [inext] [-13]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K26 ["updateSelectDragEnd"]
  GETIMPORT R13 K7 [Vector2.new]
  GETTABLEKS R14 R1 K8 ["X"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K27 ["TRACK_HEIGHT"]
  MULK R15 R16 K18 [2]
  CALL R13 2 -1
  CALL R12 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"draggingSelection"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["None"]
  SETTABLEKS R3 R2 K0 ["draggingSelection"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["updateSelectDragStart"]
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["updateSelectDragEnd"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetPlayState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PLAY_STATE"]
  GETTABLEKS R1 R2 K3 ["Pause"]
  CALL R0 1 0
  GETUPVAL R0 0
  DUPTABLE R2 K5 [{"showContextMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["showContextMenu"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showContextMenu"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showContextMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"eventEditingTick"}]
  MOVE R4 R0
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["None"]
  SETTABLEKS R4 R3 K0 ["eventEditingTick"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Analytics"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["SetEvents"]
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Analytics"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_12:
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["eventFilters"]
  CALL R2 1 1
  MOVE R1 R2
  GETTABLE R3 R1 R0
  JUMPIF R3 [+2]
  LOADB R2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 1
  DUPTABLE R4 K2 [{"eventFilters"}]
  SETTABLEKS R1 R4 K1 ["eventFilters"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"eventFilters"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["eventFilters"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  NEWTABLE R0 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R1 R4 K1 ["availableEvents"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADB R6 1
  SETTABLE R6 R0 R5
  FORGLOOP R1 2 [-3]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"eventFilters"}]
  SETTABLEKS R0 R3 K2 ["eventFilters"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K8 [{"dragging", "draggingSelection", "dragTick", "showContextMenu", "eventEditingTick", "hasDragWaypoint", "availableEvents", "eventFilters"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["dragging"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["draggingSelection"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["dragTick"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["showContextMenu"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["eventEditingTick"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["hasDragWaypoint"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["availableEvents"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K7 ["eventFilters"]
  SETTABLEKS R1 R0 K9 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K11 ["selectDragStart"]
  SETTABLEKS R2 R0 K12 ["updateSelectDragStart"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K13 ["selectDragEnd"]
  SETTABLEKS R2 R0 K14 ["updateSelectDragEnd"]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["DragContext"]
  LOADB R1 0
  SETTABLEKS R1 R0 K16 ["isMultiSelecting"]
  LOADB R1 0
  SETTABLEKS R1 R0 K17 ["mouseDownOnEvent"]
  LOADB R1 0
  SETTABLEKS R1 R0 K18 ["mouseDownInTimeline"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K19 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K20 ["doubleClickDetector"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["addDragWaypoint"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K22 ["getTickFromPosition"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K23 ["onEventDragStarted"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K24 ["onEventDragMoved"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K25 ["onEventDragEnded"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K26 ["onSelectDragStarted"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K27 ["onSelectDragMoved"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K28 ["onSelectDragEnded"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K29 ["showMenu"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K30 ["hideMenu"]
  NEWCLOSURE R1 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K31 ["setEventEditingTick"]
  NEWCLOSURE R1 P11
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K32 ["setEventsHandler"]
  NEWCLOSURE R1 P12
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K33 ["toggleEventFilter"]
  NEWCLOSURE R1 P13
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K34 ["clearEventFilters"]
  NEWCLOSURE R1 P14
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K35 ["setAllEventFilters"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R3 R1 K0 ["UserInputType"]
  GETIMPORT R4 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["isMultiSelectKey"]
  GETTABLEKS R4 R1 K5 ["KeyCode"]
  CALL R3 1 1
  JUMPIFNOT R3 [+22]
  LOADB R3 1
  SETTABLEKS R3 R0 K6 ["isMultiSelecting"]
  RETURN R0 0
  GETTABLEKS R3 R1 K0 ["UserInputType"]
  GETIMPORT R4 K8 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K9 ["props"]
  GETTABLEKS R3 R4 K10 ["DeselectAllEvents"]
  CALL R3 0 0
  LOADB R3 1
  SETTABLEKS R3 R0 K11 ["mouseDownInTimeline"]
  GETTABLEKS R3 R0 K12 ["onSelectDragStarted"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R1 K0 ["UserInputType"]
  GETIMPORT R4 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["isMultiSelectKey"]
  GETTABLEKS R4 R1 K5 ["KeyCode"]
  CALL R3 1 1
  JUMPIFNOT R3 [+71]
  LOADB R3 0
  SETTABLEKS R3 R0 K6 ["isMultiSelecting"]
  RETURN R0 0
  GETTABLEKS R3 R1 K0 ["UserInputType"]
  GETIMPORT R4 K8 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R3 R4 [+26]
  GETTABLEKS R3 R0 K9 ["getTickFromPosition"]
  GETTABLEKS R4 R1 K10 ["Position"]
  LOADB R5 1
  CALL R3 2 1
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K12 ["SetRightClickContextInfo"]
  DUPTABLE R5 K14 [{"Tick"}]
  SETTABLEKS R3 R5 K13 ["Tick"]
  CALL R4 1 0
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K15 ["SelectEvent"]
  MOVE R5 R3
  LOADB R6 0
  CALL R4 2 0
  GETTABLEKS R4 R0 K16 ["showMenu"]
  CALL R4 0 0
  RETURN R0 0
  GETTABLEKS R3 R1 K0 ["UserInputType"]
  GETIMPORT R4 K18 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+31]
  GETTABLEKS R3 R0 K9 ["getTickFromPosition"]
  GETTABLEKS R4 R1 K10 ["Position"]
  LOADB R5 1
  CALL R3 2 1
  GETTABLEKS R4 R0 K19 ["doubleClickDetector"]
  NAMECALL R4 R4 K20 ["isDoubleClick"]
  CALL R4 1 1
  JUMPIFNOT R4 [+18]
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K21 ["DeselectAllEvents"]
  CALL R4 0 0
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K15 ["SelectEvent"]
  MOVE R5 R3
  LOADB R6 0
  CALL R4 2 0
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K22 ["SetEventEditingTick"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["SelectEvent"]
  MOVE R3 R1
  LOADB R4 0
  CALL R2 2 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["SetRightClickContextInfo"]
  DUPTABLE R3 K5 [{"OnEvent", "Tick"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["OnEvent"]
  SETTABLEKS R1 R3 K4 ["Tick"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K6 ["showMenu"]
  CALL R2 0 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R4 R3 K0 ["UserInputType"]
  GETIMPORT R5 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R4 R5 [+23]
  LOADB R4 1
  SETTABLEKS R4 R0 K4 ["mouseDownOnEvent"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R4 R0 K5 ["isMultiSelecting"]
  JUMPIFNOT R4 [+15]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K7 ["DeselectEvent"]
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K8 ["SelectEvent"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K5 ["isMultiSelecting"]
  CALL R4 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R4 R3 K0 ["UserInputType"]
  GETIMPORT R5 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R4 R5 [+12]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R4 R0 K4 ["mouseDownOnEvent"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R0 K5 ["onEventDragStarted"]
  MOVE R5 R1
  CALL R4 1 0
  LOADB R4 0
  SETTABLEKS R4 R0 K4 ["mouseDownOnEvent"]
  GETTABLEKS R4 R3 K0 ["UserInputType"]
  GETIMPORT R5 K7 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R4 R5 [+29]
  LOADB R4 0
  SETTABLEKS R4 R0 K4 ["mouseDownOnEvent"]
  JUMPIFNOT R2 [+24]
  GETTABLEKS R4 R0 K8 ["doubleClickDetector"]
  NAMECALL R4 R4 K9 ["isDoubleClick"]
  CALL R4 1 1
  JUMPIFNOT R4 [+18]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K11 ["DeselectAllEvents"]
  CALL R4 0 0
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K12 ["SelectEvent"]
  MOVE R5 R1
  LOADB R6 0
  CALL R4 2 0
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K13 ["SetEventEditingTick"]
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["AnimationData"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K2 ["AnimationData"]
  GETTABLEKS R3 R4 K3 ["Events"]
  JUMPIF R3 [+1]
  LOADNIL R3
  NEWTABLE R4 0 0
  JUMPIFNOT R3 [+15]
  GETTABLEKS R5 R3 K4 ["Data"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R10 R9
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  LOADB R15 1
  SETTABLE R15 R4 R13
  FORGLOOP R10 2 [-3]
  FORGLOOP R5 2 [-9]
  GETUPVAL R5 0
  MOVE R6 R4
  CALL R5 1 1
  GETIMPORT R6 K7 [table.sort]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 1
  GETTABLEKS R7 R2 K8 ["availableEvents"]
  MOVE R8 R5
  CALL R6 2 2
  GETUPVAL R8 2
  GETTABLEKS R9 R2 K9 ["eventFilters"]
  CALL R8 1 1
  MOVE R9 R6
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  LOADB R14 1
  SETTABLE R14 R8 R13
  FORGLOOP R9 2 [-3]
  MOVE R9 R7
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  LOADNIL R14
  SETTABLE R14 R8 R13
  FORGLOOP R9 2 [-3]
  DUPTABLE R11 K10 [{"availableEvents", "eventFilters"}]
  SETTABLEKS R5 R11 K8 ["availableEvents"]
  SETTABLEKS R8 R11 K9 ["eventFilters"]
  NAMECALL R9 R0 K11 ["setState"]
  CALL R9 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setEventEditingTick"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["EventEditingTick"]
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R0 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["EventEditingTick"]
  GETTABLEKS R5 R3 K3 ["eventEditingTick"]
  JUMPIFEQ R4 R5 [+17]
  GETTABLEKS R4 R2 K2 ["EventEditingTick"]
  JUMPIFEQKNIL R4 [+8]
  GETIMPORT R4 K5 [spawn]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CALL R4 1 0
  JUMP [+5]
  GETTABLEKS R4 R0 K6 ["setEventEditingTick"]
  GETTABLEKS R5 R2 K2 ["EventEditingTick"]
  CALL R4 1 0
  GETTABLEKS R5 R2 K7 ["AnimationData"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R2 K7 ["AnimationData"]
  GETTABLEKS R4 R5 K8 ["Events"]
  JUMPIF R4 [+1]
  LOADNIL R4
  GETTABLEKS R6 R1 K7 ["AnimationData"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R1 K7 ["AnimationData"]
  GETTABLEKS R5 R6 K8 ["Events"]
  JUMPIF R5 [+1]
  LOADNIL R5
  JUMPIFEQ R4 R5 [+5]
  MOVE R8 R5
  NAMECALL R6 R0 K9 ["refreshEventNames"]
  CALL R6 2 0
  RETURN R0 0

PROTO_24:
  NAMECALL R1 R0 K0 ["refreshEventNames"]
  CALL R1 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFEQ R2 R3 [+6]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["handleTimelineInputBegan"]
  CALL R2 2 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFEQ R2 R3 [+6]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["handleTimelineInputEnded"]
  CALL R2 2 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["handleEventRightClick"]
  CALL R1 2 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["handleEventInputBegan"]
  CALL R3 4 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["handleEventInputEnded"]
  CALL R3 4 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["handleTimelineInputBegan"]
  CALL R2 3 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["handleTimelineInputEnded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_32:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Active"]
  GETTABLEKS R4 R1 K3 ["AbsolutePosition"]
  GETTABLEKS R5 R1 K4 ["AbsoluteSize"]
  GETTABLEKS R6 R1 K5 ["AnimationData"]
  GETTABLEKS R7 R1 K6 ["StartTick"]
  GETTABLEKS R8 R1 K7 ["EndTick"]
  GETTABLEKS R9 R2 K8 ["dragging"]
  GETTABLEKS R10 R2 K9 ["draggingSelection"]
  GETTABLEKS R11 R2 K10 ["showContextMenu"]
  GETTABLEKS R12 R2 K11 ["eventEditingTick"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K13 ["Frame"]
  NEWTABLE R15 8 0
  LOADN R16 0
  SETTABLEKS R16 R15 K14 ["LayoutOrder"]
  GETIMPORT R16 K17 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K18 ["TRACK_HEIGHT"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K19 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K22 ["InputBegan"]
  NEWCLOSURE R17 P0
  CAPTURE VAL R0
  SETTABLE R17 R15 R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K23 ["InputEnded"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R0
  SETTABLE R17 R15 R16
  DUPTABLE R16 K30 [{"Track", "KeyboardListener", "DragTarget", "MultiSelectBox", "EventActions", "EditEventsDialog"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K46 [{"Events", "SelectedEvents", "EditingTick", "Size", "Width", "TrackPadding", "StartTick", "EndTick", "ShowBackground", "ZIndex", "AvailableEvents", "EventFilters", "ToggleEventFilter", "ClearEventFilters", "SetAllEventFilters", "OnEventRightClick", "OnEventInputBegan", "OnEventInputEnded"}]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R20 R6 K31 ["Events"]
  JUMPIF R20 [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K31 ["Events"]
  GETTABLEKS R20 R1 K32 ["SelectedEvents"]
  SETTABLEKS R20 R19 K32 ["SelectedEvents"]
  SETTABLEKS R12 R19 K33 ["EditingTick"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K18 ["TRACK_HEIGHT"]
  CALL R20 4 1
  SETTABLEKS R20 R19 K19 ["Size"]
  GETTABLEKS R21 R5 K47 ["X"]
  GETTABLEKS R23 R0 K0 ["props"]
  GETTABLEKS R22 R23 K35 ["TrackPadding"]
  SUB R20 R21 R22
  SETTABLEKS R20 R19 K34 ["Width"]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K35 ["TrackPadding"]
  SETTABLEKS R20 R19 K35 ["TrackPadding"]
  SETTABLEKS R7 R19 K6 ["StartTick"]
  SETTABLEKS R8 R19 K7 ["EndTick"]
  LOADB R20 1
  SETTABLEKS R20 R19 K36 ["ShowBackground"]
  LOADN R20 1
  SETTABLEKS R20 R19 K37 ["ZIndex"]
  GETTABLEKS R21 R0 K1 ["state"]
  GETTABLEKS R20 R21 K48 ["availableEvents"]
  SETTABLEKS R20 R19 K38 ["AvailableEvents"]
  GETTABLEKS R21 R0 K1 ["state"]
  GETTABLEKS R20 R21 K49 ["eventFilters"]
  SETTABLEKS R20 R19 K39 ["EventFilters"]
  GETTABLEKS R20 R0 K50 ["toggleEventFilter"]
  SETTABLEKS R20 R19 K40 ["ToggleEventFilter"]
  GETTABLEKS R20 R0 K51 ["clearEventFilters"]
  SETTABLEKS R20 R19 K41 ["ClearEventFilters"]
  GETTABLEKS R20 R0 K52 ["setAllEventFilters"]
  SETTABLEKS R20 R19 K42 ["SetAllEventFilters"]
  NEWCLOSURE R20 P2
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K43 ["OnEventRightClick"]
  NEWCLOSURE R20 P3
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K44 ["OnEventInputBegan"]
  NEWCLOSURE R20 P4
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K45 ["OnEventInputEnded"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K24 ["Track"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K55 [{"OnKeyPressed", "OnKeyReleased"}]
  NEWCLOSURE R20 P5
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K53 ["OnKeyPressed"]
  NEWCLOSURE R20 P6
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K54 ["OnKeyReleased"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["KeyboardListener"]
  MOVE R17 R9
  JUMPIFNOT R17 [+14]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K58 [{"OnDragMoved", "OnDragEnded"}]
  GETTABLEKS R20 R0 K59 ["onEventDragMoved"]
  SETTABLEKS R20 R19 K56 ["OnDragMoved"]
  GETTABLEKS R20 R0 K60 ["onEventDragEnded"]
  SETTABLEKS R20 R19 K57 ["OnDragEnded"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["DragTarget"]
  MOVE R17 R10
  JUMPIFNOT R17 [+29]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K64 [{"OnDragMoved", "OnDragEnded", "SelectionStart", "SelectionEnd", "SourceExtents"}]
  GETTABLEKS R20 R0 K65 ["onSelectDragMoved"]
  SETTABLEKS R20 R19 K56 ["OnDragMoved"]
  GETTABLEKS R20 R0 K66 ["onSelectDragEnded"]
  SETTABLEKS R20 R19 K57 ["OnDragEnded"]
  GETTABLEKS R20 R0 K67 ["selectDragStart"]
  SETTABLEKS R20 R19 K61 ["SelectionStart"]
  GETTABLEKS R20 R0 K68 ["selectDragEnd"]
  SETTABLEKS R20 R19 K62 ["SelectionEnd"]
  GETIMPORT R20 K70 [Rect.new]
  MOVE R21 R4
  ADD R22 R4 R5
  CALL R20 2 1
  SETTABLEKS R20 R19 K63 ["SourceExtents"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["MultiSelectBox"]
  MOVE R17 R3
  JUMPIFNOT R17 [+24]
  MOVE R17 R6
  JUMPIFNOT R17 [+22]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K74 [{"ShowMenu", "EventFilters", "OnMenuOpened", "OnEditEvents"}]
  SETTABLEKS R11 R19 K71 ["ShowMenu"]
  GETTABLEKS R21 R0 K1 ["state"]
  GETTABLEKS R20 R21 K49 ["eventFilters"]
  SETTABLEKS R20 R19 K39 ["EventFilters"]
  GETTABLEKS R20 R0 K75 ["hideMenu"]
  SETTABLEKS R20 R19 K72 ["OnMenuOpened"]
  GETTABLEKS R20 R1 K76 ["SetEventEditingTick"]
  SETTABLEKS R20 R19 K73 ["OnEditEvents"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["EventActions"]
  MOVE R17 R6
  JUMPIFNOT R17 [+22]
  MOVE R17 R12
  JUMPIFNOT R17 [+20]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K80 [{"Events", "Tick", "OnSaved", "OnClose"}]
  GETTABLEKS R20 R6 K31 ["Events"]
  SETTABLEKS R20 R19 K31 ["Events"]
  SETTABLEKS R12 R19 K77 ["Tick"]
  GETTABLEKS R20 R0 K81 ["setEventsHandler"]
  SETTABLEKS R20 R19 K78 ["OnSaved"]
  GETTABLEKS R20 R1 K76 ["SetEventEditingTick"]
  SETTABLEKS R20 R19 K79 ["OnClose"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["EditEventsDialog"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_33:
  DUPTABLE R2 K6 [{"AnimationData", "Active", "SelectedEvents", "EventEditingTick", "FrameRate", "SnapMode"}]
  GETTABLEKS R3 R0 K0 ["AnimationData"]
  SETTABLEKS R3 R2 K0 ["AnimationData"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K1 ["Active"]
  SETTABLEKS R3 R2 K1 ["Active"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K2 ["SelectedEvents"]
  SETTABLEKS R3 R2 K2 ["SelectedEvents"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K3 ["EventEditingTick"]
  SETTABLEKS R3 R2 K3 ["EventEditingTick"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K4 ["FrameRate"]
  SETTABLEKS R3 R2 K4 ["FrameRate"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K5 ["SnapMode"]
  SETTABLEKS R3 R2 K5 ["SnapMode"]
  RETURN R2 1

PROTO_34:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R3 0 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R1 2
  NEWTABLE R2 0 0
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_40:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_41:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_43:
  DUPTABLE R1 K9 [{"AddWaypoint", "SetEvents", "SelectEvent", "DeselectEvent", "MoveSelectedEvents", "DeselectAllEvents", "SetRightClickContextInfo", "SetEventEditingTick", "SetPlayState"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["AddWaypoint"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetEvents"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["SelectEvent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["DeselectEvent"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["MoveSelectedEvents"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K5 ["DeselectAllEvents"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K6 ["SetRightClickContextInfo"]
  NEWCLOSURE R3 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  ORK R2 R3 K10 []
  SETTABLEKS R2 R1 K7 ["SetEventEditingTick"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R2 R1 K8 ["SetPlayState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["DragListener"]
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R8 R3 K10 ["UI"]
  GETTABLEKS R7 R8 K14 ["KeyboardListener"]
  GETTABLEKS R8 R3 K15 ["Dash"]
  GETTABLEKS R9 R8 K16 ["copy"]
  GETTABLEKS R10 R8 K17 ["keys"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K19 ["Util"]
  GETTABLEKS R12 R13 K20 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Util"]
  GETTABLEKS R13 R14 K21 ["TrackUtils"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K19 ["Util"]
  GETTABLEKS R14 R15 K22 ["KeyframeUtils"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K19 ["Util"]
  GETTABLEKS R15 R16 K23 ["Input"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K19 ["Util"]
  GETTABLEKS R16 R17 K24 ["DoubleClickDetector"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K19 ["Util"]
  GETTABLEKS R17 R18 K25 ["compare"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K18 ["Src"]
  GETTABLEKS R19 R20 K19 ["Util"]
  GETTABLEKS R18 R19 K26 ["DragContext"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K18 ["Src"]
  GETTABLEKS R20 R21 K27 ["Components"]
  GETTABLEKS R19 R20 K28 ["EventTrack"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K18 ["Src"]
  GETTABLEKS R21 R22 K27 ["Components"]
  GETTABLEKS R20 R21 K29 ["SelectionBox"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K18 ["Src"]
  GETTABLEKS R22 R23 K27 ["Components"]
  GETTABLEKS R21 R22 K30 ["EventActions"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K18 ["Src"]
  GETTABLEKS R24 R25 K31 ["Thunks"]
  GETTABLEKS R23 R24 K32 ["History"]
  GETTABLEKS R22 R23 K33 ["AddWaypoint"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K18 ["Src"]
  GETTABLEKS R25 R26 K31 ["Thunks"]
  GETTABLEKS R24 R25 K34 ["Events"]
  GETTABLEKS R23 R24 K35 ["SetEvents"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R27 R0 K18 ["Src"]
  GETTABLEKS R26 R27 K31 ["Thunks"]
  GETTABLEKS R25 R26 K34 ["Events"]
  GETTABLEKS R24 R25 K36 ["SelectEvent"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R28 R0 K18 ["Src"]
  GETTABLEKS R27 R28 K31 ["Thunks"]
  GETTABLEKS R26 R27 K34 ["Events"]
  GETTABLEKS R25 R26 K37 ["DeselectEvent"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R29 R0 K18 ["Src"]
  GETTABLEKS R28 R29 K31 ["Thunks"]
  GETTABLEKS R27 R28 K34 ["Events"]
  GETTABLEKS R26 R27 K38 ["DeleteSelectedEvents"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R30 R0 K18 ["Src"]
  GETTABLEKS R29 R30 K31 ["Thunks"]
  GETTABLEKS R28 R29 K34 ["Events"]
  GETTABLEKS R27 R28 K39 ["MoveSelectedEvents"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K18 ["Src"]
  GETTABLEKS R29 R30 K40 ["Actions"]
  GETTABLEKS R28 R29 K41 ["SetEventEditingTick"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K18 ["Src"]
  GETTABLEKS R30 R31 K40 ["Actions"]
  GETTABLEKS R29 R30 K42 ["SetPlayState"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R32 R0 K18 ["Src"]
  GETTABLEKS R31 R32 K40 ["Actions"]
  GETTABLEKS R30 R31 K43 ["SetRightClickContextInfo"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R33 R0 K18 ["Src"]
  GETTABLEKS R32 R33 K40 ["Actions"]
  GETTABLEKS R31 R32 K44 ["SetSelectedEvents"]
  CALL R30 1 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R34 R0 K18 ["Src"]
  GETTABLEKS R33 R34 K40 ["Actions"]
  GETTABLEKS R32 R33 K45 ["SetSelectedKeyframes"]
  CALL R31 1 1
  GETIMPORT R32 K5 [require]
  GETTABLEKS R36 R0 K18 ["Src"]
  GETTABLEKS R35 R36 K27 ["Components"]
  GETTABLEKS R34 R35 K46 ["EditEventsDialog"]
  GETTABLEKS R33 R34 K46 ["EditEventsDialog"]
  CALL R32 1 1
  GETTABLEKS R33 R1 K47 ["PureComponent"]
  LOADK R35 K48 ["EventsController"]
  NAMECALL R33 R33 K49 ["extend"]
  CALL R33 2 1
  DUPCLOSURE R34 K50 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R9
  SETTABLEKS R34 R33 K51 ["init"]
  DUPCLOSURE R34 K52 [PROTO_16]
  CAPTURE VAL R14
  SETTABLEKS R34 R33 K53 ["handleTimelineInputBegan"]
  DUPCLOSURE R34 K54 [PROTO_17]
  CAPTURE VAL R14
  SETTABLEKS R34 R33 K55 ["handleTimelineInputEnded"]
  DUPCLOSURE R34 K56 [PROTO_18]
  SETTABLEKS R34 R33 K57 ["handleEventRightClick"]
  DUPCLOSURE R34 K58 [PROTO_19]
  SETTABLEKS R34 R33 K59 ["handleEventInputBegan"]
  DUPCLOSURE R34 K60 [PROTO_20]
  SETTABLEKS R34 R33 K61 ["handleEventInputEnded"]
  DUPCLOSURE R34 K62 [PROTO_21]
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R9
  SETTABLEKS R34 R33 K63 ["refreshEventNames"]
  DUPCLOSURE R34 K64 [PROTO_23]
  SETTABLEKS R34 R33 K65 ["didUpdate"]
  DUPCLOSURE R34 K66 [PROTO_24]
  SETTABLEKS R34 R33 K67 ["didMount"]
  DUPCLOSURE R34 K68 [PROTO_32]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R32
  SETTABLEKS R34 R33 K69 ["render"]
  DUPCLOSURE R34 K70 [PROTO_33]
  DUPCLOSURE R35 K71 [PROTO_43]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R31
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R30
  CAPTURE VAL R29
  CAPTURE VAL R27
  CAPTURE VAL R28
  MOVE R36 R6
  DUPTABLE R37 K73 [{"Analytics"}]
  GETTABLEKS R38 R5 K72 ["Analytics"]
  SETTABLEKS R38 R37 K72 ["Analytics"]
  CALL R36 1 1
  MOVE R37 R33
  CALL R36 1 1
  MOVE R33 R36
  GETTABLEKS R36 R2 K74 ["connect"]
  MOVE R37 R34
  MOVE R38 R35
  CALL R36 2 1
  MOVE R37 R33
  CALL R36 1 1
  MOVE R33 R36
  RETURN R33 1
