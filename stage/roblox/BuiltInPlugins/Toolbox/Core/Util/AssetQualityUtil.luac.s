PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+23]
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R9 R2
  MOVE R10 R6
  GETIMPORT R8 K4 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-9]
  GETIMPORT R3 K6 [table.concat]
  MOVE R4 R2
  LOADK R5 K7 [","]
  CALL R3 2 1
  MOVE R1 R3
  RETURN R1 1

PROTO_1:
  LOADNIL R1
  JUMPIFNOT R0 [+61]
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R9 R2
  MOVE R10 R6
  GETIMPORT R8 K4 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-9]
  LOADN R3 0
  GETIMPORT R4 K6 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  NEWTABLE R9 0 0
  GETIMPORT R10 K9 [string.gmatch]
  MOVE R11 R8
  LOADK R12 K10 ["[^.]+"]
  CALL R10 2 3
  FORGPREP R10
  FASTCALL2 TABLE_INSERT R9 R13 [+5]
  MOVE R16 R9
  MOVE R17 R13
  GETIMPORT R15 K4 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 1 [-8]
  LENGTH R10 R9
  JUMPIFNOTEQKN R10 K11 [2] [+17]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  LOADK R11 K12 ["qualityFilter["]
  MOVE R12 R3
  LOADK R13 K13 ["].category"]
  CONCAT R10 R11 R13
  GETTABLEN R11 R9 1
  SETTABLE R11 R1 R10
  LOADK R11 K12 ["qualityFilter["]
  MOVE R12 R3
  LOADK R13 K14 ["].value"]
  CONCAT R10 R11 R13
  GETTABLEN R11 R9 2
  SETTABLE R11 R1 R10
  ADDK R3 R3 K15 [1]
  FORGLOOP R4 2 [inext] [-37]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["convertQualityFilterDataToTagsCSV"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["convertQualityFilterDataToQueryStrings"]
  RETURN R0 1
