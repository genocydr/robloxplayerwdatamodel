PROTO_0:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 0
  JUMPIF R1 [+2]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["setFocus"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Listener"]
  GETTABLEKS R0 R1 K2 ["InputBegan"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K3 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 1
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K1 ["get"]
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R6 0 2
  MOVE R7 R0
  MOVE R8 R1
  SETLIST R6 R7 2 [1]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Focus"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Contexts"]
  GETTABLEKS R5 R6 K13 ["InputListenerContext"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R5 1