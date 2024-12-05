PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Active"}]
  GETTABLEKS R5 R1 K2 ["active"]
  SETTABLEKS R5 R4 K0 ["Active"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"AnimationFromVideoErroredOut"}]
  GETTABLEKS R5 R1 K2 ["animationFromVideoErroredOut"]
  SETTABLEKS R5 R4 K0 ["AnimationFromVideoErroredOut"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"AnimationFromVideoUploadStartTime"}]
  GETTABLEKS R5 R1 K2 ["animationFromVideoUploadStartTime"]
  SETTABLEKS R5 R4 K0 ["AnimationFromVideoUploadStartTime"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"AnimationImportProgress"}]
  GETTABLEKS R5 R1 K2 ["animationImportProgress"]
  SETTABLEKS R5 R4 K0 ["AnimationImportProgress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"AnimationImportStatus"}]
  GETTABLEKS R5 R1 K2 ["animationImportStatus"]
  SETTABLEKS R5 R4 K0 ["AnimationImportStatus"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"AutoFocusFaceEnabled"}]
  GETTABLEKS R5 R1 K2 ["autoFocusFaceEnabled"]
  SETTABLEKS R5 R4 K0 ["AutoFocusFaceEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"VisualizeBones"}]
  GETTABLEKS R5 R1 K2 ["visualizeBones"]
  SETTABLEKS R5 R4 K0 ["VisualizeBones"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"Clipboard", "ClipboardType"}]
  GETTABLEKS R5 R1 K3 ["clipboard"]
  SETTABLEKS R5 R4 K0 ["Clipboard"]
  GETTABLEKS R5 R1 K4 ["clipboardType"]
  SETTABLEKS R5 R4 K1 ["ClipboardType"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"CreatingAnimationFromVideo"}]
  GETTABLEKS R5 R1 K2 ["creatingAnimationFromVideo"]
  SETTABLEKS R5 R4 K0 ["CreatingAnimationFromVideo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"DefaultEulerAnglesOrder"}]
  GETTABLEKS R5 R1 K2 ["defaultEulerAnglesOrder"]
  SETTABLEKS R5 R4 K0 ["DefaultEulerAnglesOrder"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"DefaultRotationType"}]
  GETTABLEKS R5 R1 K2 ["defaultRotationType"]
  SETTABLEKS R5 R4 K0 ["DefaultRotationType"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"EditingLength"}]
  GETTABLEKS R5 R1 K2 ["editingLength"]
  SETTABLEKS R5 R4 K0 ["EditingLength"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"EditorMode", "EditorModeSwitchTime"}]
  GETTABLEKS R5 R1 K3 ["editorMode"]
  SETTABLEKS R5 R4 K0 ["EditorMode"]
  GETTABLEKS R5 R1 K4 ["editorModeSwitchTime"]
  SETTABLEKS R5 R4 K1 ["EditorModeSwitchTime"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"EventEditingTick"}]
  GETTABLEKS R5 R1 K2 ["eventEditingTick"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["EventEditingTick"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"FaceControlsEditorOpenedTimestamp"}]
  GETTABLEKS R5 R1 K0 ["FaceControlsEditorOpenedTimestamp"]
  SETTABLEKS R5 R4 K0 ["FaceControlsEditorOpenedTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"FrameRate"}]
  GETTABLEKS R5 R1 K2 ["frameRate"]
  SETTABLEKS R5 R4 K0 ["FrameRate"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_16:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"GridSpeed"}]
  GETTABLEKS R5 R1 K2 ["gridSpeed"]
  SETTABLEKS R5 R4 K0 ["GridSpeed"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"VisualizeGrid"}]
  GETTABLEKS R5 R1 K2 ["visualizeGrid"]
  SETTABLEKS R5 R4 K0 ["VisualizeGrid"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_18:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"haveToSetBackToNotLooping"}]
  GETTABLEKS R5 R1 K0 ["haveToSetBackToNotLooping"]
  SETTABLEKS R5 R4 K0 ["haveToSetBackToNotLooping"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_19:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"HorizontalScroll", "HorizontalZoom"}]
  GETTABLEKS R5 R1 K3 ["horizontalScroll"]
  SETTABLEKS R5 R4 K0 ["HorizontalScroll"]
  GETTABLEKS R5 R1 K4 ["horizontalZoom"]
  SETTABLEKS R5 R4 K1 ["HorizontalZoom"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_20:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"IKEnabled"}]
  GETTABLEKS R5 R1 K2 ["ikEnabled"]
  SETTABLEKS R5 R4 K0 ["IKEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_21:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"IKMode"}]
  GETTABLEKS R5 R1 K2 ["ikMode"]
  SETTABLEKS R5 R4 K0 ["IKMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_22:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"IKOpenedTimestamp"}]
  GETTABLEKS R5 R1 K2 ["iKOpenedTimestamp"]
  SETTABLEKS R5 R4 K0 ["IKOpenedTimestamp"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_23:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"inReviewState"}]
  GETTABLEKS R5 R1 K0 ["inReviewState"]
  SETTABLEKS R5 R4 K0 ["inReviewState"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_24:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"IsDirty"}]
  GETTABLEKS R5 R1 K2 ["isDirty"]
  SETTABLEKS R5 R4 K0 ["IsDirty"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_25:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"IsLegacyAnimSaves"}]
  GETTABLEKS R5 R1 K2 ["isLegacyAnimSaves"]
  SETTABLEKS R5 R4 K0 ["IsLegacyAnimSaves"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_26:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LastSelectedPath"}]
  GETTABLEKS R5 R1 K2 ["lastSelectedPath"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["LastSelectedPath"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_27:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LegacyAnimationInstances"}]
  GETTABLEKS R5 R1 K2 ["legacyAnimationInstances"]
  SETTABLEKS R5 R4 K0 ["LegacyAnimationInstances"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_28:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"MotorData"}]
  GETTABLEKS R5 R1 K2 ["motorData"]
  SETTABLEKS R5 R4 K0 ["MotorData"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_29:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PinnedParts"}]
  GETTABLEKS R5 R1 K2 ["pinnedParts"]
  SETTABLEKS R5 R4 K0 ["PinnedParts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_30:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PlaybackSpeed"}]
  GETTABLEKS R5 R1 K2 ["playbackSpeed"]
  SETTABLEKS R5 R4 K0 ["PlaybackSpeed"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_31:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PlaybackStartInfo"}]
  GETTABLEKS R5 R1 K2 ["playbackStartInfo"]
  SETTABLEKS R5 R4 K0 ["PlaybackStartInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_32:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Playhead"}]
  GETTABLEKS R5 R1 K2 ["playhead"]
  SETTABLEKS R5 R4 K0 ["Playhead"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_33:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PlayState"}]
  GETTABLEKS R5 R1 K2 ["playState"]
  SETTABLEKS R5 R4 K0 ["PlayState"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_34:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ReadOnly"}]
  GETTABLEKS R5 R1 K2 ["readOnly"]
  SETTABLEKS R5 R4 K0 ["ReadOnly"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_35:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ReduceKeyframesDialogMode"}]
  GETTABLEKS R5 R1 K2 ["reduceKeyframesDialogMode"]
  SETTABLEKS R5 R4 K0 ["ReduceKeyframesDialogMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_36:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"RightClickContextInfo"}]
  GETTABLEKS R5 R1 K2 ["rightClickContextInfo"]
  SETTABLEKS R5 R4 K0 ["RightClickContextInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_37:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"RootInstance"}]
  GETTABLEKS R5 R1 K2 ["rootInstance"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["RootInstance"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_38:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedEvents"}]
  GETTABLEKS R5 R1 K2 ["selected"]
  SETTABLEKS R5 R4 K0 ["SelectedEvents"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_39:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedKeyframes"}]
  GETTABLEKS R5 R1 K2 ["selected"]
  SETTABLEKS R5 R4 K0 ["SelectedKeyframes"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_40:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedTrackInstances"}]
  GETTABLEKS R5 R1 K2 ["selectedTrackInstances"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["SelectedTrackInstances"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_41:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedTracks"}]
  GETTABLEKS R5 R1 K2 ["selectedTracks"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["SelectedTracks"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_42:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ShowAsSeconds"}]
  GETTABLEKS R5 R1 K2 ["showAsSeconds"]
  SETTABLEKS R5 R4 K0 ["ShowAsSeconds"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_43:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ShowEvents"}]
  GETTABLEKS R5 R1 K2 ["showEvents"]
  SETTABLEKS R5 R4 K0 ["ShowEvents"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_44:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ShowFaceControlsEditorPanel"}]
  GETTABLEKS R5 R1 K2 ["showFaceControlsEditorPanel"]
  SETTABLEKS R5 R4 K0 ["ShowFaceControlsEditorPanel"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_45:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ShowTree"}]
  GETTABLEKS R5 R1 K2 ["showTree"]
  SETTABLEKS R5 R4 K0 ["ShowTree"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_46:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SnapMode"}]
  GETTABLEKS R5 R1 K2 ["snapMode"]
  SETTABLEKS R5 R4 K0 ["SnapMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_47:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"StartingPose"}]
  GETTABLEKS R5 R1 K2 ["startingPose"]
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["None"]
  SETTABLEKS R5 R4 K0 ["StartingPose"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_48:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SymmetryEnabled"}]
  GETTABLEKS R5 R1 K2 ["symmetryEnabled"]
  SETTABLEKS R5 R4 K0 ["SymmetryEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_49:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"TimelineUnit"}]
  GETTABLEKS R5 R1 K2 ["timelineUnit"]
  SETTABLEKS R5 R4 K0 ["TimelineUnit"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_50:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Tool"}]
  GETTABLEKS R5 R1 K2 ["tool"]
  SETTABLEKS R5 R4 K0 ["Tool"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_51:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"TopTrackIndex"}]
  GETTABLEKS R5 R1 K2 ["topTrackIndex"]
  SETTABLEKS R5 R4 K0 ["TopTrackIndex"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_52:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Tracks", "UnusedTracks", "UnusedFacs"}]
  GETTABLEKS R5 R1 K4 ["tracks"]
  SETTABLEKS R5 R4 K0 ["Tracks"]
  GETTABLEKS R5 R1 K5 ["unusedTracks"]
  SETTABLEKS R5 R4 K1 ["UnusedTracks"]
  GETTABLEKS R5 R1 K6 ["unusedFacs"]
  SETTABLEKS R5 R4 K2 ["UnusedFacs"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_53:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"VerticalScroll", "VerticalZoom"}]
  GETTABLEKS R5 R1 K3 ["verticalScroll"]
  SETTABLEKS R5 R4 K0 ["VerticalScroll"]
  GETTABLEKS R5 R1 K4 ["verticalZoom"]
  SETTABLEKS R5 R4 K1 ["VerticalZoom"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_54:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"WorldSpace"}]
  GETTABLEKS R6 R0 K0 ["WorldSpace"]
  NOT R5 R6
  SETTABLEKS R5 R4 K0 ["WorldSpace"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Dictionary"]
  GETTABLEKS R3 R4 K10 ["join"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K14 ["LuaFlags"]
  GETTABLEKS R6 R7 K15 ["GetFFlagAnimationConstraints"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["LuaFlags"]
  GETTABLEKS R7 R8 K16 ["GetFFlagSelectFromViewport"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["LuaFlags"]
  GETTABLEKS R8 R9 K17 ["GetFFlagTimelineUnitSeconds"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K18 ["createReducer"]
  NEWTABLE R9 64 0
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  LOADB R10 0
  SETTABLEKS R10 R9 K20 ["AnimationFromVideoErroredOut"]
  LOADNIL R10
  SETTABLEKS R10 R9 K21 ["AnimationFromVideoUploadStartTime"]
  LOADN R10 0
  SETTABLEKS R10 R9 K22 ["AnimationImportProgress"]
  GETTABLEKS R11 R4 K23 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R10 R11 K24 ["Initializing"]
  SETTABLEKS R10 R9 K25 ["AnimationImportStatus"]
  LOADB R10 0
  SETTABLEKS R10 R9 K26 ["AutoFocusFaceEnabled"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K27 ["Clipboard"]
  LOADNIL R10
  SETTABLEKS R10 R9 K28 ["ClipboardType"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["CreatingAnimationFromVideo"]
  GETIMPORT R10 K33 [Enum.RotationOrder.XYZ]
  SETTABLEKS R10 R9 K34 ["DefaultEulerAnglesOrder"]
  GETTABLEKS R10 R4 K35 ["DEFAULT_ROTATION_TYPE"]
  SETTABLEKS R10 R9 K36 ["DefaultRotationType"]
  LOADN R10 0
  SETTABLEKS R10 R9 K37 ["EditingLength"]
  GETTABLEKS R11 R4 K38 ["EDITOR_MODE"]
  GETTABLEKS R10 R11 K39 ["DopeSheet"]
  SETTABLEKS R10 R9 K40 ["EditorMode"]
  LOADNIL R10
  SETTABLEKS R10 R9 K41 ["EditorModeSwitchTime"]
  LOADNIL R10
  SETTABLEKS R10 R9 K42 ["EventEditingTick"]
  LOADNIL R10
  SETTABLEKS R10 R9 K43 ["FaceControlsEditorOpenedTimestamp"]
  GETTABLEKS R10 R4 K44 ["DEFAULT_FRAMERATE"]
  SETTABLEKS R10 R9 K45 ["FrameRate"]
  LOADN R10 0
  SETTABLEKS R10 R9 K46 ["GridSpeed"]
  LOADB R10 0
  SETTABLEKS R10 R9 K47 ["haveToSetBackToNotLooping"]
  LOADN R10 0
  SETTABLEKS R10 R9 K48 ["HorizontalScroll"]
  LOADN R10 0
  SETTABLEKS R10 R9 K49 ["HorizontalZoom"]
  LOADB R10 0
  SETTABLEKS R10 R9 K50 ["IKEnabled"]
  GETTABLEKS R11 R4 K51 ["IK_MODE"]
  GETTABLEKS R10 R11 K52 ["FullBody"]
  SETTABLEKS R10 R9 K53 ["IKMode"]
  LOADNIL R10
  SETTABLEKS R10 R9 K54 ["IKOpenedTimestamp"]
  LOADB R10 0
  SETTABLEKS R10 R9 K55 ["inReviewState"]
  LOADB R10 0
  SETTABLEKS R10 R9 K56 ["IsDirty"]
  LOADB R10 0
  SETTABLEKS R10 R9 K57 ["IsLegacyAnimSaves"]
  LOADNIL R10
  SETTABLEKS R10 R9 K58 ["LastSelectedPath"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K59 ["LegacyAnimationInstances"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K60 ["PinnedParts"]
  LOADN R10 1
  SETTABLEKS R10 R9 K61 ["PlaybackSpeed"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K62 ["PlaybackStartInfo"]
  LOADN R10 0
  SETTABLEKS R10 R9 K63 ["Playhead"]
  GETTABLEKS R11 R4 K64 ["PLAY_STATE"]
  GETTABLEKS R10 R11 K65 ["Pause"]
  SETTABLEKS R10 R9 K66 ["PlayState"]
  LOADB R10 0
  SETTABLEKS R10 R9 K67 ["ReadOnly"]
  GETTABLEKS R11 R4 K68 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
  GETTABLEKS R10 R11 K69 ["Hidden"]
  SETTABLEKS R10 R9 K70 ["ReduceKeyframesDialogMode"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K71 ["RightClickContextInfo"]
  LOADNIL R10
  SETTABLEKS R10 R9 K72 ["RootInstance"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K73 ["SelectedEvents"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K74 ["SelectedKeyframes"]
  LOADNIL R10
  SETTABLEKS R10 R9 K75 ["SelectedTracks"]
  MOVE R11 R7
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADNIL R10
  JUMP [+1]
  LOADB R10 1
  SETTABLEKS R10 R9 K76 ["ShowAsSeconds"]
  LOADB R10 1
  SETTABLEKS R10 R9 K77 ["ShowEvents"]
  LOADB R10 0
  SETTABLEKS R10 R9 K78 ["ShowFaceControlsEditorPanel"]
  LOADB R10 0
  SETTABLEKS R10 R9 K79 ["ShowTree"]
  GETTABLEKS R11 R4 K80 ["SNAP_MODES"]
  GETTABLEKS R10 R11 K81 ["Frames"]
  SETTABLEKS R10 R9 K82 ["SnapMode"]
  LOADB R10 0
  SETTABLEKS R10 R9 K83 ["SymmetryEnabled"]
  GETTABLEKS R11 R4 K84 ["TIMELINE_UNITS"]
  GETTABLEKS R10 R11 K85 ["SecondsDecimal"]
  SETTABLEKS R10 R9 K86 ["TimelineUnit"]
  GETIMPORT R10 K89 [Enum.RibbonTool.Rotate]
  SETTABLEKS R10 R9 K90 ["Tool"]
  LOADN R10 1
  SETTABLEKS R10 R9 K91 ["TopTrackIndex"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K92 ["Tracks"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K93 ["UnusedFacs"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K94 ["UnusedTracks"]
  LOADN R10 0
  SETTABLEKS R10 R9 K95 ["VerticalScroll"]
  LOADN R10 0
  SETTABLEKS R10 R9 K96 ["VerticalZoom"]
  LOADB R10 1
  SETTABLEKS R10 R9 K97 ["VisualizeBones"]
  LOADB R10 1
  SETTABLEKS R10 R9 K98 ["VisualizeGrid"]
  LOADB R10 0
  SETTABLEKS R10 R9 K99 ["WorldSpace"]
  NEWTABLE R10 64 0
  DUPCLOSURE R11 K100 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K101 ["SetActive"]
  DUPCLOSURE R11 K102 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K103 ["SetAnimationFromVideoErroredOut"]
  DUPCLOSURE R11 K104 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K105 ["SetAnimationFromVideoUploadStartTime"]
  DUPCLOSURE R11 K106 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K107 ["SetAnimationImportProgress"]
  DUPCLOSURE R11 K108 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K109 ["SetAnimationImportStatus"]
  DUPCLOSURE R11 K110 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K111 ["SetAutoFocusFaceEnabled"]
  DUPCLOSURE R11 K112 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K113 ["SetBoneVisualization"]
  DUPCLOSURE R11 K114 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K115 ["SetClipboard"]
  DUPCLOSURE R11 K116 [PROTO_8]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K117 ["SetCreatingAnimationFromVideo"]
  DUPCLOSURE R11 K118 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K119 ["SetDefaultEulerAnglesOrder"]
  DUPCLOSURE R11 K120 [PROTO_10]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K121 ["SetDefaultRotationType"]
  DUPCLOSURE R11 K122 [PROTO_11]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K123 ["SetEditingLength"]
  DUPCLOSURE R11 K124 [PROTO_12]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K125 ["SetEditorMode"]
  DUPCLOSURE R12 K127 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R2
  ORK R11 R12 K126 []
  SETTABLEKS R11 R10 K128 ["SetEventEditingTick"]
  DUPCLOSURE R11 K129 [PROTO_14]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K130 ["SetFaceControlsEditorOpenedTimestamp"]
  DUPCLOSURE R11 K131 [PROTO_15]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K132 ["SetFrameRate"]
  DUPCLOSURE R11 K133 [PROTO_16]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K134 ["SetGridSpeed"]
  DUPCLOSURE R11 K135 [PROTO_17]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K136 ["SetGridVisualization"]
  DUPCLOSURE R11 K137 [PROTO_18]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K138 ["SetHaveToSetBackToNotLooping"]
  DUPCLOSURE R11 K139 [PROTO_19]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K140 ["SetHorizontalScrollZoom"]
  DUPCLOSURE R11 K141 [PROTO_20]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K142 ["SetIKEnabled"]
  DUPCLOSURE R11 K143 [PROTO_21]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K144 ["SetIKMode"]
  DUPCLOSURE R11 K145 [PROTO_22]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K146 ["SetIKOpenedTimestamp"]
  DUPCLOSURE R11 K147 [PROTO_23]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K148 ["SetInReviewState"]
  DUPCLOSURE R11 K149 [PROTO_24]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K150 ["SetIsDirty"]
  DUPCLOSURE R11 K151 [PROTO_25]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K152 ["SetIsLegacyAnimSaves"]
  DUPCLOSURE R11 K153 [PROTO_26]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K154 ["SetLastSelectedPath"]
  DUPCLOSURE R11 K155 [PROTO_27]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K156 ["SetLegacyAnimationInstances"]
  MOVE R12 R5
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+2]
  DUPCLOSURE R11 K157 [PROTO_28]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K158 ["SetMotorData"]
  DUPCLOSURE R11 K159 [PROTO_29]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K160 ["SetPinnedParts"]
  DUPCLOSURE R11 K161 [PROTO_30]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K162 ["SetPlaybackSpeed"]
  DUPCLOSURE R11 K163 [PROTO_31]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K164 ["SetPlaybackStartInfo"]
  DUPCLOSURE R11 K165 [PROTO_32]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K166 ["SetPlayhead"]
  DUPCLOSURE R11 K167 [PROTO_33]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K168 ["SetPlayState"]
  DUPCLOSURE R11 K169 [PROTO_34]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K170 ["SetReadOnly"]
  DUPCLOSURE R11 K171 [PROTO_35]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K172 ["SetReduceKeyframesDialogMode"]
  DUPCLOSURE R11 K173 [PROTO_36]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K174 ["SetRightClickContextInfo"]
  DUPCLOSURE R11 K175 [PROTO_37]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K176 ["SetRootInstance"]
  DUPCLOSURE R11 K177 [PROTO_38]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K178 ["SetSelectedEvents"]
  DUPCLOSURE R11 K179 [PROTO_39]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K180 ["SetSelectedKeyframes"]
  DUPCLOSURE R11 K181 [PROTO_40]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K182 ["SetSelectedTrackInstances"]
  DUPCLOSURE R11 K183 [PROTO_41]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K184 ["SetSelectedTracks"]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+2]
  DUPCLOSURE R11 K185 [PROTO_42]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K186 ["SetShowAsSeconds"]
  DUPCLOSURE R11 K187 [PROTO_43]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K188 ["SetShowEvents"]
  DUPCLOSURE R11 K189 [PROTO_44]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K190 ["SetShowFaceControlsEditorPanel"]
  DUPCLOSURE R11 K191 [PROTO_45]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K192 ["SetShowTree"]
  DUPCLOSURE R11 K193 [PROTO_46]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K194 ["SetSnapMode"]
  DUPCLOSURE R11 K195 [PROTO_47]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K196 ["SetStartingPose"]
  DUPCLOSURE R11 K197 [PROTO_48]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K198 ["SetSymmetryEnabled"]
  DUPCLOSURE R11 K199 [PROTO_49]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K200 ["SetTimelineUnit"]
  DUPCLOSURE R11 K201 [PROTO_50]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K202 ["SetTool"]
  DUPCLOSURE R11 K203 [PROTO_51]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K204 ["SetTopTrackIndex"]
  DUPCLOSURE R11 K205 [PROTO_52]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K206 ["SetTracks"]
  DUPCLOSURE R11 K207 [PROTO_53]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K208 ["SetVerticalScrollZoom"]
  DUPCLOSURE R11 K209 [PROTO_54]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K210 ["ToggleWorldSpace"]
  CALL R8 2 -1
  RETURN R8 -1
