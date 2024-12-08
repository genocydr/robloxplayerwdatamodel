PROTO_0:
  GETTABLEKS R1 R0 K0 ["Font"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"leftHint"}]
  DUPTABLE R5 K8 [{"text", "hintTextSize", "maxWidth", "icon"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["feedbackBarText"]
  SETTABLEKS R6 R5 K4 ["text"]
  GETTABLEKS R7 R1 K10 ["BaseSize"]
  GETTABLEKS R9 R1 K11 ["Body"]
  GETTABLEKS R8 R9 K12 ["RelativeSize"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K5 ["hintTextSize"]
  LOADN R6 200
  SETTABLEKS R6 R5 K6 ["maxWidth"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["Images"]
  GETTABLEKS R6 R7 K14 ["FeedbackBarHintIcon"]
  SETTABLEKS R6 R5 K7 ["icon"]
  SETTABLEKS R5 R4 K2 ["leftHint"]
  NEWTABLE R5 0 0
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Core"]
  GETTABLEKS R3 R4 K2 ["Style"]
  GETTABLEKS R2 R3 K3 ["Provider"]
  NEWTABLE R3 0 0
  DUPTABLE R4 K5 [{"Gui"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["ScreenGui"]
  NEWTABLE R7 8 0
  LOADB R8 0
  SETTABLEKS R8 R7 K7 ["AutoLocalize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["IgnoreGuiInset"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["OnTopOfCoreBlur"]
  GETIMPORT R8 K13 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K11 ["ZIndexBehavior"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["Change"]
  GETTABLEKS R8 R9 K15 ["AbsoluteSize"]
  GETTABLEKS R10 R0 K16 ["props"]
  GETTABLEKS R9 R10 K17 ["setScreenGuiSize"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K20 [{"ScreenFrame", "RefinedFeedbackBar"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K21 ["Frame"]
  DUPTABLE R11 K25 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K22 ["BackgroundTransparency"]
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Size"]
  LOADN R12 10
  SETTABLEKS R12 R11 K24 ["ZIndex"]
  DUPTABLE R12 K33 [{"FeedbackSubmissionToast", "HelpModal", "OnboardingModal", "FeedbackReportDialog"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 2
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["FeedbackSubmissionToast"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  CALL R13 1 1
  SETTABLEKS R13 R12 K30 ["HelpModal"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 4
  CALL R13 1 1
  SETTABLEKS R13 R12 K31 ["OnboardingModal"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 5
  CALL R13 1 1
  SETTABLEKS R13 R12 K32 ["FeedbackReportDialog"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["ScreenFrame"]
  GETUPVAL R9 6
  DUPTABLE R10 K35 [{"feedbackBarText"}]
  LOADK R11 K36 ["CoreScripts.Feedback.FeedbackBar.MainLabel"]
  SETTABLEKS R11 R10 K34 ["feedbackBarText"]
  CALL R9 1 1
  DUPCLOSURE R10 K37 [PROTO_1]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CALL R9 1 1
  SETTABLEKS R9 R8 K19 ["RefinedFeedbackBar"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Gui"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"setScreenGuiSize", "setFeedbackFlowState"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setScreenGuiSize"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setFeedbackFlowState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETTABLEKS R8 R3 K14 ["Core"]
  GETTABLEKS R7 R8 K15 ["Style"]
  GETTABLEKS R6 R7 K16 ["withStyle"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R5 K17 ["Actions"]
  GETTABLEKS R8 R9 K18 ["SetFeedbackFlowState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R5 K17 ["Actions"]
  GETTABLEKS R9 R10 K19 ["SetScreenSize"]
  CALL R8 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K20 ["Workspace"]
  GETTABLEKS R12 R13 K6 ["Packages"]
  GETTABLEKS R11 R12 K21 ["Localization"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K22 ["withLocalization"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R5 K23 ["Resources"]
  GETTABLEKS R11 R12 K24 ["Assets"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R5 K25 ["Components"]
  GETTABLEKS R12 R13 K26 ["FeedbackReportDialog"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R5 K25 ["Components"]
  GETTABLEKS R13 R14 K27 ["RefinedFeedbackBar"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R5 K25 ["Components"]
  GETTABLEKS R14 R15 K28 ["FeedbackSubmissionToast"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R5 K25 ["Components"]
  GETTABLEKS R15 R16 K29 ["HelpModal"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R5 K25 ["Components"]
  GETTABLEKS R16 R17 K30 ["OnboardingModal"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K31 ["PureComponent"]
  LOADK R18 K32 ["FeedbackApp"]
  NAMECALL R16 R16 K33 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R4 K34 ["strictInterface"]
  DUPTABLE R18 K36 [{"setScreenGuiSize"}]
  GETTABLEKS R19 R4 K37 ["callback"]
  SETTABLEKS R19 R18 K35 ["setScreenGuiSize"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K38 ["validateProps"]
  DUPCLOSURE R17 K39 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K40 ["render"]
  GETTABLEKS R17 R2 K41 ["connect"]
  DUPCLOSURE R18 K42 [PROTO_3]
  DUPCLOSURE R19 K43 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CALL R17 2 1
  MOVE R18 R16
  CALL R17 1 -1
  RETURN R17 -1
