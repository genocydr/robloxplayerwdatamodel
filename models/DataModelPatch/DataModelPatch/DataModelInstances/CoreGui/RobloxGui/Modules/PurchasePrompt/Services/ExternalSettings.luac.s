PROTO_0:
  LOADK R0 K0 ["Service(ExternalSettings)"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetPlatform"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStudio"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PermissionsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["GetIsThirdPartyPurchaseAllowed"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_4:
  LOADB R0 1
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_5:
  LOADB R0 1
  RETURN R0 1

PROTO_6:
  LOADB R0 1
  RETURN R0 1

PROTO_7:
  GETIMPORT R0 K1 [settings]
  CALL R0 0 1
  LOADK R2 K2 ["RestrictSales2"]
  NAMECALL R0 R0 K3 ["GetFFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R0 K1 [settings]
  CALL R0 0 1
  LOADK R2 K2 ["Order66"]
  NAMECALL R0 R0 K3 ["GetFFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsTenFootInterface"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_10:
  GETUPVAL R0 0
  CALL R0 0 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R0 0
  CALL R0 0 -1
  RETURN R0 -1

PROTO_12:
  NEWTABLE R0 16 0
  DUPTABLE R3 K1 [{"__tostring"}]
  DUPCLOSURE R4 K2 [PROTO_0]
  SETTABLEKS R4 R3 K0 ["__tostring"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  DUPCLOSURE R1 K5 [PROTO_1]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K6 ["getPlatform"]
  DUPCLOSURE R1 K7 [PROTO_2]
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["isStudio"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["isThirdPartyPurchaseAllowed"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["getLuaUseThirdPartyPermissions"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["getFlagBypassThirdPartySettingForRobloxPurchase"]
  DUPCLOSURE R1 K15 [PROTO_7]
  SETTABLEKS R1 R0 K16 ["getFlagRestrictSales2"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["getFlagOrder66"]
  DUPCLOSURE R1 K19 [PROTO_9]
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K20 ["isTenFootInterface"]
  DUPCLOSURE R1 K21 [PROTO_10]
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K22 ["getFFlagDisableRobuxUpsell"]
  DUPCLOSURE R1 K23 [PROTO_11]
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K24 ["GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["RunService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["GuiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K8 ["UserInputService"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["GetFFlagDisableRobuxUpsell"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K11 ["Flags"]
  GETTABLEKS R6 R7 K13 ["GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt"]
  CALL R5 1 1
  NEWTABLE R6 1 0
  DUPCLOSURE R7 K14 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K15 ["new"]
  RETURN R6 1