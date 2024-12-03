PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [pairs]
  GETTABLEKS R4 R1 K3 ["data"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R9 R7 K4 ["role"]
  GETTABLEKS R8 R9 K5 ["rank"]
  JUMPIFNOTEQKN R8 K6 [255] [+11]
  GETTABLEKS R11 R7 K7 ["group"]
  GETTABLEKS R10 R11 K8 ["id"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K11 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-17]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetUserId"]
  CALL R1 1 1
  DUPTABLE R2 K3 [{"Url", "Method"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["BuildRobloxUrl"]
  LOADK R4 K5 ["groups"]
  LOADK R5 K6 ["v2/users/%d/groups/roles"]
  MOVE R6 R1
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["Url"]
  LOADK R3 K7 ["GET"]
  SETTABLEKS R3 R2 K2 ["Method"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["Request"]
  MOVE R4 R2
  CALL R3 1 1
  DUPCLOSURE R5 K9 [PROTO_0]
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K10 ["andThen"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Network"]
  GETTABLEKS R3 R4 K11 ["Http"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K12 ["StudioService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R4 1
