PROTO_0:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 2
  GETIMPORT R5 K2 [Region3int16.new]
  GETIMPORT R6 K4 [Vector3int16.new]
  GETTABLEKS R9 R3 K6 ["X"]
  DIVK R8 R9 K5 [4]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K9 [math.floor]
  CALL R7 1 1
  GETTABLEKS R10 R3 K10 ["Y"]
  DIVK R9 R10 K5 [4]
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K9 [math.floor]
  CALL R8 1 1
  GETTABLEKS R11 R3 K11 ["Z"]
  DIVK R10 R11 K5 [4]
  FASTCALL1 MATH_FLOOR R10 [+2]
  GETIMPORT R9 K9 [math.floor]
  CALL R9 1 1
  CALL R6 3 1
  GETIMPORT R7 K4 [Vector3int16.new]
  GETTABLEKS R10 R4 K6 ["X"]
  DIVK R9 R10 K5 [4]
  FASTCALL1 MATH_CEIL R9 [+2]
  GETIMPORT R8 K13 [math.ceil]
  CALL R8 1 1
  GETTABLEKS R11 R4 K10 ["Y"]
  DIVK R10 R11 K5 [4]
  FASTCALL1 MATH_CEIL R10 [+2]
  GETIMPORT R9 K13 [math.ceil]
  CALL R9 1 1
  GETTABLEKS R12 R4 K11 ["Z"]
  DIVK R11 R12 K5 [4]
  FASTCALL1 MATH_CEIL R11 [+2]
  GETIMPORT R10 K13 [math.ceil]
  CALL R10 1 1
  CALL R7 3 -1
  CALL R5 -1 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["getBoundingBox"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1