PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADNIL R2
  GETTABLEKS R3 R1 K1 ["relativeTo"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Active"]
  JUMPIFNOTEQ R3 R4 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["ActiveInstance"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["Portal"]
  DUPTABLE R5 K7 [{"target"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K6 ["target"]
  DUPTABLE R6 K9 [{"AlignToolPreviewUI"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K10 ["Folder"]
  NEWTABLE R9 0 0
  DUPTABLE R10 K12 [{"Elements"}]
  GETUPVAL R11 4
  GETTABLEKS R12 R1 K13 ["objects"]
  GETTABLEKS R13 R1 K14 ["space"]
  GETTABLEKS R14 R1 K15 ["axes"]
  GETTABLEKS R15 R1 K16 ["mode"]
  MOVE R16 R2
  CALL R11 5 1
  SETTABLEKS R11 R10 K11 ["Elements"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["AlignToolPreviewUI"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  DUPTABLE R2 K6 [{"objects", "mode", "space", "axes", "relativeTo", "alignEnabled"}]
  GETTABLEKS R3 R0 K7 ["alignableObjects"]
  SETTABLEKS R3 R2 K0 ["objects"]
  GETTABLEKS R3 R0 K8 ["alignmentMode"]
  SETTABLEKS R3 R2 K1 ["mode"]
  GETTABLEKS R3 R0 K9 ["alignmentSpace"]
  SETTABLEKS R3 R2 K2 ["space"]
  GETTABLEKS R3 R0 K10 ["enabledAxes"]
  SETTABLEKS R3 R2 K3 ["axes"]
  GETTABLEKS R3 R0 K4 ["relativeTo"]
  SETTABLEKS R3 R2 K4 ["relativeTo"]
  GETTABLEKS R3 R0 K5 ["alignEnabled"]
  SETTABLEKS R3 R2 K5 ["alignEnabled"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["Selection"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["CoreGui"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Utility"]
  GETTABLEKS R6 R7 K15 ["renderAlignObjectsPreview"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Utility"]
  GETTABLEKS R7 R8 K16 ["RelativeTo"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K17 ["PureComponent"]
  LOADK R9 K18 ["AlignObjectsPreview"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K21 ["render"]
  DUPCLOSURE R8 K22 [PROTO_1]
  GETTABLEKS R9 R4 K23 ["connect"]
  MOVE R10 R8
  LOADNIL R11
  CALL R9 2 1
  MOVE R10 R7
  CALL R9 1 -1
  RETURN R9 -1
