PROTO_0:
  LOADK R4 K0 ["AudioEmitter"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetDistanceAttenuation"]
  CALL R2 2 0
  RETURN R0 0
  LOADK R4 K3 ["AudioListener"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetDistanceAttenuation"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["AudioEmitter"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["GetDistanceAttenuation"]
  CALL R1 1 -1
  RETURN R1 -1
  LOADK R3 K3 ["AudioListener"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["GetDistanceAttenuation"]
  CALL R1 1 -1
  RETURN R1 -1
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["tableToCurve"]
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Keypoints"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["tableToCurve"]
  MOVE R5 R1
  CALL R4 1 1
  GETTABLEKS R3 R4 K1 ["Keypoints"]
  LENGTH R4 R2
  LENGTH R5 R3
  JUMPIFEQ R4 R5 [+3]
  LOADB R6 0
  RETURN R6 1
  LOADN R8 1
  MOVE R6 R4
  LOADN R7 1
  FORNPREP R6
  GETTABLE R11 R2 R8
  GETTABLE R12 R3 R8
  SUB R10 R11 R12
  GETTABLEKS R9 R10 K2 ["Magnitude"]
  LOADK R10 K3 [0.001]
  JUMPIFNOTLT R10 R9 [+3]
  LOADB R9 0
  RETURN R9 1
  FORNLOOP R6
  LOADB R6 1
  RETURN R6 1

PROTO_3:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [tostring]
  CALL R7 1 1
  JUMPIF R7 [+10]
  GETIMPORT R8 K3 [print]
  LOADK R10 K4 ["%* couldn't be converted to a string!"]
  MOVE R12 R5
  NAMECALL R10 R10 K5 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  JUMP [+1]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [tonumber]
  CALL R7 1 1
  JUMPIF R7 [+10]
  GETIMPORT R8 K3 [print]
  LOADK R10 K4 ["%* couldn't be converted to a number!"]
  MOVE R12 R5
  NAMECALL R10 R10 K5 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  JUMP [+1]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_5:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  GETTABLEKS R8 R6 K1 ["X"]
  LOADN R9 3
  CALL R7 2 1
  GETUPVAL R8 0
  GETTABLEKS R9 R6 K2 ["Y"]
  LOADN R10 3
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-12]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["X"]
  GETTABLEKS R4 R1 K0 ["X"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R8 R1
  GETIMPORT R9 K2 [Vector2.new]
  MOVE R10 R5
  MOVE R11 R6
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K5 [table.insert]
  CALL R7 -1 0
  FORGLOOP R2 2 [-11]
  GETIMPORT R2 K7 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K8 [PROTO_6]
  CALL R2 2 0
  DUPTABLE R2 K10 [{"Keypoints"}]
  SETTABLEKS R1 R2 K9 ["Keypoints"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["stringifyCurveTable"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["curveToTable"]
  DUPTABLE R3 K3 [{"Keypoints"}]
  SETTABLEKS R0 R3 K2 ["Keypoints"]
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["tableToCurve"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["destringifyCurveTable"]
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K2 ["Keypoints"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["roundDecimal"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  DUPCLOSURE R4 K10 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["setDistanceAttenuation"]
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R3 K13 ["getDistanceAttenuation"]
  DUPCLOSURE R4 K14 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K15 ["areCurvesEqual"]
  DUPCLOSURE R4 K16 [PROTO_3]
  SETTABLEKS R4 R3 K17 ["stringifyCurveTable"]
  DUPCLOSURE R4 K18 [PROTO_4]
  SETTABLEKS R4 R3 K19 ["destringifyCurveTable"]
  DUPCLOSURE R4 K20 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K21 ["curveToTable"]
  DUPCLOSURE R4 K22 [PROTO_7]
  SETTABLEKS R4 R3 K23 ["tableToCurve"]
  DUPCLOSURE R4 K24 [PROTO_8]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K25 ["keypointsToStrTable"]
  DUPCLOSURE R4 K26 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K27 ["strTableToKeypoints"]
  RETURN R3 1
