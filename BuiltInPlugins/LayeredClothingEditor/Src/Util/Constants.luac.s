PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  SETTABLE R5 R1 R6
  FORGLOOP R2 2 [inext] [-2]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K25 [{"USE_MOCK_RBF_DATA", "CLUSTER_THRESHOLD", "DEFAULT_FALLOFF", "MAX_FALLOFF", "MAX_TRANSPARENCY", "DEFAULT_LATTICE_SUBDIVISIONS", "DEFAULT_CAGE_TRANSPARENCY", "MANNEQUIN_PATH", "HEAD_TEMPLATE_PATH", "PREVIEW_FOLDER_NAME", "PREVIEW_REMOTE_EVENT_NAME", "GENERATE_LEGACY_KEY", "GENERATE_MESH_PART_KEY", "MOCK_HIP_OFFSET", "MAX_WAYPOINTS", "CAGE_SAVE_DATA_FOLDER", "LCE_POINT_TAG", "LCE_CONTROL_TAG", "DRAGGER_STATES", "TOOL_MODE", "EDIT_MODE", "SELECTOR_MODE", "KEY_SHORTCUTS", "SIGNAL_KEYS", "SCREENS"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["USE_MOCK_RBF_DATA"]
  LOADK R1 K26 [0.12]
  SETTABLEKS R1 R0 K1 ["CLUSTER_THRESHOLD"]
  LOADK R1 K27 [0.5]
  SETTABLEKS R1 R0 K2 ["DEFAULT_FALLOFF"]
  LOADN R1 20
  SETTABLEKS R1 R0 K3 ["MAX_FALLOFF"]
  LOADN R1 100
  SETTABLEKS R1 R0 K4 ["MAX_TRANSPARENCY"]
  LOADK R1 K28 [{1, 3, 1}]
  SETTABLEKS R1 R0 K5 ["DEFAULT_LATTICE_SUBDIVISIONS"]
  LOADN R1 100
  SETTABLEKS R1 R0 K6 ["DEFAULT_CAGE_TRANSPARENCY"]
  LOADK R1 K29 ["rbxasset://models/LayeredClothingEditor/mannequin.rbxm"]
  SETTABLEKS R1 R0 K7 ["MANNEQUIN_PATH"]
  LOADK R1 K30 ["rbxasset://models/LayeredClothingEditor/PartHeadTemplate.rbxm"]
  SETTABLEKS R1 R0 K8 ["HEAD_TEMPLATE_PATH"]
  LOADK R1 K31 ["LayeredClothingEditorPreview"]
  SETTABLEKS R1 R0 K9 ["PREVIEW_FOLDER_NAME"]
  LOADK R1 K32 ["PreviewChanged"]
  SETTABLEKS R1 R0 K10 ["PREVIEW_REMOTE_EVENT_NAME"]
  LOADK R1 K33 ["GenerateLegacyAcc"]
  SETTABLEKS R1 R0 K11 ["GENERATE_LEGACY_KEY"]
  LOADK R1 K34 ["GenerateMeshPartAcc"]
  SETTABLEKS R1 R0 K12 ["GENERATE_MESH_PART_KEY"]
  LOADK R1 K35 [{0, 4.1, 0}]
  SETTABLEKS R1 R0 K13 ["MOCK_HIP_OFFSET"]
  LOADN R1 20
  SETTABLEKS R1 R0 K14 ["MAX_WAYPOINTS"]
  LOADK R1 K36 ["CageSaveData"]
  SETTABLEKS R1 R0 K15 ["CAGE_SAVE_DATA_FOLDER"]
  LOADK R1 K37 ["LCE_Point_Tag"]
  SETTABLEKS R1 R0 K16 ["LCE_POINT_TAG"]
  LOADK R1 K38 ["LCE_Control_Tag"]
  SETTABLEKS R1 R0 K17 ["LCE_CONTROL_TAG"]
  DUPTABLE R1 K41 [{"Ready", "DragSelecting"}]
  LOADK R2 K39 ["Ready"]
  SETTABLEKS R2 R1 K39 ["Ready"]
  LOADK R2 K40 ["DragSelecting"]
  SETTABLEKS R2 R1 K40 ["DragSelecting"]
  SETTABLEKS R1 R0 K18 ["DRAGGER_STATES"]
  DUPTABLE R1 K47 [{"None", "Point", "Lattice", "Reset", "Finish"}]
  LOADK R2 K42 ["None"]
  SETTABLEKS R2 R1 K42 ["None"]
  LOADK R2 K48 ["PointTool"]
  SETTABLEKS R2 R1 K43 ["Point"]
  LOADK R2 K49 ["LatticeTool"]
  SETTABLEKS R2 R1 K44 ["Lattice"]
  LOADK R2 K45 ["Reset"]
  SETTABLEKS R2 R1 K45 ["Reset"]
  LOADK R2 K46 ["Finish"]
  SETTABLEKS R2 R1 K46 ["Finish"]
  SETTABLEKS R1 R0 K19 ["TOOL_MODE"]
  DUPTABLE R1 K53 [{"Outer", "Inner", "Mesh"}]
  GETIMPORT R2 K56 [Enum.CageType.Outer]
  SETTABLEKS R2 R1 K50 ["Outer"]
  GETIMPORT R2 K57 [Enum.CageType.Inner]
  SETTABLEKS R2 R1 K51 ["Inner"]
  GETIMPORT R2 K60 [Enum.MeshType.FileMesh]
  SETTABLEKS R2 R1 K52 ["Mesh"]
  SETTABLEKS R1 R0 K20 ["EDIT_MODE"]
  DUPTABLE R1 K63 [{"None", "EditingItem", "Preview"}]
  LOADK R2 K42 ["None"]
  SETTABLEKS R2 R1 K42 ["None"]
  LOADK R2 K61 ["EditingItem"]
  SETTABLEKS R2 R1 K61 ["EditingItem"]
  LOADK R2 K62 ["Preview"]
  SETTABLEKS R2 R1 K62 ["Preview"]
  SETTABLEKS R1 R0 K21 ["SELECTOR_MODE"]
  DUPTABLE R1 K65 [{"LockControl"}]
  GETIMPORT R2 K68 [Enum.KeyCode.R]
  SETTABLEKS R2 R1 K64 ["LockControl"]
  SETTABLEKS R1 R0 K22 ["KEY_SHORTCUTS"]
  DUPTABLE R1 K72 [{"SelectionChanged", "ToolChanged", "PluginWindowFocused"}]
  LOADK R2 K69 ["SelectionChanged"]
  SETTABLEKS R2 R1 K69 ["SelectionChanged"]
  LOADK R2 K70 ["ToolChanged"]
  SETTABLEKS R2 R1 K70 ["ToolChanged"]
  LOADK R2 K71 ["PluginWindowFocused"]
  SETTABLEKS R2 R1 K71 ["PluginWindowFocused"]
  SETTABLEKS R1 R0 K23 ["SIGNAL_KEYS"]
  DUPTABLE R1 K77 [{"Select", "AssetType", "Edit", "Generate"}]
  LOADK R2 K73 ["Select"]
  SETTABLEKS R2 R1 K73 ["Select"]
  LOADK R2 K74 ["AssetType"]
  SETTABLEKS R2 R1 K74 ["AssetType"]
  LOADK R2 K75 ["Edit"]
  SETTABLEKS R2 R1 K75 ["Edit"]
  LOADK R2 K76 ["Generate"]
  SETTABLEKS R2 R1 K76 ["Generate"]
  SETTABLEKS R1 R0 K24 ["SCREENS"]
  NEWTABLE R1 0 4
  LOADK R2 K78 ["AdjustAccessory"]
  LOADK R3 K79 ["EditCage"]
  LOADK R4 K62 ["Preview"]
  LOADK R5 K76 ["Generate"]
  SETLIST R1 R2 4 [1]
  NEWTABLE R2 0 2
  LOADK R3 K80 ["Rigid"]
  LOADK R4 K81 ["Layered"]
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 2
  LOADK R4 K82 ["Thumbnail"]
  LOADK R5 K83 ["Workspace"]
  SETLIST R3 R4 2 [1]
  NEWTABLE R4 0 2
  LOADK R5 K84 ["Unedited"]
  LOADK R6 K85 ["Edited"]
  SETLIST R4 R5 2 [1]
  NEWTABLE R5 0 2
  LOADK R6 K86 ["Unpublished"]
  LOADK R7 K87 ["Published"]
  SETLIST R5 R6 2 [1]
  DUPCLOSURE R6 K88 [PROTO_0]
  NEWTABLE R8 0 0
  GETIMPORT R9 K90 [ipairs]
  MOVE R10 R1
  CALL R9 1 3
  FORGPREP_INEXT R9
  SETTABLE R12 R8 R13
  FORGLOOP R9 2 [inext] [-2]
  MOVE R7 R8
  SETTABLEKS R7 R0 K91 ["ACTIONS"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R0 K92 ["ANALYTICS_CONSTANTS"]
  GETTABLEKS R7 R0 K92 ["ANALYTICS_CONSTANTS"]
  NEWTABLE R9 0 0
  GETIMPORT R10 K90 [ipairs]
  MOVE R11 R2
  CALL R10 1 3
  FORGPREP_INEXT R10
  SETTABLE R13 R9 R14
  FORGLOOP R10 2 [inext] [-2]
  MOVE R8 R9
  SETTABLEKS R8 R7 K93 ["FLOW"]
  GETTABLEKS R7 R0 K92 ["ANALYTICS_CONSTANTS"]
  NEWTABLE R9 0 0
  GETIMPORT R10 K90 [ipairs]
  MOVE R11 R3
  CALL R10 1 3
  FORGPREP_INEXT R10
  SETTABLE R13 R9 R14
  FORGLOOP R10 2 [inext] [-2]
  MOVE R8 R9
  SETTABLEKS R8 R7 K94 ["PREVIEW_SELECT_METHOD"]
  GETTABLEKS R7 R0 K92 ["ANALYTICS_CONSTANTS"]
  NEWTABLE R9 0 0
  GETIMPORT R10 K90 [ipairs]
  MOVE R11 R4
  CALL R10 1 3
  FORGPREP_INEXT R10
  SETTABLE R13 R9 R14
  FORGLOOP R10 2 [inext] [-2]
  MOVE R8 R9
  SETTABLEKS R8 R7 K95 ["CAGE_EDITING"]
  GETTABLEKS R7 R0 K92 ["ANALYTICS_CONSTANTS"]
  NEWTABLE R9 0 0
  GETIMPORT R10 K90 [ipairs]
  MOVE R11 R5
  CALL R10 1 3
  FORGPREP_INEXT R10
  SETTABLE R13 R9 R14
  FORGLOOP R10 2 [inext] [-2]
  MOVE R8 R9
  SETTABLEKS R8 R7 K96 ["PUBLISHING"]
  NEWTABLE R7 4 0
  GETTABLEKS R9 R0 K20 ["EDIT_MODE"]
  GETTABLEKS R8 R9 K51 ["Inner"]
  LOADK R9 K51 ["Inner"]
  SETTABLE R9 R7 R8
  GETTABLEKS R9 R0 K20 ["EDIT_MODE"]
  GETTABLEKS R8 R9 K50 ["Outer"]
  LOADK R9 K50 ["Outer"]
  SETTABLE R9 R7 R8
  GETTABLEKS R9 R0 K20 ["EDIT_MODE"]
  GETTABLEKS R8 R9 K52 ["Mesh"]
  LOADK R9 K52 ["Mesh"]
  SETTABLE R9 R7 R8
  SETTABLEKS R7 R0 K97 ["EDIT_MODE_KEY_TO_STRING"]
  RETURN R0 1