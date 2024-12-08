PROTO_0:
  GETUPVAL R0 0
  JUMPIF R0 [+17]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Localization"]
  GETTABLEKS R0 R1 K1 ["new"]
  DUPTABLE R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K2 ["stringResourceTable"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["translationResourceTable"]
  LOADK R2 K6 ["ControlsEmulator"]
  SETTABLEKS R2 R1 K4 ["pluginName"]
  CALL R0 1 1
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R1 K1 [pcall]
  DUPCLOSURE R2 K2 [PROTO_1]
  CAPTURE UPVAL U0
  CALL R1 1 2
  JUMPIF R1 [+5]
  GETIMPORT R3 K4 [warn]
  LOADK R4 K5 ["ControllersEmulator: Failed to get currently emulated device: "]
  MOVE R5 R2
  CALL R3 2 0
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K6 ["platform"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R2 K7 ["deviceId"]
  JUMP [+1]
  LOADNIL R5
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["callbacksRef"]
  JUMPIFNOT R4 [+36]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["callbacksRef"]
  GETTABLEKS R4 R5 K9 ["current"]
  JUMPIFNOT R4 [+30]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["callbacksRef"]
  GETTABLEKS R5 R6 K9 ["current"]
  GETTABLEKS R4 R5 K10 ["changeEmulatedDevice"]
  JUMPIFNOT R4 [+22]
  GETUPVAL R4 3
  DUPTABLE R6 K12 [{"enabled"}]
  MOVE R7 R0
  JUMPIF R7 [+4]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["enabled"]
  NAMECALL R4 R4 K13 ["setState"]
  CALL R4 2 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["callbacksRef"]
  GETTABLEKS R5 R6 K9 ["current"]
  GETTABLEKS R4 R5 K10 ["changeEmulatedDevice"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"activeVRUserCFrames"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  GETTABLEKS R3 R0 K0 ["activeVRUserCFrames"]
  NEWTABLE R4 1 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  SETTABLE R6 R4 R5
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["activeVRUserCFrames"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K0 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["callbacksRef"]
  JUMPIFNOT R2 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["callbacksRef"]
  GETTABLEKS R2 R3 K2 ["current"]
  JUMPIFNOT R2 [+18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["callbacksRef"]
  GETTABLEKS R3 R4 K2 ["current"]
  GETTABLEKS R2 R3 K3 ["setVRUserCFrameActive"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["callbacksRef"]
  GETTABLEKS R3 R4 K2 ["current"]
  GETTABLEKS R2 R3 K3 ["setVRUserCFrameActive"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["callbacksRef"]
  JUMPIFNOT R1 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["callbacksRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["callbacksRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["DEPRECATED_setVRActiveUserCFrame"]
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"DEPRECATED_vrActiveUserCFrame"}]
  SETTABLEKS R0 R3 K3 ["DEPRECATED_vrActiveUserCFrame"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["callbacksRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["DEPRECATED_setVRActiveUserCFrame"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["DEPRECATED_VRActiveUserCFrameChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["connVRActiveUserCFrameChanged"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connVRActiveUserCFrameChanged"]
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["VREmulatorFullRelease"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["VRUserCFrameChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["connVRActiveUserCFrameChanged"]
  RETURN R0 0
  GETIMPORT R0 K5 [pcall]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["platform"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K1 ["deviceId"]
  JUMP [+1]
  LOADNIL R3
  CALL R1 2 1
  GETUPVAL R2 2
  DUPTABLE R4 K3 [{"enabled"}]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["enabled"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["callbacksRef"]
  JUMPIFNOT R2 [+23]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["callbacksRef"]
  GETTABLEKS R2 R3 K6 ["current"]
  JUMPIFNOT R2 [+17]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["callbacksRef"]
  GETTABLEKS R3 R4 K6 ["current"]
  GETTABLEKS R2 R3 K7 ["changeEmulatedDevice"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["callbacksRef"]
  GETTABLEKS R3 R4 K6 ["current"]
  GETTABLEKS R2 R3 K7 ["changeEmulatedDevice"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["EmulatedDeviceChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["connEmulatedDeviceChanged"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connEmulatedDeviceChanged"]
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 0
  GETIMPORT R0 K2 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["enabled"]
  NOT R1 R2
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["updateEmulatedDevice"]
  LOADB R3 1
  CALL R2 1 0
  DUPTABLE R2 K2 [{"enabled"}]
  SETTABLEKS R1 R2 K0 ["enabled"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["gamepadId"]
  NAMECALL R0 R0 K2 ["DisconnectGamepadAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETIMPORT R0 K5 [coroutine.wrap]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  CALL R0 1 1
  CALL R0 0 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["updateEmulatedDevice"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["updateEmulatedDevice"]
  GETTABLEKS R2 R0 K2 ["Enabled"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R1 K1 [{"activeInputs"}]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["activeInputs"]
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R2 4 1
  SETTABLEKS R2 R1 K0 ["activeInputs"]
  RETURN R1 1

PROTO_19:
  GETUPVAL R4 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R4 R4 K0 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["isVRConnected"]
  NAMECALL R0 R0 K3 ["SetVREmulationEnabledAsync"]
  CALL R0 2 0
  GETIMPORT R0 K5 [pairs]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R1 R3 K6 ["activeVRUserCFrames"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETUPVAL R5 0
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R5 K7 ["SetVRUserCFrameActiveAsync"]
  CALL R5 3 0
  FORGLOOP R0 2 [-7]
  RETURN R0 0

PROTO_21:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["isVRConnected"]
  NAMECALL R0 R0 K3 ["SetVREmulationEnabledAsync"]
  CALL R0 2 0
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K4 ["DEPRECATED_vrActiveUserCFrame"]
  NAMECALL R0 R0 K5 ["DEPRECATED_SetVRActiveUserCFrameAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_23:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  NAMECALL R0 R0 K2 ["SetGamepadEmulationEnabledAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_25:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["EmulatedGamepadEvent"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  GETUPVAL R0 3
  CALL R0 0 1
  JUMPIFNOT R0 [+23]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K6 ["VREmulatorFullRelease"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K7 ["VREmulatorStartUp"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  JUMP [+9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K7 ["VREmulatorStartUp"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K8 ["GamepadEmulatorStartUp"]
  NEWCLOSURE R2 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  GETUPVAL R0 0
  DUPTABLE R2 K10 [{"enabled"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["PluginLoaderContext"]
  GETTABLEKS R4 R5 K11 ["mainDockWidget"]
  GETTABLEKS R3 R4 K12 ["Enabled"]
  SETTABLEKS R3 R2 K9 ["enabled"]
  NAMECALL R0 R0 K13 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K14 ["updateEmulatedDevice"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["PluginLoaderContext"]
  GETTABLEKS R2 R3 K11 ["mainDockWidget"]
  GETTABLEKS R1 R2 K12 ["Enabled"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K15 ["connectToEmulatedDeviceChange"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K16 ["connectToVRActiveUserCFrameChanged"]
  CALL R0 0 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connEmulatedDeviceChanged"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connEmulatedDeviceChanged"]
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["connEmulatedDeviceChanged"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["connVRActiveUserCFrameChanged"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["connVRActiveUserCFrameChanged"]
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["connVRActiveUserCFrameChanged"]
  RETURN R0 0

PROTO_28:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_29:
  DUPTABLE R2 K6 [{"enabled", "wrapperRef", "activeInputs", "isVRConnected", "DEPRECATED_vrActiveUserCFrame", "activeVRUserCFrames"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["wrapperRef"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["activeInputs"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isVRConnected"]
  GETIMPORT R3 K10 [Enum.UserCFrame.Head]
  SETTABLEKS R3 R2 K4 ["DEPRECATED_vrActiveUserCFrame"]
  NEWTABLE R3 4 0
  GETIMPORT R4 K10 [Enum.UserCFrame.Head]
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETIMPORT R4 K12 [Enum.UserCFrame.LeftHand]
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETIMPORT R4 K14 [Enum.UserCFrame.RightHand]
  LOADB R5 1
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K5 ["activeVRUserCFrames"]
  SETTABLEKS R2 R0 K15 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K16 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K17 ["callbacksRef"]
  LOADNIL R2
  SETTABLEKS R2 R0 K18 ["connEmulatedDeviceChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["updateEmulatedDevice"]
  LOADNIL R2
  SETTABLEKS R2 R0 K20 ["connVRActiveUserCFrameChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K21 ["connectToVRActiveUserCFrameChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K22 ["connectToEmulatedDeviceChange"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K23 ["toggleEnabled"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K24 ["onClose"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K25 ["onRestore"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K26 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K27 ["onDockWidgetCreated"]
  GETTABLEKS R4 R0 K28 ["props"]
  GETTABLEKS R3 R4 K29 ["Plugin"]
  GETTABLEKS R2 R3 K30 ["Unloading"]
  NEWCLOSURE R4 P8
  CAPTURE VAL R0
  NAMECALL R2 R2 K31 ["Connect"]
  CALL R2 2 0
  GETGLOBAL R2 K32 ["getLocalization"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K33 ["localization"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K34 ["Analytics"]
  GETTABLEKS R2 R3 K35 ["new"]
  DUPCLOSURE R3 K36 [PROTO_28]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K37 ["analytics"]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K35 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K38 ["DEPRECATED_stylizer"]
  GETUPVAL R2 9
  GETTABLEKS R3 R1 K29 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K39 ["design"]
  RETURN R0 0

PROTO_30:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_31:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  LOADK R5 K2 ["PlaceManager"]
  NAMECALL R3 R2 K3 ["GetPluginComponent"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K4 ["PlaceDocPanelClosed"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  NAMECALL R0 R0 K2 ["SetGamepadEmulationEnabledAsync"]
  CALL R0 2 0
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K3 ["isVRConnected"]
  NAMECALL R0 R0 K4 ["SetVREmulationEnabledAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_33:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  GETIMPORT R1 K7 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R1 1 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["callbacksRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETTABLEKS R0 R1 K2 ["setIsMappingsDialogOpen"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_35:
  GETIMPORT R0 K2 [task.delay]
  LOADN R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CALL R0 2 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setIsMappingsDialogOpen"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["isMappingsDialogOpen"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["callbacksRef"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["current"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+40]
  GETTABLEKS R2 R0 K2 ["gamepadId"]
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"gamepadId"}]
  SETTABLEKS R2 R5 K2 ["gamepadId"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["VREmulatorFullRelease"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"isVRConnected", "activeVRUserCFrames"}]
  GETTABLEKS R6 R0 K6 ["isVRConnected"]
  SETTABLEKS R6 R5 K6 ["isVRConnected"]
  GETTABLEKS R6 R0 K7 ["activeVRUserCFrames"]
  SETTABLEKS R6 R5 K7 ["activeVRUserCFrames"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  JUMP [+13]
  GETUPVAL R3 0
  DUPTABLE R5 K10 [{"isVRConnected", "DEPRECATED_vrActiveUserCFrame"}]
  GETTABLEKS R6 R0 K6 ["isVRConnected"]
  SETTABLEKS R6 R5 K6 ["isVRConnected"]
  GETTABLEKS R6 R0 K9 ["DEPRECATED_vrActiveUserCFrame"]
  SETTABLEKS R6 R5 K9 ["DEPRECATED_vrActiveUserCFrame"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["provide"]
  NEWTABLE R3 0 5
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K12 ["new"]
  GETUPVAL R5 6
  CALL R4 1 1
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K12 ["new"]
  GETUPVAL R6 6
  NAMECALL R6 R6 K13 ["getMouse"]
  CALL R6 1 -1
  CALL R5 -1 1
  GETUPVAL R6 8
  CALL R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["localization"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["analytics"]
  SETLIST R3 R4 5 [1]
  DUPTABLE R4 K18 [{"MainWidget", "MappingsDialog"}]
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K19 ["createElement"]
  GETUPVAL R6 10
  NEWTABLE R7 16 0
  LOADK R8 K20 ["ControlsEmulator"]
  SETTABLEKS R8 R7 K21 ["Id"]
  GETUPVAL R9 11
  GETTABLEKS R8 R9 K22 ["enabled"]
  SETTABLEKS R8 R7 K23 ["Enabled"]
  GETUPVAL R8 12
  LOADK R10 K16 ["MainWidget"]
  LOADK R11 K24 ["WidgetTitle"]
  NAMECALL R8 R8 K25 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K26 ["Title"]
  GETUPVAL R8 12
  LOADK R10 K27 ["Plugin"]
  LOADK R11 K28 ["Name"]
  NAMECALL R8 R8 K25 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K28 ["Name"]
  GETIMPORT R8 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K30 ["ZIndexBehavior"]
  GETIMPORT R8 K35 [Enum.InitialDockState.Bottom]
  SETTABLEKS R8 R7 K33 ["InitialDockState"]
  GETIMPORT R8 K37 [Vector2.new]
  LOADN R9 128
  LOADN R10 224
  CALL R8 2 1
  SETTABLEKS R8 R7 K38 ["Size"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K39 ["onClose"]
  SETTABLEKS R8 R7 K40 ["OnClose"]
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K41 ["PluginLoaderContext"]
  GETTABLEKS R8 R9 K42 ["mainDockWidget"]
  SETTABLEKS R8 R7 K43 ["Widget"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K44 ["onDockWidgetCreated"]
  SETTABLEKS R8 R7 K45 ["OnWidgetCreated"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K46 ["Change"]
  GETTABLEKS R8 R9 K23 ["Enabled"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K47 ["onWidgetEnabledChanged"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K50 [{"LayoutContainer", "StyleLink"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K51 ["state"]
  GETTABLEKS R10 R11 K22 ["enabled"]
  JUMPIFNOT R10 [+269]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K19 ["createElement"]
  LOADK R10 K52 ["Frame"]
  NEWTABLE R11 1 0
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K53 ["Tag"]
  LOADK R13 K54 ["X-Fill X-Column X-Center"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K58 [{"WidgetHeader", "Divider", "ScrollableBlueprintContainer"}]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K19 ["createElement"]
  GETUPVAL R14 14
  NEWTABLE R15 4 0
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K53 ["Tag"]
  LOADK R17 K59 ["Component-WidgetHeader"]
  SETTABLE R17 R15 R16
  GETUPVAL R16 15
  NAMECALL R16 R16 K60 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K61 ["LayoutOrder"]
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 16
  NEWTABLE R18 8 0
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K53 ["Tag"]
  LOADK R20 K62 ["DeviceSelectorDropdown"]
  SETTABLE R20 R18 R19
  GETUPVAL R19 15
  NAMECALL R19 R19 K60 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K61 ["LayoutOrder"]
  GETIMPORT R19 K64 [UDim2.new]
  LOADN R20 0
  LOADN R21 250
  LOADN R22 0
  LOADN R23 40
  CALL R19 4 1
  SETTABLEKS R19 R18 K38 ["Size"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K65 ["connectGamepadId"]
  SETTABLEKS R19 R18 K66 ["onChanged"]
  GETUPVAL R20 2
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R0 K67 ["availableDeviceIds"]
  JUMP [+1]
  GETUPVAL R19 17
  SETTABLEKS R19 R18 K68 ["deviceIds"]
  GETTABLEKS R19 R0 K2 ["gamepadId"]
  SETTABLEKS R19 R18 K69 ["selectedGamepadId"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K70 ["leftContents"]
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K19 ["createElement"]
  LOADK R17 K71 ["TextButton"]
  NEWTABLE R18 4 0
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K53 ["Tag"]
  LOADK R20 K72 ["EditMappingsButton HeaderButton Secondary"]
  SETTABLE R20 R18 R19
  GETUPVAL R19 15
  NAMECALL R19 R19 K60 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K61 ["LayoutOrder"]
  GETUPVAL R19 12
  LOADK R21 K16 ["MainWidget"]
  LOADK R22 K73 ["EditMappingsButtonLabel"]
  NAMECALL R19 R19 K25 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K74 ["Text"]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K75 ["Event"]
  GETTABLEKS R19 R20 K76 ["Activated"]
  NEWCLOSURE R20 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K77 ["rightContents"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["WidgetHeader"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K19 ["createElement"]
  LOADK R14 K52 ["Frame"]
  NEWTABLE R15 2 0
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K53 ["Tag"]
  LOADK R17 K78 ["CX-Divider"]
  SETTABLE R17 R15 R16
  GETUPVAL R16 15
  NAMECALL R16 R16 K60 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K61 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["Divider"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K19 ["createElement"]
  LOADK R14 K79 ["ScrollingFrame"]
  NEWTABLE R15 2 0
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K53 ["Tag"]
  GETTABLEKS R18 R0 K6 ["isVRConnected"]
  JUMPIFNOT R18 [+2]
  LOADK R17 K80 ["Includes-VR-Footer"]
  JUMP [+1]
  LOADNIL R17
  SETTABLE R17 R15 R16
  GETUPVAL R16 15
  NAMECALL R16 R16 K60 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K61 ["LayoutOrder"]
  DUPTABLE R16 K82 [{"InputTrackingWrapper"}]
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K19 ["createElement"]
  GETUPVAL R18 18
  NEWTABLE R19 0 0
  DUPTABLE R20 K85 [{"KeyboardInputsForwarder", "GamepadAndVRLayoutContainer"}]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K19 ["createElement"]
  GETUPVAL R22 19
  CALL R21 1 1
  SETTABLEKS R21 R20 K83 ["KeyboardInputsForwarder"]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K19 ["createElement"]
  LOADK R22 K52 ["Frame"]
  NEWTABLE R23 1 0
  GETUPVAL R25 9
  GETTABLEKS R24 R25 K53 ["Tag"]
  LOADK R25 K86 ["CX-Invisible X-Fill"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K89 [{"DeviceBlueprint", "VRControls"}]
  GETTABLEKS R26 R0 K2 ["gamepadId"]
  GETUPVAL R28 20
  GETTABLEKS R27 R28 K90 ["NO_CONNECTED_GAMEPAD_ID"]
  JUMPIFEQ R26 R27 [+28]
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K19 ["createElement"]
  GETUPVAL R26 21
  DUPTABLE R27 K93 [{"LayoutOrder", "selectedGamepadId", "activeInputs", "displayMappings"}]
  GETUPVAL R28 15
  NAMECALL R28 R28 K60 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K61 ["LayoutOrder"]
  GETTABLEKS R28 R0 K2 ["gamepadId"]
  SETTABLEKS R28 R27 K69 ["selectedGamepadId"]
  GETUPVAL R30 0
  GETTABLEKS R29 R30 K51 ["state"]
  GETTABLEKS R28 R29 K91 ["activeInputs"]
  SETTABLEKS R28 R27 K91 ["activeInputs"]
  LOADB R28 1
  SETTABLEKS R28 R27 K92 ["displayMappings"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K87 ["DeviceBlueprint"]
  GETTABLEKS R26 R0 K6 ["isVRConnected"]
  JUMPIFNOT R26 [+30]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K5 ["VREmulatorFullRelease"]
  JUMPIFNOT R26 [+13]
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K19 ["createElement"]
  GETUPVAL R26 22
  DUPTABLE R27 K94 [{"LayoutOrder"}]
  GETUPVAL R28 15
  NAMECALL R28 R28 K60 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K61 ["LayoutOrder"]
  CALL R25 2 1
  JUMP [+14]
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K19 ["createElement"]
  GETUPVAL R26 23
  DUPTABLE R27 K94 [{"LayoutOrder"}]
  GETUPVAL R28 15
  NAMECALL R28 R28 K60 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K61 ["LayoutOrder"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K88 ["VRControls"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K84 ["GamepadAndVRLayoutContainer"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K81 ["InputTrackingWrapper"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K57 ["ScrollableBlueprintContainer"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K48 ["LayoutContainer"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K19 ["createElement"]
  LOADK R10 K49 ["StyleLink"]
  DUPTABLE R11 K96 [{"StyleSheet"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K97 ["design"]
  SETTABLEKS R12 R11 K95 ["StyleSheet"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K49 ["StyleLink"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K16 ["MainWidget"]
  GETTABLEKS R6 R0 K98 ["isMappingsDialogOpen"]
  JUMPIFNOT R6 [+83]
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K19 ["createElement"]
  GETUPVAL R6 24
  DUPTABLE R7 K103 [{"Id", "Enabled", "Title", "ZIndexBehavior", "Resizable", "ZIndex", "Modal", "Size", "MinSize", "OnClose"}]
  LOADK R8 K104 ["ControlsEmulatorMappings"]
  SETTABLEKS R8 R7 K21 ["Id"]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["Enabled"]
  LOADK R8 K105 ["Edit Mappings"]
  SETTABLEKS R8 R7 K26 ["Title"]
  GETIMPORT R8 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K30 ["ZIndexBehavior"]
  LOADB R8 1
  SETTABLEKS R8 R7 K99 ["Resizable"]
  LOADN R8 10
  SETTABLEKS R8 R7 K100 ["ZIndex"]
  LOADB R8 1
  SETTABLEKS R8 R7 K101 ["Modal"]
  GETIMPORT R8 K37 [Vector2.new]
  LOADN R9 88
  LOADN R10 108
  CALL R8 2 1
  SETTABLEKS R8 R7 K38 ["Size"]
  GETIMPORT R8 K37 [Vector2.new]
  LOADN R9 144
  LOADN R10 144
  CALL R8 2 1
  SETTABLEKS R8 R7 K102 ["MinSize"]
  SETTABLEKS R1 R7 K40 ["OnClose"]
  DUPTABLE R8 K106 [{"InputTrackingWrapper", "StyleLink"}]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K19 ["createElement"]
  GETUPVAL R10 18
  NEWTABLE R11 0 0
  DUPTABLE R12 K107 [{"KeyboardInputsForwarder", "MappingsDialog"}]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K19 ["createElement"]
  GETUPVAL R14 19
  CALL R13 1 1
  SETTABLEKS R13 R12 K83 ["KeyboardInputsForwarder"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K19 ["createElement"]
  GETUPVAL R14 25
  CALL R13 1 1
  SETTABLEKS R13 R12 K17 ["MappingsDialog"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K81 ["InputTrackingWrapper"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K19 ["createElement"]
  LOADK R10 K49 ["StyleLink"]
  DUPTABLE R11 K96 [{"StyleSheet"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K97 ["design"]
  SETTABLEKS R12 R11 K95 ["StyleSheet"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K49 ["StyleLink"]
  CALL R5 3 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K17 ["MappingsDialog"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_38:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Consumer"]
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  CAPTURE UPVAL U23
  CAPTURE UPVAL U24
  CAPTURE UPVAL U25
  CALL R1 3 -1
  RETURN R1 -1

PROTO_39:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R0 K3 ["localization"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Consumer"]
  LOADNIL R7
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CALL R5 3 -1
  RETURN R5 -1

PROTO_40:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"getLocalization"}]
  GETGLOBAL R4 K1 ["getLocalization"]
  SETTABLEKS R4 R3 K1 ["getLocalization"]
  DUPTABLE R4 K4 [{"MainPlugin"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  MOVE R7 R0
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["MainPlugin"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["DockWidget"]
  GETTABLEKS R6 R2 K10 ["UI"]
  GETTABLEKS R5 R6 K12 ["Dialog"]
  GETTABLEKS R7 R2 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["LayoutOrderIterator"]
  GETTABLEKS R7 R6 K15 ["new"]
  CALL R7 0 1
  GETTABLEKS R8 R2 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["Plugin"]
  GETTABLEKS R10 R8 K18 ["Mouse"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Resources"]
  GETTABLEKS R12 R13 K21 ["MakeTheme"]
  CALL R11 1 1
  GETTABLEKS R14 R2 K22 ["Style"]
  GETTABLEKS R13 R14 K23 ["Themes"]
  GETTABLEKS R12 R13 K24 ["StudioTheme"]
  GETTABLEKS R14 R2 K25 ["Styling"]
  GETTABLEKS R13 R14 K26 ["registerPluginStyles"]
  GETTABLEKS R15 R0 K19 ["Src"]
  GETTABLEKS R14 R15 K20 ["Resources"]
  GETTABLEKS R16 R14 K27 ["Localization"]
  GETTABLEKS R15 R16 K28 ["SourceStrings"]
  GETTABLEKS R17 R14 K27 ["Localization"]
  GETTABLEKS R16 R17 K29 ["LocalizedStrings"]
  GETTABLEKS R18 R0 K19 ["Src"]
  GETTABLEKS R17 R18 K30 ["Components"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K31 ["DeviceBlueprint"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R17 K32 ["DeviceDropdown"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R17 K33 ["WidgetHeader"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K19 ["Src"]
  GETTABLEKS R23 R24 K13 ["Util"]
  GETTABLEKS R22 R23 K34 ["Constants"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K19 ["Src"]
  GETTABLEKS R24 R25 K30 ["Components"]
  GETTABLEKS R23 R24 K35 ["RootContainerInputContextProvider"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K19 ["Src"]
  GETTABLEKS R25 R26 K30 ["Components"]
  GETTABLEKS R24 R25 K36 ["MappingsContextProvider"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K19 ["Src"]
  GETTABLEKS R26 R27 K13 ["Util"]
  GETTABLEKS R25 R26 K37 ["MappingsContext"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K19 ["Src"]
  GETTABLEKS R27 R28 K13 ["Util"]
  GETTABLEKS R26 R27 K38 ["MappingsActionsContext"]
  CALL R25 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K19 ["Src"]
  GETTABLEKS R29 R30 K13 ["Util"]
  GETTABLEKS R28 R29 K39 ["MockableProxyPluginComponents"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K40 ["StudioDeviceEmulator"]
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K19 ["Src"]
  GETTABLEKS R29 R30 K30 ["Components"]
  GETTABLEKS R28 R29 K41 ["MappingsDialog"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K19 ["Src"]
  GETTABLEKS R30 R31 K30 ["Components"]
  GETTABLEKS R29 R30 K42 ["KeyboardInputsForwarder"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R32 R0 K19 ["Src"]
  GETTABLEKS R31 R32 K13 ["Util"]
  GETTABLEKS R30 R31 K43 ["activeInputsReducer"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R33 R0 K19 ["Src"]
  GETTABLEKS R32 R33 K30 ["Components"]
  GETTABLEKS R31 R32 K44 ["DEPRECATED_VRControls"]
  CALL R30 1 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R34 R0 K19 ["Src"]
  GETTABLEKS R33 R34 K30 ["Components"]
  GETTABLEKS R32 R33 K45 ["VRControls"]
  CALL R31 1 1
  GETIMPORT R32 K5 [require]
  GETTABLEKS R35 R0 K19 ["Src"]
  GETTABLEKS R34 R35 K13 ["Util"]
  GETTABLEKS R33 R34 K46 ["devicePlatformEnumToControllerType"]
  CALL R32 1 1
  GETIMPORT R33 K5 [require]
  GETTABLEKS R36 R0 K47 ["Bin"]
  GETTABLEKS R35 R36 K48 ["Common"]
  GETTABLEKS R34 R35 K49 ["defineLuaFlags"]
  CALL R33 1 1
  GETTABLEKS R34 R33 K50 ["getFFlagEnableVRControllers"]
  GETIMPORT R35 K5 [require]
  GETTABLEKS R38 R0 K19 ["Src"]
  GETTABLEKS R37 R38 K13 ["Util"]
  GETTABLEKS R36 R37 K51 ["MockableEngineFeatures"]
  CALL R35 1 1
  GETTABLEKS R36 R21 K52 ["LISTED_DEVICE_IDS"]
  GETTABLEKS R37 R1 K53 ["PureComponent"]
  LOADK R39 K54 ["MainPlugin"]
  NAMECALL R37 R37 K55 ["extend"]
  CALL R37 2 1
  LOADNIL R38
  NEWCLOSURE R39 P0
  CAPTURE REF R38
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETGLOBAL R39 K56 ["getLocalization"]
  DUPCLOSURE R39 K57 [PROTO_29]
  CAPTURE VAL R1
  CAPTURE VAL R26
  CAPTURE VAL R32
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R3
  CAPTURE VAL R29
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R39 R37 K58 ["init"]
  DUPCLOSURE R39 K59 [PROTO_31]
  SETTABLEKS R39 R37 K60 ["didMount"]
  DUPCLOSURE R39 K61 [PROTO_33]
  CAPTURE VAL R26
  CAPTURE VAL R34
  SETTABLEKS R39 R37 K62 ["didUpdate"]
  DUPCLOSURE R39 K63 [PROTO_39]
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R36
  CAPTURE VAL R22
  CAPTURE VAL R28
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R31
  CAPTURE VAL R30
  CAPTURE VAL R5
  CAPTURE VAL R27
  SETTABLEKS R39 R37 K64 ["render"]
  DUPCLOSURE R39 K65 [PROTO_40]
  CAPTURE VAL R1
  CAPTURE VAL R23
  CAPTURE VAL R37
  CLOSEUPVALS R38
  RETURN R39 1
