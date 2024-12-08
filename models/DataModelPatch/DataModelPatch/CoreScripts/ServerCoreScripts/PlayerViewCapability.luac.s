PROTO_0:
  GETTABLEKS R2 R1 K0 ["OsPlatform"]
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  LOADB R7 1
  JUMPIFEQKS R2 K1 ["iOS"] [+5]
  JUMPIFEQKS R2 K2 ["Android"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  NAMECALL R3 R3 K3 ["FireClient"]
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["UserId"]
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K2 [tostring]
  CALL R1 1 1
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+37]
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["GetPlayerByUserId"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLE R4 R5 R3
  JUMPIF R4 [+4]
  GETUPVAL R4 2
  NEWTABLE R5 0 0
  SETTABLE R5 R4 R3
  GETUPVAL R5 2
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K3 ["UserId"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K2 [tostring]
  CALL R5 1 1
  GETIMPORT R6 K6 [os.clock]
  CALL R6 0 1
  SETTABLE R6 R4 R5
  GETUPVAL R4 3
  MOVE R6 R2
  NAMECALL R4 R4 K7 ["FireClient"]
  CALL R4 2 0
  RETURN R0 0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLE R3 R4 R2
  JUMPIF R3 [+4]
  GETUPVAL R3 2
  NEWTABLE R4 0 0
  SETTABLE R4 R3 R2
  GETUPVAL R4 2
  GETTABLE R3 R4 R2
  GETTABLEKS R5 R0 K3 ["UserId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  GETIMPORT R5 K6 [os.clock]
  CALL R5 0 1
  SETTABLE R5 R3 R4
  GETUPVAL R3 1
  MOVE R5 R1
  NAMECALL R3 R3 K0 ["GetPlayerByUserId"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 3
  MOVE R6 R3
  NAMECALL R4 R4 K7 ["FireClient"]
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["UserId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+54]
  NEWTABLE R4 0 0
  GETUPVAL R8 0
  GETTABLE R5 R8 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETIMPORT R11 K5 [os.clock]
  CALL R11 0 1
  SUB R10 R11 R9
  LOADN R11 5
  JUMPIFNOTLT R11 R10 [+9]
  FASTCALL2 TABLE_INSERT R4 R8 [+5]
  MOVE R11 R4
  MOVE R12 R8
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  JUMP [+20]
  FASTCALL1 TONUMBER R8 [+3]
  MOVE R11 R8
  GETIMPORT R10 K10 [tonumber]
  CALL R10 1 1
  JUMPIFNOT R10 [+14]
  GETUPVAL R11 1
  MOVE R13 R10
  NAMECALL R11 R11 K11 ["GetPlayerByUserId"]
  CALL R11 2 1
  JUMPIFNOT R11 [+8]
  GETUPVAL R12 2
  MOVE R14 R11
  MOVE R15 R0
  MOVE R16 R1
  MOVE R17 R2
  NAMECALL R12 R12 K12 ["FireClient"]
  CALL R12 5 0
  FORGLOOP R5 2 [-36]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 0
  GETTABLE R10 R11 R3
  LOADNIL R11
  SETTABLE R11 R10 R9
  FORGLOOP R5 2 [-5]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RobloxReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  LOADK R6 K7 [∞]
  NAMECALL R3 R2 K8 ["WaitForChild"]
  CALL R3 3 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K9 [+4]
  LOADK R6 K9 ["RobloxGui should exist"]
  GETIMPORT R4 K11 [assert]
  CALL R4 2 0
  GETIMPORT R4 K13 [require]
  GETTABLEKS R8 R3 K14 ["Modules"]
  GETTABLEKS R7 R8 K15 ["Common"]
  GETTABLEKS R6 R7 K16 ["Flags"]
  GETTABLEKS R5 R6 K17 ["GetFFlagPlayerViewRemoteEnabled"]
  CALL R4 1 1
  GETIMPORT R5 K13 [require]
  GETTABLEKS R9 R3 K14 ["Modules"]
  GETTABLEKS R8 R9 K15 ["Common"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  GETTABLEKS R6 R7 K18 ["GetFFlagPlayerViewValidateRequesteeEnabled"]
  CALL R5 1 1
  GETIMPORT R6 K21 [Instance.new]
  LOADK R7 K22 ["RemoteEvent"]
  CALL R6 1 1
  LOADK R7 K23 ["RequestDeviceCameraOrientationCapability"]
  SETTABLEKS R7 R6 K24 ["Name"]
  SETTABLEKS R0 R6 K25 ["Parent"]
  GETTABLEKS R7 R6 K26 ["OnServerEvent"]
  DUPCLOSURE R9 K27 [PROTO_0]
  CAPTURE VAL R6
  NAMECALL R7 R7 K28 ["Connect"]
  CALL R7 2 0
  MOVE R7 R4
  CALL R7 0 1
  JUMPIFNOT R7 [+49]
  GETIMPORT R7 K21 [Instance.new]
  LOADK R8 K22 ["RemoteEvent"]
  CALL R7 1 1
  LOADK R8 K29 ["RequestDeviceCameraCFrame"]
  SETTABLEKS R8 R7 K24 ["Name"]
  SETTABLEKS R0 R7 K25 ["Parent"]
  GETIMPORT R8 K21 [Instance.new]
  LOADK R9 K30 ["UnreliableRemoteEvent"]
  CALL R8 1 1
  LOADK R9 K31 ["ReplicateDeviceCameraCFrame"]
  SETTABLEKS R9 R8 K24 ["Name"]
  SETTABLEKS R0 R8 K25 ["Parent"]
  NEWTABLE R9 0 0
  MOVE R10 R5
  CALL R10 0 1
  JUMPIFNOT R10 [+7]
  GETTABLEKS R10 R1 K32 ["PlayerRemoving"]
  DUPCLOSURE R12 K33 [PROTO_1]
  CAPTURE VAL R9
  NAMECALL R10 R10 K28 ["Connect"]
  CALL R10 2 0
  GETTABLEKS R10 R7 K26 ["OnServerEvent"]
  DUPCLOSURE R12 K34 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R7
  NAMECALL R10 R10 K28 ["Connect"]
  CALL R10 2 0
  GETTABLEKS R10 R8 K26 ["OnServerEvent"]
  DUPCLOSURE R12 K35 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R8
  NAMECALL R10 R10 K28 ["Connect"]
  CALL R10 2 0
  RETURN R0 0
