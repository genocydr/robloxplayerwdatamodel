PROTO_0:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Value"]
  JUMPIFNOTEQKS R2 K1 ["Ragdoll"] [+40]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["disableMotors"]
  MOVE R3 R0
  GETTABLEKS R4 R1 K3 ["RigType"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["disableMotors"]
  MOVE R3 R0
  GETTABLEKS R4 R1 K3 ["RigType"]
  CALL R2 2 1
  LOADK R5 K4 ["Animator"]
  NAMECALL R3 R1 K5 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  MOVE R6 R2
  NAMECALL R4 R3 K6 ["ApplyJointVelocities"]
  CALL R4 2 0
  GETUPVAL R4 3
  MOVE R6 R1
  NAMECALL R4 R4 K7 ["FireServer"]
  CALL R4 2 0
  GETIMPORT R4 K9 [wait]
  LOADK R5 K10 [0.1]
  CALL R4 1 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["easeJointFriction_OLD"]
  MOVE R5 R0
  LOADK R6 K12 [0.85]
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["disableParticleEmittersAndFadeOut"]
  GETUPVAL R1 1
  LOADK R2 K1 [0.4]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["Value"]
  JUMPIFNOTEQKS R0 K2 ["Ragdoll"] [+8]
  GETIMPORT R0 K4 [delay]
  LOADN R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R0 2 0
  GETUPVAL R0 5
  GETUPVAL R1 6
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R0 7
  GETUPVAL R1 4
  GETUPVAL R2 8
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADNIL R3
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE REF R3
  CAPTURE REF R4
  GETTABLEKS R6 R2 K0 ["Died"]
  NEWCLOSURE R8 P1
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  NAMECALL R6 R6 K1 ["Connect"]
  CALL R6 2 1
  MOVE R4 R6
  GETTABLEKS R6 R0 K2 ["CharacterRemoving"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R1
  CAPTURE REF R3
  CAPTURE REF R4
  NAMECALL R6 R6 K1 ["Connect"]
  CALL R6 2 1
  MOVE R3 R6
  CLOSEUPVALS R3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RobloxReplicatedStorage"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["StarterPlayer"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R1 K8 ["FindFirstChild"]
  CALL R4 2 1
  LOADK R7 K9 ["Modules"]
  NAMECALL R5 R4 K8 ["FindFirstChild"]
  CALL R5 2 1
  LOADK R8 K10 ["Common"]
  NAMECALL R6 R5 K8 ["FindFirstChild"]
  CALL R6 2 1
  GETIMPORT R7 K12 [require]
  LOADK R10 K13 ["RagdollRigging"]
  NAMECALL R8 R6 K8 ["FindFirstChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETIMPORT R8 K12 [require]
  LOADK R11 K14 ["HumanoidReadyUtil"]
  NAMECALL R9 R6 K8 ["FindFirstChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K15 ["AvatarJointUpgradeFeature"]
  NAMECALL R9 R9 K16 ["GetEngineFeature"]
  CALL R9 2 1
  GETTABLEKS R10 R0 K17 ["LocalPlayer"]
  JUMPIF R10 [+9]
  LOADK R13 K17 ["LocalPlayer"]
  NAMECALL R11 R0 K18 ["GetPropertyChangedSignal"]
  CALL R11 2 1
  NAMECALL R11 R11 K19 ["Wait"]
  CALL R11 1 0
  GETTABLEKS R10 R0 K17 ["LocalPlayer"]
  LOADK R13 K20 ["DeathType"]
  LOADK R14 K21 [∞]
  NAMECALL R11 R2 K22 ["WaitForChild"]
  CALL R11 3 1
  JUMPIFNOT R11 [+5]
  JUMPIF R9 [+6]
  GETTABLEKS R12 R11 K23 ["Value"]
  JUMPIFEQKS R12 K24 ["Ragdoll"] [+3]
  CLOSEUPVALS R10
  RETURN R0 0
  LOADNIL R12
  JUMPIF R9 [+14]
  LOADK R15 K25 ["OnRagdoll"]
  LOADK R16 K21 [∞]
  NAMECALL R13 R2 K22 ["WaitForChild"]
  CALL R13 3 1
  MOVE R12 R13
  JUMPIFNOT R12 [+5]
  LOADK R15 K26 ["RemoteEvent"]
  NAMECALL R13 R12 K27 ["IsA"]
  CALL R13 2 1
  JUMPIF R13 [+2]
  CLOSEUPVALS R10
  RETURN R0 0
  NEWCLOSURE R13 P0
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE REF R12
  GETTABLEKS R14 R8 K28 ["registerHumanoidReady"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE REF R10
  CAPTURE VAL R13
  CALL R14 1 0
  CLOSEUPVALS R10
  RETURN R0 0
