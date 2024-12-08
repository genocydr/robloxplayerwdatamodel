PROTO_0:
  GETIMPORT R0 K3 [Enum.UserInputType.Gamepad1]
  GETIMPORT R1 K5 [Enum.UserInputType.Gamepad2]
  LOADN R4 1
  LOADN R2 2
  LOADN R3 1
  FORNPREP R2
  GETUPVAL R5 0
  MOVE R7 R0
  GETIMPORT R8 K8 [Enum.VibrationMotor.Large]
  LOADN R9 5
  NAMECALL R5 R5 K9 ["SetMotor"]
  CALL R5 4 0
  GETUPVAL R5 0
  MOVE R7 R1
  GETIMPORT R8 K8 [Enum.VibrationMotor.Large]
  LOADN R9 5
  NAMECALL R5 R5 K9 ["SetMotor"]
  CALL R5 4 0
  GETIMPORT R5 K12 [task.wait]
  LOADK R6 K13 [0.5]
  CALL R5 1 0
  GETUPVAL R5 0
  MOVE R7 R0
  GETIMPORT R8 K8 [Enum.VibrationMotor.Large]
  LOADN R9 0
  NAMECALL R5 R5 K9 ["SetMotor"]
  CALL R5 4 0
  GETUPVAL R5 0
  MOVE R7 R1
  GETIMPORT R8 K8 [Enum.VibrationMotor.Large]
  LOADN R9 0
  NAMECALL R5 R5 K9 ["SetMotor"]
  CALL R5 4 0
  GETIMPORT R5 K12 [task.wait]
  LOADK R6 K14 [0.125]
  CALL R5 1 0
  FORNLOOP R2
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HapticService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["EventType"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"Name"}]
  LOADK R3 K12 ["HapticFeedbackTwiceEvent"]
  SETTABLEKS R3 R2 K10 ["Name"]
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K14 ["StartEvent"]
  RETURN R2 1
