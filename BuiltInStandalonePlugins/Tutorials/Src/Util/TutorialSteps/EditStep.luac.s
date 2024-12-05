PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["update"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["data"]
  GETTABLEKS R2 R5 K1 ["changes"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFNOTEQKS R5 K2 ["Attributes"] [+19]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R1 K2 ["Attributes"]
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R1 K2 ["Attributes"]
  MOVE R15 R10
  NAMECALL R13 R0 K3 ["GetAttribute"]
  CALL R13 2 1
  SETTABLE R13 R12 R10
  FORGLOOP R7 1 [-8]
  JUMP [+2]
  GETTABLE R7 R0 R5
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-23]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["watches"]
  DUPTABLE R4 K7 [{"instance", "initialValues"}]
  SETTABLEKS R0 R4 K5 ["instance"]
  SETTABLEKS R1 R4 K6 ["initialValues"]
  FASTCALL2 TABLE_INSERT R3 R4 [+2]
  GETUPVAL R2 1
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["connections"]
  GETTABLEKS R4 R0 K9 ["Changed"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  NAMECALL R4 R4 K10 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R2 1
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K1 ["dataModel"]
  LOADK R4 K2 ["Workspace"]
  NAMECALL R2 R1 K3 ["GetService"]
  CALL R2 2 1
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K4 ["connections"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K5 ["watches"]
  GETTABLEKS R3 R0 K0 ["tutorial"]
  MOVE R5 R2
  GETTABLEKS R7 R0 K6 ["data"]
  GETTABLEKS R6 R7 K7 ["className"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K8 ["syncChildren"]
  CALL R3 4 1
  GETTABLEKS R5 R0 K4 ["connections"]
  FASTCALL2 TABLE_INSERT R5 R3 [+3]
  MOVE R6 R3
  GETUPVAL R4 0
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKB R0 TRUE [+19]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["instance"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetAttribute"]
  CALL R3 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["initialValues"]
  GETTABLEKS R5 R6 K3 ["Attributes"]
  GETTABLE R4 R5 R1
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["instance"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetAttribute"]
  CALL R3 2 1
  GETUPVAL R4 1
  JUMPIFNOTEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  JUMPIFNOTEQKS R1 K0 ["Attributes"] [+8]
  GETUPVAL R2 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 2 1
  RETURN R2 1
  JUMPIFNOTEQKB R0 TRUE [+14]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["instance"]
  GETTABLE R3 R4 R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["initialValues"]
  GETTABLE R4 R5 R1
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["instance"]
  GETTABLE R3 R4 R1
  JUMPIFNOTEQ R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["data"]
  GETTABLEKS R2 R3 K1 ["changes"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 2 1
  NOT R2 R1
  RETURN R2 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["watches"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R0 K1 ["complete"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [ipairs]
  GETTABLEKS R2 R0 K2 ["connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["some"]
  GETIMPORT R3 K10 [table.insert]
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K11 ["TutorialStep"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["extend"]
  LOADK R6 K13 ["Edit"]
  CALL R5 1 1
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["showComplete"]
  DUPCLOSURE R6 K15 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K16 ["bind"]
  DUPCLOSURE R6 K17 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K18 ["update"]
  DUPCLOSURE R6 K19 [PROTO_7]
  SETTABLEKS R6 R5 K20 ["unbind"]
  RETURN R5 1