PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["extend"]
  LOADK R2 K7 ["Dialog"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  SETTABLEKS R2 R1 K9 ["bind"]
  DUPCLOSURE R2 K10 [PROTO_1]
  SETTABLEKS R2 R1 K11 ["unbind"]
  RETURN R1 1
