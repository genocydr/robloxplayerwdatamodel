PROTO_0:
  LOADB R1 1
  LOADNIL R2
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["boolean"] [+4]
  MOVE R1 R0
  LOADNIL R2
  JUMP [+20]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K3 ["Instance"] [+9]
  LOADK R5 K4 ["BindableEvent"]
  NAMECALL R3 R0 K5 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  LOADB R1 1
  MOVE R2 R0
  JUMP [+5]
  GETIMPORT R3 K7 [error]
  LOADK R4 K8 ["ResetButtonCallback must be set to a BindableEvent or a boolean"]
  LOADN R5 0
  CALL R3 2 0
  GETUPVAL R3 0
  GETUPVAL R5 1
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 -1
  NAMECALL R3 R3 K9 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["ResetButtonCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K1 ["RegisterSetCore"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StarterGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["SetRespawnBehavior"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1