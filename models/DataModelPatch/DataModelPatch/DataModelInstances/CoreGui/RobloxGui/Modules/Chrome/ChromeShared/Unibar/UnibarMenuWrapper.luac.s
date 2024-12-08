PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["ContextStack"]
  DUPTABLE R3 K3 [{"providers"}]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+25]
  NEWTABLE R4 0 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K4 ["Provider"]
  DUPTABLE R8 K6 [{"policy"}]
  NEWTABLE R9 0 1
  GETUPVAL R10 5
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K5 ["policy"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  JUMP [+31]
  NEWTABLE R4 0 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K4 ["Provider"]
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K4 ["Provider"]
  DUPTABLE R9 K6 [{"policy"}]
  NEWTABLE R10 0 1
  GETUPVAL R11 5
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K5 ["policy"]
  CALL R7 2 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K2 ["providers"]
  DUPTABLE R4 K8 [{"UnibarMenu"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 7
  MOVE R7 R0
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["UnibarMenu"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ChromeShared"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CoreGui"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R2 K10 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R1 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R1 K13 ["Packages"]
  GETTABLEKS R6 R7 K15 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R0 K16 ["Unibar"]
  GETTABLEKS R7 R8 K17 ["UnibarMenu"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R1 K13 ["Packages"]
  GETTABLEKS R8 R9 K18 ["UIBlox"]
  CALL R7 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R1 K19 ["Workspace"]
  GETTABLEKS R11 R12 K13 ["Packages"]
  GETTABLEKS R10 R11 K20 ["UniversalAppPolicy"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K21 ["RoactAppPolicy"]
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R1 K19 ["Workspace"]
  GETTABLEKS R12 R13 K13 ["Packages"]
  GETTABLEKS R11 R12 K20 ["UniversalAppPolicy"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K22 ["AppFeaturePolicies"]
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R3 K23 ["Modules"]
  GETTABLEKS R12 R13 K24 ["VoiceChat"]
  GETTABLEKS R11 R12 K25 ["VoiceStateContext"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R14 R1 K19 ["Workspace"]
  GETTABLEKS R13 R14 K13 ["Packages"]
  GETTABLEKS R12 R13 K26 ["SharedFlags"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K27 ["GetFFlagRemoveChromeRobloxGuiReferences"]
  GETTABLEKS R15 R7 K28 ["App"]
  GETTABLEKS R14 R15 K29 ["SelectionImage"]
  GETTABLEKS R13 R14 K30 ["SelectionCursorProvider"]
  DUPCLOSURE R14 K31 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  RETURN R14 1
