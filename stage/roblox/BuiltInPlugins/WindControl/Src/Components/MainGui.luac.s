PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["windhose"]
  JUMPIFNOT R0 [+30]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["windhose"]
  GETTABLEKS R0 R1 K1 ["selectStick"]
  JUMPIFNOT R0 [+24]
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"windspeed", "windDirection"}]
  GETIMPORT R5 K6 [workspace]
  GETTABLEKS R4 R5 K7 ["GlobalWind"]
  GETTABLEKS R3 R4 K8 ["Magnitude"]
  SETTABLEKS R3 R2 K2 ["windspeed"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["windhose"]
  GETTABLEKS R5 R6 K1 ["selectStick"]
  GETTABLEKS R4 R5 K9 ["CFrame"]
  GETTABLEKS R3 R4 K10 ["LookVector"]
  SETTABLEKS R3 R2 K3 ["windDirection"]
  NAMECALL R0 R0 K11 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isChangingPitch"}]
  SETTABLEKS R0 R3 K0 ["isChangingPitch"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isChangingYaw"}]
  SETTABLEKS R0 R3 K0 ["isChangingYaw"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isChangingYaw", "isChangingPitch"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isChangingYaw"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isChangingPitch"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isChangingYaw", "isChangingPitch"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isChangingYaw"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isChangingPitch"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isChangingYaw", "isChangingPitch"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isChangingYaw"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isChangingPitch"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["cameraRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["viewportRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["textLabelRef"]
  GETUPVAL R1 1
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["windhose"]
  DUPTABLE R3 K9 [{"windspeed", "windDirection", "isChangingPitch", "isChangingYaw"}]
  GETIMPORT R6 K11 [workspace]
  GETTABLEKS R5 R6 K12 ["GlobalWind"]
  GETTABLEKS R4 R5 K13 ["Magnitude"]
  SETTABLEKS R4 R3 K5 ["windspeed"]
  GETIMPORT R6 K11 [workspace]
  GETTABLEKS R5 R6 K12 ["GlobalWind"]
  GETTABLEKS R4 R5 K14 ["Unit"]
  SETTABLEKS R4 R3 K6 ["windDirection"]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["isChangingPitch"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["isChangingYaw"]
  NAMECALL R1 R0 K15 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onWindChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onisChangingPitchChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["onisChangingYawChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["onYawStateRequested"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["onPitchStateRequested"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["onSpeedStateRequested"]
  RETURN R0 0

PROTO_7:
  GETIMPORT R6 K1 [game]
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["CurrentCamera"]
  GETTABLEKS R3 R4 K4 ["ViewportSize"]
  GETTABLE R2 R3 R0
  LOADK R3 K5 [0.5]
  LOADK R4 K5 [0.5]
  GETUPVAL R5 0
  JUMPIFNOTLT R5 R2 [+16]
  GETUPVAL R5 1
  LOADK R8 K6 ["WindControl_Position"]
  MOVE R9 R0
  CONCAT R7 R8 R9
  NAMECALL R5 R5 K7 ["GetSetting"]
  CALL R5 2 1
  OR R3 R5 R1
  GETUPVAL R7 0
  SUB R6 R2 R7
  MUL R5 R3 R6
  GETUPVAL R8 0
  MUL R7 R3 R8
  ADD R6 R5 R7
  DIV R4 R6 R2
  RETURN R3 2

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["viewportRef"]
  NAMECALL R2 R2 K4 ["getValue"]
  CALL R2 1 1
  JUMPIFNOT R1 [+78]
  JUMPIFNOT R2 [+77]
  GETTABLEKS R4 R2 K5 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K6 ["X"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  GETIMPORT R11 K8 [game]
  GETTABLEKS R10 R11 K9 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["CurrentCamera"]
  GETTABLEKS R8 R9 K11 ["ViewportSize"]
  GETTABLEKS R7 R8 K6 ["X"]
  LOADK R8 K12 [0.5]
  LOADK R9 K12 [0.5]
  JUMPIFNOTLT R3 R7 [+13]
  LOADK R13 K14 ["WindControl_Position"]
  LOADK R14 K6 ["X"]
  CONCAT R12 R13 R14
  NAMECALL R10 R1 K15 ["GetSetting"]
  CALL R10 2 1
  ORK R8 R10 K13 [1]
  SUB R11 R7 R3
  MUL R10 R8 R11
  MUL R12 R8 R3
  ADD R11 R10 R12
  DIV R9 R11 R7
  MOVE R5 R8
  MOVE R6 R9
  GETIMPORT R13 K8 [game]
  GETTABLEKS R12 R13 K9 ["Workspace"]
  GETTABLEKS R11 R12 K10 ["CurrentCamera"]
  GETTABLEKS R10 R11 K11 ["ViewportSize"]
  GETTABLEKS R9 R10 K16 ["Y"]
  LOADK R10 K12 [0.5]
  LOADK R11 K12 [0.5]
  JUMPIFNOTLT R3 R9 [+13]
  LOADK R15 K14 ["WindControl_Position"]
  LOADK R16 K16 ["Y"]
  CONCAT R14 R15 R16
  NAMECALL R12 R1 K15 ["GetSetting"]
  CALL R12 2 1
  ORK R10 R12 K17 [0]
  SUB R13 R9 R3
  MUL R12 R10 R13
  MUL R14 R10 R3
  ADD R13 R12 R14
  DIV R11 R13 R9
  MOVE R7 R10
  MOVE R8 R11
  GETIMPORT R9 K20 [Vector2.new]
  MOVE R10 R5
  MOVE R11 R7
  CALL R9 2 1
  SETTABLEKS R9 R2 K21 ["AnchorPoint"]
  GETIMPORT R9 K24 [UDim2.fromScale]
  MOVE R10 R6
  MOVE R11 R8
  CALL R9 2 1
  SETTABLEKS R9 R2 K25 ["Position"]
  RETURN R0 0

PROTO_9:
  GETIMPORT R5 K1 [game]
  GETTABLEKS R4 R5 K2 ["Workspace"]
  GETTABLEKS R3 R4 K3 ["CurrentCamera"]
  GETTABLEKS R2 R3 K4 ["ViewportSize"]
  GETTABLE R1 R2 R0
  LOADK R2 K5 [0.5]
  LOADK R3 K5 [0.5]
  GETUPVAL R4 0
  JUMPIFNOTLT R4 R1 [+19]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["AbsolutePosition"]
  GETTABLE R5 R6 R0
  LOADN R6 0
  GETUPVAL R8 0
  SUB R7 R1 R8
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K9 [math.clamp]
  CALL R4 3 1
  GETUPVAL R6 0
  SUB R5 R1 R6
  DIV R2 R4 R5
  GETUPVAL R7 0
  MUL R6 R2 R7
  ADD R5 R4 R6
  DIV R3 R5 R1
  GETUPVAL R4 2
  LOADK R7 K10 ["WindControl_Position"]
  MOVE R8 R0
  CONCAT R6 R7 R8
  MOVE R7 R2
  NAMECALL R4 R4 K11 ["SetSetting"]
  CALL R4 3 0
  RETURN R2 2

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["viewportRef"]
  NAMECALL R2 R2 K4 ["getValue"]
  CALL R2 1 1
  JUMPIFNOT R1 [+99]
  JUMPIFNOT R2 [+98]
  GETTABLEKS R4 R2 K5 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K6 ["X"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  GETIMPORT R11 K8 [game]
  GETTABLEKS R10 R11 K9 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["CurrentCamera"]
  GETTABLEKS R8 R9 K11 ["ViewportSize"]
  GETTABLEKS R7 R8 K6 ["X"]
  LOADK R8 K12 [0.5]
  LOADK R9 K12 [0.5]
  JUMPIFNOTLT R3 R7 [+16]
  GETTABLEKS R12 R2 K13 ["AbsolutePosition"]
  GETTABLEKS R11 R12 K6 ["X"]
  LOADN R12 0
  SUB R13 R7 R3
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R10 K16 [math.clamp]
  CALL R10 3 1
  SUB R11 R7 R3
  DIV R8 R10 R11
  MUL R12 R8 R3
  ADD R11 R10 R12
  DIV R9 R11 R7
  LOADK R13 K17 ["WindControl_Position"]
  LOADK R14 K6 ["X"]
  CONCAT R12 R13 R14
  MOVE R13 R8
  NAMECALL R10 R1 K18 ["SetSetting"]
  CALL R10 3 0
  MOVE R5 R8
  MOVE R6 R9
  GETIMPORT R13 K8 [game]
  GETTABLEKS R12 R13 K9 ["Workspace"]
  GETTABLEKS R11 R12 K10 ["CurrentCamera"]
  GETTABLEKS R10 R11 K11 ["ViewportSize"]
  GETTABLEKS R9 R10 K19 ["Y"]
  LOADK R10 K12 [0.5]
  LOADK R11 K12 [0.5]
  JUMPIFNOTLT R3 R9 [+16]
  GETTABLEKS R14 R2 K13 ["AbsolutePosition"]
  GETTABLEKS R13 R14 K19 ["Y"]
  LOADN R14 0
  SUB R15 R9 R3
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K16 [math.clamp]
  CALL R12 3 1
  SUB R13 R9 R3
  DIV R10 R12 R13
  MUL R14 R10 R3
  ADD R13 R12 R14
  DIV R11 R13 R9
  LOADK R15 K17 ["WindControl_Position"]
  LOADK R16 K19 ["Y"]
  CONCAT R14 R15 R16
  MOVE R15 R10
  NAMECALL R12 R1 K18 ["SetSetting"]
  CALL R12 3 0
  MOVE R7 R10
  MOVE R8 R11
  GETIMPORT R9 K22 [Vector2.new]
  MOVE R10 R5
  MOVE R11 R7
  CALL R9 2 1
  SETTABLEKS R9 R2 K23 ["AnchorPoint"]
  GETIMPORT R9 K26 [UDim2.fromScale]
  MOVE R10 R6
  MOVE R11 R8
  CALL R9 2 1
  SETTABLEKS R9 R2 K27 ["Position"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 1
  LOADK R2 K0 ["rbxasset://models/WindControl/windhose.rbxm"]
  NAMECALL R0 R0 K1 ["LoadLocalAsset"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_12:
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mounted"]
  JUMPIF R1 [+2]
  CLOSEUPVALS R0
  RETURN R0 0
  GETIMPORT R1 K2 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U1
  CALL R1 1 0
  JUMPIFNOTEQKNIL R0 [+3]
  CLOSEUPVALS R0
  RETURN R0 0
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K3 ["windControlModel"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["viewportRef"]
  NAMECALL R1 R1 K5 ["getValue"]
  CALL R1 1 1
  JUMPIFNOT R1 [+49]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["windControlModel"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["viewportRef"]
  NAMECALL R2 R2 K5 ["getValue"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Parent"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["windhose"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["windControlModel"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["cameraRef"]
  NAMECALL R4 R4 K5 ["getValue"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["viewportRef"]
  NAMECALL R5 R5 K5 ["getValue"]
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["onWindChanged"]
  LOADNIL R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["onYawStateRequested"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["onPitchStateRequested"]
  NAMECALL R1 R1 K12 ["init"]
  CALL R1 8 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["windhose"]
  LOADB R3 1
  NAMECALL R1 R1 K13 ["setEnabled"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K14 ["loaded"]
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_13:
  GETIMPORT R1 K2 [coroutine.wrap]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R1 1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["mounted"]
  JUMPIFNOT R1 [+18]
  GETTABLEKS R1 R0 K1 ["windhose"]
  LOADB R3 0
  NAMECALL R1 R1 K2 ["setEnabled"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["windControlModel"]
  JUMPIFEQKNIL R1 [+9]
  GETTABLEKS R1 R0 K3 ["windControlModel"]
  NAMECALL R1 R1 K4 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["windControlModel"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["windhose"]
  NAMECALL R0 R0 K1 ["onMouseEnter"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["windhose"]
  NAMECALL R0 R0 K1 ["onMouseLeave"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["windhose"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["onMouseButton1Down"]
  CALL R3 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["windhose"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["onMouseMove"]
  CALL R3 3 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MainGui"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createPortal"]
  DUPTABLE R4 K5 [{"WindControl"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  LOADK R6 K7 ["Folder"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K9 [{"Screengui"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createElement"]
  LOADK R10 K10 ["ScreenGui"]
  NEWTABLE R11 0 0
  DUPTABLE R12 K12 [{"ViewportFrame"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K6 ["createElement"]
  LOADK R14 K11 ["ViewportFrame"]
  DUPTABLE R15 K19 [{"ZIndex", "Size", "Position", "CurrentCamera", "BackgroundTransparency", "ref"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["ZIndex"]
  GETTABLEKS R17 R2 K11 ["ViewportFrame"]
  GETTABLEKS R16 R17 K14 ["Size"]
  SETTABLEKS R16 R15 K14 ["Size"]
  GETTABLEKS R17 R2 K11 ["ViewportFrame"]
  GETTABLEKS R16 R17 K15 ["Position"]
  SETTABLEKS R16 R15 K15 ["Position"]
  GETTABLEKS R16 R0 K20 ["cameraRef"]
  SETTABLEKS R16 R15 K16 ["CurrentCamera"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  GETTABLEKS R16 R0 K21 ["viewportRef"]
  SETTABLEKS R16 R15 K18 ["ref"]
  DUPTABLE R16 K26 [{"Background", "Camera", "ImageButton", "WindspeedDisplay"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  GETUPVAL R18 2
  GETTABLEKS R19 R2 K27 ["BackgroundPane"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K22 ["Background"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  LOADK R18 K23 ["Camera"]
  DUPTABLE R19 K31 [{"CameraType", "CFrame", "FieldOfView", "ref"}]
  GETIMPORT R20 K34 [Enum.CameraType.Scriptable]
  SETTABLEKS R20 R19 K28 ["CameraType"]
  GETIMPORT R20 K36 [CFrame.new]
  LOADK R21 K37 [{0, 0, 0}]
  LOADK R22 K37 [{0, 0, 0}]
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["CFrame"]
  GETTABLEKS R20 R2 K38 ["CameraFOV"]
  SETTABLEKS R20 R19 K30 ["FieldOfView"]
  GETTABLEKS R20 R0 K20 ["cameraRef"]
  SETTABLEKS R20 R19 K18 ["ref"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["Camera"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  LOADK R18 K24 ["ImageButton"]
  NEWTABLE R19 8 0
  GETIMPORT R20 K41 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K42 ["Event"]
  GETTABLEKS R20 R21 K43 ["MouseEnter"]
  NEWCLOSURE R21 P0
  CAPTURE VAL R0
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K42 ["Event"]
  GETTABLEKS R20 R21 K44 ["MouseLeave"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R0
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K42 ["Event"]
  GETTABLEKS R20 R21 K45 ["MouseButton1Down"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R0
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K42 ["Event"]
  GETTABLEKS R20 R21 K46 ["MouseMoved"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R0
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K24 ["ImageButton"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K54 [{"Windspeed", "WindDirection", "isChangingPitch", "isChangingYaw", "yawStateRequested", "pitchStateRequested", "speedStateRequested"}]
  GETTABLEKS R21 R0 K55 ["state"]
  GETTABLEKS R20 R21 K56 ["windspeed"]
  SETTABLEKS R20 R19 K47 ["Windspeed"]
  GETTABLEKS R21 R0 K55 ["state"]
  GETTABLEKS R20 R21 K57 ["windDirection"]
  SETTABLEKS R20 R19 K48 ["WindDirection"]
  GETTABLEKS R21 R0 K55 ["state"]
  GETTABLEKS R20 R21 K49 ["isChangingPitch"]
  SETTABLEKS R20 R19 K49 ["isChangingPitch"]
  GETTABLEKS R21 R0 K55 ["state"]
  GETTABLEKS R20 R21 K50 ["isChangingYaw"]
  SETTABLEKS R20 R19 K50 ["isChangingYaw"]
  GETTABLEKS R20 R0 K58 ["onYawStateRequested"]
  SETTABLEKS R20 R19 K51 ["yawStateRequested"]
  GETTABLEKS R20 R0 K59 ["onPitchStateRequested"]
  SETTABLEKS R20 R19 K52 ["pitchStateRequested"]
  GETTABLEKS R20 R0 K60 ["onSpeedStateRequested"]
  SETTABLEKS R20 R19 K53 ["speedStateRequested"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["WindspeedDisplay"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K11 ["ViewportFrame"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Screengui"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["WindControl"]
  GETUPVAL R5 4
  CALL R3 2 -1
  RETURN R3 -1

PROTO_20:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["mounted"]
  NAMECALL R1 R0 K1 ["loadWindControl"]
  CALL R1 1 0
  NAMECALL R1 R0 K2 ["loadPosition"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  NAMECALL R1 R0 K0 ["unloadWindControl"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["clampAndSavePosition"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["InsertService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K14 ["Style"]
  GETTABLEKS R6 R7 K15 ["Stylizer"]
  GETTABLEKS R7 R5 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R9 R5 K18 ["UI"]
  GETTABLEKS R10 R9 K19 ["Pane"]
  GETIMPORT R11 K9 [require]
  GETIMPORT R14 K6 [script]
  GETTABLEKS R13 R14 K7 ["Parent"]
  GETTABLEKS R12 R13 K20 ["Windhose"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETIMPORT R15 K6 [script]
  GETTABLEKS R14 R15 K7 ["Parent"]
  GETTABLEKS R13 R14 K21 ["WindspeedDisplay"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K22 ["PureComponent"]
  LOADK R15 K23 ["MainGui"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K26 ["init"]
  DUPCLOSURE R14 K27 [PROTO_8]
  SETTABLEKS R14 R13 K28 ["loadPosition"]
  DUPCLOSURE R14 K29 [PROTO_10]
  SETTABLEKS R14 R13 K30 ["clampAndSavePosition"]
  DUPCLOSURE R14 K31 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K32 ["loadWindControl"]
  DUPCLOSURE R14 K33 [PROTO_14]
  SETTABLEKS R14 R13 K34 ["unloadWindControl"]
  DUPCLOSURE R14 K35 [PROTO_19]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K36 ["render"]
  DUPCLOSURE R14 K37 [PROTO_20]
  SETTABLEKS R14 R13 K38 ["didMount"]
  DUPCLOSURE R14 K39 [PROTO_21]
  SETTABLEKS R14 R13 K40 ["willUnmount"]
  MOVE R14 R8
  DUPTABLE R15 K42 [{"Plugin", "Stylizer"}]
  GETTABLEKS R16 R7 K41 ["Plugin"]
  SETTABLEKS R16 R15 K41 ["Plugin"]
  SETTABLEKS R6 R15 K15 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
