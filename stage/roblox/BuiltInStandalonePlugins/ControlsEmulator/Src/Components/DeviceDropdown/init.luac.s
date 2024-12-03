PROTO_0:
  NEWTABLE R0 8 0
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K1 ["GenericGamepad"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 101
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K3 ["PS4"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 102
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K4 ["PS5"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 103
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K5 ["Xbox"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 104
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K6 ["Quest2"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 105
  GETUPVAL R1 0
  LOADK R3 K0 ["DeviceDropdown"]
  LOADK R4 K7 ["Quest3"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEN R1 R0 106
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  SETTABLE R1 R0 R2
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reduce"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["keys"]
  GETUPVAL R2 1
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 0
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["X"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  FASTCALL2 TABLE_INSERT R0 R2 [+5]
  MOVE R4 R0
  MOVE R5 R2
  GETIMPORT R3 K2 [table.insert]
  CALL R3 2 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reduce"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["deviceIds"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  NEWTABLE R3 0 0
  CALL R0 3 1
  GETIMPORT R1 K4 [table.sort]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["onChanged"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["onChanged"]
  GETUPVAL R3 2
  GETTABLE R2 R3 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  NEWTABLE R4 0 4
  GETTABLEKS R5 R0 K2 ["selectedGamepadId"]
  GETTABLEKS R6 R0 K3 ["deviceIds"]
  GETTABLEKS R7 R1 K4 ["getText"]
  GETTABLEKS R8 R1 K5 ["getLocale"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useMemo"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["useState"]
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["useState"]
  GETUPVAL R7 3
  CALL R6 1 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["useMemo"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R6
  NEWTABLE R10 0 1
  MOVE R11 R6
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["useMemo"]
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K3 ["deviceIds"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["useCallback"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K8 ["onChanged"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["useCallback"]
  NEWCLOSURE R12 P5
  CAPTURE VAL R5
  NEWTABLE R13 0 1
  MOVE R14 R5
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["useCallback"]
  NEWCLOSURE R13 P6
  CAPTURE VAL R5
  NEWTABLE R14 0 1
  MOVE R15 R5
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K7 ["useCallback"]
  NEWCLOSURE R14 P7
  CAPTURE VAL R7
  NEWTABLE R15 0 1
  MOVE R16 R7
  SETLIST R15 R16 1 [1]
  CALL R13 2 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K10 ["Frame"]
  NEWTABLE R16 4 0
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["Tag"]
  LOADK R18 K12 ["Component-DeviceDropdown data-testid=Component-DeviceDropdown"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R0 K13 ["LayoutOrder"]
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["Change"]
  GETTABLEKS R17 R18 K15 ["AbsoluteSize"]
  SETTABLE R13 R16 R17
  DUPTABLE R17 K19 [{"Selected", "ButtonContainer", "Menu"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  LOADK R19 K20 ["TextButton"]
  NEWTABLE R20 4 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["Tag"]
  LOADK R22 K21 ["X-Fill CX-Invisible data-testid=DeviceDropdown-SelectedDeviceButton"]
  SETTABLE R22 R20 R21
  GETTABLEKS R22 R0 K2 ["selectedGamepadId"]
  GETTABLE R21 R2 R22
  SETTABLEKS R21 R20 K22 ["Text"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K23 ["DEVICEDROPDOWN_TEXTBUTTON"]
  SETTABLEKS R21 R20 K24 ["ZIndex"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K25 ["Event"]
  GETTABLEKS R21 R22 K26 ["Activated"]
  SETTABLE R12 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K16 ["Selected"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  LOADK R19 K10 ["Frame"]
  NEWTABLE R20 2 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["Tag"]
  LOADK R22 K27 ["CX-Invisible"]
  SETTABLE R22 R20 R21
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K28 ["DEVICEDROPDOWN_IMAGEBUTTON"]
  SETTABLEKS R21 R20 K24 ["ZIndex"]
  DUPTABLE R21 K30 [{"OpenSelectorButton"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K9 ["createElement"]
  LOADK R23 K31 ["ImageButton"]
  NEWTABLE R24 2 0
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K11 ["Tag"]
  GETUPVAL R26 5
  JUMPIFNOT R4 [+2]
  LOADK R27 K32 ["Close"]
  JUMP [+1]
  LOADK R27 K33 ["Open"]
  LOADK R28 K34 ["data-testid=DeviceDropdown-DropdownImageButton"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K25 ["Event"]
  GETTABLEKS R25 R26 K26 ["Activated"]
  SETTABLE R12 R24 R25
  CALL R22 2 1
  SETTABLEKS R22 R21 K29 ["OpenSelectorButton"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K17 ["ButtonContainer"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 6
  NEWTABLE R20 8 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["Tag"]
  LOADK R22 K35 ["DeviceDropdownMenu"]
  SETTABLE R22 R20 R21
  SETTABLEKS R9 R20 K36 ["Items"]
  SETTABLEKS R8 R20 K37 ["Width"]
  NOT R21 R4
  SETTABLEKS R21 R20 K38 ["Hide"]
  SETTABLEKS R10 R20 K39 ["OnItemActivated"]
  SETTABLEKS R11 R20 K40 ["OnFocusLost"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["Menu"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
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
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["Styling"]
  GETTABLEKS R4 R5 K12 ["joinTags"]
  GETTABLEKS R5 R2 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["DropdownMenu"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Dash"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K16 ["Src"]
  GETTABLEKS R10 R11 K17 ["Resources"]
  GETTABLEKS R9 R10 K18 ["StyleConstants"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K19 ["ZIndexData"]
  GETIMPORT R10 K22 [Vector2.new]
  LOADN R11 200
  LOADN R12 40
  CALL R10 2 1
  DUPCLOSURE R11 K23 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETTABLEKS R12 R1 K24 ["memo"]
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1
