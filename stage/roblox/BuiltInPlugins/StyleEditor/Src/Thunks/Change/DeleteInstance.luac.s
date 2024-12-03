PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["Folder"]
  NAMECALL R0 R0 K1 ["IsA"]
  CALL R0 2 1
  JUMPIFNOT R0 [+28]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["GetChildren"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K3 ["StyleCategory"]
  NAMECALL R5 R4 K4 ["GetAttribute"]
  CALL R5 2 1
  MOVE R6 R5
  JUMPIFNOT R6 [+4]
  JUMPIFEQKS R5 K5 ["Themes"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+5]
  LOADK R9 K6 ["StyleSheet"]
  NAMECALL R7 R4 K1 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["Parent"]
  SETTABLEKS R7 R4 K7 ["Parent"]
  FORGLOOP R0 2 [-22]
  GETUPVAL R0 0
  NAMECALL R0 R0 K8 ["Remove"]
  CALL R0 1 0
  GETIMPORT R0 K12 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["recordChange"]
  DUPTABLE R3 K4 [{"Name", "DisplayName", "DoChange"}]
  LOADK R4 K5 ["StyleEditor/DeleteInstance"]
  SETTABLEKS R4 R3 K1 ["Name"]
  LOADK R4 K6 ["StyleEditor - Delete Instance"]
  SETTABLEKS R4 R3 K2 ["DisplayName"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K3 ["DoChange"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

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
  DUPCLOSURE R3 K10 [PROTO_2]
  RETURN R3 1
