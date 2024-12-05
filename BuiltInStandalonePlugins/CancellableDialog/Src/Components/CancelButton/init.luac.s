PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["OnCancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["Frame"]
  NEWTABLE R4 2 0
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Tag"]
  LOADK R6 K5 ["X-FitY X-Row X-Right Component-CancelButton"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K7 [{"CancelButton"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K8 ["TextButton"]
  NEWTABLE R8 4 0
  LOADK R11 K9 ["Button"]
  LOADK R12 K10 ["Cancel"]
  NAMECALL R9 R1 K11 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["Text"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["Tag"]
  GETUPVAL R10 2
  LOADK R11 K13 ["X-Corner X-Fit Cancel-Button"]
  GETTABLEKS R13 R0 K14 ["Enabled"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K14 ["Enabled"]
  JUMP [+1]
  LOADK R12 K15 ["Disabled"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["Event"]
  GETTABLEKS R9 R10 K17 ["Activated"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["CancelButton"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
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
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["Styling"]
  GETTABLEKS R5 R6 K12 ["joinTags"]
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R6 1
