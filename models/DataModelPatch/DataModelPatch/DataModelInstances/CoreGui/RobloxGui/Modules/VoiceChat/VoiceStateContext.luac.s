PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["voiceState"]
  JUMPIFEQ R1 R2 [+18]
  GETIMPORT R5 K2 [Enum]
  GETTABLEKS R4 R5 K3 ["VoiceChatState"]
  GETTABLEKS R3 R4 K4 ["Ended"]
  JUMPIFNOTEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"voiceEnabled", "voiceState"}]
  SETTABLEKS R2 R4 K5 ["voiceEnabled"]
  SETTABLEKS R1 R4 K0 ["voiceState"]
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+40]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["SetupParticipantListeners"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["getService"]
  CALL R0 1 1
  JUMPIFNOT R0 [+31]
  GETTABLEKS R1 R0 K2 ["VoiceChatState"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["voiceState"]
  JUMPIFEQ R1 R2 [+18]
  GETIMPORT R5 K5 [Enum]
  GETTABLEKS R4 R5 K2 ["VoiceChatState"]
  GETTABLEKS R3 R4 K6 ["Ended"]
  JUMPIFNOTEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 3
  DUPTABLE R4 K8 [{"voiceEnabled", "voiceState"}]
  SETTABLEKS R2 R4 K7 ["voiceEnabled"]
  SETTABLEKS R1 R4 K3 ["voiceState"]
  CALL R3 1 0
  GETTABLEKS R1 R0 K9 ["StateChanged"]
  GETUPVAL R3 5
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  SETUPVAL R1 4
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["voiceState"]
  JUMPIFEQ R0 R1 [+18]
  GETIMPORT R4 K2 [Enum]
  GETTABLEKS R3 R4 K3 ["VoiceChatState"]
  GETTABLEKS R2 R3 K4 ["Ended"]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 2
  DUPTABLE R3 K6 [{"voiceEnabled", "voiceState"}]
  SETTABLEKS R1 R3 K5 ["voiceEnabled"]
  SETTABLEKS R0 R3 K0 ["voiceState"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_4:
  LOADB R0 1
  LOADNIL R1
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["VoiceChatSupported"]
  NAMECALL R2 R2 K3 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIFNOT R2 [+21]
  GETUPVAL R2 0
  NAMECALL R2 R2 K4 ["asyncInit"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R1
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K5 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K6 ["catch"]
  CALL R2 2 0
  NEWCLOSURE R2 P2
  CAPTURE REF R0
  CAPTURE REF R1
  CLOSEUPVALS R0
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETUPVAL R2 1
  CALL R1 1 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useEffect"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  NEWTABLE R6 0 0
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["Provider"]
  DUPTABLE R6 K5 [{"value"}]
  SETTABLEKS R1 R6 K4 ["value"]
  GETTABLEKS R7 R0 K6 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Consumer"]
  DUPTABLE R3 K3 [{"render"}]
  SETTABLEKS R0 R3 K2 ["render"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["VoiceChatSupported"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K5 [Enum]
  GETTABLEKS R1 R2 K6 ["VoiceChatState"]
  GETTABLEKS R0 R1 K7 ["Ended"]
  JUMPIF R0 [+1]
  LOADNIL R0
  DUPTABLE R1 K10 [{"voiceEnabled", "voiceState"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["voiceEnabled"]
  SETTABLEKS R0 R1 K9 ["voiceState"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K11 ["CorePackages"]
  NAMECALL R2 R2 K12 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K13 ["CoreGui"]
  NAMECALL R3 R3 K12 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K15 [require]
  GETTABLEKS R6 R2 K16 ["Packages"]
  GETTABLEKS R5 R6 K17 ["React"]
  CALL R4 1 1
  LOADK R7 K18 ["RobloxGui"]
  NAMECALL R5 R3 K19 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R7 K15 [require]
  GETTABLEKS R10 R5 K20 ["Modules"]
  GETTABLEKS R9 R10 K21 ["VoiceChat"]
  GETTABLEKS R8 R9 K22 ["VoiceChatServiceManager"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K23 ["default"]
  GETTABLEKS R7 R4 K24 ["createContext"]
  MOVE R8 R1
  CALL R7 1 1
  DUPCLOSURE R8 K25 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R7
  DUPTABLE R9 K30 [{"Provider", "Consumer", "Context", "withVoiceState"}]
  SETTABLEKS R8 R9 K26 ["Provider"]
  GETTABLEKS R10 R7 K27 ["Consumer"]
  SETTABLEKS R10 R9 K27 ["Consumer"]
  SETTABLEKS R7 R9 K28 ["Context"]
  DUPCLOSURE R10 K31 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K29 ["withVoiceState"]
  RETURN R9 1