PROTO_0:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  LOADN R3 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  RETURN R1 2
  LOADK R6 K3 ["[^
]+"]
  NAMECALL R4 R0 K4 ["gmatch"]
  CALL R4 2 3
  FORGPREP R4
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  LOADNIL R12
  GETUPVAL R13 0
  MOVE R14 R7
  NEWTABLE R15 0 3
  LOADK R16 K5 [", line "]
  LOADK R17 K6 [", Line "]
  LOADK R18 K7 [":"]
  SETLIST R15 R16 3 [1]
  CALL R13 2 2
  MOVE R10 R13
  MOVE R9 R14
  GETUPVAL R13 0
  MOVE R14 R9
  NEWTABLE R15 0 1
  LOADK R16 K8 [" - "]
  SETLIST R15 R16 1 [1]
  CALL R13 2 2
  MOVE R12 R13
  MOVE R11 R14
  JUMPIFEQKS R12 K9 [""] [+41]
  JUMPIFEQKS R10 K9 [""] [+39]
  GETIMPORT R13 K11 [string.find]
  MOVE R14 R10
  LOADK R15 K12 ["Script '(.*)'"]
  CALL R13 2 3
  JUMPIFEQKNIL R15 [+2]
  MOVE R10 R15
  GETTABLE R16 R2 R10
  JUMPIFNOTEQKNIL R16 [+4]
  ADDK R3 R3 K13 [1]
  MOVE R16 R3
  SETTABLE R16 R2 R10
  JUMPIFNOTEQKS R11 K9 [""] [+5]
  GETUPVAL R17 1
  MOVE R18 R10
  CALL R17 1 1
  MOVE R11 R17
  DUPTABLE R19 K17 [{"line", "funcName", "sourceCode"}]
  SETTABLEKS R12 R19 K14 ["line"]
  SETTABLEKS R11 R19 K15 ["funcName"]
  FASTCALL1 TOSTRING R16 [+3]
  MOVE R21 R16
  GETIMPORT R20 K19 [tostring]
  CALL R20 1 1
  SETTABLEKS R20 R19 K16 ["sourceCode"]
  FASTCALL2 TABLE_INSERT R1 R19 [+4]
  MOVE R18 R1
  GETIMPORT R17 K22 [table.insert]
  CALL R17 2 0
  FORGLOOP R4 1 [-69]
  NEWTABLE R4 0 0
  GETIMPORT R5 K24 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K19 [tostring]
  CALL R10 1 1
  DUPTABLE R11 K26 [{"path"}]
  SETTABLEKS R8 R11 K25 ["path"]
  SETTABLE R11 R4 R10
  FORGLOOP R5 2 [-10]
  MOVE R5 R1
  MOVE R6 R4
  RETURN R5 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["splitStringWithMarks"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["findFileNameFromPath"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1