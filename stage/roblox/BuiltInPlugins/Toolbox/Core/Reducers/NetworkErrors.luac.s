PROTO_0:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["Toolbox network error on %s %s:  (code %s)  %s"]
  GETTABLEKS R5 R0 K4 ["requestType"]
  ORK R4 R5 K3 [""]
  GETTABLEKS R6 R0 K5 ["url"]
  ORK R5 R6 K3 [""]
  GETTABLEKS R8 R0 K6 ["responseCode"]
  ORK R7 R8 K3 [""]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  GETTABLEKS R8 R0 K9 ["responseBody"]
  ORK R7 R8 K3 [""]
  NAMECALL R2 R2 K10 ["format"]
  CALL R2 5 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  GETTABLEKS R2 R1 K1 ["response"]
  GETIMPORT R3 K3 [warn]
  LOADK R4 K4 ["Toolbox network error on %s %s:  (code %s)  %s"]
  GETTABLEKS R7 R2 K6 ["requestType"]
  ORK R6 R7 K5 [""]
  GETTABLEKS R8 R2 K7 ["url"]
  ORK R7 R8 K5 [""]
  GETTABLEKS R10 R2 K8 ["responseCode"]
  ORK R9 R10 K5 [""]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  GETTABLEKS R10 R2 K11 ["responseBody"]
  ORK R9 R10 K5 [""]
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 5 -1
  CALL R3 -1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K13 ["List"]
  GETTABLEKS R2 R3 K14 ["join"]
  MOVE R3 R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R1 K1 ["response"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["DebugFlags"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K12 ["NetworkError"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  GETTABLEKS R7 R3 K14 ["createReducer"]
  NEWTABLE R8 0 0
  NEWTABLE R9 1 0
  GETTABLEKS R10 R5 K15 ["name"]
  DUPCLOSURE R11 K16 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1