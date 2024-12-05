PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  GETTABLEKS R5 R0 K0 ["_payload"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["BuildSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["CraterDepth"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K0 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["CraterRadius"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R3 [+1]
  JUMPIF R4 [+5]
  GETIMPORT R5 K7 [warn]
  LOADK R6 K8 ["Missing parameters!"]
  CALL R5 1 0
  RETURN R0 0
  DUPTABLE R5 K11 [{"hillWidth", "hillHeight"}]
  LOADK R6 K12 [0.2]
  SETTABLEKS R6 R5 K9 ["hillWidth"]
  LOADN R7 1
  MULK R8 R4 K13 [0.5]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K10 ["hillHeight"]
  MOVE R8 R5
  NAMECALL R6 R0 K14 ["generateHill"]
  CALL R6 2 0
  LOADN R6 0
  JUMPIFNOTLT R6 R1 [+7]
  LOADN R6 0
  JUMPIFNOTLT R6 R2 [+4]
  NAMECALL R6 R0 K15 ["addErosion"]
  CALL R6 1 0
  GETIMPORT R6 K18 [table.create]
  GETTABLEKS R7 R0 K19 ["_mapSize"]
  LOADB R8 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K20 ["_fillBottomPositions"]
  LOADN R6 0
  JUMPIFNOTLE R4 R6 [+2]
  RETURN R0 0
  LOADN R6 0
  LOADN R9 1
  GETTABLEKS R7 R0 K21 ["_sliceX"]
  LOADN R8 1
  FORNPREP R7
  LOADN R12 1
  GETTABLEKS R10 R0 K22 ["_sliceZ"]
  LOADN R11 1
  FORNPREP R10
  MOVE R15 R9
  MOVE R16 R12
  NAMECALL R13 R0 K23 ["getIndex"]
  CALL R13 3 1
  GETTABLEKS R15 R0 K24 ["_noiseMap"]
  GETTABLE R14 R15 R13
  LOADN R15 1
  JUMPIFNOTLT R15 R14 [+19]
  GETTABLEKS R17 R0 K21 ["_sliceX"]
  DIV R16 R9 R17
  LOADN R17 0
  GETTABLEKS R19 R0 K22 ["_sliceZ"]
  DIV R18 R12 R19
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K27 [Vector3.new]
  CALL R15 3 1
  LOADK R18 K28 [{0.5, 0, 0.5}]
  SUB R17 R15 R18
  GETTABLEKS R16 R17 K29 ["magnitude"]
  JUMPIFNOTLT R6 R16 [+2]
  MOVE R6 R16
  FORNLOOP R10
  FORNLOOP R7
  LOADN R9 1
  GETTABLEKS R7 R0 K21 ["_sliceX"]
  LOADN R8 1
  FORNPREP R7
  LOADN R12 1
  GETTABLEKS R10 R0 K22 ["_sliceZ"]
  LOADN R11 1
  FORNPREP R10
  GETTABLEKS R15 R0 K21 ["_sliceX"]
  DIV R14 R9 R15
  LOADN R15 0
  GETTABLEKS R17 R0 K22 ["_sliceZ"]
  DIV R16 R12 R17
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K27 [Vector3.new]
  CALL R13 3 1
  LOADK R16 K28 [{0.5, 0, 0.5}]
  SUB R15 R13 R16
  GETTABLEKS R14 R15 K29 ["magnitude"]
  JUMPIFNOTLT R14 R6 [+35]
  SUB R16 R6 R14
  DIV R15 R16 R6
  SUBRK R17 R30 K15 ["addErosion"]
  POWK R16 R17 K31 [4]
  SUBRK R15 R30 K16 ["table"]
  MUL R18 R15 R3
  DIVK R17 R18 K32 [2]
  SUBRK R16 R30 K17 ["create"]
  MOVE R19 R9
  MOVE R20 R12
  NAMECALL R17 R0 K23 ["getIndex"]
  CALL R17 3 1
  GETTABLEKS R19 R0 K24 ["_noiseMap"]
  GETTABLE R18 R19 R17
  LOADN R19 1
  JUMPIFLT R19 R18 [+3]
  JUMPIFNOTLT R16 R18 [+9]
  GETTABLEKS R19 R0 K24 ["_noiseMap"]
  SETTABLE R16 R19 R17
  GETTABLEKS R19 R0 K20 ["_fillBottomPositions"]
  LOADB R20 1
  SETTABLE R20 R19 R17
  JUMP [+5]
  GETTABLEKS R19 R0 K24 ["_noiseMap"]
  ADD R21 R18 R16
  DIVK R20 R21 K32 [2]
  SETTABLE R20 R19 R17
  FORNLOOP R10
  FORNLOOP R7
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_mapSize"]
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+22]
  DUPTABLE R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K5 ["PreserveDistance"]
  LOADK R3 K9 [0.2]
  SETTABLEKS R3 R2 K6 ["PreserveRatio"]
  SETTABLEKS R1 R2 K7 ["BlendingStrength"]
  GETUPVAL R3 0
  GETIMPORT R4 K12 [Vector2.new]
  GETTABLEKS R5 R0 K13 ["_sliceX"]
  GETTABLEKS R6 R0 K14 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["_blendingFactorMap"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["MountainBaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BuildSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["TerrainType"]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Generation"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GetBlendingFactorMap"]
  CALL R7 1 1
  GETTABLEKS R10 R5 K16 ["Volcano"]
  NAMECALL R8 R1 K17 ["new"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K19 ["init"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K21 ["generateNoiseMap"]
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K23 ["updateBlendingFactorMap"]
  RETURN R8 1
