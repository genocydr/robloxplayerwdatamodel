PROTO_0:
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [table.find]
  GETTABLEKS R9 R0 K3 ["hoveredPointNames"]
  MOVE R10 R7
  CALL R8 2 1
  JUMPIFEQKNIL R8 [+5]
  MOVE R8 R7
  LOADNIL R9
  LOADN R10 1
  RETURN R8 3
  FORGLOOP R3 2 [-13]
  GETTABLEKS R4 R0 K3 ["hoveredPointNames"]
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K4 [0] [+5]
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  RETURN R3 3
  GETTABLEKS R4 R0 K3 ["hoveredPointNames"]
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K5 [1] [+7]
  GETTABLEKS R4 R0 K3 ["hoveredPointNames"]
  GETTABLEN R3 R4 1
  LOADNIL R4
  LOADN R5 1
  RETURN R3 3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["CurrentCamera"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K7 [+4]
  LOADK R6 K7 ["Camera was set to nil before getMouseTarget"]
  GETIMPORT R4 K9 [assert]
  CALL R4 2 0
  LOADNIL R4
  LOADK R5 K10 [∞]
  LOADN R6 0
  GETTABLEKS R7 R0 K11 ["points"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETIMPORT R12 K2 [table.find]
  GETTABLEKS R13 R0 K3 ["hoveredPointNames"]
  GETTABLEKS R14 R11 K12 ["name"]
  CALL R12 2 1
  JUMPIFEQKNIL R12 [+31]
  GETTABLEKS R15 R0 K13 ["worldModel"]
  GETTABLEKS R14 R15 K14 ["PrimaryPart"]
  GETTABLEKS R13 R14 K15 ["Position"]
  GETTABLEKS R15 R11 K16 ["getCFrame"]
  CALL R15 0 1
  GETTABLEKS R14 R15 K15 ["Position"]
  ADD R12 R13 R14
  GETTABLEKS R16 R3 K17 ["CFrame"]
  GETTABLEKS R15 R16 K15 ["Position"]
  SUB R14 R12 R15
  GETTABLEKS R13 R14 K18 ["Magnitude"]
  JUMPIFNOTLT R13 R5 [+4]
  MOVE R5 R13
  GETTABLEKS R4 R11 K12 ["name"]
  ADDK R6 R6 K5 [1]
  GETTABLEKS R15 R0 K3 ["hoveredPointNames"]
  LENGTH R14 R15
  JUMPIFEQ R6 R14 [+3]
  FORGLOOP R7 2 [-40]
  MOVE R7 R4
  LOADNIL R8
  LOADN R9 1
  RETURN R7 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["EditingTools"]
  GETTABLEKS R4 R5 K13 ["BodyPointsTool"]
  GETTABLEKS R3 R4 K14 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R0
  RETURN R3 1