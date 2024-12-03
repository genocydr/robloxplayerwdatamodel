PROTO_0:
  DUPTABLE R0 K1 [{"_tasks"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_tasks"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIF R2 [+3]
  GETTABLEKS R3 R0 K0 ["_tasks"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  FASTCALL2 RAWGET R0 R1 [+5]
  MOVE R4 R0
  MOVE R5 R1
  GETIMPORT R3 K1 [rawget]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  GETIMPORT R3 K3 [error]
  GETIMPORT R4 K6 [string.format]
  LOADK R5 K7 ["Cannot use %q as a Maid key"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K9 [tostring]
  CALL R6 1 1
  CALL R4 2 -1
  CALL R3 -1 0
  GETTABLEKS R3 R0 K10 ["_tasks"]
  GETTABLE R4 R3 R1
  JUMPIFNOTEQ R4 R2 [+2]
  RETURN R0 0
  SETTABLE R2 R3 R1
  JUMPIFNOT R4 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["cleanupTask"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_tasks"]
  LENGTH R4 R2
  ADDK R3 R4 K1 [1]
  SETTABLE R1 R2 R3
  RETURN R0 0

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["function"] [+4]
  MOVE R2 R0
  CALL R2 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K3 ["RBXScriptConnection"] [+5]
  NAMECALL R2 R0 K4 ["Disconnect"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K5 ["Destroy"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K5 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K6 ["destroy"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K6 ["destroy"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K8 [error]
  LOADK R3 K9 ["Unable to cleanup unknown task"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_tasks"]
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K4 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K5 ["RBXScriptConnection"] [+6]
  LOADNIL R7
  SETTABLE R7 R1 R5
  NAMECALL R7 R6 K6 ["Disconnect"]
  CALL R7 1 0
  FORGLOOP R2 2 [-13]
  GETIMPORT R2 K8 [next]
  MOVE R3 R1
  CALL R2 1 2
  JUMPIFEQKNIL R3 [+15]
  LOADNIL R4
  SETTABLE R4 R1 R2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["cleanupTask"]
  MOVE R5 R3
  CALL R4 1 0
  GETIMPORT R4 K8 [next]
  MOVE R5 R1
  CALL R4 1 2
  MOVE R2 R4
  MOVE R3 R5
  JUMPBACK [-16]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["new"]
  DUPCLOSURE R1 K2 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["__index"]
  DUPCLOSURE R1 K4 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["__newindex"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K7 ["give"]
  DUPCLOSURE R1 K8 [PROTO_4]
  SETTABLEKS R1 R0 K9 ["cleanupTask"]
  DUPCLOSURE R1 K10 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["clean"]
  GETTABLEKS R1 R0 K11 ["clean"]
  SETTABLEKS R1 R0 K12 ["destroy"]
  RETURN R0 1