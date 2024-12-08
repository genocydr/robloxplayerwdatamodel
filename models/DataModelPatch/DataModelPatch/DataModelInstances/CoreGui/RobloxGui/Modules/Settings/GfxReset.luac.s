PROTO_0:
  GETIMPORT R1 K2 [Enum.SavedQualitySetting]
  NAMECALL R1 R1 K3 ["GetEnumItems"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K4 ["Value"]
  JUMPIFNOTEQ R7 R0 [+2]
  RETURN R6 1
  FORGLOOP R2 2 [-6]
  GETIMPORT R2 K6 [Enum.SavedQualitySetting.Automatic]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["SavedQualityLevel"]
  GETIMPORT R3 K4 [Enum.SavedQualitySetting.QualityLevel5]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R0 [+6]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETIMPORT R3 K6 [Enum.SavedQualitySetting.Automatic]
  SETTABLEKS R3 R2 K0 ["SavedQualityLevel"]
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["QualityLevelReset"]
  NAMECALL R2 R2 K10 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIFNOT R2 [+75]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+45]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K11 ["QualityResetLevel"]
  LOADN R3 0
  JUMPIFNOTLE R3 R2 [+68]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["QualityResetLevel"]
  GETIMPORT R4 K12 [Enum.SavedQualitySetting]
  NAMECALL R4 R4 K13 ["GetEnumItems"]
  CALL R4 1 1
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K14 ["Value"]
  JUMPIFNOTEQ R10 R3 [+3]
  MOVE R2 R9
  JUMP [+4]
  FORGLOOP R5 2 [-7]
  GETIMPORT R2 K6 [Enum.SavedQualitySetting.Automatic]
  GETUPVAL R3 3
  JUMPIFNOT R3 [+4]
  GETIMPORT R3 K4 [Enum.SavedQualitySetting.QualityLevel5]
  JUMPIFEQ R2 R3 [+4]
  GETUPVAL R3 3
  JUMPIFNOTEQKB R3 FALSE [+37]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K0 ["SavedQualityLevel"]
  GETUPVAL R3 1
  LOADN R4 255
  SETTABLEKS R4 R3 K11 ["QualityResetLevel"]
  RETURN R0 0
  GETUPVAL R2 4
  JUMPIFNOT R2 [+26]
  GETUPVAL R2 5
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["QualityResetLevel"]
  LOADN R4 0
  JUMPIFLT R3 R4 [+3]
  JUMPIFNOTEQKNIL R3 [+18]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["SavedQualityLevel"]
  GETTABLEKS R4 R5 K14 ["Value"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+2]
  JUMPIFNOTEQKB R2 FALSE [+6]
  GETUPVAL R5 1
  GETIMPORT R6 K6 [Enum.SavedQualitySetting.Automatic]
  SETTABLEKS R6 R5 K0 ["SavedQualityLevel"]
  GETUPVAL R5 1
  SETTABLEKS R4 R5 K11 ["QualityResetLevel"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AppStorageService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADK R3 K4 ["AppInstallationId"]
  NAMECALL R1 R0 K5 ["GetItem"]
  CALL R1 2 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K7 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K8 ["number"] [+8]
  FASTCALL1 TONUMBER R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K11 [tonumber]
  CALL R4 1 1
  ORK R3 R4 K9 []
  RETURN R3 1
  JUMPIFNOTEQKS R2 K12 ["string"] [+32]
  FASTCALL1 STRING_LEN R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K14 [string.len]
  CALL R3 1 1
  LOADN R4 0
  JUMPIFNOTLE R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  LOADN R5 232
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K16 [tostring]
  CALL R4 1 1
  FASTCALL1 STRING_LEN R4 [+2]
  GETIMPORT R3 K14 [string.len]
  CALL R3 1 1
  MINUS R7 R3
  FASTCALL2 STRING_SUB R1 R7 [+4]
  MOVE R6 R1
  GETIMPORT R5 K18 [string.sub]
  CALL R5 2 1
  FASTCALL1 TONUMBER R5 [+2]
  GETIMPORT R4 K11 [tonumber]
  CALL R4 1 1
  RETURN R4 1
  LOADNIL R3
  RETURN R3 1

PROTO_3:
  GETGLOBAL R2 K1 ["applicationId"]
  CALL R2 0 1
  ORK R1 R2 K0 [0]
  ADDK R3 R1 K3 [329]
  MODK R2 R3 K2 [1000]
  GETUPVAL R4 0
  JUMPIFLT R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+16]
  GETIMPORT R4 K7 [Enum.SavedQualitySetting.QualityLevel5]
  JUMPIFEQ R0 R4 [+7]
  GETIMPORT R5 K7 [Enum.SavedQualitySetting.QualityLevel5]
  GETTABLEKS R4 R5 K8 ["Value"]
  JUMPIFNOTEQ R0 R4 [+7]
  LOADB R4 1
  GETIMPORT R6 K10 [Enum.SavedQualitySetting.Automatic]
  GETTABLEKS R5 R6 K8 ["Value"]
  RETURN R4 2
  LOADB R4 0
  GETIMPORT R6 K10 [Enum.SavedQualitySetting.Automatic]
  GETTABLEKS R5 R6 K8 ["Value"]
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  GETTABLEKS R1 R0 K2 ["GameSettings"]
  GETIMPORT R2 K4 [game]
  LOADK R4 K5 ["IGMResetGfxQuality"]
  LOADB R5 0
  NAMECALL R2 R2 K6 ["DefineFastFlag"]
  CALL R2 3 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K7 ["IGMRevertGfxQuality"]
  LOADB R6 0
  NAMECALL R3 R3 K6 ["DefineFastFlag"]
  CALL R3 3 1
  GETIMPORT R4 K4 [game]
  LOADK R6 K8 ["IGMRevertGfxLv5Only"]
  LOADB R7 0
  NAMECALL R4 R4 K6 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K9 ["IGMResetGfxLv5Only"]
  LOADB R8 0
  NAMECALL R5 R5 K6 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K4 [game]
  LOADK R8 K10 ["IGMAlwaysResetGfxLv5"]
  LOADB R9 0
  NAMECALL R6 R6 K6 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K4 [game]
  LOADK R9 K11 ["IGMTempOverrideGfxLv5"]
  LOADN R10 0
  NAMECALL R7 R7 K12 ["DefineFastInt"]
  CALL R7 3 1
  DUPCLOSURE R8 K13 [PROTO_0]
  DUPCLOSURE R9 K14 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPCLOSURE R10 K15 [PROTO_2]
  SETGLOBAL R10 K16 ["applicationId"]
  DUPCLOSURE R10 K17 [PROTO_3]
  CAPTURE VAL R7
  DUPTABLE R11 K20 [{"RunGfxReset", "TemporaryOverride"}]
  SETTABLEKS R9 R11 K18 ["RunGfxReset"]
  SETTABLEKS R10 R11 K19 ["TemporaryOverride"]
  RETURN R11 1
