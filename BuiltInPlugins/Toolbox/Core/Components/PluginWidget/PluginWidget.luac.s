PROTO_0:
  GETTABLEKS R2 R0 K1 ["Title"]
  ORK R1 R2 K0 [""]
  GETTABLEKS R2 R0 K2 ["Name"]
  JUMPIF R2 [+5]
  LOADK R4 K3 ["%s"]
  LOADK R5 K0 [""]
  NAMECALL R2 R1 K4 ["gsub"]
  CALL R2 3 1
  GETTABLEKS R4 R0 K5 ["Id"]
  OR R3 R4 R2
  RETURN R1 3

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Change"]
  GETTABLEKS R2 R3 K2 ["Enabled"]
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Change"]
  GETTABLEKS R2 R3 K2 ["Enabled"]
  GETTABLE R0 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["widget"]
  GETVARARGS R2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  PREPVARARGS 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Event"]
  GETTABLEKS R2 R3 K2 ["AncestryChanged"]
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Event"]
  GETTABLEKS R2 R3 K2 ["AncestryChanged"]
  GETTABLE R0 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["widget"]
  GETVARARGS R2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R2 K1 [{"pluginGui"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["pluginGui"]
  SETTABLEKS R2 R0 K2 ["state"]
  GETTABLEKS R6 R1 K4 ["Title"]
  ORK R5 R6 K3 [""]
  GETTABLEKS R6 R1 K5 ["Name"]
  JUMPIF R6 [+5]
  LOADK R8 K6 ["%s"]
  LOADK R9 K3 [""]
  NAMECALL R6 R5 K7 ["gsub"]
  CALL R6 3 1
  GETTABLEKS R8 R1 K8 ["Id"]
  OR R7 R8 R6
  MOVE R2 R5
  MOVE R3 R6
  MOVE R4 R7
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R4
  CALL R5 2 1
  SETTABLEKS R5 R0 K9 ["widget"]
  GETTABLEKS R5 R0 K9 ["widget"]
  SETTABLEKS R2 R5 K4 ["Title"]
  GETTABLEKS R5 R0 K9 ["widget"]
  SETTABLEKS R3 R5 K5 ["Name"]
  GETTABLEKS R5 R0 K9 ["widget"]
  GETTABLEKS R6 R1 K10 ["ZIndexBehavior"]
  JUMPIF R6 [+2]
  GETIMPORT R6 K13 [Enum.ZIndexBehavior.Global]
  SETTABLEKS R6 R5 K10 ["ZIndexBehavior"]
  GETTABLEKS R5 R0 K9 ["widget"]
  LOADK R7 K14 ["Enabled"]
  NAMECALL R5 R5 K15 ["GetPropertyChangedSignal"]
  CALL R5 2 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R5 R5 K16 ["connect"]
  CALL R5 2 0
  GETTABLEKS R6 R0 K9 ["widget"]
  GETTABLEKS R5 R6 K17 ["AncestryChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R5 R5 K16 ["connect"]
  CALL R5 2 0
  GETTABLEKS R5 R1 K18 ["ForwardRef"]
  JUMPIFNOT R5 [+4]
  MOVE R6 R5
  GETTABLEKS R7 R0 K9 ["widget"]
  CALL R6 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R7 R1 K1 ["Title"]
  ORK R6 R7 K0 [""]
  GETTABLEKS R7 R1 K2 ["Name"]
  JUMPIF R7 [+5]
  LOADK R9 K3 ["%s"]
  LOADK R10 K0 [""]
  NAMECALL R7 R6 K4 ["gsub"]
  CALL R7 3 1
  GETTABLEKS R9 R1 K5 ["Id"]
  OR R8 R9 R7
  MOVE R3 R6
  MOVE R4 R7
  MOVE R5 R8
  GETTABLEKS R9 R0 K6 ["props"]
  GETTABLEKS R11 R9 K1 ["Title"]
  ORK R10 R11 K0 [""]
  GETTABLEKS R11 R9 K2 ["Name"]
  JUMPIF R11 [+5]
  LOADK R13 K3 ["%s"]
  LOADK R14 K0 [""]
  NAMECALL R11 R10 K4 ["gsub"]
  CALL R11 3 1
  GETTABLEKS R13 R9 K5 ["Id"]
  OR R12 R13 R11
  MOVE R6 R10
  MOVE R7 R11
  MOVE R8 R12
  JUMPIFEQ R6 R3 [+5]
  GETTABLEKS R9 R0 K7 ["widget"]
  SETTABLEKS R6 R9 K1 ["Title"]
  JUMPIFEQ R7 R4 [+5]
  GETTABLEKS R9 R0 K7 ["widget"]
  SETTABLEKS R7 R9 K2 ["Name"]
  GETTABLEKS R10 R0 K6 ["props"]
  GETTABLEKS R9 R10 K8 ["ZIndexBehavior"]
  GETTABLEKS R10 R1 K8 ["ZIndexBehavior"]
  JUMPIFEQ R9 R10 [+9]
  GETTABLEKS R9 R0 K7 ["widget"]
  GETTABLEKS R11 R0 K6 ["props"]
  GETTABLEKS R10 R11 K8 ["ZIndexBehavior"]
  SETTABLEKS R10 R9 K8 ["ZIndexBehavior"]
  GETTABLEKS R10 R0 K6 ["props"]
  GETTABLEKS R9 R10 K9 ["Enabled"]
  GETTABLEKS R10 R1 K9 ["Enabled"]
  JUMPIFEQ R9 R10 [+9]
  GETTABLEKS R9 R0 K7 ["widget"]
  GETTABLEKS R11 R0 K6 ["props"]
  GETTABLEKS R10 R11 K9 ["Enabled"]
  SETTABLEKS R10 R9 K9 ["Enabled"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Portal"]
  DUPTABLE R3 K3 [{"target"}]
  GETTABLEKS R4 R0 K4 ["widget"]
  SETTABLEKS R4 R3 K2 ["target"]
  GETTABLEKS R5 R0 K5 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Children"]
  GETTABLE R4 R5 R6
  CALL R1 3 -1
  RETURN R1 -1

PROTO_6:
  DUPTABLE R3 K1 [{"pluginGui"}]
  GETTABLEKS R4 R0 K2 ["widget"]
  SETTABLEKS R4 R3 K0 ["pluginGui"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["widget"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["widget"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PureComponent"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["extend"]
  CALL R2 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K2 ["init"]
  DUPCLOSURE R3 K3 [PROTO_4]
  SETTABLEKS R3 R2 K4 ["didUpdate"]
  DUPCLOSURE R3 K5 [PROTO_5]
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K6 ["render"]
  DUPCLOSURE R3 K7 [PROTO_6]
  SETTABLEKS R3 R2 K8 ["didMount"]
  DUPCLOSURE R3 K9 [PROTO_7]
  SETTABLEKS R3 R2 K10 ["willUnmount"]
  GETUPVAL R3 1
  MOVE R4 R2
  CALL R3 1 1
  MOVE R2 R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K8 ["Wrappers"]
  GETTABLEKS R4 R5 K9 ["withForwardRef"]
  DUPCLOSURE R5 K10 [PROTO_0]
  DUPCLOSURE R6 K11 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1