PROTO_0:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["createDesign"]
  CALL R0 0 1
  SETUPVAL R0 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K5 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_1:
  LOADNIL R2
  GETTABLEKS R3 R1 K0 ["recordChange"]
  DUPTABLE R4 K4 [{"Name", "DisplayName", "DoChange"}]
  LOADK R5 K5 ["StyleEditor/CreateDesignSheet"]
  SETTABLEKS R5 R4 K1 ["Name"]
  LOADK R5 K6 ["StyleEditor - Create Design Sheet"]
  SETTABLEKS R5 R4 K2 ["DisplayName"]
  NEWCLOSURE R5 P0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K3 ["DoChange"]
  CALL R3 1 0
  JUMPIFNOT R2 [+11]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["createItemId"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R6 3
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K8 ["dispatch"]
  CALL R4 -1 0
  CLOSEUPVALS R2
  RETURN R2 1

PROTO_2:
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DesignHelpers"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["TreeTableHelpers"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R3 K10 ["Window"]
  GETTABLEKS R5 R6 K11 ["SelectItem"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R3 K10 ["Window"]
  GETTABLEKS R6 R7 K12 ["SetDesignSheet"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K13 ["Reducers"]
  GETTABLEKS R7 R8 K14 ["RootReducer"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K15 ["Thunks"]
  GETTABLEKS R8 R9 K16 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R8 1
