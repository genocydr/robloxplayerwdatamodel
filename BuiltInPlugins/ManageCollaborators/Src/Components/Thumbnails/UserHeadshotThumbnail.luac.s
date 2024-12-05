PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Stylizer"]
  GETIMPORT R5 K5 [Enum.AssetFetchStatus.Success]
  JUMPIFNOTEQ R2 R5 [+2]
  RETURN R1 1
  GETIMPORT R5 K7 [Enum.AssetFetchStatus.Failure]
  JUMPIFNOTEQ R2 R5 [+6]
  GETTABLEKS R6 R4 K8 ["subjectThumbnail"]
  GETTABLEKS R5 R6 K9 ["loadFailureImage"]
  RETURN R5 1
  GETTABLEKS R6 R4 K8 ["subjectThumbnail"]
  GETTABLEKS R5 R6 K10 ["loadingImage"]
  RETURN R5 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Parent"]
  JUMPIFEQKNIL R1 [+6]
  LOADK R4 K1 ["GuiObject"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K3 ["BackgroundTransparency"]
  JUMPIFEQKN R2 K4 [1] [+2]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["getBackgroundParent"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["maskRef"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["maskBackgroundParent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["parentChanged"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["colorChanged"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["getBackgroundParent"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["maskRef"]
  NAMECALL R0 R0 K1 ["getValue"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["maskBackgroundParent"]
  GETTABLEKS R1 R2 K3 ["BackgroundColor3"]
  SETTABLEKS R1 R0 K4 ["ImageColor3"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["maskRef"]
  NAMECALL R0 R0 K1 ["getValue"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getBackgroundParent"]
  GETTABLEKS R3 R0 K3 ["Parent"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["maskBackgroundParent"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["colorChanged"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["colorChanged"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["maskBackgroundParent"]
  JUMPIFNOT R1 [+29]
  GETUPVAL R1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["maskBackgroundParent"]
  LOADK R4 K7 ["BackgroundColor3"]
  NAMECALL R2 R2 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  GETUPVAL R4 1
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["colorChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["maskRef"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["maskBackgroundParent"]
  GETTABLEKS R2 R3 K7 ["BackgroundColor3"]
  SETTABLEKS R2 R1 K10 ["ImageColor3"]
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  GETTABLEKS R3 R0 K0 ["maskRef"]
  NAMECALL R3 R3 K1 ["getValue"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K2 ["AncestryChanged"]
  MOVE R6 R2
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K4 ["parentChanged"]
  MOVE R4 R2
  CALL R4 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["parentChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["colorChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["colorChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["getThumbnail"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R4 R3 K2 ["Stylizer"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["ImageLabel"]
  DUPTABLE R7 K10 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Image"}]
  GETIMPORT R8 K13 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["Size"]
  GETTABLEKS R9 R4 K14 ["subjectThumbnail"]
  GETTABLEKS R8 R9 K15 ["background"]
  SETTABLEKS R8 R7 K6 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["BorderSizePixel"]
  SETTABLEKS R2 R7 K9 ["Image"]
  DUPTABLE R8 K17 [{"Mask"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K4 ["ImageLabel"]
  NEWTABLE R11 4 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K18 ["Ref"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K19 ["maskRef"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K13 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K5 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K7 ["BackgroundTransparency"]
  GETTABLEKS R13 R4 K14 ["subjectThumbnail"]
  GETTABLEKS R12 R13 K20 ["maskImage"]
  SETTABLEKS R12 R11 K9 ["Image"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Mask"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Id"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["AnchorPoint"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["ZIndex"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K10 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K9 ["BackgroundTransparency"]
  SETTABLEKS R3 R10 K2 ["Size"]
  SETTABLEKS R4 R10 K3 ["Position"]
  SETTABLEKS R5 R10 K4 ["AnchorPoint"]
  SETTABLEKS R6 R10 K5 ["LayoutOrder"]
  SETTABLEKS R7 R10 K6 ["ZIndex"]
  DUPTABLE R11 K12 [{"AutoThumbnail"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K15 [{"Id", "ThumbnailType", "RenderContents"}]
  SETTABLEKS R2 R14 K1 ["Id"]
  LOADK R15 K16 ["AvatarHeadShot"]
  SETTABLEKS R15 R14 K13 ["ThumbnailType"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R15 R14 K14 ["RenderContents"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["AutoThumbnail"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Style"]
  GETTABLEKS R3 R4 K9 ["Stylizer"]
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["Thumbnails"]
  GETTABLEKS R7 R8 K15 ["AutoThumbnail"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K16 ["Component"]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K17 ["Name"]
  NAMECALL R7 R7 K18 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K19 [PROTO_0]
  SETTABLEKS R8 R7 K20 ["getThumbnail"]
  DUPCLOSURE R8 K21 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K22 ["init"]
  DUPCLOSURE R8 K23 [PROTO_5]
  SETTABLEKS R8 R7 K24 ["didMount"]
  DUPCLOSURE R8 K25 [PROTO_6]
  SETTABLEKS R8 R7 K26 ["willUnmount"]
  DUPCLOSURE R8 K27 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K28 ["render"]
  MOVE R8 R5
  DUPTABLE R9 K29 [{"Stylizer"}]
  SETTABLEKS R3 R9 K9 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1