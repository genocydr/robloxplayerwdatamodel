PROTO_0:
  GETTABLEKS R5 R0 K1 ["X"]
  GETTABLEKS R4 R5 K2 ["Offset"]
  POWK R3 R4 K0 [2]
  GETTABLEKS R6 R0 K3 ["Y"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  POWK R4 R5 K0 [2]
  ADD R2 R3 R4
  FASTCALL1 MATH_SQRT R2 [+2]
  GETIMPORT R1 K6 [math.sqrt]
  CALL R1 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R1 [+11]
  GETTABLEKS R5 R0 K1 ["X"]
  GETTABLEKS R4 R5 K2 ["Offset"]
  DIV R3 R4 R1
  FASTCALL1 MATH_ABS R3 [+2]
  GETIMPORT R2 K8 [math.abs]
  CALL R2 1 1
  JUMP [+1]
  LOADN R2 0
  LOADN R4 0
  JUMPIFNOTLT R4 R1 [+11]
  GETTABLEKS R6 R0 K3 ["Y"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  DIV R4 R5 R1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K8 [math.abs]
  CALL R3 1 1
  RETURN R2 2
  LOADN R3 0
  RETURN R2 2

PROTO_1:
  GETUPVAL R1 0
  DIVK R0 R1 K0 [2]
  MOVE R1 R0
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["relativeStickSize"]
  MUL R2 R3 R4
  RETURN R1 2

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["inputState"]
  JUMPIFNOTEQKNIL R0 [+9]
  GETIMPORT R0 K3 [UDim2.new]
  LOADN R1 0
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  CALL R0 4 -1
  RETURN R0 -1
  GETIMPORT R0 K3 [UDim2.new]
  LOADN R1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["inputState"]
  GETTABLEKS R4 R5 K4 ["X"]
  GETUPVAL R5 1
  MUL R3 R4 R5
  GETUPVAL R5 1
  MINUS R4 R5
  GETUPVAL R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K7 [math.clamp]
  CALL R2 3 1
  LOADN R3 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["inputState"]
  GETTABLEKS R7 R8 K8 ["Y"]
  MINUS R6 R7
  GETUPVAL R7 1
  MUL R5 R6 R7
  GETUPVAL R7 1
  MINUS R6 R7
  GETUPVAL R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K7 [math.clamp]
  CALL R4 3 1
  CALL R0 4 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R4 0
  ADD R3 R0 R4
  GETTABLEKS R8 R3 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  POWK R6 R7 K0 [2]
  GETTABLEKS R9 R3 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  POWK R7 R8 K0 [2]
  ADD R5 R6 R7
  FASTCALL1 MATH_SQRT R5 [+2]
  GETIMPORT R4 K6 [math.sqrt]
  CALL R4 1 1
  LOADN R6 0
  JUMPIFNOTLT R6 R4 [+11]
  GETTABLEKS R8 R3 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  DIV R6 R7 R4
  FASTCALL1 MATH_ABS R6 [+2]
  GETIMPORT R5 K8 [math.abs]
  CALL R5 1 1
  JUMP [+1]
  LOADN R5 0
  LOADN R7 0
  JUMPIFNOTLT R7 R4 [+11]
  GETTABLEKS R9 R3 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  DIV R7 R8 R4
  FASTCALL1 MATH_ABS R7 [+2]
  GETIMPORT R6 K8 [math.abs]
  CALL R6 1 1
  JUMP [+1]
  LOADN R6 0
  MOVE R1 R5
  MOVE R2 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  GETTABLEKS R8 R0 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  ADD R5 R6 R7
  GETUPVAL R8 1
  MINUS R7 R8
  MUL R6 R7 R1
  GETUPVAL R8 1
  MUL R7 R8 R1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K10 [math.clamp]
  CALL R4 3 1
  GETUPVAL R5 1
  ADD R3 R4 R5
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  GETTABLEKS R9 R0 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  ADD R6 R7 R8
  GETUPVAL R9 1
  MINUS R8 R9
  MUL R7 R8 R2
  GETUPVAL R9 1
  MUL R8 R9 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K10 [math.clamp]
  CALL R5 3 1
  GETUPVAL R6 1
  ADD R4 R5 R6
  GETIMPORT R5 K13 [UDim2.new]
  LOADN R6 0
  MOVE R7 R3
  LOADN R8 0
  MOVE R9 R4
  CALL R5 4 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  POWK R5 R6 K0 [2]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  POWK R6 R7 K0 [2]
  ADD R4 R5 R6
  FASTCALL1 MATH_SQRT R4 [+2]
  GETIMPORT R3 K6 [math.sqrt]
  CALL R3 1 1
  LOADN R5 0
  JUMPIFNOTLT R5 R3 [+11]
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  DIV R5 R6 R3
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K8 [math.abs]
  CALL R4 1 1
  JUMP [+1]
  LOADN R4 0
  LOADN R6 0
  JUMPIFNOTLT R6 R3 [+11]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  DIV R6 R7 R3
  FASTCALL1 MATH_ABS R6 [+2]
  GETIMPORT R5 K8 [math.abs]
  CALL R5 1 1
  JUMP [+1]
  LOADN R5 0
  MOVE R1 R4
  MOVE R2 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["X"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  ADD R4 R5 R6
  GETUPVAL R7 1
  MINUS R6 R7
  MUL R5 R6 R1
  GETUPVAL R7 1
  MUL R6 R7 R1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K10 [math.clamp]
  CALL R3 3 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Y"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  ADD R5 R6 R7
  GETUPVAL R8 1
  MINUS R7 R8
  MUL R6 R7 R2
  GETUPVAL R8 1
  MUL R7 R8 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K10 [math.clamp]
  CALL R4 3 1
  GETUPVAL R7 1
  DIV R6 R3 R7
  LOADN R7 255
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K10 [math.clamp]
  CALL R5 3 1
  MINUS R8 R4
  GETUPVAL R9 1
  DIV R7 R8 R9
  LOADN R8 255
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K10 [math.clamp]
  CALL R6 3 1
  LOADN R10 0
  FASTCALL3 VECTOR R5 R6 R10
  MOVE R8 R5
  MOVE R9 R6
  GETIMPORT R7 K13 [Vector3.new]
  CALL R7 3 1
  RETURN R7 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["keyCode"]
  GETUPVAL R4 3
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEventAsync"]
  CALL R0 5 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R1 R2 [+60]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 1
  GETIMPORT R2 K7 [UDim2.new]
  LOADN R3 0
  GETTABLEKS R6 R0 K8 ["Position"]
  GETTABLEKS R5 R6 K9 ["X"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["current"]
  SUB R4 R5 R6
  LOADN R5 0
  GETTABLEKS R8 R0 K8 ["Position"]
  GETTABLEKS R7 R8 K10 ["Y"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["current"]
  SUB R6 R7 R8
  CALL R2 4 1
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["current"]
  GETUPVAL R2 6
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["Position"]
  GETUPVAL R1 7
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["current"]
  CALL R1 1 1
  GETIMPORT R2 K12 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["keyCode"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["VECTOR_PRESSED"]
  GETIMPORT R5 K4 [Vector3.zero]
  NAMECALL R0 R0 K5 ["SendGamepadEventAsync"]
  CALL R0 5 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["keyCode"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["VECTOR_RELEASED"]
  GETIMPORT R5 K4 [Vector3.zero]
  NAMECALL R0 R0 K5 ["SendGamepadEventAsync"]
  CALL R0 5 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["keyCode"]
  GETIMPORT R4 K3 [Vector3.zero]
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEventAsync"]
  CALL R0 5 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R1 R2 [+92]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+87]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+82]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+57]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+53]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  LOADK R3 K6 ["Active"]
  NAMECALL R1 R1 K7 ["RemoveTag"]
  CALL R1 2 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["current"]
  LOADK R3 K6 ["Active"]
  NAMECALL R1 R1 K7 ["RemoveTag"]
  CALL R1 2 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 4
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["current"]
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  CALL R1 1 0
  GETUPVAL R1 10
  GETUPVAL R2 11
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  GETUPVAL R2 12
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["Position"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+103]
  GETUPVAL R2 1
  JUMPIFEQKNIL R2 [+100]
  GETUPVAL R2 2
  JUMPIFEQKNIL R2 [+97]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+91]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+86]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+81]
  GETUPVAL R2 3
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 4
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K7 ["Y"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 5
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+58]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+54]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K0 ["current"]
  LOADK R4 K8 ["Active"]
  NAMECALL R2 R2 K9 ["AddTag"]
  CALL R2 2 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K0 ["current"]
  LOADK R4 K8 ["Active"]
  NAMECALL R2 R2 K9 ["AddTag"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  NAMECALL R3 R3 K10 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 14
  GETUPVAL R3 2
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U15
  CAPTURE UPVAL U13
  CAPTURE UPVAL U16
  CAPTURE UPVAL U8
  CAPTURE UPVAL U17
  CAPTURE UPVAL U9
  NAMECALL R3 R3 K10 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  RETURN R0 0

PROTO_12:
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  RETURN R0 0

PROTO_13:
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  DUPTABLE R2 K4 [{"relativeSocketSize", "relativeStickSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"]
  SETTABLEKS R3 R2 K2 ["relativeSocketSize"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"]
  SETTABLEKS R3 R2 K3 ["relativeStickSize"]
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["useState"]
  LOADN R3 1
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["useState"]
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["useMemo"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  NEWTABLE R8 0 2
  MOVE R9 R2
  GETTABLEKS R10 R1 K3 ["relativeStickSize"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 2
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["useContext"]
  GETUPVAL R10 3
  CALL R9 1 1
  GETTABLEKS R8 R9 K10 ["gamepadId"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["useRef"]
  LOADNIL R10
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["useRef"]
  LOADNIL R11
  CALL R10 1 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["useRef"]
  LOADN R12 0
  CALL R11 1 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["useRef"]
  LOADN R13 0
  CALL R12 1 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["useRef"]
  LOADB R14 0
  CALL R13 1 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K11 ["useRef"]
  GETUPVAL R15 4
  CALL R14 1 1
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K11 ["useRef"]
  LOADNIL R16
  CALL R15 1 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["useRef"]
  LOADNIL R17
  CALL R16 1 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K9 ["useContext"]
  GETUPVAL R18 5
  CALL R17 1 1
  GETTABLEKS R18 R17 K12 ["InputChanged"]
  GETTABLEKS R19 R17 K13 ["InputEnded"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K8 ["useMemo"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R1
  CAPTURE VAL R6
  NEWTABLE R22 0 2
  GETTABLEKS R23 R1 K14 ["inputState"]
  MOVE R24 R6
  SETLIST R22 R23 2 [1]
  CALL R20 2 1
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K15 ["useCallback"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R20
  CAPTURE VAL R6
  NEWTABLE R23 0 2
  MOVE R24 R20
  MOVE R25 R6
  SETLIST R23 R24 2 [1]
  CALL R21 2 1
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K15 ["useCallback"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R20
  CAPTURE VAL R6
  CALL R22 1 1
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K15 ["useCallback"]
  NEWCLOSURE R24 P4
  CAPTURE VAL R3
  NEWTABLE R25 0 1
  MOVE R26 R3
  SETLIST R25 R26 1 [1]
  CALL R23 2 1
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K15 ["useCallback"]
  NEWCLOSURE R25 P5
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE UPVAL U6
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  NEWTABLE R26 0 6
  MOVE R27 R18
  MOVE R28 R19
  MOVE R29 R8
  GETTABLEKS R30 R1 K16 ["keyCode"]
  MOVE R31 R22
  MOVE R32 R21
  SETLIST R26 R27 6 [1]
  CALL R24 2 1
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K17 ["createElement"]
  LOADK R26 K18 ["Frame"]
  NEWTABLE R27 8 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K19 ["Tag"]
  GETUPVAL R29 8
  LOADK R30 K20 ["Widget-Thumbstick"]
  LOADK R31 K21 ["X-Circle"]
  LOADK R32 K22 ["data-testid=Widget-Thumbstick"]
  GETTABLEKS R34 R1 K14 ["inputState"]
  JUMPIF R34 [+3]
  GETTABLEKS R34 R1 K23 ["clickInputState"]
  JUMPIFNOT R34 [+2]
  LOADK R33 K24 ["Active"]
  JUMP [+1]
  LOADNIL R33
  CALL R29 4 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R1 K25 ["Position"]
  SETTABLEKS R28 R27 K25 ["Position"]
  NEWCLOSURE R28 P6
  CAPTURE VAL R16
  SETTABLEKS R28 R27 K26 ["ref"]
  GETIMPORT R28 K29 [UDim2.new]
  GETTABLEKS R29 R1 K2 ["relativeSocketSize"]
  LOADN R30 0
  GETTABLEKS R31 R1 K2 ["relativeSocketSize"]
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K30 ["Size"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K31 ["Change"]
  GETTABLEKS R28 R29 K32 ["AbsoluteSize"]
  SETTABLE R23 R27 R28
  DUPTABLE R28 K34 [{"Stick"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K17 ["createElement"]
  LOADK R30 K18 ["Frame"]
  NEWTABLE R31 8 0
  GETIMPORT R32 K29 [UDim2.new]
  LOADN R33 0
  MOVE R34 R7
  LOADN R35 0
  MOVE R36 R7
  CALL R32 4 1
  SETTABLEKS R32 R31 K30 ["Size"]
  MOVE R32 R21
  GETTABLEKS R33 R14 K35 ["current"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K25 ["Position"]
  NEWCLOSURE R32 P7
  CAPTURE VAL R15
  SETTABLEKS R32 R31 K26 ["ref"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K19 ["Tag"]
  GETUPVAL R33 8
  LOADK R34 K21 ["X-Circle"]
  LOADK R35 K36 ["data-testid=Widget-Thumbstick-Stick"]
  GETTABLEKS R37 R1 K14 ["inputState"]
  JUMPIF R37 [+3]
  GETTABLEKS R37 R1 K23 ["clickInputState"]
  JUMPIFNOT R37 [+2]
  LOADK R36 K24 ["Active"]
  JUMP [+1]
  LOADNIL R36
  JUMPIFNOT R4 [+5]
  GETUPVAL R38 9
  CALL R38 0 1
  JUMPIFNOT R38 [+2]
  LOADK R37 K37 ["Hovered"]
  JUMP [+1]
  LOADNIL R37
  CALL R33 4 1
  SETTABLE R33 R31 R32
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K38 ["Event"]
  GETTABLEKS R32 R33 K39 ["InputBegan"]
  SETTABLE R24 R31 R32
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K38 ["Event"]
  GETTABLEKS R32 R33 K40 ["MouseEnter"]
  NEWCLOSURE R33 P8
  CAPTURE VAL R5
  SETTABLE R33 R31 R32
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K38 ["Event"]
  GETTABLEKS R32 R33 K41 ["MouseLeave"]
  NEWCLOSURE R33 P9
  CAPTURE VAL R5
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K33 ["Stick"]
  CALL R25 3 -1
  RETURN R25 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["RootContainerInputContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K12 ["MockableProxyPluginComponents"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["StudioDeviceEmulator"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K15 ["Styling"]
  GETTABLEKS R6 R7 K16 ["joinTags"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K17 ["Bin"]
  GETTABLEKS R9 R10 K18 ["Common"]
  GETTABLEKS R8 R9 K19 ["defineLuaFlags"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K20 ["getFFlagEnableGrayHoverDeviceEmulator"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K10 ["Packages"]
  GETTABLEKS R10 R11 K21 ["React"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K7 ["Util"]
  GETTABLEKS R11 R12 K22 ["MappingsContext"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K23 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
  GETIMPORT R12 K26 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  DUPCLOSURE R13 K27 [PROTO_0]
  DUPCLOSURE R14 K28 [PROTO_16]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R8
  GETTABLEKS R15 R9 K29 ["memo"]
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1
