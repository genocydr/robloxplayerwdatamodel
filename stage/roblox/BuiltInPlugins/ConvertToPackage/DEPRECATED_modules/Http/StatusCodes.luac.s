MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K17 [{"PENDING", "UNKNOWN_ERROR", "NO_CONNECTIVITY", "INVALID_JSON", "BAD_TLS", "MODERATED", "OK", "BAD_REQUEST", "UNAUTHORIZED", "FORBIDDEN", "NOT_FOUND", "REQUEST_TIMEOUT", "INTERNAL_SERVER_ERROR", "NOT_IMPLEMENTED", "BAD_GATEWAY", "SERVICE_UNAVAILABLE", "GATEWAY_TIMEOUT"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["PENDING"]
  LOADN R1 255
  SETTABLEKS R1 R0 K1 ["UNKNOWN_ERROR"]
  LOADN R1 254
  SETTABLEKS R1 R0 K2 ["NO_CONNECTIVITY"]
  LOADN R1 253
  SETTABLEKS R1 R0 K3 ["INVALID_JSON"]
  LOADN R1 252
  SETTABLEKS R1 R0 K4 ["BAD_TLS"]
  LOADN R1 251
  SETTABLEKS R1 R0 K5 ["MODERATED"]
  LOADN R1 200
  SETTABLEKS R1 R0 K6 ["OK"]
  LOADN R1 144
  SETTABLEKS R1 R0 K7 ["BAD_REQUEST"]
  LOADN R1 145
  SETTABLEKS R1 R0 K8 ["UNAUTHORIZED"]
  LOADN R1 147
  SETTABLEKS R1 R0 K9 ["FORBIDDEN"]
  LOADN R1 148
  SETTABLEKS R1 R0 K10 ["NOT_FOUND"]
  LOADN R1 152
  SETTABLEKS R1 R0 K11 ["REQUEST_TIMEOUT"]
  LOADN R1 244
  SETTABLEKS R1 R0 K12 ["INTERNAL_SERVER_ERROR"]
  LOADN R1 245
  SETTABLEKS R1 R0 K13 ["NOT_IMPLEMENTED"]
  LOADN R1 246
  SETTABLEKS R1 R0 K14 ["BAD_GATEWAY"]
  LOADN R1 247
  SETTABLEKS R1 R0 K15 ["SERVICE_UNAVAILABLE"]
  LOADN R1 248
  SETTABLEKS R1 R0 K16 ["GATEWAY_TIMEOUT"]
  RETURN R0 1