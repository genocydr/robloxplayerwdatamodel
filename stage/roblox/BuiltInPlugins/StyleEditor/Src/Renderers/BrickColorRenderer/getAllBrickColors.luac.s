PROTO_0:
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADN R1 8
  LOADN R2 1
  FORNPREP R1
  GETIMPORT R4 K2 [BrickColor.new]
  MOVE R5 R3
  CALL R4 1 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K3 ["Number"]
  SETTABLE R4 R0 R5
  FORNLOOP R1
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K6 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1