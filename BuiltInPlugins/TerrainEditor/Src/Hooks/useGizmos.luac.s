PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getTool"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["current"]
  RETURN R0 0
  GETUPVAL R1 2
  DUPTABLE R2 K4 [{"Gizmos", "FromSelf", "Tool"}]
  NAMECALL R3 R0 K5 ["gizmos"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["Gizmos"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["FromSelf"]
  SETTABLEKS R0 R2 K3 ["Tool"]
  SETTABLEKS R2 R1 K0 ["current"]
  GETUPVAL R1 3
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0
  GETUPVAL R0 2
  DUPTABLE R1 K4 [{"Gizmos", "FromSelf", "Tool"}]
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["FromSelf"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["Tool"]
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0
  GETUPVAL R0 2
  DUPTABLE R1 K4 [{"Gizmos", "FromSelf", "Tool"}]
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["FromSelf"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["Tool"]
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0
  GETUPVAL R0 2
  DUPTABLE R1 K4 [{"Gizmos", "FromSelf", "Tool"}]
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["FromSelf"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["Tool"]
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
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
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnToolChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R1 5
  JUMPIF R1 [+3]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K2 ["OnInternalsChanged"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K3 ["OnFormChanged"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K4 ["OnShortcutChanged"]
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  NAMECALL R3 R3 K1 ["Connect"]
  CALL R3 2 1
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+14]
  DUPTABLE R1 K3 [{"Gizmos", "FromSelf", "Tool"}]
  GETUPVAL R2 2
  NAMECALL R2 R2 K4 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K2 ["Tool"]
  JUMP [+8]
  DUPTABLE R1 K5 [{"Gizmos", "FromSelf"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["getTool"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["saveGizmos"]
  CALL R2 2 0
  GETUPVAL R2 0
  DUPTABLE R3 K6 [{"Gizmos", "FromSelf", "Tool"}]
  GETUPVAL R4 2
  NAMECALL R4 R4 K1 ["getTool"]
  CALL R4 1 1
  NAMECALL R4 R4 K7 ["gizmos"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["Gizmos"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["FromSelf"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K5 ["Tool"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 4
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  DUPTABLE R3 K2 [{"Gizmos", "FromSelf"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["Gizmos"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["FromSelf"]
  CALL R2 1 2
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 0
  LOADB R6 0
  CALL R5 1 2
  GETUPVAL R7 2
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R8 2
  LOADNIL R9
  CALL R8 1 1
  GETUPVAL R9 2
  LOADNIL R10
  CALL R9 1 1
  GETTABLEKS R10 R8 K3 ["current"]
  JUMPIFNOT R10 [+22]
  GETTABLEKS R10 R9 K3 ["current"]
  JUMPIFNOT R10 [+16]
  LOADNIL R10
  SETTABLEKS R10 R9 K3 ["current"]
  DUPTABLE R10 K5 [{"Gizmos", "FromSelf", "Tool"}]
  NAMECALL R11 R4 K6 ["gizmos"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K0 ["Gizmos"]
  LOADB R11 0
  SETTABLEKS R11 R10 K1 ["FromSelf"]
  SETTABLEKS R4 R10 K4 ["Tool"]
  SETTABLEKS R10 R7 K3 ["current"]
  LOADNIL R10
  SETTABLEKS R10 R8 K3 ["current"]
  GETTABLEKS R10 R7 K3 ["current"]
  JUMPIFNOT R10 [+11]
  MOVE R10 R3
  GETTABLEKS R11 R7 K3 ["current"]
  CALL R10 1 0
  LOADNIL R10
  SETTABLEKS R10 R7 K3 ["current"]
  JUMPIFNOT R5 [+3]
  MOVE R10 R6
  LOADB R11 0
  CALL R10 1 0
  GETUPVAL R10 3
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R12 0 2
  MOVE R13 R4
  MOVE R14 R1
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  GETUPVAL R10 3
  NEWCLOSURE R11 P2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R12 0 1
  MOVE R13 R1
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  NEWCLOSURE R10 P3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETTABLEKS R11 R2 K0 ["Gizmos"]
  MOVE R12 R10
  GETTABLEKS R14 R2 K4 ["Tool"]
  OR R13 R14 R4
  GETTABLEKS R14 R2 K1 ["FromSelf"]
  RETURN R11 4

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getTool"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"Gizmos", "FromSelf"}]
  NAMECALL R3 R0 K3 ["gizmos"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["Gizmos"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["FromSelf"]
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["current"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  SETTABLEKS R1 R0 K4 ["current"]
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  SETTABLEKS R1 R0 K4 ["current"]
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
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
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnToolChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R1 4
  JUMPIF R1 [+3]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K2 ["OnInternalsChanged"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["OnFormChanged"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K4 ["OnShortcutChanged"]
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R3 R3 K1 ["Connect"]
  CALL R3 2 1
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1

PROTO_19:
  GETUPVAL R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+11]
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 2
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  JUMP [+8]
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["getTool"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["saveGizmos"]
  CALL R2 2 0
  GETUPVAL R2 2
  DUPTABLE R3 K5 [{"Gizmos", "FromSelf"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["getTool"]
  CALL R4 1 1
  NAMECALL R4 R4 K6 ["gizmos"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["Gizmos"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["FromSelf"]
  CALL R2 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  DUPTABLE R3 K2 [{"Gizmos", "FromSelf"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["Gizmos"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["FromSelf"]
  CALL R2 1 2
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 0
  LOADB R6 0
  CALL R5 1 2
  GETUPVAL R7 2
  LOADNIL R8
  CALL R7 1 1
  GETTABLEKS R8 R7 K3 ["current"]
  JUMPIFNOT R8 [+11]
  MOVE R8 R3
  GETTABLEKS R9 R7 K3 ["current"]
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R7 K3 ["current"]
  JUMPIFNOT R5 [+3]
  MOVE R8 R6
  LOADB R9 0
  CALL R8 1 0
  GETUPVAL R8 3
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R10 0 2
  MOVE R11 R4
  MOVE R12 R1
  SETLIST R10 R11 2 [1]
  CALL R8 2 0
  GETUPVAL R8 3
  NEWCLOSURE R9 P2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R10 0 1
  MOVE R11 R1
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  NEWCLOSURE R8 P3
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R3
  GETTABLEKS R9 R2 K0 ["Gizmos"]
  MOVE R10 R8
  MOVE R11 R4
  GETTABLEKS R12 R2 K1 ["FromSelf"]
  RETURN R9 4

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useMemo"]
  GETTABLEKS R3 R1 K9 ["useRef"]
  GETTABLEKS R4 R1 K10 ["useState"]
  GETTABLEKS R5 R1 K11 ["useEffect"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K15 [game]
  LOADK R9 K16 ["TerrainEditorUseGizmosLinkTool"]
  LOADB R10 0
  NAMECALL R7 R7 K17 ["DefineFastFlag"]
  CALL R7 3 1
  DUPCLOSURE R8 K18 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPCLOSURE R9 K19 [PROTO_21]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  JUMPIFNOT R7 [+2]
  MOVE R10 R8
  RETURN R10 1
  MOVE R10 R9
  RETURN R10 1