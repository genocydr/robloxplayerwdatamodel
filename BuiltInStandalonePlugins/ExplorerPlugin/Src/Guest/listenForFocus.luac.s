PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 0
  GETIMPORT R0 K2 [Vector3.zero]
  GETIMPORT R1 K2 [Vector3.zero]
  RETURN R0 2

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADN R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["AddFocusCallback"]
  CALL R1 3 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_2]
  CAPTURE VAL R0
  RETURN R1 1