PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  NAMECALL R0 R0 K1 ["CanUserChatAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  LOADB R0 1
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsStudio"]
  CALL R1 1 1
  JUMPIF R1 [+7]
  GETIMPORT R1 K2 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 2
  AND R0 R1 R2
  GETUPVAL R1 3
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 0
  JUMPIF R0 [+5]
  GETUPVAL R1 5
  LOADB R3 0
  NAMECALL R1 R1 K4 ["SetVisible"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [coroutine.wrap]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 1
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Chat"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Players"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R6 K8 [script]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R4 K12 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetCanChat"]
  CALL R5 1 1
  LOADK R8 K14 ["RobloxGui"]
  NAMECALL R6 R3 K15 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R6 K16 ["Modules"]
  GETTABLEKS R8 R9 K17 ["ChatSelector"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K18 ["LocalPlayer"]
  JUMPIF R8 [+10]
  LOADK R11 K18 ["LocalPlayer"]
  NAMECALL R9 R2 K19 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  NAMECALL R9 R9 K20 ["Wait"]
  CALL R9 1 0
  GETTABLEKS R8 R2 K18 ["LocalPlayer"]
  JUMPBACK [-11]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CLOSEUPVALS R8
  RETURN R9 1