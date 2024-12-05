PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["selectedId"]
  GETTABLEKS R3 R0 K2 ["AssetId"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"selectedId"}]
  LOADK R5 K4 [""]
  SETTABLEKS R5 R4 K1 ["selectedId"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"selectedId"}]
  GETTABLEKS R5 R0 K2 ["AssetId"]
  SETTABLEKS R5 R4 K1 ["selectedId"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"isOnDropdown", "dropdownHoveredIndex"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["isOnDropdown"]
  SETTABLEKS R0 R3 K1 ["dropdownHoveredIndex"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isOnDropdown", "dropdownHoveredIndex"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isOnDropdown"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["dropdownHoveredIndex"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchSetHasInvalidPackageId"]
  NOT R3 R1
  CALL R2 1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHoveredItemChanged"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["Stylizer"]
  GETTABLEKS R6 R5 K2 ["SuggestionDropdown"]
  GETTABLEKS R7 R6 K3 ["DropdownHeight"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["ref"]
  NAMECALL R9 R9 K5 ["getValue"]
  CALL R9 1 1
  JUMPIFNOT R9 [+11]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["ref"]
  NAMECALL R10 R10 K5 ["getValue"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K6 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K7 ["X"]
  JUMP [+1]
  LOADN R8 200
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIF R9 [+9]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["state"]
  GETTABLEKS R9 R10 K9 ["dropdownHoveredIndex"]
  JUMPIFEQ R1 R9 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K16 [{"LayoutOrder", "OnClick", "OnMouseEnter", "Size", "StyleModifier"}]
  SETTABLEKS R1 R11 K11 ["LayoutOrder"]
  SETTABLEKS R2 R11 K12 ["OnClick"]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K13 ["OnMouseEnter"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  GETTABLEKS R15 R6 K20 ["DropdownScrollbarSize"]
  SUB R14 R8 R15
  LOADN R15 0
  MOVE R16 R7
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K21 ["Hover"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K15 ["StyleModifier"]
  DUPTABLE R12 K23 [{"ButtonComponents"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K25 [{"Layout", "Size"}]
  GETIMPORT R16 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K24 ["Layout"]
  GETIMPORT R16 K31 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["Size"]
  DUPTABLE R16 K34 [{"ImageContainer", "NameText"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K35 [{"LayoutOrder", "Size"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["LayoutOrder"]
  GETIMPORT R20 K37 [UDim2.fromOffset]
  MOVE R21 R7
  MOVE R22 R7
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Size"]
  DUPTABLE R20 K39 [{"Image"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K10 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K41 [{"Style"}]
  DUPTABLE R24 K39 [{"Image"}]
  GETTABLEKS R25 R0 K38 ["Image"]
  SETTABLEKS R25 R24 K38 ["Image"]
  SETTABLEKS R24 R23 K40 ["Style"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K38 ["Image"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K32 ["ImageContainer"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K45 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "SuffixLength"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K11 ["LayoutOrder"]
  GETIMPORT R20 K19 [UDim2.new]
  LOADN R21 1
  MINUS R22 R7
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K14 ["Size"]
  GETTABLEKS R20 R0 K46 ["Name"]
  SETTABLEKS R20 R19 K42 ["Text"]
  GETIMPORT R20 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K43 ["TextXAlignment"]
  LOADN R20 6
  SETTABLEKS R20 R19 K44 ["SuffixLength"]
  DUPTABLE R20 K50 [{"AssetIdText"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K10 ["createElement"]
  GETUPVAL R22 7
  DUPTABLE R23 K54 [{"Size", "TextXAlignment", "TextYAlignment", "Text", "TextColor", "TextSize"}]
  GETIMPORT R24 K19 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  GETTABLEKS R29 R6 K55 ["SubtextOffset"]
  MINUS R28 R29
  CALL R24 4 1
  SETTABLEKS R24 R23 K14 ["Size"]
  GETIMPORT R24 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K43 ["TextXAlignment"]
  GETIMPORT R24 K57 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R24 R23 K51 ["TextYAlignment"]
  GETTABLEKS R24 R0 K58 ["AssetId"]
  SETTABLEKS R24 R23 K42 ["Text"]
  JUMPIF R3 [+3]
  GETTABLEKS R24 R6 K59 ["SubtextColor"]
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K52 ["TextColor"]
  GETTABLEKS R24 R6 K60 ["SubtextSize"]
  SETTABLEKS R24 R23 K53 ["TextSize"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K49 ["AssetIdText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K33 ["NameText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K22 ["ButtonComponents"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_8:
  DUPTABLE R1 K5 [{"isFocused", "isOnDropdown", "suggestionList", "selectedId", "dropdownHoveredIndex"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isFocused"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isOnDropdown"]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["suggestionList"]
  LOADK R2 K6 [""]
  SETTABLEKS R2 R1 K3 ["selectedId"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["dropdownHoveredIndex"]
  SETTABLEKS R1 R0 K7 ["state"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K9 ["ref"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["focused"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["unfocused"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onItemActivated"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onHoveredItemChanged"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onMouseLeave"]
  NEWCLOSURE R1 P5
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["onValidateText"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R1 R0 K16 ["onRenderItem"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Value"]
  GETTABLEKS R6 R2 K3 ["suggestionList"]
  LENGTH R5 R6
  JUMPIFNOTEQKN R5 K4 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K10 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R8 R1 K6 ["Size"]
  SETTABLEKS R8 R7 K6 ["Size"]
  GETTABLEKS R8 R1 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETIMPORT R8 K14 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K8 ["Layout"]
  GETIMPORT R8 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K9 ["HorizontalAlignment"]
  DUPTABLE R8 K18 [{"AssetIdField"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 1
  NEWTABLE R11 4 0
  GETIMPORT R12 K21 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K6 ["Size"]
  GETTABLEKS R13 R1 K7 ["LayoutOrder"]
  ADDK R12 R13 K22 [1]
  SETTABLEKS R12 R11 K7 ["LayoutOrder"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K23 ["Ref"]
  GETTABLEKS R13 R0 K24 ["ref"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K27 [{"TextInput", "AutocompleteDropdown"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K33 [{"OnTextChanged", "OnValidateText", "Text", "OnFocused", "OnFocusLost"}]
  GETTABLEKS R16 R1 K34 ["OnSetItem"]
  SETTABLEKS R16 R15 K28 ["OnTextChanged"]
  GETTABLEKS R16 R0 K35 ["onValidateText"]
  SETTABLEKS R16 R15 K29 ["OnValidateText"]
  GETTABLEKS R17 R2 K36 ["selectedId"]
  JUMPIFEQKS R17 K37 [""] [+4]
  GETTABLEKS R16 R2 K36 ["selectedId"]
  JUMP [+1]
  MOVE R16 R3
  SETTABLEKS R16 R15 K30 ["Text"]
  GETTABLEKS R16 R0 K38 ["focused"]
  SETTABLEKS R16 R15 K31 ["OnFocused"]
  GETTABLEKS R16 R0 K39 ["unfocused"]
  SETTABLEKS R16 R15 K32 ["OnFocusLost"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["TextInput"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K47 [{"Hide", "Items", "OnItemActivated", "OnMouseLeave", "OnRenderItem", "OnFocusLost", "HoveredItemIndex", "Width"}]
  GETTABLEKS R17 R2 K48 ["isFocused"]
  JUMPIF R17 [+4]
  GETTABLEKS R17 R2 K49 ["isOnDropdown"]
  NOT R16 R17
  JUMPIF R16 [+1]
  NOT R16 R4
  SETTABLEKS R16 R15 K40 ["Hide"]
  GETTABLEKS R16 R2 K3 ["suggestionList"]
  SETTABLEKS R16 R15 K41 ["Items"]
  GETTABLEKS R16 R0 K50 ["onItemActivated"]
  SETTABLEKS R16 R15 K42 ["OnItemActivated"]
  GETTABLEKS R16 R0 K51 ["onMouseLeave"]
  SETTABLEKS R16 R15 K43 ["OnMouseLeave"]
  GETTABLEKS R16 R0 K52 ["onRenderItem"]
  SETTABLEKS R16 R15 K44 ["OnRenderItem"]
  GETTABLEKS R16 R0 K39 ["unfocused"]
  SETTABLEKS R16 R15 K32 ["OnFocusLost"]
  GETTABLEKS R16 R2 K53 ["dropdownHoveredIndex"]
  SETTABLEKS R16 R15 K45 ["HoveredItemIndex"]
  GETTABLEKS R17 R0 K24 ["ref"]
  NAMECALL R17 R17 K54 ["getValue"]
  CALL R17 1 1
  JUMPIFNOT R17 [+10]
  GETTABLEKS R18 R0 K24 ["ref"]
  NAMECALL R18 R18 K54 ["getValue"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K55 ["AbsoluteSize"]
  GETTABLEKS R16 R17 K56 ["X"]
  JUMP [+1]
  LOADN R16 200
  SETTABLEKS R16 R15 K46 ["Width"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["AutocompleteDropdown"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["AssetIdField"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"dispatchSetHasInvalidPackageId"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetHasInvalidPackageId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Stylizer"]
  GETTABLEKS R8 R1 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["StyleModifier"]
  GETTABLEKS R8 R1 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["TextInput"]
  GETTABLEKS R10 R8 K17 ["TruncatedTextLabel"]
  GETTABLEKS R11 R8 K18 ["DropdownMenu"]
  GETTABLEKS R12 R8 K19 ["Button"]
  GETTABLEKS R13 R8 K20 ["Pane"]
  GETTABLEKS R14 R8 K21 ["Image"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K22 ["Src"]
  GETTABLEKS R17 R18 K23 ["Utility"]
  GETTABLEKS R16 R17 K24 ["getPackagesInPlace"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K23 ["Utility"]
  GETTABLEKS R17 R18 K25 ["isAssetIdFormatValid"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K26 ["Actions"]
  GETTABLEKS R18 R19 K27 ["SetHasInvalidPackageId"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K22 ["Src"]
  GETTABLEKS R20 R21 K28 ["Flags"]
  GETTABLEKS R19 R20 K29 ["getFFlagDevFrameworkDropdownMenuHeight"]
  CALL R18 1 1
  GETTABLEKS R19 R2 K30 ["PureComponent"]
  LOADK R21 K31 ["AssetIdProperty"]
  NAMECALL R19 R19 K32 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K33 [PROTO_8]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R10
  SETTABLEKS R20 R19 K34 ["init"]
  DUPCLOSURE R20 K35 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R20 R19 K36 ["render"]
  MOVE R20 R5
  DUPTABLE R21 K37 [{"Stylizer"}]
  SETTABLEKS R6 R21 K12 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  DUPCLOSURE R20 K38 [PROTO_11]
  CAPTURE VAL R17
  GETTABLEKS R21 R3 K39 ["connect"]
  LOADNIL R22
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R19
  CALL R21 1 -1
  RETURN R21 -1
