PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["uuid"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 1
  GETIMPORT R1 K3 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["uuid"]
  GETTABLE R2 R1 R3
  JUMPIFNOTEQKNIL R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["uuid"]
  NEWTABLE R3 0 0
  SETTABLE R3 R1 R2
  GETUPVAL R2 1
  MOVE R3 R1
  GETUPVAL R4 0
  CALL R2 2 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K5 [print]
  LOADK R3 K6 ["add/update previewTable"]
  MOVE R4 R1
  CALL R2 2 0
  GETIMPORT R2 K8 [table.freeze]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["updatePreview"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagDebugTextureGeneratorLogging"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1