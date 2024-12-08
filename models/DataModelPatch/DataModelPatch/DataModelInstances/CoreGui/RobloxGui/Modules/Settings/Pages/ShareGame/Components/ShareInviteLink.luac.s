PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showCopiedText"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showCopiedText"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["externalContentSharingProtocol"]
  JUMPIFNOT R2 [+30]
  GETTABLEKS R2 R1 K1 ["externalContentSharingProtocol"]
  DUPTABLE R4 K4 [{"url", "context"}]
  GETTABLEKS R5 R0 K5 ["shortUrl"]
  SETTABLEKS R5 R4 K2 ["url"]
  LOADK R5 K6 ["V1Menu"]
  SETTABLEKS R5 R4 K3 ["context"]
  NAMECALL R2 R2 K7 ["shareUrl"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K8 ["isDesktopClient"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 0
  DUPTABLE R4 K10 [{"showCopiedText"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["showCopiedText"]
  NAMECALL R2 R2 K11 ["setState"]
  CALL R2 2 0
  GETIMPORT R2 K14 [task.delay]
  LOADN R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"showCopiedText"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showCopiedText"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["displayShareSheet"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["shareInviteLink"]
  JUMPIFNOTEQKNIL R3 [+40]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["shareInviteLink"]
  JUMPIFEQKNIL R3 [+34]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Enums"]
  GETTABLEKS R5 R6 K3 ["LinkType"]
  GETTABLEKS R4 R5 K4 ["ExperienceInvite"]
  GETTABLEKS R3 R4 K5 ["rawValue"]
  CALL R3 0 1
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["shareInviteLink"]
  GETTABLEKS R4 R5 K6 ["linkId"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["analytics"]
  DUPTABLE R7 K9 [{"linkType", "linkId"}]
  SETTABLEKS R3 R7 K8 ["linkType"]
  SETTABLEKS R4 R7 K6 ["linkId"]
  NAMECALL R5 R5 K10 ["linkGenerated"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K11 ["displayShareSheet"]
  GETTABLEKS R6 R2 K1 ["shareInviteLink"]
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["analytics"]
  NAMECALL R1 R1 K2 ["onShareButtonClick"]
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["shareInviteLink"]
  JUMPIFNOTEQKNIL R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["fetchShareInviteLink"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["displayShareSheet"]
  GETTABLEKS R2 R0 K3 ["shareInviteLink"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["layoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["deviceLayout"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["zIndex"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["LayoutSpecific"]
  GETTABLE R5 R6 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K15 [{"Size", "Position", "LayoutOrder", "BackgroundColor3", "BackgroundTransparency", "ZIndex", "BorderSizePixel"}]
  SETTABLEKS R1 R9 K8 ["Size"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K16 ["position"]
  SETTABLEKS R10 R9 K9 ["Position"]
  SETTABLEKS R2 R9 K10 ["LayoutOrder"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K17 ["color"]
  LOADK R11 K18 ["PlayerRowFrame"]
  GETUPVAL R12 3
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["BackgroundColor3"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["transparency"]
  LOADK R11 K18 ["PlayerRowFrame"]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["BackgroundTransparency"]
  SETTABLEKS R4 R9 K13 ["ZIndex"]
  LOADN R10 0
  SETTABLEKS R10 R9 K14 ["BorderSizePixel"]
  DUPTABLE R10 K25 [{"Corner", "UIPadding", "UIListLayout", "Title", "ShareButton"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K26 ["UICorner"]
  DUPTABLE R13 K28 [{"CornerRadius"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["UIBloxThemeEnabled"]
  JUMPIFNOT R15 [+4]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K30 ["MenuContainerCornerRadius"]
  JUMP [+5]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["CornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Corner"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K21 ["UIPadding"]
  DUPTABLE R13 K38 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  GETUPVAL R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["PaddingLeft"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  GETUPVAL R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["PaddingRight"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  GETUPVAL R16 5
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["PaddingTop"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  GETUPVAL R16 5
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["PaddingBottom"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["UIPadding"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K22 ["UIListLayout"]
  DUPTABLE R13 K43 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R14 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K39 ["FillDirection"]
  GETIMPORT R14 K48 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K40 ["HorizontalAlignment"]
  GETIMPORT R14 K50 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K41 ["VerticalAlignment"]
  GETIMPORT R14 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K42 ["SortOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["UIListLayout"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K52 ["TextLabel"]
  DUPTABLE R13 K58 [{"BackgroundTransparency", "TextXAlignment", "LayoutOrder", "Text", "Size", "TextSize", "TextColor3", "Font"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  GETIMPORT R14 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K53 ["TextXAlignment"]
  LOADN R14 0
  SETTABLEKS R14 R13 K10 ["LayoutOrder"]
  GETUPVAL R14 6
  LOADK R16 K60 ["Feature.SocialShare.Label.ShareServerLink"]
  NAMECALL R14 R14 K61 ["FormatByKey"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K54 ["Text"]
  GETIMPORT R14 K63 [UDim2.new]
  LOADN R15 1
  GETUPVAL R17 7
  MINUS R16 R17
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K64 ["textSize"]
  GETTABLEKS R15 R5 K65 ["PAGE_TITLE_TEXT_SIZE"]
  LOADK R16 K66 ["ShareLinkTitle"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K55 ["TextSize"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K67 ["Color"]
  GETTABLEKS R14 R15 K68 ["WHITE"]
  SETTABLEKS R14 R13 K56 ["TextColor3"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K69 ["font"]
  GETIMPORT R15 K71 [Enum.Font.SourceSansSemibold]
  LOADK R16 K72 ["Semibold"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K57 ["Font"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Title"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K76 [{"size", "layoutOrder", "onShare", "text", "isEnabled"}]
  GETIMPORT R14 K63 [UDim2.new]
  LOADN R15 0
  GETUPVAL R16 7
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K1 ["size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K2 ["layoutOrder"]
  SETTABLEKS R6 R13 K73 ["onShare"]
  GETTABLEKS R16 R0 K77 ["state"]
  GETTABLEKS R15 R16 K78 ["showCopiedText"]
  JUMPIFNOT R15 [+2]
  GETUPVAL R14 9
  JUMP [+1]
  GETUPVAL R14 10
  SETTABLEKS R14 R13 K74 ["text"]
  LOADB R14 0
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K79 ["fetchShareInviteLinkNetworkStatus"]
  GETUPVAL R17 11
  GETTABLEKS R16 R17 K80 ["Fetching"]
  JUMPIFEQ R15 R16 [+6]
  GETTABLEKS R16 R0 K77 ["state"]
  GETTABLEKS R15 R16 K78 ["showCopiedText"]
  NOT R14 R15
  SETTABLEKS R14 R13 K75 ["isEnabled"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["ShareButton"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["UserInputService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K10 ["Workspace"]
  GETTABLEKS R8 R9 K11 ["Packages"]
  GETTABLEKS R7 R8 K12 ["ExternalContentSharingProtocol"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K12 ["ExternalContentSharingProtocol"]
  GETTABLEKS R4 R5 K13 ["default"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["RoactRodux"]
  CALL R6 1 1
  GETTABLEKS R10 R2 K16 ["Modules"]
  GETTABLEKS R9 R10 K17 ["Settings"]
  GETTABLEKS R8 R9 K18 ["Pages"]
  GETTABLEKS R7 R8 K19 ["ShareGame"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R0 K10 ["Workspace"]
  GETTABLEKS R11 R12 K11 ["Packages"]
  GETTABLEKS R10 R11 K20 ["NotificationsCommon"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K21 ["ReducerDependencies"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R7 K22 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R7 K23 ["Components"]
  GETTABLEKS R11 R12 K24 ["ShareButton"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R12 R7 K25 ["getTranslator"]
  CALL R11 1 1
  MOVE R12 R11
  CALL R12 0 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R7 K23 ["Components"]
  GETTABLEKS R14 R15 K26 ["ShareInviteLinkMapDispatchToProps"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R7 K23 ["Components"]
  GETTABLEKS R15 R16 K27 ["ShareInviteLinkMapStateToProps"]
  CALL R14 1 1
  GETTABLEKS R15 R8 K28 ["RoduxShareLinks"]
  GETTABLEKS R16 R8 K29 ["RoduxNetworking"]
  GETTABLEKS R18 R16 K30 ["Enum"]
  GETTABLEKS R17 R18 K31 ["NetworkStatus"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R2 K16 ["Modules"]
  GETTABLEKS R20 R21 K17 ["Settings"]
  GETTABLEKS R19 R20 K32 ["Theme"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R2 K16 ["Modules"]
  GETTABLEKS R21 R22 K33 ["Flags"]
  GETTABLEKS R20 R21 K34 ["GetFFlagEnableNewInviteMenu"]
  CALL R19 1 1
  GETTABLEKS R20 R5 K35 ["PureComponent"]
  LOADK R22 K36 ["ShareInviteLink"]
  NAMECALL R20 R20 K37 ["extend"]
  CALL R20 2 1
  LOADN R21 12
  LOADN R22 8
  LOADN R23 69
  MOVE R24 R19
  CALL R24 0 1
  JUMPIFNOT R24 [+3]
  LOADN R21 16
  LOADN R22 12
  LOADN R23 66
  GETIMPORT R24 K40 [Color3.fromRGB]
  LOADN R25 79
  LOADN R26 84
  LOADN R27 95
  CALL R24 3 1
  LOADK R27 K41 ["Feature.SocialShare.Action.Share"]
  NAMECALL R25 R12 K42 ["FormatByKey"]
  CALL R25 2 1
  LOADK R28 K43 ["Feature.SocialShare.Label.Copied"]
  NAMECALL R26 R12 K42 ["FormatByKey"]
  CALL R26 2 1
  NAMECALL R27 R3 K44 ["GetPlatform"]
  CALL R27 1 1
  DUPTABLE R28 K47 [{"externalContentSharingProtocol", "isDesktopClient"}]
  SETTABLEKS R4 R28 K45 ["externalContentSharingProtocol"]
  LOADB R29 1
  GETIMPORT R30 K50 [Enum.Platform.Windows]
  JUMPIFEQ R27 R30 [+12]
  LOADB R29 1
  GETIMPORT R30 K52 [Enum.Platform.OSX]
  JUMPIFEQ R27 R30 [+7]
  GETIMPORT R30 K54 [Enum.Platform.UWP]
  JUMPIFEQ R27 R30 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  SETTABLEKS R29 R28 K46 ["isDesktopClient"]
  SETTABLEKS R28 R20 K55 ["defaultProps"]
  DUPCLOSURE R28 K56 [PROTO_2]
  SETTABLEKS R28 R20 K57 ["init"]
  DUPCLOSURE R28 K58 [PROTO_3]
  CAPTURE VAL R15
  SETTABLEKS R28 R20 K59 ["didUpdate"]
  NEWCLOSURE R28 P2
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE REF R21
  CAPTURE REF R22
  CAPTURE VAL R12
  CAPTURE REF R23
  CAPTURE VAL R10
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R17
  SETTABLEKS R28 R20 K60 ["render"]
  GETTABLEKS R28 R6 K61 ["connect"]
  MOVE R29 R14
  MOVE R30 R13
  CALL R28 2 1
  MOVE R29 R20
  CALL R28 1 1
  MOVE R20 R28
  CLOSEUPVALS R21
  RETURN R20 1
