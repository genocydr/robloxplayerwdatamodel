PROTO_0:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+30]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K3 [{"isFocused", "didFocus"}]
  GETTABLEKS R6 R0 K4 ["props"]
  GETTABLEKS R5 R6 K5 ["menuOpen"]
  NOT R4 R5
  JUMPIF R4 [+11]
  GETTABLEKS R6 R0 K4 ["props"]
  GETTABLEKS R5 R6 K6 ["inputType"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["Gamepad"]
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["isFocused"]
  DUPCLOSURE R4 K8 [PROTO_0]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K2 ["didFocus"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K10 [{"isFocused", "didBlur"}]
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R4 R5 K5 ["menuOpen"]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R6 R0 K4 ["props"]
  GETTABLEKS R5 R6 K6 ["inputType"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["Gamepad"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["isFocused"]
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K9 ["didBlur"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  DUPTABLE R1 K2 [{"menuOpen", "inputType"}]
  GETTABLEKS R2 R0 K3 ["isMenuOpen"]
  SETTABLEKS R2 R1 K0 ["menuOpen"]
  GETTABLEKS R3 R0 K4 ["displayOptions"]
  GETTABLEKS R2 R3 K1 ["inputType"]
  SETTABLEKS R2 R1 K1 ["inputType"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["RoactRodux"]
  GETTABLEKS R5 R2 K11 ["t"]
  GETIMPORT R9 K13 [script]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Parent"]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K15 ["Resources"]
  GETTABLEKS R8 R9 K16 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["InputType"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R6 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["GetFFlagIGMGamepadSelectionHistory"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETIMPORT R13 K13 [script]
  GETTABLEKS R12 R13 K14 ["Parent"]
  GETTABLEKS R11 R12 K20 ["FocusHandler"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K21 ["PureComponent"]
  LOADK R13 K22 ["FocusHighlightManager"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R5 K24 ["strictInterface"]
  DUPTABLE R13 K27 [{"menuOpen", "inputType"}]
  GETTABLEKS R14 R5 K28 ["boolean"]
  SETTABLEKS R14 R13 K25 ["menuOpen"]
  GETTABLEKS R14 R5 K29 ["string"]
  SETTABLEKS R14 R13 K26 ["inputType"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K30 ["validateProps"]
  DUPCLOSURE R12 K31 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K32 ["render"]
  GETTABLEKS R12 R4 K33 ["UNSTABLE_connect2"]
  DUPCLOSURE R13 K34 [PROTO_3]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1