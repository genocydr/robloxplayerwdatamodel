PROTO_0:
  JUMPIF R0 [+2]
  LOADK R2 K0 [""]
  RETURN R2 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R3 R0
  LOADK R4 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETIMPORT R2 K6 [DateTime.fromIsoDate]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+2]
  LOADK R3 K0 [""]
  RETURN R3 1
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  JUMPIFNOT R4 [+8]
  LOADK R5 K7 ["L LT"]
  GETTABLEKS R6 R1 K8 ["getLocale"]
  CALL R6 0 -1
  NAMECALL R3 R2 K9 ["FormatUniversalTime"]
  CALL R3 -1 1
  RETURN R3 1
  LOADK R5 K7 ["L LT"]
  LOADK R6 K10 ["en-us"]
  NAMECALL R3 R2 K11 ["FormatLocalTime"]
  CALL R3 3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagLuaStartPageFixLastViewed"]
  CALL R1 1 1
  CALL R1 0 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1