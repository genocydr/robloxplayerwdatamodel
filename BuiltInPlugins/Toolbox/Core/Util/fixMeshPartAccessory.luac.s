PROTO_0:
  JUMPIFNOT R0 [+15]
  LOADK R3 K0 ["Handle"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+10]
  LOADK R4 K2 ["MeshPart"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["ResetCollisionFidelity"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
