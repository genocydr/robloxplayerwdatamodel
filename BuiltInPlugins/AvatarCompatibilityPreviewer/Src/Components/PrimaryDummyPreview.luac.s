PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Position"]
  GETUPVAL R3 1
  SUB R1 R2 R3
  GETTABLEKS R0 R1 K1 ["Magnitude"]
  LOADN R1 4
  JUMPIFNOTLE R1 R0 [+5]
  GETUPVAL R0 2
  NAMECALL R0 R0 K2 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R2 R3 [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K4 ["Position"]
  LOADNIL R3
  LOADK R6 K4 ["Position"]
  NAMECALL R4 R1 K5 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE REF R3
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 1
  MOVE R3 R4
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  JUMP [+9]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 4
  CALL R1 1 1
  JUMP [+1]
  LOADNIL R1
  GETUPVAL R3 3
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+5]
  GETUPVAL R2 5
  LOADK R4 K2 ["PrimaryDummyPreview"]
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["useCallback"]
  DUPCLOSURE R4 K5 [PROTO_1]
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K6 ["Dummy"]
  GETTABLEKS R7 R0 K7 ["RevertToDefault"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R6 6
  CALL R6 0 1
  JUMPIF R6 [+12]
  GETUPVAL R6 7
  GETTABLEKS R8 R0 K8 ["Avatar"]
  GETTABLEKS R7 R8 K9 ["WorldModel"]
  LOADK R8 K10 ["CameraPosition"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K11 ["DEFAULT_CAMERA_ANGLE"]
  CALL R6 3 2
  MOVE R4 R6
  MOVE R5 R7
  GETUPVAL R6 9
  CALL R6 0 1
  JUMPIF R6 [+3]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+111]
  GETUPVAL R6 10
  CALL R6 0 1
  JUMPIFNOT R6 [+17]
  GETTABLEKS R6 R0 K6 ["Dummy"]
  JUMPIFNOT R6 [+14]
  GETTABLEKS R9 R0 K6 ["Dummy"]
  GETTABLEKS R8 R9 K12 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K13 [+4]
  LOADK R8 K13 ["PrimaryPart is not set"]
  GETIMPORT R6 K15 [assert]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 11
  NEWTABLE R8 2 0
  LOADN R9 255
  SETTABLEKS R9 R8 K17 ["ZIndex"]
  GETUPVAL R11 12
  GETTABLEKS R10 R11 K18 ["Event"]
  GETTABLEKS R9 R10 K19 ["InputBegan"]
  SETTABLE R3 R8 R9
  DUPTABLE R9 K22 [{"Background", "DummyPreview"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 13
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["Background"]
  GETTABLEKS R11 R0 K6 ["Dummy"]
  JUMPIFNOT R11 [+29]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 14
  DUPTABLE R12 K29 [{"Model", "ResetCameraSignal", "DEPRECATED_InitialCameraPosition", "DEPRECATED_SetInitialCameraPosition", "GetCameraModifications", "Static"}]
  GETTABLEKS R13 R0 K6 ["Dummy"]
  SETTABLEKS R13 R12 K23 ["Model"]
  GETTABLEKS R13 R0 K24 ["ResetCameraSignal"]
  SETTABLEKS R13 R12 K24 ["ResetCameraSignal"]
  SETTABLEKS R4 R12 K25 ["DEPRECATED_InitialCameraPosition"]
  SETTABLEKS R5 R12 K26 ["DEPRECATED_SetInitialCameraPosition"]
  GETTABLEKS R14 R1 K30 ["stage"]
  GETTABLEKS R13 R14 K31 ["getPreviewCameraModifications"]
  SETTABLEKS R13 R12 K27 ["GetCameraModifications"]
  GETTABLEKS R13 R1 K32 ["dummyPreviewLocked"]
  SETTABLEKS R13 R12 K28 ["Static"]
  CALL R10 2 1
  JUMP [+32]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 15
  DUPTABLE R12 K36 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R13 K39 [Vector2.new]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["AnchorPoint"]
  GETIMPORT R13 K43 [UDim2.fromScale]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["Position"]
  GETUPVAL R14 16
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+5]
  GETIMPORT R13 K43 [UDim2.fromScale]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["DummyPreview"]
  CALL R6 3 -1
  RETURN R6 -1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K44 ["ImageLabel"]
  NEWTABLE R8 8 0
  LOADN R9 1
  SETTABLEKS R9 R8 K45 ["BackgroundTransparency"]
  GETTABLEKS R9 R2 K46 ["BackgroundImage"]
  SETTABLEKS R9 R8 K47 ["Image"]
  GETIMPORT R9 K43 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K35 ["Size"]
  LOADN R9 255
  SETTABLEKS R9 R8 K17 ["ZIndex"]
  GETUPVAL R11 12
  GETTABLEKS R10 R11 K18 ["Event"]
  GETTABLEKS R9 R10 K19 ["InputBegan"]
  SETTABLE R3 R8 R9
  DUPTABLE R9 K48 [{"DummyPreview"}]
  GETTABLEKS R11 R0 K6 ["Dummy"]
  JUMPIFNOT R11 [+15]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 17
  DUPTABLE R12 K49 [{"Dummy", "ResetCameraSignal"}]
  GETTABLEKS R13 R0 K6 ["Dummy"]
  SETTABLEKS R13 R12 K6 ["Dummy"]
  GETTABLEKS R13 R0 K24 ["ResetCameraSignal"]
  SETTABLEKS R13 R12 K24 ["ResetCameraSignal"]
  CALL R10 2 1
  JUMP [+27]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 15
  DUPTABLE R12 K36 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R13 K39 [Vector2.new]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["AnchorPoint"]
  GETIMPORT R13 K43 [UDim2.fromScale]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["Position"]
  GETIMPORT R13 K43 [UDim2.fromScale]
  LOADK R14 K40 [0.5]
  LOADK R15 K40 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["DummyPreview"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["AvatarScreenContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["DEPRECATED_AvatarScreenContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K15 ["Background"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K16 ["DummyPreview_DEPRECATED"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Components"]
  GETTABLEKS R9 R10 K17 ["ModelPreview"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K18 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["useSerializedState"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K20 ["UI"]
  GETTABLEKS R11 R10 K21 ["LoadingIndicator"]
  GETTABLEKS R12 R10 K22 ["Pane"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K13 ["Util"]
  GETTABLEKS R14 R15 K23 ["Constants"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K24 ["Resources"]
  GETTABLEKS R15 R16 K25 ["Theme"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K26 ["Types"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K27 ["Flags"]
  GETTABLEKS R17 R18 K28 ["getFFlagAvatarPreviewerAdjustCameraScale"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K27 ["Flags"]
  GETTABLEKS R18 R19 K29 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R17 1 1
  MOVE R18 R17
  CALL R18 0 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K27 ["Flags"]
  GETTABLEKS R20 R21 K30 ["getFFlagAvatarPreviewerSkinToneAlphaDetection"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K10 ["Src"]
  GETTABLEKS R22 R23 K27 ["Flags"]
  GETTABLEKS R21 R22 K31 ["getFFlagAvatarPreviewerBetterUI"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K10 ["Src"]
  GETTABLEKS R23 R24 K27 ["Flags"]
  GETTABLEKS R22 R23 K32 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R21 1 1
  GETTABLEKS R23 R1 K33 ["ContextServices"]
  GETTABLEKS R22 R23 K34 ["Stylizer"]
  DUPCLOSURE R23 K35 [PROTO_2]
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R22
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R7
  RETURN R23 1
