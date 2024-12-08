PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  SETTABLE R6 R1 R5
  FORGLOOP R2 2 [-2]
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 1
  LOADN R5 1
  LENGTH R3 R2
  LOADN R4 1
  FORNPREP R3
  GETGLOBAL R6 K1 ["ReturnToObjectPoolRecursive"]
  GETTABLE R7 R2 R5
  MOVE R8 R1
  CALL R6 2 0
  FORNLOOP R3
  LOADNIL R3
  SETTABLEKS R3 R0 K2 ["Parent"]
  MOVE R5 R0
  NAMECALL R3 R1 K3 ["ReturnInstance"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
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
  JUMPIFNOT R5 [+18]
  GETTABLE R6 R1 R4
  GETTABLEKS R5 R6 K3 ["Name"]
  JUMPIFEQKS R5 K4 ["Util"] [+14]
  GETIMPORT R5 K6 [require]
  GETTABLE R6 R1 R4
  CALL R5 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["KEY_MESSAGE_TYPE"]
  GETTABLE R6 R5 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["KEY_CREATOR_FUNCTION"]
  GETTABLE R7 R5 R8
  SETTABLE R7 R0 R6
  FORNLOOP R2
  RETURN R0 1

PROTO_3:
  GETIMPORT R0 K1 [warn]
  LOADK R1 K2 ["NO MESSAGE RESIZE FUNCTION"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETGLOBAL R1 K0 ["ReturnToObjectPoolRecursive"]
  GETTABLEKS R2 R0 K1 ["BaseFrame"]
  GETTABLEKS R3 R0 K2 ["ObjectPool"]
  CALL R1 2 0
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["Destroyed"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["KEY_BASE_FRAME"]
  GETTABLE R3 R2 R4
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["KEY_BASE_MESSAGE"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["KEY_BASE_MESSAGE"]
  GETTABLE R4 R2 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["KEY_UPDATE_TEXT_FUNC"]
  GETTABLE R5 R2 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["KEY_GET_HEIGHT"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["KEY_FADE_IN"]
  GETTABLE R7 R2 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["KEY_FADE_OUT"]
  GETTABLE R8 R2 R9
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["KEY_UPDATE_ANIMATION"]
  GETTABLE R9 R2 R10
  NEWTABLE R10 16 0
  GETTABLEKS R11 R1 K7 ["ID"]
  SETTABLEKS R11 R10 K7 ["ID"]
  SETTABLEKS R3 R10 K8 ["BaseFrame"]
  SETTABLEKS R4 R10 K9 ["BaseMessage"]
  MOVE R11 R5
  JUMPIF R11 [+1]
  DUPCLOSURE R11 K10 [PROTO_3]
  SETTABLEKS R11 R10 K11 ["UpdateTextFunction"]
  SETTABLEKS R6 R10 K12 ["GetHeightFunction"]
  SETTABLEKS R7 R10 K13 ["FadeInFunction"]
  SETTABLEKS R8 R10 K14 ["FadeOutFunction"]
  SETTABLEKS R9 R10 K15 ["UpdateAnimFunction"]
  GETTABLEKS R11 R0 K16 ["ObjectPool"]
  SETTABLEKS R11 R10 K16 ["ObjectPool"]
  LOADB R11 0
  SETTABLEKS R11 R10 K17 ["Destroyed"]
  DUPCLOSURE R11 K18 [PROTO_4]
  SETTABLEKS R11 R10 K19 ["Destroy"]
  RETURN R10 1

PROTO_6:
  GETUPVAL R0 1
  GETIMPORT R2 K3 [Enum.ChatCallbackType.OnClientFormattingMessage]
  GETUPVAL R3 2
  NAMECALL R0 R0 K4 ["InvokeChatCallback"]
  CALL R0 3 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_7:
  SETTABLEKS R2 R1 K0 ["Channel"]
  LOADNIL R4
  GETIMPORT R5 K2 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE REF R4
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CALL R5 1 0
  GETTABLEKS R5 R1 K3 ["ExtraData"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R1 K3 ["ExtraData"]
  GETGLOBAL R5 K4 ["mergeProps"]
  MOVE R6 R4
  GETTABLEKS R7 R1 K3 ["ExtraData"]
  CALL R5 2 0
  GETTABLEKS R5 R1 K5 ["MessageType"]
  GETTABLEKS R7 R0 K6 ["MessageCreators"]
  GETTABLE R6 R7 R5
  JUMPIFNOT R6 [+16]
  GETTABLEKS R7 R0 K6 ["MessageCreators"]
  GETTABLE R6 R7 R5
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 1
  JUMPIFNOT R6 [+35]
  MOVE R9 R1
  MOVE R10 R6
  NAMECALL R7 R0 K7 ["WrapIntoMessageObject"]
  CALL R7 3 -1
  CLOSEUPVALS R4
  RETURN R7 -1
  JUMP [+27]
  GETTABLEKS R6 R0 K8 ["DefaultCreatorType"]
  JUMPIFNOT R6 [+18]
  GETTABLEKS R7 R0 K6 ["MessageCreators"]
  GETTABLEKS R8 R0 K8 ["DefaultCreatorType"]
  GETTABLE R6 R7 R8
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 1
  JUMPIFNOT R6 [+14]
  MOVE R9 R1
  MOVE R10 R6
  NAMECALL R7 R0 K7 ["WrapIntoMessageObject"]
  CALL R7 3 -1
  CLOSEUPVALS R4
  RETURN R7 -1
  JUMP [+6]
  GETIMPORT R6 K10 [error]
  LOADK R8 K11 ["No message creator available for message type: "]
  MOVE R9 R5
  CONCAT R7 R8 R9
  CALL R6 1 0
  CLOSEUPVALS R4
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 1
  GETIMPORT R2 K3 [Enum.ChatCallbackType.OnClientFormattingMessage]
  GETUPVAL R3 2
  NAMECALL R0 R0 K4 ["InvokeChatCallback"]
  CALL R0 3 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_9:
  SETTABLEKS R2 R1 K0 ["Channel"]
  LOADNIL R3
  GETIMPORT R4 K2 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE REF R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CALL R4 1 0
  GETTABLEKS R4 R1 K3 ["ExtraData"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R1 K3 ["ExtraData"]
  GETGLOBAL R4 K4 ["mergeProps"]
  MOVE R5 R3
  GETTABLEKS R6 R1 K3 ["ExtraData"]
  CALL R4 2 0
  GETTABLEKS R4 R1 K5 ["MessageType"]
  GETTABLEKS R6 R0 K6 ["MessageCreators"]
  GETTABLE R5 R6 R4
  JUMPIFNOT R5 [+15]
  GETTABLEKS R6 R0 K6 ["MessageCreators"]
  GETTABLE R5 R6 R4
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIFNOT R5 [+34]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K7 ["WrapIntoMessageObject"]
  CALL R6 3 -1
  CLOSEUPVALS R3
  RETURN R6 -1
  JUMP [+26]
  GETTABLEKS R5 R0 K8 ["DefaultCreatorType"]
  JUMPIFNOT R5 [+17]
  GETTABLEKS R6 R0 K6 ["MessageCreators"]
  GETTABLEKS R7 R0 K8 ["DefaultCreatorType"]
  GETTABLE R5 R6 R7
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIFNOT R5 [+14]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K7 ["WrapIntoMessageObject"]
  CALL R6 3 -1
  CLOSEUPVALS R3
  RETURN R6 -1
  JUMP [+6]
  GETIMPORT R5 K10 [error]
  LOADK R7 K11 ["No message creator available for message type: "]
  MOVE R8 R4
  CONCAT R6 R7 R8
  CALL R5 1 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  LOADN R2 50
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["ObjectPool"]
  GETGLOBAL R1 K4 ["GetMessageCreators"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["MessageCreators"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["DEFAULT_MESSAGE_CREATOR"]
  SETTABLEKS R1 R0 K7 ["DefaultCreatorType"]
  GETUPVAL R1 2
  GETTABLEKS R3 R0 K3 ["ObjectPool"]
  NAMECALL R1 R1 K8 ["RegisterObjectPool"]
  CALL R1 2 0
  RETURN R0 1

PROTO_11:
  GETUPVAL R5 0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R5 R5 K0 ["GetStringTextBounds"]
  CALL R5 5 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Chat"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K4 ["ClientChatModules"]
  NAMECALL R2 R1 K5 ["WaitForChild"]
  CALL R2 2 1
  LOADK R5 K6 ["MessageCreatorModules"]
  NAMECALL R3 R2 K5 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  LOADK R7 K9 ["Util"]
  NAMECALL R5 R3 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETIMPORT R6 K8 [require]
  LOADK R9 K13 ["ChatSettings"]
  NAMECALL R7 R2 K5 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETIMPORT R7 K8 [require]
  LOADK R10 K14 ["ObjectPool"]
  NAMECALL R8 R5 K5 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETIMPORT R8 K8 [require]
  LOADK R11 K15 ["MessageSender"]
  NAMECALL R9 R5 K5 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  NEWTABLE R9 4 0
  SETTABLEKS R9 R9 K16 ["__index"]
  DUPCLOSURE R10 K17 [PROTO_0]
  SETGLOBAL R10 K18 ["mergeProps"]
  DUPCLOSURE R10 K19 [PROTO_1]
  SETGLOBAL R10 K20 ["ReturnToObjectPoolRecursive"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETGLOBAL R10 K22 ["GetMessageCreators"]
  DUPCLOSURE R10 K23 [PROTO_5]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K24 ["WrapIntoMessageObject"]
  DUPCLOSURE R10 K25 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K26 ["CreateMessageLabel_Chat"]
  DUPCLOSURE R10 K27 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K28 ["CreateMessageLabel"]
  DUPCLOSURE R10 K29 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R10 R0 K30 ["new"]
  DUPCLOSURE R10 K31 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R10 R0 K32 ["GetStringTextBounds"]
  RETURN R0 1
