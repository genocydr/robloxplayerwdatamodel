PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K2 [setmetatable]
  CALL R0 2 1
  GETIMPORT R1 K4 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["lastUpdate"]
  GETIMPORT R1 K7 [CFrame.new]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["focusOffset"]
  NAMECALL R1 R0 K9 ["Reset"]
  CALL R1 1 0
  GETIMPORT R1 K11 [require]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["LocalPlayer"]
  LOADK R5 K13 ["PlayerScripts"]
  NAMECALL R3 R3 K14 ["WaitForChild"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K15 ["PlayerModule"]
  LOADK R4 K16 ["ControlModule"]
  NAMECALL R2 R2 K14 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K17 ["controlModule"]
  LOADB R1 1
  SETTABLEKS R1 R0 K18 ["savedAutoRotate"]
  RETURN R0 1

PROTO_1:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["needsReset"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["needsBlackout"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["motionDetTime"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["blackOutTimer"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["lastCameraResetPosition"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["Reset"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R3 K1 [workspace]
  GETTABLEKS R2 R3 K2 ["CurrentCamera"]
  GETTABLEKS R3 R2 K3 ["CFrame"]
  GETTABLEKS R4 R2 K4 ["Focus"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["LocalPlayer"]
  NAMECALL R6 R0 K6 ["GetHumanoid"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K7 ["CameraSubject"]
  GETTABLEKS R8 R0 K8 ["lastUpdate"]
  JUMPIFEQKNIL R8 [+4]
  LOADN R8 1
  JUMPIFNOTLT R8 R1 [+4]
  LOADNIL R8
  SETTABLEKS R8 R0 K9 ["lastCameraTransform"]
  MOVE R10 R1
  NAMECALL R8 R0 K10 ["UpdateFadeFromBlack"]
  CALL R8 2 0
  MOVE R10 R5
  MOVE R11 R1
  NAMECALL R8 R0 K11 ["UpdateEdgeBlur"]
  CALL R8 3 0
  GETTABLEKS R8 R0 K12 ["lastSubjectPosition"]
  NAMECALL R9 R0 K13 ["GetSubjectPosition"]
  CALL R9 1 1
  GETTABLEKS R10 R0 K14 ["needsBlackout"]
  JUMPIFNOT R10 [+33]
  NAMECALL R10 R0 K15 ["StartFadeFromBlack"]
  CALL R10 1 0
  LOADK R12 K16 [0.0001]
  LOADK R13 K17 [0.1]
  FASTCALL3 MATH_CLAMP R1 R12 R13
  MOVE R11 R1
  GETIMPORT R10 K20 [math.clamp]
  CALL R10 3 1
  GETTABLEKS R11 R0 K21 ["blackOutTimer"]
  ADD R11 R11 R10
  SETTABLEKS R11 R0 K21 ["blackOutTimer"]
  GETTABLEKS R11 R0 K21 ["blackOutTimer"]
  LOADK R12 K17 [0.1]
  JUMPIFNOTLT R12 R11 [+13]
  GETIMPORT R11 K23 [game]
  NAMECALL R11 R11 K24 ["IsLoaded"]
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  LOADB R11 0
  SETTABLEKS R11 R0 K14 ["needsBlackout"]
  LOADB R11 1
  SETTABLEKS R11 R0 K25 ["needsReset"]
  JUMPIFNOT R9 [+67]
  JUMPIFNOT R5 [+66]
  JUMPIFNOT R2 [+65]
  MOVE R12 R9
  MOVE R13 R1
  NAMECALL R10 R0 K26 ["GetVRFocus"]
  CALL R10 3 1
  MOVE R4 R10
  NAMECALL R10 R0 K27 ["IsInFirstPerson"]
  CALL R10 1 1
  JUMPIFNOT R10 [+26]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K28 ["AvatarGestures"]
  JUMPIFNOT R10 [+11]
  MOVE R12 R1
  MOVE R13 R3
  MOVE R14 R4
  MOVE R15 R8
  MOVE R16 R9
  NAMECALL R10 R0 K29 ["UpdateImmersionCamera"]
  CALL R10 6 2
  MOVE R3 R10
  MOVE R4 R11
  JUMP [+36]
  MOVE R12 R1
  MOVE R13 R3
  MOVE R14 R4
  MOVE R15 R8
  MOVE R16 R9
  NAMECALL R10 R0 K30 ["UpdateFirstPersonTransform"]
  CALL R10 6 2
  MOVE R3 R10
  MOVE R4 R11
  JUMP [+25]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K31 ["ThirdPersonFollowCamEnabled"]
  JUMPIFNOT R10 [+11]
  MOVE R12 R1
  MOVE R13 R3
  MOVE R14 R4
  MOVE R15 R8
  MOVE R16 R9
  NAMECALL R10 R0 K32 ["UpdateThirdPersonFollowTransform"]
  CALL R10 6 2
  MOVE R3 R10
  MOVE R4 R11
  JUMP [+10]
  MOVE R12 R1
  MOVE R13 R3
  MOVE R14 R4
  MOVE R15 R8
  MOVE R16 R9
  NAMECALL R10 R0 K33 ["UpdateThirdPersonComfortTransform"]
  CALL R10 6 2
  MOVE R3 R10
  MOVE R4 R11
  SETTABLEKS R3 R0 K9 ["lastCameraTransform"]
  SETTABLEKS R4 R0 K34 ["lastCameraFocus"]
  GETIMPORT R10 K36 [tick]
  CALL R10 0 1
  SETTABLEKS R10 R0 K8 ["lastUpdate"]
  RETURN R3 2

PROTO_3:
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R2 R1 K3 ["CameraSubject"]
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  LOADK R5 K4 ["Humanoid"]
  NAMECALL R3 R2 K5 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+19]
  GETTABLEKS R3 R2 K6 ["RootPart"]
  JUMPIFNOT R3 [+16]
  GETTABLEKS R3 R2 K6 ["RootPart"]
  GETTABLEKS R7 R3 K7 ["Position"]
  GETTABLEKS R6 R7 K8 ["Y"]
  GETTABLEKS R9 R3 K10 ["Size"]
  GETTABLEKS R8 R9 K8 ["Y"]
  DIVK R7 R8 K9 [2]
  SUB R5 R6 R7
  GETTABLEKS R6 R2 K11 ["HipHeight"]
  SUB R4 R5 R6
  RETURN R4 1
  LOADNIL R3
  RETURN R3 1

PROTO_4:
  GETTABLEKS R6 R0 K0 ["needsReset"]
  JUMPIFNOT R6 [+6]
  NAMECALL R6 R0 K1 ["StartFadeFromBlack"]
  CALL R6 1 0
  LOADB R6 0
  SETTABLEKS R6 R0 K0 ["needsReset"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["LocalPlayer"]
  SUB R7 R4 R5
  GETTABLEKS R8 R7 K3 ["magnitude"]
  LOADK R9 K4 [0.01]
  JUMPIFNOTLT R9 R8 [+5]
  MOVE R10 R6
  NAMECALL R8 R0 K5 ["StartVREdgeBlur"]
  CALL R8 2 0
  GETTABLEKS R8 R3 K6 ["p"]
  NAMECALL R9 R0 K7 ["GetCameraLookVector"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K8 ["X"]
  LOADN R12 0
  GETTABLEKS R13 R9 K9 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K12 [Vector3.new]
  CALL R10 3 1
  GETTABLEKS R9 R10 K13 ["Unit"]
  MOVE R12 R1
  NAMECALL R10 R0 K14 ["getRotation"]
  CALL R10 2 1
  MOVE R13 R9
  GETIMPORT R14 K16 [Vector2.new]
  MOVE R15 R10
  LOADN R16 0
  CALL R14 2 -1
  NAMECALL R11 R0 K17 ["CalculateNewLookVectorFromArg"]
  CALL R11 -1 1
  GETIMPORT R12 K19 [CFrame.new]
  LOADK R15 K20 [0.5]
  MUL R14 R15 R11
  SUB R13 R8 R14
  MOVE R14 R8
  CALL R12 2 1
  MOVE R2 R12
  RETURN R2 2

PROTO_5:
  NAMECALL R6 R0 K0 ["GetSubjectCFrame"]
  CALL R6 1 1
  GETIMPORT R8 K2 [workspace]
  GETTABLEKS R7 R8 K3 ["CurrentCamera"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["LocalPlayer"]
  GETTABLEKS R8 R9 K5 ["Character"]
  NAMECALL R9 R0 K6 ["GetHumanoid"]
  CALL R9 1 1
  JUMPIF R9 [+5]
  GETTABLEKS R10 R7 K7 ["CFrame"]
  GETTABLEKS R11 R7 K8 ["Focus"]
  RETURN R10 2
  LOADK R12 K9 ["HumanoidRootPart"]
  NAMECALL R10 R8 K10 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIF R10 [+5]
  GETTABLEKS R11 R7 K7 ["CFrame"]
  GETTABLEKS R12 R7 K8 ["Focus"]
  RETURN R11 2
  LOADK R13 K11 ["CharacterAlignOrientation"]
  NAMECALL R11 R10 K10 ["FindFirstChild"]
  CALL R11 2 1
  SETTABLEKS R11 R0 K12 ["characterOrientation"]
  GETTABLEKS R11 R0 K12 ["characterOrientation"]
  JUMPIF R11 [+36]
  LOADK R13 K13 ["RootAttachment"]
  NAMECALL R11 R10 K10 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K16 [Instance.new]
  LOADK R13 K17 ["AlignOrientation"]
  CALL R12 1 1
  SETTABLEKS R12 R0 K12 ["characterOrientation"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  LOADK R13 K11 ["CharacterAlignOrientation"]
  SETTABLEKS R13 R12 K18 ["Name"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  GETIMPORT R13 K22 [Enum.OrientationAlignmentMode.OneAttachment]
  SETTABLEKS R13 R12 K23 ["Mode"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  SETTABLEKS R11 R12 K24 ["Attachment0"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  LOADB R13 1
  SETTABLEKS R13 R12 K25 ["RigidityEnabled"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  SETTABLEKS R10 R12 K26 ["Parent"]
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  GETTABLEKS R11 R12 K27 ["Enabled"]
  JUMPIFNOTEQKB R11 FALSE [+6]
  GETTABLEKS R11 R0 K12 ["characterOrientation"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["Enabled"]
  GETTABLEKS R11 R0 K28 ["needsReset"]
  JUMPIFNOT R11 [+25]
  LOADB R11 0
  SETTABLEKS R11 R0 K28 ["needsReset"]
  GETTABLEKS R11 R9 K29 ["AutoRotate"]
  SETTABLEKS R11 R0 K30 ["savedAutoRotate"]
  LOADB R11 0
  SETTABLEKS R11 R9 K29 ["AutoRotate"]
  GETTABLEKS R11 R0 K31 ["NoRecenter"]
  JUMPIFNOT R11 [+7]
  LOADB R11 0
  SETTABLEKS R11 R0 K31 ["NoRecenter"]
  GETUPVAL R11 1
  NAMECALL R11 R11 K32 ["RecenterUserHeadCFrame"]
  CALL R11 1 0
  NAMECALL R11 R0 K33 ["StartFadeFromBlack"]
  CALL R11 1 0
  MOVE R2 R6
  JUMP [+226]
  GETTABLEKS R11 R9 K34 ["Sit"]
  JUMPIFNOT R11 [+20]
  MOVE R2 R6
  GETTABLEKS R13 R2 K35 ["Position"]
  GETTABLEKS R15 R7 K7 ["CFrame"]
  GETTABLEKS R14 R15 K35 ["Position"]
  SUB R12 R13 R14
  GETTABLEKS R11 R12 K36 ["Magnitude"]
  LOADK R12 K37 [0.01]
  JUMPIFNOTLT R12 R11 [+211]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["LocalPlayer"]
  NAMECALL R11 R0 K38 ["StartVREdgeBlur"]
  CALL R11 2 0
  JUMP [+203]
  GETTABLEKS R11 R0 K39 ["controlModule"]
  NAMECALL R11 R11 K40 ["GetEstimatedVRTorsoFrame"]
  CALL R11 1 1
  GETTABLEKS R12 R0 K12 ["characterOrientation"]
  GETTABLEKS R14 R7 K7 ["CFrame"]
  MUL R13 R14 R11
  SETTABLEKS R13 R12 K7 ["CFrame"]
  GETTABLEKS R14 R0 K39 ["controlModule"]
  GETTABLEKS R13 R14 K41 ["inputMoveVector"]
  GETTABLEKS R12 R13 K36 ["Magnitude"]
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+4]
  LOADK R12 K42 [0.1]
  SETTABLEKS R12 R0 K43 ["motionDetTime"]
  GETTABLEKS R14 R0 K39 ["controlModule"]
  GETTABLEKS R13 R14 K41 ["inputMoveVector"]
  GETTABLEKS R12 R13 K36 ["Magnitude"]
  LOADN R13 0
  JUMPIFLT R13 R12 [+6]
  GETTABLEKS R12 R0 K43 ["motionDetTime"]
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+92]
  GETTABLEKS R12 R0 K43 ["motionDetTime"]
  SUB R12 R12 R1
  SETTABLEKS R12 R0 K43 ["motionDetTime"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K4 ["LocalPlayer"]
  NAMECALL R12 R0 K38 ["StartVREdgeBlur"]
  CALL R12 2 0
  GETUPVAL R12 1
  GETIMPORT R14 K46 [Enum.UserCFrame.Head]
  NAMECALL R12 R12 K47 ["GetUserCFrame"]
  CALL R12 2 1
  GETTABLEKS R13 R12 K48 ["Rotation"]
  GETTABLEKS R15 R12 K35 ["Position"]
  GETTABLEKS R16 R7 K49 ["HeadScale"]
  MUL R14 R15 R16
  ADD R12 R13 R14
  GETTABLEKS R13 R8 K9 ["HumanoidRootPart"]
  LOADK R16 K51 [-0.7]
  GETTABLEKS R18 R13 K52 ["Size"]
  GETTABLEKS R17 R18 K53 ["Y"]
  MUL R15 R16 R17
  DIVK R14 R15 K50 [2]
  GETTABLEKS R17 R7 K7 ["CFrame"]
  MUL R16 R17 R12
  GETIMPORT R17 K54 [CFrame.new]
  LOADN R18 0
  MOVE R19 R14
  LOADN R20 0
  CALL R17 3 1
  MUL R15 R16 R17
  GETTABLEKS R17 R13 K7 ["CFrame"]
  GETTABLEKS R16 R17 K55 ["LookVector"]
  GETTABLEKS R21 R16 K57 ["X"]
  LOADN R22 0
  GETTABLEKS R23 R16 K58 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R20 K60 [Vector3.new]
  CALL R20 3 1
  GETTABLEKS R19 R20 K61 ["Unit"]
  GETTABLEKS R21 R13 K52 ["Size"]
  GETTABLEKS R20 R21 K53 ["Y"]
  MUL R18 R19 R20
  MULK R17 R18 K56 [0.125]
  SUB R15 R15 R17
  GETTABLEKS R19 R15 K35 ["Position"]
  SUB R18 R5 R19
  GETTABLEKS R20 R7 K7 ["CFrame"]
  GETTABLEKS R19 R20 K35 ["Position"]
  ADD R17 R18 R19
  GETTABLEKS R19 R17 K57 ["X"]
  GETTABLEKS R20 R5 K53 ["Y"]
  GETTABLEKS R21 R17 K58 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R18 K60 [Vector3.new]
  CALL R18 3 1
  MOVE R17 R18
  GETTABLEKS R19 R7 K7 ["CFrame"]
  GETTABLEKS R18 R19 K48 ["Rotation"]
  ADD R2 R18 R17
  JUMP [+23]
  GETTABLEKS R13 R7 K7 ["CFrame"]
  GETTABLEKS R12 R13 K48 ["Rotation"]
  GETTABLEKS R16 R7 K7 ["CFrame"]
  GETTABLEKS R15 R16 K35 ["Position"]
  GETTABLEKS R14 R15 K57 ["X"]
  GETTABLEKS R15 R5 K53 ["Y"]
  GETTABLEKS R18 R7 K7 ["CFrame"]
  GETTABLEKS R17 R18 K35 ["Position"]
  GETTABLEKS R16 R17 K58 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K60 [Vector3.new]
  CALL R13 3 1
  ADD R2 R12 R13
  MOVE R14 R1
  NAMECALL R12 R0 K62 ["getRotation"]
  CALL R12 2 1
  FASTCALL1 MATH_ABS R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K65 [math.abs]
  CALL R13 1 1
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+40]
  GETUPVAL R13 1
  GETIMPORT R15 K46 [Enum.UserCFrame.Head]
  NAMECALL R13 R13 K47 ["GetUserCFrame"]
  CALL R13 2 1
  GETTABLEKS R14 R13 K48 ["Rotation"]
  GETTABLEKS R16 R13 K35 ["Position"]
  GETTABLEKS R17 R7 K49 ["HeadScale"]
  MUL R15 R16 R17
  ADD R13 R14 R15
  MUL R14 R2 R13
  GETIMPORT R17 K54 [CFrame.new]
  GETTABLEKS R18 R14 K35 ["Position"]
  CALL R17 1 1
  GETIMPORT R18 K67 [CFrame.Angles]
  LOADN R19 0
  MULK R22 R12 K68 [90]
  FASTCALL1 MATH_RAD R22 [+2]
  GETIMPORT R21 K70 [math.rad]
  CALL R21 1 1
  MINUS R20 R21
  LOADN R21 0
  CALL R18 3 1
  MUL R16 R17 R18
  GETTABLEKS R17 R14 K48 ["Rotation"]
  MUL R15 R16 R17
  NAMECALL R16 R13 K71 ["Inverse"]
  CALL R16 1 1
  MUL R2 R15 R16
  MOVE R11 R2
  GETIMPORT R13 K54 [CFrame.new]
  LOADN R14 0
  LOADN R15 0
  LOADK R16 K72 [-0.5]
  CALL R13 3 1
  MUL R12 R2 R13
  RETURN R11 2

PROTO_6:
  NAMECALL R6 R0 K0 ["GetCameraToSubjectDistance"]
  CALL R6 1 1
  LOADK R7 K1 [0.5]
  JUMPIFNOTLT R6 R7 [+2]
  LOADK R6 K1 [0.5]
  JUMPIFEQKNIL R4 [+163]
  GETTABLEKS R7 R0 K2 ["lastCameraFocus"]
  JUMPIFEQKNIL R7 [+159]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["LocalPlayer"]
  SUB R8 R4 R5
  GETTABLEKS R9 R0 K4 ["controlModule"]
  NAMECALL R9 R9 K5 ["GetMoveVector"]
  CALL R9 1 1
  LOADB R10 1
  GETTABLEKS R11 R8 K6 ["magnitude"]
  LOADK R12 K7 [0.01]
  JUMPIFLT R12 R11 [+8]
  GETTABLEKS R11 R9 K6 ["magnitude"]
  LOADK R12 K7 [0.01]
  JUMPIFLT R12 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R10 [+3]
  LOADK R11 K8 [0.1]
  SETTABLEKS R11 R0 K9 ["motionDetTime"]
  GETTABLEKS R12 R0 K9 ["motionDetTime"]
  SUB R11 R12 R1
  SETTABLEKS R11 R0 K9 ["motionDetTime"]
  GETTABLEKS R11 R0 K9 ["motionDetTime"]
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+2]
  LOADB R10 1
  JUMPIFNOT R10 [+9]
  GETTABLEKS R11 R0 K10 ["needsReset"]
  JUMPIF R11 [+6]
  GETTABLEKS R3 R0 K2 ["lastCameraFocus"]
  LOADB R11 1
  SETTABLEKS R11 R0 K11 ["VRCameraFocusFrozen"]
  RETURN R2 2
  LOADB R11 1
  GETTABLEKS R12 R0 K12 ["lastCameraResetPosition"]
  JUMPIFEQKNIL R12 [+11]
  GETTABLEKS R14 R0 K12 ["lastCameraResetPosition"]
  SUB R13 R5 R14
  GETTABLEKS R12 R13 K13 ["Magnitude"]
  LOADN R13 1
  JUMPIFLT R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  MOVE R14 R1
  NAMECALL R12 R0 K14 ["getRotation"]
  CALL R12 2 1
  FASTCALL1 MATH_ABS R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K17 [math.abs]
  CALL R13 1 1
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+13]
  MOVE R15 R2
  NAMECALL R13 R3 K18 ["ToObjectSpace"]
  CALL R13 2 1
  GETIMPORT R15 K21 [CFrame.Angles]
  LOADN R16 0
  MINUS R17 R12
  LOADN R18 0
  CALL R15 3 1
  MUL R14 R3 R15
  MUL R2 R14 R13
  GETTABLEKS R13 R0 K11 ["VRCameraFocusFrozen"]
  JUMPIFNOT R13 [+1]
  JUMPIF R11 [+3]
  GETTABLEKS R13 R0 K10 ["needsReset"]
  JUMPIFNOT R13 [+65]
  GETUPVAL R13 1
  NAMECALL R13 R13 K22 ["RecenterUserHeadCFrame"]
  CALL R13 1 0
  LOADB R13 0
  SETTABLEKS R13 R0 K11 ["VRCameraFocusFrozen"]
  LOADB R13 0
  SETTABLEKS R13 R0 K10 ["needsReset"]
  SETTABLEKS R5 R0 K12 ["lastCameraResetPosition"]
  NAMECALL R13 R0 K23 ["ResetZoom"]
  CALL R13 1 0
  NAMECALL R13 R0 K24 ["StartFadeFromBlack"]
  CALL R13 1 0
  NAMECALL R13 R0 K25 ["GetHumanoid"]
  CALL R13 1 1
  GETTABLEKS R15 R13 K26 ["Torso"]
  JUMPIFNOT R15 [+7]
  GETTABLEKS R16 R13 K26 ["Torso"]
  GETTABLEKS R15 R16 K19 ["CFrame"]
  GETTABLEKS R14 R15 K27 ["lookVector"]
  JUMPIF R14 [+1]
  LOADK R14 K28 [{1, 0, 0}]
  GETTABLEKS R16 R14 K29 ["X"]
  LOADN R17 0
  GETTABLEKS R18 R14 K30 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K33 [Vector3.new]
  CALL R15 3 1
  GETTABLEKS R17 R3 K34 ["Position"]
  MUL R18 R15 R6
  SUB R16 R17 R18
  GETTABLEKS R19 R3 K34 ["Position"]
  GETTABLEKS R18 R19 K29 ["X"]
  GETTABLEKS R19 R16 K35 ["Y"]
  GETTABLEKS R21 R3 K34 ["Position"]
  GETTABLEKS R20 R21 K30 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K33 [Vector3.new]
  CALL R17 3 1
  GETIMPORT R18 K36 [CFrame.new]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R2 R18
  RETURN R2 2

PROTO_7:
  GETIMPORT R7 K1 [workspace]
  GETTABLEKS R6 R7 K2 ["CurrentCamera"]
  NAMECALL R7 R0 K3 ["GetCameraToSubjectDistance"]
  CALL R7 1 1
  MOVE R10 R5
  MOVE R11 R1
  NAMECALL R8 R0 K4 ["GetVRFocus"]
  CALL R8 3 1
  GETTABLEKS R9 R0 K5 ["needsReset"]
  JUMPIFNOT R9 [+13]
  LOADB R9 0
  SETTABLEKS R9 R0 K5 ["needsReset"]
  GETUPVAL R9 0
  NAMECALL R9 R9 K6 ["RecenterUserHeadCFrame"]
  CALL R9 1 0
  NAMECALL R9 R0 K7 ["ResetZoom"]
  CALL R9 1 0
  NAMECALL R9 R0 K8 ["StartFadeFromBlack"]
  CALL R9 1 0
  GETTABLEKS R9 R0 K9 ["recentered"]
  JUMPIFNOT R9 [+31]
  NAMECALL R9 R0 K10 ["GetSubjectCFrame"]
  CALL R9 1 1
  JUMPIF R9 [+5]
  GETTABLEKS R10 R6 K11 ["CFrame"]
  GETTABLEKS R11 R6 K12 ["Focus"]
  RETURN R10 2
  GETTABLEKS R11 R9 K13 ["Rotation"]
  MUL R10 R8 R11
  GETIMPORT R11 K15 [CFrame.new]
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R7
  CALL R11 3 1
  MUL R2 R10 R11
  MOVE R12 R2
  NAMECALL R10 R8 K16 ["ToObjectSpace"]
  CALL R10 2 1
  SETTABLEKS R10 R0 K17 ["focusOffset"]
  LOADB R10 0
  SETTABLEKS R10 R0 K9 ["recentered"]
  MOVE R10 R2
  MOVE R11 R8
  RETURN R10 2
  GETTABLEKS R11 R0 K17 ["focusOffset"]
  NAMECALL R9 R8 K18 ["ToWorldSpace"]
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K19 ["LocalPlayer"]
  SUB R11 R4 R5
  GETTABLEKS R12 R0 K20 ["controlModule"]
  NAMECALL R13 R12 K21 ["GetMoveVector"]
  CALL R13 1 1
  GETTABLEKS R14 R11 K22 ["magnitude"]
  LOADK R15 K23 [0.01]
  JUMPIFLT R15 R14 [+6]
  GETTABLEKS R14 R13 K22 ["magnitude"]
  LOADN R15 0
  JUMPIFNOTLT R15 R14 [+53]
  NAMECALL R14 R12 K24 ["GetEstimatedVRTorsoFrame"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K13 ["Rotation"]
  GETTABLEKS R17 R14 K25 ["Position"]
  GETTABLEKS R18 R6 K26 ["HeadScale"]
  MUL R16 R17 R18
  ADD R14 R15 R16
  GETTABLEKS R16 R6 K11 ["CFrame"]
  MUL R15 R16 R14
  GETTABLEKS R16 R15 K27 ["LookVector"]
  GETTABLEKS R20 R16 K28 ["X"]
  LOADN R21 0
  GETTABLEKS R22 R16 K29 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R19 K31 [Vector3.new]
  CALL R19 3 1
  GETTABLEKS R18 R19 K32 ["Unit"]
  MUL R17 R18 R7
  GETTABLEKS R19 R8 K25 ["Position"]
  SUB R18 R19 R17
  GETIMPORT R20 K15 [CFrame.new]
  GETTABLEKS R24 R6 K11 ["CFrame"]
  GETTABLEKS R23 R24 K25 ["Position"]
  ADD R22 R23 R18
  GETTABLEKS R23 R15 K25 ["Position"]
  SUB R21 R22 R23
  CALL R20 1 1
  GETTABLEKS R21 R9 K13 ["Rotation"]
  MUL R19 R20 R21
  MOVE R22 R19
  LOADK R23 K23 [0.01]
  NAMECALL R20 R9 K33 ["Lerp"]
  CALL R20 3 1
  MOVE R2 R20
  JUMP [+1]
  MOVE R2 R9
  MOVE R16 R1
  NAMECALL R14 R0 K34 ["getRotation"]
  CALL R14 2 1
  FASTCALL1 MATH_ABS R14 [+3]
  MOVE R16 R14
  GETIMPORT R15 K37 [math.abs]
  CALL R15 1 1
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+13]
  MOVE R17 R2
  NAMECALL R15 R8 K16 ["ToObjectSpace"]
  CALL R15 2 1
  GETIMPORT R17 K39 [CFrame.Angles]
  LOADN R18 0
  MINUS R19 R14
  LOADN R20 0
  CALL R17 3 1
  MUL R16 R8 R17
  MUL R2 R16 R15
  MOVE R17 R2
  NAMECALL R15 R8 K16 ["ToObjectSpace"]
  CALL R15 2 1
  SETTABLEKS R15 R0 K17 ["focusOffset"]
  GETIMPORT R15 K15 [CFrame.new]
  LOADN R16 0
  LOADN R17 0
  MINUS R18 R7
  CALL R15 3 1
  MUL R3 R2 R15
  GETTABLEKS R17 R3 K25 ["Position"]
  GETTABLEKS R19 R6 K12 ["Focus"]
  GETTABLEKS R18 R19 K25 ["Position"]
  SUB R16 R17 R18
  GETTABLEKS R15 R16 K40 ["Magnitude"]
  LOADK R16 K23 [0.01]
  JUMPIFNOTLT R16 R15 [+7]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K19 ["LocalPlayer"]
  NAMECALL R15 R0 K41 ["StartVREdgeBlur"]
  CALL R15 2 0
  RETURN R2 2

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LeaveFirstPerson"]
  MOVE R2 R0
  CALL R1 1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["needsReset"]
  GETTABLEKS R1 R0 K2 ["VRBlur"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["VRBlur"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["Visible"]
  GETTABLEKS R1 R0 K4 ["characterOrientation"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["characterOrientation"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["Enabled"]
  NAMECALL R1 R0 K6 ["GetHumanoid"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K7 ["savedAutoRotate"]
  SETTABLEKS R2 R1 K8 ["AutoRotate"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["VRService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [UserSettings]
  CALL R2 0 1
  LOADK R4 K7 ["UserGameSettings"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K12 ["Parent"]
  LOADK R6 K13 ["CameraInput"]
  NAMECALL R4 R4 K14 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K9 [require]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  LOADK R7 K15 ["CameraUtils"]
  NAMECALL R5 R5 K14 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K9 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  LOADK R8 K16 ["VRBaseCamera"]
  NAMECALL R6 R6 K14 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  NEWTABLE R7 16 0
  FASTCALL2 SETMETATABLE R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K18 [setmetatable]
  CALL R6 2 1
  SETTABLEKS R6 R6 K19 ["__index"]
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K21 ["new"]
  DUPCLOSURE R7 K22 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K23 ["Reset"]
  DUPCLOSURE R7 K24 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K25 ["Update"]
  DUPCLOSURE R7 K26 [PROTO_3]
  SETTABLEKS R7 R6 K27 ["GetAvatarFeetWorldYValue"]
  DUPCLOSURE R7 K28 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K29 ["UpdateFirstPersonTransform"]
  DUPCLOSURE R7 K30 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K31 ["UpdateImmersionCamera"]
  DUPCLOSURE R7 K32 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K33 ["UpdateThirdPersonComfortTransform"]
  DUPCLOSURE R7 K34 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K35 ["UpdateThirdPersonFollowTransform"]
  DUPCLOSURE R7 K36 [PROTO_8]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K37 ["LeaveFirstPerson"]
  RETURN R6 1