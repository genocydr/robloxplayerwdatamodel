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
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["commonInit"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R2 K10 ["RunTests"]
  CALL R3 0 1
  JUMPIFNOT R3 [+71]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Dev"]
  GETTABLEKS R4 R5 K13 ["TestEZ"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["TestBootstrap"]
  GETTABLEKS R6 R3 K15 ["Reporters"]
  GETTABLEKS R5 R6 K16 ["TeamCityReporter"]
  GETTABLEKS R7 R3 K15 ["Reporters"]
  GETTABLEKS R6 R7 K17 ["TextReporter"]
  GETIMPORT R9 K20 [_G]
  GETTABLEKS R8 R9 K18 ["TEAMCITY"]
  JUMPIFNOT R8 [+2]
  MOVE R7 R5
  JUMPIF R7 [+1]
  MOVE R7 R6
  GETTABLEKS R8 R0 K6 ["Src"]
  DUPTABLE R9 K24 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K21 ["showTimingInfo"]
  LOADNIL R10
  SETTABLEKS R10 R9 K22 ["testNamePattern"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K23 ["extraEnvironment"]
  GETIMPORT R10 K26 [print]
  LOADK R12 K27 ["----- All "]
  GETTABLEKS R13 R0 K28 ["Name"]
  LOADK R14 K29 [" Tests ------"]
  CONCAT R11 R12 R14
  CALL R10 1 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K30 ["defineLuaFlags"]
  CALL R10 1 0
  NEWTABLE R12 0 1
  MOVE R13 R8
  SETLIST R12 R13 1 [1]
  MOVE R13 R7
  MOVE R14 R9
  NAMECALL R10 R4 K31 ["run"]
  CALL R10 4 0
  GETIMPORT R10 K26 [print]
  LOADK R11 K32 ["----------------------------------"]
  CALL R10 1 0
  GETTABLEKS R3 R2 K9 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K34 [pcall]
  DUPCLOSURE R4 K35 [PROTO_0]
  CALL R3 1 0
  RETURN R0 0