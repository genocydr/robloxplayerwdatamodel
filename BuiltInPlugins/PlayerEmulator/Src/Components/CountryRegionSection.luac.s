PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["EmulatedCountryCode"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["EmulatedCountryCode"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["countryRegionTable"]
  JUMPIFNOT R2 [+6]
  GETTABLE R3 R2 R1
  JUMPIFNOT R3 [+4]
  GETTABLE R4 R2 R1
  GETTABLEKS R3 R4 K2 ["displayText"]
  RETURN R3 1
  LOADK R3 K3 [""]
  RETURN R3 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["COUNTRY_REGION_SETTING_KEY"]
  NAMECALL R3 R2 K4 ["GetSetting"]
  CALL R3 2 1
  JUMPIFEQ R3 R1 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["COUNTRY_REGION_SETTING_KEY"]
  MOVE R6 R1
  NAMECALL R3 R2 K5 ["SetSetting"]
  CALL R3 3 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["onEmulatedCountryRegionChanged"]
  MOVE R4 R3
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K3 [{"Id", "Label", "code"}]
  GETTABLEKS R2 R0 K4 ["displayText"]
  SETTABLEKS R2 R1 K0 ["Id"]
  GETTABLEKS R2 R0 K4 ["displayText"]
  SETTABLEKS R2 R1 K1 ["Label"]
  GETTABLEKS R2 R0 K2 ["code"]
  SETTABLEKS R2 R1 K2 ["code"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["code"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K1 ["EmulatedCountryCode"]
  RETURN R0 0

PROTO_6:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["signalTokens"]
  DUPCLOSURE R1 K1 [PROTO_4]
  SETTABLEKS R1 R0 K2 ["createCountryRegionListForSelectInput"]
  DUPCLOSURE R1 K3 [PROTO_5]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K4 ["onItemClicked"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["EmulatedCountryCode"]
  NAMECALL R0 R0 K1 ["updateCountryRegionSetting"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Networking"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R3 0
  LOADK R5 K4 ["EmulatedCountryCode"]
  NAMECALL R3 R3 K5 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K7 ["signalTokens"]
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K10 [table.insert]
  CALL R4 2 0
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K11 ["loadCountryRegion"]
  MOVE R5 R2
  MOVE R6 R1
  CALL R4 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["signalTokens"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["signalTokens"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["mainSwitchEnabled"]
  GETTABLEKS R3 R1 K2 ["countryRegionList"]
  GETTABLEKS R4 R1 K3 ["userCountryRegionCode"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  GETTABLEKS R7 R1 K6 ["LayoutOrder"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K12 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R12 1
  JUMPIFNOT R12 [+3]
  GETIMPORT R11 K15 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K9 ["AutomaticSize"]
  GETUPVAL R12 1
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K18 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  JUMP [+2]
  GETTABLEKS R11 R5 K19 ["SELECTOR_SIZE"]
  SETTABLEKS R11 R10 K10 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  SETTABLEKS R7 R10 K6 ["LayoutOrder"]
  DUPTABLE R11 K23 [{"Layout", "Label", "CountryRegionDropdown"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K24 ["UIListLayout"]
  DUPTABLE R14 K31 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment", "Padding", "Wraps"}]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K34 [Enum.UIFlexAlignment.SpaceBetween]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K25 ["HorizontalFlex"]
  GETIMPORT R15 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K26 ["SortOrder"]
  GETIMPORT R15 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K27 ["FillDirection"]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K39 [Enum.VerticalAlignment.Center]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K28 ["VerticalAlignment"]
  GETTABLEKS R15 R5 K40 ["HORIZONTAL_LISTLAYOUT_PADDING"]
  SETTABLEKS R15 R14 K29 ["Padding"]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+2]
  LOADB R15 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K30 ["Wraps"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["Layout"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K43 [{"AutomaticSize", "StyleModifier", "Text", "LayoutOrder"}]
  GETIMPORT R15 K45 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K9 ["AutomaticSize"]
  JUMPIFNOT R2 [+2]
  LOADNIL R15
  JUMP [+3]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K46 ["Disabled"]
  SETTABLEKS R15 R14 K41 ["StyleModifier"]
  LOADK R17 K47 ["CountryRegionSection"]
  LOADK R18 K48 ["LabelText"]
  NAMECALL R15 R6 K49 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["Text"]
  LOADN R15 1
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Label"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K54 [{"Items", "LayoutOrder", "OnItemActivated", "SelectedId", "Enabled"}]
  GETUPVAL R15 5
  MOVE R16 R3
  GETTABLEKS R17 R0 K55 ["createCountryRegionListForSelectInput"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["Items"]
  LOADN R15 2
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  GETTABLEKS R15 R0 K56 ["onItemClicked"]
  SETTABLEKS R15 R14 K51 ["OnItemActivated"]
  MOVE R17 R4
  NAMECALL R15 R0 K57 ["getCurrentCountryRegionText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["SelectedId"]
  SETTABLEKS R2 R14 K53 ["Enabled"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["CountryRegionDropdown"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_11:
  DUPTABLE R2 K4 [{"mainSwitchEnabled", "countryRegionTable", "countryRegionList", "userCountryRegionCode"}]
  GETTABLEKS R4 R0 K5 ["MainSwitch"]
  GETTABLEKS R3 R4 K0 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K0 ["mainSwitchEnabled"]
  GETTABLEKS R4 R0 K6 ["CountryRegion"]
  GETTABLEKS R3 R4 K1 ["countryRegionTable"]
  SETTABLEKS R3 R2 K1 ["countryRegionTable"]
  GETTABLEKS R4 R0 K6 ["CountryRegion"]
  GETTABLEKS R3 R4 K2 ["countryRegionList"]
  SETTABLEKS R3 R2 K2 ["countryRegionList"]
  GETTABLEKS R4 R0 K6 ["CountryRegion"]
  GETTABLEKS R3 R4 K3 ["userCountryRegionCode"]
  SETTABLEKS R3 R2 K3 ["userCountryRegionCode"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K2 [{"loadCountryRegion", "onEmulatedCountryRegionChanged"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["loadCountryRegion"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onEmulatedCountryRegionChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnablePseudolocalizationInPlayerEmulator2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PlayerEmulatorService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R2 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K17 ["Src"]
  GETTABLEKS R10 R11 K15 ["ContextServices"]
  GETTABLEKS R9 R10 K18 ["NetworkingContext"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R13 R2 K17 ["Src"]
  GETTABLEKS R12 R13 K19 ["Networking"]
  GETTABLEKS R11 R12 K20 ["Requests"]
  GETTABLEKS R10 R11 K21 ["GetCountryRegion"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R2 K17 ["Src"]
  GETTABLEKS R12 R13 K22 ["Util"]
  GETTABLEKS R11 R12 K23 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R2 K17 ["Src"]
  GETTABLEKS R13 R14 K24 ["Actions"]
  GETTABLEKS R12 R13 K25 ["OnEmulatedCountryRegionChanged"]
  CALL R11 1 1
  GETTABLEKS R12 R5 K26 ["UI"]
  GETTABLEKS R13 R12 K27 ["SelectInput"]
  GETTABLEKS R14 R12 K28 ["TextLabel"]
  GETTABLEKS R15 R5 K29 ["Dash"]
  GETTABLEKS R16 R15 K30 ["map"]
  GETTABLEKS R18 R5 K22 ["Util"]
  GETTABLEKS R17 R18 K31 ["StyleModifier"]
  GETTABLEKS R18 R3 K32 ["PureComponent"]
  LOADK R20 K33 ["CountryRegionSection"]
  NAMECALL R18 R18 K34 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K35 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R20 K36 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R21 K37 [PROTO_2]
  SETTABLEKS R21 R18 K38 ["getCurrentCountryRegionText"]
  DUPCLOSURE R21 K39 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R21 R18 K40 ["updateCountryRegionSetting"]
  DUPCLOSURE R21 K41 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R21 R18 K42 ["init"]
  DUPCLOSURE R21 K43 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R21 R18 K44 ["didMount"]
  DUPCLOSURE R21 K45 [PROTO_9]
  SETTABLEKS R21 R18 K46 ["willUnmount"]
  DUPCLOSURE R21 K47 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R16
  SETTABLEKS R21 R18 K48 ["render"]
  MOVE R21 R7
  DUPTABLE R22 K52 [{"Stylizer", "Localization", "Networking", "Plugin"}]
  GETTABLEKS R23 R6 K49 ["Stylizer"]
  SETTABLEKS R23 R22 K49 ["Stylizer"]
  GETTABLEKS R23 R6 K50 ["Localization"]
  SETTABLEKS R23 R22 K50 ["Localization"]
  SETTABLEKS R8 R22 K19 ["Networking"]
  GETTABLEKS R23 R6 K51 ["Plugin"]
  SETTABLEKS R23 R22 K51 ["Plugin"]
  CALL R21 1 1
  MOVE R22 R18
  CALL R21 1 1
  MOVE R18 R21
  DUPCLOSURE R21 K53 [PROTO_11]
  DUPCLOSURE R22 K54 [PROTO_14]
  CAPTURE VAL R9
  CAPTURE VAL R11
  GETTABLEKS R23 R4 K55 ["connect"]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R24 R18
  CALL R23 1 -1
  RETURN R23 -1
