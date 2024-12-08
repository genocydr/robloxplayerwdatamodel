PROTO_0:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+25]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["onMouseLeave"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["onMouseLeave"]
  CALL R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K6 ["onInputEnded"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K6 ["onInputEnded"]
  CALL R2 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["forwardRef"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["TextButton"]
  NEWTABLE R4 32 0
  GETIMPORT R5 K6 [UDim2.new]
  LOADN R6 0
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["sizeX"]
  LOADN R8 0
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K8 ["sizeY"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Size"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K10 ["backgroundStyle"]
  GETTABLEKS R5 R6 K11 ["Transparency"]
  SETTABLEKS R5 R4 K12 ["BackgroundTransparency"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K10 ["backgroundStyle"]
  GETTABLEKS R5 R6 K13 ["Color"]
  SETTABLEKS R5 R4 K14 ["BackgroundColor3"]
  LOADN R5 0
  SETTABLEKS R5 R4 K15 ["BorderSizePixel"]
  LOADB R5 0
  SETTABLEKS R5 R4 K16 ["AutoButtonColor"]
  LOADK R5 K17 [""]
  SETTABLEKS R5 R4 K18 ["Text"]
  LOADB R5 0
  SETTABLEKS R5 R4 K19 ["AutoLocalize"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K20 ["isTeamFrame"]
  NOT R5 R6
  SETTABLEKS R5 R4 K21 ["Selectable"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K20 ["isTeamFrame"]
  NOT R5 R6
  SETTABLEKS R5 R4 K22 ["Active"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K24 ["Activated"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K25 ["onActivated"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K26 ["SelectionGained"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K27 ["onSelectionGained"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K28 ["SelectionLost"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K29 ["onSelectionLost"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K30 ["MouseEnter"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K31 ["onMouseEnter"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K32 ["MouseLeave"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K33 ["onMouseLeave"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K34 ["MouseButton1Down"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K35 ["onMouseDown"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K36 ["MouseButton1Up"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K37 ["onInputEnded"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["Event"]
  GETTABLEKS R5 R6 K38 ["InputEnded"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  ORK R6 R7 K39 []
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K40 ["Ref"]
  SETTABLE R1 R4 R5
  DUPTABLE R5 K43 [{"DoubleOverLay", "OverlayFrame"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K44 ["Frame"]
  DUPTABLE R8 K47 [{"ZIndex", "Visible", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K45 ["ZIndex"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K48 ["doubleOverlay"]
  SETTABLEKS R9 R8 K46 ["Visible"]
  GETIMPORT R9 K6 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K49 ["overlayStyle"]
  GETTABLEKS R9 R10 K11 ["Transparency"]
  SETTABLEKS R9 R8 K12 ["BackgroundTransparency"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K49 ["overlayStyle"]
  GETTABLEKS R9 R10 K13 ["Color"]
  SETTABLEKS R9 R8 K14 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["BorderSizePixel"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K41 ["DoubleOverLay"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K44 ["Frame"]
  DUPTABLE R8 K50 [{"ZIndex", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K45 ["ZIndex"]
  GETIMPORT R9 K6 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K49 ["overlayStyle"]
  GETTABLEKS R9 R10 K11 ["Transparency"]
  SETTABLEKS R9 R8 K12 ["BackgroundTransparency"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K49 ["overlayStyle"]
  GETTABLEKS R9 R10 K13 ["Color"]
  SETTABLEKS R9 R8 K14 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["BorderSizePixel"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K51 ["Children"]
  GETTABLE R9 R10 R11
  CALL R6 3 1
  SETTABLEKS R6 R5 K42 ["OverlayFrame"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["Dictionary"]
  GETTABLEKS R4 R5 K2 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K4 [{"forwardRef"}]
  SETTABLEKS R1 R6 K3 ["forwardRef"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactUtils"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["validatePropsWithForwardRef"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K12 ["t"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K13 ["PureComponent"]
  LOADK R7 K14 ["EntryFrame"]
  NAMECALL R5 R5 K15 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R4 K16 ["strictInterface"]
  MOVE R7 R1
  NEWTABLE R8 16 0
  GETTABLEKS R9 R4 K17 ["integer"]
  SETTABLEKS R9 R8 K18 ["sizeX"]
  GETTABLEKS R9 R4 K17 ["integer"]
  SETTABLEKS R9 R8 K19 ["sizeY"]
  GETTABLEKS R9 R4 K20 ["boolean"]
  SETTABLEKS R9 R8 K21 ["isTeamFrame"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K24 ["onActivated"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K25 ["onSelectionGained"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K26 ["onSelectionLost"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["onMouseEnter"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K28 ["onMouseLeave"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["onMouseDown"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K23 ["callback"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K30 ["onInputEnded"]
  GETTABLEKS R9 R4 K16 ["strictInterface"]
  DUPTABLE R10 K33 [{"Color", "Transparency"}]
  GETTABLEKS R11 R4 K34 ["Color3"]
  SETTABLEKS R11 R10 K31 ["Color"]
  GETTABLEKS R11 R4 K35 ["number"]
  SETTABLEKS R11 R10 K32 ["Transparency"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K36 ["backgroundStyle"]
  GETTABLEKS R9 R4 K16 ["strictInterface"]
  DUPTABLE R10 K33 [{"Color", "Transparency"}]
  GETTABLEKS R11 R4 K34 ["Color3"]
  SETTABLEKS R11 R10 K31 ["Color"]
  GETTABLEKS R11 R4 K35 ["number"]
  SETTABLEKS R11 R10 K32 ["Transparency"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K37 ["overlayStyle"]
  GETTABLEKS R9 R4 K22 ["optional"]
  GETTABLEKS R10 R4 K20 ["boolean"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K38 ["doubleOverlay"]
  GETTABLEKS R9 R3 K39 ["Ref"]
  GETTABLEKS R10 R4 K22 ["optional"]
  GETTABLEKS R11 R4 K40 ["table"]
  CALL R10 1 1
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R3 K41 ["Children"]
  GETTABLEKS R10 R4 K22 ["optional"]
  GETTABLEKS R11 R4 K40 ["table"]
  CALL R10 1 1
  SETTABLE R10 R8 R9
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K42 ["validateProps"]
  DUPCLOSURE R6 K43 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K44 ["render"]
  GETTABLEKS R6 R3 K45 ["forwardRef"]
  DUPCLOSURE R7 K46 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CALL R6 1 -1
  RETURN R6 -1