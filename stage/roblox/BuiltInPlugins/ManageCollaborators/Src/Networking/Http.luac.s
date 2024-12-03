PROTO_0:
  GETTABLEKS R1 R0 K0 ["Params"]
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["Params"]
  JUMPIFNOT R1 [+40]
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R12 0
  MOVE R14 R6
  NAMECALL R12 R12 K3 ["UrlEncode"]
  CALL R12 2 1
  MOVE R9 R12
  LOADK R10 K4 ["="]
  GETUPVAL R11 0
  MOVE R13 R7
  NAMECALL R11 R11 K3 ["UrlEncode"]
  CALL R11 2 1
  CONCAT R8 R9 R11
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-21]
  GETTABLEKS R4 R0 K8 ["Url"]
  LOADK R5 K9 ["?"]
  GETIMPORT R6 K11 [table.concat]
  MOVE R7 R2
  LOADK R8 K12 ["&"]
  CALL R6 2 1
  CONCAT R3 R4 R6
  SETTABLEKS R3 R0 K8 ["Url"]
  RETURN R0 0

PROTO_1:
  PREPVARARGS 2
  LOADK R3 K0 ["https://"]
  MOVE R4 R0
  LOADK R5 K1 ["."]
  GETUPVAL R6 0
  GETIMPORT R8 K5 [string.format]
  MOVE R9 R1
  GETVARARGS R10 -1
  CALL R8 -1 1
  ORK R7 R8 K2 [""]
  CONCAT R2 R3 R7
  RETURN R2 1

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["RequestAsync"]
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R0 3 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  JUMPIFNOT R0 [+23]
  GETTABLEKS R2 R1 K0 ["StatusCode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["BAD_REQUEST"]
  JUMPIFNOTLE R3 R2 [+12]
  GETUPVAL R2 1
  LOADK R4 K2 ["HTTP error: "]
  GETTABLEKS R6 R1 K0 ["StatusCode"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K5 ["Body"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  LOADK R4 K2 ["HTTP error: "]
  GETTABLEKS R6 R1 K6 ["HttpError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestInternal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K1 ["Start"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpRbxApiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ContentProvider"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["Util"]
  GETTABLEKS R6 R5 K14 ["Promise"]
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R3 K15 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K16 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K17 ["BaseUrl"]
  LOADK R11 K18 ["https://www."]
  NAMECALL R9 R8 K19 ["find"]
  CALL R9 2 1
  JUMPIFNOT R9 [+6]
  LOADN R11 13
  NAMECALL R9 R8 K20 ["sub"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+10]
  LOADK R11 K21 ["http://www."]
  NAMECALL R9 R8 K19 ["find"]
  CALL R9 2 1
  JUMPIFNOT R9 [+5]
  LOADN R11 12
  NAMECALL R9 R8 K20 ["sub"]
  CALL R9 2 1
  MOVE R8 R9
  DUPCLOSURE R9 K22 [PROTO_0]
  CAPTURE VAL R1
  NEWTABLE R10 4 0
  NEWCLOSURE R11 P1
  CAPTURE REF R8
  SETTABLEKS R11 R10 K23 ["BuildRobloxUrl"]
  DUPCLOSURE R11 K24 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K25 ["Request"]
  DUPCLOSURE R11 K26 [PROTO_8]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K27 ["RequestInternal"]
  CLOSEUPVALS R8
  RETURN R10 1