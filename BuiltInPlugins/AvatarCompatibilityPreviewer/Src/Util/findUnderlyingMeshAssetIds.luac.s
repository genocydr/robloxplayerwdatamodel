PROTO_0:
  JUMPIFEQKNIL R1 [+3]
  LOADB R2 1
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  NAMECALL R2 R0 K0 ["GetDescendants"]
  CALL R2 1 1
  FASTCALL2 TABLE_INSERT R2 R0 [+5]
  MOVE R4 R2
  MOVE R5 R0
  GETIMPORT R3 K3 [table.insert]
  CALL R3 2 0
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADK R10 K4 ["MeshPart"]
  NAMECALL R8 R7 K5 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+9]
  GETUPVAL R8 0
  GETTABLEKS R9 R7 K6 ["MeshId"]
  CALL R8 1 1
  JUMPIFEQKNIL R8 [+17]
  LOADB R9 1
  SETTABLE R9 R1 R8
  JUMP [+13]
  LOADK R10 K7 ["WrapTarget"]
  NAMECALL R8 R7 K5 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+8]
  GETUPVAL R8 0
  GETTABLEKS R9 R7 K8 ["CageMeshId"]
  CALL R8 1 1
  JUMPIFEQKNIL R8 [+3]
  LOADB R9 1
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-28]
  NEWTABLE R3 0 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  FASTCALL2 TABLE_INSERT R3 R7 [+5]
  MOVE R10 R3
  MOVE R11 R7
  GETIMPORT R9 K3 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 1 [-8]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["assetUriToId"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R1
  RETURN R3 1
