PROTO_0:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADK R3 K0 ["Animate"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  LOADK R4 K2 ["LocalScript"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R1 1
  JUMPIFNOT R1 [+12]
  LOADK R4 K4 ["Script"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R1 K5 ["RunContext"]
  GETIMPORT R3 K8 [Enum.RunContext.Client]
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R1 1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+7]
  JUMPIFNOT R1 [+6]
  LOADK R4 K9 ["Actor"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R1 1
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R4 K0 ["PlayEmote"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  LOADK R5 K2 ["BindableFunction"]
  NAMECALL R3 R2 K3 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+1]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+2]
  LOADNIL R1
  JUMP [+13]
  LOADK R5 K0 ["PlayEmote"]
  NAMECALL R3 R2 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  LOADK R6 K2 ["BindableFunction"]
  NAMECALL R4 R3 K3 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  MOVE R1 R3
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  GETUPVAL R0 2
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  LOADK R6 K0 ["PlayEmote"]
  NAMECALL R4 R3 K1 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  LOADK R7 K2 ["BindableFunction"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R2 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Value"]
  JUMPIFEQ R2 R1 [+11]
  GETUPVAL R2 1
  SETTABLEKS R1 R2 K4 ["Value"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["ChangedEvent"]
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 2 0
  GETUPVAL R2 2
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  LOADK R3 K0 ["LocalScript"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+13]
  LOADK R3 K2 ["Script"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R0 K3 ["RunContext"]
  GETIMPORT R3 K6 [Enum.RunContext.Client]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+7]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+52]
  LOADK R4 K7 ["Actor"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+47]
  GETTABLEKS R2 R0 K8 ["Name"]
  JUMPIFNOTEQKS R2 K9 ["Animate"] [+44]
  GETUPVAL R2 1
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R4
  JUMP [+13]
  LOADK R8 K10 ["PlayEmote"]
  NAMECALL R6 R5 K11 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K12 ["BindableFunction"]
  NAMECALL R7 R6 K1 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["Value"]
  JUMPIFEQ R4 R3 [+11]
  GETUPVAL R4 3
  SETTABLEKS R3 R4 K13 ["Value"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K14 ["ChangedEvent"]
  MOVE R6 R3
  NAMECALL R4 R4 K15 ["Fire"]
  CALL R4 2 0
  GETUPVAL R4 4
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADNIL R3
  JUMP [+13]
  LOADK R7 K0 ["PlayEmote"]
  NAMECALL R5 R4 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K2 ["BindableFunction"]
  NAMECALL R6 R5 K3 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R3 R5
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Value"]
  JUMPIFEQ R3 R2 [+11]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K4 ["Value"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["ChangedEvent"]
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["Fire"]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K7 ["ChildAdded"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 1
  SETUPVAL R2 3
  RETURN R0 0

PROTO_7:
  LOADK R3 K0 ["BindableFunction"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+47]
  GETTABLEKS R1 R0 K2 ["Name"]
  JUMPIFNOTEQKS R1 K3 ["PlayEmote"] [+44]
  GETUPVAL R1 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADNIL R3
  JUMP [+13]
  LOADK R7 K3 ["PlayEmote"]
  NAMECALL R5 R4 K4 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K0 ["BindableFunction"]
  NAMECALL R6 R5 K1 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R3 R5
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["Value"]
  JUMPIFEQ R3 R2 [+11]
  GETUPVAL R3 2
  SETTABLEKS R2 R3 K5 ["Value"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["ChangedEvent"]
  MOVE R5 R2
  NAMECALL R3 R3 K7 ["Fire"]
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  LOADK R6 K0 ["PlayEmote"]
  NAMECALL R4 R3 K1 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  LOADK R7 K2 ["BindableFunction"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R2 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+43]
  GETUPVAL R5 0
  MOVE R6 R0
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R4
  JUMP [+13]
  LOADK R8 K0 ["PlayEmote"]
  NAMECALL R6 R5 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K2 ["BindableFunction"]
  NAMECALL R7 R6 K3 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Value"]
  JUMPIFEQ R4 R3 [+11]
  GETUPVAL R4 1
  SETTABLEKS R3 R4 K4 ["Value"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ChangedEvent"]
  MOVE R6 R3
  NAMECALL R4 R4 K6 ["Fire"]
  CALL R4 2 0
  GETUPVAL R4 2
  MOVE R5 R3
  MOVE R6 R0
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R3 R1 K7 ["ChildAdded"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 3
  RETURN R0 0

PROTO_9:
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETUPVAL R4 1
  NAMECALL R2 R2 K0 ["IsDescendantOf"]
  CALL R2 2 1
  JUMPIF R2 [+43]
  GETUPVAL R2 1
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R4
  JUMP [+13]
  LOADK R8 K1 ["PlayEmote"]
  NAMECALL R6 R5 K2 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K3 ["BindableFunction"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["Value"]
  JUMPIFEQ R4 R3 [+11]
  GETUPVAL R4 3
  SETTABLEKS R3 R4 K5 ["Value"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["ChangedEvent"]
  MOVE R6 R3
  NAMECALL R4 R4 K7 ["Fire"]
  CALL R4 2 0
  GETUPVAL R4 4
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+2]
  LOADNIL R1
  JUMP [+13]
  LOADK R5 K0 ["PlayEmote"]
  NAMECALL R3 R2 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  LOADK R6 K2 ["BindableFunction"]
  NAMECALL R4 R3 K3 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  MOVE R1 R3
  JUMP [+1]
  LOADNIL R1
  JUMPIF R1 [+43]
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADNIL R3
  JUMP [+13]
  LOADK R7 K0 ["PlayEmote"]
  NAMECALL R5 R4 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K2 ["BindableFunction"]
  NAMECALL R6 R5 K3 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R3 R5
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Value"]
  JUMPIFEQ R3 R2 [+11]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K4 ["Value"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["ChangedEvent"]
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["Fire"]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R2 R1 K7 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 1
  SETUPVAL R2 3
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 1
  GETUPVAL R2 2
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 2
  JUMPIF R1 [+1]
  RETURN R0 0
  JUMPIFNOT R0 [+76]
  GETUPVAL R3 3
  MOVE R4 R1
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  LOADK R6 K1 ["PlayEmote"]
  NAMECALL R4 R3 K2 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  LOADK R7 K3 ["BindableFunction"]
  NAMECALL R5 R4 K4 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R2 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIF R2 [+43]
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R4
  JUMP [+13]
  LOADK R8 K1 ["PlayEmote"]
  NAMECALL R6 R5 K2 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K3 ["BindableFunction"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["Value"]
  JUMPIFEQ R4 R3 [+11]
  GETUPVAL R4 4
  SETTABLEKS R3 R4 K5 ["Value"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["ChangedEvent"]
  MOVE R6 R3
  NAMECALL R4 R4 K7 ["Fire"]
  CALL R4 2 0
  GETUPVAL R4 5
  MOVE R5 R3
  MOVE R6 R1
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R3 R2 K8 ["AncestryChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 2
  RETURN R0 0
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+75]
  GETUPVAL R4 3
  MOVE R5 R1
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADNIL R3
  JUMP [+13]
  LOADK R7 K1 ["PlayEmote"]
  NAMECALL R5 R4 K2 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  LOADK R8 K3 ["BindableFunction"]
  NAMECALL R6 R5 K4 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  MOVE R3 R5
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOT R3 [+43]
  GETUPVAL R6 3
  MOVE R7 R1
  CALL R6 1 1
  JUMPIF R6 [+2]
  LOADNIL R5
  JUMP [+13]
  LOADK R9 K1 ["PlayEmote"]
  NAMECALL R7 R6 K2 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  LOADK R10 K3 ["BindableFunction"]
  NAMECALL R8 R7 K4 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  MOVE R5 R7
  JUMP [+1]
  LOADNIL R5
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["Value"]
  JUMPIFEQ R5 R4 [+11]
  GETUPVAL R5 4
  SETTABLEKS R4 R5 K5 ["Value"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["ChangedEvent"]
  MOVE R7 R4
  NAMECALL R5 R5 K7 ["Fire"]
  CALL R5 2 0
  GETUPVAL R5 5
  MOVE R6 R4
  MOVE R7 R1
  CALL R5 2 0
  RETURN R0 0
  GETTABLEKS R4 R2 K10 ["ChildAdded"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R4 R4 K9 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 1
  RETURN R0 0
  GETUPVAL R3 3
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R3 [+43]
  GETUPVAL R6 3
  MOVE R7 R1
  CALL R6 1 1
  JUMPIF R6 [+2]
  LOADNIL R5
  JUMP [+13]
  LOADK R9 K1 ["PlayEmote"]
  NAMECALL R7 R6 K2 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  LOADK R10 K3 ["BindableFunction"]
  NAMECALL R8 R7 K4 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  MOVE R5 R7
  JUMP [+1]
  LOADNIL R5
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["Value"]
  JUMPIFEQ R5 R4 [+11]
  GETUPVAL R5 4
  SETTABLEKS R4 R5 K5 ["Value"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["ChangedEvent"]
  MOVE R7 R4
  NAMECALL R5 R5 K7 ["Fire"]
  CALL R5 2 0
  GETUPVAL R5 5
  MOVE R6 R4
  MOVE R7 R1
  CALL R5 2 0
  RETURN R0 0
  GETTABLEKS R4 R1 K10 ["ChildAdded"]
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R4 R4 K9 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  LOADK R6 K1 ["PlayEmote"]
  NAMECALL R4 R3 K2 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  LOADK R7 K3 ["BindableFunction"]
  NAMECALL R5 R4 K4 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R2 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["Value"]
  JUMPIFEQ R2 R1 [+11]
  GETUPVAL R2 4
  SETTABLEKS R1 R2 K5 ["Value"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K6 ["ChangedEvent"]
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["Fire"]
  CALL R2 2 0
  GETUPVAL R2 5
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Character"]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 2
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 2
  GETUPVAL R1 3
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 3
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 3
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  LOADK R6 K2 ["PlayEmote"]
  NAMECALL R4 R3 K3 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  LOADK R7 K4 ["BindableFunction"]
  NAMECALL R5 R4 K5 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R2 R4
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K6 ["Value"]
  JUMPIFEQ R2 R1 [+11]
  GETUPVAL R2 5
  SETTABLEKS R1 R2 K6 ["Value"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K7 ["ChangedEvent"]
  MOVE R4 R1
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 2 0
  GETUPVAL R2 6
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CompositorAnimateScript"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K6 ["LocalPlayer"]
  JUMPIF R2 [+9]
  LOADK R5 K6 ["LocalPlayer"]
  NAMECALL R3 R1 K7 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NAMECALL R3 R3 K8 ["Wait"]
  CALL R3 1 0
  GETTABLEKS R2 R1 K6 ["LocalPlayer"]
  DUPTABLE R3 K11 [{"Value", "ChangedEvent"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["Value"]
  GETIMPORT R4 K14 [Instance.new]
  LOADK R5 K15 ["BindableEvent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["ChangedEvent"]
  DUPCLOSURE R4 K16 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE VAL R4
  DUPCLOSURE R6 K18 [PROTO_2]
  CAPTURE VAL R4
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  NEWCLOSURE R10 P3
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE REF R9
  LOADNIL R11
  NEWCLOSURE R12 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  NEWCLOSURE R13 P5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  CAPTURE REF R7
  CAPTURE VAL R0
  NEWCLOSURE R14 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  CAPTURE REF R8
  NEWCLOSURE R15 P7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  CAPTURE REF R9
  NEWCLOSURE R11 P8
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE REF R9
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  CAPTURE VAL R0
  NEWCLOSURE R16 P9
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE REF R9
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  LOADK R19 K19 ["Character"]
  NAMECALL R17 R2 K7 ["GetPropertyChangedSignal"]
  CALL R17 2 1
  NEWCLOSURE R19 P10
  CAPTURE REF R2
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE REF R9
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R11
  NAMECALL R17 R17 K20 ["Connect"]
  CALL R17 2 0
  GETTABLEKS R17 R2 K19 ["Character"]
  JUMPIFNOT R7 [+4]
  NAMECALL R18 R7 K21 ["Disconnect"]
  CALL R18 1 0
  LOADNIL R7
  JUMPIFNOT R8 [+4]
  NAMECALL R18 R8 K21 ["Disconnect"]
  CALL R18 1 0
  LOADNIL R8
  JUMPIFNOT R9 [+4]
  NAMECALL R18 R9 K21 ["Disconnect"]
  CALL R18 1 0
  LOADNIL R9
  MOVE R20 R4
  MOVE R21 R17
  CALL R20 1 1
  JUMPIF R20 [+2]
  LOADNIL R19
  JUMP [+13]
  LOADK R23 K22 ["PlayEmote"]
  NAMECALL R21 R20 K23 ["FindFirstChild"]
  CALL R21 2 1
  JUMPIFNOT R21 [+7]
  LOADK R24 K24 ["BindableFunction"]
  NAMECALL R22 R21 K25 ["IsA"]
  CALL R22 2 1
  JUMPIFNOT R22 [+2]
  MOVE R19 R21
  JUMP [+1]
  LOADNIL R19
  JUMPIFNOTEQKNIL R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  GETTABLEKS R19 R3 K9 ["Value"]
  JUMPIFEQ R19 R18 [+9]
  SETTABLEKS R18 R3 K9 ["Value"]
  GETTABLEKS R19 R3 K10 ["ChangedEvent"]
  MOVE R21 R18
  NAMECALL R19 R19 K26 ["Fire"]
  CALL R19 2 0
  MOVE R19 R11
  MOVE R20 R18
  MOVE R21 R17
  CALL R19 2 0
  CLOSEUPVALS R2
  RETURN R3 1