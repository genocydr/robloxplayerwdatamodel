PROTO_0:
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  ADDK R2 R3 K2 [0.3]
  JUMPIFNOTLE R1 R2 [+5]
  LOADNIL R2
  SETUPVAL R2 0
  LOADB R2 1
  RETURN R2 1
  SETUPVAL R1 0
  LOADB R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  LOADNIL R0
  NEWTABLE R1 1 0
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  SETTABLEKS R2 R1 K0 ["isDoubleClick"]
  CLOSEUPVALS R0
  RETURN R1 1
