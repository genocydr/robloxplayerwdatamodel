PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["__new"]
  CALL R0 0 1
  SETUPVAL R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["StartListening"]
  CALL R0 1 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  NEWTABLE R0 1 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["_statsAggregators"]
  GETIMPORT R1 K4 [ipairs]
  GETUPVAL R4 1
  GETTABLEKS R2 R4 K5 ["AllStatTypes"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["new"]
  MOVE R7 R5
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["NumSamplesToKeep"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["SecondsBetweenUpdate"]
  CALL R6 3 1
  GETTABLEKS R7 R0 K2 ["_statsAggregators"]
  SETTABLE R6 R7 R5
  FORGLOOP R1 2 [inext] [-15]
  RETURN R0 1

PROTO_2:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["_statsAggregators"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["StartListening"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["_statsAggregators"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["StopListening"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_statsAggregators"]
  GETTABLE R2 R3 R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["RobloxGui"]
  GETTABLEKS R4 R5 K7 ["Modules"]
  GETTABLEKS R3 R4 K8 ["Stats"]
  GETTABLEKS R2 R3 K9 ["StatsUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["RobloxGui"]
  GETTABLEKS R5 R6 K7 ["Modules"]
  GETTABLEKS R4 R5 K8 ["Stats"]
  GETTABLEKS R3 R4 K10 ["StatsAggregator"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K11 ["__index"]
  LOADN R4 1
  SETTABLEKS R4 R3 K12 ["SecondsBetweenUpdate"]
  LOADN R4 20
  SETTABLEKS R4 R3 K13 ["NumSamplesToKeep"]
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE REF R4
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K14 ["getSingleton"]
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K16 ["__new"]
  DUPCLOSURE R5 K17 [PROTO_2]
  SETTABLEKS R5 R3 K18 ["StartListening"]
  DUPCLOSURE R5 K19 [PROTO_3]
  SETTABLEKS R5 R3 K20 ["StopListening"]
  DUPCLOSURE R5 K21 [PROTO_4]
  SETTABLEKS R5 R3 K22 ["GetAggregator"]
  CLOSEUPVALS R4
  RETURN R3 1