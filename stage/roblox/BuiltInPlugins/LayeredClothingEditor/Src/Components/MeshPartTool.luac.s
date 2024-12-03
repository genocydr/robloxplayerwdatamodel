PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["EditingItemContext"]
  NAMECALL R2 R2 K2 ["getItem"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["AccessoryTypeInfo"]
  GETTABLEKS R6 R3 K4 ["Name"]
  NAMECALL R4 R2 K5 ["FindFirstChild"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K2 ["getItem"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["Get"]
  CALL R2 1 1
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  JUMPIFNOTEQ R7 R1 [+3]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R3 2 [-5]
  LOADB R3 0
  RETURN R3 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["placeAndScaleItem"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["selectMeshPart"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["editingItemIsSelected"]
  CALL R1 0 1
  JUMPIF R1 [+31]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["active"]
  JUMPIFNOT R2 [+27]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["deactivate"]
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["ResetWaypoints"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["SetControlsPanelBlockerMessage"]
  GETTABLEKS R3 R0 K6 ["Localization"]
  LOADK R5 K7 ["Editor"]
  LOADK R6 K8 ["ResumeEditingRigid"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 -1
  CALL R2 -1 0
  GETTABLEKS R2 R0 K10 ["SetControlsPanelBlockerActivity"]
  LOADB R3 1
  CALL R2 1 0
  GETTABLEKS R2 R0 K11 ["SetWorkspacePreviewSelectionEnabled"]
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOT R1 [+20]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["active"]
  JUMPIF R2 [+16]
  GETUPVAL R2 0
  NAMECALL R2 R2 K12 ["activate"]
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["ResetWaypoints"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K10 ["SetControlsPanelBlockerActivity"]
  LOADB R3 0
  CALL R2 1 0
  GETTABLEKS R2 R0 K11 ["SetWorkspacePreviewSelectionEnabled"]
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K2 ["getItem"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R2 K3 ["Set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Analytics"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["FirstAction"]
  JUMPIF R1 [+16]
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["ACTIONS"]
  GETTABLEKS R2 R3 K4 ["AdjustAccessory"]
  SETTABLEKS R2 R1 K2 ["FirstAction"]
  LOADK R3 K2 ["FirstAction"]
  NAMECALL R1 R0 K5 ["getHandler"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["FirstAction"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["placeAndScaleItem"]
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R0 K2 ["EditingItemContext"]
  NAMECALL R2 R2 K3 ["getItem"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["AccessoryTypeInfo"]
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R1 K5 ["matchingAttachment"]
  GETTABLEKS R7 R3 K6 ["Name"]
  NAMECALL R5 R2 K7 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+1]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R6 R4 K8 ["WorldCFrame"]
  NAMECALL R8 R6 K9 ["inverse"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K10 ["CFrame"]
  MUL R7 R8 R9
  NAMECALL R7 R7 K9 ["inverse"]
  CALL R7 1 1
  SETTABLEKS R7 R5 K10 ["CFrame"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K11 ["SetAttachmentPoint"]
  DUPTABLE R8 K14 [{"ItemCFrame", "AttachmentCFrame"}]
  NAMECALL R10 R6 K9 ["inverse"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K10 ["CFrame"]
  MUL R9 R10 R11
  SETTABLEKS R9 R8 K12 ["ItemCFrame"]
  GETTABLEKS R9 R5 K10 ["CFrame"]
  SETTABLEKS R9 R8 K13 ["AttachmentCFrame"]
  CALL R7 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["isLegacyAccessory"]
  MOVE R8 R2
  CALL R7 1 1
  JUMPIFNOT R7 [+11]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["SetMeshScale"]
  GETUPVAL R8 2
  MOVE R10 R2
  NAMECALL R8 R8 K17 ["getSpecialMeshScale"]
  CALL R8 2 -1
  CALL R7 -1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K18 ["SetItemSize"]
  GETTABLEKS R8 R2 K19 ["Size"]
  CALL R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K20 ["VerifyBounds"]
  MOVE R8 R2
  GETUPVAL R9 0
  NAMECALL R9 R9 K21 ["getHandleAttachment"]
  CALL R9 1 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["EditingItemContext"]
  NAMECALL R0 R0 K2 ["getItem"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["AccessoryTypeInfo"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+55]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["CFrameChanged"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["CFrameChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["CFrameChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["SizeChanged"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["SizeChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["SizeChanged"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETTABLEKS R4 R1 K7 ["Name"]
  NAMECALL R2 R0 K8 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K9 ["Parent"]
  GETTABLEKS R5 R1 K7 ["Name"]
  NAMECALL R2 R2 K10 ["findAvatarAttachmentByName"]
  CALL R2 3 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  DUPTABLE R5 K12 [{"matchingAttachment"}]
  SETTABLEKS R2 R5 K11 ["matchingAttachment"]
  NAMECALL R3 R3 K13 ["setState"]
  CALL R3 2 0
  JUMP [+60]
  JUMPIF R0 [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["CFrameChanged"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["CFrameChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["CFrameChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["SizeChanged"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["SizeChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["SizeChanged"]
  RETURN R0 0
  GETTABLEKS R4 R1 K7 ["Name"]
  NAMECALL R2 R0 K8 ["FindFirstChild"]
  CALL R2 2 1
  LOADK R5 K14 ["Weld"]
  NAMECALL R3 R0 K15 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K16 ["Part1"]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R7 R2 K7 ["Name"]
  NAMECALL R5 R4 K8 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  DUPTABLE R8 K12 [{"matchingAttachment"}]
  SETTABLEKS R5 R8 K11 ["matchingAttachment"]
  NAMECALL R6 R6 K13 ["setState"]
  CALL R6 2 0
  GETUPVAL R2 0
  LOADK R5 K17 ["CFrame"]
  NAMECALL R3 R0 K18 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["adjustItem"]
  NAMECALL R3 R3 K20 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["CFrameChanged"]
  GETUPVAL R2 0
  LOADK R5 K21 ["Size"]
  NAMECALL R3 R0 K18 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["adjustItem"]
  NAMECALL R3 R3 K20 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["SizeChanged"]
  GETUPVAL R2 3
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  NAMECALL R2 R2 K22 ["Set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"matchingAttachment"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["matchingAttachment"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K3 ["editingItemIsSelected"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onUndoRedo"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K5 ["onSelectionChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K6 ["selectMeshPart"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K7 ["adjustItem"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K8 ["placeAndScaleItem"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K9 ["onEditingItemChanged"]
  RETURN R0 0

PROTO_9:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["active"]
  GETTABLEKS R1 R0 K1 ["onEditingItemChanged"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["OnRedo"]
  GETTABLEKS R3 R0 K3 ["onUndoRedo"]
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["OnRedo"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["OnUndo"]
  GETTABLEKS R3 R0 K3 ["onUndoRedo"]
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["OnUndo"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onEditingItemChanged"]
  CALL R1 0 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["EditingItemContext"]
  NAMECALL R2 R2 K2 ["getEditingItemChangedSignal"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["EditingItemChanged"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K5 ["activate"]
  CALL R2 1 0
  JUMP [+23]
  GETTABLEKS R2 R0 K6 ["onEditingItemChanged"]
  CALL R2 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["OnRedo"]
  GETTABLEKS R4 R0 K8 ["placeAndScaleItem"]
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["OnRedo"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["OnUndo"]
  GETTABLEKS R4 R0 K8 ["placeAndScaleItem"]
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K9 ["OnUndo"]
  GETTABLEKS R2 R1 K10 ["Signals"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["SIGNAL_KEYS"]
  GETTABLEKS R4 R5 K12 ["PluginWindowFocused"]
  NAMECALL R2 R2 K13 ["get"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K14 ["selectMeshPart"]
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K15 ["OnPluginWindowFocusedHandle"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K16 ["SelectionChanged"]
  GETTABLEKS R4 R0 K17 ["onSelectionChanged"]
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K18 ["SelectionChangedHandle"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["matchingAttachment"]
  GETTABLEKS R4 R2 K1 ["matchingAttachment"]
  JUMPIFEQ R3 R4 [+4]
  GETTABLEKS R3 R0 K2 ["placeAndScaleItem"]
  CALL R3 0 0
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+16]
  GETTABLEKS R4 R0 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["IsControlsPanelBlockerActive"]
  GETTABLEKS R4 R1 K4 ["IsControlsPanelBlockerActive"]
  JUMPIFEQ R3 R4 [+9]
  GETTABLEKS R4 R0 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["IsControlsPanelBlockerActive"]
  JUMPIF R3 [+3]
  GETTABLEKS R3 R0 K5 ["selectMeshPart"]
  CALL R3 0 0
  RETURN R0 0

PROTO_13:
  NEWTABLE R6 0 0
  GETIMPORT R7 K1 [ipairs]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K2 ["CUBE_EDGES"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEN R15 R11 1
  MUL R14 R15 R2
  ADD R13 R14 R4
  ADD R12 R13 R3
  GETTABLEN R16 R11 2
  MUL R15 R16 R2
  ADD R14 R15 R4
  ADD R13 R14 R3
  SUB R15 R12 R13
  GETTABLEKS R14 R15 K3 ["Magnitude"]
  GETIMPORT R15 K6 [CFrame.new]
  LOADK R16 K7 [{0, 0, 0}]
  SUB R18 R13 R12
  GETTABLEKS R17 R18 K8 ["Unit"]
  CALL R15 2 1
  ADD R15 R15 R12
  MOVE R17 R6
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  LOADK R19 K10 ["LineHandleAdornment"]
  DUPTABLE R20 K19 [{"Length", "CFrame", "Adornee", "Transparency", "Color3", "Thickness", "ZIndex", "Archivable", "AlwaysOnTop"}]
  SETTABLEKS R14 R20 K11 ["Length"]
  SETTABLEKS R15 R20 K4 ["CFrame"]
  SETTABLEKS R5 R20 K12 ["Adornee"]
  LOADN R21 0
  SETTABLEKS R21 R20 K13 ["Transparency"]
  GETTABLEKS R21 R1 K20 ["LineColor"]
  SETTABLEKS R21 R20 K14 ["Color3"]
  GETTABLEKS R21 R1 K21 ["LineThickness"]
  SETTABLEKS R21 R20 K15 ["Thickness"]
  LOADN R21 1
  SETTABLEKS R21 R20 K16 ["ZIndex"]
  LOADB R21 0
  SETTABLEKS R21 R20 K17 ["Archivable"]
  LOADB R21 0
  SETTABLEKS R21 R20 K18 ["AlwaysOnTop"]
  CALL R18 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K24 [table.insert]
  CALL R16 -1 0
  FORGLOOP R7 2 [inext] [-57]
  RETURN R6 1

PROTO_14:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R6 R5 K1 ["Stylizer"]
  GETTABLEKS R8 R5 K2 ["InBounds"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R6 K3 ["InBoundsColor"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R6 K4 ["OutBoundsColor"]
  MOVE R10 R6
  MOVE R11 R1
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R4
  NAMECALL R8 R0 K5 ["renderLinks"]
  CALL R8 6 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  LOADK R10 K7 ["BoxHandleAdornment"]
  DUPTABLE R11 K14 [{"Adornee", "CFrame", "Size", "Transparency", "Color3", "Archivable"}]
  SETTABLEKS R4 R11 K8 ["Adornee"]
  GETIMPORT R12 K16 [CFrame.new]
  ADD R13 R3 R2
  CALL R12 1 1
  SETTABLEKS R12 R11 K9 ["CFrame"]
  SETTABLEKS R1 R11 K10 ["Size"]
  GETTABLEKS R12 R6 K11 ["Transparency"]
  SETTABLEKS R12 R11 K11 ["Transparency"]
  SETTABLEKS R7 R11 K12 ["Color3"]
  LOADB R12 0
  SETTABLEKS R12 R11 K13 ["Archivable"]
  MOVE R12 R8
  CALL R9 3 -1
  RETURN R9 -1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["AccessoryTypeInfo"]
  GETTABLEKS R4 R2 K3 ["matchingAttachment"]
  JUMPIFNOT R4 [+1]
  JUMPIF R3 [+2]
  LOADNIL R5
  RETURN R5 1
  GETTABLEKS R5 R3 K4 ["Bounds"]
  GETTABLEKS R6 R3 K5 ["Offset"]
  NAMECALL R7 R0 K6 ["getHandleAttachment"]
  CALL R7 1 1
  JUMPIF R7 [+2]
  LOADNIL R8
  RETURN R8 1
  GETTABLEKS R8 R4 K7 ["Parent"]
  GETTABLEKS R11 R7 K8 ["WorldCFrame"]
  GETTABLEKS R12 R8 K9 ["CFrame"]
  NAMECALL R12 R12 K10 ["inverse"]
  CALL R12 1 1
  MUL R10 R11 R12
  GETTABLEKS R9 R10 K11 ["Position"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["Portal"]
  DUPTABLE R12 K15 [{"target"}]
  GETUPVAL R13 1
  SETTABLEKS R13 R12 K14 ["target"]
  DUPTABLE R13 K17 [{"BoundingBox"}]
  MOVE R16 R5
  MOVE R17 R6
  MOVE R18 R9
  MOVE R19 R8
  NAMECALL R14 R0 K18 ["renderBorderedBox"]
  CALL R14 5 1
  SETTABLEKS R14 R13 K16 ["BoundingBox"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_16:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["active"]
  GETTABLEKS R1 R0 K1 ["CFrameChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["CFrameChanged"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["CFrameChanged"]
  GETTABLEKS R1 R0 K3 ["SizeChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["SizeChanged"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["SizeChanged"]
  GETTABLEKS R1 R0 K4 ["OnRedo"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["OnRedo"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["OnRedo"]
  GETTABLEKS R1 R0 K5 ["OnUndo"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K5 ["OnUndo"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["OnUndo"]
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["EditingItemChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["EditingItemChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["EditingItemChanged"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["deactivate"]
  CALL R1 1 0
  JUMP [+44]
  GETTABLEKS R1 R0 K3 ["CFrameChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["CFrameChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["CFrameChanged"]
  GETTABLEKS R1 R0 K4 ["SizeChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["SizeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["SizeChanged"]
  GETTABLEKS R1 R0 K5 ["OnRedo"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K5 ["OnRedo"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["OnRedo"]
  GETTABLEKS R1 R0 K6 ["OnUndo"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K6 ["OnUndo"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["OnUndo"]
  GETTABLEKS R1 R0 K7 ["OnPluginWindowFocusedHandle"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["OnPluginWindowFocusedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["OnPluginWindowFocusedHandle"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K8 ["SelectionChangedHandle"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K8 ["SelectionChangedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["SelectionChangedHandle"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["selectItem"]
  GETTABLEKS R3 R0 K1 ["controlsPanelBlocker"]
  DUPTABLE R4 K5 [{"AccessoryTypeInfo", "InBounds", "IsControlsPanelBlockerActive"}]
  GETTABLEKS R5 R2 K6 ["accessoryTypeInfo"]
  SETTABLEKS R5 R4 K2 ["AccessoryTypeInfo"]
  GETTABLEKS R5 R2 K7 ["inBounds"]
  SETTABLEKS R5 R4 K3 ["InBounds"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K8 ["isActive"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K4 ["IsControlsPanelBlockerActive"]
  RETURN R4 1

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_26:
  DUPTABLE R1 K7 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage", "SetWorkspacePreviewSelectionEnabled", "SetAttachmentPoint", "SetItemSize", "SetMeshScale", "VerifyBounds"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetControlsPanelBlockerActivity"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["SetControlsPanelBlockerMessage"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["SetWorkspacePreviewSelectionEnabled"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["SetAttachmentPoint"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["SetItemSize"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K5 ["SetMeshScale"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K6 ["VerifyBounds"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ChangeHistoryService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K11 ["Packages"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K14 ["AvatarToolsShared"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R8 R7 K17 ["Constants"]
  GETTABLEKS R9 R7 K18 ["AccessoryUtil"]
  GETTABLEKS R10 R7 K19 ["ItemCharacteristics"]
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R3 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Actions"]
  GETTABLEKS R12 R13 K22 ["SetAttachmentPoint"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R15 R3 K20 ["Src"]
  GETTABLEKS R14 R15 K21 ["Actions"]
  GETTABLEKS R13 R14 K23 ["SetItemSize"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R16 R3 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Actions"]
  GETTABLEKS R14 R15 K24 ["SetMeshScale"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R3 K20 ["Src"]
  GETTABLEKS R16 R17 K25 ["Thunks"]
  GETTABLEKS R15 R16 K26 ["VerifyBounds"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R18 R3 K20 ["Src"]
  GETTABLEKS R17 R18 K21 ["Actions"]
  GETTABLEKS R16 R17 K27 ["SetControlsPanelBlockerActivity"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R19 R3 K20 ["Src"]
  GETTABLEKS R18 R19 K21 ["Actions"]
  GETTABLEKS R17 R18 K28 ["SetControlsPanelBlockerMessage"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R20 R3 K20 ["Src"]
  GETTABLEKS R19 R20 K21 ["Actions"]
  GETTABLEKS R18 R19 K29 ["SetWorkspacePreviewSelectionEnabled"]
  CALL R17 1 1
  GETTABLEKS R19 R6 K30 ["Contexts"]
  GETTABLEKS R18 R19 K31 ["EditingItemContext"]
  GETTABLEKS R20 R6 K30 ["Contexts"]
  GETTABLEKS R19 R20 K32 ["Signals"]
  GETIMPORT R20 K10 [require]
  GETTABLEKS R23 R3 K20 ["Src"]
  GETTABLEKS R22 R23 K15 ["Util"]
  GETTABLEKS R21 R22 K17 ["Constants"]
  CALL R20 1 1
  GETIMPORT R21 K10 [require]
  GETTABLEKS R24 R3 K20 ["Src"]
  GETTABLEKS R23 R24 K15 ["Util"]
  GETTABLEKS R22 R23 K33 ["AnalyticsGlobals"]
  CALL R21 1 1
  GETIMPORT R22 K10 [require]
  GETTABLEKS R24 R3 K11 ["Packages"]
  GETTABLEKS R23 R24 K34 ["Framework"]
  CALL R22 1 1
  GETTABLEKS R23 R22 K35 ["ContextServices"]
  GETTABLEKS R24 R23 K36 ["withContext"]
  GETTABLEKS R26 R6 K37 ["Flags"]
  GETTABLEKS R25 R26 K38 ["GetFFlagAFTSelectHandleOnly"]
  GETTABLEKS R26 R4 K39 ["PureComponent"]
  LOADK R28 K40 ["MeshPartTool"]
  NAMECALL R26 R26 K41 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K42 [PROTO_0]
  SETTABLEKS R27 R26 K43 ["getHandleAttachment"]
  DUPCLOSURE R27 K44 [PROTO_8]
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R27 R26 K45 ["init"]
  DUPCLOSURE R27 K46 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K47 ["activate"]
  DUPCLOSURE R27 K48 [PROTO_11]
  CAPTURE VAL R25
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R1
  SETTABLEKS R27 R26 K49 ["didMount"]
  DUPCLOSURE R27 K50 [PROTO_12]
  CAPTURE VAL R25
  SETTABLEKS R27 R26 K51 ["didUpdate"]
  DUPCLOSURE R27 K52 [PROTO_13]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R27 R26 K53 ["renderLinks"]
  DUPCLOSURE R27 K54 [PROTO_14]
  CAPTURE VAL R4
  SETTABLEKS R27 R26 K55 ["renderBorderedBox"]
  DUPCLOSURE R27 K56 [PROTO_15]
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R27 R26 K57 ["render"]
  DUPCLOSURE R27 K58 [PROTO_16]
  SETTABLEKS R27 R26 K59 ["deactivate"]
  DUPCLOSURE R27 K60 [PROTO_17]
  CAPTURE VAL R25
  SETTABLEKS R27 R26 K61 ["willUnmount"]
  MOVE R27 R24
  DUPTABLE R28 K65 [{"Analytics", "Stylizer", "Localization", "EditingItemContext", "Signals"}]
  GETTABLEKS R29 R23 K62 ["Analytics"]
  SETTABLEKS R29 R28 K62 ["Analytics"]
  GETTABLEKS R29 R23 K63 ["Stylizer"]
  SETTABLEKS R29 R28 K63 ["Stylizer"]
  MOVE R30 R25
  CALL R30 0 1
  JUMPIFNOT R30 [+3]
  GETTABLEKS R29 R23 K64 ["Localization"]
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K64 ["Localization"]
  SETTABLEKS R18 R28 K31 ["EditingItemContext"]
  SETTABLEKS R19 R28 K32 ["Signals"]
  CALL R27 1 1
  MOVE R28 R26
  CALL R27 1 1
  MOVE R26 R27
  DUPCLOSURE R27 K66 [PROTO_18]
  CAPTURE VAL R25
  DUPCLOSURE R28 K67 [PROTO_26]
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  GETTABLEKS R29 R5 K68 ["connect"]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
