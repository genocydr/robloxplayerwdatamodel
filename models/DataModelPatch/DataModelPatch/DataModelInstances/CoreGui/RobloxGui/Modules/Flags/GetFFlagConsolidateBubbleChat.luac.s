PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ConsolidateBubbleChat5"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  LOADB R1 1
  RETURN R1 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ConsolidateBubbleChatRollout4"]
  NAMECALL R1 R1 K5 ["GetFastInt"]
  CALL R1 2 1
  LOADN R2 0
  JUMPIFNOTLE R1 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["LocalPlayer"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["LocalPlayer"]
  GETTABLEKS R2 R3 K7 ["UserId"]
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["LocalPlayer"]
  GETTABLEKS R6 R2 K7 ["UserId"]
  ADDK R5 R6 K9 [21]
  MODK R4 R5 K8 [100]
  JUMPIFLT R4 R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ConsolidateBubbleChat5"]
  LOADB R4 0
  NAMECALL R1 R1 K5 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["ConsolidateBubbleChatRollout4"]
  LOADN R4 0
  NAMECALL R1 R1 K7 ["DefineFastInt"]
  CALL R1 3 0
  DUPCLOSURE R1 K8 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
