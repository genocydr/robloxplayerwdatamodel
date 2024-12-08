PROTO_0:
  GETIMPORT R0 K1 [tick]
  CALL R0 0 1
  GETUPVAL R1 0
  JUMPIFNOTLE R1 R0 [+6]
  GETUPVAL R1 1
  NAMECALL R1 R1 K2 ["Cancel"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 2
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["Parent"]
  GETIMPORT R5 K1 [tick]
  CALL R5 0 1
  GETUPVAL R6 4
  SUB R4 R5 R6
  MULK R3 R4 K5 [2.5]
  ADDK R2 R3 K4 [1.5707963267949]
  FASTCALL1 MATH_SIN R2 [+2]
  GETIMPORT R1 K8 [math.sin]
  CALL R1 1 1
  ADDK R2 R1 K10 [1]
  DIVK R1 R2 K9 [2]
  GETUPVAL R2 2
  MULK R4 R1 K11 [0.5]
  ADDK R3 R4 K11 [0.5]
  SETTABLEKS R3 R2 K12 ["ImageTransparency"]
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  ADD R3 R2 R1
  GETUPVAL R4 0
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 0
  NAMECALL R4 R4 K2 ["disconnect"]
  CALL R4 1 0
  LOADNIL R4
  SETUPVAL R4 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["RenderStepped"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  NAMECALL R4 R4 K4 ["connect"]
  CALL R4 2 1
  SETUPVAL R4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["Parent"]
  RETURN R0 0

PROTO_3:
  NEWTABLE R0 2 0
  LOADNIL R1
  NEWCLOSURE R2 P0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K0 ["Init"]
  NEWCLOSURE R2 P1
  CAPTURE REF R1
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K1 ["Cancel"]
  CLOSEUPVALS R1
  RETURN R0 1

PROTO_4:
  NAMECALL R2 R0 K0 ["CancelNotification"]
  CALL R2 1 0
  GETUPVAL R2 0
  MOVE R4 R1
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K1 ["DEFAULT_DURATION"]
  NAMECALL R2 R2 K2 ["Init"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Cancel"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K5 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K6 ["RobloxGui"]
  NAMECALL R4 R1 K7 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R3 K10 ["Workspace"]
  GETTABLEKS R8 R9 K11 ["Packages"]
  GETTABLEKS R7 R8 K12 ["AppCommonLib"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["Create"]
  MOVE R6 R5
  LOADK R7 K14 ["ImageLabel"]
  CALL R6 1 1
  DUPTABLE R7 K22 [{"Name", "Position", "Size", "BackgroundTransparency", "Image", "ImageTransparency", "BorderSizePixel"}]
  LOADK R8 K23 ["NotificationObject"]
  SETTABLEKS R8 R7 K15 ["Name"]
  GETIMPORT R8 K26 [UDim2.new]
  LOADK R9 K27 [0.5]
  LOADN R10 164
  LOADN R11 1
  LOADN R12 211
  CALL R8 4 1
  SETTABLEKS R8 R7 K16 ["Position"]
  GETIMPORT R8 K26 [UDim2.new]
  LOADN R9 0
  LOADN R10 164
  LOADN R11 0
  LOADN R12 232
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K18 ["BackgroundTransparency"]
  LOADK R8 K28 ["rbxasset://textures/ui/VR/notifier_glow.png"]
  SETTABLEKS R8 R7 K19 ["Image"]
  LOADN R8 0
  SETTABLEKS R8 R7 K20 ["ImageTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K21 ["BorderSizePixel"]
  CALL R6 1 1
  LOADN R7 5
  SETTABLEKS R7 R0 K29 ["DEFAULT_DURATION"]
  DUPCLOSURE R7 K30 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  MOVE R8 R7
  CALL R8 0 1
  DUPCLOSURE R9 K31 [PROTO_4]
  CAPTURE VAL R8
  SETTABLEKS R9 R0 K32 ["BeginNotification"]
  DUPCLOSURE R9 K33 [PROTO_5]
  CAPTURE VAL R8
  SETTABLEKS R9 R0 K34 ["CancelNotification"]
  RETURN R0 1