PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["spring"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["TransparencyAnimation"]
  GETTABLEKS R2 R1 K1 ["Enabled"]
  JUMPIF R2 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["instant"]
  RETURN R2 1
  DUPTABLE R2 K5 [{"dampingRatio", "frequency"}]
  GETTABLEKS R3 R1 K6 ["SpringDampingRatio"]
  SETTABLEKS R3 R2 K3 ["dampingRatio"]
  GETTABLEKS R3 R1 K7 ["SpringFrequency"]
  SETTABLEKS R3 R2 K4 ["frequency"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Otter"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1
