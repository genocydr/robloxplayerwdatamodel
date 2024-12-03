PROTO_0:
  LOADK R3 K0 ["rbxthumb://type=AvatarHeadShot"]
  LOADK R4 K1 ["&id="]
  MOVE R5 R0
  LOADK R6 K2 ["&w="]
  GETTABLEKS R7 R1 K3 ["X"]
  LOADK R8 K4 ["&h="]
  GETTABLEKS R9 R1 K5 ["Y"]
  CONCAT R2 R3 R9
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Id"]
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 60
  LOADN R4 60
  CALL R2 2 1
  LOADK R4 K5 ["rbxthumb://type=AvatarHeadShot"]
  LOADK R5 K6 ["&id="]
  MOVE R6 R1
  LOADK R7 K7 ["&w="]
  GETTABLEKS R8 R2 K8 ["X"]
  LOADK R9 K9 ["&h="]
  GETTABLEKS R10 R2 K10 ["Y"]
  CONCAT R3 R4 R10
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["currentId"]
  JUMPIFEQ R1 R4 [+16]
  GETUPVAL R4 0
  SETTABLEKS R1 R4 K11 ["currentId"]
  GETUPVAL R4 0
  DUPTABLE R6 K14 [{"fetchStatus", "contentId"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["None"]
  SETTABLEKS R7 R6 K12 ["fetchStatus"]
  SETTABLEKS R3 R6 K13 ["contentId"]
  NAMECALL R4 R4 K16 ["setState"]
  CALL R4 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["state"]
  GETTABLEKS R4 R5 K13 ["contentId"]
  JUMPIFEQ R3 R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["loadThumbnail"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fetchingContentId"]
  JUMPIFNOTEQ R2 R0 [+14]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["fetchingContentId"]
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"fetchStatus", "contentId"}]
  SETTABLEKS R1 R4 K1 ["fetchStatus"]
  SETTABLEKS R0 R4 K2 ["contentId"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K0 ["PreloadAsync"]
  CALL R0 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["fetchingContentId"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["fetchingContentId"]
  GETIMPORT R1 K3 [coroutine.wrap]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R1 1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"fetchStatus", "contentId"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["fetchStatus"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["contentId"]
  SETTABLEKS R1 R0 K3 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["fetchingContentId"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["currentId"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K6 ["updateThumbnail"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["loadThumbnail"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["Id"]
  GETTABLEKS R5 R3 K1 ["Id"]
  JUMPIFEQ R4 R5 [+4]
  GETTABLEKS R4 R0 K2 ["updateThumbnail"]
  CALL R4 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["updateThumbnail"]
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["RenderContents"]
  MOVE R4 R3
  GETTABLEKS R5 R2 K3 ["contentId"]
  GETTABLEKS R6 R2 K4 ["fetchStatus"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SocialPresence"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["ContentProvider"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_0]
  GETTABLEKS R4 R1 K13 ["Component"]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K14 ["Name"]
  NAMECALL R4 R4 K15 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K16 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K17 ["init"]
  DUPCLOSURE R5 K18 [PROTO_6]
  SETTABLEKS R5 R4 K19 ["didUpdate"]
  DUPCLOSURE R5 K20 [PROTO_7]
  SETTABLEKS R5 R4 K21 ["didMount"]
  DUPCLOSURE R5 K22 [PROTO_8]
  SETTABLEKS R5 R4 K23 ["render"]
  RETURN R4 1