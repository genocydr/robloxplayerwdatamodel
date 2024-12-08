PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onAvatarGesturesChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["partCFrameMap"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["connections"]
  LOADB R1 1
  SETTABLEKS R1 R0 K5 ["analyticsSendEnabled"]
  GETTABLEKS R1 R0 K4 ["connections"]
  LOADK R3 K6 ["AvatarGestures"]
  GETUPVAL R4 2
  LOADK R6 K6 ["AvatarGestures"]
  NAMECALL R4 R4 K7 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K8 ["connect"]
  CALL R1 4 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["AvatarGestures"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K9 ["onAvatarGesturesChanged"]
  CALL R1 1 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CameraSubject"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CameraSubject"]
  LOADK R3 K1 ["VehicleSeat"]
  NAMECALL R1 R1 K2 ["IsA"]
  CALL R1 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["CFrame"]
  GETTABLEKS R5 R6 K4 ["Position"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Focus"]
  GETTABLEKS R6 R7 K4 ["Position"]
  SUB R4 R5 R6
  GETTABLEKS R3 R4 K6 ["Magnitude"]
  LOADN R4 5
  JUMPIFLE R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 1
  LOADK R5 K7 ["TrackedIKHead"]
  NAMECALL R3 R3 K8 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  JUMPIFNOT R0 [+7]
  JUMPIF R1 [+6]
  JUMPIFNOT R2 [+5]
  GETIMPORT R4 K12 [Enum.IKControlType.Transform]
  SETTABLEKS R4 R3 K13 ["Type"]
  RETURN R0 0
  GETIMPORT R4 K15 [Enum.IKControlType.Rotation]
  SETTABLEKS R4 R3 K13 ["Type"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  JUMPIFNOT R0 [+20]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["CFrame"]
  GETTABLEKS R3 R4 K1 ["Position"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Focus"]
  GETTABLEKS R4 R5 K1 ["Position"]
  SUB R2 R3 R4
  GETTABLEKS R1 R2 K3 ["Magnitude"]
  LOADN R2 5
  JUMPIFNOTLE R1 R2 [+5]
  GETUPVAL R1 2
  NAMECALL R1 R1 K4 ["RecenterUserHeadCFrame"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 ["Humanoid"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 0 3
  LOADK R4 K2 ["TrackedIKLeftHand"]
  LOADK R5 K3 ["TrackedIKRightHand"]
  LOADK R6 K4 ["TrackedIKHead"]
  SETLIST R3 R4 3 [1]
  GETIMPORT R4 K6 [pairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_NEXT R4
  MOVE R11 R8
  NAMECALL R9 R2 K1 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  LOADN R10 0
  SETTABLEKS R10 R9 K7 ["SmoothTime"]
  FORGLOOP R4 2 [-9]
  GETIMPORT R5 K9 [workspace]
  GETTABLEKS R4 R5 K10 ["CurrentCamera"]
  JUMPIF R4 [+1]
  RETURN R0 0
  NEWCLOSURE R5 P0
  CAPTURE VAL R4
  CAPTURE VAL R2
  MOVE R6 R5
  GETTABLEKS R7 R2 K11 ["Sit"]
  CALL R6 1 0
  GETTABLEKS R6 R0 K12 ["connections"]
  LOADK R8 K13 ["Seated"]
  GETTABLEKS R9 R2 K13 ["Seated"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K14 ["connect"]
  CALL R6 4 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onCharacterChanged"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onAvatarGesturesChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AvatarGestures"]
  JUMPIFNOT R1 [+83]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["VREnabled"]
  JUMPIF R1 [+2]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+111]
  GETUPVAL R1 2
  LOADK R3 K2 ["AvatarGesturesVRPlayer"]
  LOADN R4 5
  NAMECALL R1 R1 K3 ["WaitForChild"]
  CALL R1 3 1
  JUMPIF R1 [+5]
  GETIMPORT R2 K5 [warn]
  LOADK R3 K6 ["VRService.AvatarGestures failed to connect to server"]
  CALL R2 1 0
  RETURN R0 0
  LOADB R4 1
  NAMECALL R2 R1 K7 ["FireServer"]
  CALL R2 2 0
  NAMECALL R2 R0 K8 ["connectInputCFrames"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["avatarUtil"]
  JUMPIF R2 [+14]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K9 ["avatarUtil"]
  GETTABLEKS R2 R0 K9 ["avatarUtil"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K11 ["connectLocalCharacterChanges"]
  CALL R2 2 0
  JUMP [+18]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K12 ["LocalPlayer"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["LocalPlayer"]
  GETTABLEKS R2 R3 K13 ["Character"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K12 ["LocalPlayer"]
  GETTABLEKS R4 R5 K13 ["Character"]
  NAMECALL R2 R0 K14 ["onCharacterChanged"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K15 ["analyticsSendEnabled"]
  JUMPIFNOT R2 [+54]
  LOADNIL R2
  SETTABLEKS R2 R0 K15 ["analyticsSendEnabled"]
  GETUPVAL R2 5
  LOADK R4 K16 ["VRAvatarGestures"]
  DUPTABLE R5 K19 [{"placeId", "calledFrom"}]
  GETIMPORT R7 K21 [game]
  GETTABLEKS R6 R7 K22 ["PlaceId"]
  SETTABLEKS R6 R5 K17 ["placeId"]
  LOADK R6 K23 ["ClientJoined"]
  SETTABLEKS R6 R5 K18 ["calledFrom"]
  GETUPVAL R6 6
  NAMECALL R2 R2 K24 ["ReportInfluxSeries"]
  CALL R2 4 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["VREnabled"]
  JUMPIF R1 [+2]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 2
  LOADK R3 K2 ["AvatarGesturesVRPlayer"]
  NAMECALL R1 R1 K25 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  LOADB R4 0
  NAMECALL R2 R1 K7 ["FireServer"]
  CALL R2 2 0
  GETTABLEKS R1 R0 K26 ["connections"]
  NAMECALL R1 R1 K27 ["disconnectAll"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K26 ["connections"]
  LOADK R3 K0 ["AvatarGestures"]
  GETUPVAL R4 0
  LOADK R6 K0 ["AvatarGestures"]
  NAMECALL R4 R4 K28 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K29 ["connect"]
  CALL R1 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LocalPlayer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K1 ["Character"]
  GETTABLEKS R5 R3 K1 ["Character"]
  JUMPIF R5 [+1]
  RETURN R0 0
  MOVE R7 R1
  NAMECALL R5 R4 K2 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R7 K4 [workspace]
  GETTABLEKS R6 R7 K5 ["CurrentCamera"]
  JUMPIF R6 [+1]
  RETURN R0 0
  MOVE R10 R1
  LOADK R11 K6 ["Attachment"]
  CONCAT R9 R10 R11
  NAMECALL R7 R5 K2 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIF R7 [+1]
  RETURN R0 0
  MOVE R11 R1
  LOADK R12 K7 ["AlignPosition"]
  CONCAT R10 R11 R12
  NAMECALL R8 R5 K2 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIF R8 [+1]
  RETURN R0 0
  MOVE R12 R1
  LOADK R13 K8 ["AlignOrientation"]
  CONCAT R11 R12 R13
  NAMECALL R9 R5 K2 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["VREnabled"]
  JUMPIFNOT R10 [+126]
  GETTABLEKS R10 R2 K10 ["Rotation"]
  GETTABLEKS R12 R2 K11 ["Position"]
  GETTABLEKS R13 R6 K12 ["HeadScale"]
  MUL R11 R12 R13
  ADD R2 R10 R11
  GETTABLEKS R11 R6 K13 ["CFrame"]
  MUL R10 R11 R2
  LOADK R13 K14 ["Head"]
  NAMECALL R11 R4 K2 ["FindFirstChild"]
  CALL R11 2 1
  GETTABLEKS R15 R6 K13 ["CFrame"]
  GETTABLEKS R14 R15 K11 ["Position"]
  GETTABLEKS R16 R6 K15 ["Focus"]
  GETTABLEKS R15 R16 K11 ["Position"]
  SUB R13 R14 R15
  GETTABLEKS R12 R13 K16 ["Magnitude"]
  LOADN R13 5
  JUMPIFNOTLT R13 R12 [+79]
  JUMPIFNOT R11 [+77]
  GETUPVAL R12 1
  GETIMPORT R14 K19 [Enum.UserCFrame.Head]
  NAMECALL R12 R12 K20 ["GetUserCFrame"]
  CALL R12 2 1
  GETTABLEKS R13 R12 K10 ["Rotation"]
  GETTABLEKS R15 R12 K11 ["Position"]
  GETTABLEKS R16 R6 K12 ["HeadScale"]
  MUL R14 R15 R16
  ADD R12 R13 R14
  GETTABLEKS R15 R6 K13 ["CFrame"]
  MUL R14 R15 R12
  GETIMPORT R15 K22 [CFrame.new]
  LOADN R16 0
  LOADN R17 0
  LOADK R18 K23 [0.5]
  CALL R15 3 1
  MUL R13 R14 R15
  JUMPIFEQKS R1 K24 ["TrackedHead"] [+24]
  GETTABLEKS R14 R11 K13 ["CFrame"]
  MOVE R18 R10
  NAMECALL R16 R13 K25 ["ToObjectSpace"]
  CALL R16 2 -1
  NAMECALL R14 R14 K26 ["ToWorldSpace"]
  CALL R14 -1 1
  GETTABLEKS R15 R14 K11 ["Position"]
  SETTABLEKS R15 R8 K11 ["Position"]
  GETIMPORT R16 K28 [CFrame.Angles]
  LOADK R17 K29 [1.5707963267949]
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  MUL R15 R14 R16
  SETTABLEKS R15 R9 K13 ["CFrame"]
  JUMP [+89]
  GETTABLEKS R15 R4 K30 ["PrimaryPart"]
  GETTABLEKS R14 R15 K13 ["CFrame"]
  GETIMPORT R17 K22 [CFrame.new]
  LOADN R18 0
  GETTABLEKS R21 R14 K11 ["Position"]
  GETTABLEKS R20 R21 K32 ["Y"]
  MULK R19 R20 K31 [0.25]
  GETTABLEKS R23 R14 K11 ["Position"]
  GETTABLEKS R22 R23 K32 ["Y"]
  MINUS R21 R22
  MULK R20 R21 K33 [0.125]
  CALL R17 3 1
  MUL R16 R14 R17
  GETTABLEKS R15 R16 K11 ["Position"]
  SETTABLEKS R15 R8 K11 ["Position"]
  MUL R15 R14 R2
  SETTABLEKS R15 R9 K13 ["CFrame"]
  JUMP [+61]
  GETTABLEKS R12 R10 K11 ["Position"]
  SETTABLEKS R12 R8 K11 ["Position"]
  JUMPIFEQKS R1 K24 ["TrackedHead"] [+11]
  GETIMPORT R13 K28 [CFrame.Angles]
  LOADK R14 K29 [1.5707963267949]
  LOADN R15 0
  LOADN R16 0
  CALL R13 3 1
  MUL R12 R10 R13
  SETTABLEKS R12 R9 K13 ["CFrame"]
  JUMP [+45]
  SETTABLEKS R10 R9 K13 ["CFrame"]
  JUMP [+42]
  LOADK R12 K34 ["HumanoidRootPart"]
  NAMECALL R10 R4 K2 ["FindFirstChild"]
  CALL R10 2 1
  LOADNIL R11
  JUMPIFEQKS R1 K24 ["TrackedHead"] [+26]
  GETTABLEKS R14 R10 K13 ["CFrame"]
  MUL R13 R14 R2
  GETIMPORT R14 K28 [CFrame.Angles]
  LOADN R15 0
  LOADN R16 0
  GETIMPORT R19 K37 [time]
  CALL R19 0 1
  MULK R18 R19 K35 [30]
  FASTCALL1 MATH_RAD R18 [+2]
  GETIMPORT R17 K40 [math.rad]
  CALL R17 1 1
  CALL R14 3 1
  MUL R12 R13 R14
  GETIMPORT R13 K22 [CFrame.new]
  LOADN R14 1
  LOADN R15 0
  LOADK R16 K41 [-0.5]
  CALL R13 3 1
  MUL R11 R12 R13
  JUMP [+3]
  GETTABLEKS R12 R10 K13 ["CFrame"]
  MUL R11 R12 R2
  JUMPIFNOT R10 [+6]
  GETTABLEKS R12 R11 K11 ["Position"]
  SETTABLEKS R12 R8 K11 ["Position"]
  SETTABLEKS R11 R9 K13 ["CFrame"]
  GETIMPORT R11 K22 [CFrame.new]
  GETTABLEKS R12 R8 K11 ["Position"]
  CALL R11 1 1
  GETTABLEKS R13 R9 K13 ["CFrame"]
  GETTABLEKS R12 R13 K10 ["Rotation"]
  MUL R10 R11 R12
  SETTABLEKS R10 R5 K13 ["CFrame"]
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["partCFrameMap"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  MOVE R8 R4
  MOVE R9 R5
  NAMECALL R6 R0 K3 ["updateCFrames"]
  CALL R6 3 0
  FORGLOOP R1 2 [-6]
  RETURN R0 0

PROTO_10:
  GETIMPORT R2 K3 [Enum.UserCFrame.LeftHand]
  JUMPIFNOTEQ R0 R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["partCFrameMap"]
  SETTABLEKS R1 R2 K5 ["TrackedLeftHand"]
  RETURN R0 0
  GETIMPORT R2 K7 [Enum.UserCFrame.RightHand]
  JUMPIFNOTEQ R0 R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["partCFrameMap"]
  SETTABLEKS R1 R2 K8 ["TrackedRightHand"]
  RETURN R0 0
  GETIMPORT R2 K10 [Enum.UserCFrame.Head]
  JUMPIFNOTEQ R0 R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["partCFrameMap"]
  SETTABLEKS R1 R2 K11 ["TrackedHead"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["partCFrameMap"]
  GETIMPORT R2 K3 [CFrame.new]
  LOADK R3 K4 [-0.5]
  LOADN R4 0
  LOADK R5 K4 [-0.5]
  CALL R2 3 1
  SETTABLEKS R2 R1 K5 ["TrackedLeftHand"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["partCFrameMap"]
  GETIMPORT R2 K3 [CFrame.new]
  LOADK R3 K6 [0.5]
  LOADN R4 0
  LOADK R5 K4 [-0.5]
  CALL R2 3 1
  SETTABLEKS R2 R1 K7 ["TrackedRightHand"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["partCFrameMap"]
  GETIMPORT R2 K3 [CFrame.new]
  LOADN R3 0
  LOADN R4 1
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K8 ["TrackedHead"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["steppedCframes"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["VREnabled"]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R1 R0 K1 ["connections"]
  LOADK R3 K2 ["UserCFrameChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["UserCFrameChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["connect"]
  CALL R1 4 0
  JUMP [+13]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K1 ["connections"]
  LOADK R3 K4 ["NonVRSimulateInput"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["RenderStepped"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["connect"]
  CALL R1 4 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["VREnabled"]
  JUMPIF R1 [+2]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K1 ["connections"]
  LOADK R3 K5 ["RenderStepped"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["RenderStepped"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["connect"]
  CALL R1 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VRService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RobloxReplicatedStorage"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  LOADK R6 K8 ["RobloxGui"]
  NAMECALL R4 R4 K9 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K10 ["RbxAnalyticsService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R4 K13 ["Modules"]
  GETTABLEKS R8 R9 K14 ["Common"]
  GETTABLEKS R7 R8 K15 ["ConnectionUtil"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R10 R4 K13 ["Modules"]
  GETTABLEKS R9 R10 K14 ["Common"]
  GETTABLEKS R8 R9 K16 ["AvatarUtil"]
  CALL R7 1 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K17 ["DebugImmersionModeNonVR"]
  LOADB R11 0
  NAMECALL R8 R8 K18 ["DefineFastFlag"]
  CALL R8 3 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K19 ["VRAvatarGesturesAnalyticsThrottleHundrethsPercent"]
  LOADN R12 0
  NAMECALL R9 R9 K20 ["DefineFastInt"]
  CALL R9 3 1
  NEWTABLE R10 0 0
  SETTABLEKS R10 R10 K21 ["__index"]
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K23 ["new"]
  DUPCLOSURE R11 K24 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K25 ["onCharacterChanged"]
  DUPCLOSURE R11 K26 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K27 ["onAvatarGesturesChanged"]
  DUPCLOSURE R11 K28 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K29 ["updateCFrames"]
  DUPCLOSURE R11 K30 [PROTO_9]
  SETTABLEKS R11 R10 K31 ["steppedCframes"]
  DUPCLOSURE R11 K32 [PROTO_13]
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K33 ["connectInputCFrames"]
  GETTABLEKS R11 R10 K23 ["new"]
  CALL R11 0 -1
  RETURN R11 -1
