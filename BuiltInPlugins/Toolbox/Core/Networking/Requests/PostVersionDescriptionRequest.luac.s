PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onPackageNoteCreated"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+19]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  NAMECALL R1 R1 K0 ["postVersionDescription"]
  CALL R1 4 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  NAMECALL R1 R1 K0 ["postVersionDescription"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_3:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K8 ["Analytics"]
  GETTABLEKS R3 R4 K8 ["Analytics"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K4 ["Core"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R3 K10 ["NetworkError"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["ToolboxSendPackageVersionNoteTelemetry"]
  NAMECALL R5 R5 K14 ["GetFastFlag"]
  CALL R5 2 1
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1