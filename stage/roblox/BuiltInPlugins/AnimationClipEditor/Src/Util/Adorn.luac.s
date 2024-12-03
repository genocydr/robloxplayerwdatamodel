PROTO_0:
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["SphereHandleAdornment"]
  MOVE R8 R2
  CALL R6 2 1
  LOADK R7 K4 ["Sphere"]
  SETTABLEKS R7 R6 K5 ["Name"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["AlwaysOnTop"]
  SETTABLEKS R4 R6 K7 ["Color3"]
  SETTABLEKS R2 R6 K8 ["Adornee"]
  SETTABLEKS R5 R6 K9 ["ZIndex"]
  SETTABLEKS R3 R6 K10 ["Transparency"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["Archivable"]
  RETURN R6 1

PROTO_1:
  GETIMPORT R7 K2 [Instance.new]
  LOADK R8 K3 ["LineHandleAdornment"]
  MOVE R9 R2
  CALL R7 2 1
  LOADK R8 K4 ["Line"]
  SETTABLEKS R8 R7 K5 ["Name"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["AlwaysOnTop"]
  SETTABLEKS R3 R7 K7 ["Thickness"]
  SETTABLEKS R4 R7 K8 ["Color3"]
  SETTABLEKS R2 R7 K9 ["Adornee"]
  SETTABLEKS R6 R7 K10 ["ZIndex"]
  SETTABLEKS R5 R7 K11 ["Transparency"]
  LOADB R8 0
  SETTABLEKS R8 R7 K12 ["Archivable"]
  RETURN R7 1

PROTO_2:
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["ConeHandleAdornment"]
  MOVE R8 R2
  CALL R6 2 1
  LOADK R7 K4 ["Cone"]
  SETTABLEKS R7 R6 K5 ["Name"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["AlwaysOnTop"]
  SETTABLEKS R4 R6 K7 ["Color3"]
  SETTABLEKS R2 R6 K8 ["Adornee"]
  SETTABLEKS R5 R6 K9 ["ZIndex"]
  SETTABLEKS R3 R6 K10 ["Transparency"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["Archivable"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["Sphere"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["Line"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["Cone"]
  RETURN R0 1
