PROTO_0:
  LOADK R4 K0 ["BasePart"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+25]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["string"] [+8]
  GETIMPORT R2 K7 [Color3.fromHex]
  MOVE R3 R1
  CALL R2 1 1
  SETTABLEKS R2 R0 K8 ["Color"]
  RETURN R0 0
  GETIMPORT R2 K10 [Color3.fromRGB]
  GETTABLEKS R3 R1 K11 ["r"]
  GETTABLEKS R4 R1 K12 ["g"]
  GETTABLEKS R5 R1 K13 ["b"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K8 ["Color"]
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R0 [+52]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["get"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K2 [pcall]
  GETIMPORT R5 K4 [game]
  GETTABLEKS R4 R5 K5 ["GetService"]
  GETIMPORT R5 K4 [game]
  MOVE R6 R0
  CALL R3 3 2
  JUMPIFNOT R3 [+2]
  JUMPIFNOT R4 [+1]
  RETURN R4 1
  JUMPIFNOTEQKS R0 K6 ["workspace"] [+4]
  GETIMPORT R5 K7 [workspace]
  RETURN R5 1
  JUMPIFNOTEQKS R0 K8 ["StarterPlayerScripts"] [+12]
  GETIMPORT R5 K4 [game]
  LOADK R7 K9 ["StarterPlayer"]
  NAMECALL R5 R5 K5 ["GetService"]
  CALL R5 2 1
  LOADK R7 K8 ["StarterPlayerScripts"]
  NAMECALL R5 R5 K10 ["FindFirstChildWhichIsA"]
  CALL R5 2 -1
  RETURN R5 -1
  JUMPIFNOTEQKS R0 K11 ["StarterCharacterScripts"] [+12]
  GETIMPORT R5 K4 [game]
  LOADK R7 K9 ["StarterPlayer"]
  NAMECALL R5 R5 K5 ["GetService"]
  CALL R5 2 1
  LOADK R7 K11 ["StarterCharacterScripts"]
  NAMECALL R5 R5 K10 ["FindFirstChildWhichIsA"]
  CALL R5 2 -1
  RETURN R5 -1
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["source"]
  RETURN R1 1

PROTO_3:
  LOADNIL R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["position"]
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K3 [CFrame.new]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["position"]
  GETTABLEKS R4 R5 K5 ["x"]
  ORK R3 R4 K4 [0]
  LOADN R4 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["position"]
  GETTABLEKS R6 R7 K6 ["z"]
  ORK R5 R6 K4 [0]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+7]
  GETIMPORT R2 K3 [CFrame.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["positionOrigin"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["get"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["referenceInstance"]
  GETUPVAL R5 2
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["getWorldBoundingBox"]
  MOVE R5 R3
  CALL R4 1 2
  GETIMPORT R6 K3 [CFrame.new]
  CALL R6 0 1
  LOADNIL R7
  LOADNIL R8
  JUMPIFNOTEQKS R2 K11 ["absolute"] [+6]
  GETIMPORT R9 K3 [CFrame.new]
  CALL R9 0 1
  MOVE R6 R9
  JUMP [+40]
  JUMPIFNOTEQKS R2 K12 ["relative"] [+9]
  JUMPIFNOT R3 [+7]
  GETIMPORT R9 K3 [CFrame.new]
  GETTABLEKS R10 R4 K13 ["Position"]
  CALL R9 1 1
  MOVE R6 R9
  JUMP [+30]
  JUMPIFNOTEQKS R2 K14 ["onTop"] [+10]
  JUMPIFNOT R3 [+8]
  GETIMPORT R9 K3 [CFrame.new]
  GETTABLEKS R10 R4 K13 ["Position"]
  CALL R9 1 1
  MOVE R6 R9
  MOVE R7 R3
  JUMP [+19]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+9]
  JUMPIFNOTEQKS R2 K15 ["currentCamera"] [+8]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["getCurrentLookingCFrame"]
  CALL R9 0 5
  MOVE R6 R9
  MOVE R8 R10
  JUMP [+7]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["getRequestCFrame"]
  GETUPVAL R10 2
  CALL R9 1 2
  MOVE R6 R9
  MOVE R8 R10
  MOVE R11 R1
  NAMECALL R9 R6 K18 ["ToWorldSpace"]
  CALL R9 2 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K19 ["getGroundLevelAt"]
  GETTABLEKS R11 R9 K13 ["Position"]
  MOVE R12 R7
  MOVE R13 R5
  MOVE R14 R8
  CALL R10 4 1
  GETTABLEKS R15 R9 K13 ["Position"]
  GETTABLEKS R14 R15 K20 ["Y"]
  MINUS R13 R14
  ADD R12 R13 R10
  NAMECALL R15 R0 K22 ["GetExtentsSize"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K20 ["Y"]
  DIVK R13 R14 K21 [2]
  ADD R11 R12 R13
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K23 ["elevation"]
  JUMPIFNOT R12 [+4]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K23 ["elevation"]
  ADD R11 R11 R12
  LOADN R13 0
  LOADN R15 0
  FASTCALL3 VECTOR R13 R11 R15
  MOVE R14 R11
  GETIMPORT R12 K25 [Vector3.new]
  CALL R12 3 1
  ADD R9 R9 R12
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K26 ["rotation"]
  JUMPIFNOT R12 [+18]
  GETIMPORT R13 K28 [CFrame.fromEulerAngles]
  LOADN R14 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K26 ["rotation"]
  FASTCALL1 MATH_RAD R16 [+2]
  GETIMPORT R15 K31 [math.rad]
  CALL R15 1 1
  LOADN R16 0
  CALL R13 3 1
  GETTABLEKS R14 R9 K32 ["Rotation"]
  MUL R12 R13 R14
  GETTABLEKS R13 R9 K13 ["Position"]
  ADD R9 R12 R13
  GETUPVAL R12 5
  CALL R12 0 1
  JUMPIFNOT R12 [+8]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K33 ["offsetCFrame"]
  JUMPIFNOT R12 [+4]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K33 ["offsetCFrame"]
  MUL R9 R9 R12
  MOVE R14 R9
  NAMECALL R12 R0 K34 ["PivotTo"]
  CALL R12 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["requestId"]
  GETTABLEKS R2 R0 K1 ["arguments"]
  GETTABLEKS R3 R2 K2 ["direct_instance"]
  GETTABLEKS R4 R2 K3 ["newInstanceId"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K4 ["instanceId"]
  MOVE R5 R3
  JUMPIF R5 [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["get"]
  MOVE R6 R4
  MOVE R7 R1
  CALL R5 2 1
  JUMPIF R5 [+9]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  GETIMPORT R6 K7 [error]
  LOADK R7 K8 ["Failed to find instance to set properties on"]
  CALL R6 1 0
  JUMP [+1]
  RETURN R0 0
  FASTCALL2K ASSERT R5 K9 [+5]
  MOVE R7 R5
  LOADK R8 K9 ["Luau"]
  GETIMPORT R6 K11 [assert]
  CALL R6 2 0
  JUMPIF R3 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["StartRecordingActions"]
  MOVE R7 R1
  CALL R6 1 0
  GETTABLEKS R6 R2 K13 ["properties"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETTABLEKS R7 R6 K14 ["instanceName"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R6 K14 ["instanceName"]
  SETTABLEKS R7 R5 K15 ["Name"]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIF R7 [+8]
  GETUPVAL R7 3
  GETTABLEKS R8 R6 K16 ["parentInstanceId"]
  MOVE R9 R1
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  SETTABLEKS R7 R5 K17 ["Parent"]
  GETTABLEKS R7 R6 K18 ["size"]
  JUMPIFNOT R7 [+23]
  LOADK R9 K19 ["BasePart"]
  NAMECALL R7 R5 K20 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+18]
  GETTABLEKS R9 R6 K18 ["size"]
  GETTABLEKS R8 R9 K21 ["x"]
  GETTABLEKS R10 R6 K18 ["size"]
  GETTABLEKS R9 R10 K22 ["y"]
  GETTABLEKS R11 R6 K18 ["size"]
  GETTABLEKS R10 R11 K23 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K26 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R5 K27 ["Size"]
  LOADK R9 K28 ["Model"]
  NAMECALL R7 R5 K20 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+84]
  GETTABLEKS R7 R6 K29 ["scale"]
  JUMPIFNOT R7 [+15]
  GETTABLEKS R7 R6 K29 ["scale"]
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+11]
  NAMECALL R7 R5 K30 ["GetScale"]
  CALL R7 1 1
  GETTABLEKS R11 R6 K29 ["scale"]
  MUL R10 R7 R11
  NAMECALL R8 R5 K31 ["ScaleTo"]
  CALL R8 2 0
  JUMP [+66]
  GETTABLEKS R7 R6 K32 ["height"]
  JUMPIFNOT R7 [+25]
  GETTABLEKS R7 R6 K32 ["height"]
  LOADK R8 K33 [0.1]
  JUMPIFNOTLT R8 R7 [+21]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K34 ["getWorldBoundingBox"]
  MOVE R8 R5
  CALL R7 1 2
  GETTABLEKS R9 R8 K35 ["Y"]
  LOADK R10 K33 [0.1]
  JUMPIFNOTLT R10 R9 [+49]
  GETTABLEKS R10 R6 K32 ["height"]
  GETTABLEKS R11 R8 K35 ["Y"]
  DIV R9 R10 R11
  MOVE R12 R9
  NAMECALL R10 R5 K31 ["ScaleTo"]
  CALL R10 2 0
  JUMP [+38]
  GETTABLEKS R7 R6 K18 ["size"]
  JUMPIFNOT R7 [+35]
  GETTABLEKS R8 R6 K18 ["size"]
  GETTABLEKS R7 R8 K22 ["y"]
  LOADK R8 K33 [0.1]
  JUMPIFNOTLT R8 R7 [+29]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K34 ["getWorldBoundingBox"]
  MOVE R8 R5
  CALL R7 1 2
  GETTABLEKS R9 R8 K35 ["Y"]
  LOADK R10 K33 [0.1]
  JUMPIFNOTLT R10 R9 [+19]
  GETTABLEKS R10 R6 K18 ["size"]
  GETTABLEKS R9 R10 K22 ["y"]
  LOADK R10 K33 [0.1]
  JUMPIFNOTLT R10 R9 [+12]
  GETTABLEKS R11 R6 K18 ["size"]
  GETTABLEKS R10 R11 K22 ["y"]
  GETTABLEKS R11 R8 K35 ["Y"]
  DIV R9 R10 R11
  MOVE R12 R9
  NAMECALL R10 R5 K31 ["ScaleTo"]
  CALL R10 2 0
  GETTABLEKS R7 R6 K36 ["source"]
  JUMPIFNOT R7 [+44]
  LOADK R9 K37 ["Script"]
  NAMECALL R7 R5 K20 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+5]
  LOADK R9 K38 ["ModuleScript"]
  NAMECALL R7 R5 K20 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+34]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+24]
  GETUPVAL R8 6
  NAMECALL R8 R8 K39 ["GetSettings"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K40 ["ScriptDiffTreatment"]
  JUMPIFNOT R7 [+17]
  GETUPVAL R7 6
  LOADK R9 K41 ["UpdateScriptSource"]
  DUPTABLE R10 K43 [{"requestId", "instanceId", "script", "source"}]
  SETTABLEKS R1 R10 K0 ["requestId"]
  SETTABLEKS R4 R10 K4 ["instanceId"]
  SETTABLEKS R5 R10 K42 ["script"]
  GETTABLEKS R11 R6 K36 ["source"]
  SETTABLEKS R11 R10 K36 ["source"]
  NAMECALL R7 R7 K44 ["DisplayContent"]
  CALL R7 3 0
  JUMP [+7]
  GETUPVAL R7 7
  MOVE R9 R5
  NEWCLOSURE R10 P0
  CAPTURE VAL R6
  NAMECALL R7 R7 K45 ["UpdateSourceAsync"]
  CALL R7 3 0
  GETTABLEKS R7 R6 K46 ["color"]
  JUMPIFNOT R7 [+70]
  GETTABLEKS R7 R6 K46 ["color"]
  LOADK R10 K19 ["BasePart"]
  NAMECALL R8 R5 K20 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+25]
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K48 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K49 ["string"] [+8]
  GETIMPORT R8 K52 [Color3.fromHex]
  MOVE R9 R7
  CALL R8 1 1
  SETTABLEKS R8 R5 K53 ["Color"]
  JUMP [+11]
  GETIMPORT R8 K55 [Color3.fromRGB]
  GETTABLEKS R9 R7 K56 ["r"]
  GETTABLEKS R10 R7 K57 ["g"]
  GETTABLEKS R11 R7 K58 ["b"]
  CALL R8 3 1
  SETTABLEKS R8 R5 K53 ["Color"]
  NAMECALL R7 R5 K59 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  GETTABLEKS R12 R6 K46 ["color"]
  LOADK R15 K19 ["BasePart"]
  NAMECALL R13 R11 K20 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+25]
  FASTCALL1 TYPEOF R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K48 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K49 ["string"] [+8]
  GETIMPORT R13 K52 [Color3.fromHex]
  MOVE R14 R12
  CALL R13 1 1
  SETTABLEKS R13 R11 K53 ["Color"]
  JUMP [+11]
  GETIMPORT R13 K55 [Color3.fromRGB]
  GETTABLEKS R14 R12 K56 ["r"]
  GETTABLEKS R15 R12 K57 ["g"]
  GETTABLEKS R16 R12 K58 ["b"]
  CALL R13 3 1
  SETTABLEKS R13 R11 K53 ["Color"]
  FORGLOOP R7 2 [-33]
  GETTABLEKS R7 R6 K60 ["material"]
  JUMPIFNOT R7 [+12]
  LOADK R9 K19 ["BasePart"]
  NAMECALL R7 R5 K20 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  GETIMPORT R8 K63 [Enum.Material]
  GETTABLEKS R9 R6 K60 ["material"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R5 K62 ["Material"]
  MOVE R7 R3
  JUMPIF R7 [+11]
  GETTABLEKS R7 R6 K64 ["position"]
  JUMPIF R7 [+8]
  GETTABLEKS R7 R6 K65 ["elevation"]
  JUMPIF R7 [+5]
  GETTABLEKS R7 R6 K66 ["rotation"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R6 K67 ["referenceInstance"]
  JUMPIFNOT R7 [+12]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K34 ["getWorldBoundingBox"]
  MOVE R9 R5
  NEWCLOSURE R10 P1
  CAPTURE VAL R6
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  CALL R8 2 0
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+8]
  GETUPVAL R8 3
  GETTABLEKS R9 R6 K16 ["parentInstanceId"]
  MOVE R10 R1
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  SETTABLEKS R8 R5 K17 ["Parent"]
  JUMPIF R3 [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K68 ["EndRecordingActions"]
  MOVE R9 R1
  CALL R8 1 0
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K69 ["getInstanceTypes"]
  CALL R8 0 1
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K70 ["registerInstanceV2"]
  MOVE R10 R5
  MOVE R11 R1
  GETTABLEKS R12 R8 K71 ["Created"]
  CALL R9 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["ScriptEditorService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["ChatbotUIService"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Utils"]
  GETTABLEKS R5 R6 K7 ["Utils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K13 ["Commands"]
  GETTABLEKS R8 R9 K14 ["BuilderCommands"]
  GETTABLEKS R7 R8 K15 ["BuilderNameMap"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["ContextCollectors"]
  GETTABLEKS R8 R9 K17 ["RecentInstancesContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  GETTABLEKS R9 R10 K19 ["getFFlagFixCurrentCameraPlacement"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K20 ["getFFlagAutoNormalizeBoundingBoxesForInsertedAssets"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K21 ["getFFlagConversationalAIScriptDiff"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K18 ["Flags"]
  GETTABLEKS R12 R13 K22 ["getFFlagConvAIAddClientAlerts"]
  CALL R11 1 1
  DUPCLOSURE R12 K23 [PROTO_0]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R14 K25 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R14 1