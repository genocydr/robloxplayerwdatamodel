PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["identifiedAvatars"]
  JUMPIF R1 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["Frame"]
  DUPTABLE R3 K5 [{"Size"}]
  GETIMPORT R4 K8 [UDim2.fromScale]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Size"]
  CALL R1 2 -1
  RETURN R1 -1
  NEWTABLE R1 0 0
  GETIMPORT R2 K10 [pairs]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R3 R5 K1 ["identifiedAvatars"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K11 ["boundingBox"]
  LENGTH R9 R1
  ADDK R8 R9 K12 [1]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K3 ["Frame"]
  DUPTABLE R11 K16 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R12 K8 [UDim2.fromScale]
  GETTABLEKS R14 R7 K17 ["min"]
  GETTABLEKS R13 R14 K18 ["X"]
  GETTABLEKS R15 R7 K17 ["min"]
  GETTABLEKS R14 R15 K19 ["Y"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Position"]
  GETIMPORT R12 K8 [UDim2.fromScale]
  GETTABLEKS R15 R7 K20 ["max"]
  GETTABLEKS R14 R15 K18 ["X"]
  GETTABLEKS R16 R7 K17 ["min"]
  GETTABLEKS R15 R16 K18 ["X"]
  SUB R13 R14 R15
  GETTABLEKS R16 R7 K20 ["max"]
  GETTABLEKS R15 R16 K19 ["Y"]
  GETTABLEKS R17 R7 K17 ["min"]
  GETTABLEKS R16 R17 K19 ["Y"]
  SUB R14 R15 R16
  CALL R12 2 1
  SETTABLEKS R12 R11 K4 ["Size"]
  LOADK R12 K21 [0.8]
  SETTABLEKS R12 R11 K14 ["BackgroundTransparency"]
  GETIMPORT R12 K24 [Color3.fromRGB]
  LOADN R13 20
  LOADN R14 0
  LOADN R16 255
  GETTABLEKS R17 R6 K25 ["hitRate"]
  MUL R15 R16 R17
  CALL R12 3 1
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  CALL R9 2 1
  SETTABLE R9 R1 R8
  GETTABLEKS R9 R6 K26 ["convexHull"]
  LENGTH R8 R9
  GETTABLEKS R9 R6 K26 ["convexHull"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  LENGTH R15 R1
  ADDK R14 R15 K12 [1]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K2 ["createElement"]
  LOADK R16 K3 ["Frame"]
  DUPTABLE R17 K16 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R18 K28 [UDim2.new]
  GETTABLEKS R19 R13 K18 ["X"]
  LOADN R20 254
  GETTABLEKS R21 R13 K19 ["Y"]
  LOADN R22 254
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Position"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 4
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K4 ["Size"]
  LOADK R18 K31 [0.2]
  SETTABLEKS R18 R17 K14 ["BackgroundTransparency"]
  GETIMPORT R18 K33 [Color3.fromHSV]
  DIV R19 R12 R8
  LOADN R20 1
  LOADK R21 K34 [0.65]
  CALL R18 3 1
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  CALL R15 2 1
  SETTABLE R15 R1 R14
  FORGLOOP R9 2 [-39]
  FORGLOOP R2 2 [-110]
  GETIMPORT R2 K10 [pairs]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R3 R5 K35 ["identifiedAds"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K11 ["boundingBox"]
  LENGTH R9 R1
  ADDK R8 R9 K12 [1]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K3 ["Frame"]
  DUPTABLE R11 K16 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R12 K8 [UDim2.fromScale]
  GETTABLEKS R14 R7 K17 ["min"]
  GETTABLEKS R13 R14 K18 ["X"]
  GETTABLEKS R15 R7 K17 ["min"]
  GETTABLEKS R14 R15 K19 ["Y"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Position"]
  GETIMPORT R12 K8 [UDim2.fromScale]
  GETTABLEKS R15 R7 K20 ["max"]
  GETTABLEKS R14 R15 K18 ["X"]
  GETTABLEKS R16 R7 K17 ["min"]
  GETTABLEKS R15 R16 K18 ["X"]
  SUB R13 R14 R15
  GETTABLEKS R16 R7 K20 ["max"]
  GETTABLEKS R15 R16 K19 ["Y"]
  GETTABLEKS R17 R7 K17 ["min"]
  GETTABLEKS R16 R17 K19 ["Y"]
  SUB R14 R15 R16
  CALL R12 2 1
  SETTABLEKS R12 R11 K4 ["Size"]
  LOADK R12 K21 [0.8]
  SETTABLEKS R12 R11 K14 ["BackgroundTransparency"]
  GETIMPORT R12 K24 [Color3.fromRGB]
  LOADN R13 20
  LOADN R14 0
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  CALL R9 2 1
  SETTABLE R9 R1 R8
  GETTABLEKS R8 R6 K36 ["visibleRegions"]
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R15 R13 K26 ["convexHull"]
  LENGTH R14 R15
  GETTABLEKS R15 R13 K26 ["convexHull"]
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  LENGTH R21 R1
  ADDK R20 R21 K12 [1]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K2 ["createElement"]
  LOADK R22 K3 ["Frame"]
  DUPTABLE R23 K16 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R24 K28 [UDim2.new]
  GETTABLEKS R25 R19 K18 ["X"]
  LOADN R26 254
  GETTABLEKS R27 R19 K19 ["Y"]
  LOADN R28 254
  CALL R24 4 1
  SETTABLEKS R24 R23 K13 ["Position"]
  GETIMPORT R24 K30 [UDim2.fromOffset]
  LOADN R25 4
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K4 ["Size"]
  LOADK R24 K31 [0.2]
  SETTABLEKS R24 R23 K14 ["BackgroundTransparency"]
  GETIMPORT R24 K33 [Color3.fromHSV]
  DIV R25 R18 R14
  LOADN R26 1
  LOADK R27 K34 [0.65]
  CALL R24 3 1
  SETTABLEKS R24 R23 K15 ["BackgroundColor3"]
  CALL R21 2 1
  SETTABLE R21 R1 R20
  FORGLOOP R15 2 [-39]
  FORGLOOP R9 2 [-49]
  FORGLOOP R2 2 [-115]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K38 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADK R5 K39 [0.9]
  SETTABLEKS R5 R4 K14 ["BackgroundTransparency"]
  GETIMPORT R5 K8 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K37 ["ZIndex"]
  SETTABLEKS R5 R4 K37 ["ZIndex"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["AppCommonLib"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["Logging"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K12 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K7 ["Packages"]
  GETTABLEKS R6 R7 K13 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K14 ["App"]
  GETTABLEKS R7 R8 K15 ["Button"]
  GETTABLEKS R6 R7 K16 ["TextButton"]
  GETIMPORT R9 K18 [script]
  GETTABLEKS R8 R9 K19 ["Parent"]
  GETTABLEKS R7 R8 K19 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R7 K20 ["Actions"]
  GETTABLEKS R9 R10 K21 ["EndReportFlow"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K22 ["Resources"]
  GETTABLEKS R10 R11 K23 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R7 K24 ["Flags"]
  GETTABLEKS R11 R12 K25 ["GetFFlagReportAnythingDebugCanvas"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K26 ["PureComponent"]
  LOADK R13 K27 ["DebugCanvas"]
  NAMECALL R11 R11 K28 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K29 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K30 ["render"]
  RETURN R11 1