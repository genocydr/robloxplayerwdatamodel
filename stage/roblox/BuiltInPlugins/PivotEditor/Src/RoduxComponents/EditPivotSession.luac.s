PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["None"]
  JUMPIFEQ R0 R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["NoSelection"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["DraggerContext"]
  SETTABLEKS R2 R0 K4 ["_draggerContext"]
  GETTABLEKS R2 R0 K4 ["_draggerContext"]
  JUMPIF R2 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["new"]
  MOVE R3 R1
  GETIMPORT R4 K7 [game]
  GETIMPORT R5 K9 [settings]
  CALL R5 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K10 ["Selection"]
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K4 ["_draggerContext"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["statusMessage"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["None"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R2 R0 K3 ["_draggerContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["setPivotIndicator"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_oldShowPivot"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["editingMode"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Transform"]
  JUMPIFNOTEQ R1 R2 [+62]
  NEWTABLE R1 0 3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["new"]
  GETTABLEKS R3 R0 K4 ["_draggerContext"]
  DUPTABLE R4 K9 [{"Outset", "ShowBoundingBox", "Summonable", "MustPositionAtPivot"}]
  LOADK R5 K10 [0.5]
  SETTABLEKS R5 R4 K5 ["Outset"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["ShowBoundingBox"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["Summonable"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["MustPositionAtPivot"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["MoveHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  GETTABLEKS R6 R0 K4 ["_draggerContext"]
  LOADK R7 K12 ["EditPivot"]
  CALL R5 2 -1
  CALL R2 -1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["new"]
  GETTABLEKS R4 R0 K4 ["_draggerContext"]
  DUPTABLE R5 K13 [{"ShowBoundingBox", "Summonable"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["ShowBoundingBox"]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["Summonable"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["RotateHandlesImplementation"]
  GETTABLEKS R6 R7 K3 ["new"]
  GETTABLEKS R7 R0 K4 ["_draggerContext"]
  LOADK R8 K12 ["EditPivot"]
  CALL R6 2 -1
  CALL R3 -1 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["new"]
  GETTABLEKS R5 R0 K4 ["_draggerContext"]
  CALL R4 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["editingMode"]
  NEWTABLE R2 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  NAMECALL R4 R3 K4 ["GetMouse"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Transform"]
  JUMPIFEQ R1 R5 [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  JUMPIFNOTEQ R1 R5 [+44]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["Transform"]
  JUMPIFEQ R1 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K12 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  SETTABLEKS R4 R8 K8 ["Mouse"]
  GETTABLEKS R9 R0 K13 ["_draggerContext"]
  SETTABLEKS R9 R8 K9 ["DraggerContext"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K10 ["DraggerSchema"]
  DUPTABLE R9 K19 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "HandlesList"}]
  LOADK R10 K20 ["EditPivot"]
  SETTABLEKS R10 R9 K14 ["AnalyticsName"]
  LOADB R10 0
  SETTABLEKS R10 R9 K15 ["AllowDragSelect"]
  SETTABLEKS R5 R9 K16 ["AllowFreeformDrag"]
  LOADB R10 0
  SETTABLEKS R10 R9 K17 ["ShowLocalSpaceIndicator"]
  NAMECALL R10 R0 K21 ["_getCurrentDraggerHandles"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K18 ["HandlesList"]
  SETTABLEKS R9 R8 K11 ["DraggerSettings"]
  CALL R6 2 1
  SETTABLEKS R6 R2 K22 ["DraggerToolComponent"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 4
  CALL R5 1 1
  SETTABLEKS R5 R2 K23 ["SelectionUpdaterBound"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K24 ["createFragment"]
  MOVE R6 R2
  CALL R5 1 -1
  RETURN R5 -1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["statusMessage"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["None"]
  JUMPIFEQ R3 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R5 R0 K3 ["_draggerContext"]
  MOVE R7 R4
  NAMECALL R5 R5 K4 ["setPivotIndicator"]
  CALL R5 2 0
  GETTABLEKS R5 R1 K1 ["statusMessage"]
  JUMPIFEQ R5 R3 [+41]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["None"]
  JUMPIFEQ R5 R6 [+7]
  GETTABLEKS R6 R1 K5 ["ToastNotification"]
  MOVE R8 R5
  NAMECALL R6 R6 K6 ["hideNotification"]
  CALL R6 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["None"]
  JUMPIFEQ R3 R7 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["NoSelection"]
  JUMPIFNOTEQ R3 R7 [+3]
  LOADB R6 0
  JUMP [+2]
  LOADB R6 1
  JUMP [0]
  JUMPIFNOT R6 [+14]
  GETTABLEKS R6 R1 K8 ["Localization"]
  LOADK R9 K9 ["Notification"]
  MOVE R10 R3
  NAMECALL R7 R6 K10 ["getText"]
  CALL R7 3 1
  GETTABLEKS R8 R1 K5 ["ToastNotification"]
  MOVE R10 R7
  MOVE R11 R3
  NAMECALL R8 R8 K11 ["showNotification"]
  CALL R8 3 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  GETTABLEKS R3 R0 K1 ["_oldShowPivot"]
  NAMECALL R1 R1 K2 ["setPivotIndicator"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R2 K3 [{"editingMode", "statusMessage", "targetObject"}]
  GETTABLEKS R3 R0 K0 ["editingMode"]
  SETTABLEKS R3 R2 K0 ["editingMode"]
  GETTABLEKS R3 R0 K1 ["statusMessage"]
  SETTABLEKS R3 R2 K1 ["statusMessage"]
  GETTABLEKS R3 R0 K2 ["targetObject"]
  SETTABLEKS R3 R2 K2 ["targetObject"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"beginSelectingPivot", "doneSelectingPivot"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["beginSelectingPivot"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["doneSelectingPivot"]
  RETURN R1 1

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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K8 ["DraggerFramework"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K9 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R3 K12 ["DraggerTools"]
  GETTABLEKS R7 R8 K13 ["DraggerToolComponent"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R3 K14 ["Handles"]
  GETTABLEKS R8 R9 K15 ["MoveHandles"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R3 K14 ["Handles"]
  GETTABLEKS R9 R10 K16 ["RotateHandles"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["DraggerSchemaPivot"]
  GETTABLEKS R10 R11 K19 ["PivotHandle"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["DraggerSchemaPivot"]
  GETTABLEKS R11 R12 K20 ["DraggerSchema"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["DraggerSchemaPivot"]
  GETTABLEKS R12 R13 K21 ["DraggerContext_Pivot"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K22 ["RoduxComponents"]
  GETTABLEKS R13 R14 K23 ["SelectionUpdaterBound"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K24 ["Actions"]
  GETTABLEKS R14 R15 K25 ["BeginSelectingPivot"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K24 ["Actions"]
  GETTABLEKS R15 R16 K26 ["DoneSelectingPivot"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K27 ["Utility"]
  GETTABLEKS R16 R17 K28 ["EditingMode"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K27 ["Utility"]
  GETTABLEKS R17 R18 K29 ["StatusMessage"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K27 ["Utility"]
  GETTABLEKS R18 R19 K30 ["ToastNotification"]
  CALL R17 1 1
  GETTABLEKS R18 R1 K31 ["PureComponent"]
  LOADK R20 K32 ["EditPivotSession"]
  NAMECALL R18 R18 K33 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K34 [PROTO_0]
  CAPTURE VAL R16
  DUPCLOSURE R20 K35 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R20 R18 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_2]
  CAPTURE VAL R16
  SETTABLEKS R20 R18 K38 ["didMount"]
  DUPCLOSURE R20 K39 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R20 R18 K40 ["_getCurrentDraggerHandles"]
  DUPCLOSURE R20 K41 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R20 R18 K42 ["render"]
  DUPCLOSURE R20 K43 [PROTO_5]
  CAPTURE VAL R16
  SETTABLEKS R20 R18 K44 ["didUpdate"]
  DUPCLOSURE R20 K45 [PROTO_6]
  SETTABLEKS R20 R18 K46 ["willUnmount"]
  MOVE R20 R5
  DUPTABLE R21 K49 [{"Localization", "Plugin", "ToastNotification"}]
  GETTABLEKS R22 R4 K47 ["Localization"]
  SETTABLEKS R22 R21 K47 ["Localization"]
  GETTABLEKS R22 R4 K48 ["Plugin"]
  SETTABLEKS R22 R21 K48 ["Plugin"]
  SETTABLEKS R17 R21 K30 ["ToastNotification"]
  CALL R20 1 1
  MOVE R21 R18
  CALL R20 1 1
  MOVE R18 R20
  DUPCLOSURE R20 K50 [PROTO_7]
  DUPCLOSURE R21 K51 [PROTO_10]
  CAPTURE VAL R13
  CAPTURE VAL R14
  GETTABLEKS R22 R2 K52 ["connect"]
  MOVE R23 R20
  MOVE R24 R21
  CALL R22 2 1
  MOVE R23 R18
  CALL R22 1 -1
  RETURN R22 -1