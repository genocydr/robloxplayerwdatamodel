PROTO_0:
  GETIMPORT R2 K2 [string.find]
  GETTABLEKS R3 R1 K3 ["TextureId"]
  LOADK R4 K4 ["?id="]
  CALL R2 2 2
  JUMPIFNOT R3 [+21]
  GETTABLEKS R4 R1 K3 ["TextureId"]
  LOADK R6 K5 ["%d+[^%d]*$"]
  NAMECALL R4 R4 K6 ["match"]
  CALL R4 2 1
  GETTABLE R6 R0 R4
  JUMPIFNOT R6 [+9]
  GETTABLE R6 R0 R4
  GETTABLEKS R7 R1 K7 ["MemoryInBytes"]
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K10 [math.max]
  CALL R5 2 1
  JUMPIF R5 [+2]
  GETTABLEKS R5 R1 K7 ["MemoryInBytes"]
  SETTABLE R5 R0 R4
  RETURN R0 0
  GETTABLEKS R4 R1 K3 ["TextureId"]
  GETTABLEKS R7 R1 K3 ["TextureId"]
  GETTABLE R6 R0 R7
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R1 K3 ["TextureId"]
  GETTABLE R6 R0 R7
  GETTABLEKS R7 R1 K7 ["MemoryInBytes"]
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K10 [math.max]
  CALL R5 2 1
  JUMPIF R5 [+2]
  GETTABLEKS R5 R1 K7 ["MemoryInBytes"]
  SETTABLE R5 R0 R4
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  GETIMPORT R3 K3 [Enum.TextureQueryType.NonHumanoid]
  LOADN R4 0
  LOADN R5 16
  NAMECALL R1 R1 K4 ["GetPaginatedMemoryByTexture"]
  CALL R1 4 1
  GETUPVAL R2 0
  GETIMPORT R4 K6 [Enum.TextureQueryType.NonHumanoidOrphaned]
  LOADN R5 0
  LOADN R6 16
  NAMECALL R2 R2 K4 ["GetPaginatedMemoryByTexture"]
  CALL R2 4 1
  GETIMPORT R3 K8 [ipairs]
  GETTABLEKS R4 R1 K9 ["Results"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R7
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-5]
  GETIMPORT R3 K8 [ipairs]
  GETTABLEKS R4 R2 K9 ["Results"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R7
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-5]
  RETURN R0 1

PROTO_2:
  LENGTH R1 R0
  LOADN R2 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K2 ["Size"]
  ADD R2 R2 R8
  FORGLOOP R3 2 [inext] [-4]
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Stats"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K4 [PROTO_0]
  DUPCLOSURE R3 K5 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K6 ["fetchTextureSizes"]
  DUPCLOSURE R3 K7 [PROTO_2]
  SETTABLEKS R3 R0 K8 ["calculateAggregateStats"]
  RETURN R0 1
