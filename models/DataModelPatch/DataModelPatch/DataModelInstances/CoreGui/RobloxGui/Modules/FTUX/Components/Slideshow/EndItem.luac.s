PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["currentIndex"]
  GETUPVAL R4 1
  LENGTH R3 R4
  JUMPIFEQ R2 R3 [+23]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 3
  DUPTABLE R3 K4 [{"platform", "currentIndex", "increaseCurrentIndex"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["platform"]
  SETTABLEKS R4 R3 K2 ["platform"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["currentIndex"]
  SETTABLEKS R4 R3 K0 ["currentIndex"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["increaseCurrentIndex"]
  SETTABLEKS R4 R3 K3 ["increaseCurrentIndex"]
  CALL R1 2 1
  JUMPIF R1 [+46]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["App"]
  GETTABLEKS R3 R4 K6 ["Text"]
  GETTABLEKS R2 R3 K7 ["StyledTextLabel"]
  DUPTABLE R3 K15 [{"text", "fontStyle", "colorStyle", "textXAlignment", "textYAlignment", "size", "layoutOrder"}]
  GETTABLEKS R4 R0 K16 ["footerText"]
  SETTABLEKS R4 R3 K8 ["text"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K17 ["CaptionHeader"]
  SETTABLEKS R4 R3 K9 ["fontStyle"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K18 ["TextEmphasis"]
  SETTABLEKS R4 R3 K10 ["colorStyle"]
  GETIMPORT R4 K22 [Enum.TextXAlignment.Center]
  SETTABLEKS R4 R3 K11 ["textXAlignment"]
  GETIMPORT R4 K24 [Enum.TextYAlignment.Center]
  SETTABLEKS R4 R3 K12 ["textYAlignment"]
  GETIMPORT R4 K27 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K13 ["size"]
  LOADN R4 2
  SETTABLEKS R4 R3 K14 ["layoutOrder"]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Theme"]
  GETTABLEKS R3 R1 K1 ["Font"]
  GETUPVAL R5 1
  GETTABLEKS R6 R0 K2 ["platform"]
  GETTABLE R4 R5 R6
  GETUPVAL R5 2
  DUPTABLE R6 K4 [{"footerText"}]
  LOADK R7 K5 ["CoreScripts.VRFTUX.Label.Footer"]
  SETTABLEKS R7 R6 K3 ["footerText"]
  CALL R5 1 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE VAL R2
  CALL R5 1 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Style"]
  GETTABLEKS R3 R4 K11 ["useStyle"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Workspace"]
  GETTABLEKS R7 R8 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K14 ["withLocalization"]
  GETIMPORT R8 K16 [script]
  GETTABLEKS R7 R8 K17 ["Parent"]
  GETTABLEKS R6 R7 K17 ["Parent"]
  GETTABLEKS R5 R6 K17 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R5 K18 ["Resources"]
  GETTABLEKS R7 R8 K19 ["FTUXSlideshowData"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R5 K20 ["Components"]
  GETTABLEKS R9 R10 K21 ["Slideshow"]
  GETTABLEKS R8 R9 K22 ["Button"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R5 K23 ["Enums"]
  GETTABLEKS R9 R10 K24 ["PlatformEnum"]
  CALL R8 1 1
  DUPCLOSURE R9 K25 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R2
  RETURN R9 1
