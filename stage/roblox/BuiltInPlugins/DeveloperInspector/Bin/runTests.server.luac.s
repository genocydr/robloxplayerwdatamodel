PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADN R2 0
  NAMECALL R0 R0 K4 ["ExitAsync"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["commonInit"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R2 K10 ["RunTests"]
  CALL R3 0 1
  JUMPIFNOT R3 [+88]
  GETIMPORT R3 K12 [_G]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["__DEV__"]
  GETIMPORT R3 K12 [_G]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R3 K12 [_G]
  LOADB R4 1
  SETTABLEKS R4 R3 K15 ["__ROACT_17_INLINE_ACT__"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K16 ["Packages"]
  GETTABLEKS R5 R6 K17 ["Dev"]
  GETTABLEKS R4 R5 K18 ["TestEZ"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K19 ["TestBootstrap"]
  GETTABLEKS R6 R3 K20 ["Reporters"]
  GETTABLEKS R5 R6 K21 ["TeamCityReporter"]
  GETTABLEKS R7 R3 K20 ["Reporters"]
  GETTABLEKS R6 R7 K22 ["TextReporter"]
  GETTABLEKS R7 R2 K23 ["LogTestsQuiet"]
  CALL R7 0 1
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R3 K20 ["Reporters"]
  GETTABLEKS R6 R7 K24 ["TextReporterQuiet"]
  GETIMPORT R9 K12 [_G]
  GETTABLEKS R8 R9 K25 ["TEAMCITY"]
  JUMPIFNOT R8 [+2]
  MOVE R7 R5
  JUMPIF R7 [+1]
  MOVE R7 R6
  MOVE R6 R7
  GETIMPORT R7 K27 [print]
  LOADK R9 K28 ["----- All "]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R10 R12 K29 ["Name"]
  LOADK R11 K30 [" Tests ------"]
  CONCAT R8 R9 R11
  CALL R7 1 0
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K31 ["defineLuaFlags"]
  CALL R7 1 0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K5 ["Src"]
  SETLIST R9 R10 1 [1]
  MOVE R10 R6
  NAMECALL R7 R4 K32 ["run"]
  CALL R7 3 0
  GETIMPORT R7 K27 [print]
  LOADK R8 K33 ["----------------------------------"]
  CALL R7 1 0
  GETTABLEKS R3 R2 K9 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K35 [pcall]
  DUPCLOSURE R4 K36 [PROTO_0]
  CALL R3 1 0
  RETURN R0 0
