PROTO_0:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["connection"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["event"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["callback"]
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["connection"]
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["event"]
  GETTABLEKS R3 R1 K1 ["event"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["callback"]
  GETTABLEKS R3 R1 K2 ["callback"]
  JUMPIFEQ R2 R3 [+19]
  GETTABLEKS R2 R0 K3 ["connection"]
  NAMECALL R2 R2 K4 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["event"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["callback"]
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K3 ["connection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["connection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["connection"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Component"]
  LOADK R4 K9 ["EventConnection"]
  NAMECALL R2 R2 K10 ["extend"]
  CALL R2 2 1
  DUPCLOSURE R3 K11 [PROTO_0]
  SETTABLEKS R3 R2 K12 ["init"]
  DUPCLOSURE R3 K13 [PROTO_1]
  SETTABLEKS R3 R2 K14 ["didMount"]
  DUPCLOSURE R3 K15 [PROTO_2]
  SETTABLEKS R3 R2 K16 ["render"]
  DUPCLOSURE R3 K17 [PROTO_3]
  SETTABLEKS R3 R2 K18 ["didUpdate"]
  DUPCLOSURE R3 K19 [PROTO_4]
  SETTABLEKS R3 R2 K20 ["willUnmount"]
  RETURN R2 1
