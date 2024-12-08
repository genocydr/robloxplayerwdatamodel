PROTO_0:
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["TextButton"]
  GETUPVAL R5 0
  CALL R3 2 1
  SETTABLEKS R1 R3 K4 ["Name"]
  GETIMPORT R4 K8 [Enum.Font.SourceSans]
  SETTABLEKS R4 R3 K6 ["Font"]
  SETTABLEKS R2 R3 K9 ["Text"]
  LOADN R4 18
  SETTABLEKS R4 R3 K10 ["TextSize"]
  GETIMPORT R4 K13 [UDim2.fromOffset]
  LOADN R5 160
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["Size"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K15 ["BackgroundColor3"]
  GETIMPORT R4 K18 [Color3.fromRGB]
  LOADN R5 27
  LOADN R6 42
  LOADN R7 53
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["BorderColor3"]
  SETTABLEKS R0 R3 K20 ["LayoutOrder"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStarted"]
  CALL R0 1 1
  JUMPIF R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K1 ["BackgroundColor3"]
  GETIMPORT R0 K3 [print]
  LOADK R1 K4 ["[FaceAnimatorUI] FaceAnimatorService not started or LodController not enabled. UI not active."]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K5 ["AudioMode"]
  GETIMPORT R4 K7 [Enum]
  GETTABLEKS R3 R4 K8 ["TrackerLodFlagMode"]
  GETTABLEKS R2 R3 K9 ["Auto"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["VideoMode"]
  GETIMPORT R5 K7 [Enum]
  GETTABLEKS R4 R5 K8 ["TrackerLodFlagMode"]
  GETTABLEKS R3 R4 K9 ["Auto"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K11 ["VideoLodMode"]
  GETIMPORT R6 K7 [Enum]
  GETTABLEKS R5 R6 K12 ["TrackerLodValueMode"]
  GETTABLEKS R4 R5 K9 ["Auto"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K13 ["getExtrapolation"]
  CALL R3 1 1
  GETUPVAL R4 3
  NAMECALL R4 R4 K14 ["isAudioEnabled"]
  CALL R4 1 1
  GETUPVAL R5 3
  NAMECALL R5 R5 K15 ["isVideoEnabled"]
  CALL R5 1 1
  GETUPVAL R6 3
  NAMECALL R6 R6 K16 ["getVideoLod"]
  CALL R6 1 1
  JUMPIF R4 [+10]
  JUMPIF R5 [+9]
  GETUPVAL R7 1
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  GETUPVAL R7 4
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMP [+16]
  GETUPVAL R7 1
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMPIF R0 [+2]
  JUMPIF R1 [+1]
  JUMPIFNOT R2 [+5]
  GETUPVAL R7 4
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMP [+4]
  GETUPVAL R7 4
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMPIFNOTEQKN R3 K17 [1] [+6]
  GETUPVAL R7 7
  GETUPVAL R8 8
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMP [+11]
  JUMPIFNOTEQKN R3 K18 [2] [+6]
  GETUPVAL R7 7
  GETUPVAL R8 9
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  JUMP [+4]
  GETUPVAL R7 7
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K1 ["BackgroundColor3"]
  LOADNIL R7
  JUMPIFNOT R5 [+16]
  NEWTABLE R8 2 0
  LOADB R9 1
  LOADN R10 1
  SETTABLE R10 R8 R9
  LOADB R9 0
  LOADN R10 0
  SETTABLE R10 R8 R9
  GETUPVAL R9 10
  LOADN R12 1
  GETTABLE R14 R8 R4
  MULK R13 R14 K18 [2]
  ADD R11 R12 R13
  ADD R10 R11 R6
  GETTABLE R7 R9 R10
  JUMP [+3]
  JUMPIFNOT R4 [+2]
  GETUPVAL R8 10
  GETTABLEN R7 R8 5
  GETIMPORT R8 K20 [ipairs]
  GETUPVAL R9 10
  CALL R8 1 3
  FORGPREP_INEXT R8
  JUMPIFNOTEQ R12 R7 [+5]
  GETUPVAL R13 2
  SETTABLEKS R13 R12 K1 ["BackgroundColor3"]
  JUMP [+3]
  GETUPVAL R13 5
  SETTABLEKS R13 R12 K1 ["BackgroundColor3"]
  FORGLOOP R8 2 [inext] [-10]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R1 R2 K3 ["Auto"]
  SETTABLEKS R1 R0 K4 ["VideoMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R1 R2 K3 ["Auto"]
  SETTABLEKS R1 R0 K5 ["AudioMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K6 ["TrackerLodValueMode"]
  GETTABLEKS R1 R2 K3 ["Auto"]
  SETTABLEKS R1 R0 K7 ["VideoLodMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K8 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R1 R2 K3 ["Auto"]
  SETTABLEKS R1 R0 K9 ["VideoExtrapolationMode"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R1 R2 K3 ["ForceFalse"]
  SETTABLEKS R1 R0 K4 ["VideoMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R1 R2 K3 ["ForceFalse"]
  SETTABLEKS R1 R0 K5 ["AudioMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K6 ["TrackerLodValueMode"]
  GETTABLEKS R1 R2 K7 ["Auto"]
  SETTABLEKS R1 R0 K8 ["VideoLodMode"]
  GETUPVAL R0 0
  GETIMPORT R3 K1 [Enum]
  GETTABLEKS R2 R3 K9 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R1 R2 K7 ["Auto"]
  SETTABLEKS R1 R0 K10 ["VideoExtrapolationMode"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["VideoMode"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 3
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K1 ["AudioMode"]
  GETUPVAL R0 0
  GETUPVAL R2 4
  GETUPVAL R3 5
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K2 ["VideoLodMode"]
  RETURN R0 0

PROTO_5:
  NEWTABLE R3 2 0
  LOADB R4 1
  GETIMPORT R7 K1 [Enum]
  GETTABLEKS R6 R7 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R5 R6 K3 ["ForceTrue"]
  SETTABLE R5 R3 R4
  LOADB R4 0
  GETIMPORT R7 K1 [Enum]
  GETTABLEKS R6 R7 K2 ["TrackerLodFlagMode"]
  GETTABLEKS R5 R6 K4 ["ForceFalse"]
  SETTABLE R5 R3 R4
  NEWTABLE R4 2 0
  LOADN R5 0
  GETIMPORT R8 K1 [Enum]
  GETTABLEKS R7 R8 K5 ["TrackerLodValueMode"]
  GETTABLEKS R6 R7 K6 ["Force0"]
  SETTABLE R6 R4 R5
  GETIMPORT R7 K1 [Enum]
  GETTABLEKS R6 R7 K5 ["TrackerLodValueMode"]
  GETTABLEKS R5 R6 K7 ["Force1"]
  SETTABLEN R5 R4 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VideoExtrapolationMode"]
  GETIMPORT R3 K2 [Enum]
  GETTABLEKS R2 R3 K3 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R1 R2 K4 ["ForceDisabled"]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R1 0
  GETIMPORT R4 K2 [Enum]
  GETTABLEKS R3 R4 K3 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R2 R3 K5 ["ExtrapolateFacsAndPose"]
  SETTABLEKS R2 R1 K0 ["VideoExtrapolationMode"]
  RETURN R0 0
  GETIMPORT R3 K2 [Enum]
  GETTABLEKS R2 R3 K3 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R1 R2 K5 ["ExtrapolateFacsAndPose"]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R1 0
  GETIMPORT R4 K2 [Enum]
  GETTABLEKS R3 R4 K3 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R2 R3 K6 ["ExtrapolateFacsOnly"]
  SETTABLEKS R2 R1 K0 ["VideoExtrapolationMode"]
  RETURN R0 0
  GETUPVAL R1 0
  GETIMPORT R4 K2 [Enum]
  GETTABLEKS R3 R4 K3 ["TrackerExtrapolationFlagMode"]
  GETTABLEKS R2 R3 K4 ["ForceDisabled"]
  SETTABLEKS R2 R1 K0 ["VideoExtrapolationMode"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K6 ["RobloxGui"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["FaceAnimatorService"]
  NAMECALL R4 R4 K8 ["FindService"]
  CALL R4 2 1
  GETIMPORT R5 K11 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 196
  LOADN R8 221
  CALL R5 3 1
  GETIMPORT R6 K11 [Color3.fromRGB]
  LOADN R7 18
  LOADN R8 217
  LOADN R9 40
  CALL R6 3 1
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 150
  LOADN R10 150
  CALL R7 3 1
  GETIMPORT R8 K11 [Color3.fromRGB]
  LOADN R9 128
  LOADN R10 196
  LOADN R11 128
  CALL R8 3 1
  GETIMPORT R9 K11 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 196
  LOADN R12 128
  CALL R9 3 1
  JUMPIF R4 [+5]
  GETIMPORT R10 K13 [print]
  LOADK R11 K14 ["[FaceAnimatorUI] FaceAnimatorService is nil. UI disabled."]
  CALL R10 1 0
  RETURN R0 0
  NAMECALL R10 R4 K15 ["GetTrackerLodController"]
  CALL R10 1 1
  JUMPIF R10 [+5]
  GETIMPORT R11 K13 [print]
  LOADK R12 K16 ["[FaceAnimatorUI] TrackerLodController is nil. UI disabled."]
  CALL R11 1 0
  RETURN R0 0
  GETIMPORT R11 K19 [Instance.new]
  LOADK R12 K20 ["Frame"]
  MOVE R13 R3
  CALL R11 2 1
  LOADK R12 K21 ["LodFrame"]
  SETTABLEKS R12 R11 K22 ["Name"]
  GETIMPORT R12 K24 [UDim2.new]
  LOADN R13 1
  LOADN R14 66
  LOADN R15 0
  LOADN R16 10
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Position"]
  GETIMPORT R12 K27 [UDim2.fromOffset]
  LOADN R13 180
  LOADN R14 250
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Size"]
  GETIMPORT R12 K11 [Color3.fromRGB]
  LOADN R13 0
  LOADN R14 86
  LOADN R15 158
  CALL R12 3 1
  SETTABLEKS R12 R11 K29 ["BackgroundColor3"]
  GETIMPORT R12 K11 [Color3.fromRGB]
  LOADN R13 27
  LOADN R14 42
  LOADN R15 53
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["BorderColor3"]
  GETIMPORT R12 K19 [Instance.new]
  LOADK R13 K20 ["Frame"]
  MOVE R14 R11
  CALL R12 2 1
  LOADK R13 K31 ["ContentFrame"]
  SETTABLEKS R13 R12 K22 ["Name"]
  GETIMPORT R13 K27 [UDim2.fromOffset]
  LOADN R14 10
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Position"]
  GETIMPORT R13 K27 [UDim2.fromOffset]
  LOADN R14 160
  LOADN R15 230
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["Size"]
  GETTABLEKS R13 R11 K29 ["BackgroundColor3"]
  SETTABLEKS R13 R12 K29 ["BackgroundColor3"]
  GETTABLEKS R13 R11 K30 ["BorderColor3"]
  SETTABLEKS R13 R12 K30 ["BorderColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K32 ["BorderSizePixel"]
  GETIMPORT R13 K19 [Instance.new]
  LOADK R14 K33 ["UIListLayout"]
  MOVE R15 R12
  CALL R13 2 1
  GETIMPORT R14 K35 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["Padding"]
  GETIMPORT R14 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K38 ["SortOrder"]
  DUPCLOSURE R14 K41 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R7
  MOVE R15 R14
  LOADN R16 1
  LOADK R17 K42 ["AutoButton"]
  LOADK R18 K43 ["Auto"]
  CALL R15 3 1
  MOVE R16 R14
  LOADN R17 2
  LOADK R18 K44 ["VideoAudioAccurateButton"]
  LOADK R19 K45 ["Video Audio Accurate"]
  CALL R16 3 1
  MOVE R17 R14
  LOADN R18 3
  LOADK R19 K46 ["VideoAudioFastButton"]
  LOADK R20 K47 ["Video Audio Fast"]
  CALL R17 3 1
  MOVE R18 R14
  LOADN R19 4
  LOADK R20 K48 ["VideoAccurateButton"]
  LOADK R21 K49 ["Video Accurate"]
  CALL R18 3 1
  MOVE R19 R14
  LOADN R20 5
  LOADK R21 K50 ["VideoFastButton"]
  LOADK R22 K51 ["Video Fast"]
  CALL R19 3 1
  MOVE R20 R14
  LOADN R21 6
  LOADK R22 K52 ["AudioButton"]
  LOADK R23 K53 ["Audio"]
  CALL R20 3 1
  MOVE R21 R14
  LOADN R22 7
  LOADK R23 K54 ["OffButton"]
  LOADK R24 K55 ["Off"]
  CALL R21 3 1
  MOVE R22 R14
  LOADN R23 8
  LOADK R24 K56 ["ExtrapolationButton"]
  LOADK R25 K57 ["Extrapolation"]
  CALL R22 3 1
  NEWTABLE R23 0 5
  MOVE R24 R19
  MOVE R25 R18
  MOVE R26 R17
  MOVE R27 R16
  MOVE R28 R20
  SETLIST R23 R24 5 [1]
  DUPCLOSURE R24 K58 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R23
  GETTABLEKS R25 R10 K59 ["UpdateState"]
  MOVE R27 R24
  NAMECALL R25 R25 K60 ["connect"]
  CALL R25 2 0
  DUPCLOSURE R25 K61 [PROTO_2]
  CAPTURE VAL R10
  DUPCLOSURE R26 K62 [PROTO_3]
  CAPTURE VAL R10
  DUPCLOSURE R27 K63 [PROTO_5]
  CAPTURE VAL R10
  DUPCLOSURE R28 K64 [PROTO_6]
  CAPTURE VAL R10
  GETTABLEKS R29 R15 K65 ["Activated"]
  MOVE R31 R25
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R21 K65 ["Activated"]
  MOVE R31 R26
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R22 K65 ["Activated"]
  MOVE R31 R28
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R19 K65 ["Activated"]
  MOVE R31 R27
  LOADB R32 1
  LOADB R33 0
  LOADN R34 0
  CALL R31 3 1
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R18 K65 ["Activated"]
  MOVE R31 R27
  LOADB R32 1
  LOADB R33 0
  LOADN R34 1
  CALL R31 3 1
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R17 K65 ["Activated"]
  MOVE R31 R27
  LOADB R32 1
  LOADB R33 1
  LOADN R34 0
  CALL R31 3 1
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R16 K65 ["Activated"]
  MOVE R31 R27
  LOADB R32 1
  LOADB R33 1
  LOADN R34 1
  CALL R31 3 1
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R20 K65 ["Activated"]
  MOVE R31 R27
  LOADB R32 0
  LOADB R33 1
  LOADN R34 1
  CALL R31 3 1
  NAMECALL R29 R29 K66 ["Connect"]
  CALL R29 2 0
  RETURN R0 0