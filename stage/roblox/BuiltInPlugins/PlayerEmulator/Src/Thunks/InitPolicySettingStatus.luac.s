PROTO_0:
  LOADK R3 K0 ["^%l"]
  GETIMPORT R4 K3 [string.upper]
  NAMECALL R1 R0 K4 ["gsub"]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["POLICY_SETTING_KEY"]
  NAMECALL R3 R3 K1 ["GetSetting"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  GETUPVAL R5 2
  CALL R4 1 3
  FORGPREP_NEXT R4
  FASTCALL1 TYPE R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K5 [type]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K6 ["table"] [+5]
  GETIMPORT R9 K8 [table.sort]
  MOVE R10 R8
  CALL R9 1 0
  LOADK R11 K9 ["^%l"]
  GETIMPORT R12 K12 [string.upper]
  NAMECALL R9 R7 K13 ["gsub"]
  CALL R9 3 1
  SETTABLE R8 R1 R9
  LOADK R12 K9 ["^%l"]
  GETIMPORT R13 K12 [string.upper]
  NAMECALL R10 R7 K13 ["gsub"]
  CALL R10 3 1
  GETTABLE R9 R3 R10
  JUMPIFEQKNIL R9 [+16]
  LOADK R11 K9 ["^%l"]
  GETIMPORT R12 K12 [string.upper]
  NAMECALL R9 R7 K13 ["gsub"]
  CALL R9 3 1
  LOADK R13 K9 ["^%l"]
  GETIMPORT R14 K12 [string.upper]
  NAMECALL R11 R7 K13 ["gsub"]
  CALL R11 3 1
  GETTABLE R10 R3 R11
  SETTABLE R10 R2 R9
  JUMP [+21]
  GETUPVAL R10 3
  GETTABLE R9 R10 R7
  JUMPIFEQKNIL R9 [+11]
  LOADK R11 K9 ["^%l"]
  GETIMPORT R12 K12 [string.upper]
  NAMECALL R9 R7 K13 ["gsub"]
  CALL R9 3 1
  GETUPVAL R11 3
  GETTABLE R10 R11 R7
  SETTABLE R10 R2 R9
  JUMP [+7]
  LOADK R11 K9 ["^%l"]
  GETIMPORT R12 K12 [string.upper]
  NAMECALL R9 R7 K13 ["gsub"]
  CALL R9 3 1
  SETTABLE R8 R2 R9
  FORGLOOP R4 2 [-64]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K14 ["Dictionary"]
  GETTABLEKS R4 R5 K15 ["keys"]
  MOVE R5 R1
  CALL R4 1 1
  GETIMPORT R5 K8 [table.sort]
  MOVE R6 R4
  CALL R5 1 0
  GETUPVAL R7 5
  MOVE R8 R1
  MOVE R9 R4
  CALL R7 2 -1
  NAMECALL R5 R0 K16 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 6
  MOVE R7 R2
  NAMECALL R5 R5 K17 ["SetEmulatedPolicyInfo"]
  CALL R5 2 0
  GETUPVAL R7 7
  MOVE R8 R2
  CALL R7 1 -1
  NAMECALL R5 R0 K16 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlayerEmulatorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K11 ["Src"]
  GETTABLEKS R6 R7 K14 ["Actions"]
  GETTABLEKS R5 R6 K15 ["UpdatePolicySettingStatus"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K11 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETTABLEKS R6 R7 K16 ["LoadAllPolicyValues"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  DUPCLOSURE R7 K18 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R4
  RETURN R7 1
