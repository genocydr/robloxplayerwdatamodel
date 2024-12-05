PROTO_0:
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  LOADN R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createBinding"]
  GETIMPORT R5 K3 [UDim2.fromOffset]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 -1
  CALL R4 -1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createBinding"]
  GETIMPORT R7 K3 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createBinding"]
  LOADN R9 0
  CALL R8 1 2
  DUPTABLE R10 K16 [{"id", "buttonId", "color", "position", "updatePosition", "size", "updateSize", "transparency", "image", "zIndex", "updateTransparency", "motor"}]
  GETUPVAL R11 1
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["id"]
  SETTABLEKS R0 R10 K5 ["buttonId"]
  GETUPVAL R12 2
  GETTABLE R11 R12 R0
  SETTABLEKS R11 R10 K6 ["color"]
  SETTABLEKS R4 R10 K7 ["position"]
  SETTABLEKS R5 R10 K8 ["updatePosition"]
  SETTABLEKS R6 R10 K9 ["size"]
  SETTABLEKS R7 R10 K10 ["updateSize"]
  SETTABLEKS R8 R10 K11 ["transparency"]
  SETTABLEKS R1 R10 K12 ["image"]
  ORK R11 R2 K17 [1]
  SETTABLEKS R11 R10 K13 ["zIndex"]
  SETTABLEKS R9 R10 K14 ["updateTransparency"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K18 ["createGroupMotor"]
  DUPTABLE R12 K19 [{"size", "transparency"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K9 ["size"]
  ORK R13 R3 K20 [0]
  SETTABLEKS R13 R12 K11 ["transparency"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["motor"]
  RETURN R10 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createBinding"]
  GETIMPORT R3 K3 [UDim2.fromOffset]
  MOVE R4 R0
  LOADN R5 50
  CALL R3 2 -1
  CALL R2 -1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createBinding"]
  MOVE R5 R1
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createBinding"]
  MOVE R7 R1
  CALL R6 1 2
  DUPTABLE R8 K11 [{"size", "updateSize", "backgroundTransparency", "updateBackgroundTransparency", "foregroundTransparency", "updateForegroundTransparency", "motor"}]
  SETTABLEKS R2 R8 K4 ["size"]
  SETTABLEKS R3 R8 K5 ["updateSize"]
  SETTABLEKS R4 R8 K6 ["backgroundTransparency"]
  SETTABLEKS R5 R8 K7 ["updateBackgroundTransparency"]
  SETTABLEKS R6 R8 K8 ["foregroundTransparency"]
  SETTABLEKS R7 R8 K9 ["updateForegroundTransparency"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["createGroupMotor"]
  DUPTABLE R10 K14 [{"size", "transparency"}]
  MOVE R11 R0
  JUMPIF R11 [+3]
  GETIMPORT R11 K16 [UDim2.new]
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["size"]
  ORK R11 R1 K17 [0]
  SETTABLEKS R11 R10 K13 ["transparency"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K10 ["motor"]
  RETURN R8 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateSize"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  GETTABLEKS R3 R0 K4 ["size"]
  GETTABLEKS R4 R0 K4 ["size"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["updateTransparency"]
  GETTABLEKS R2 R0 K6 ["transparency"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["currentCursorRingsByButtonId"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  MOVE R3 R1
  LOADK R4 K1 ["rbxasset://textures/UserInputPlaybackPlugin/Ring.png"]
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["cursorRings"]
  FASTCALL2 TABLE_INSERT R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K6 ["updatePosition"]
  GETIMPORT R4 K9 [UDim2.fromOffset]
  GETTABLEKS R5 R0 K10 ["X"]
  GETTABLEKS R6 R0 K11 ["Y"]
  CALL R4 2 -1
  CALL R3 -1 0
  GETTABLEKS R3 R2 K12 ["updateSize"]
  GETIMPORT R4 K9 [UDim2.fromOffset]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 -1
  CALL R3 -1 0
  GETTABLEKS R3 R2 K13 ["updateTransparency"]
  LOADN R4 0
  CALL R3 1 0
  GETTABLEKS R3 R2 K14 ["motor"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NAMECALL R3 R3 K15 ["onStep"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K14 ["motor"]
  DUPTABLE R5 K18 [{"size", "transparency"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K19 ["spring"]
  LOADN R7 50
  DUPTABLE R8 K21 [{"frequency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K20 ["frequency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["size"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K22 ["instant"]
  LOADN R7 0
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["transparency"]
  NAMECALL R3 R3 K23 ["setGoal"]
  CALL R3 2 0
  GETUPVAL R3 0
  DUPTABLE R5 K25 [{"visibleCursorRingIds"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K26 ["Dictionary"]
  GETTABLEKS R6 R7 K27 ["join"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K28 ["state"]
  GETTABLEKS R7 R8 K24 ["visibleCursorRingIds"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R2 K29 ["id"]
  LOADB R10 1
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K24 ["visibleCursorRingIds"]
  NAMECALL R3 R3 K30 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["currentCursorRingsByButtonId"]
  SETTABLE R2 R3 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K31 ["mouseButtonIsDown"]
  LOADB R4 1
  SETTABLE R4 R3 R1
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateFakeCursorPosition"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  GETTABLEKS R3 R0 K4 ["X"]
  GETTABLEKS R4 R0 K5 ["Y"]
  CALL R2 2 -1
  CALL R1 -1 0
  LOADN R3 1
  LOADN R1 2
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["currentCursorRingsByButtonId"]
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+19]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["mouseButtonIsDown"]
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+14]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["currentCursorRingsByButtonId"]
  GETTABLE R5 R6 R3
  GETTABLEKS R4 R5 K8 ["updatePosition"]
  GETIMPORT R5 K3 [UDim2.fromOffset]
  GETTABLEKS R6 R0 K4 ["X"]
  GETTABLEKS R7 R0 K5 ["Y"]
  CALL R5 2 -1
  CALL R4 -1 0
  FORNLOOP R1
  GETUPVAL R1 1
  GETIMPORT R2 K12 [Enum.OverrideMouseIconBehavior.ForceHide]
  SETTABLEKS R2 R1 K10 ["OverrideMouseIconBehavior"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isMounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"visibleCursorRingIds"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["state"]
  GETTABLEKS R5 R6 K1 ["visibleCursorRingIds"]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R0 K6 ["id"]
  LOADB R8 0
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["visibleCursorRingIds"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  GETIMPORT R1 K10 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["cursorRings"]
  MOVE R3 R0
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K12 [+4]
  LOADK R4 K12 ["Couldn't find ring"]
  GETIMPORT R2 K14 [assert]
  CALL R2 2 0
  GETIMPORT R2 K16 [table.remove]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["cursorRings"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeCursorRing"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["currentCursorRingsByButtonId"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+46]
  GETTABLEKS R3 R2 K1 ["updatePosition"]
  GETIMPORT R4 K4 [UDim2.fromOffset]
  GETTABLEKS R5 R0 K5 ["X"]
  GETTABLEKS R6 R0 K6 ["Y"]
  CALL R4 2 -1
  CALL R3 -1 0
  GETTABLEKS R3 R2 K7 ["motor"]
  DUPTABLE R5 K10 [{"size", "transparency"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["spring"]
  LOADN R7 100
  DUPTABLE R8 K13 [{"frequency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["frequency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["size"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["spring"]
  LOADN R7 1
  DUPTABLE R8 K13 [{"frequency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["frequency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["transparency"]
  NAMECALL R3 R3 K14 ["setGoal"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K7 ["motor"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NAMECALL R3 R3 K15 ["onComplete"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["currentCursorRingsByButtonId"]
  LOADNIL R4
  SETTABLE R4 R3 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["mouseButtonIsDown"]
  LOADB R4 0
  SETTABLE R4 R3 R1
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateSize"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  GETTABLEKS R3 R0 K4 ["size"]
  GETTABLEKS R4 R0 K4 ["size"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["updateTransparency"]
  GETTABLEKS R2 R0 K6 ["transparency"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateTransparency"]
  GETTABLEKS R2 R0 K1 ["transparency"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["Position"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  GETTABLEKS R3 R1 K4 ["X"]
  GETTABLEKS R4 R1 K5 ["Y"]
  CALL R2 2 1
  GETUPVAL R3 0
  LOADN R4 0
  LOADK R5 K6 ["rbxasset://textures/UserInputPlaybackPlugin/Ring.png"]
  LOADN R6 2
  LOADN R7 0
  CALL R3 4 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["cursorRings"]
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K10 [table.insert]
  CALL R4 2 0
  GETTABLEKS R4 R3 K11 ["updatePosition"]
  MOVE R5 R2
  CALL R4 1 0
  GETTABLEKS R4 R3 K12 ["motor"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NAMECALL R4 R4 K13 ["onStep"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K12 ["motor"]
  DUPTABLE R6 K16 [{"size", "transparency"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K17 ["spring"]
  LOADN R8 50
  DUPTABLE R9 K19 [{"frequency"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K18 ["frequency"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["size"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["instant"]
  LOADN R8 0
  CALL R7 1 1
  SETTABLEKS R7 R6 K15 ["transparency"]
  NAMECALL R4 R4 K21 ["setGoal"]
  CALL R4 2 0
  GETUPVAL R4 0
  LOADN R5 0
  LOADK R6 K22 ["rbxasset://textures/UserInputPlaybackPlugin/TapCursor.png"]
  LOADN R7 1
  LOADN R8 1
  CALL R4 4 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["cursorRings"]
  FASTCALL2 TABLE_INSERT R6 R4 [+4]
  MOVE R7 R4
  GETIMPORT R5 K10 [table.insert]
  CALL R5 2 0
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K23 ["color"]
  GETTABLEKS R5 R4 K11 ["updatePosition"]
  MOVE R6 R2
  CALL R5 1 0
  GETTABLEKS R5 R4 K24 ["updateTransparency"]
  LOADN R6 1
  CALL R5 1 0
  GETTABLEKS R5 R4 K25 ["updateSize"]
  GETIMPORT R6 K3 [UDim2.fromOffset]
  LOADN R7 64
  LOADN R8 64
  CALL R6 2 -1
  CALL R5 -1 0
  GETTABLEKS R5 R4 K12 ["motor"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  NAMECALL R5 R5 K13 ["onStep"]
  CALL R5 2 0
  GETTABLEKS R5 R4 K12 ["motor"]
  DUPTABLE R7 K26 [{"transparency"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K17 ["spring"]
  LOADN R9 0
  DUPTABLE R10 K19 [{"frequency"}]
  LOADK R11 K27 [2.5]
  SETTABLEKS R11 R10 K18 ["frequency"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["transparency"]
  NAMECALL R5 R5 K21 ["setGoal"]
  CALL R5 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K28 ["state"]
  GETTABLEKS R5 R6 K29 ["visibleCursorRingIds"]
  GETTABLEKS R6 R3 K30 ["id"]
  LOADB R7 1
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K30 ["id"]
  LOADB R7 1
  SETTABLE R7 R5 R6
  GETUPVAL R6 1
  DUPTABLE R8 K31 [{"visibleCursorRingIds"}]
  SETTABLEKS R5 R8 K29 ["visibleCursorRingIds"]
  NAMECALL R6 R6 K32 ["setState"]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K33 ["touchMap"]
  DUPTABLE R7 K36 [{"tapImage", "ring"}]
  SETTABLEKS R4 R7 K34 ["tapImage"]
  SETTABLEKS R3 R7 K35 ["ring"]
  SETTABLE R7 R6 R0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["touchMap"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+21]
  GETTABLEKS R2 R0 K1 ["Position"]
  GETIMPORT R3 K4 [UDim2.fromOffset]
  GETTABLEKS R4 R2 K5 ["X"]
  GETTABLEKS R5 R2 K6 ["Y"]
  CALL R3 2 1
  GETTABLEKS R5 R1 K7 ["tapImage"]
  GETTABLEKS R4 R5 K8 ["updatePosition"]
  MOVE R5 R3
  CALL R4 1 0
  GETTABLEKS R5 R1 K9 ["ring"]
  GETTABLEKS R4 R5 K8 ["updatePosition"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeCursorRing"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["ring"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeCursorRing"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["tapImage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["touchMap"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+74]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["onTouchMoved"]
  MOVE R3 R0
  CALL R2 1 0
  GETTABLEKS R3 R1 K2 ["ring"]
  GETTABLEKS R2 R3 K3 ["motor"]
  DUPTABLE R4 K6 [{"size", "transparency"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["spring"]
  LOADN R6 100
  DUPTABLE R7 K9 [{"frequency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["frequency"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["size"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["spring"]
  LOADN R6 1
  DUPTABLE R7 K9 [{"frequency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["frequency"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["transparency"]
  NAMECALL R2 R2 K10 ["setGoal"]
  CALL R2 2 0
  GETTABLEKS R3 R1 K2 ["ring"]
  GETTABLEKS R2 R3 K3 ["motor"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NAMECALL R2 R2 K11 ["onComplete"]
  CALL R2 2 0
  GETTABLEKS R3 R1 K12 ["tapImage"]
  GETTABLEKS R2 R3 K3 ["motor"]
  DUPTABLE R4 K13 [{"transparency"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["spring"]
  LOADN R6 1
  DUPTABLE R7 K9 [{"frequency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["frequency"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["transparency"]
  NAMECALL R2 R2 K10 ["setGoal"]
  CALL R2 2 0
  GETTABLEKS R3 R1 K12 ["tapImage"]
  GETTABLEKS R2 R3 K3 ["motor"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NAMECALL R2 R2 K11 ["onComplete"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateSize"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  LOADN R3 50
  GETTABLEKS R4 R0 K4 ["size"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateSize"]
  GETIMPORT R2 K3 [UDim2.fromOffset]
  GETTABLEKS R3 R0 K4 ["size"]
  LOADN R4 50
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["updateForegroundTransparency"]
  GETTABLEKS R2 R0 K6 ["transparency"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["updateBackgroundTransparency"]
  GETTABLEKS R5 R0 K6 ["transparency"]
  SUBRK R4 R8 K5 ["updateForegroundTransparency"]
  MULK R3 R4 K9 [0.6]
  SUBRK R2 R8 K3 [UDim2.fromOffset]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["keyRows"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R2
  CALL R3 1 1
  GETTABLEN R4 R3 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R5 R4 K3 ["numberOfKeys"]
  LOADN R6 6
  JUMPIFNOTLE R6 R5 [+69]
  DUPTABLE R5 K7 [{"lastUpdateTime", "numberOfKeys", "keys", "dataId"}]
  GETIMPORT R6 K9 [tick]
  CALL R6 0 1
  SETTABLEKS R6 R5 K4 ["lastUpdateTime"]
  LOADN R6 0
  SETTABLEKS R6 R5 K3 ["numberOfKeys"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K5 ["keys"]
  GETUPVAL R6 1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["dataId"]
  MOVE R4 R5
  LOADN R7 1
  FASTCALL3 TABLE_INSERT R3 R7 R4
  MOVE R6 R3
  MOVE R8 R4
  GETIMPORT R5 K12 [table.insert]
  CALL R5 3 0
  GETUPVAL R5 2
  LOADN R6 0
  LOADN R7 1
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["keyTileData"]
  GETTABLEKS R7 R4 K6 ["dataId"]
  SETTABLE R5 R6 R7
  GETTABLEKS R6 R5 K14 ["updateSize"]
  GETIMPORT R7 K17 [UDim2.fromOffset]
  LOADN R8 50
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 0
  GETTABLEKS R6 R5 K18 ["motor"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R5
  NAMECALL R6 R6 K19 ["onStep"]
  CALL R6 2 0
  GETTABLEKS R6 R5 K18 ["motor"]
  DUPTABLE R8 K21 [{"size"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K22 ["spring"]
  LOADN R10 50
  DUPTABLE R11 K24 [{"frequency"}]
  LOADK R12 K25 [2.5]
  SETTABLEKS R12 R11 K23 ["frequency"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["size"]
  NAMECALL R6 R6 K26 ["setGoal"]
  CALL R6 2 0
  GETUPVAL R5 2
  LOADN R6 0
  LOADN R7 1
  CALL R5 2 1
  GETUPVAL R6 1
  CALL R6 0 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["keyTileData"]
  SETTABLE R5 R7 R6
  GETTABLEKS R7 R5 K18 ["motor"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R5
  NAMECALL R7 R7 K19 ["onStep"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K18 ["motor"]
  DUPTABLE R9 K28 [{"size", "transparency"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K22 ["spring"]
  LOADN R11 50
  DUPTABLE R12 K24 [{"frequency"}]
  LOADK R13 K25 [2.5]
  SETTABLEKS R13 R12 K23 ["frequency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["size"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K22 ["spring"]
  LOADN R11 0
  DUPTABLE R12 K24 [{"frequency"}]
  LOADK R13 K25 [2.5]
  SETTABLEKS R13 R12 K23 ["frequency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["transparency"]
  NAMECALL R7 R7 K26 ["setGoal"]
  CALL R7 2 0
  GETIMPORT R7 K9 [tick]
  CALL R7 0 1
  SETTABLEKS R7 R4 K4 ["lastUpdateTime"]
  GETTABLEKS R7 R4 K3 ["numberOfKeys"]
  ADDK R7 R7 K29 [1]
  SETTABLEKS R7 R4 K3 ["numberOfKeys"]
  GETTABLEKS R8 R4 K5 ["keys"]
  DUPTABLE R9 K31 [{"keyCode", "dataId"}]
  GETUPVAL R10 5
  SETTABLEKS R10 R9 K30 ["keyCode"]
  SETTABLEKS R6 R9 K6 ["dataId"]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K12 [table.insert]
  CALL R7 2 0
  DUPTABLE R7 K32 [{"keyRows"}]
  SETTABLEKS R3 R7 K0 ["keyRows"]
  RETURN R7 1

PROTO_20:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R2 R0 K0 ["keyRows"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R2
  CALL R3 1 1
  LOADNIL R4
  LOADNIL R5
  GETIMPORT R6 K4 [ipairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K5 ["dataId"]
  GETUPVAL R12 1
  JUMPIFNOTEQ R11 R12 [+4]
  MOVE R4 R10
  MOVE R5 R9
  JUMP [+2]
  FORGLOOP R6 2 [inext] [-9]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["keyTileData"]
  GETTABLEKS R7 R4 K5 ["dataId"]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETIMPORT R6 K4 [ipairs]
  GETTABLEKS R7 R4 K7 ["keys"]
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K6 ["keyTileData"]
  GETTABLEKS R12 R10 K5 ["dataId"]
  LOADNIL R13
  SETTABLE R13 R11 R12
  FORGLOOP R6 2 [inext] [-8]
  LOADNIL R6
  SETTABLEKS R6 R4 K7 ["keys"]
  GETIMPORT R6 K10 [table.remove]
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  DUPTABLE R6 K11 [{"keyRows"}]
  SETTABLEKS R3 R6 K0 ["keyRows"]
  RETURN R6 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isMounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dataId"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["isMounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_24:
  GETIMPORT R1 K1 [ipairs]
  GETTABLEKS R2 R0 K2 ["keys"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["keyTileData"]
  GETTABLEKS R8 R5 K4 ["dataId"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R6 K5 ["motor"]
  DUPTABLE R9 K7 [{"transparency"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["spring"]
  LOADN R11 1
  DUPTABLE R12 K10 [{"frequency"}]
  LOADN R13 2
  SETTABLEKS R13 R12 K9 ["frequency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K6 ["transparency"]
  NAMECALL R7 R7 K11 ["setGoal"]
  CALL R7 2 0
  JUMPIFNOTEQKN R4 K12 [1] [+10]
  GETTABLEKS R7 R6 K5 ["motor"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  NAMECALL R7 R7 K13 ["onComplete"]
  CALL R7 2 0
  FORGLOOP R1 2 [inext] [-35]
  RETURN R0 0

PROTO_25:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isMounted"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["keyRows"]
  GETIMPORT R3 K4 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K5 ["lastUpdateTime"]
  GETIMPORT R10 K7 [tick]
  CALL R10 0 1
  SUB R9 R10 R8
  LOADK R10 K8 [1.5]
  JUMPIFNOTLT R10 R9 [+4]
  MOVE R9 R1
  MOVE R10 R7
  CALL R9 1 0
  FORGLOOP R3 2 [inext] [-13]
  GETIMPORT R3 K10 [wait]
  LOADK R4 K11 [0.5]
  CALL R3 1 0
  JUMPBACK [-34]
  RETURN R0 0

PROTO_26:
  DUPTABLE R1 K2 [{"visibleCursorRingIds", "keyRows"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["visibleCursorRingIds"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["keyRows"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["cursorRings"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["currentCursorRingsByButtonId"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["mouseButtonIsDown"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K7 ["connections"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K8 ["touchMap"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K9 ["keyTileData"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["createBinding"]
  GETIMPORT R2 K13 [UDim2.fromOffset]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K14 ["fakeCursorPosition"]
  SETTABLEKS R2 R0 K15 ["updateFakeCursorPosition"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K16 ["onMouseDown"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K17 ["onMouseMove"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K18 ["removeCursorRing"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K19 ["onMouseUp"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K20 ["onTouchStarted"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["onTouchMoved"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K22 ["onTouchEnded"]
  NEWCLOSURE R1 P7
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K23 ["onKeyDown"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K24 ["deleteKeyRowThread"]
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["Position"]
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onMouseDown"]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R4 R1 K9 ["X"]
  GETTABLEKS R5 R1 K10 ["Y"]
  CALL R3 2 1
  LOADN R4 1
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K12 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onMouseDown"]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R4 R1 K9 ["X"]
  GETTABLEKS R5 R1 K10 ["Y"]
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K14 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["onTouchStarted"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K1 ["UserInputType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K16 ["onKeyDown"]
  GETTABLEKS R3 R0 K17 ["KeyCode"]
  CALL R2 1 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R1 R0 K0 ["Position"]
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onMouseUp"]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R4 R1 K9 ["X"]
  GETTABLEKS R5 R1 K10 ["Y"]
  CALL R3 2 1
  LOADN R4 1
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K12 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onMouseUp"]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R4 R1 K9 ["X"]
  GETTABLEKS R5 R1 K10 ["Y"]
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K14 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["onTouchEnded"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_29:
  GETTABLEKS R1 R0 K0 ["Position"]
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onMouseMove"]
  GETIMPORT R3 K8 [Vector2.new]
  GETTABLEKS R4 R1 K9 ["X"]
  GETTABLEKS R5 R1 K10 ["Y"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K12 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["onTouchMoved"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_30:
  GETTABLEKS R2 R0 K0 ["connections"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["InputBegan"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K2 ["connect"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K5 [table.insert]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K0 ["connections"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["InputEnded"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K2 ["connect"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K5 [table.insert]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K0 ["connections"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["InputChanged"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K2 ["connect"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K5 [table.insert]
  CALL R1 -1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K8 ["isMounted"]
  GETIMPORT R1 K11 [task.defer]
  GETTABLEKS R2 R0 K12 ["deleteKeyRowThread"]
  CALL R1 1 0
  RETURN R0 0

PROTO_31:
  GETIMPORT R1 K1 [ipairs]
  GETTABLEKS R2 R0 K2 ["connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["connections"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["isMounted"]
  RETURN R0 0

PROTO_32:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  NEWTABLE R4 0 0
  GETIMPORT R5 K4 [ipairs]
  GETTABLEKS R6 R2 K5 ["keyRows"]
  CALL R5 1 3
  FORGPREP_INEXT R5
  NEWTABLE R10 0 0
  GETIMPORT R11 K4 [ipairs]
  GETTABLEKS R12 R9 K6 ["keys"]
  CALL R11 1 3
  FORGPREP_INEXT R11
  GETTABLEKS R17 R0 K7 ["keyTileData"]
  GETTABLEKS R18 R15 K8 ["dataId"]
  GETTABLE R16 R17 R18
  JUMPIFNOT R16 [+25]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K15 [{"KeyCode", "LayoutOrder", "Size", "ForegroundTransparency", "BackgroundTransparency"}]
  GETTABLEKS R20 R15 K16 ["keyCode"]
  SETTABLEKS R20 R19 K10 ["KeyCode"]
  SETTABLEKS R14 R19 K11 ["LayoutOrder"]
  GETTABLEKS R20 R16 K17 ["size"]
  SETTABLEKS R20 R19 K12 ["Size"]
  GETTABLEKS R20 R16 K18 ["foregroundTransparency"]
  SETTABLEKS R20 R19 K13 ["ForegroundTransparency"]
  GETTABLEKS R20 R16 K19 ["backgroundTransparency"]
  SETTABLEKS R20 R19 K14 ["BackgroundTransparency"]
  CALL R17 2 1
  SETTABLE R17 R10 R14
  FORGLOOP R11 2 [inext] [-32]
  GETTABLEKS R12 R0 K7 ["keyTileData"]
  GETTABLEKS R13 R9 K8 ["dataId"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R11 [+31]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K24 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Size", "LayoutOrder"}]
  GETIMPORT R15 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K20 ["Layout"]
  GETIMPORT R15 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K21 ["HorizontalAlignment"]
  GETIMPORT R15 K32 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R15 R14 K22 ["VerticalAlignment"]
  GETTABLEKS R15 R3 K33 ["KeyBarRowSpacingPx"]
  SETTABLEKS R15 R14 K23 ["Spacing"]
  GETTABLEKS R15 R11 K17 ["size"]
  SETTABLEKS R15 R14 K12 ["Size"]
  MINUS R15 R8
  SETTABLEKS R15 R14 K11 ["LayoutOrder"]
  MOVE R15 R10
  CALL R12 3 1
  SETTABLE R12 R4 R8
  FORGLOOP R5 2 [inext] [-79]
  DUPTABLE R5 K36 [{"FakeCursorImage", "KeyBar"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  LOADK R7 K37 ["ImageLabel"]
  DUPTABLE R8 K45 [{"BackgroundTransparency", "BorderSizePixel", "Image", "Position", "Size", "AnchorPoint", "Visible", "ImageColor3", "ZIndex"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K38 ["BorderSizePixel"]
  LOADK R9 K46 ["rbxasset://textures/UserInputPlaybackPlugin/ArrowCursor.png"]
  SETTABLEKS R9 R8 K39 ["Image"]
  GETTABLEKS R9 R0 K47 ["fakeCursorPosition"]
  SETTABLEKS R9 R8 K40 ["Position"]
  GETIMPORT R9 K50 [UDim2.fromOffset]
  LOADN R10 64
  LOADN R11 64
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Size"]
  GETIMPORT R9 K53 [Vector2.new]
  LOADK R10 K54 [0.5]
  LOADK R11 K54 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["AnchorPoint"]
  LOADB R9 1
  SETTABLEKS R9 R8 K42 ["Visible"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K43 ["ImageColor3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K44 ["ZIndex"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K34 ["FakeCursorImage"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K55 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "Size", "Position", "AnchorPoint"}]
  GETIMPORT R9 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K20 ["Layout"]
  GETTABLEKS R9 R3 K33 ["KeyBarRowSpacingPx"]
  SETTABLEKS R9 R8 K23 ["Spacing"]
  GETIMPORT R9 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K21 ["HorizontalAlignment"]
  GETIMPORT R9 K32 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R9 R8 K22 ["VerticalAlignment"]
  GETTABLEKS R9 R3 K58 ["KeyBarSize"]
  SETTABLEKS R9 R8 K12 ["Size"]
  GETIMPORT R9 K60 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K40 ["Position"]
  GETIMPORT R9 K53 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["AnchorPoint"]
  MOVE R9 R4
  CALL R6 3 1
  SETTABLEKS R6 R5 K35 ["KeyBar"]
  GETIMPORT R6 K4 [ipairs]
  GETTABLEKS R7 R0 K61 ["cursorRings"]
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R12 R2 K62 ["visibleCursorRingIds"]
  GETTABLEKS R13 R10 K63 ["id"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R11 [+49]
  GETTABLEKS R11 R10 K63 ["id"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K37 ["ImageLabel"]
  DUPTABLE R14 K65 [{"BackgroundTransparency", "BorderSizePixel", "Image", "ZIndex", "AnchorPoint", "Size", "Position", "ImageTransparency", "ImageColor3", "Visible"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K14 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K38 ["BorderSizePixel"]
  GETTABLEKS R15 R10 K66 ["image"]
  SETTABLEKS R15 R14 K39 ["Image"]
  GETTABLEKS R15 R10 K67 ["zIndex"]
  SETTABLEKS R15 R14 K44 ["ZIndex"]
  GETIMPORT R15 K53 [Vector2.new]
  LOADK R16 K54 [0.5]
  LOADK R17 K54 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["AnchorPoint"]
  GETTABLEKS R15 R10 K17 ["size"]
  SETTABLEKS R15 R14 K12 ["Size"]
  GETTABLEKS R15 R10 K68 ["position"]
  SETTABLEKS R15 R14 K40 ["Position"]
  GETTABLEKS R15 R10 K69 ["transparency"]
  SETTABLEKS R15 R14 K64 ["ImageTransparency"]
  GETTABLEKS R15 R10 K70 ["color"]
  SETTABLEKS R15 R14 K43 ["ImageColor3"]
  LOADB R15 1
  SETTABLEKS R15 R14 K42 ["Visible"]
  CALL R12 2 1
  SETTABLE R12 R5 R11
  FORGLOOP R6 2 [inext] [-56]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K71 ["createFragment"]
  MOVE R7 R5
  CALL R6 1 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Otter"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["ContextServices"]
  GETTABLEKS R6 R4 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["KeyBarTile"]
  CALL R8 1 1
  GETIMPORT R9 K17 [game]
  LOADK R11 K18 ["UserInputService"]
  NAMECALL R9 R9 K19 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K22 [Color3.new]
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R10 3 1
  GETIMPORT R11 K22 [Color3.new]
  LOADN R12 1
  LOADN R13 1
  LOADN R14 1
  CALL R11 3 1
  GETIMPORT R12 K22 [Color3.new]
  LOADN R13 1
  LOADN R14 1
  LOADN R15 0
  CALL R12 3 1
  NEWTABLE R13 0 2
  SETTABLEN R11 R13 1
  SETTABLEN R12 R13 2
  NEWTABLE R14 16 0
  GETIMPORT R15 K26 [Enum.UserInputType.Keyboard]
  LOADN R16 1
  SETTABLE R16 R14 R15
  GETIMPORT R15 K28 [Enum.UserInputType.Gamepad1]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K30 [Enum.UserInputType.Gamepad2]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K32 [Enum.UserInputType.Gamepad3]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K34 [Enum.UserInputType.Gamepad4]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K36 [Enum.UserInputType.Gamepad5]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K38 [Enum.UserInputType.Gamepad6]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K40 [Enum.UserInputType.Gamepad7]
  LOADN R16 2
  SETTABLE R16 R14 R15
  GETIMPORT R15 K42 [Enum.UserInputType.Gamepad8]
  LOADN R16 2
  SETTABLE R16 R14 R15
  NEWTABLE R15 2 0
  GETIMPORT R16 K45 [Enum.KeyCode.Thumbstick1]
  LOADN R17 1
  SETTABLE R17 R15 R16
  GETIMPORT R16 K47 [Enum.KeyCode.Thumbstick2]
  LOADN R17 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R1 K48 ["PureComponent"]
  LOADK R18 K49 ["InputVisualizer"]
  NAMECALL R16 R16 K50 ["extend"]
  CALL R16 2 1
  LOADN R18 0
  NEWCLOSURE R17 P0
  CAPTURE REF R18
  CLOSEUPVALS R18
  DUPCLOSURE R18 K51 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R2
  DUPCLOSURE R19 K52 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R20 K53 [PROTO_26]
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R19
  SETTABLEKS R20 R16 K54 ["init"]
  DUPCLOSURE R20 K55 [PROTO_30]
  CAPTURE VAL R9
  CAPTURE VAL R14
  SETTABLEKS R20 R16 K56 ["didMount"]
  DUPCLOSURE R20 K57 [PROTO_31]
  SETTABLEKS R20 R16 K58 ["willUnmount"]
  DUPCLOSURE R20 K59 [PROTO_32]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R20 R16 K60 ["render"]
  GETTABLEKS R20 R5 K61 ["withContext"]
  DUPTABLE R21 K63 [{"Stylizer"}]
  GETTABLEKS R22 R5 K62 ["Stylizer"]
  SETTABLEKS R22 R21 K62 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R16
  CALL R20 1 1
  MOVE R16 R20
  RETURN R16 1