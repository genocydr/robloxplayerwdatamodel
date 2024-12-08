PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mobileDevice"]
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["screenSize"]
  NAMECALL R3 R3 K1 ["get"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K3 ["Y"]
  GETTABLEKS R6 R3 K4 ["X"]
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R0
  MOVE R6 R1
  JUMPIFNOT R2 [+43]
  JUMPIFNOT R4 [+21]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["MAX_HEIGHT_PORTRAIT"]
  FASTCALL2 MATH_MIN R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K8 [math.min]
  CALL R7 2 1
  MOVE R6 R7
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["MAX_WIDTH_PORTRAIT"]
  FASTCALL2 MATH_MIN R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K8 [math.min]
  CALL R7 2 1
  MOVE R5 R7
  JUMP [+21]
  JUMPIF R4 [+20]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["MAX_HEIGHT_LANDSCAPE"]
  FASTCALL2 MATH_MIN R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K8 [math.min]
  CALL R7 2 1
  MOVE R6 R7
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["MAX_WIDTH_LANDSCAPE"]
  FASTCALL2 MATH_MIN R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K8 [math.min]
  CALL R7 2 1
  MOVE R5 R7
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R6
  CALL R7 4 -1
  RETURN R7 -1

PROTO_1:
  DUPTABLE R3 K3 [{"_state", "_isLarge", "_changeSignal"}]
  GETUPVAL R4 0
  MOVE R5 R0
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["DEFAULT_WIDTH"]
  MOVE R6 R1
  JUMPIF R6 [+3]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["DEFAULT_HEIGHT"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["_state"]
  ORK R4 R2 K6 [False]
  SETTABLEKS R4 R3 K1 ["_isLarge"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K2 ["_changeSignal"]
  GETUPVAL R6 3
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K9 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_changeSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R3 0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  GETTABLEKS R4 R0 K0 ["_state"]
  JUMPIFEQ R4 R3 [+9]
  SETTABLEKS R3 R0 K0 ["_state"]
  GETTABLEKS R4 R0 K1 ["_changeSignal"]
  MOVE R6 R3
  NAMECALL R4 R4 K2 ["fire"]
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_isLarge"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["_isLarge"]
  GETTABLEKS R2 R0 K1 ["_changeSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_state"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_isLarge"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R5 R0 K0 ["_state"]
  GETTABLEKS R4 R5 K1 ["Width"]
  GETTABLEKS R3 R4 K2 ["Offset"]
  GETTABLEKS R6 R0 K0 ["_state"]
  GETTABLEKS R5 R6 K3 ["Height"]
  GETTABLEKS R4 R5 K2 ["Offset"]
  NAMECALL R1 R0 K4 ["requestSize"]
  CALL R1 3 0
  RETURN R0 0

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
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Workspace"]
  GETTABLEKS R4 R5 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["AppCommonLib"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K13 ["Signal"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K14 ["Service"]
  GETTABLEKS R5 R6 K15 ["ViewportUtil"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K16 ["Unibar"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K18 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R7 8 0
  SETTABLEKS R7 R7 K19 ["__index"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K21 ["new"]
  DUPCLOSURE R8 K22 [PROTO_2]
  SETTABLEKS R8 R7 K23 ["connect"]
  DUPCLOSURE R8 K24 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K25 ["requestSize"]
  DUPCLOSURE R8 K26 [PROTO_4]
  SETTABLEKS R8 R7 K27 ["toggleIsLarge"]
  DUPCLOSURE R8 K28 [PROTO_5]
  SETTABLEKS R8 R7 K29 ["get"]
  DUPCLOSURE R8 K30 [PROTO_6]
  SETTABLEKS R8 R7 K31 ["getIsLarge"]
  DUPCLOSURE R8 K32 [PROTO_7]
  SETTABLEKS R8 R7 K33 ["updateConstraints"]
  RETURN R7 1
