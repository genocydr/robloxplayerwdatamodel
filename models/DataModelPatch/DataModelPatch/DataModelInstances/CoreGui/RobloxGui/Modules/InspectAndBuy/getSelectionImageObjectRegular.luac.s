PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["ImageLabel"]
  CALL R0 1 1
  LOADK R1 K4 ["rbxasset://textures/ui/InspectMenu/selection_regular.png"]
  SETTABLEKS R1 R0 K5 ["Image"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["White"]
  SETTABLEKS R1 R0 K7 ["ImageColor3"]
  GETIMPORT R1 K11 [Enum.ScaleType.Slice]
  SETTABLEKS R1 R0 K9 ["ScaleType"]
  GETIMPORT R1 K13 [Rect.new]
  LOADN R2 5
  LOADN R3 5
  LOADN R4 120
  LOADN R5 20
  CALL R1 4 1
  SETTABLEKS R1 R0 K14 ["SliceCenter"]
  LOADN R1 1
  SETTABLEKS R1 R0 K15 ["BackgroundTransparency"]
  GETIMPORT R1 K17 [UDim2.new]
  LOADN R2 1
  LOADN R3 0
  LOADN R4 1
  LOADN R5 0
  CALL R1 4 1
  SETTABLEKS R1 R0 K18 ["Size"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Colors"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
