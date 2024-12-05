MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".FlyoutItem"]
  DUPTABLE R5 K12 [{"AutomaticSize"}]
  GETIMPORT R6 K15 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K11 ["AutomaticSize"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K16 ["> .Contents"]
  DUPTABLE R9 K18 [{"Size"}]
  GETIMPORT R10 K21 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 40
  CALL R10 4 1
  SETTABLEKS R10 R9 K17 ["Size"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K22 [">> .Label"]
  DUPTABLE R13 K25 [{"AnchorPoint", "Position"}]
  GETIMPORT R14 K27 [Vector2.new]
  LOADN R15 0
  LOADK R16 K28 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["AnchorPoint"]
  GETIMPORT R14 K30 [UDim2.fromScale]
  LOADN R15 0
  LOADK R16 K28 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Position"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K31 ["::UIPadding"]
  DUPTABLE R17 K35 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K37 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["PaddingLeft"]
  GETIMPORT R18 K37 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K33 ["PaddingTop"]
  GETIMPORT R18 K37 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["PaddingBottom"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K38 ["> .Icon"]
  DUPTABLE R14 K39 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
  GETIMPORT R15 K27 [Vector2.new]
  LOADN R16 1
  LOADK R17 K28 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["AnchorPoint"]
  GETIMPORT R15 K30 [UDim2.fromScale]
  LOADN R16 1
  LOADK R17 K28 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["Position"]
  GETIMPORT R15 K21 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K17 ["Size"]
  GETIMPORT R15 K41 [Enum.AutomaticSize.X]
  SETTABLEKS R15 R14 K11 ["AutomaticSize"]
  NEWTABLE R15 0 3
  MOVE R16 R2
  LOADK R17 K31 ["::UIPadding"]
  DUPTABLE R18 K43 [{"PaddingRight"}]
  GETIMPORT R19 K37 [UDim.new]
  LOADN R20 0
  LOADN R21 10
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["PaddingRight"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K44 [".Arrow"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K45 ["> ImageLabel"]
  DUPTABLE R23 K47 [{"Image"}]
  LOADK R24 K48 ["$ArrowRightIcon"]
  SETTABLEKS R24 R23 K46 ["Image"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K49 [".Checkmark"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K45 ["> ImageLabel"]
  DUPTABLE R24 K47 [{"Image"}]
  LOADK R25 K50 ["$CheckmarkIcon"]
  SETTABLEKS R25 R24 K46 ["Image"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K54 [{"IconWidth", "BaseWidth", "OffsetWidth"}]
  LOADN R8 26
  SETTABLEKS R8 R7 K51 ["IconWidth"]
  LOADN R8 20
  SETTABLEKS R8 R7 K52 ["BaseWidth"]
  LOADN R8 36
  SETTABLEKS R8 R7 K53 ["OffsetWidth"]
  CALL R3 4 -1
  RETURN R3 -1
