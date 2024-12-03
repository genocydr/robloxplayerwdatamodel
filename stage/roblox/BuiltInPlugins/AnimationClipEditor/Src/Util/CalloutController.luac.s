PROTO_0:
  NEWTABLE R1 1 0
  MOVE R2 R0
  JUMPIF R2 [+6]
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["CalloutService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K4 ["_calloutService"]
  GETTABLEKS R3 R1 K4 ["_calloutService"]
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["CalloutController requires a CalloutService"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K9 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_calloutService"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R5 R0 K0 ["_calloutService"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R5 R5 K1 ["DefineCallout"]
  CALL R5 5 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_calloutService"]
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R4 R4 K1 ["AttachCallout"]
  CALL R4 4 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_calloutService"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["DetachCalloutsByDefinitionId"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  LOADK R6 K10 ["CalloutController"]
  NAMECALL R4 R3 K11 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K13 ["new"]
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["destroy"]
  DUPCLOSURE R5 K16 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["defineCallout"]
  DUPCLOSURE R5 K18 [PROTO_3]
  SETTABLEKS R5 R4 K19 ["attachCallout"]
  DUPCLOSURE R5 K20 [PROTO_4]
  SETTABLEKS R5 R4 K21 ["detachCalloutsByDefinitionId"]
  RETURN R4 1
