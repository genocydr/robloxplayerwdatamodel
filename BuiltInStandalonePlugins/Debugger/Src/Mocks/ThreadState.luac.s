PROTO_0:
  DUPTABLE R3 K7 [{"ThreadId", "ThreadName", "isValid", "Populated", "PopulatableType", "callstack", "FrameCount"}]
  SETTABLEKS R0 R3 K0 ["ThreadId"]
  SETTABLEKS R1 R3 K1 ["ThreadName"]
  SETTABLEKS R2 R3 K2 ["isValid"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["Populated"]
  LOADK R4 K8 ["ThreadState"]
  SETTABLEKS R4 R3 K4 ["PopulatableType"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K5 ["callstack"]
  LOADN R4 0
  SETTABLEKS R4 R3 K6 ["FrameCount"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K10 [setmetatable]
  CALL R4 2 0
  RETURN R3 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["callstack"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["callstack"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  ADDK R7 R5 K3 [1]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-3]
  RETURN R1 1

PROTO_3:
  FASTCALL1 ASSERT R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  LOADN R4 0
  GETTABLE R3 R1 R4
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  SETTABLEKS R1 R0 K2 ["callstack"]
  LOADN R2 0
  SETTABLEKS R2 R0 K3 ["FrameCount"]
  GETIMPORT R2 K5 [pairs]
  GETTABLEKS R3 R0 K2 ["callstack"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R8 R0 K3 ["FrameCount"]
  ADDK R7 R8 K6 [1]
  SETTABLEKS R7 R0 K3 ["FrameCount"]
  FORGLOOP R2 1 [-6]
  LOADB R2 1
  SETTABLEKS R2 R0 K7 ["Populated"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["StackFrame"]
  CALL R0 1 1
  NEWTABLE R1 8 0
  SETTABLEKS R1 R1 K6 ["__index"]
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K8 ["new"]
  DUPCLOSURE R2 K9 [PROTO_1]
  SETTABLEKS R2 R1 K10 ["GetFrame"]
  DUPCLOSURE R2 K11 [PROTO_2]
  SETTABLEKS R2 R1 K12 ["GetChildren"]
  DUPCLOSURE R2 K13 [PROTO_3]
  SETTABLEKS R2 R1 K14 ["MockSetChildren"]
  RETURN R1 1
