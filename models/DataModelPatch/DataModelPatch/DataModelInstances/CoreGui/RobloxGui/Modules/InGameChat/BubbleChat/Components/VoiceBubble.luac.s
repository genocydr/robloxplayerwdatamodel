PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateWidth"]
  FASTCALL1 MATH_ROUND R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [math.round]
  CALL R2 1 1
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["insertSize"]
  JUMPIFNOT R1 [+21]
  GETIMPORT R1 K4 [UDim2.fromOffset]
  MOVE R2 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["insertSize"]
  GETTABLEKS R4 R5 K5 ["Y"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["chatSettings"]
  GETTABLEKS R6 R7 K8 ["Padding"]
  MULK R5 R6 K6 [2]
  ADD R3 R4 R5
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K4 [UDim2.fromOffset]
  MOVE R2 R0
  LOADN R3 0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createBinding"]
  LOADN R3 0
  CALL R2 1 2
  SETTABLEKS R2 R0 K1 ["width"]
  SETTABLEKS R3 R0 K2 ["updateWidth"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createSingleMotor"]
  LOADN R3 0
  CALL R2 1 1
  SETTABLEKS R2 R0 K4 ["widthMotor"]
  GETTABLEKS R2 R0 K4 ["widthMotor"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K5 ["onStep"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["width"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K6 ["map"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["frameSize"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createBinding"]
  LOADN R3 1
  CALL R2 1 2
  SETTABLEKS R2 R0 K8 ["transparency"]
  SETTABLEKS R3 R0 K9 ["updateTransparency"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createSingleMotor"]
  LOADN R3 1
  CALL R2 1 1
  SETTABLEKS R2 R0 K10 ["transparencyMotor"]
  GETTABLEKS R2 R0 K10 ["transparencyMotor"]
  GETTABLEKS R4 R0 K9 ["updateTransparency"]
  NAMECALL R2 R2 K5 ["onStep"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K11 ["fadingOut"]
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K12 ["fadeOut"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["chatSettings"]
  LOADN R3 0
  GETTABLEKS R4 R0 K1 ["insertSize"]
  JUMPIFNOT R4 [+8]
  GETTABLEKS R5 R0 K1 ["insertSize"]
  GETTABLEKS R4 R5 K2 ["X"]
  GETTABLEKS R6 R2 K4 ["Padding"]
  MULK R5 R6 K3 [2]
  ADD R3 R4 R5
  GETTABLEKS R4 R1 K5 ["fullWidth"]
  JUMPIFEQ R3 R4 [+5]
  DUPTABLE R4 K6 [{"fullWidth"}]
  SETTABLEKS R3 R4 K5 ["fullWidth"]
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["chatSettings"]
  GETTABLEKS R2 R1 K2 ["BackgroundImage"]
  GETTABLEKS R3 R1 K3 ["BackgroundGradient"]
  LOADN R4 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["insertSize"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K4 ["insertSize"]
  GETTABLEKS R5 R6 K5 ["Y"]
  GETTABLEKS R7 R1 K7 ["Padding"]
  MULK R6 R7 K6 [2]
  ADD R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["Frame"]
  DUPTABLE R7 K14 [{"AnchorPoint", "Size", "Position", "Transparency"}]
  GETIMPORT R8 K17 [Vector2.new]
  LOADK R9 K18 [0.5]
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["AnchorPoint"]
  GETIMPORT R8 K21 [UDim2.fromOffset]
  GETTABLEKS R10 R0 K22 ["state"]
  GETTABLEKS R9 R10 K23 ["fullWidth"]
  MOVE R10 R4
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Size"]
  GETIMPORT R8 K24 [UDim2.new]
  LOADK R9 K18 [0.5]
  LOADN R10 0
  LOADN R11 1
  LOADN R12 248
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Position"]
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["Transparency"]
  DUPTABLE R8 K28 [{"Scale", "Carat", "RoundedFrame"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K29 ["UIScale"]
  DUPTABLE R11 K30 [{"Scale"}]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K31 ["isDistant"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K32 [0.75]
  JUMP [+1]
  LOADN R12 1
  SETTABLEKS R12 R11 K25 ["Scale"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["Scale"]
  GETTABLEKS R9 R1 K33 ["TailVisible"]
  JUMPIFNOT R9 [+43]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K34 ["ImageLabel"]
  DUPTABLE R11 K39 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size", "Image", "ImageColor3", "ImageTransparency"}]
  GETIMPORT R12 K17 [Vector2.new]
  LOADK R13 K18 [0.5]
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["AnchorPoint"]
  LOADN R12 1
  SETTABLEKS R12 R11 K35 ["BackgroundTransparency"]
  GETIMPORT R12 K24 [UDim2.new]
  LOADK R13 K18 [0.5]
  LOADN R14 0
  LOADN R15 1
  LOADN R16 255
  CALL R12 4 1
  SETTABLEKS R12 R11 K12 ["Position"]
  GETIMPORT R12 K21 [UDim2.fromOffset]
  LOADN R13 12
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Size"]
  LOADK R12 K40 ["rbxasset://textures/ui/InGameChat/Caret.png"]
  SETTABLEKS R12 R11 K36 ["Image"]
  GETTABLEKS R12 R1 K41 ["BackgroundColor3"]
  SETTABLEKS R12 R11 K37 ["ImageColor3"]
  GETTABLEKS R12 R0 K42 ["transparency"]
  SETTABLEKS R12 R11 K38 ["ImageTransparency"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["Carat"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K34 ["ImageLabel"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K43 ["Dictionary"]
  GETTABLEKS R11 R12 K44 ["join"]
  MOVE R12 R2
  DUPTABLE R13 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "AnchorPoint", "Position", "ClipsDescendants", "ImageTransparency"}]
  GETTABLEKS R14 R0 K48 ["frameSize"]
  SETTABLEKS R14 R13 K11 ["Size"]
  GETTABLEKS R14 R1 K41 ["BackgroundColor3"]
  SETTABLEKS R14 R13 K41 ["BackgroundColor3"]
  GETTABLEKS R15 R2 K36 ["Image"]
  JUMPIFNOTEQKS R15 K49 [""] [+4]
  GETTABLEKS R14 R0 K42 ["transparency"]
  JUMPIF R14 [+1]
  LOADN R14 1
  SETTABLEKS R14 R13 K35 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K45 ["BorderSizePixel"]
  GETIMPORT R14 K17 [Vector2.new]
  LOADK R15 K18 [0.5]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["AnchorPoint"]
  GETIMPORT R14 K24 [UDim2.new]
  LOADK R15 K18 [0.5]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Position"]
  LOADB R14 1
  SETTABLEKS R14 R13 K46 ["ClipsDescendants"]
  GETTABLEKS R14 R0 K42 ["transparency"]
  SETTABLEKS R14 R13 K38 ["ImageTransparency"]
  CALL R11 2 1
  DUPTABLE R12 K53 [{"UICorner", "Contents", "Gradient"}]
  GETTABLEKS R13 R1 K54 ["CornerEnabled"]
  JUMPIFNOT R13 [+10]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K50 ["UICorner"]
  DUPTABLE R15 K56 [{"CornerRadius"}]
  GETTABLEKS R16 R1 K55 ["CornerRadius"]
  SETTABLEKS R16 R15 K55 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K50 ["UICorner"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K9 ["Frame"]
  DUPTABLE R15 K57 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R16 K59 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K11 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K35 ["BackgroundTransparency"]
  DUPTABLE R16 K61 [{"Padding", "Insert"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  LOADK R18 K62 ["UIPadding"]
  DUPTABLE R19 K67 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  GETTABLEKS R22 R1 K7 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K63 ["PaddingTop"]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  GETTABLEKS R22 R1 K7 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K64 ["PaddingRight"]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  GETTABLEKS R22 R1 K7 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K65 ["PaddingBottom"]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  GETTABLEKS R22 R1 K7 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K66 ["PaddingLeft"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K7 ["Padding"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K70 ["renderInsert"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K70 ["renderInsert"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K60 ["Insert"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K51 ["Contents"]
  GETTABLEKS R13 R3 K71 ["Enabled"]
  JUMPIFNOT R13 [+6]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K72 ["UIGradient"]
  MOVE R15 R3
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["Gradient"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["RoundedFrame"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onFadeOut"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onFadeOut"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["isFadingOut"]
  JUMPIF R1 [+24]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isFadingOut"]
  GETTABLEKS R1 R0 K1 ["transparencyMotor"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["onComplete"]
  CALL R1 2 0
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["chatSettings"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["transparencyMotor"]
  MOVE R4 R1
  LOADN R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["setGoal"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["fadingOut"]
  JUMPIFNOT R3 [+4]
  NAMECALL R3 R0 K2 ["fadeOut"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["fullWidth"]
  GETTABLEKS R4 R2 K4 ["fullWidth"]
  JUMPIFEQ R3 R4 [+19]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["chatSettings"]
  GETUPVAL R4 0
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEKS R5 R0 K6 ["widthMotor"]
  MOVE R7 R4
  GETTABLEKS R9 R0 K3 ["state"]
  GETTABLEKS R8 R9 K4 ["fullWidth"]
  CALL R7 1 -1
  NAMECALL R5 R5 K7 ["setGoal"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["fadingOut"]
  JUMPIF R1 [+34]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["chatSettings"]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R4 R0 K3 ["transparencyMotor"]
  MOVE R6 R3
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K2 ["chatSettings"]
  GETTABLEKS R7 R8 K4 ["Transparency"]
  CALL R6 1 -1
  NAMECALL R4 R4 K5 ["setGoal"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K6 ["widthMotor"]
  MOVE R6 R2
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["fullWidth"]
  CALL R6 1 -1
  NAMECALL R4 R4 K5 ["setGoal"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["transparencyMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["widthMotor"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Otter"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R5 K15 ["Helpers"]
  GETTABLEKS R8 R9 K16 ["getSizeSpringFromSettings"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R5 K15 ["Helpers"]
  GETTABLEKS R9 R10 K17 ["getTransparencySpringFromSettings"]
  CALL R8 1 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K18 ["CoreGui"]
  NAMECALL R9 R9 K3 ["GetService"]
  CALL R9 2 1
  LOADK R11 K19 ["RobloxGui"]
  NAMECALL R9 R9 K20 ["WaitForChild"]
  CALL R9 2 1
  GETTABLEKS R10 R2 K21 ["PureComponent"]
  LOADK R12 K22 ["VoiceBubble"]
  NAMECALL R10 R10 K23 ["extend"]
  CALL R10 2 1
  GETTABLEKS R11 R3 K24 ["strictInterface"]
  DUPTABLE R12 K31 [{"fadingOut", "onFadeOut", "chatSettings", "renderInsert", "insertSize", "isDistant"}]
  GETTABLEKS R13 R3 K32 ["optional"]
  GETTABLEKS R14 R3 K33 ["boolean"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["fadingOut"]
  GETTABLEKS R13 R3 K32 ["optional"]
  GETTABLEKS R14 R3 K34 ["callback"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K26 ["onFadeOut"]
  GETTABLEKS R13 R6 K35 ["IChatSettings"]
  SETTABLEKS R13 R12 K27 ["chatSettings"]
  GETTABLEKS R13 R3 K32 ["optional"]
  GETTABLEKS R14 R3 K34 ["callback"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K28 ["renderInsert"]
  GETTABLEKS R13 R3 K32 ["optional"]
  GETTABLEKS R14 R3 K36 ["Vector2"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["insertSize"]
  GETTABLEKS R13 R3 K32 ["optional"]
  GETTABLEKS R14 R3 K33 ["boolean"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K30 ["isDistant"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K37 ["validateProps"]
  DUPCLOSURE R11 K38 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K39 ["init"]
  DUPCLOSURE R11 K40 [PROTO_3]
  SETTABLEKS R11 R10 K41 ["getDerivedStateFromProps"]
  DUPCLOSURE R11 K42 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K43 ["render"]
  DUPCLOSURE R11 K44 [PROTO_6]
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K45 ["fadeOut"]
  DUPCLOSURE R11 K46 [PROTO_7]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K47 ["didUpdate"]
  DUPCLOSURE R11 K48 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K49 ["didMount"]
  DUPCLOSURE R11 K50 [PROTO_9]
  SETTABLEKS R11 R10 K51 ["willUnmount"]
  RETURN R10 1
