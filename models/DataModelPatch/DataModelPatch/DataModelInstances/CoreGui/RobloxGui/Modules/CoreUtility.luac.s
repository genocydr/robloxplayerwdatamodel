PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChildOfClass"]
  CALL R2 2 1
  GETIMPORT R4 K2 [tick]
  CALL R4 0 1
  GETUPVAL R5 0
  ADD R3 R4 R5
  JUMPIF R2 [+14]
  GETIMPORT R4 K2 [tick]
  CALL R4 0 1
  JUMPIFNOTLT R4 R3 [+10]
  GETIMPORT R4 K5 [task.wait]
  CALL R4 0 0
  MOVE R6 R1
  NAMECALL R4 R0 K0 ["FindFirstChildOfClass"]
  CALL R4 2 1
  MOVE R2 R4
  JUMPBACK [-15]
  RETURN R2 1

PROTO_1:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R2 K1 ["ClassName"]
  JUMPIFEQ R3 R1 [+8]
  GETTABLEKS R3 R0 K2 ["ChildAdded"]
  NAMECALL R3 R3 K3 ["Wait"]
  CALL R3 1 1
  MOVE R2 R3
  JUMPBACK [-12]
  RETURN R2 1

PROTO_2:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  MOVE R5 R1
  NAMECALL R3 R2 K1 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETTABLEKS R3 R0 K2 ["ChildAdded"]
  NAMECALL R3 R3 K3 ["Wait"]
  CALL R3 1 1
  MOVE R2 R3
  JUMPBACK [-13]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["WaitForChildOfClassTimeout"]
  LOADN R4 0
  NAMECALL R1 R1 K3 ["DefineFastInt"]
  CALL R1 3 1
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+6]
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K5 ["waitForChildOfClass"]
  JUMP [+3]
  DUPCLOSURE R2 K6 [PROTO_1]
  SETTABLEKS R2 R0 K5 ["waitForChildOfClass"]
  DUPCLOSURE R2 K7 [PROTO_2]
  SETTABLEKS R2 R0 K8 ["waitForChildWhichIsA"]
  RETURN R0 1
