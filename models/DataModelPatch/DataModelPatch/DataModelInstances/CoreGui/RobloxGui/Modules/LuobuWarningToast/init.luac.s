PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["root"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 2 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 2
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["element"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["mount"]
  GETTABLEKS R2 R0 K3 ["element"]
  GETUPVAL R3 3
  LOADK R4 K5 ["LuobuWarningToast"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K6 ["root"]
  GETIMPORT R1 K9 [task.delay]
  LOADN R2 10
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 2 0
  RETURN R0 1

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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["LuobuWarningToastComponent"]
  CALL R3 1 1
  NEWTABLE R4 2 0
  SETTABLEKS R4 R4 K12 ["__index"]
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K14 ["new"]
  GETTABLEKS R5 R4 K14 ["new"]
  CALL R5 0 -1
  RETURN R5 -1
