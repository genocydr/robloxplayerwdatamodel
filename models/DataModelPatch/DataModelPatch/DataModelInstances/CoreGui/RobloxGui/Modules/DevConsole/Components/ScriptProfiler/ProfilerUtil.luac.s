PROTO_0:
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+17]
  GETTABLEKS R3 R0 K0 ["Nodes"]
  GETTABLE R2 R3 R1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K2 [assert]
  CALL R3 1 0
  GETTABLEKS R3 R2 K3 ["TotalDuration"]
  GETTABLEKS R4 R2 K4 ["Duration"]
  RETURN R3 2
  LOADN R2 0
  GETTABLEKS R3 R0 K5 ["Categories"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R10 R0 K0 ["Nodes"]
  GETTABLEKS R11 R7 K6 ["NodeId"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K3 ["TotalDuration"]
  ADD R2 R2 R8
  FORGLOOP R3 2 [-9]
  MOVE R3 R2
  LOADN R4 0
  RETURN R3 2

PROTO_1:
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K0 ["Name"]
  RETURN R2 1

PROTO_2:
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K0 ["Source"]
  RETURN R2 1

PROTO_3:
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K0 ["Line"]
  RETURN R2 1

PROTO_4:
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K0 ["IsNative"]
  JUMPIF R2 [+1]
  LOADB R2 0
  RETURN R2 1

PROTO_5:
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K0 ["IsPlugin"]
  JUMPIF R2 [+1]
  LOADB R2 0
  RETURN R2 1

PROTO_6:
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K0 ["Children"]
  RETURN R2 1

PROTO_7:
  JUMPIFNOT R0 [+15]
  DIVK R1 R0 K0 [3600000]
  DIVK R3 R0 K2 [60000]
  MODK R2 R3 K1 [60]
  DIVK R4 R0 K3 [1000]
  MODK R3 R4 K1 [60]
  MODK R4 R0 K3 [1000]
  GETIMPORT R5 K6 [string.format]
  LOADK R6 K7 ["%02i:%02i:%02i.%04i"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R5 5 -1
  RETURN R5 -1
  LOADNIL R1
  RETURN R1 1

PROTO_8:
  JUMPIFEQKNIL R0 [+20]
  JUMPIFNOTEQKN R0 K0 [0] [+3]
  LOADK R1 K1 [""]
  RETURN R1 1
  LOADN R1 60
  JUMPIFNOTLE R1 R0 [+7]
  GETIMPORT R1 K4 [string.format]
  LOADK R2 K5 ["%dm"]
  DIVK R3 R0 K6 [60]
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K4 [string.format]
  LOADK R2 K7 ["%ds"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1
  LOADK R1 K1 [""]
  RETURN R1 1

PROTO_9:
  LOADN R1 232
  JUMPIFNOTLT R0 R1 [+10]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [tostring]
  CALL R4 1 1
  MOVE R2 R4
  LOADK R3 K2 [" Hz"]
  CONCAT R1 R2 R3
  RETURN R1 1
  DIVK R5 R0 K3 [1000]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K1 [tostring]
  CALL R4 1 1
  MOVE R2 R4
  LOADK R3 K4 [" KHz"]
  CONCAT R1 R2 R3
  RETURN R1 1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getSourceName"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  LENGTH R5 R3
  JUMPIFNOTEQKN R5 K1 [0] [+3]
  MOVE R4 R2
  JUMP [+1]
  MOVE R4 R3
  MOVE R5 R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["getLine"]
  MOVE R7 R0
  MOVE R8 R1
  CALL R6 2 1
  JUMPIFNOT R6 [+14]
  LOADN R7 1
  JUMPIFNOTLE R7 R6 [+12]
  GETIMPORT R7 K5 [string.format]
  LOADK R8 K6 ["%s:%s"]
  MOVE R9 R4
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R11 R6
  GETIMPORT R10 K8 [tostring]
  CALL R10 1 1
  CALL R7 3 1
  MOVE R5 R7
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ProfilerDataFormatV2"]
  CALL R0 1 1
  NEWTABLE R1 16 0
  DUPCLOSURE R2 K6 [PROTO_0]
  SETTABLEKS R2 R1 K7 ["getDurations"]
  DUPCLOSURE R2 K8 [PROTO_1]
  SETTABLEKS R2 R1 K9 ["getName"]
  DUPCLOSURE R2 K10 [PROTO_2]
  SETTABLEKS R2 R1 K11 ["getSourceName"]
  DUPCLOSURE R2 K12 [PROTO_3]
  SETTABLEKS R2 R1 K13 ["getLine"]
  DUPCLOSURE R2 K14 [PROTO_4]
  SETTABLEKS R2 R1 K15 ["getNativeFlag"]
  DUPCLOSURE R2 K16 [PROTO_5]
  SETTABLEKS R2 R1 K17 ["getPluginFlag"]
  DUPCLOSURE R2 K18 [PROTO_6]
  SETTABLEKS R2 R1 K19 ["standardizeChildren"]
  DUPCLOSURE R2 K20 [PROTO_7]
  SETTABLEKS R2 R1 K21 ["formatSessionLength"]
  DUPCLOSURE R2 K22 [PROTO_8]
  SETTABLEKS R2 R1 K23 ["formatTimer"]
  DUPCLOSURE R2 K24 [PROTO_9]
  SETTABLEKS R2 R1 K25 ["formatFrequency"]
  DUPCLOSURE R2 K26 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K27 ["getSourceLocationString"]
  RETURN R1 1