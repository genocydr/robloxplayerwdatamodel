PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsEdit"]
  CALL R1 1 1
  JUMPIFNOT R1 [+25]
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 2
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 3
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 4
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 5
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 6
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  RETURN R0 0
  JUMPIFNOT R0 [+25]
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 2
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 3
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 4
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 5
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 6
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  RETURN R0 0
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 2
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 3
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 4
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 5
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  GETUPVAL R1 6
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Enabled"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pauseButtons"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["IsRunning"]
  CALL R2 1 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Pause"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["pauseButtons"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Run"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["pauseButtons"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsRunning"]
  CALL R0 1 1
  JUMPIF R0 [+6]
  GETIMPORT R0 K2 [workspace]
  LOADK R2 K3 [0.0166666666666667]
  NAMECALL R0 R0 K4 ["StepPhysics"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsEdit"]
  CALL R1 1 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  JUMPIFNOTEQKS R0 K1 ["Pause"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["onPause"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K3 ["Resume"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["onResume"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K5 ["StepForward"] [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["onStepForward"]
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K2 ["syncRunState"]
  LOADK R3 K3 ["Pause"]
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K2 ["syncRunState"]
  LOADK R3 K3 ["Resume"]
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K2 ["syncRunState"]
  LOADK R3 K3 ["StepForward"]
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K6 ["SimulationStep"]
  NAMECALL R0 R0 K7 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K9 [plugin]
  GETTABLEKS R2 R0 K10 ["Name"]
  SETTABLEKS R2 R1 K10 ["Name"]
  GETIMPORT R1 K12 [game]
  LOADK R3 K13 ["RunService"]
  NAMECALL R1 R1 K14 ["GetService"]
  CALL R1 2 1
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  NEWTABLE R8 16 0
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE REF R2
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE REF R7
  SETTABLEKS R9 R8 K15 ["pauseButtons"]
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R1
  LOADK R12 K17 ["RunState"]
  NAMECALL R10 R1 K18 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  MOVE R12 R9
  NAMECALL R10 R10 K19 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R8 K20 ["checkRunState"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K22 ["onPause"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K24 ["onResume"]
  DUPCLOSURE R10 K25 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R10 R8 K26 ["onStepForward"]
  DUPCLOSURE R10 K27 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K28 ["invokeAction"]
  GETIMPORT R10 K9 [plugin]
  LOADK R12 K29 ["syncRunState"]
  GETTABLEKS R13 R8 K28 ["invokeAction"]
  NAMECALL R10 R10 K30 ["OnInvoke"]
  CALL R10 3 0
  DUPCLOSURE R10 K31 [PROTO_6]
  SETTABLEKS R10 R8 K32 ["pauseAll"]
  DUPCLOSURE R10 K33 [PROTO_7]
  SETTABLEKS R10 R8 K34 ["resumeAll"]
  DUPCLOSURE R10 K35 [PROTO_8]
  SETTABLEKS R10 R8 K36 ["stepForwardAll"]
  NAMECALL R11 R1 K37 ["IsRunning"]
  CALL R11 1 1
  NOT R10 R11
  GETIMPORT R11 K9 [plugin]
  LOADK R13 K38 ["simulationStep"]
  NAMECALL R11 R11 K39 ["CreateToolbar"]
  CALL R11 2 1
  LOADK R14 K40 ["ResumeAll"]
  LOADK R15 K41 [""]
  LOADK R16 K42 ["rbxlocaltheme://Resume"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R2 R12
  LOADB R12 1
  SETTABLEKS R12 R2 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R2 K45 ["Click"]
  GETTABLEKS R14 R8 K34 ["resumeAll"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  LOADK R14 K46 ["Resume"]
  LOADK R15 K41 [""]
  LOADK R16 K42 ["rbxlocaltheme://Resume"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R3 R12
  LOADB R12 1
  SETTABLEKS R12 R3 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R3 K45 ["Click"]
  GETTABLEKS R14 R8 K24 ["onResume"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  LOADK R14 K47 ["PauseAll"]
  LOADK R15 K41 [""]
  LOADK R16 K48 ["rbxlocaltheme://Pause"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R4 R12
  LOADB R12 1
  SETTABLEKS R12 R4 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R4 K45 ["Click"]
  GETTABLEKS R14 R8 K32 ["pauseAll"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  LOADK R14 K49 ["Pause"]
  LOADK R15 K41 [""]
  LOADK R16 K48 ["rbxlocaltheme://Pause"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R5 R12
  LOADB R12 1
  SETTABLEKS R12 R5 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R5 K45 ["Click"]
  GETTABLEKS R14 R8 K22 ["onPause"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  LOADK R14 K50 ["StepForwardAll"]
  LOADK R15 K41 [""]
  LOADK R16 K51 ["rbxlocaltheme://Fwd"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R6 R12
  LOADB R12 1
  SETTABLEKS R12 R6 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R6 K45 ["Click"]
  GETTABLEKS R14 R8 K36 ["stepForwardAll"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  LOADK R14 K52 ["StepForward"]
  LOADK R15 K41 [""]
  LOADK R16 K51 ["rbxlocaltheme://Fwd"]
  NAMECALL R12 R11 K43 ["CreateButton"]
  CALL R12 4 1
  MOVE R7 R12
  LOADB R12 1
  SETTABLEKS R12 R7 K44 ["ClickableWhenViewportHidden"]
  GETTABLEKS R12 R7 K45 ["Click"]
  GETTABLEKS R14 R8 K26 ["onStepForward"]
  NAMECALL R12 R12 K19 ["Connect"]
  CALL R12 2 0
  GETTABLEKS R12 R8 K15 ["pauseButtons"]
  MOVE R13 R10
  CALL R12 1 0
  CLOSEUPVALS R2
  RETURN R0 0
