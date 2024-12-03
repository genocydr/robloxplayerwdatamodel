PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["current"]
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  JUMPIFEQKNIL R2 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["StoreProvider"]
  DUPTABLE R4 K3 [{"store"}]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K2 ["store"]
  DUPTABLE R5 K5 [{"Wrapper"}]
  SETTABLEKS R1 R5 K4 ["Wrapper"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R2 1 1
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 1
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R3 1 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["Frame"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createRoot"]
  MOVE R8 R6
  CALL R7 1 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  CALL R8 1 0
  NEWCLOSURE R8 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R7
  CAPTURE VAL R5
  NEWCLOSURE R9 P4
  CAPTURE VAL R7
  DUPTABLE R10 K8 [{"result", "rerender", "cleanup"}]
  SETTABLEKS R3 R10 K5 ["result"]
  SETTABLEKS R8 R10 K6 ["rerender"]
  SETTABLEKS R9 R10 K7 ["cleanup"]
  RETURN R10 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["RoactRodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["act"]
  DUPCLOSURE R5 K11 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
