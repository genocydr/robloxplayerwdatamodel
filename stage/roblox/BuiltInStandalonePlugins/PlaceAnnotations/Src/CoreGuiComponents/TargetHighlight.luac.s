PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K0 ["Instance"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Move"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADNIL R1
  CALL R0 1 2
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NEWTABLE R5 0 0
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K5 ["Highlight"]
  DUPTABLE R5 K13 [{"Adornee", "LineThickness", "ReservedId", "OutlineColor", "OutlineTransparency", "FillTransparency", "DepthMode"}]
  SETTABLEKS R0 R5 K6 ["Adornee"]
  LOADN R6 3
  SETTABLEKS R6 R5 K7 ["LineThickness"]
  GETIMPORT R6 K17 [Enum.ReservedHighlightId.Hover]
  SETTABLEKS R6 R5 K8 ["ReservedId"]
  GETIMPORT R6 K20 [Color3.fromRGB]
  LOADN R7 190
  LOADN R8 250
  LOADN R9 190
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["OutlineColor"]
  LOADK R6 K21 [0.15]
  SETTABLEKS R6 R5 K10 ["OutlineTransparency"]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["FillTransparency"]
  GETIMPORT R6 K24 [Enum.HighlightDepthMode.AlwaysOnTop]
  SETTABLEKS R6 R5 K12 ["DepthMode"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
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
  GETTABLEKS R4 R3 K10 ["Mouse"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["doSelectionRaycast"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
