PROTO_0:
  DUPTABLE R0 K9 [{"_adornee", "_parent", "_light", "_handlesFolder", "_guidesFolder", "_handles", "_handlesPresent", "_listener", "_attachmentListener"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_adornee"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_light"]
  GETIMPORT R1 K12 [Instance.new]
  LOADK R2 K13 ["Folder"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_handlesFolder"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_guidesFolder"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["_handles"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["_handlesPresent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_listener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_attachmentListener"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K15 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  NAMECALL R1 R0 K0 ["_setListeners"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_setAncestry"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["_handlesPresent"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["_setHandles"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K4 ["_light"]
  GETTABLEKS R1 R2 K5 ["Enabled"]
  GETTABLEKS R3 R0 K4 ["_light"]
  GETTABLEKS R2 R3 K6 ["Range"]
  GETTABLEKS R4 R0 K4 ["_light"]
  GETTABLEKS R3 R4 K7 ["Angle"]
  FASTCALL1 MATH_RAD R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K10 [math.rad]
  CALL R4 1 1
  GETTABLEKS R6 R0 K4 ["_light"]
  GETTABLEKS R5 R6 K11 ["Color"]
  DIVK R8 R4 K12 [2]
  FASTCALL1 MATH_SIN R8 [+2]
  GETIMPORT R7 K14 [math.sin]
  CALL R7 1 1
  MUL R6 R2 R7
  DIVK R9 R4 K12 [2]
  FASTCALL1 MATH_COS R9 [+2]
  GETIMPORT R8 K16 [math.cos]
  CALL R8 1 1
  MUL R7 R2 R8
  GETTABLEKS R9 R0 K17 ["_handles"]
  GETTABLEKS R8 R9 K18 ["Spot"]
  GETTABLEKS R10 R0 K17 ["_handles"]
  GETTABLEKS R9 R10 K19 ["Left"]
  GETTABLEKS R11 R0 K17 ["_handles"]
  GETTABLEKS R10 R11 K20 ["Right"]
  GETTABLEKS R12 R0 K17 ["_handles"]
  GETTABLEKS R11 R12 K21 ["Top"]
  GETTABLEKS R13 R0 K17 ["_handles"]
  GETTABLEKS R12 R13 K22 ["Bottom"]
  GETTABLEKS R14 R0 K17 ["_handles"]
  GETTABLEKS R13 R14 K23 ["Center"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R8 K25 ["Adornee"]
  SETTABLEKS R6 R8 K26 ["Radius"]
  GETUPVAL R15 0
  SUB R14 R6 R15
  SETTABLEKS R14 R8 K27 ["InnerRadius"]
  SETTABLEKS R1 R8 K28 ["Visible"]
  SETTABLEKS R5 R8 K29 ["Color3"]
  SETTABLEKS R2 R9 K30 ["Height"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R9 K25 ["Adornee"]
  SETTABLEKS R1 R9 K28 ["Visible"]
  SETTABLEKS R5 R9 K29 ["Color3"]
  SETTABLEKS R2 R10 K30 ["Height"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R10 K25 ["Adornee"]
  SETTABLEKS R1 R10 K28 ["Visible"]
  SETTABLEKS R5 R10 K29 ["Color3"]
  SETTABLEKS R2 R11 K30 ["Height"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R11 K25 ["Adornee"]
  SETTABLEKS R1 R11 K28 ["Visible"]
  SETTABLEKS R5 R11 K29 ["Color3"]
  SETTABLEKS R2 R12 K30 ["Height"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R12 K25 ["Adornee"]
  SETTABLEKS R1 R12 K28 ["Visible"]
  SETTABLEKS R5 R12 K29 ["Color3"]
  SETTABLEKS R2 R13 K30 ["Height"]
  GETTABLEKS R14 R0 K24 ["_adornee"]
  SETTABLEKS R14 R13 K25 ["Adornee"]
  SETTABLEKS R1 R13 K28 ["Visible"]
  SETTABLEKS R5 R13 K29 ["Color3"]
  GETUPVAL R17 1
  GETTABLEKS R19 R0 K4 ["_light"]
  GETTABLEKS R18 R19 K31 ["Face"]
  GETTABLE R16 R17 R18
  MOVE R17 R6
  MOVE R18 R2
  MOVE R19 R7
  MOVE R20 R4
  NAMECALL R14 R0 K32 ["_setCFrameValues"]
  CALL R14 6 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_handlesFolder"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K4 ["_light"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADK R2 K5 ["pooled"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_light"]
  NAMECALL R1 R0 K8 ["_removeListeners"]
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R3 R1
  LOADK R4 K0 ["Can't adorn nil"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_light"]
  NOT R3 R4
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Wireframe already adorned"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  SETTABLEKS R1 R0 K3 ["_light"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R1 K6 ["name"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R0 K8 ["_guidesFolder"]
  SETTABLEKS R3 R2 K9 ["Parent"]
  GETTABLEKS R2 R1 K9 ["Parent"]
  JUMPIFNOT R2 [+16]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R2 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R2 K9 ["Parent"]
  SETTABLEKS R3 R0 K12 ["_adornee"]
  GETTABLEKS R3 R2 K13 ["CFrame"]
  SETTABLEKS R3 R0 K14 ["_offset"]
  SETTABLEKS R2 R0 K15 ["_parent"]
  JUMP [+4]
  SETTABLEKS R2 R0 K12 ["_adornee"]
  SETTABLEKS R2 R0 K15 ["_parent"]
  NAMECALL R3 R0 K16 ["_setListeners"]
  CALL R3 1 0
  RETURN R0 1

PROTO_4:
  NAMECALL R1 R0 K0 ["_removeHandles"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_removeListeners"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_handlesFolder"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_handlesFolder"]
  RETURN R0 0

PROTO_5:
  SETTABLEKS R1 R0 K0 ["_guidesFolder"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_light"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  GETIMPORT R2 K4 [CFrame.new]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K6 [Vector3.new]
  CALL R3 0 1
  CALL R2 1 1
  JUMPIF R1 [+2]
  LOADB R3 0
  RETURN R3 1
  FASTCALL2K ASSERT R1 K7 [+5]
  MOVE R4 R1
  LOADK R5 K7 ["Cone Wireframe should have valid Adornee."]
  GETIMPORT R3 K9 [assert]
  CALL R3 2 0
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+23]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R1 R3 K1 ["Parent"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R2 R3 K2 ["CFrame"]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R1 K2 ["CFrame"]
  MUL R2 R3 R2
  GETTABLEKS R1 R1 K1 ["Parent"]
  JUMPBACK [-11]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+10]
  LOADK R5 K12 ["BasePart"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  NAMECALL R3 R0 K13 ["_removeHandles"]
  CALL R3 1 0
  LOADB R3 0
  RETURN R3 1
  SETTABLEKS R1 R0 K14 ["_adornee"]
  SETTABLEKS R2 R0 K15 ["_offset"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  SETTABLEKS R3 R0 K16 ["_parent"]
  LOADB R3 1
  RETURN R3 1

PROTO_7:
  GETTABLEKS R6 R0 K0 ["_handles"]
  JUMPIFNOT R6 [+128]
  DIVK R6 R2 K1 [2]
  DIVK R7 R4 K1 [2]
  DIVK R8 R3 K1 [2]
  DIVK R9 R5 K1 [2]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K2 ["Spot"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R14 K6 [CFrame.new]
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R4
  CALL R14 3 1
  MUL R13 R1 R14
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K7 ["Left"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R15 K6 [CFrame.new]
  MOVE R16 R6
  LOADN R17 0
  MOVE R18 R7
  CALL R15 3 1
  MUL R14 R1 R15
  GETIMPORT R15 K9 [CFrame.Angles]
  LOADN R16 0
  MOVE R17 R9
  LOADN R18 0
  CALL R15 3 1
  MUL R13 R14 R15
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K10 ["Right"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R15 K6 [CFrame.new]
  MINUS R16 R6
  LOADN R17 0
  MOVE R18 R7
  CALL R15 3 1
  MUL R14 R1 R15
  GETIMPORT R15 K9 [CFrame.Angles]
  LOADN R16 0
  MINUS R17 R9
  LOADN R18 0
  CALL R15 3 1
  MUL R13 R14 R15
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K11 ["Top"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R15 K6 [CFrame.new]
  LOADN R16 0
  MOVE R17 R6
  MOVE R18 R7
  CALL R15 3 1
  MUL R14 R1 R15
  GETIMPORT R15 K9 [CFrame.Angles]
  MINUS R16 R9
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  MUL R13 R14 R15
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K12 ["Bottom"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R15 K6 [CFrame.new]
  LOADN R16 0
  MINUS R17 R6
  MOVE R18 R7
  CALL R15 3 1
  MUL R14 R1 R15
  GETIMPORT R15 K9 [CFrame.Angles]
  MOVE R16 R9
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  MUL R13 R14 R15
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  GETTABLEKS R11 R0 K0 ["_handles"]
  GETTABLEKS R10 R11 K13 ["Center"]
  GETTABLEKS R12 R0 K3 ["_offset"]
  GETIMPORT R14 K6 [CFrame.new]
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R8
  CALL R14 3 1
  MUL R13 R1 R14
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K4 ["CFrame"]
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["CylinderHandleAdornment"]
  CALL R1 1 1
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["Transparency"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K5 ["Height"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["Transparency"]
  GETTABLEKS R2 R0 K6 ["_handlesFolder"]
  SETTABLEKS R2 R1 K7 ["Parent"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  GETUPVAL R4 1
  DIVK R3 R4 K8 [2]
  SETTABLEKS R3 R2 K9 ["Radius"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K4 ["Transparency"]
  GETTABLEKS R3 R0 K6 ["_handlesFolder"]
  SETTABLEKS R3 R2 K7 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  GETUPVAL R5 1
  DIVK R4 R5 K8 [2]
  SETTABLEKS R4 R3 K9 ["Radius"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K4 ["Transparency"]
  GETTABLEKS R4 R0 K6 ["_handlesFolder"]
  SETTABLEKS R4 R3 K7 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["CylinderHandleAdornment"]
  CALL R4 1 1
  GETUPVAL R6 1
  DIVK R5 R6 K8 [2]
  SETTABLEKS R5 R4 K9 ["Radius"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K4 ["Transparency"]
  GETTABLEKS R5 R0 K6 ["_handlesFolder"]
  SETTABLEKS R5 R4 K7 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K3 ["CylinderHandleAdornment"]
  CALL R5 1 1
  GETUPVAL R7 1
  DIVK R6 R7 K8 [2]
  SETTABLEKS R6 R5 K9 ["Radius"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K4 ["Transparency"]
  GETTABLEKS R6 R0 K6 ["_handlesFolder"]
  SETTABLEKS R6 R5 K7 ["Parent"]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["CylinderHandleAdornment"]
  CALL R6 1 1
  GETUPVAL R8 1
  DIVK R7 R8 K8 [2]
  SETTABLEKS R7 R6 K9 ["Radius"]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K4 ["Transparency"]
  GETTABLEKS R7 R0 K6 ["_handlesFolder"]
  SETTABLEKS R7 R6 K7 ["Parent"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R1 R7 K11 ["Spot"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R2 R7 K12 ["Left"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R3 R7 K13 ["Right"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R4 R7 K14 ["Top"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R5 R7 K15 ["Bottom"]
  GETTABLEKS R7 R0 K10 ["_handles"]
  SETTABLEKS R6 R7 K16 ["Center"]
  LOADB R7 1
  SETTABLEKS R7 R0 K17 ["_handlesPresent"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_handles"]
  JUMPIFNOT R1 [+48]
  GETTABLEKS R1 R0 K1 ["_handlesPresent"]
  JUMPIFNOT R1 [+45]
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K2 ["Spot"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K4 ["Left"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K5 ["Right"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K6 ["Top"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K7 ["Bottom"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K8 ["Center"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["_handlesPresent"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_removeListeners"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["_setListeners"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIF R1 [+11]
  GETTABLEKS R2 R0 K1 ["_light"]
  GETTABLEKS R1 R2 K2 ["Changed"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K4 ["_attachmentListeners"]
  JUMPIF R1 [+51]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+44]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["_attachmentListeners"]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R4 K6 ["Attachment"]
  NAMECALL R2 R1 K7 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+33]
  GETTABLEKS R3 R0 K4 ["_attachmentListeners"]
  LOADK R6 K8 ["CFrame"]
  NAMECALL R4 R1 K9 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K4 ["_attachmentListeners"]
  LOADK R6 K13 ["Parent"]
  NAMECALL R4 R1 K9 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R1 R1 K13 ["Parent"]
  JUMPBACK [-38]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_listener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K2 ["_attachmentListeners"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K2 ["_attachmentListeners"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K1 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_attachmentListeners"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K7 ["Utility"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K8 ["Constants"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  GETIMPORT R5 K12 [Enum.NormalId.Back]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K19 [{1, 0, 0}]
  LOADK R9 K20 [{0, 1, 0}]
  LOADK R10 K21 [{0, 0, 1}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K23 [Enum.NormalId.Front]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K24 [{-1, 0, 0}]
  LOADK R9 K20 [{0, 1, 0}]
  LOADK R10 K25 [{0, 0, -1}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K27 [Enum.NormalId.Right]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K25 [{0, 0, -1}]
  LOADK R9 K20 [{0, 1, 0}]
  LOADK R10 K19 [{1, 0, 0}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K29 [Enum.NormalId.Left]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K21 [{0, 0, 1}]
  LOADK R9 K20 [{0, 1, 0}]
  LOADK R10 K24 [{-1, 0, 0}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K31 [Enum.NormalId.Bottom]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K19 [{1, 0, 0}]
  LOADK R9 K21 [{0, 0, 1}]
  LOADK R10 K32 [{0, -1, 0}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K34 [Enum.NormalId.Top]
  GETIMPORT R6 K15 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 0 1
  LOADK R8 K19 [{1, 0, 0}]
  LOADK R9 K25 [{0, 0, -1}]
  LOADK R10 K20 [{0, 1, 0}]
  CALL R6 4 1
  SETTABLE R6 R4 R5
  GETTABLEKS R5 R3 K35 ["THICKNESS"]
  GETTABLEKS R6 R3 K36 ["TRANSPARENCY"]
  NEWTABLE R7 16 0
  SETTABLEKS R7 R7 K37 ["__index"]
  DUPCLOSURE R8 K38 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K17 ["new"]
  DUPCLOSURE R8 K39 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K40 ["render"]
  DUPCLOSURE R8 K41 [PROTO_2]
  SETTABLEKS R8 R7 K42 ["pool"]
  DUPCLOSURE R8 K43 [PROTO_3]
  SETTABLEKS R8 R7 K44 ["adorn"]
  DUPCLOSURE R8 K45 [PROTO_4]
  SETTABLEKS R8 R7 K46 ["destroy"]
  DUPCLOSURE R8 K47 [PROTO_5]
  SETTABLEKS R8 R7 K48 ["setGuidesFolder"]
  DUPCLOSURE R8 K49 [PROTO_6]
  SETTABLEKS R8 R7 K50 ["_setAncestry"]
  DUPCLOSURE R8 K51 [PROTO_7]
  SETTABLEKS R8 R7 K52 ["_setCFrameValues"]
  DUPCLOSURE R8 K53 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K54 ["_setHandles"]
  DUPCLOSURE R8 K55 [PROTO_9]
  SETTABLEKS R8 R7 K56 ["_removeHandles"]
  DUPCLOSURE R8 K57 [PROTO_13]
  SETTABLEKS R8 R7 K58 ["_setListeners"]
  DUPCLOSURE R8 K59 [PROTO_14]
  SETTABLEKS R8 R7 K60 ["_removeListeners"]
  RETURN R7 1
