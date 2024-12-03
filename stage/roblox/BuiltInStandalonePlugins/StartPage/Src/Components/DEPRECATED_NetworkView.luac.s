PROTO_0:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+2]
  LOADK R2 K0 [""]
  RETURN R2 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R3 R0
  LOADK R4 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  FASTCALL2K ASSERT R1 K1 [+5]
  MOVE R3 R1
  LOADK R4 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  MOVE R3 R0
  LOADK R4 K4 ["?"]
  CONCAT R2 R3 R4
  NEWTABLE R3 0 0
  GETTABLEKS R4 R1 K5 ["search"]
  JUMPIFNOT R4 [+10]
  LOADK R7 K6 ["search="]
  GETTABLEKS R8 R1 K5 ["search"]
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K10 ["creatorType"]
  JUMPIFNOT R4 [+10]
  LOADK R7 K11 ["creatorType="]
  GETTABLEKS R8 R1 K10 ["creatorType"]
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K12 ["creatorTargetId"]
  JUMPIFNOT R4 [+14]
  LOADK R7 K13 ["creatorTargetId="]
  GETTABLEKS R9 R1 K12 ["creatorTargetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K15 [tostring]
  CALL R8 1 1
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K16 ["isPublic"]
  JUMPIFNOT R4 [+7]
  FASTCALL2K TABLE_INSERT R3 K17 [+5]
  MOVE R5 R3
  LOADK R6 K17 ["isPublic=true"]
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K18 ["isArchived"]
  JUMPIFNOT R4 [+7]
  FASTCALL2K TABLE_INSERT R3 K19 [+5]
  MOVE R5 R3
  LOADK R6 K19 ["isArchived=true"]
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K20 ["sortParam"]
  JUMPIFNOT R4 [+10]
  LOADK R7 K21 ["sortParam="]
  GETTABLEKS R8 R1 K20 ["sortParam"]
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K22 ["sortOrder"]
  JUMPIFNOT R4 [+10]
  LOADK R7 K23 ["sortOrder="]
  GETTABLEKS R8 R1 K22 ["sortOrder"]
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  MOVE R5 R2
  GETIMPORT R6 K25 [table.concat]
  MOVE R7 R3
  LOADK R8 K26 ["&"]
  CALL R6 2 1
  CONCAT R4 R5 R6
  RETURN R4 1

PROTO_1:
  ADD R2 R0 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  NOT R3 R4
  JUMPIF R3 [+21]
  LOADB R3 0
  GETUPVAL R4 1
  JUMPIFEQKNIL R4 [+18]
  LOADB R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["pages"]
  JUMPIFEQKNIL R4 [+12]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["pages"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["current"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADB R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["current"]
  JUMPIFEQKNIL R5 [+14]
  LOADB R4 0
  GETUPVAL R5 2
  JUMPIFEQKNIL R5 [+10]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["current"]
  GETUPVAL R7 2
  MUL R5 R6 R7
  JUMPIFLT R5 R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADB R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["current"]
  JUMPIFEQKNIL R6 [+21]
  LOADB R5 1
  GETUPVAL R6 1
  JUMPIFEQKNIL R6 [+17]
  LOADB R5 0
  GETUPVAL R6 2
  JUMPIFEQKNIL R6 [+13]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["current"]
  GETUPVAL R8 2
  MUL R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["targetResults"]
  JUMPIFLT R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R3 [+56]
  JUMPIFNOT R4 [+55]
  JUMPIFNOT R5 [+54]
  GETUPVAL R6 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["current"]
  JUMPIFNOT R8 [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["current"]
  ADDK R7 R8 K3 [1]
  JUMP [+1]
  LOADN R7 1
  SETTABLEKS R7 R6 K0 ["current"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["current"]
  FASTCALL2K ASSERT R7 K4 [+4]
  LOADK R8 K4 ["Force Luau to know that page.current is non-nil"]
  GETIMPORT R6 K6 [assert]
  CALL R6 2 0
  GETUPVAL R6 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["current"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETUPVAL R6 3
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K7 ["Query"]
  DUPTABLE R8 K9 [{"PageIndex"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["current"]
  SUBK R9 R10 K3 [1]
  SETTABLEKS R9 R8 K8 ["PageIndex"]
  CALL R6 2 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K10 ["FetchItems"]
  MOVE R8 R6
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["current"]
  GETUPVAL R10 5
  GETUPVAL R11 6
  GETUPVAL R12 7
  CALL R7 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIF R0 [+3]
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["pages"]
  LENGTH R1 R2
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["current"]
  GETUPVAL R0 4
  LOADN R1 0
  GETUPVAL R2 5
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  CALL R2 1 2
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R6 2
  JUMPIFNOT R6 [+5]
  GETUPVAL R6 3
  LOADB R7 0
  CALL R6 1 1
  MOVE R4 R6
  JUMP [+5]
  GETUPVAL R6 1
  LOADB R7 0
  CALL R6 1 2
  MOVE R4 R6
  MOVE R5 R7
  GETUPVAL R6 3
  LOADNIL R7
  CALL R6 1 1
  GETTABLEKS R8 R0 K1 ["Query"]
  GETTABLEKS R7 R8 K2 ["searchKey"]
  GETUPVAL R8 4
  MOVE R9 R7
  GETTABLEKS R10 R0 K1 ["Query"]
  CALL R8 2 1
  GETTABLEKS R10 R0 K1 ["Query"]
  GETTABLEKS R9 R10 K3 ["pageSize"]
  GETTABLE R10 R2 R8
  FASTCALL2K ASSERT R9 K4 [+5]
  MOVE R12 R9
  LOADK R13 K4 ["Should have a page size in the query"]
  GETIMPORT R11 K6 [assert]
  CALL R11 2 0
  GETUPVAL R11 5
  GETUPVAL R12 6
  CALL R11 1 1
  NEWCLOSURE R12 P0
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R1
  GETUPVAL R13 8
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U2
  CAPTURE REF R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R9
  NEWTABLE R15 0 1
  MOVE R16 R8
  SETLIST R15 R16 1 [1]
  CALL R13 2 0
  NEWTABLE R13 0 0
  GETTABLEKS R17 R0 K8 ["MaxCount"]
  ORK R16 R17 K7 [∞]
  FASTCALL2 MATH_MIN R9 R16 [+4]
  MOVE R15 R9
  GETIMPORT R14 K11 [math.min]
  CALL R14 2 1
  GETTABLEKS R15 R6 K12 ["current"]
  JUMPIFNOT R15 [+284]
  JUMPIFNOT R10 [+283]
  GETTABLEKS R15 R10 K13 ["pages"]
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  LOADB R20 1
  MOVE R21 R19
  LOADNIL R22
  LOADNIL R23
  FORGPREP R21
  GETTABLEKS R28 R25 K14 ["IsPlaceholder"]
  NOT R27 R28
  FASTCALL2K ASSERT R27 K15 [+4]
  LOADK R28 K15 ["Data returned from network should not be a placeholder sentinel value"]
  GETIMPORT R26 K6 [assert]
  CALL R26 2 0
  GETTABLEKS R26 R25 K16 ["ImageUrl"]
  JUMPIF R26 [+12]
  GETTABLEKS R26 R25 K17 ["CDNUrl"]
  JUMPIFNOT R26 [+9]
  GETTABLEKS R27 R25 K17 ["CDNUrl"]
  GETTABLE R26 R11 R27
  JUMPIFNOT R26 [+5]
  GETTABLEKS R27 R25 K17 ["CDNUrl"]
  GETTABLE R26 R11 R27
  SETTABLEKS R26 R25 K16 ["ImageUrl"]
  NEWTABLE R26 0 0
  SETTABLEKS R26 R25 K18 ["TeamCreatePresence"]
  GETTABLEKS R27 R25 K18 ["TeamCreatePresence"]
  FASTCALL2K ASSERT R27 K19 [+4]
  LOADK R28 K19 ["Force Luau to know that TeamCreatePresence is non-nil"]
  GETIMPORT R26 K6 [assert]
  CALL R26 2 0
  GETTABLEKS R26 R25 K20 ["TeamCreateCDNUrls"]
  JUMPIFNOT R26 [+17]
  GETTABLEKS R26 R25 K20 ["TeamCreateCDNUrls"]
  LOADNIL R27
  LOADNIL R28
  FORGPREP R26
  GETTABLE R31 R11 R30
  JUMPIFNOT R31 [+8]
  GETTABLEKS R33 R25 K18 ["TeamCreatePresence"]
  FASTCALL2 TABLE_INSERT R33 R31 [+4]
  MOVE R34 R31
  GETIMPORT R32 K23 [table.insert]
  CALL R32 2 0
  FORGLOOP R26 2 [-11]
  GETUPVAL R26 9
  JUMPIF R26 [+7]
  GETTABLEKS R26 R25 K16 ["ImageUrl"]
  JUMPIF R26 [+4]
  GETTABLEKS R26 R25 K24 ["NoLoadableImage"]
  JUMPIF R26 [+1]
  LOADB R20 0
  GETUPVAL R26 9
  JUMPIFNOT R26 [+16]
  GETTABLEKS R27 R25 K16 ["ImageUrl"]
  NOT R26 R27
  JUMPIFNOT R26 [+3]
  GETTABLEKS R27 R25 K24 ["NoLoadableImage"]
  NOT R26 R27
  SETTABLEKS R26 R25 K25 ["IsImageStillLoading"]
  FASTCALL2 TABLE_INSERT R13 R25 [+5]
  MOVE R27 R13
  MOVE R28 R25
  GETIMPORT R26 K23 [table.insert]
  CALL R26 2 0
  FORGLOOP R21 2 [-84]
  GETUPVAL R21 9
  JUMPIF R21 [+25]
  MOVE R21 R19
  LOADNIL R22
  LOADNIL R23
  FORGPREP R21
  GETTABLEKS R28 R25 K14 ["IsPlaceholder"]
  NOT R27 R28
  FASTCALL2K ASSERT R27 K26 [+4]
  LOADK R28 K26 ["Data returned form network should not be a placeholder sentinel value"]
  GETIMPORT R26 K6 [assert]
  CALL R26 2 0
  NOT R26 R20
  SETTABLEKS R26 R25 K25 ["IsImageStillLoading"]
  FASTCALL2 TABLE_INSERT R13 R25 [+5]
  MOVE R27 R13
  MOVE R28 R25
  GETIMPORT R26 K23 [table.insert]
  CALL R26 2 0
  FORGLOOP R21 2 [-20]
  FORGLOOP R15 2 [-118]
  GETUPVAL R15 2
  JUMPIFNOT R15 [+77]
  LENGTH R15 R13
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+33]
  LENGTH R15 R13
  GETTABLEKS R16 R10 K27 ["targetResults"]
  JUMPIFNOTLT R15 R16 [+28]
  GETTABLEKS R17 R10 K27 ["targetResults"]
  LENGTH R18 R13
  SUB R16 R17 R18
  GETTABLEKS R18 R0 K8 ["MaxCount"]
  ORK R17 R18 K28 [6]
  FASTCALL2 MATH_MIN R16 R17 [+3]
  GETIMPORT R15 K11 [math.min]
  CALL R15 2 1
  LOADN R18 1
  MOVE R16 R15
  LOADN R17 1
  FORNPREP R16
  DUPTABLE R21 K29 [{"IsPlaceholder"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K14 ["IsPlaceholder"]
  FASTCALL2 TABLE_INSERT R13 R21 [+4]
  MOVE R20 R13
  GETIMPORT R19 K23 [table.insert]
  CALL R19 2 0
  FORNLOOP R16
  GETUPVAL R15 2
  JUMPIFNOT R15 [+119]
  GETTABLEKS R15 R4 K12 ["current"]
  JUMPIF R15 [+116]
  JUMPIFNOT R10 [+115]
  GETTABLEKS R15 R10 K27 ["targetResults"]
  JUMPIFNOT R15 [+112]
  LENGTH R15 R13
  GETTABLEKS R17 R10 K27 ["targetResults"]
  FASTCALL2 MATH_MIN R17 R14 [+4]
  MOVE R18 R14
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  JUMPIFLE R16 R15 [+5]
  GETTABLEKS R15 R10 K27 ["targetResults"]
  JUMPIFNOTEQKN R15 K30 [0] [+98]
  LOADB R15 1
  SETTABLEKS R15 R4 K12 ["current"]
  GETTABLEKS R15 R0 K31 ["InitialContentHasLoaded"]
  LENGTH R17 R13
  GETTABLEKS R18 R0 K8 ["MaxCount"]
  JUMPIF R18 [+1]
  LENGTH R18 R13
  FASTCALL2 MATH_MIN R17 R18 [+3]
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  CALL R15 1 0
  JUMP [+80]
  JUMPIF R4 [+35]
  JUMPIFNOT R10 [+34]
  GETTABLEKS R15 R10 K27 ["targetResults"]
  JUMPIFNOT R15 [+31]
  LENGTH R15 R13
  GETTABLEKS R17 R10 K27 ["targetResults"]
  FASTCALL2 MATH_MIN R17 R14 [+4]
  MOVE R18 R14
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  JUMPIFLE R16 R15 [+5]
  GETTABLEKS R15 R10 K27 ["targetResults"]
  JUMPIFNOTEQKN R15 K30 [0] [+17]
  MOVE R15 R5
  LOADB R16 1
  CALL R15 1 0
  GETTABLEKS R15 R0 K31 ["InitialContentHasLoaded"]
  LENGTH R17 R13
  GETTABLEKS R18 R0 K8 ["MaxCount"]
  JUMPIF R18 [+1]
  LENGTH R18 R13
  FASTCALL2 MATH_MIN R17 R18 [+3]
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  CALL R15 1 0
  GETTABLEKS R16 R6 K12 ["current"]
  MOVE R17 R9
  JUMPIF R17 [+2]
  GETTABLEKS R17 R10 K27 ["targetResults"]
  MUL R15 R16 R17
  GETTABLEKS R16 R0 K32 ["HasParentLoaded"]
  JUMPIFNOT R16 [+34]
  LENGTH R16 R13
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+31]
  GETTABLEKS R16 R10 K27 ["targetResults"]
  JUMPIFNOTLT R15 R16 [+27]
  GETTABLEKS R18 R10 K27 ["targetResults"]
  SUB R17 R18 R15
  GETTABLEKS R19 R0 K8 ["MaxCount"]
  ORK R18 R19 K28 [6]
  FASTCALL2 MATH_MIN R17 R18 [+3]
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  LOADN R19 1
  MOVE R17 R16
  LOADN R18 1
  FORNPREP R17
  DUPTABLE R22 K29 [{"IsPlaceholder"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K14 ["IsPlaceholder"]
  FASTCALL2 TABLE_INSERT R13 R22 [+4]
  MOVE R21 R13
  GETIMPORT R20 K23 [table.insert]
  CALL R20 2 0
  FORNLOOP R17
  GETUPVAL R15 2
  JUMPIFNOT R15 [+30]
  JUMPIFNOT R10 [+11]
  LENGTH R15 R13
  GETTABLEKS R17 R10 K27 ["targetResults"]
  FASTCALL2 MATH_MIN R17 R14 [+4]
  MOVE R18 R14
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  JUMPIFNOTLT R15 R16 [+51]
  NEWTABLE R13 0 0
  LOADN R17 1
  MOVE R15 R14
  LOADN R16 1
  FORNPREP R15
  DUPTABLE R20 K29 [{"IsPlaceholder"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K14 ["IsPlaceholder"]
  FASTCALL2 TABLE_INSERT R13 R20 [+4]
  MOVE R19 R13
  GETIMPORT R18 K23 [table.insert]
  CALL R18 2 0
  FORNLOOP R15
  JUMP [+32]
  GETTABLEKS R15 R0 K32 ["HasParentLoaded"]
  JUMPIFNOT R15 [+12]
  JUMPIFNOT R10 [+11]
  LENGTH R15 R13
  GETTABLEKS R17 R10 K27 ["targetResults"]
  FASTCALL2 MATH_MIN R17 R14 [+4]
  MOVE R18 R14
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  JUMPIFNOTLT R15 R16 [+18]
  NEWTABLE R13 0 0
  LOADN R17 1
  MOVE R15 R14
  LOADN R16 1
  FORNPREP R15
  DUPTABLE R20 K29 [{"IsPlaceholder"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K14 ["IsPlaceholder"]
  FASTCALL2 TABLE_INSERT R13 R20 [+4]
  MOVE R19 R13
  GETIMPORT R18 K23 [table.insert]
  CALL R18 2 0
  FORNLOOP R15
  MOVE R15 R13
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  SETTABLEKS R3 R19 K33 ["SetNetworkResults"]
  FORGLOOP R15 2 [-3]
  GETTABLEKS R15 R0 K8 ["MaxCount"]
  JUMPIFNOT R15 [+14]
  NEWTABLE R15 0 1
  LOADN R18 1
  GETTABLEKS R19 R0 K8 ["MaxCount"]
  FASTCALL3 TABLE_UNPACK R13 R18 R19
  MOVE R17 R13
  GETIMPORT R16 K35 [table.unpack]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  MOVE R13 R15
  LENGTH R15 R13
  JUMPIFNOTEQKN R15 K30 [0] [+21]
  GETTABLEKS R15 R0 K36 ["NoContentDisplayComponent"]
  JUMPIFNOT R15 [+17]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K37 ["createElement"]
  GETTABLEKS R16 R0 K36 ["NoContentDisplayComponent"]
  DUPTABLE R17 K40 [{"Position", "Size"}]
  GETTABLEKS R18 R0 K38 ["Position"]
  SETTABLEKS R18 R17 K38 ["Position"]
  GETTABLEKS R18 R0 K39 ["Size"]
  SETTABLEKS R18 R17 K39 ["Size"]
  CALL R15 2 -1
  CLOSEUPVALS R5
  RETURN R15 -1
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K37 ["createElement"]
  GETTABLEKS R16 R0 K41 ["DisplayComponent"]
  DUPTABLE R17 K51 [{"Position", "Size", "Cells", "OnLoadRange", "LayoutOrder", "CanvasSize", "CellComponent", "CellSize", "CellPadding", "DisplayComponentHasAdjustedQuery", "CanDisplayComponentAdjustQuery", "Query"}]
  GETTABLEKS R18 R0 K38 ["Position"]
  SETTABLEKS R18 R17 K38 ["Position"]
  GETTABLEKS R18 R0 K39 ["Size"]
  SETTABLEKS R18 R17 K39 ["Size"]
  SETTABLEKS R13 R17 K42 ["Cells"]
  SETTABLEKS R12 R17 K43 ["OnLoadRange"]
  GETTABLEKS R18 R0 K44 ["LayoutOrder"]
  SETTABLEKS R18 R17 K44 ["LayoutOrder"]
  GETUPVAL R19 2
  JUMPIF R19 [+6]
  GETTABLEKS R19 R0 K32 ["HasParentLoaded"]
  JUMPIF R19 [+3]
  GETTABLEKS R18 R0 K39 ["Size"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K45 ["CanvasSize"]
  GETTABLEKS R18 R0 K46 ["CellComponent"]
  SETTABLEKS R18 R17 K46 ["CellComponent"]
  GETTABLEKS R18 R0 K47 ["CellSize"]
  SETTABLEKS R18 R17 K47 ["CellSize"]
  GETTABLEKS R18 R0 K48 ["CellPadding"]
  SETTABLEKS R18 R17 K48 ["CellPadding"]
  GETTABLEKS R19 R0 K50 ["CanDisplayComponentAdjustQuery"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R0 K49 ["DisplayComponentHasAdjustedQuery"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K49 ["DisplayComponentHasAdjustedQuery"]
  GETTABLEKS R19 R0 K50 ["CanDisplayComponentAdjustQuery"]
  ORK R18 R19 K52 []
  SETTABLEKS R18 R17 K50 ["CanDisplayComponentAdjustQuery"]
  GETTABLEKS R19 R0 K50 ["CanDisplayComponentAdjustQuery"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R0 K1 ["Query"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K1 ["Query"]
  CALL R15 2 -1
  CLOSEUPVALS R5
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagLuaStartPageQuickLoad"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["useContext"]
  GETTABLEKS R4 R2 K12 ["useState"]
  GETTABLEKS R5 R2 K13 ["useEffect"]
  GETTABLEKS R6 R2 K14 ["useRef"]
  GETTABLEKS R7 R2 K15 ["memo"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K17 ["TypedDash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K18 ["join"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K16 ["Util"]
  GETTABLEKS R12 R13 K19 ["Telemetry"]
  GETTABLEKS R11 R12 K20 ["TelemetryContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K21 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K23 [game]
  LOADK R14 K24 ["LuaStartPageFixFailingNetworkRequests"]
  NAMECALL R12 R12 K25 ["GetFastFlag"]
  CALL R12 2 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K16 ["Util"]
  GETTABLEKS R14 R15 K26 ["TempUrls"]
  CALL R13 1 1
  DUPCLOSURE R14 K27 [PROTO_0]
  DUPCLOSURE R15 K28 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R2
  SETGLOBAL R15 K29 ["NetworkView"]
  JUMPIFNOT R1 [+5]
  MOVE R15 R7
  GETGLOBAL R16 K29 ["NetworkView"]
  CALL R15 1 1
  RETURN R15 1
  GETGLOBAL R15 K29 ["NetworkView"]
  RETURN R15 1