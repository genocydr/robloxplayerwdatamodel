PROTO_0:
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 0
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETUPVAL R6 1
  GETTABLE R4 R5 R6
  LOADNIL R5
  SETTABLEN R4 R1 1
  SETTABLE R5 R2 R3
  GETUPVAL R2 1
  SUBK R1 R2 K0 [1]
  SETUPVAL R1 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  ADDK R1 R2 K0 [1]
  SETUPVAL R1 0
  GETUPVAL R1 1
  GETUPVAL R2 0
  SETTABLE R0 R1 R2
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  JUMPIFNOTEQKN R2 K0 [0] [+3]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R4 1
  GETTABLEN R3 R4 1
  JUMPIF R3 [+2]
  LOADNIL R2
  JUMP [+13]
  GETUPVAL R4 1
  GETUPVAL R5 1
  GETUPVAL R6 0
  GETUPVAL R8 1
  GETUPVAL R9 0
  GETTABLE R7 R8 R9
  LOADNIL R8
  SETTABLEN R7 R4 1
  SETTABLE R8 R5 R6
  GETUPVAL R5 0
  SUBK R4 R5 K1 [1]
  SETUPVAL R4 0
  MOVE R2 R3
  GETUPVAL R3 2
  JUMPIFNOT R3 [+44]
  GETUPVAL R3 3
  NEWTABLE R4 0 2
  GETIMPORT R8 K3 [game]
  GETTABLEKS R7 R8 K4 ["Players"]
  GETTABLEKS R6 R7 K5 ["LocalPlayer"]
  GETTABLEKS R5 R6 K6 ["Character"]
  GETIMPORT R7 K8 [workspace]
  GETTABLEKS R6 R7 K9 ["CurrentCamera"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K10 ["FilterDescendantsInstances"]
  GETIMPORT R3 K8 [workspace]
  LOADK R6 K11 [{0, 2, 0}]
  ADD R5 R0 R6
  LOADK R6 K12 [{0, -8, 0}]
  GETUPVAL R7 3
  NAMECALL R3 R3 K13 ["Raycast"]
  CALL R3 4 1
  JUMPIF R3 [+2]
  LOADNIL R4
  RETURN R4 1
  GETIMPORT R4 K16 [CFrame.lookAlong]
  GETTABLEKS R5 R3 K17 ["Position"]
  GETTABLEKS R6 R3 K18 ["Normal"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K14 ["CFrame"]
  GETUPVAL R4 4
  SETTABLEKS R4 R2 K19 ["Parent"]
  RETURN R2 1
  GETIMPORT R3 K22 [Ray.new]
  LOADK R5 K11 [{0, 2, 0}]
  ADD R4 R0 R5
  LOADK R5 K12 [{0, -8, 0}]
  CALL R3 2 1
  GETIMPORT R4 K8 [workspace]
  MOVE R6 R3
  NEWTABLE R7 0 2
  GETIMPORT R11 K3 [game]
  GETTABLEKS R10 R11 K4 ["Players"]
  GETTABLEKS R9 R10 K5 ["LocalPlayer"]
  GETTABLEKS R8 R9 K6 ["Character"]
  GETIMPORT R10 K8 [workspace]
  GETTABLEKS R9 R10 K9 ["CurrentCamera"]
  SETLIST R7 R8 2 [1]
  NAMECALL R4 R4 K23 ["FindPartOnRayWithIgnoreList"]
  CALL R4 3 3
  JUMPIF R4 [+2]
  LOADNIL R7
  RETURN R7 1
  GETIMPORT R7 K24 [CFrame.new]
  MOVE R8 R5
  ADD R9 R5 R6
  CALL R7 2 1
  SETTABLEKS R7 R2 K14 ["CFrame"]
  GETUPVAL R8 4
  SETTABLEKS R8 R2 K19 ["Parent"]
  RETURN R2 1

PROTO_3:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+3]
  SETUPVAL R0 0
  RETURN R0 0
  NEWTABLE R1 0 0
  SETUPVAL R1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["Parent"]
  GETUPVAL R6 1
  ADDK R5 R6 K3 [1]
  SETUPVAL R5 1
  GETUPVAL R5 2
  GETUPVAL R6 1
  SETTABLE R4 R5 R6
  FORGLOOP R0 2 [inext] [-10]
  NEWTABLE R0 0 0
  SETUPVAL R0 0
  GETUPVAL R0 3
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["Parent"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearRenderedPath"]
  CALL R0 0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  LENGTH R0 R1
  JUMPIFNOTEQKN R0 K1 [0] [+2]
  RETURN R0 0
  GETUPVAL R1 1
  LENGTH R0 R1
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  LOADN R2 0
  GETUPVAL R3 2
  GETUPVAL R4 3
  MOVE R5 R1
  LOADB R6 1
  CALL R4 2 1
  SETTABLEN R4 R3 1
  GETUPVAL R4 2
  GETTABLEN R3 R4 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  GETUPVAL R5 1
  SUBK R6 R0 K2 [1]
  GETTABLE R4 R5 R6
  LOADN R5 2
  JUMPIFNOTLT R0 R5 [+2]
  JUMP [+27]
  SUB R5 R4 R3
  GETTABLEKS R6 R5 K3 ["magnitude"]
  JUMPIFNOTLT R6 R2 [+4]
  SUB R2 R2 R6
  SUBK R0 R0 K2 [1]
  JUMP [+18]
  GETTABLEKS R7 R5 K4 ["unit"]
  MUL R9 R7 R2
  ADD R8 R3 R9
  GETUPVAL R9 3
  MOVE R10 R8
  LOADB R11 0
  CALL R9 2 1
  JUMPIFNOT R9 [+5]
  GETUPVAL R10 2
  GETUPVAL R13 2
  LENGTH R12 R13
  ADDK R11 R12 K2 [1]
  SETTABLE R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["spacing"]
  ADD R2 R2 R10
  JUMPBACK [-36]
  GETUPVAL R3 4
  GETIMPORT R5 K7 [workspace]
  GETTABLEKS R4 R5 K8 ["CurrentCamera"]
  SETTABLEKS R4 R3 K9 ["Parent"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["CommonUtils"]
  NAMECALL R0 R0 K4 ["WaitForChild"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  LOADK R4 K7 ["FlagUtil"]
  NAMECALL R2 R0 K4 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K8 ["getUserFlag"]
  LOADK R3 K9 ["UserRaycastPerformanceImprovements"]
  CALL R2 1 1
  GETIMPORT R3 K12 [RaycastParams.new]
  CALL R3 0 1
  GETIMPORT R4 K16 [Enum.RaycastFilterType.Exclude]
  SETTABLEKS R4 R3 K17 ["FilterType"]
  NEWTABLE R4 8 0
  LOADN R5 8
  SETTABLEKS R5 R4 K18 ["spacing"]
  LOADK R5 K19 ["rbxasset://textures/Cursors/Gamepad/Pointer.png"]
  SETTABLEKS R5 R4 K20 ["image"]
  GETIMPORT R5 K22 [Vector2.new]
  LOADN R6 2
  LOADN R7 2
  CALL R5 2 1
  SETTABLEKS R5 R4 K23 ["imageSize"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K25 [Instance.new]
  LOADK R8 K26 ["Model"]
  CALL R7 1 1
  LOADK R8 K27 ["PathDisplayPoints"]
  SETTABLEKS R8 R7 K28 ["Name"]
  GETIMPORT R8 K25 [Instance.new]
  LOADK R9 K29 ["Part"]
  CALL R8 1 1
  LOADB R9 1
  SETTABLEKS R9 R8 K30 ["Anchored"]
  LOADB R9 0
  SETTABLEKS R9 R8 K31 ["CanCollide"]
  LOADN R9 1
  SETTABLEKS R9 R8 K32 ["Transparency"]
  LOADK R9 K33 ["PathDisplayAdornee"]
  SETTABLEKS R9 R8 K28 ["Name"]
  GETIMPORT R9 K35 [CFrame.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K34 ["CFrame"]
  SETTABLEKS R7 R8 K2 ["Parent"]
  NEWTABLE R9 0 1
  LOADN R10 30
  LOADN R13 1
  MOVE R11 R10
  LOADN R12 1
  FORNPREP R11
  GETIMPORT R14 K25 [Instance.new]
  LOADK R15 K36 ["ImageHandleAdornment"]
  CALL R14 1 1
  LOADB R15 0
  SETTABLEKS R15 R14 K37 ["Archivable"]
  SETTABLEKS R8 R14 K38 ["Adornee"]
  GETTABLEKS R15 R4 K20 ["image"]
  SETTABLEKS R15 R14 K39 ["Image"]
  GETTABLEKS R15 R4 K23 ["imageSize"]
  SETTABLEKS R15 R14 K40 ["Size"]
  SETTABLE R14 R9 R13
  FORNLOOP R11
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE REF R10
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  CAPTURE VAL R9
  NEWCLOSURE R13 P2
  CAPTURE REF R10
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  NEWCLOSURE R14 P3
  CAPTURE REF R5
  SETTABLEKS R14 R4 K41 ["setCurrentPoints"]
  NEWCLOSURE R14 P4
  CAPTURE REF R6
  CAPTURE REF R10
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R14 R4 K42 ["clearRenderedPath"]
  NEWCLOSURE R14 P5
  CAPTURE VAL R4
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE VAL R13
  CAPTURE VAL R7
  SETTABLEKS R14 R4 K43 ["renderPath"]
  CLOSEUPVALS R5
  RETURN R4 1