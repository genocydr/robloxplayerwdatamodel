PROTO_0:
  OR R3 R0 R1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Top-level annotations must be placed at a mouse position, and replies must have a parent."]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K6 ["WorkspaceAnnotation"]
  CALL R2 1 1
  GETUPVAL R3 0
  NAMECALL R3 R3 K7 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["AuthorId"]
  LOADK R5 K9 ["IsDraft"]
  LOADB R6 1
  NAMECALL R3 R2 K10 ["SetAttribute"]
  CALL R3 3 0
  LOADK R5 K11 ["Parent"]
  JUMPIFNOT R1 [+4]
  NAMECALL R6 R1 K12 ["GetStringUniqueId"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  NAMECALL R3 R2 K10 ["SetAttribute"]
  CALL R3 3 0
  JUMPIFNOT R0 [+9]
  GETTABLEKS R3 R0 K3 ["Instance"]
  SETTABLEKS R3 R2 K13 ["Adornee"]
  GETTABLEKS R5 R0 K14 ["Position"]
  NAMECALL R3 R2 K15 ["SetAdorneeOffsetFromAbsolutePosition"]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Mode"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R1 K0 ["Parent"]
  LOADNIL R4
  SETTABLEKS R4 R1 K0 ["Parent"]
  SETTABLEKS R3 R1 K0 ["Parent"]
  GETTABLEKS R4 R1 K1 ["Resolved"]
  JUMPIF R4 [+5]
  JUMPIFNOTEQKS R2 K2 [""] [+4]
  GETUPVAL R4 0
  MOVE R5 R1
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createAnnotation"]
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R4 2 0
  GETUPVAL R4 3
  GETUPVAL R5 4
  NAMECALL R5 R5 K4 ["GetAnnotationThreads"]
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetAnnotationThreads"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  JUMPIF R2 [+6]
  GETTABLEKS R3 R1 K0 ["Adornee"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["syncStandaloneAnnotation"]
  GETUPVAL R4 2
  MOVE R5 R1
  DUPTABLE R6 K3 [{"Resolved"}]
  SETTABLEKS R2 R6 K2 ["Resolved"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectionChanged"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Selected"]
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["Selected"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Mode"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PlacingNew"]
  JUMPIFNOTEQ R0 R1 [+25]
  GETUPVAL R0 2
  GETUPVAL R1 3
  CALL R0 1 1
  JUMPIFNOT R0 [+20]
  GETUPVAL R1 4
  MOVE R2 R0
  LOADNIL R3
  CALL R1 2 1
  GETUPVAL R2 5
  SETTABLEKS R1 R2 K2 ["current"]
  GETUPVAL R2 6
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 3
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K4 ["Icon"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["WritingNew"]
  SETTABLEKS R3 R2 K0 ["Mode"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 [""]
  SETTABLEKS R1 R0 K1 ["Icon"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 4
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 5
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 6
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetAnnotationThreads"]
  CALL R0 1 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R8 K1 ["IsDraft"]
  NAMECALL R6 R5 K2 ["GetAttribute"]
  CALL R6 2 1
  JUMPIF R6 [+15]
  GETTABLEKS R6 R5 K3 ["Resolved"]
  JUMPIF R6 [+6]
  GETTABLEKS R6 R5 K4 ["Adornee"]
  JUMPIFNOT R6 [+3]
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createAnnotation"]
  GETUPVAL R7 3
  MOVE R8 R5
  CALL R6 2 0
  FORGLOOP R1 2 [-21]
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 0
  LOADK R3 K6 ["Mode"]
  NAMECALL R1 R1 K7 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K8 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["AnnotationAdded"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["AnnotationDeleted"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["AnnotationResolved"]
  NEWCLOSURE R6 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R4 R4 K8 ["Connect"]
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K12 ["Selected"]
  NAMECALL R5 R5 K7 ["GetPropertyChangedSignal"]
  CALL R5 2 1
  NEWCLOSURE R7 P4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K13 ["Button1Down"]
  NEWCLOSURE R8 P5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U7
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U1
  NAMECALL R6 R6 K8 ["Connect"]
  CALL R6 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K14 ["Deactivation"]
  NEWCLOSURE R9 P6
  CAPTURE UPVAL U7
  NAMECALL R7 R7 K8 ["Connect"]
  CALL R7 2 1
  NEWCLOSURE R8 P7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Hovered"]
  GETUPVAL R1 1
  JUMPIFNOTEQ R0 R1 [+6]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["Selected"]
  RETURN R0 0
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Hovered"]
  SETTABLEKS R1 R0 K1 ["Selected"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["PlacingNew"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["createElement"]
  GETUPVAL R1 3
  CALL R0 1 -1
  RETURN R0 -1
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["WritingNew"]
  JUMPIFNOTEQ R0 R1 [+41]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIFNOT R0 [+34]
  GETIMPORT R1 K5 [workspace]
  GETTABLEKS R0 R1 K6 ["CurrentCamera"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["current"]
  NAMECALL R2 R2 K7 ["GetAbsolutePosition"]
  CALL R2 1 -1
  NAMECALL R0 R0 K8 ["WorldToScreenPoint"]
  CALL R0 -1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 5
  DUPTABLE R3 K11 [{"Annotation", "Position"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["current"]
  SETTABLEKS R4 R3 K9 ["Annotation"]
  GETIMPORT R4 K14 [UDim2.fromOffset]
  GETTABLEKS R5 R0 K15 ["X"]
  GETTABLEKS R6 R0 K16 ["Y"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["Position"]
  CALL R1 2 -1
  RETURN R1 -1
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R0 6
  JUMPIFNOT R0 [+80]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K17 ["None"]
  JUMPIFNOTEQ R0 R1 [+75]
  GETUPVAL R1 6
  FASTCALL2K ASSERT R1 K18 [+4]
  LOADK R2 K18 ["A selected annotation must exist."]
  GETIMPORT R0 K20 [assert]
  CALL R0 2 0
  LOADNIL R0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K21 ["Adornee"]
  JUMPIFNOT R1 [+13]
  GETIMPORT R2 K5 [workspace]
  GETTABLEKS R1 R2 K6 ["CurrentCamera"]
  GETUPVAL R3 6
  NAMECALL R3 R3 K7 ["GetAbsolutePosition"]
  CALL R3 1 -1
  NAMECALL R1 R1 K8 ["WorldToScreenPoint"]
  CALL R1 -1 1
  MOVE R0 R1
  JUMP [+22]
  GETIMPORT R1 K24 [Vector2.new]
  GETIMPORT R6 K5 [workspace]
  GETTABLEKS R5 R6 K6 ["CurrentCamera"]
  GETTABLEKS R4 R5 K26 ["ViewportSize"]
  GETTABLEKS R3 R4 K15 ["X"]
  DIVK R2 R3 K25 [2]
  GETIMPORT R7 K5 [workspace]
  GETTABLEKS R6 R7 K6 ["CurrentCamera"]
  GETTABLEKS R5 R6 K26 ["ViewportSize"]
  GETTABLEKS R4 R5 K16 ["Y"]
  DIVK R3 R4 K25 [2]
  CALL R1 2 1
  MOVE R0 R1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 7
  DUPTABLE R3 K29 [{"Position", "Annotation", "DraftAnnotationInstance", "OnCancel"}]
  GETIMPORT R4 K14 [UDim2.fromOffset]
  GETTABLEKS R5 R0 K15 ["X"]
  GETTABLEKS R6 R0 K16 ["Y"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["Position"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K9 ["Annotation"]
  GETUPVAL R4 8
  SETTABLEKS R4 R3 K27 ["DraftAnnotationInstance"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U6
  SETTABLEKS R4 R3 K28 ["OnCancel"]
  CALL R1 2 1
  RETURN R1 1
  LOADNIL R0
  RETURN R0 1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Mode"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["useRef"]
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R8 2
  NAMECALL R8 R8 K3 ["use"]
  CALL R8 1 1
  NAMECALL R8 R8 K4 ["get"]
  CALL R8 1 1
  GETUPVAL R9 3
  NAMECALL R9 R9 K3 ["use"]
  CALL R9 1 1
  NAMECALL R9 R9 K4 ["get"]
  CALL R9 1 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["useEffect"]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R7
  NEWTABLE R12 0 0
  CALL R10 2 0
  NEWCLOSURE R10 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  CAPTURE VAL R7
  CAPTURE UPVAL U10
  CAPTURE VAL R5
  CAPTURE UPVAL U11
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K7 ["Frame"]
  DUPTABLE R13 K9 [{"BackgroundTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K8 ["BackgroundTransparency"]
  DUPTABLE R14 K11 [{"Element"}]
  MOVE R15 R10
  CALL R15 0 1
  SETTABLEKS R15 R14 K10 ["Element"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["CrossDMCommunication"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Edit"]
  GETTABLEKS R4 R2 K13 ["ContextServices"]
  GETTABLEKS R5 R4 K14 ["Mouse"]
  GETTABLEKS R6 R4 K15 ["Plugin"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K16 ["createAnnotationBillboard"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K10 ["Util"]
  GETTABLEKS R9 R10 K17 ["doSelectionRaycast"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K18 ["Enums"]
  GETTABLEKS R10 R11 K19 ["AnnotationEditingMode"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K20 ["CoreGuiComponents"]
  GETTABLEKS R11 R12 K21 ["TargetHighlight"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K22 ["Components"]
  GETTABLEKS R12 R13 K23 ["AddAnnotationPopup"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K22 ["Components"]
  GETTABLEKS R13 R14 K24 ["AnnotationPopover"]
  CALL R12 1 1
  GETIMPORT R13 K26 [game]
  LOADK R15 K27 ["StudioService"]
  NAMECALL R13 R13 K28 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K29 ["Types"]
  CALL R14 1 1
  GETIMPORT R15 K26 [game]
  LOADK R17 K30 ["AnnotationsService"]
  NAMECALL R15 R15 K28 ["GetService"]
  CALL R15 2 1
  DUPCLOSURE R16 K31 [PROTO_0]
  CAPTURE VAL R13
  DUPCLOSURE R17 K32 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  RETURN R17 1
