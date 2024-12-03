PROTO_0:
  GETTABLEN R3 R0 1
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R11 R8
  NAMECALL R9 R1 K0 ["getRevertedScriptSource"]
  CALL R9 2 1
  MOVE R12 R8
  NAMECALL R10 R1 K1 ["getScriptInstanceFromGUID"]
  CALL R10 2 1
  GETUPVAL R11 0
  MOVE R13 R9
  NAMECALL R11 R11 K2 ["SplitIntoChunks"]
  CALL R11 2 1
  LENGTH R12 R11
  JUMPIFEQKN R12 K3 [0] [+28]
  GETUPVAL R12 0
  MOVE R14 R10
  GETTABLEN R15 R11 1
  NAMECALL R12 R12 K4 ["ReplaceWithChunk"]
  CALL R12 3 0
  LOADN R14 2
  LENGTH R12 R11
  LOADN R13 1
  FORNPREP R12
  GETUPVAL R15 0
  MOVE R17 R10
  GETTABLE R18 R11 R14
  NAMECALL R15 R15 K5 ["AppendChunk"]
  CALL R15 3 0
  FORNLOOP R12
  JUMPIFNOT R2 [+3]
  MOVE R12 R2
  MOVE R13 R8
  CALL R12 1 0
  JUMPIFEQ R8 R3 [+5]
  MOVE R14 R8
  NAMECALL R12 R1 K6 ["closeScriptIfOpen"]
  CALL R12 2 0
  FORGLOOP R4 2 [-44]
  JUMPIFNOT R3 [+4]
  MOVE R6 R3
  NAMECALL R4 R1 K6 ["closeScriptIfOpen"]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["ScriptHistory"]
  GETTABLEKS R2 R3 K9 ["ChunkUtil"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1