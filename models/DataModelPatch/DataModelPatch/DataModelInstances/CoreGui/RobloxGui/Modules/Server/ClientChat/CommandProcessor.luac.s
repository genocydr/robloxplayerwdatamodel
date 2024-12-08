PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 1
  LOADN R4 1
  LENGTH R2 R1
  LOADN R3 1
  FORNPREP R2
  GETTABLE R5 R1 R4
  LOADK R7 K1 ["ModuleScript"]
  NAMECALL R5 R5 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+44]
  GETTABLE R6 R1 R4
  GETTABLEKS R5 R6 K3 ["Name"]
  JUMPIFEQKS R5 K4 ["Util"] [+40]
  GETIMPORT R5 K6 [require]
  GETTABLE R6 R1 R4
  CALL R5 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["KEY_COMMAND_PROCESSOR_TYPE"]
  GETTABLE R6 R5 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["KEY_PROCESSOR_FUNCTION"]
  GETTABLE R7 R5 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["IN_PROGRESS_MESSAGE_PROCESSOR"]
  JUMPIFNOTEQ R6 R8 [+10]
  GETTABLEKS R9 R0 K10 ["InProgressMessageProcessors"]
  FASTCALL2 TABLE_INSERT R9 R7 [+4]
  MOVE R10 R7
  GETIMPORT R8 K13 [table.insert]
  CALL R8 2 0
  JUMP [+13]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["COMPLETED_MESSAGE_PROCESSOR"]
  JUMPIFNOTEQ R6 R8 [+9]
  GETTABLEKS R9 R0 K15 ["CompletedMessageProcessors"]
  FASTCALL2 TABLE_INSERT R9 R7 [+4]
  MOVE R10 R7
  GETIMPORT R8 K13 [table.insert]
  CALL R8 2 0
  FORNLOOP R2
  RETURN R0 0

PROTO_1:
  LOADN R5 1
  GETTABLEKS R6 R0 K0 ["CompletedMessageProcessors"]
  LENGTH R3 R6
  LOADN R4 1
  FORNPREP R3
  GETTABLEKS R7 R0 K0 ["CompletedMessageProcessors"]
  GETTABLE R6 R7 R5
  MOVE R7 R1
  MOVE R8 R2
  GETUPVAL R9 0
  CALL R6 3 1
  JUMPIFNOT R6 [+2]
  LOADB R7 1
  RETURN R7 1
  FORNLOOP R3
  LOADB R3 0
  RETURN R3 1

PROTO_2:
  LOADN R6 1
  GETTABLEKS R7 R0 K0 ["InProgressMessageProcessors"]
  LENGTH R4 R7
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R8 R0 K0 ["InProgressMessageProcessors"]
  GETTABLE R7 R8 R6
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  GETUPVAL R11 0
  CALL R7 4 1
  JUMPIFNOT R7 [+1]
  RETURN R7 1
  FORNLOOP R4
  LOADNIL R4
  RETURN R4 1

PROTO_3:
  NEWTABLE R1 2 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["CompletedMessageProcessors"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["InProgressMessageProcessors"]
  NAMECALL R1 R0 K4 ["SetupCommandProcessors"]
  CALL R1 1 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  NEWTABLE R1 4 0
  SETTABLEKS R1 R1 K0 ["__index"]
  GETIMPORT R2 K2 [game]
  LOADK R4 K3 ["Chat"]
  NAMECALL R2 R2 K4 ["GetService"]
  CALL R2 2 1
  LOADK R5 K5 ["ClientChatModules"]
  NAMECALL R3 R2 K6 ["WaitForChild"]
  CALL R3 2 1
  LOADK R6 K7 ["CommandModules"]
  NAMECALL R4 R3 K6 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  LOADK R8 K10 ["Util"]
  NAMECALL R6 R4 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETIMPORT R7 K9 [require]
  LOADK R10 K14 ["ChatSettings"]
  NAMECALL R8 R3 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R8 R1 K16 ["SetupCommandProcessors"]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R8 R1 K18 ["ProcessCompletedChatMessage"]
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R8 R1 K20 ["ProcessInProgressChatMessage"]
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R8 R0 K22 ["new"]
  RETURN R0 1