PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["screenSizeUpdated"]
  GETTABLEKS R2 R0 K2 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R3 K1 [{"isGamepad"}]
  GETUPVAL R6 0
  GETUPVAL R7 1
  NAMECALL R7 R7 K3 ["GetLastInputType"]
  CALL R7 1 1
  GETTABLE R5 R6 R7
  ORK R4 R5 K2 [False]
  SETTABLEKS R4 R3 K0 ["isGamepad"]
  NAMECALL R1 R0 K4 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["absoluteSizeChanged"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["createFocusController"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["focusController"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["selectedCoreGuiObject"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["selectedGuiObject"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isGamepad"}]
  GETUPVAL R6 1
  GETTABLE R5 R6 R0
  ORK R4 R5 K2 [False]
  SETTABLEKS R4 R3 K0 ["isGamepad"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["promptType"]
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 0
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["promptType"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  MOVE R4 R2
  CALL R3 1 1
  MOVE R1 R3
  JUMP [+4]
  GETIMPORT R3 K4 [error]
  LOADK R4 K5 ["Unexpected prompt type!"]
  CALL R3 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K6 ["ScreenGui"]
  NEWTABLE R4 8 0
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["IgnoreGuiInset"]
  GETIMPORT R5 K11 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K9 ["ZIndexBehavior"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["AutoLocalize"]
  LOADN R5 255
  SETTABLEKS R5 R4 K13 ["DisplayOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["Change"]
  GETTABLEKS R5 R6 K15 ["AbsoluteSize"]
  GETTABLEKS R6 R0 K16 ["absoluteSizeChanged"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K20 [{"Connection", "LastInputTypeConnection", "PromptFrame"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["Connection"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K24 [{"event", "callback"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K25 ["LastInputTypeChanged"]
  SETTABLEKS R10 R9 K22 ["event"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R10 R9 K23 ["callback"]
  CALL R7 2 1
  ORK R6 R7 K21 []
  SETTABLEKS R6 R5 K18 ["LastInputTypeConnection"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K26 ["Focusable"]
  GETTABLEKS R8 R9 K27 ["Frame"]
  DUPTABLE R9 K31 [{"focusController", "BackgroundTransparency", "Size"}]
  GETTABLEKS R10 R0 K28 ["focusController"]
  SETTABLEKS R10 R9 K28 ["focusController"]
  LOADN R10 1
  SETTABLEKS R10 R9 K29 ["BackgroundTransparency"]
  GETIMPORT R10 K34 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["Size"]
  DUPTABLE R10 K36 [{"Prompt"}]
  SETTABLEKS R1 R10 K35 ["Prompt"]
  CALL R7 3 1
  ORK R6 R7 K21 []
  SETTABLEKS R6 R5 K19 ["PromptFrame"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  LOADK R3 K0 ["PlayerGui"]
  NAMECALL R1 R1 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K2 ["selectedCoreGuiObject"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R0 K2 ["selectedCoreGuiObject"]
  GETUPVAL R4 1
  NAMECALL R2 R2 K3 ["IsDescendantOf"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K2 ["selectedCoreGuiObject"]
  SETTABLEKS R3 R2 K4 ["SelectedCoreObject"]
  JUMP [+24]
  GETTABLEKS R2 R0 K5 ["selectedGuiObject"]
  JUMPIFNOT R2 [+17]
  GETTABLEKS R2 R0 K5 ["selectedGuiObject"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["IsDescendantOf"]
  CALL R2 2 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K5 ["selectedGuiObject"]
  SETTABLEKS R3 R2 K6 ["SelectedObject"]
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["SelectedCoreObject"]
  JUMP [+4]
  GETUPVAL R2 2
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["SelectedCoreObject"]
  LOADNIL R2
  SETTABLEKS R2 R0 K2 ["selectedCoreGuiObject"]
  LOADNIL R2
  SETTABLEKS R2 R0 K5 ["selectedGuiObject"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["isGamepad"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["promptType"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R4 R2 K1 ["isGamepad"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R1 K3 ["promptType"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFEQ R3 R4 [+35]
  JUMPIFNOT R3 [+20]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["SelectedCoreObject"]
  SETTABLEKS R5 R0 K5 ["selectedCoreGuiObject"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["SelectedObject"]
  SETTABLEKS R5 R0 K7 ["selectedGuiObject"]
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLEKS R6 R5 K6 ["SelectedObject"]
  GETTABLEKS R6 R0 K8 ["focusController"]
  GETTABLEKS R5 R6 K9 ["captureFocus"]
  CALL R5 0 0
  RETURN R0 0
  GETTABLEKS R6 R0 K8 ["focusController"]
  GETTABLEKS R5 R6 K10 ["releaseFocus"]
  CALL R5 0 0
  GETTABLEKS R6 R0 K0 ["state"]
  GETTABLEKS R5 R6 K1 ["isGamepad"]
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R0 K11 ["revertSelectedGuiObject"]
  CALL R5 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isGamepad"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K2 ["revertSelectedGuiObject"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"promptType"}]
  GETTABLEKS R3 R0 K2 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["promptType"]
  SETTABLEKS R2 R1 K0 ["promptType"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_9:
  DUPTABLE R1 K1 [{"screenSizeUpdated"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["screenSizeUpdated"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["UserInputService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["Players"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K12 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K13 ["RoactGamepad"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K10 ["Packages"]
  GETTABLEKS R9 R10 K14 ["t"]
  CALL R8 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R0 K15 ["Workspace"]
  GETTABLEKS R12 R13 K10 ["Packages"]
  GETTABLEKS R11 R12 K16 ["RoactUtils"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K17 ["ExternalEventConnection"]
  GETIMPORT R10 K9 [require]
  GETIMPORT R13 K19 [script]
  GETTABLEKS R12 R13 K20 ["Parent"]
  GETTABLEKS R11 R12 K21 ["Connection"]
  CALL R10 1 1
  GETIMPORT R13 K19 [script]
  GETTABLEKS R12 R13 K20 ["Parent"]
  GETTABLEKS R11 R12 K22 ["Prompts"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R13 R11 K23 ["AllowInventoryReadAccessPrompt"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R14 R11 K24 ["SaveAvatarPrompt"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R11 K25 ["CreateOutfitPrompt"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R11 K26 ["EnterOutfitNamePrompt"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R11 K27 ["SetFavoritePrompt"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R11 K28 ["DeleteOutfitPrompt"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R11 K29 ["RenameOutfitPrompt"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R11 K30 ["UpdateOutfitPrompt"]
  CALL R19 1 1
  GETTABLEKS R20 R4 K31 ["LocalPlayer"]
  GETIMPORT R23 K19 [script]
  GETTABLEKS R22 R23 K20 ["Parent"]
  GETTABLEKS R21 R22 K20 ["Parent"]
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R21 K32 ["PromptType"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R25 R21 K33 ["Actions"]
  GETTABLEKS R24 R25 K34 ["ScreenSizeUpdated"]
  CALL R23 1 1
  NEWTABLE R24 8 0
  GETIMPORT R25 K38 [Enum.UserInputType.Gamepad1]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K40 [Enum.UserInputType.Gamepad2]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K42 [Enum.UserInputType.Gamepad3]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K44 [Enum.UserInputType.Gamepad4]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K46 [Enum.UserInputType.Gamepad5]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K48 [Enum.UserInputType.Gamepad6]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K50 [Enum.UserInputType.Gamepad7]
  LOADB R26 1
  SETTABLE R26 R24 R25
  GETIMPORT R25 K52 [Enum.UserInputType.Gamepad8]
  LOADB R26 1
  SETTABLE R26 R24 R25
  NEWTABLE R25 8 0
  GETTABLEKS R26 R22 K53 ["AllowInventoryReadAccess"]
  SETTABLE R12 R25 R26
  GETTABLEKS R26 R22 K54 ["SaveAvatar"]
  SETTABLE R13 R25 R26
  GETTABLEKS R26 R22 K55 ["CreateOutfit"]
  SETTABLE R14 R25 R26
  GETTABLEKS R26 R22 K56 ["EnterOutfitName"]
  SETTABLE R15 R25 R26
  GETTABLEKS R26 R22 K57 ["SetFavorite"]
  SETTABLE R16 R25 R26
  GETTABLEKS R26 R22 K58 ["DeleteOutfit"]
  SETTABLE R17 R25 R26
  GETTABLEKS R26 R22 K59 ["RenameOutfit"]
  SETTABLE R18 R25 R26
  GETTABLEKS R26 R22 K60 ["UpdateOutfit"]
  SETTABLE R19 R25 R26
  GETTABLEKS R26 R5 K61 ["PureComponent"]
  LOADK R28 K62 ["AvatarEditorPromptsApp"]
  NAMECALL R26 R26 K63 ["extend"]
  CALL R26 2 1
  GETTABLEKS R27 R8 K64 ["strictInterface"]
  DUPTABLE R28 K67 [{"promptType", "screenSizeUpdated"}]
  GETTABLEKS R29 R8 K68 ["optional"]
  GETTABLEKS R30 R8 K69 ["userdata"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K65 ["promptType"]
  GETTABLEKS R29 R8 K70 ["callback"]
  SETTABLEKS R29 R28 K66 ["screenSizeUpdated"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K71 ["validateProps"]
  DUPCLOSURE R27 K72 [PROTO_1]
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R27 R26 K73 ["init"]
  DUPCLOSURE R27 K74 [PROTO_3]
  CAPTURE VAL R25
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R24
  CAPTURE VAL R7
  SETTABLEKS R27 R26 K75 ["render"]
  DUPCLOSURE R27 K76 [PROTO_4]
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K77 ["revertSelectedGuiObject"]
  DUPCLOSURE R27 K78 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K79 ["didUpdate"]
  DUPCLOSURE R27 K80 [PROTO_6]
  SETTABLEKS R27 R26 K81 ["willUnmount"]
  DUPCLOSURE R27 K82 [PROTO_7]
  DUPCLOSURE R28 K83 [PROTO_9]
  CAPTURE VAL R23
  GETTABLEKS R29 R6 K84 ["connect"]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1