PROTO_0:
  GETUPVAL R2 0
  LOADK R4 K0 ["ChangeHumanoidState"]
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["Players"]
  GETTABLEKS R1 R2 K3 ["LocalPlayer"]
  JUMPIFNOTEQKNIL R1 [+13]
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["Players"]
  LOADK R3 K3 ["LocalPlayer"]
  NAMECALL R1 R1 K4 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NAMECALL R1 R1 K5 ["Wait"]
  CALL R1 1 0
  JUMPBACK [-20]
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["Players"]
  GETTABLEKS R1 R2 K3 ["LocalPlayer"]
  GETTABLEKS R2 R1 K6 ["Character"]
  JUMPIF R2 [+5]
  GETTABLEKS R2 R1 K7 ["CharacterAdded"]
  NAMECALL R2 R2 K5 ["Wait"]
  CALL R2 1 1
  LOADK R5 K8 ["Humanoid"]
  LOADN R6 20
  NAMECALL R3 R2 K9 ["WaitForChild"]
  CALL R3 3 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R3 K10 ["StateChanged"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K11 ["Connect"]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["createRoot"]
  GETIMPORT R5 K15 [Instance.new]
  LOADK R6 K16 ["Frame"]
  CALL R5 1 -1
  CALL R4 -1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K19 [{"Plugin"}]
  SETTABLEKS R0 R9 K18 ["Plugin"]
  CALL R7 2 -1
  NAMECALL R5 R4 K20 ["render"]
  CALL R5 -1 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["PlayRoot"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["ReactRoblox"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
