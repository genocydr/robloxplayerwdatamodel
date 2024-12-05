PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Tracks"]
  GETTABLEKS R3 R1 K2 ["StartTick"]
  GETTABLEKS R4 R1 K3 ["EndTick"]
  GETTABLEKS R5 R1 K4 ["PreviewKeyframes"]
  GETTABLEKS R6 R1 K5 ["SelectedKeyframes"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["getSummaryKeyframes"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  MOVE R11 R6
  MOVE R12 R5
  CALL R7 5 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyRightClick"]
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 1
  GETUPVAL R6 2
  CALL R2 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputBegan"]
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 1
  GETUPVAL R6 2
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputEnded"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R5 R0 K0 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K14 [{"Selected", "KeyframeStyle", "Position", "ZIndex", "Width", "BorderSizePixel", "Filled", "Named", "OnActivated", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R1 R8 K2 ["Selected"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["KEYFRAME_STYLE"]
  GETTABLEKS R9 R10 K16 ["Primary"]
  SETTABLEKS R9 R8 K3 ["KeyframeStyle"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 0
  MOVE R11 R2
  LOADK R12 K20 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Position"]
  GETTABLEKS R9 R5 K5 ["ZIndex"]
  SETTABLEKS R9 R8 K5 ["ZIndex"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["SUMMARY_KEYFRAME_WIDTH"]
  SETTABLEKS R9 R8 K6 ["Width"]
  JUMPIFNOT R1 [+2]
  LOADN R9 2
  JUMP [+1]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BorderSizePixel"]
  LOADB R9 1
  SETTABLEKS R9 R8 K8 ["Filled"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Named"]
  GETTABLEKS R9 R5 K22 ["OnKeyActivated"]
  SETTABLEKS R9 R8 K10 ["OnActivated"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K11 ["OnRightClick"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K12 ["OnInputBegan"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K13 ["OnInputEnded"]
  DUPTABLE R9 K24 [{"Tooltip"}]
  MOVE R10 R4
  JUMPIFNOT R10 [+11]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K27 [{"Text", "ShowDelay"}]
  SETTABLEKS R4 R12 K25 ["Text"]
  LOADN R13 0
  SETTABLEKS R13 R12 K26 ["ShowDelay"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["Tooltip"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K5 [{"Primary", "Position", "Size", "ZIndex"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K1 ["Primary"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  MOVE R10 R1
  LOADK R11 K9 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Position"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  SUB R10 R2 R1
  LOADN R11 0
  MOVE R12 R3
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  SETTABLEKS R4 R7 K4 ["ZIndex"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_6:
  NAMECALL R2 R0 K0 ["getSummaryKeyframes"]
  CALL R2 1 2
  GETIMPORT R4 K3 [table.sort]
  MOVE R5 R2
  CALL R4 1 0
  LENGTH R4 R2
  JUMPIFNOTEQKN R4 K4 [0] [+2]
  RETURN R0 0
  GETTABLEKS R4 R0 K5 ["props"]
  GETTABLEKS R5 R4 K6 ["Width"]
  GETTABLEKS R6 R4 K7 ["StartTick"]
  GETTABLEKS R7 R4 K8 ["EndTick"]
  GETTABLEKS R8 R4 K9 ["ShowCluster"]
  GETTABLEKS R9 R4 K10 ["NamedKeyframes"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["getKeyframesExtents"]
  MOVE R11 R2
  MOVE R12 R6
  MOVE R13 R7
  CALL R10 3 2
  JUMPIFNOT R8 [+26]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["getScaledKeyframePosition"]
  GETTABLE R13 R2 R10
  MOVE R14 R6
  MOVE R15 R7
  MOVE R16 R5
  CALL R12 4 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["getScaledKeyframePosition"]
  GETTABLE R14 R2 R11
  MOVE R15 R6
  MOVE R16 R7
  MOVE R17 R5
  CALL R13 4 1
  MOVE R16 R12
  MOVE R17 R13
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K13 ["MIN_SPACE_BETWEEN_KEYS"]
  NAMECALL R14 R0 K14 ["renderKeyframeCluster"]
  CALL R14 4 1
  SETTABLE R14 R1 R11
  RETURN R0 0
  JUMPIFEQKNIL R10 [+26]
  JUMPIFEQKNIL R11 [+24]
  MOVE R14 R10
  MOVE R12 R11
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R2 R14
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K12 ["getScaledKeyframePosition"]
  MOVE R17 R15
  MOVE R18 R6
  MOVE R19 R7
  MOVE R20 R5
  CALL R16 4 1
  GETTABLE R17 R3 R15
  MOVE R20 R17
  MOVE R21 R16
  MOVE R22 R15
  GETTABLE R23 R9 R15
  NAMECALL R18 R0 K15 ["renderKeyframe"]
  CALL R18 5 1
  SETTABLE R18 R1 R14
  FORNLOOP R12
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Primary"]
  NEWTABLE R2 0 0
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["renderKeyframes"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["BaseTrack"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["TrackUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K14 ["Timeline"]
  GETTABLEKS R6 R7 K15 ["Keyframe"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K16 ["KeyframeCluster"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K17 ["Tooltip"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K18 ["PureComponent"]
  LOADK R10 K19 ["SummaryTrack"]
  NAMECALL R8 R8 K20 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K21 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K22 ["getSummaryKeyframes"]
  DUPCLOSURE R9 K23 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K24 ["renderKeyframe"]
  DUPCLOSURE R9 K25 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K26 ["renderKeyframeCluster"]
  DUPCLOSURE R9 K27 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K28 ["renderKeyframes"]
  DUPCLOSURE R9 K29 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K30 ["render"]
  RETURN R8 1
