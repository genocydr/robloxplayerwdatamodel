PROTO_0:
  DUPTABLE R2 K2 [{"waitingForRecording", "lastFileOutputLocation"}]
  SETTABLEKS R0 R2 K0 ["waitingForRecording"]
  ORK R3 R1 K3 [""]
  SETTABLEKS R3 R2 K1 ["lastFileOutputLocation"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
