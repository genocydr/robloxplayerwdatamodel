PROTO_0:
  GETTABLEKS R2 R0 K0 ["LayoutOrder"]
  GETTABLEKS R3 R1 K0 ["LayoutOrder"]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["LayoutOrder"]
  GETTABLEKS R4 R1 K0 ["LayoutOrder"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  NAMECALL R3 R3 K2 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_INEXT R2
  LOADK R9 K3 ["GuiObject"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+12]
  GETTABLEKS R7 R6 K5 ["Name"]
  JUMPIFEQKS R7 K6 ["_CarouselDivider"] [+9]
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K9 [table.insert]
  CALL R7 2 0
  SETTABLE R5 R0 R6
  FORGLOOP R2 2 [inext] [-18]
  GETIMPORT R2 K11 [table.sort]
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CALL R2 2 0
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentPage"]
  JUMPIFNOT R0 [+33]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CurrentPage"]
  GETTABLEKS R0 R1 K1 ["Name"]
  JUMPIFNOTEQKS R0 K2 ["_CarouselDivider"] [+17]
  GETUPVAL R0 1
  CALL R0 0 1
  GETUPVAL R1 2
  GETTABLEN R2 R0 1
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["Previous"]
  CALL R1 1 0
  JUMP [+15]
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["Next"]
  CALL R1 1 0
  JUMP [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentPage"]
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K5 ["BackgroundColor3"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentPage"]
  SETUPVAL R0 2
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K6 ["SelectedCoreObject"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K6 ["SelectedCoreObject"]
  GETTABLEKS R0 R1 K7 ["Parent"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["Parent"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K6 ["SelectedCoreObject"]
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K5 ["BackgroundColor3"]
  GETUPVAL R0 4
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CurrentPage"]
  SETTABLEKS R1 R0 K6 ["SelectedCoreObject"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentPage"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R0 6
  GETUPVAL R3 7
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["CurrentPage"]
  GETTABLE R2 R3 R4
  NAMECALL R0 R0 K8 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Next"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["Previous"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Next"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Previous"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetLastInputType"]
  CALL R1 1 1
  GETIMPORT R2 K4 [Enum.UserInputType.Touch]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  GETUPVAL R1 1
  NOT R2 R0
  JUMPIFNOT R2 [+10]
  GETUPVAL R4 2
  NAMECALL R4 R4 K5 ["GetChildren"]
  CALL R4 1 1
  LENGTH R3 R4
  LOADN R4 3
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R1 K6 ["Visible"]
  GETUPVAL R1 3
  NOT R2 R0
  JUMPIFNOT R2 [+10]
  GETUPVAL R4 2
  NAMECALL R4 R4 K5 ["GetChildren"]
  CALL R4 1 1
  LENGTH R3 R4
  LOADN R4 3
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R1 K6 ["Visible"]
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Frame"]
  CALL R1 1 1
  LOADK R2 K4 ["PlayerCarousel"]
  SETTABLEKS R2 R1 K5 ["Name"]
  GETIMPORT R2 K7 [Vector2.new]
  LOADK R3 K8 [0.5]
  LOADK R4 K8 [0.5]
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["AnchorPoint"]
  LOADN R2 1
  SETTABLEKS R2 R1 K10 ["BackgroundTransparency"]
  GETIMPORT R2 K12 [UDim2.new]
  LOADK R3 K8 [0.5]
  LOADN R4 0
  LOADK R5 K8 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K13 ["Position"]
  GETIMPORT R2 K12 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K14 [0.28]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K15 ["Size"]
  LOADB R2 1
  SETTABLEKS R2 R1 K16 ["ClipsDescendants"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Frame"]
  CALL R2 1 1
  LOADK R3 K17 ["InnerFrame"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETIMPORT R3 K7 [Vector2.new]
  LOADK R4 K8 [0.5]
  LOADK R5 K8 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["AnchorPoint"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["BackgroundTransparency"]
  GETIMPORT R3 K12 [UDim2.new]
  LOADK R4 K8 [0.5]
  LOADN R5 0
  LOADK R6 K8 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K13 ["Position"]
  GETIMPORT R3 K12 [UDim2.new]
  LOADK R4 K18 [0.8]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K15 ["Size"]
  LOADB R3 1
  SETTABLEKS R3 R2 K16 ["ClipsDescendants"]
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["Active"]
  SETTABLEKS R1 R2 K20 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["Frame"]
  CALL R3 1 1
  SETUPVAL R3 0
  GETUPVAL R3 0
  LOADK R4 K21 ["SelectedPlayer"]
  SETTABLEKS R4 R3 K5 ["Name"]
  GETUPVAL R3 0
  GETIMPORT R4 K7 [Vector2.new]
  LOADK R5 K8 [0.5]
  LOADK R6 K8 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["AnchorPoint"]
  GETUPVAL R3 0
  LOADN R4 1
  SETTABLEKS R4 R3 K10 ["BackgroundTransparency"]
  GETUPVAL R3 0
  GETIMPORT R4 K12 [UDim2.new]
  LOADK R5 K8 [0.5]
  LOADN R6 0
  LOADK R7 K8 [0.5]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K13 ["Position"]
  GETUPVAL R3 0
  GETIMPORT R4 K12 [UDim2.new]
  LOADN R5 0
  LOADN R6 100
  LOADN R7 1
  LOADN R8 246
  CALL R4 4 1
  SETTABLEKS R4 R3 K15 ["Size"]
  GETUPVAL R3 0
  SETTABLEKS R2 R3 K20 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K22 ["UIPageLayout"]
  CALL R3 1 1
  SETUPVAL R3 1
  GETUPVAL R3 1
  GETIMPORT R4 K26 [Enum.EasingDirection.Out]
  SETTABLEKS R4 R3 K24 ["EasingDirection"]
  GETUPVAL R3 1
  GETIMPORT R4 K29 [Enum.EasingStyle.Quad]
  SETTABLEKS R4 R3 K27 ["EasingStyle"]
  GETUPVAL R3 1
  GETIMPORT R4 K31 [UDim.new]
  LOADN R5 0
  LOADN R6 5
  CALL R4 2 1
  SETTABLEKS R4 R3 K32 ["Padding"]
  GETUPVAL R3 1
  LOADK R4 K33 [0.25]
  SETTABLEKS R4 R3 K34 ["TweenTime"]
  GETUPVAL R3 1
  GETIMPORT R4 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R4 R3 K35 ["HorizontalAlignment"]
  GETUPVAL R3 1
  GETIMPORT R4 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R4 R3 K38 ["VerticalAlignment"]
  GETUPVAL R3 1
  LOADB R4 0
  SETTABLEKS R4 R3 K40 ["TouchInputEnabled"]
  GETUPVAL R3 1
  LOADB R4 1
  SETTABLEKS R4 R3 K41 ["Circular"]
  GETUPVAL R3 1
  GETIMPORT R4 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R4 R3 K42 ["SortOrder"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K45 ["UIAspectRatioConstraint"]
  CALL R3 1 1
  GETIMPORT R4 K48 [Enum.DominantAxis.Height]
  SETTABLEKS R4 R3 K46 ["DominantAxis"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K20 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K49 ["BindableEvent"]
  CALL R4 1 1
  SETUPVAL R4 2
  GETUPVAL R4 2
  LOADK R5 K50 ["PlayerChanged"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADNIL R4
  GETUPVAL R5 1
  LOADK R7 K51 ["CurrentPage"]
  NAMECALL R5 R5 K52 ["GetPropertyChangedSignal"]
  CALL R5 2 1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE REF R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K53 ["Connect"]
  CALL R5 2 0
  GETUPVAL R5 1
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K20 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K54 ["ImageButton"]
  CALL R5 1 1
  LOADK R6 K55 ["NextButton"]
  SETTABLEKS R6 R5 K5 ["Name"]
  GETTABLEKS R6 R0 K56 ["ScrollRightImage"]
  SETTABLEKS R6 R5 K57 ["Image"]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  GETIMPORT R6 K7 [Vector2.new]
  LOADN R7 1
  LOADK R8 K8 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["AnchorPoint"]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 251
  LOADK R9 K8 [0.5]
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Position"]
  GETIMPORT R6 K12 [UDim2.new]
  LOADK R7 K58 [0.3]
  LOADN R8 0
  LOADK R9 K58 [0.3]
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K15 ["Size"]
  LOADB R6 0
  SETTABLEKS R6 R5 K59 ["Selectable"]
  SETTABLEKS R1 R5 K20 ["Parent"]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K45 ["UIAspectRatioConstraint"]
  CALL R6 1 1
  GETIMPORT R7 K61 [Enum.DominantAxis.Width]
  SETTABLEKS R7 R6 K46 ["DominantAxis"]
  SETTABLEKS R5 R6 K20 ["Parent"]
  NAMECALL R7 R5 K62 ["Clone"]
  CALL R7 1 1
  LOADK R8 K63 ["PrevButton"]
  SETTABLEKS R8 R7 K5 ["Name"]
  GETTABLEKS R8 R0 K64 ["ScrollLeftImage"]
  JUMPIFEQKS R8 K65 [""] [+6]
  GETTABLEKS R8 R0 K64 ["ScrollLeftImage"]
  SETTABLEKS R8 R7 K57 ["Image"]
  JUMP [+3]
  LOADN R8 180
  SETTABLEKS R8 R7 K66 ["Rotation"]
  GETIMPORT R8 K7 [Vector2.new]
  LOADN R9 0
  LOADK R10 K8 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["AnchorPoint"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 0
  LOADN R10 5
  LOADK R11 K8 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K13 ["Position"]
  LOADB R8 0
  SETTABLEKS R8 R7 K59 ["Selectable"]
  SETTABLEKS R1 R7 K20 ["Parent"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U1
  GETTABLEKS R9 R5 K67 ["MouseButton1Click"]
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U1
  NAMECALL R9 R9 K53 ["Connect"]
  CALL R9 2 0
  GETTABLEKS R9 R7 K67 ["MouseButton1Click"]
  NEWCLOSURE R11 P3
  CAPTURE UPVAL U1
  NAMECALL R9 R9 K53 ["Connect"]
  CALL R9 2 0
  NEWCLOSURE R9 P4
  CAPTURE UPVAL U8
  CAPTURE VAL R7
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  GETUPVAL R11 8
  NAMECALL R11 R11 K68 ["GetLastInputType"]
  CALL R11 1 1
  GETIMPORT R12 K71 [Enum.UserInputType.Touch]
  JUMPIFEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  NOT R11 R10
  JUMPIFNOT R11 [+10]
  GETUPVAL R13 0
  NAMECALL R13 R13 K72 ["GetChildren"]
  CALL R13 1 1
  LENGTH R12 R13
  LOADN R13 3
  JUMPIFLT R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R7 K73 ["Visible"]
  NOT R11 R10
  JUMPIFNOT R11 [+10]
  GETUPVAL R13 0
  NAMECALL R13 R13 K72 ["GetChildren"]
  CALL R13 1 1
  LENGTH R12 R13
  LOADN R13 3
  JUMPIFLT R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R5 K73 ["Visible"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K74 ["LastInputTypeChanged"]
  MOVE R12 R9
  NAMECALL R10 R10 K53 ["Connect"]
  CALL R10 2 0
  CLOSEUPVALS R4
  RETURN R1 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["rbxGui"]
  GETTABLEKS R2 R3 K1 ["NextButton"]
  GETTABLEKS R3 R1 K2 ["ScrollRightImage"]
  SETTABLEKS R3 R2 K3 ["Image"]
  GETTABLEKS R2 R1 K4 ["ScrollLeftImage"]
  JUMPIFEQKS R2 K5 [""] [+10]
  GETTABLEKS R3 R0 K0 ["rbxGui"]
  GETTABLEKS R2 R3 K6 ["PrevButton"]
  GETTABLEKS R3 R1 K4 ["ScrollLeftImage"]
  SETTABLEKS R3 R2 K3 ["Image"]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["rbxGui"]
  GETTABLEKS R2 R3 K6 ["PrevButton"]
  GETTABLEKS R3 R1 K2 ["ScrollRightImage"]
  SETTABLEKS R3 R2 K3 ["Image"]
  GETTABLEKS R3 R0 K0 ["rbxGui"]
  GETTABLEKS R2 R3 K6 ["PrevButton"]
  LOADN R3 180
  SETTABLEKS R3 R2 K7 ["Rotation"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CurrentPage"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  CALL R1 0 1
  LOADN R2 0
  GETIMPORT R3 K2 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["CurrentPage"]
  JUMPIFNOTEQ R7 R8 [+3]
  MOVE R2 R6
  JUMP [+2]
  FORGLOOP R3 2 [inext] [-8]
  GETIMPORT R3 K2 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  SUB R9 R2 R6
  LENGTH R10 R1
  MOD R8 R9 R10
  SUB R10 R6 R2
  LENGTH R11 R1
  MOD R9 R10 R11
  FASTCALL2 MATH_MIN R8 R9 [+5]
  MOVE R11 R8
  MOVE R12 R9
  GETIMPORT R10 K5 [math.min]
  CALL R10 2 1
  LOADN R11 2
  JUMPIFNOTLE R11 R10 [+5]
  LOADK R11 K6 [0.7]
  SETTABLEKS R11 R7 K7 ["ImageTransparency"]
  JUMP [+9]
  JUMPIFNOTEQKN R10 K8 [1] [+5]
  LOADK R11 K9 [0.4]
  SETTABLEKS R11 R7 K7 ["ImageTransparency"]
  JUMP [+3]
  LOADN R11 0
  SETTABLEKS R11 R7 K7 ["ImageTransparency"]
  FORGLOOP R3 2 [inext] [-30]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  LOADK R3 K0 ["_CarouselDivider"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K2 ["Destroy"]
  CALL R2 1 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K4 ["GetChildren"]
  CALL R4 1 1
  LENGTH R3 R4
  SUBK R2 R3 K3 [1]
  LOADN R3 5
  JUMPIFNOTLT R2 R3 [+2]
  RETURN R0 0
  GETIMPORT R3 K7 [Instance.new]
  LOADK R4 K8 ["Frame"]
  CALL R3 1 1
  MOVE R1 R3
  LOADK R3 K0 ["_CarouselDivider"]
  SETTABLEKS R3 R1 K9 ["Name"]
  GETIMPORT R3 K11 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R1 K12 ["Size"]
  LOADN R3 1
  SETTABLEKS R3 R1 K13 ["BackgroundTransparency"]
  GETUPVAL R3 0
  SETTABLEKS R3 R1 K14 ["Parent"]
  LOADK R3 K15 [1000000]
  SETTABLEKS R3 R1 K16 ["LayoutOrder"]
  GETIMPORT R3 K7 [Instance.new]
  LOADK R4 K8 ["Frame"]
  CALL R3 1 1
  LOADK R4 K17 ["line"]
  SETTABLEKS R4 R3 K9 ["Name"]
  GETIMPORT R4 K20 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 255
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K21 ["BackgroundColor3"]
  LOADN R4 0
  SETTABLEKS R4 R3 K22 ["BorderSizePixel"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADK R5 K23 [0.25]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 253
  CALL R4 4 1
  SETTABLEKS R4 R3 K24 ["Position"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 0
  LOADN R6 2
  LOADN R7 1
  LOADN R8 6
  CALL R4 4 1
  SETTABLEKS R4 R3 K12 ["Size"]
  SETTABLEKS R1 R3 K14 ["Parent"]
  NAMECALL R4 R3 K25 ["Clone"]
  CALL R4 1 1
  GETIMPORT R5 K11 [UDim2.new]
  LOADK R6 K26 [0.5]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 253
  CALL R5 4 1
  SETTABLEKS R5 R4 K24 ["Position"]
  SETTABLEKS R1 R4 K14 ["Parent"]
  NAMECALL R5 R3 K25 ["Clone"]
  CALL R5 1 1
  GETIMPORT R6 K11 [UDim2.new]
  LOADK R7 K27 [0.75]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 253
  CALL R6 4 1
  SETTABLEKS R6 R5 K24 ["Position"]
  SETTABLEKS R1 R5 K14 ["Parent"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 0
  LOADNIL R4
  SETTABLE R4 R3 R1
  GETUPVAL R3 1
  LOADNIL R4
  SETTABLE R4 R3 R2
  NAMECALL R3 R2 K0 ["Destroy"]
  CALL R3 1 0
  GETUPVAL R3 2
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 2
  NAMECALL R3 R3 K1 ["ApplyLayout"]
  CALL R3 1 0
  NAMECALL R3 R0 K2 ["FadeTowardsEdges"]
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R4 K2 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 1 [-4]
  NEWTABLE R1 0 0
  SETUPVAL R1 0
  NEWTABLE R1 0 0
  SETUPVAL R1 1
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["BackgroundColor3"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["BackgroundColor3"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JumpTo"]
  CALL R0 2 0
  RETURN R0 0

PROTO_16:
  GETIMPORT R0 K1 [require]
  GETUPVAL R1 0
  LOADK R3 K2 ["ContextMenuUtil"]
  NAMECALL R1 R1 K3 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETUPVAL R1 1
  GETUPVAL R4 2
  NAMECALL R2 R0 K4 ["GetHeadshotForPlayer"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Image"]
  GETUPVAL R1 3
  NAMECALL R1 R1 K6 ["Cancel"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 3
  GETUPVAL R1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["SelectedCoreObject"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R1 1
  GETUPVAL R2 5
  SETTABLEKS R2 R1 K8 ["BackgroundColor3"]
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 6
  SETTABLEKS R2 R1 K8 ["BackgroundColor3"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIFNOT R3 [+3]
  SETTABLEKS R2 R3 K0 ["LayoutOrder"]
  RETURN R0 0
  GETIMPORT R4 K3 [Instance.new]
  LOADK R5 K4 ["ImageButton"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K5 ["Name"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADN R5 0
  SETTABLEKS R5 R4 K6 ["BorderSizePixel"]
  SETTABLEKS R2 R4 K0 ["LayoutOrder"]
  GETIMPORT R5 K9 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["BackgroundColor3"]
  LOADN R5 0
  SETTABLEKS R5 R4 K11 ["BackgroundTransparency"]
  GETIMPORT R5 K13 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K14 ["Size"]
  GETTABLEKS R5 R4 K15 ["SelectionLost"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U1
  NAMECALL R5 R5 K16 ["connect"]
  CALL R5 2 0
  GETTABLEKS R5 R4 K17 ["SelectionGained"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  NAMECALL R5 R5 K16 ["connect"]
  CALL R5 2 0
  GETIMPORT R5 K19 [TweenInfo.new]
  LOADN R6 1
  GETIMPORT R7 K23 [Enum.EasingStyle.Quad]
  GETIMPORT R8 K26 [Enum.EasingDirection.InOut]
  LOADN R9 255
  LOADB R10 1
  CALL R5 5 1
  LOADNIL R6
  GETUPVAL R7 3
  MOVE R9 R4
  MOVE R10 R5
  DUPTABLE R11 K27 [{"BackgroundColor3"}]
  GETIMPORT R12 K9 [Color3.fromRGB]
  LOADN R13 255
  LOADN R14 255
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["BackgroundColor3"]
  NAMECALL R7 R7 K28 ["Create"]
  CALL R7 4 1
  MOVE R6 R7
  NAMECALL R7 R6 K29 ["Play"]
  CALL R7 1 0
  GETUPVAL R7 4
  SETTABLE R1 R7 R4
  GETUPVAL R7 0
  SETTABLE R4 R7 R1
  GETTABLEKS R7 R4 K30 ["MouseButton1Click"]
  NEWCLOSURE R9 P2
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  NAMECALL R7 R7 K31 ["Connect"]
  CALL R7 2 0
  GETUPVAL R7 6
  SETTABLEKS R7 R4 K32 ["Parent"]
  GETIMPORT R7 K34 [spawn]
  NEWCLOSURE R8 P3
  CAPTURE UPVAL U7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE REF R6
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CALL R7 1 0
  CLOSEUPVALS R6
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  LOADK R1 K0 [0.25]
  SETTABLEKS R1 R0 K1 ["TweenTime"]
  RETURN R0 0

PROTO_19:
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIF R3 [+7]
  MOVE R6 R1
  LOADN R7 0
  NAMECALL R4 R0 K0 ["CreatePlayerEntry"]
  CALL R4 3 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 1
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["TweenTime"]
  GETUPVAL R4 1
  MOVE R6 R3
  NAMECALL R4 R4 K2 ["JumpTo"]
  CALL R4 2 0
  GETIMPORT R4 K4 [spawn]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CALL R4 1 0
  RETURN R0 0

PROTO_20:
  JUMPIFNOTEQKN R1 K0 [0] [+2]
  RETURN R0 0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+6]
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["Next"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["Previous"]
  CALL R2 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["CurrentPage"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_22:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["FadeTowardsEdges"]
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  NEWTABLE R2 2 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 1
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["rbxGui"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["Event"]
  SETTABLEKS R2 R1 K4 ["PlayerChanged"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["Event"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["GuiService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K2 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K4 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K2 [game]
  LOADK R5 K6 ["TweenService"]
  NAMECALL R3 R3 K4 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K2 [game]
  LOADK R6 K7 ["UserInputService"]
  NAMECALL R4 R4 K4 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K10 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 162
  LOADN R8 255
  CALL R5 3 1
  GETIMPORT R6 K10 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  LOADK R9 K11 ["RobloxGui"]
  NAMECALL R7 R2 K12 ["WaitForChild"]
  CALL R7 2 1
  LOADK R10 K13 ["Modules"]
  NAMECALL R8 R7 K12 ["WaitForChild"]
  CALL R8 2 1
  LOADK R11 K14 ["AvatarContextMenu"]
  NAMECALL R9 R8 K12 ["WaitForChild"]
  CALL R9 2 1
  LOADNIL R10
  LOADNIL R11
  LOADNIL R12
  NEWTABLE R13 0 0
  NEWTABLE R14 0 0
  NEWCLOSURE R15 P0
  CAPTURE REF R10
  NEWCLOSURE R16 P1
  CAPTURE REF R10
  CAPTURE REF R11
  CAPTURE REF R12
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE REF R13
  CAPTURE VAL R4
  DUPCLOSURE R17 K15 [PROTO_8]
  SETTABLEKS R17 R0 K16 ["UpdateGuiTheme"]
  NEWCLOSURE R17 P3
  CAPTURE REF R11
  CAPTURE VAL R15
  SETTABLEKS R17 R0 K17 ["FadeTowardsEdges"]
  NEWCLOSURE R17 P4
  CAPTURE REF R10
  SETTABLEKS R17 R0 K18 ["AddCarouselDivider"]
  NEWCLOSURE R17 P5
  CAPTURE REF R14
  CAPTURE REF R13
  CAPTURE REF R11
  SETTABLEKS R17 R0 K19 ["RemovePlayerEntry"]
  NEWCLOSURE R17 P6
  CAPTURE REF R13
  CAPTURE REF R14
  SETTABLEKS R17 R0 K20 ["ClearPlayerEntries"]
  NEWCLOSURE R17 P7
  CAPTURE REF R14
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE REF R13
  CAPTURE REF R11
  CAPTURE REF R10
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R17 R0 K21 ["CreatePlayerEntry"]
  NEWCLOSURE R17 P8
  CAPTURE REF R14
  CAPTURE REF R11
  SETTABLEKS R17 R0 K22 ["SwitchToPlayerEntry"]
  NEWCLOSURE R17 P9
  CAPTURE REF R11
  SETTABLEKS R17 R0 K23 ["OffsetPlayerEntry"]
  NEWCLOSURE R17 P10
  CAPTURE REF R13
  CAPTURE REF R11
  SETTABLEKS R17 R0 K24 ["GetSelectedPlayer"]
  NEWCLOSURE R17 P11
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE REF R12
  SETTABLEKS R17 R0 K25 ["new"]
  CLOSEUPVALS R10
  RETURN R0 1