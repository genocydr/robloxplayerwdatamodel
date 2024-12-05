PROTO_0:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K0 ["Uri"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["current"]
  SETTABLEKS R4 R3 K1 ["Widget"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["current"]
  LOADK R6 K5 ["PluginGui"]
  NAMECALL R4 R4 K6 ["FindFirstAncestorWhichIsA"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["DEPRECATED_PluginGui"]
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K7 ["RegisterAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K0 ["DeregisterAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["WidgetRegister not mounted"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K4 ["Widgets"]
  NAMECALL R0 R0 K5 ["GetPluginComponent"]
  CALL R0 2 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K6 ["GetUri"]
  CALL R1 1 1
  GETIMPORT R2 K9 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CALL R2 1 0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ContextServices"]
  GETTABLEKS R0 R1 K1 ["Plugin"]
  NAMECALL R0 R0 K2 ["use"]
  CALL R0 1 1
  NAMECALL R0 R0 K3 ["get"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["useEffect"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R4 0 0
  CALL R2 2 0
  GETUPVAL R2 2
  LOADK R3 K6 ["Frame"]
  DUPTABLE R4 K10 [{"BackgroundTransparency", "Size", "ref"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K7 ["BackgroundTransparency"]
  GETIMPORT R5 K13 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Size"]
  SETTABLEKS R1 R4 K9 ["ref"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createElement"]
  DUPCLOSURE R4 K10 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1