PROTO_0:
  DUPTABLE R1 K1 [{"_tasks"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["_tasks"]
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K3 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_1:
  LOADB R1 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+7]
  GETTABLEKS R2 R0 K3 ["ClassName"]
  JUMPIFEQKS R2 K4 ["Maid"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["_tasks"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_3:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIFEQKNIL R3 [+14]
  GETIMPORT R3 K1 [error]
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K5 ["Cannot use '%s' as a Maid key"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  CALL R4 2 1
  LOADN R5 2
  CALL R3 2 0
  GETTABLEKS R3 R0 K8 ["_tasks"]
  GETTABLE R4 R3 R1
  JUMPIFNOTEQ R4 R2 [+2]
  RETURN R0 0
  SETTABLE R2 R3 R1
  JUMPIFNOT R4 [+71]
  FASTCALL1 TYPE R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K10 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K11 ["function"] [+4]
  MOVE R5 R4
  CALL R5 0 0
  RETURN R0 0
  FASTCALL1 TYPE R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K10 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K12 ["thread"] [+20]
  LOADNIL R5
  GETIMPORT R6 K15 [coroutine.running]
  CALL R6 0 1
  JUMPIFEQ R6 R4 [+7]
  GETIMPORT R6 K17 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CALL R6 1 1
  MOVE R5 R6
  JUMPIF R5 [+41]
  GETIMPORT R6 K20 [task.defer]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CALL R6 1 0
  RETURN R0 0
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K22 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K23 ["RBXScriptConnection"] [+5]
  NAMECALL R5 R4 K24 ["Disconnect"]
  CALL R5 1 0
  RETURN R0 0
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K22 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K25 ["Instance"] [+5]
  NAMECALL R5 R4 K26 ["Destroy"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R5 R4 K27 ["destroy"]
  JUMPIFNOT R5 [+4]
  NAMECALL R5 R4 K27 ["destroy"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R5 R4 K26 ["Destroy"]
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R4 K26 ["Destroy"]
  CALL R5 1 0
  RETURN R0 0

PROTO_6:
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_7:
  JUMPIF R1 [+5]
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["Task cannot be false or nil"]
  LOADN R4 2
  CALL R2 2 0
  GETTABLEKS R4 R0 K4 ["_tasks"]
  LENGTH R3 R4
  ADDK R2 R3 K3 [1]
  SETTABLE R1 R0 R2
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K6 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K7 ["table"] [+15]
  GETTABLEKS R2 R1 K8 ["destroy"]
  JUMPIF R2 [+11]
  GETTABLEKS R2 R1 K9 ["Destroy"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K11 [warn]
  LOADK R4 K12 ["[Maid.giveTask] - Gave table task without .Destroy

"]
  GETIMPORT R5 K15 [debug.traceback]
  CALL R5 0 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R1 1

PROTO_8:
  JUMPIF R1 [+5]
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["Task cannot be false or nil"]
  LOADN R4 2
  CALL R2 2 0
  GETTABLEKS R4 R0 K4 ["_tasks"]
  LENGTH R3 R4
  ADDK R2 R3 K3 [1]
  SETTABLE R1 R0 R2
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K6 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K7 ["table"] [+15]
  GETTABLEKS R3 R1 K8 ["destroy"]
  JUMPIF R3 [+11]
  GETTABLEKS R3 R1 K9 ["Destroy"]
  JUMPIF R3 [+8]
  GETIMPORT R3 K11 [warn]
  LOADK R5 K12 ["[Maid.giveTask] - Gave table task without .Destroy

"]
  GETIMPORT R6 K15 [debug.traceback]
  CALL R6 0 1
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R2 1

PROTO_9:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_tasks"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K2 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K3 ["RBXScriptConnection"] [+6]
  LOADNIL R7
  SETTABLE R7 R1 R5
  NAMECALL R7 R6 K4 ["Disconnect"]
  CALL R7 1 0
  FORGLOOP R2 2 [-13]
  GETIMPORT R2 K6 [next]
  MOVE R3 R1
  CALL R2 1 2
  JUMPIFEQKNIL R3 [+82]
  LOADNIL R4
  SETTABLE R4 R1 R2
  FASTCALL1 TYPE R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K8 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K9 ["function"] [+4]
  MOVE R4 R3
  CALL R4 0 0
  JUMP [+62]
  FASTCALL1 TYPE R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K8 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K10 ["thread"] [+21]
  LOADNIL R4
  GETIMPORT R5 K13 [coroutine.running]
  CALL R5 0 1
  JUMPIFEQ R5 R3 [+7]
  GETIMPORT R5 K15 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE REF R3
  CALL R5 1 1
  MOVE R4 R5
  JUMPIF R4 [+42]
  MOVE R5 R3
  GETIMPORT R6 K18 [task.defer]
  NEWCLOSURE R7 P1
  CAPTURE VAL R5
  CALL R6 1 0
  JUMP [+35]
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K2 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K3 ["RBXScriptConnection"] [+5]
  NAMECALL R4 R3 K4 ["Disconnect"]
  CALL R4 1 0
  JUMP [+24]
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K2 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K19 ["Instance"] [+5]
  NAMECALL R4 R3 K20 ["Destroy"]
  CALL R4 1 0
  JUMP [+13]
  GETTABLEKS R4 R3 K21 ["destroy"]
  JUMPIFNOT R4 [+4]
  NAMECALL R4 R3 K21 ["destroy"]
  CALL R4 1 0
  JUMP [+6]
  GETTABLEKS R4 R3 K20 ["Destroy"]
  JUMPIFNOT R4 [+3]
  NAMECALL R4 R3 K20 ["Destroy"]
  CALL R4 1 0
  GETIMPORT R4 K6 [next]
  MOVE R5 R1
  CALL R4 1 2
  MOVE R2 R4
  MOVE R3 R5
  JUMPBACK [-83]
  CLOSEUPVALS R3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["new"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["isMaid"]
  DUPCLOSURE R1 K4 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["__index"]
  DUPCLOSURE R1 K6 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["__newindex"]
  DUPCLOSURE R1 K8 [PROTO_6]
  SETTABLEKS R1 R0 K9 ["addNamed"]
  DUPCLOSURE R1 K10 [PROTO_7]
  SETTABLEKS R1 R0 K11 ["add"]
  DUPCLOSURE R1 K12 [PROTO_8]
  SETTABLEKS R1 R0 K13 ["giveTask"]
  DUPCLOSURE R1 K14 [PROTO_11]
  SETTABLEKS R1 R0 K15 ["destroy"]
  RETURN R0 1
