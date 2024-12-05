PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [pairs]
  GETTABLEKS R4 R1 K3 ["ageRecommendationDetailsByUniverse"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADN R8 0
  GETTABLEKS R11 R7 K4 ["ageRecommendationDetails"]
  GETTABLEKS R10 R11 K5 ["ageRecommendationSummary"]
  GETTABLEKS R9 R10 K6 ["ageRecommendation"]
  JUMPIFNOT R9 [+2]
  GETTABLEKS R8 R9 K7 ["minimumAge"]
  GETTABLEKS R10 R7 K8 ["universeId"]
  SETTABLE R8 R2 R10
  FORGLOOP R3 2 [-14]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K3 [{"Url", "Method", "Body"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["BuildRobloxUrl"]
  LOADK R3 K5 ["apis"]
  LOADK R4 K6 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["Url"]
  LOADK R2 K7 ["POST"]
  SETTABLEKS R2 R1 K1 ["Method"]
  GETUPVAL R2 1
  DUPTABLE R4 K9 [{"universeIds"}]
  SETTABLEKS R0 R4 K8 ["universeIds"]
  NAMECALL R2 R2 K10 ["JSONEncode"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["Body"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["Request"]
  MOVE R3 R1
  CALL R2 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K13 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Network"]
  GETTABLEKS R2 R3 K7 ["Http"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["HttpService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
