PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["SetAttribute"]
  CALL R0 3 0
  GETIMPORT R0 K4 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["recordChange"]
  DUPTABLE R3 K4 [{"Name", "DisplayName", "DoChange"}]
  LOADK R4 K5 ["StyleEditor/SetStyleInstanceAttribute"]
  SETTABLEKS R4 R3 K1 ["Name"]
  LOADK R4 K6 ["StyleEditor - Set StyleInstance Token"]
  SETTABLEKS R4 R3 K2 ["DisplayName"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K3 ["DoChange"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Reducers"]
  GETTABLEKS R2 R3 K7 ["RootReducer"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Thunks"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K9 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_2]
  RETURN R4 1