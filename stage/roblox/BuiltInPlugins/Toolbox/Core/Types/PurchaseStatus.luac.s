MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"None", "Waiting", "Success", "Failed"}]
  LOADN R1 1
  SETTABLEKS R1 R0 K0 ["None"]
  LOADN R1 2
  SETTABLEKS R1 R0 K1 ["Waiting"]
  LOADN R1 3
  SETTABLEKS R1 R0 K2 ["Success"]
  LOADN R1 4
  SETTABLEKS R1 R0 K3 ["Failed"]
  RETURN R0 1
