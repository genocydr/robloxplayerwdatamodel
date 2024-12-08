PROTO_0:
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  GETUPVAL R2 0
  NAMECALL R0 R0 K2 ["IsUserFeatureEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  AND R3 R1 R2
  RETURN R3 1

PROTO_2:
  SUB R8 R0 R1
  SUB R9 R4 R3
  MUL R7 R8 R9
  SUB R8 R2 R1
  DIV R6 R7 R8
  ADD R5 R6 R3
  RETURN R5 1

PROTO_3:
  JUMPIF R0 [+1]
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["ActiveController"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R3 R0 K0 ["ActiveController"]
  LOADK R5 K1 ["GroundController"]
  NAMECALL R3 R3 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K3 ["GroundSensor"]
  JUMPIF R2 [+9]
  GETTABLEKS R2 R0 K0 ["ActiveController"]
  LOADK R4 K4 ["ClimbController"]
  NAMECALL R2 R2 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K5 ["ClimbSensor"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R3 R2 K6 ["SensedPart"]
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R2 K6 ["SensedPart"]
  GETTABLEKS R6 R0 K7 ["RootPart"]
  GETTABLEKS R5 R6 K8 ["Position"]
  NAMECALL R3 R3 K9 ["GetVelocityAtPosition"]
  CALL R3 2 1
  SUB R4 R1 R3
  RETURN R4 1
  RETURN R1 1

PROTO_4:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["TimePosition"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["Playing"]
  RETURN R0 0

PROTO_5:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  SETTABLE R6 R1 R5
  FORGLOOP R2 2 [-2]
  RETURN R1 1

PROTO_6:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  NEWTABLE R5 0 0
  GETIMPORT R6 K1 [pairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_NEXT R6
  SETTABLE R10 R5 R9
  FORGLOOP R6 2 [-2]
  MOVE R2 R5
  CALL R1 1 3
  FORGPREP_NEXT R1
  JUMPIFEQ R4 R0 [+7]
  LOADB R6 0
  SETTABLEKS R6 R4 K2 ["Playing"]
  GETUPVAL R6 0
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 1 [-9]
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["GettingUp"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["TimePosition"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Playing"]
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["Jumping"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["TimePosition"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Playing"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["AssemblyLinearVelocity"]
  GETTABLEKS R1 R2 K1 ["Y"]
  FASTCALL1 MATH_ABS R1 [+2]
  GETIMPORT R0 K4 [math.abs]
  CALL R0 1 1
  LOADK R1 K5 [0.1]
  JUMPIFNOTLT R1 R0 [+25]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["Splash"]
  SUBK R6 R0 K10 [100]
  MULK R5 R6 K9 [0.72]
  DIVK R4 R5 K8 [250]
  ADDK R3 R4 K7 [0.28]
  LOADN R4 0
  LOADN R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K12 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K13 ["Volume"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["Splash"]
  LOADN R2 0
  SETTABLEKS R2 R1 K14 ["TimePosition"]
  LOADB R2 1
  SETTABLEKS R2 R1 K15 ["Playing"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K16 ["Swimming"]
  GETIMPORT R2 K18 [pairs]
  GETUPVAL R5 2
  NEWTABLE R6 0 0
  GETIMPORT R7 K18 [pairs]
  MOVE R8 R5
  CALL R7 1 3
  FORGPREP_NEXT R7
  SETTABLE R11 R6 R10
  FORGLOOP R7 2 [-2]
  MOVE R3 R6
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFEQ R5 R1 [+7]
  LOADB R7 0
  SETTABLEKS R7 R5 K15 ["Playing"]
  GETUPVAL R7 2
  LOADNIL R8
  SETTABLE R8 R7 R5
  FORGLOOP R2 1 [-9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K16 ["Swimming"]
  LOADB R2 1
  SETTABLEKS R2 R1 K15 ["Playing"]
  GETUPVAL R1 2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K16 ["Swimming"]
  LOADB R3 1
  SETTABLE R3 R1 R2
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["Volume"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  GETIMPORT R1 K3 [pairs]
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  GETIMPORT R6 K3 [pairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_NEXT R6
  SETTABLE R10 R5 R9
  FORGLOOP R6 2 [-2]
  MOVE R2 R5
  CALL R1 1 3
  FORGPREP_NEXT R1
  JUMPIFEQ R4 R0 [+7]
  LOADB R6 0
  SETTABLEKS R6 R4 K4 ["Playing"]
  GETUPVAL R6 1
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 1 [-9]
  GETUPVAL R0 2
  JUMPIFNOT R0 [+31]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  LOADB R1 1
  SETTABLEKS R1 R0 K5 ["Looped"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  LOADB R1 1
  SETTABLEKS R1 R0 K6 ["PlaybackRegionsEnabled"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  GETIMPORT R1 K9 [NumberRange.new]
  LOADN R2 2
  LOADN R3 9
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["LoopRegion"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FreeFalling"]
  LOADN R1 0
  SETTABLEKS R1 R0 K11 ["TimePosition"]
  LOADB R1 1
  SETTABLEKS R1 R0 K4 ["Playing"]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["FreeFalling"]
  LOADB R2 1
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["AssemblyLinearVelocity"]
  GETTABLEKS R1 R2 K4 ["Y"]
  FASTCALL1 MATH_ABS R1 [+2]
  GETIMPORT R0 K7 [math.abs]
  CALL R0 1 1
  LOADN R1 75
  JUMPIFNOTLT R1 R0 [+25]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["Landing"]
  SUBK R6 R0 K10 [50]
  MULK R5 R6 K11 [1]
  DIVK R4 R5 K10 [50]
  ADDK R3 R4 K9 [0]
  LOADN R4 0
  LOADN R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K13 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K14 ["Volume"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["Landing"]
  LOADN R2 0
  SETTABLEKS R2 R1 K15 ["TimePosition"]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["Playing"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Running"]
  GETIMPORT R1 K2 [pairs]
  GETUPVAL R4 1
  NEWTABLE R5 0 0
  GETIMPORT R6 K2 [pairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_NEXT R6
  SETTABLE R10 R5 R9
  FORGLOOP R6 2 [-2]
  MOVE R2 R5
  CALL R1 1 3
  FORGPREP_NEXT R1
  JUMPIFEQ R4 R0 [+7]
  LOADB R6 0
  SETTABLEKS R6 R4 K3 ["Playing"]
  GETUPVAL R6 1
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 1 [-9]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Running"]
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["Playing"]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Running"]
  LOADB R2 1
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Climbing"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["AssemblyLinearVelocity"]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+5]
  GETUPVAL R2 3
  GETUPVAL R3 4
  MOVE R4 R1
  CALL R2 2 1
  JUMP [+1]
  MOVE R2 R1
  GETTABLEKS R4 R2 K2 ["Y"]
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K5 [math.abs]
  CALL R3 1 1
  LOADK R4 K6 [0.1]
  JUMPIFNOTLT R4 R3 [+31]
  LOADB R3 1
  SETTABLEKS R3 R0 K7 ["Playing"]
  GETIMPORT R3 K9 [pairs]
  GETUPVAL R6 5
  NEWTABLE R7 0 0
  GETIMPORT R8 K9 [pairs]
  MOVE R9 R6
  CALL R8 1 3
  FORGPREP_NEXT R8
  SETTABLE R12 R7 R11
  FORGLOOP R8 2 [-2]
  MOVE R4 R7
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFEQ R6 R0 [+7]
  LOADB R8 0
  SETTABLEKS R8 R6 K7 ["Playing"]
  GETUPVAL R8 5
  LOADNIL R9
  SETTABLE R9 R8 R6
  FORGLOOP R3 1 [-9]
  JUMP [+26]
  GETIMPORT R3 K9 [pairs]
  GETUPVAL R6 5
  NEWTABLE R7 0 0
  GETIMPORT R8 K9 [pairs]
  MOVE R9 R6
  CALL R8 1 3
  FORGPREP_NEXT R8
  SETTABLE R12 R7 R11
  FORGLOOP R8 2 [-2]
  MOVE R4 R7
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFEQKNIL R6 [+7]
  LOADB R8 0
  SETTABLEKS R8 R6 K7 ["Playing"]
  GETUPVAL R8 5
  LOADNIL R9
  SETTABLE R9 R8 R6
  FORGLOOP R3 1 [-9]
  GETUPVAL R3 5
  LOADB R4 1
  SETTABLE R4 R3 R0
  RETURN R0 0

PROTO_15:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  RETURN R0 0

PROTO_16:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R4 R8
  FORGLOOP R5 2 [-2]
  MOVE R1 R4
  CALL R0 1 3
  FORGPREP_NEXT R0
  JUMPIFEQKNIL R3 [+7]
  LOADB R5 0
  SETTABLEKS R5 R3 K2 ["Playing"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R5 R3
  FORGLOOP R0 1 [-9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["Died"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["TimePosition"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["Playing"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+5]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R3 2 1
  JUMP [+1]
  MOVE R3 R2
  GETTABLEKS R5 R3 K0 ["Magnitude"]
  LOADK R6 K1 [0.1]
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R1 K2 ["Playing"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R2 K0 ["Magnitude"]
  LOADN R4 75
  JUMPIFNOTLT R4 R3 [+15]
  GETTABLEKS R5 R1 K1 ["Volume"]
  LOADK R7 K2 [0.9]
  MUL R6 R7 R0
  ADD R4 R5 R6
  LOADN R5 0
  LOADN R6 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K5 [math.clamp]
  CALL R3 3 1
  SETTABLEKS R3 R1 K1 ["Volume"]
  RETURN R0 0
  LOADN R3 0
  SETTABLEKS R3 R1 K1 ["Volume"]
  RETURN R0 0

PROTO_19:
  LOADB R3 0
  GETTABLEKS R4 R2 K0 ["Magnitude"]
  LOADK R5 K1 [0.5]
  JUMPIFNOTLT R5 R4 [+11]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["MoveDirection"]
  GETTABLEKS R4 R5 K0 ["Magnitude"]
  LOADK R5 K1 [0.5]
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R1 K3 ["Playing"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+2]
  MOVE R2 R1
  CALL R2 0 0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  OR R1 R2 R1
  GETUPVAL R2 1
  JUMPIFEQ R1 R2 [+8]
  MOVE R2 R1
  GETUPVAL R4 2
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+2]
  MOVE R4 R3
  CALL R4 0 0
  SETUPVAL R2 1
  RETURN R0 0

PROTO_22:
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R8 1
  GETTABLE R7 R8 R5
  JUMPIFNOT R7 [+7]
  MOVE R8 R7
  MOVE R9 R1
  MOVE R10 R5
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["AssemblyLinearVelocity"]
  CALL R8 3 0
  FORGLOOP R2 1 [-11]
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETIMPORT R0 K2 [pairs]
  GETUPVAL R1 2
  CALL R0 1 3
  FORGPREP_NEXT R0
  NAMECALL R5 R4 K3 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  GETIMPORT R0 K6 [table.clear]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["player"]
  GETTABLEKS R2 R0 K1 ["humanoid"]
  GETTABLEKS R3 R0 K2 ["rootPart"]
  LOADNIL R4
  GETUPVAL R5 0
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R2 K3 ["Parent"]
  LOADK R8 K4 ["ControllerManager"]
  NAMECALL R6 R5 K5 ["FindFirstChild"]
  CALL R6 2 1
  MOVE R4 R6
  NEWTABLE R5 0 0
  GETIMPORT R6 K7 [pairs]
  GETUPVAL R7 1
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETIMPORT R11 K10 [Instance.new]
  LOADK R12 K11 ["Sound"]
  CALL R11 1 1
  SETTABLEKS R9 R11 K12 ["Name"]
  LOADB R12 0
  SETTABLEKS R12 R11 K13 ["Archivable"]
  LOADN R12 5
  SETTABLEKS R12 R11 K14 ["RollOffMinDistance"]
  LOADN R12 150
  SETTABLEKS R12 R11 K15 ["RollOffMaxDistance"]
  LOADK R12 K16 [0.65]
  SETTABLEKS R12 R11 K17 ["Volume"]
  GETIMPORT R12 K7 [pairs]
  MOVE R13 R10
  CALL R12 1 3
  FORGPREP_NEXT R12
  SETTABLE R16 R11 R15
  FORGLOOP R12 2 [-2]
  SETTABLEKS R3 R11 K3 ["Parent"]
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-30]
  NEWTABLE R6 0 0
  NEWCLOSURE R7 P0
  CAPTURE VAL R6
  NEWTABLE R8 16 0
  GETIMPORT R9 K21 [Enum.HumanoidStateType.FallingDown]
  NEWCLOSURE R10 P1
  CAPTURE VAL R6
  SETTABLE R10 R8 R9
  GETIMPORT R9 K23 [Enum.HumanoidStateType.GettingUp]
  NEWCLOSURE R10 P2
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLE R10 R8 R9
  GETIMPORT R9 K25 [Enum.HumanoidStateType.Jumping]
  NEWCLOSURE R10 P3
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLE R10 R8 R9
  GETIMPORT R9 K27 [Enum.HumanoidStateType.Swimming]
  NEWCLOSURE R10 P4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLE R10 R8 R9
  GETIMPORT R9 K29 [Enum.HumanoidStateType.Freefall]
  NEWCLOSURE R10 P5
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U2
  SETTABLE R10 R8 R9
  GETIMPORT R9 K31 [Enum.HumanoidStateType.Landed]
  NEWCLOSURE R10 P6
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLE R10 R8 R9
  GETIMPORT R9 K33 [Enum.HumanoidStateType.Running]
  NEWCLOSURE R10 P7
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLE R10 R8 R9
  GETIMPORT R9 K35 [Enum.HumanoidStateType.Climbing]
  NEWCLOSURE R10 P8
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE REF R4
  CAPTURE VAL R6
  SETTABLE R10 R8 R9
  GETIMPORT R9 K37 [Enum.HumanoidStateType.Seated]
  NEWCLOSURE R10 P9
  CAPTURE VAL R6
  SETTABLE R10 R8 R9
  GETIMPORT R9 K39 [Enum.HumanoidStateType.Dead]
  NEWCLOSURE R10 P10
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLE R10 R8 R9
  NEWTABLE R9 4 0
  GETTABLEKS R10 R5 K34 ["Climbing"]
  NEWCLOSURE R11 P11
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE REF R4
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K40 ["FreeFalling"]
  DUPCLOSURE R11 K41 [PROTO_18]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K32 ["Running"]
  NEWCLOSURE R11 P13
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  NEWTABLE R10 1 0
  GETIMPORT R11 K43 [Enum.HumanoidStateType.RunningNoPhysics]
  GETIMPORT R12 K33 [Enum.HumanoidStateType.Running]
  SETTABLE R12 R10 R11
  NAMECALL R12 R2 K44 ["GetState"]
  CALL R12 1 1
  GETTABLE R11 R10 R12
  JUMPIF R11 [+3]
  NAMECALL R11 R2 K44 ["GetState"]
  CALL R11 1 1
  NEWCLOSURE R12 P14
  CAPTURE VAL R8
  CAPTURE REF R11
  MOVE R13 R11
  GETTABLE R14 R8 R13
  JUMPIFNOT R14 [+2]
  MOVE R15 R14
  CALL R15 0 0
  MOVE R11 R13
  GETTABLEKS R13 R2 K45 ["StateChanged"]
  NEWCLOSURE R15 P15
  CAPTURE VAL R10
  CAPTURE REF R11
  CAPTURE VAL R8
  NAMECALL R13 R13 K46 ["Connect"]
  CALL R13 2 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K47 ["Stepped"]
  NEWCLOSURE R16 P16
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R3
  NAMECALL R14 R14 K46 ["Connect"]
  CALL R14 2 1
  NEWCLOSURE R15 P17
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R5
  CLOSEUPVALS R4
  RETURN R15 1

PROTO_25:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["bindRoot"]
  CALL R1 2 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["unbindRoot"]
  CALL R1 2 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIF R1 [+4]
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  SETTABLE R1 R2 R0
  GETTABLEKS R2 R0 K0 ["Character"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K0 ["Character"]
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["bindRoot"]
  CALL R3 2 0
  MOVE R3 R1
  GETTABLEKS R4 R0 K2 ["CharacterAdded"]
  GETUPVAL R6 2
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 -1 0
  MOVE R3 R1
  GETTABLEKS R4 R0 K7 ["CharacterRemoving"]
  GETUPVAL R6 3
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+13]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  NAMECALL R7 R6 K2 ["Disconnect"]
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-4]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETTABLEKS R2 R0 K3 ["Character"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K3 ["Character"]
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K4 ["unbindRoot"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETIMPORT R3 K8 [script]
  LOADK R5 K9 ["AtomicBinding"]
  NAMECALL R3 R3 K10 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  GETIMPORT R5 K13 [pcall]
  LOADK R7 K14 ["UserSoundsUseRelativeVelocity2"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  CALL R5 1 2
  AND R4 R5 R6
  GETIMPORT R6 K13 [pcall]
  LOADK R8 K15 ["UserFixFreeFallingSound"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R8
  CALL R6 1 2
  AND R5 R6 R7
  DUPTABLE R6 K25 [{"Climbing", "Died", "FreeFalling", "GettingUp", "Jumping", "Landing", "Running", "Splash", "Swimming"}]
  DUPTABLE R7 K28 [{"SoundId", "Looped"}]
  LOADK R8 K29 ["rbxasset://sounds/action_footsteps_plastic.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["Looped"]
  SETTABLEKS R7 R6 K16 ["Climbing"]
  DUPTABLE R7 K30 [{"SoundId"}]
  LOADK R8 K31 ["rbxasset://sounds/uuhhh.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  SETTABLEKS R7 R6 K17 ["Died"]
  DUPTABLE R7 K28 [{"SoundId", "Looped"}]
  JUMPIFNOT R5 [+2]
  LOADK R8 K32 ["rbxasset://sounds/action_falling.ogg"]
  JUMP [+1]
  LOADK R8 K33 ["rbxasset://sounds/action_falling.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["Looped"]
  SETTABLEKS R7 R6 K18 ["FreeFalling"]
  DUPTABLE R7 K30 [{"SoundId"}]
  LOADK R8 K34 ["rbxasset://sounds/action_get_up.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  SETTABLEKS R7 R6 K19 ["GettingUp"]
  DUPTABLE R7 K30 [{"SoundId"}]
  LOADK R8 K35 ["rbxasset://sounds/action_jump.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  SETTABLEKS R7 R6 K20 ["Jumping"]
  DUPTABLE R7 K30 [{"SoundId"}]
  LOADK R8 K36 ["rbxasset://sounds/action_jump_land.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  SETTABLEKS R7 R6 K21 ["Landing"]
  DUPTABLE R7 K38 [{"SoundId", "Looped", "Pitch"}]
  LOADK R8 K29 ["rbxasset://sounds/action_footsteps_plastic.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["Looped"]
  LOADK R8 K39 [1.85]
  SETTABLEKS R8 R7 K37 ["Pitch"]
  SETTABLEKS R7 R6 K22 ["Running"]
  DUPTABLE R7 K30 [{"SoundId"}]
  LOADK R8 K40 ["rbxasset://sounds/impact_water.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  SETTABLEKS R7 R6 K23 ["Splash"]
  DUPTABLE R7 K38 [{"SoundId", "Looped", "Pitch"}]
  LOADK R8 K41 ["rbxasset://sounds/action_swim.mp3"]
  SETTABLEKS R8 R7 K26 ["SoundId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["Looped"]
  LOADK R8 K42 [1.6]
  SETTABLEKS R8 R7 K37 ["Pitch"]
  SETTABLEKS R7 R6 K24 ["Swimming"]
  DUPCLOSURE R7 K43 [PROTO_2]
  DUPCLOSURE R8 K44 [PROTO_3]
  DUPCLOSURE R9 K45 [PROTO_4]
  DUPCLOSURE R10 K46 [PROTO_5]
  DUPCLOSURE R11 K47 [PROTO_24]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R1
  GETTABLEKS R12 R2 K48 ["new"]
  DUPTABLE R13 K51 [{"humanoid", "rootPart"}]
  LOADK R14 K52 ["Humanoid"]
  SETTABLEKS R14 R13 K49 ["humanoid"]
  LOADK R14 K53 ["HumanoidRootPart"]
  SETTABLEKS R14 R13 K50 ["rootPart"]
  MOVE R14 R11
  CALL R12 2 1
  NEWTABLE R13 0 0
  DUPCLOSURE R14 K54 [PROTO_25]
  CAPTURE VAL R12
  DUPCLOSURE R15 K55 [PROTO_26]
  CAPTURE VAL R12
  DUPCLOSURE R16 K56 [PROTO_27]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R17 K57 [PROTO_28]
  CAPTURE VAL R13
  CAPTURE VAL R12
  GETIMPORT R18 K59 [ipairs]
  NAMECALL R19 R0 K60 ["GetPlayers"]
  CALL R19 1 -1
  CALL R18 -1 3
  FORGPREP_INEXT R18
  GETIMPORT R23 K63 [task.spawn]
  MOVE R24 R16
  MOVE R25 R22
  CALL R23 2 0
  FORGLOOP R18 2 [inext] [-6]
  GETTABLEKS R18 R0 K64 ["PlayerAdded"]
  MOVE R20 R16
  NAMECALL R18 R18 K65 ["Connect"]
  CALL R18 2 0
  GETTABLEKS R18 R0 K66 ["PlayerRemoving"]
  MOVE R20 R17
  NAMECALL R18 R18 K65 ["Connect"]
  CALL R18 2 0
  RETURN R0 0
