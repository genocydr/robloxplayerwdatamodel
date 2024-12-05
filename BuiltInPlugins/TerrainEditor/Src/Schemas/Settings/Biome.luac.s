PROTO_0:
  LOADB R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  OR R1 R1 R6
  FORGLOOP R2 2 [-2]
  JUMPIF R1 [+9]
  GETIMPORT R2 K3 [Enum.PropertyStatus.Error]
  GETUPVAL R3 0
  LOADK R5 K4 ["BiomeWarning"]
  LOADK R6 K5 ["NoBiomesSelected"]
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 3 -1
  RETURN R2 -1
  GETIMPORT R2 K8 [Enum.PropertyStatus.Ok]
  LOADK R3 K9 [""]
  RETURN R2 2

PROTO_1:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  JUMPIF R1 [+9]
  GETIMPORT R2 K5 [Enum.PropertyStatus.Error]
  GETUPVAL R3 0
  LOADK R5 K6 ["NumberWarning"]
  LOADK R6 K7 ["InvalidNumber"]
  NAMECALL R3 R3 K8 ["getText"]
  CALL R3 3 -1
  RETURN R2 -1
  LOADN R2 0
  JUMPIFNOTLE R1 R2 [+10]
  GETIMPORT R2 K5 [Enum.PropertyStatus.Error]
  GETUPVAL R3 0
  LOADK R5 K6 ["NumberWarning"]
  LOADK R6 K9 ["Minimum"]
  NAMECALL R3 R3 K8 ["getText"]
  CALL R3 3 -1
  RETURN R2 -1
  GETIMPORT R2 K11 [Enum.PropertyStatus.Ok]
  LOADK R3 K12 [""]
  RETURN R2 2

PROTO_2:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  JUMPIF R1 [+9]
  GETIMPORT R2 K5 [Enum.PropertyStatus.Error]
  GETUPVAL R3 0
  LOADK R5 K6 ["NumberWarning"]
  LOADK R6 K7 ["InvalidNumber"]
  NAMECALL R3 R3 K8 ["getText"]
  CALL R3 3 -1
  RETURN R2 -1
  GETIMPORT R2 K10 [Enum.PropertyStatus.Ok]
  LOADK R3 K11 [""]
  RETURN R2 2

PROTO_3:
  GETTABLEKS R4 R0 K0 ["Localization"]
  NEWTABLE R5 0 0
  GETUPVAL R6 0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  LOADK R13 K1 ["Biomes"]
  MOVE R14 R9
  NAMECALL R11 R4 K2 ["getText"]
  CALL R11 3 1
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-7]
  GETUPVAL R6 1
  MOVE R7 R0
  NEWTABLE R8 0 6
  DUPTABLE R9 K6 [{"Id", "Schema", "Validate"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["Biomes"]
  SETTABLEKS R10 R9 K3 ["Id"]
  DUPTABLE R10 K10 [{"Items", "Labels", "Type"}]
  GETUPVAL R11 0
  SETTABLEKS R11 R10 K7 ["Items"]
  SETTABLEKS R5 R10 K8 ["Labels"]
  LOADK R11 K11 ["MultiSelection"]
  SETTABLEKS R11 R10 K9 ["Type"]
  SETTABLEKS R10 R9 K4 ["Schema"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K5 ["Validate"]
  DUPTABLE R10 K12 [{"Id", "Schema"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["BiomeBlending"]
  SETTABLEKS R11 R10 K3 ["Id"]
  DUPTABLE R11 K18 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R12 K19 ["Slider"]
  SETTABLEKS R12 R11 K9 ["Type"]
  LOADN R12 0
  SETTABLEKS R12 R11 K14 ["Min"]
  LOADN R12 1
  SETTABLEKS R12 R11 K15 ["Max"]
  LOADB R12 1
  SETTABLEKS R12 R11 K16 ["ShowInput"]
  LOADK R12 K20 [0.001]
  SETTABLEKS R12 R11 K17 ["SnapIncrement"]
  SETTABLEKS R11 R10 K4 ["Schema"]
  DUPTABLE R11 K12 [{"Id", "Schema"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K21 ["Caves"]
  SETTABLEKS R12 R11 K3 ["Id"]
  DUPTABLE R12 K22 [{"Type"}]
  LOADK R13 K23 ["Checkbox"]
  SETTABLEKS R13 R12 K9 ["Type"]
  SETTABLEKS R12 R11 K4 ["Schema"]
  DUPTABLE R12 K6 [{"Id", "Schema", "Validate"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["BiomeSize"]
  SETTABLEKS R13 R12 K3 ["Id"]
  DUPTABLE R13 K22 [{"Type"}]
  LOADK R14 K25 ["Number"]
  SETTABLEKS R14 R13 K9 ["Type"]
  SETTABLEKS R13 R12 K4 ["Schema"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K5 ["Validate"]
  DUPTABLE R13 K6 [{"Id", "Schema", "Validate"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K26 ["Seed"]
  SETTABLEKS R14 R13 K3 ["Id"]
  DUPTABLE R14 K22 [{"Type"}]
  LOADK R15 K25 ["Number"]
  SETTABLEKS R15 R14 K9 ["Type"]
  SETTABLEKS R14 R13 K4 ["Schema"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K5 ["Validate"]
  DUPTABLE R14 K28 [{"Id", "Layout", "Schema"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["Generate"]
  SETTABLEKS R15 R14 K3 ["Id"]
  GETIMPORT R15 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K27 ["Layout"]
  DUPTABLE R15 K35 [{"Label", "Type"}]
  GETUPVAL R18 3
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K29 ["Generate"]
  NAMECALL R16 R4 K2 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K34 ["Label"]
  LOADK R16 K36 ["Button"]
  SETTABLEKS R16 R15 K9 ["Type"]
  SETTABLEKS R15 R14 K4 ["Schema"]
  SETLIST R8 R9 6 [1]
  DUPTABLE R9 K40 [{"Category", "Data", "Overrides"}]
  GETUPVAL R10 3
  SETTABLEKS R10 R9 K37 ["Category"]
  SETTABLEKS R1 R9 K38 ["Data"]
  SETTABLEKS R3 R9 K39 ["Overrides"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["ApplyById"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["Biome"]
  GETTABLEKS R5 R2 K12 ["BiomeSettings"]
  GETTABLEKS R6 R2 K13 ["Storage"]
  GETTABLEKS R7 R3 K12 ["BiomeSettings"]
  NEWTABLE R8 2 0
  NEWTABLE R9 8 0
  GETTABLEKS R10 R5 K14 ["Biomes"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K16 ["BiomeBlending"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K17 ["BiomeSize"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K18 ["Caves"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K19 ["Seed"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K20 ["Generate"]
  GETTABLEKS R11 R6 K15 ["LocalPersistent"]
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R8 K13 ["Storage"]
  DUPCLOSURE R9 K21 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K22 ["Generator"]
  RETURN R8 1
