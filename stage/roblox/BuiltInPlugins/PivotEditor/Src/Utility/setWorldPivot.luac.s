PROTO_0:
  LOADK R4 K0 ["BasePart"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K2 ["CFrame"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["ToObjectSpace"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["PivotOffset"]
  RETURN R0 0
  LOADK R4 K5 ["Model"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+18]
  GETTABLEKS R2 R0 K6 ["PrimaryPart"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R2 R0 K6 ["PrimaryPart"]
  GETTABLEKS R4 R0 K6 ["PrimaryPart"]
  GETTABLEKS R3 R4 K2 ["CFrame"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["ToObjectSpace"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["PivotOffset"]
  SETTABLEKS R1 R0 K7 ["WorldPivot"]
  RETURN R0 0
  GETIMPORT R2 K9 [error]
  LOADK R4 K10 ["Unexpected instance type: "]
  GETTABLEKS R5 R0 K11 ["ClassName"]
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
