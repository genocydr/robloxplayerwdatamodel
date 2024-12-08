PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["[VoiceDefault]"]
  GETVARARGS R2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+6]
  NEWTABLE R2 0 0
  LOADB R3 1
  SETTABLE R3 R2 R1
  RETURN R2 1
  LOADB R2 1
  SETTABLE R2 R0 R1
  RETURN R0 1

PROTO_2:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["AudioEmitter"]
  CALL R1 1 1
  SETTABLEKS R0 R1 K4 ["Parent"]
  LOADK R4 K5 ["RbxDefaultVoiceEmitter"]
  NAMECALL R2 R1 K6 ["AddTag"]
  CALL R2 2 0
  GETUPVAL R2 0
  LOADK R3 K7 ["Adding emitter"]
  MOVE R4 R1
  LOADK R5 K8 [" to "]
  MOVE R6 R0
  CALL R2 4 0
  RETURN R1 1

PROTO_3:
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["AudioEmitter"]
  CALL R3 1 1
  SETTABLEKS R0 R3 K4 ["Parent"]
  LOADK R6 K5 ["RbxDefaultVoiceEmitter"]
  NAMECALL R4 R3 K6 ["AddTag"]
  CALL R4 2 0
  GETUPVAL R4 0
  LOADK R5 K7 ["Adding emitter"]
  MOVE R6 R3
  LOADK R7 K8 [" to "]
  MOVE R8 R0
  CALL R4 4 0
  MOVE R2 R3
  GETUPVAL R3 0
  LOADK R4 K9 ["Hooking input device to emitter"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 0
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K10 ["Wire"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K4 ["Parent"]
  SETTABLEKS R1 R3 K11 ["SourceInstance"]
  SETTABLEKS R2 R3 K12 ["TargetInstance"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Player"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["Player"]
  GETTABLE R1 R2 R3
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  JUMPIF R1 [+4]
  GETUPVAL R2 2
  LOADK R3 K1 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["onPlayerChanged"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADNIL R3
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_5:
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+2]
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  JUMPIF R2 [+4]
  GETUPVAL R3 2
  LOADK R4 K0 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R2 K1 ["onPlayerChanged"]
  NAMECALL R3 R3 K2 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 1
  LOADNIL R4
  SETTABLE R4 R3 R0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+24]
  GETUPVAL R0 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 3
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+2]
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R3 4
  GETTABLE R2 R3 R0
  JUMPIF R2 [+4]
  GETUPVAL R3 5
  LOADK R4 K0 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R3 1 0
  JUMP [+34]
  GETTABLEKS R3 R2 K1 ["onPlayerChanged"]
  NAMECALL R3 R3 K2 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 4
  LOADNIL R4
  SETTABLE R4 R3 R0
  JUMP [+25]
  GETUPVAL R0 1
  GETTABLEKS R1 R0 K3 ["Player"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 3
  GETTABLEKS R3 R0 K3 ["Player"]
  GETTABLE R1 R2 R3
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 4
  GETTABLE R1 R2 R0
  JUMPIF R1 [+4]
  GETUPVAL R2 5
  LOADK R3 K0 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R2 1 0
  JUMP [+8]
  GETTABLEKS R2 R1 K1 ["onPlayerChanged"]
  NAMECALL R2 R2 K2 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 4
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["Player"]
  SETUPVAL R0 2
  GETUPVAL R0 6
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Player"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+2]
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R3 2
  GETTABLE R2 R3 R0
  JUMPIF R2 [+4]
  GETUPVAL R3 3
  LOADK R4 K1 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R2 K2 ["onPlayerChanged"]
  NAMECALL R3 R3 K3 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 2
  LOADNIL R4
  SETTABLE R4 R3 R0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["Player"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K0 ["Player"]
  GETTABLE R1 R2 R3
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 2
  GETTABLE R1 R2 R0
  JUMPIF R1 [+4]
  GETUPVAL R2 3
  LOADK R3 K1 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["onPlayerChanged"]
  NAMECALL R2 R2 K3 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["Player"]
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  JUMPIFNOTEQKNIL R4 [+7]
  NEWTABLE R5 0 0
  LOADB R6 1
  SETTABLE R6 R5 R0
  MOVE R3 R5
  JUMP [+4]
  LOADB R5 1
  SETTABLE R5 R4 R0
  MOVE R3 R4
  JUMP [0]
  SETTABLE R3 R2 R1
  NEWTABLE R2 1 0
  MOVE R3 R1
  LOADK R6 K0 ["Player"]
  NAMECALL R4 R0 K1 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE REF R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K3 ["onPlayerChanged"]
  GETUPVAL R4 2
  SETTABLE R2 R4 R0
  GETUPVAL R4 5
  JUMPIFNOT R4 [+23]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+11]
  GETTABLEKS R4 R0 K4 ["Destroying"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 0
  JUMP [+10]
  GETTABLEKS R4 R0 K4 ["Destroying"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  NAMECALL R0 R0 K1 ["IsVoiceEnabledForUserIdAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R1 0
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["AudioEmitter"]
  CALL R3 1 1
  SETTABLEKS R0 R3 K4 ["Parent"]
  LOADK R6 K5 ["RbxDefaultVoiceEmitter"]
  NAMECALL R4 R3 K6 ["AddTag"]
  CALL R4 2 0
  GETUPVAL R4 1
  LOADK R5 K7 ["Adding emitter"]
  MOVE R6 R3
  LOADK R7 K8 [" to "]
  MOVE R8 R0
  CALL R4 4 0
  MOVE R2 R3
  GETUPVAL R3 1
  LOADK R4 K9 ["Hooking input device to emitter"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 0
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K10 ["Wire"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K4 ["Parent"]
  SETTABLEKS R1 R3 K11 ["SourceInstance"]
  SETTABLEKS R2 R3 K12 ["TargetInstance"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIF R1 [+5]
  GETUPVAL R3 2
  LOADK R4 K2 ["Error getting voice enabled status: \""]
  MOVE R5 R2
  LOADK R6 K3 ["\""]
  CALL R3 3 0
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R1 K6 [Instance.new]
  LOADK R2 K7 ["AudioDeviceInput"]
  CALL R1 1 1
  SETTABLEKS R0 R1 K8 ["Player"]
  SETTABLEKS R0 R1 K9 ["Parent"]
  LOADB R2 0
  SETTABLEKS R2 R1 K10 ["Active"]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  GETTABLEKS R2 R0 K11 ["Character"]
  JUMPIFNOT R2 [+35]
  GETTABLEKS R2 R0 K11 ["Character"]
  GETIMPORT R4 K6 [Instance.new]
  LOADK R5 K12 ["AudioEmitter"]
  CALL R4 1 1
  SETTABLEKS R2 R4 K9 ["Parent"]
  LOADK R7 K13 ["RbxDefaultVoiceEmitter"]
  NAMECALL R5 R4 K14 ["AddTag"]
  CALL R5 2 0
  GETUPVAL R5 2
  LOADK R6 K15 ["Adding emitter"]
  MOVE R7 R4
  LOADK R8 K16 [" to "]
  MOVE R9 R2
  CALL R5 4 0
  MOVE R3 R4
  GETUPVAL R4 2
  LOADK R5 K17 ["Hooking input device to emitter"]
  MOVE R6 R2
  MOVE R7 R1
  MOVE R8 R3
  CALL R4 4 0
  GETIMPORT R4 K6 [Instance.new]
  LOADK R5 K18 ["Wire"]
  CALL R4 1 1
  SETTABLEKS R3 R4 K9 ["Parent"]
  SETTABLEKS R1 R4 K19 ["SourceInstance"]
  SETTABLEKS R3 R4 K20 ["TargetInstance"]
  GETUPVAL R2 4
  GETTABLEKS R3 R0 K21 ["CharacterAdded"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K22 ["Connect"]
  CALL R3 2 1
  SETTABLE R3 R2 R0
  GETUPVAL R2 2
  LOADK R3 K23 ["Creating device for "]
  GETTABLEKS R4 R0 K24 ["Name"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K0 ["Name"]
  LOADK R5 K1 ["removed. Deleting instance"]
  MOVE R6 R1
  CALL R3 3 0
  JUMPIFNOT R1 [+3]
  GETUPVAL R3 0
  LOADNIL R4
  SETTABLE R4 R3 R0
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K2 ["Disconnect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_14:
  LOADK R3 K0 ["AudioDeviceInput"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["Active"]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  LOADK R3 K0 ["AudioDeviceInput"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["Active"]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  LOADK R3 K0 ["AudioDeviceInput"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+50]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+24]
  GETTABLEKS R1 R0 K2 ["Player"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+2]
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R3 2
  GETTABLE R2 R3 R0
  JUMPIF R2 [+4]
  GETUPVAL R3 3
  LOADK R4 K3 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R2 K4 ["onPlayerChanged"]
  NAMECALL R3 R3 K5 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R3 2
  LOADNIL R4
  SETTABLE R4 R3 R0
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["Player"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K2 ["Player"]
  GETTABLE R1 R2 R3
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 2
  GETTABLE R1 R2 R0
  JUMPIF R1 [+4]
  GETUPVAL R2 3
  LOADK R3 K3 ["Attempting to remove connections from untracked AudioDeviceInput"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K4 ["onPlayerChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOT R2 [+15]
  GETUPVAL R3 1
  LOADK R4 K0 ["Setting"]
  MOVE R5 R0
  LOADK R6 K1 ["to"]
  MOVE R7 R1
  CALL R3 4 0
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  SETTABLEKS R1 R6 K2 ["Active"]
  FORGLOOP R3 2 [-3]
  RETURN R0 0
  GETUPVAL R3 1
  LOADK R4 K3 ["Attempting to set Active property for user"]
  MOVE R5 R0
  LOADK R6 K4 ["without saved AudioDeviceInput"]
  CALL R3 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  NAMECALL R0 R0 K1 ["IsVoiceEnabledForUserIdAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_19:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 2
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K2 ["UserId"]
  LOADB R5 1
  SETTABLE R5 R3 R4
  JUMPIFNOT R1 [+17]
  JUMPIFNOT R2 [+16]
  GETUPVAL R3 2
  LOADK R4 K3 ["Sending likely speaking user for "]
  GETTABLEKS R5 R0 K4 ["Name"]
  CALL R3 2 0
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K2 ["UserId"]
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETUPVAL R3 4
  GETUPVAL R5 3
  NAMECALL R3 R3 K5 ["FireAllClients"]
  CALL R3 2 0
  RETURN R0 0
  JUMPIF R1 [+7]
  GETUPVAL R3 2
  LOADK R4 K6 ["Error getting voice enabled status: "]
  MOVE R5 R2
  LOADK R6 K7 [" for "]
  GETTABLEKS R7 R0 K4 ["Name"]
  CALL R3 4 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["UserId"]
  LOADNIL R3
  SETTABLE R3 R1 R2
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["UserId"]
  LOADNIL R3
  SETTABLE R3 R1 R2
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  LOADK R2 K0 ["Got Ping Request from "]
  GETTABLEKS R3 R0 K1 ["Name"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K2 ["UserId"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K2 ["UserId"]
  LOADNIL R3
  SETTABLE R3 R1 R2
  GETUPVAL R1 2
  MOVE R3 R0
  GETUPVAL R4 3
  NAMECALL R1 R1 K3 ["FireClient"]
  CALL R1 3 0
  GETUPVAL R1 0
  LOADK R2 K4 ["Sending likely speaking users to "]
  GETTABLEKS R3 R0 K1 ["Name"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RobloxReplicatedStorage"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["VoiceChatService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["SoundService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["CorePackages"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["AvatarChatService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R4 K11 ["Workspace"]
  GETTABLEKS R9 R10 K12 ["Packages"]
  GETTABLEKS R8 R9 K13 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["GetFFlagAvatarChatServiceEnabled"]
  GETIMPORT R7 K1 [game]
  LOADK R9 K15 ["DebugLogVoiceDefault"]
  LOADB R10 0
  NAMECALL R7 R7 K16 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K17 ["SetNewDeviceToFalse"]
  LOADB R11 0
  NAMECALL R8 R8 K16 ["DefineFastFlag"]
  CALL R8 3 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K18 ["FixNewPlayerCheck"]
  LOADB R12 0
  NAMECALL R9 R9 K16 ["DefineFastFlag"]
  CALL R9 3 1
  GETIMPORT R10 K1 [game]
  LOADK R12 K19 ["OnlyMakeInputsForVoiceUsers"]
  LOADB R13 0
  NAMECALL R10 R10 K16 ["DefineFastFlag"]
  CALL R10 3 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K20 ["SendLikelySpeakingUsers"]
  LOADB R14 0
  NAMECALL R11 R11 K16 ["DefineFastFlag"]
  CALL R11 3 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K21 ["ReceiveLikelySpeakingUsersEventV3"]
  LOADB R15 0
  NAMECALL R12 R12 K16 ["DefineFastFlag"]
  CALL R12 3 1
  GETIMPORT R13 K1 [game]
  LOADK R15 K22 ["VoiceDefaultUseAudioInstanceAdded"]
  LOADB R16 0
  NAMECALL R13 R13 K16 ["DefineFastFlag"]
  CALL R13 3 1
  JUMPIFNOT R13 [+6]
  GETIMPORT R13 K1 [game]
  LOADK R15 K23 ["AudioInstanceAddedApiEnabled"]
  NAMECALL R13 R13 K24 ["GetEngineFeature"]
  CALL R13 2 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K25 ["VoiceDefaultUseGetAudioInstances"]
  LOADB R17 0
  NAMECALL R14 R14 K16 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R15 K1 [game]
  LOADK R17 K26 ["VoiceDefaultUseAudioDeviceRemoving"]
  LOADB R18 0
  NAMECALL R15 R15 K16 ["DefineFastFlag"]
  CALL R15 3 1
  GETIMPORT R16 K1 [game]
  LOADK R18 K27 ["StopVoiceDefaultIfNotVoiceEnabled"]
  LOADB R19 0
  NAMECALL R16 R16 K16 ["DefineFastFlag"]
  CALL R16 3 1
  DUPCLOSURE R17 K28 [PROTO_0]
  CAPTURE VAL R7
  MOVE R18 R6
  CALL R18 0 1
  JUMPIFNOT R18 [+30]
  JUMPIFNOT R16 [+29]
  GETIMPORT R18 K30 [pcall]
  GETTABLEKS R19 R5 K31 ["GetServerFeaturesAsync"]
  MOVE R20 R5
  CALL R18 2 2
  JUMPIF R18 [+4]
  MOVE R20 R17
  LOADK R21 K32 ["Failed to get GetServerFeaturesAsync, returning early"]
  CALL R20 1 0
  RETURN R0 0
  MOVE R22 R19
  GETIMPORT R23 K36 [Enum.AvatarChatServiceFeature.UniverseAudio]
  NAMECALL R20 R5 K37 ["IsEnabled"]
  CALL R20 3 1
  MOVE R23 R19
  GETIMPORT R24 K39 [Enum.AvatarChatServiceFeature.PlaceAudio]
  NAMECALL R21 R5 K37 ["IsEnabled"]
  CALL R21 3 1
  JUMPIFNOT R20 [+1]
  JUMPIF R21 [+4]
  MOVE R22 R17
  LOADK R23 K40 ["Universe or place not voice enabled, returning early"]
  CALL R22 1 0
  RETURN R0 0
  NEWTABLE R18 0 0
  NEWTABLE R19 0 0
  NEWTABLE R20 0 0
  DUPCLOSURE R21 K41 [PROTO_1]
  DUPCLOSURE R22 K42 [PROTO_2]
  CAPTURE VAL R17
  DUPCLOSURE R23 K43 [PROTO_3]
  CAPTURE VAL R17
  DUPCLOSURE R24 K44 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  DUPCLOSURE R25 K45 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  DUPCLOSURE R26 K46 [PROTO_9]
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R15
  DUPCLOSURE R27 K47 [PROTO_12]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R20
  GETTABLEKS R28 R2 K48 ["UseNewAudioApi"]
  JUMPIFNOT R28 [+128]
  MOVE R28 R17
  LOADK R29 K49 ["Using new Audio API, EnableDefaultVoice: "]
  GETTABLEKS R30 R2 K50 ["EnableDefaultVoice"]
  CALL R28 2 0
  GETTABLEKS R28 R2 K50 ["EnableDefaultVoice"]
  JUMPIFNOT R28 [+30]
  GETIMPORT R28 K1 [game]
  LOADK R30 K2 ["Players"]
  NAMECALL R28 R28 K3 ["GetService"]
  CALL R28 2 1
  GETTABLEKS R29 R28 K51 ["PlayerAdded"]
  MOVE R31 R27
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R28 K53 ["PlayerRemoving"]
  DUPCLOSURE R31 K54 [PROTO_13]
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R17
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  NAMECALL R29 R28 K55 ["GetPlayers"]
  CALL R29 1 3
  FORGPREP R29
  MOVE R34 R27
  MOVE R35 R33
  CALL R34 1 0
  FORGLOOP R29 2 [-4]
  GETIMPORT R28 K58 [Instance.new]
  LOADK R29 K59 ["RemoteEvent"]
  CALL R28 1 1
  LOADK R29 K60 ["SetUserActive"]
  SETTABLEKS R29 R28 K61 ["Name"]
  SETTABLEKS R1 R28 K62 ["Parent"]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R29 R3 K63 ["AudioInstanceAdded"]
  DUPCLOSURE R31 K64 [PROTO_14]
  CAPTURE VAL R8
  CAPTURE VAL R26
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  JUMP [+10]
  GETIMPORT R30 K1 [game]
  GETTABLEKS R29 R30 K65 ["DescendantAdded"]
  DUPCLOSURE R31 K66 [PROTO_15]
  CAPTURE VAL R8
  CAPTURE VAL R26
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  JUMPIFNOT R14 [+19]
  NAMECALL R29 R3 K67 ["GetAudioInstances"]
  CALL R29 1 3
  FORGPREP R29
  LOADK R36 K68 ["AudioDeviceInput"]
  NAMECALL R34 R33 K69 ["IsA"]
  CALL R34 2 1
  JUMPIFNOT R34 [+7]
  JUMPIFNOT R8 [+3]
  LOADB R34 0
  SETTABLEKS R34 R33 K70 ["Active"]
  MOVE R34 R26
  MOVE R35 R33
  CALL R34 1 0
  FORGLOOP R29 2 [-13]
  JUMP [+20]
  GETIMPORT R29 K1 [game]
  NAMECALL R29 R29 K71 ["GetDescendants"]
  CALL R29 1 3
  FORGPREP R29
  LOADK R36 K68 ["AudioDeviceInput"]
  NAMECALL R34 R33 K69 ["IsA"]
  CALL R34 2 1
  JUMPIFNOT R34 [+7]
  JUMPIFNOT R8 [+3]
  LOADB R34 0
  SETTABLEKS R34 R33 K70 ["Active"]
  MOVE R34 R26
  MOVE R35 R33
  CALL R34 1 0
  FORGLOOP R29 2 [-13]
  JUMPIF R15 [+12]
  GETIMPORT R30 K1 [game]
  GETTABLEKS R29 R30 K72 ["DescendantRemoving"]
  DUPCLOSURE R31 K73 [PROTO_16]
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  GETTABLEKS R29 R28 K74 ["OnServerEvent"]
  DUPCLOSURE R31 K75 [PROTO_17]
  CAPTURE VAL R18
  CAPTURE VAL R17
  NAMECALL R29 R29 K52 ["Connect"]
  CALL R29 2 0
  JUMPIFNOT R11 [+58]
  GETIMPORT R28 K58 [Instance.new]
  LOADK R29 K76 ["UnreliableRemoteEvent"]
  CALL R28 1 1
  LOADK R29 K20 ["SendLikelySpeakingUsers"]
  SETTABLEKS R29 R28 K61 ["Name"]
  SETTABLEKS R1 R28 K62 ["Parent"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 0
  MOVE R31 R17
  LOADK R32 K77 ["Setting up likely speaking users"]
  CALL R31 1 0
  GETTABLEKS R31 R0 K51 ["PlayerAdded"]
  DUPCLOSURE R33 K78 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R30
  CAPTURE VAL R17
  CAPTURE VAL R29
  CAPTURE VAL R28
  NAMECALL R31 R31 K52 ["Connect"]
  CALL R31 2 0
  GETTABLEKS R31 R0 K53 ["PlayerRemoving"]
  DUPCLOSURE R33 K79 [PROTO_20]
  CAPTURE VAL R29
  CAPTURE VAL R30
  NAMECALL R31 R31 K52 ["Connect"]
  CALL R31 2 0
  JUMPIFNOT R12 [+22]
  MOVE R31 R17
  LOADK R32 K80 ["Setting Up ReceiveLikelySpeakingUsers"]
  CALL R31 1 0
  GETIMPORT R31 K58 [Instance.new]
  LOADK R32 K59 ["RemoteEvent"]
  CALL R31 1 1
  LOADK R32 K81 ["ReceiveLikelySpeakingUsers"]
  SETTABLEKS R32 R31 K61 ["Name"]
  SETTABLEKS R1 R31 K62 ["Parent"]
  GETTABLEKS R32 R31 K74 ["OnServerEvent"]
  DUPCLOSURE R34 K82 [PROTO_21]
  CAPTURE VAL R17
  CAPTURE VAL R30
  CAPTURE VAL R28
  CAPTURE VAL R29
  NAMECALL R32 R32 K52 ["Connect"]
  CALL R32 2 0
  RETURN R0 0