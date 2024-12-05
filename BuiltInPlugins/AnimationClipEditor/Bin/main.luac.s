PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"plugin", "pluginLoaderContext"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["plugin"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K2 ["pluginLoaderContext"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["mount"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 4
  GETIMPORT R1 K6 [pcall]
  DUPCLOSURE R2 K7 [PROTO_0]
  CALL R1 1 2
  JUMPIFNOT R1 [+15]
  JUMPIFNOT R2 [+14]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K8 ["forPlugin"]
  LOADK R4 K9 ["AnimationClipEditor"]
  GETUPVAL R5 2
  CALL R3 2 1
  SETUPVAL R3 5
  GETUPVAL R3 5
  LOADK R5 K10 ["Roact tree"]
  GETUPVAL R6 4
  GETUPVAL R7 0
  NAMECALL R3 R3 K11 ["addRoactTree"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K5 ["defineLuaFlags"]
  CALL R2 1 0
  GETIMPORT R2 K3 [script]
  LOADK R4 K6 ["AnimationClipEditor"]
  NAMECALL R2 R2 K7 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R6 R2 K8 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Dev"]
  GETTABLEKS R4 R5 K10 ["DeveloperTools"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETTABLEKS R7 R2 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["DebugFlags"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R2 K8 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETTABLEKS R9 R2 K11 ["Src"]
  GETTABLEKS R8 R9 K15 ["Components"]
  GETTABLEKS R7 R8 K16 ["AnimationClipEditorPlugin"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K17 ["RunTests"]
  CALL R7 0 1
  JUMPIF R7 [+4]
  GETTABLEKS R7 R4 K18 ["RunRhodiumTests"]
  CALL R7 0 1
  JUMPIFNOT R7 [+1]
  RETURN R0 0
  LOADNIL R7
  LOADNIL R8
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE REF R8
  CAPTURE REF R7
  CAPTURE VAL R3
  GETTABLEKS R10 R0 K19 ["Unloading"]
  NEWCLOSURE R12 P1
  CAPTURE REF R8
  CAPTURE VAL R5
  CAPTURE REF R7
  NAMECALL R10 R10 K20 ["Connect"]
  CALL R10 2 0
  MOVE R10 R9
  CALL R10 0 0
  CLOSEUPVALS R7
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_3]
  RETURN R0 1
