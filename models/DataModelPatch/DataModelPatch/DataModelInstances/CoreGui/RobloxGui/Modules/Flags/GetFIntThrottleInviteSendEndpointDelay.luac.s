PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LuaAppThrottleInviteSendEndpointDelay"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LuaAppThrottleInviteSendEndpointDelay"]
  LOADK R3 K3 [0.5]
  NAMECALL R0 R0 K4 ["DefineFastInt"]
  CALL R0 3 0
  DUPCLOSURE R0 K5 [PROTO_0]
  RETURN R0 1
