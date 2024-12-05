PROTO_0:
  GETTABLE R2 R1 R0
  JUMPIFNOT R2 [+1]
  RETURN R1 1
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getDestination"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+10]
  SETTABLE R3 R1 R2
  MOVE R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getDestination"]
  MOVE R5 R2
  CALL R4 1 1
  MOVE R3 R4
  JUMPBACK [-11]
  RETURN R1 1

PROTO_1:
  LENGTH R2 R0
  JUMPIFEQKN R2 K0 [0] [+4]
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K0 [0] [+3]
  LOADNIL R2
  RETURN R2 1
  LENGTH R3 R0
  GETTABLE R2 R0 R3
  GETTABLEN R3 R1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["connectByWire"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Parent"]
  LOADNIL R2
  LOADK R5 K1 ["EchoSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+28]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K6 ["AudioEcho"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K7 ["DryLevel"]
  SETTABLEKS R4 R3 K7 ["DryLevel"]
  GETTABLEKS R4 R0 K8 ["WetLevel"]
  SETTABLEKS R4 R3 K8 ["WetLevel"]
  GETTABLEKS R4 R0 K9 ["Feedback"]
  SETTABLEKS R4 R3 K9 ["Feedback"]
  GETTABLEKS R4 R0 K10 ["Delay"]
  SETTABLEKS R4 R3 K11 ["DelayTime"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+242]
  LOADK R5 K14 ["ChorusSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+24]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K15 ["AudioChorus"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K16 ["Mix"]
  SETTABLEKS R4 R3 K16 ["Mix"]
  GETTABLEKS R4 R0 K17 ["Rate"]
  SETTABLEKS R4 R3 K17 ["Rate"]
  GETTABLEKS R4 R0 K18 ["Depth"]
  SETTABLEKS R4 R3 K18 ["Depth"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+213]
  LOADK R5 K19 ["FlangeSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+24]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K20 ["AudioFlanger"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K16 ["Mix"]
  SETTABLEKS R4 R3 K16 ["Mix"]
  GETTABLEKS R4 R0 K17 ["Rate"]
  SETTABLEKS R4 R3 K17 ["Rate"]
  GETTABLEKS R4 R0 K18 ["Depth"]
  SETTABLEKS R4 R3 K18 ["Depth"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+184]
  LOADK R5 K21 ["ReverbSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+32]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K22 ["AudioReverb"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K23 ["Diffusion"]
  SETTABLEKS R4 R3 K23 ["Diffusion"]
  GETTABLEKS R4 R0 K24 ["Density"]
  SETTABLEKS R4 R3 K24 ["Density"]
  GETTABLEKS R4 R0 K8 ["WetLevel"]
  SETTABLEKS R4 R3 K8 ["WetLevel"]
  GETTABLEKS R4 R0 K7 ["DryLevel"]
  SETTABLEKS R4 R3 K7 ["DryLevel"]
  GETTABLEKS R4 R0 K25 ["DecayTime"]
  SETTABLEKS R4 R3 K25 ["DecayTime"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+147]
  LOADK R5 K26 ["EqualizerSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+24]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K27 ["AudioEqualizer"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K28 ["LowGain"]
  SETTABLEKS R4 R3 K28 ["LowGain"]
  GETTABLEKS R4 R0 K29 ["MidGain"]
  SETTABLEKS R4 R3 K29 ["MidGain"]
  GETTABLEKS R4 R0 K30 ["HighGain"]
  SETTABLEKS R4 R3 K30 ["HighGain"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+118]
  LOADK R5 K31 ["CompressorSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+32]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K32 ["AudioCompressor"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K33 ["Threshold"]
  SETTABLEKS R4 R3 K33 ["Threshold"]
  GETTABLEKS R4 R0 K34 ["Ratio"]
  SETTABLEKS R4 R3 K34 ["Ratio"]
  GETTABLEKS R4 R0 K35 ["Attack"]
  SETTABLEKS R4 R3 K35 ["Attack"]
  GETTABLEKS R4 R0 K36 ["Release"]
  SETTABLEKS R4 R3 K36 ["Release"]
  GETTABLEKS R4 R0 K37 ["GainMakeup"]
  SETTABLEKS R4 R3 K38 ["MakeupGain"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+81]
  LOADK R5 K39 ["DistortionSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+16]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K40 ["AudioDistortion"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K41 ["Level"]
  SETTABLEKS R4 R3 K41 ["Level"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+60]
  LOADK R5 K42 ["PitchShiftSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+16]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K43 ["AudioPitchShifter"]
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEKS R4 R0 K44 ["Octave"]
  SETTABLEKS R4 R3 K45 ["Pitch"]
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  MOVE R2 R3
  JUMP [+39]
  LOADK R5 K46 ["TremoloSoundEffect"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+34]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K47 ["AudioFader"]
  MOVE R5 R1
  CALL R3 2 1
  LOADK R6 K48 ["Duty"]
  GETTABLEKS R7 R0 K48 ["Duty"]
  NAMECALL R4 R3 K49 ["SetAttribute"]
  CALL R4 3 0
  LOADK R6 K18 ["Depth"]
  GETTABLEKS R7 R0 K18 ["Depth"]
  NAMECALL R4 R3 K49 ["SetAttribute"]
  CALL R4 3 0
  LOADK R6 K50 ["Frequency"]
  GETTABLEKS R7 R0 K50 ["Frequency"]
  NAMECALL R4 R3 K49 ["SetAttribute"]
  CALL R4 3 0
  GETTABLEKS R5 R0 K12 ["Enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K13 ["Bypass"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K51 ["makeTremoloScript"]
  MOVE R5 R3
  CALL R4 1 0
  MOVE R2 R3
  NEWTABLE R3 0 1
  MOVE R4 R2
  SETLIST R3 R4 1 [1]
  RETURN R3 1

PROTO_3:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFEQKNIL R2 [+9]
  LOADK R5 K1 ["SoundGroup"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R2 K0 ["Parent"]
  JUMPBACK [-10]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K6 ["AudioFader"]
  MOVE R5 R2
  CALL R3 2 1
  GETTABLEKS R4 R0 K7 ["Volume"]
  SETTABLEKS R4 R3 K7 ["Volume"]
  GETTABLEKS R4 R0 K8 ["Name"]
  JUMPIFEQKS R4 K1 ["SoundGroup"] [+5]
  GETTABLEKS R4 R0 K8 ["Name"]
  SETTABLEKS R4 R3 K8 ["Name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["getEffects"]
  MOVE R5 R0
  CALL R4 1 1
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 1
  MOVE R11 R9
  CALL R10 1 1
  LENGTH R11 R1
  JUMPIFEQKN R11 K10 [0] [+14]
  LENGTH R11 R10
  JUMPIFNOTEQKN R11 K10 [0] [+2]
  JUMP [+9]
  LENGTH R12 R1
  GETTABLE R11 R1 R12
  GETTABLEN R12 R10 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["connectByWire"]
  MOVE R14 R11
  MOVE R15 R12
  CALL R13 2 1
  MOVE R11 R10
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  SETTABLEKS R3 R15 K0 ["Parent"]
  FASTCALL2 TABLE_INSERT R1 R15 [+5]
  MOVE R17 R1
  MOVE R18 R15
  GETIMPORT R16 K14 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-10]
  FORGLOOP R5 2 [-35]
  NEWTABLE R5 0 1
  MOVE R6 R3
  SETLIST R5 R6 1 [1]
  LENGTH R6 R1
  JUMPIFEQKN R6 K10 [0] [+14]
  LENGTH R6 R5
  JUMPIFNOTEQKN R6 K10 [0] [+2]
  JUMP [+9]
  LENGTH R7 R1
  GETTABLE R6 R1 R7
  GETTABLEN R7 R5 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["connectByWire"]
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 1
  FASTCALL2 TABLE_INSERT R1 R3 [+5]
  MOVE R6 R1
  MOVE R7 R3
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["Parent"]
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["AudioFader"]
  MOVE R5 R2
  CALL R3 2 1
  GETIMPORT R4 K3 [Instance.new]
  LOADK R5 K5 ["AudioPlayer"]
  MOVE R6 R3
  CALL R4 2 1
  FASTCALL2 TABLE_INSERT R1 R4 [+5]
  MOVE R6 R1
  MOVE R7 R4
  GETIMPORT R5 K8 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R0 K9 ["SoundId"]
  SETTABLEKS R5 R4 K10 ["AssetId"]
  GETTABLEKS R5 R0 K11 ["PlaybackSpeed"]
  SETTABLEKS R5 R4 K11 ["PlaybackSpeed"]
  GETTABLEKS R5 R0 K12 ["Looped"]
  SETTABLEKS R5 R4 K13 ["Looping"]
  GETTABLEKS R5 R0 K14 ["TimePosition"]
  SETTABLEKS R5 R4 K14 ["TimePosition"]
  GETTABLEKS R5 R0 K15 ["Name"]
  JUMPIFEQKS R5 K16 ["Sound"] [+11]
  GETTABLEKS R5 R0 K15 ["Name"]
  SETTABLEKS R5 R4 K15 ["Name"]
  GETTABLEKS R6 R0 K15 ["Name"]
  LOADK R7 K17 [" Fader"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R3 K15 ["Name"]
  GETTABLEKS R5 R0 K18 ["Playing"]
  JUMPIFNOT R5 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["makeAutoplayScript"]
  MOVE R6 R4
  CALL R5 1 0
  GETTABLEKS R5 R0 K20 ["PlaybackRegionsEnabled"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K21 ["PlaybackRegion"]
  SETTABLEKS R5 R4 K21 ["PlaybackRegion"]
  GETTABLEKS R5 R0 K22 ["LoopRegion"]
  SETTABLEKS R5 R4 K22 ["LoopRegion"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K23 ["getEffects"]
  MOVE R6 R0
  CALL R5 1 1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R11 1
  MOVE R12 R10
  CALL R11 1 1
  LENGTH R12 R1
  JUMPIFEQKN R12 K24 [0] [+14]
  LENGTH R12 R11
  JUMPIFNOTEQKN R12 K24 [0] [+2]
  JUMP [+9]
  LENGTH R13 R1
  GETTABLE R12 R1 R13
  GETTABLEN R13 R11 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K25 ["connectByWire"]
  MOVE R15 R12
  MOVE R16 R13
  CALL R14 2 1
  MOVE R12 R11
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  SETTABLEKS R3 R16 K0 ["Parent"]
  FASTCALL2 TABLE_INSERT R1 R16 [+5]
  MOVE R18 R1
  MOVE R19 R16
  GETIMPORT R17 K8 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 2 [-10]
  FORGLOOP R6 2 [-35]
  GETTABLEKS R6 R0 K26 ["Volume"]
  SETTABLEKS R6 R3 K26 ["Volume"]
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  LENGTH R7 R1
  JUMPIFEQKN R7 K24 [0] [+14]
  LENGTH R7 R6
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  JUMP [+9]
  LENGTH R8 R1
  GETTABLE R7 R1 R8
  GETTABLEN R8 R6 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K25 ["connectByWire"]
  MOVE R10 R7
  MOVE R11 R8
  CALL R9 2 1
  FASTCALL2 TABLE_INSERT R1 R3 [+5]
  MOVE R7 R1
  MOVE R8 R3
  GETIMPORT R6 K8 [table.insert]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K27 ["is3d"]
  MOVE R7 R0
  CALL R6 1 1
  JUMPIFNOT R6 [+120]
  GETIMPORT R6 K3 [Instance.new]
  LOADK R7 K28 ["AudioEmitter"]
  MOVE R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R4 K0 ["Parent"]
  SETTABLEKS R6 R3 K0 ["Parent"]
  GETTABLEKS R7 R0 K15 ["Name"]
  JUMPIFEQKS R7 K16 ["Sound"] [+7]
  GETTABLEKS R8 R0 K15 ["Name"]
  LOADK R9 K29 [" Emitter"]
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K15 ["Name"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K30 ["serializeRolloffMode"]
  GETTABLEKS R10 R0 K31 ["RollOffMode"]
  GETTABLEKS R11 R0 K32 ["RollOffMinDistance"]
  GETTABLEKS R12 R0 K33 ["RollOffMaxDistance"]
  CALL R9 3 1
  NAMECALL R7 R6 K34 ["SetDistanceAttenuation"]
  CALL R7 2 0
  NEWTABLE R7 0 1
  MOVE R8 R6
  SETLIST R7 R8 1 [1]
  LENGTH R8 R1
  JUMPIFEQKN R8 K24 [0] [+14]
  LENGTH R8 R7
  JUMPIFNOTEQKN R8 K24 [0] [+2]
  JUMP [+9]
  LENGTH R9 R1
  GETTABLE R8 R1 R9
  GETTABLEN R9 R7 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K25 ["connectByWire"]
  MOVE R11 R8
  MOVE R12 R9
  CALL R10 2 1
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K8 [table.insert]
  CALL R7 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K35 ["getDestination"]
  MOVE R8 R0
  CALL R7 1 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R7 K15 ["Name"]
  JUMP [+1]
  LOADK R8 K36 [""]
  GETIMPORT R9 K38 [workspace]
  MOVE R12 R8
  LOADK R13 K39 [" Listener"]
  CONCAT R11 R12 R13
  NAMECALL R9 R9 K40 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIF R9 [+29]
  GETIMPORT R10 K3 [Instance.new]
  LOADK R11 K41 ["AudioListener"]
  GETIMPORT R12 K38 [workspace]
  CALL R10 2 1
  MOVE R9 R10
  FASTCALL2K ASSERT R9 K42 [+5]
  MOVE R11 R9
  LOADK R12 K42 ["audioListener was nil"]
  GETIMPORT R10 K44 [assert]
  CALL R10 2 0
  MOVE R11 R8
  LOADK R12 K39 [" Listener"]
  CONCAT R10 R11 R12
  SETTABLEKS R10 R9 K15 ["Name"]
  MOVE R11 R8
  LOADK R12 K45 [" Interactions"]
  CONCAT R10 R11 R12
  SETTABLEKS R10 R9 K46 ["AudioInteractionGroup"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K47 ["makeListenerScript"]
  MOVE R11 R9
  CALL R10 1 0
  MOVE R11 R8
  LOADK R12 K45 [" Interactions"]
  CONCAT R10 R11 R12
  SETTABLEKS R10 R6 K46 ["AudioInteractionGroup"]
  FASTCALL2 TABLE_INSERT R1 R9 [+5]
  MOVE R11 R1
  MOVE R12 R9
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  RETURN R1 1

PROTO_5:
  LOADK R3 K0 ["AudioDeviceOutput"]
  NAMECALL R1 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIF R1 [+14]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K0 ["AudioDeviceOutput"]
  CALL R2 1 1
  MOVE R1 R2
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["output was nil"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  SETTABLEKS R0 R1 K8 ["Parent"]
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["output was nil"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  NEWTABLE R2 0 1
  MOVE R3 R1
  SETLIST R2 R3 1 [1]
  RETURN R2 1

PROTO_6:
  LOADK R3 K0 ["Sound"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  RETURN R1 1
  LOADK R3 K2 ["SoundGroup"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  RETURN R1 1
  LOADK R3 K3 ["SoundService"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 1
  RETURN R1 1
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  MOVE R8 R6
  MOVE R9 R1
  CALL R7 2 1
  MOVE R1 R7
  NAMECALL R7 R6 K0 ["GetChildren"]
  CALL R7 1 3
  FORGPREP R7
  GETUPVAL R12 0
  MOVE R13 R6
  MOVE R14 R1
  CALL R12 2 1
  MOVE R1 R12
  FORGLOOP R7 2 [-6]
  FORGLOOP R2 2 [-17]
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLE R8 R2 R6
  JUMPIF R8 [+4]
  GETUPVAL R8 1
  MOVE R9 R6
  CALL R8 1 1
  SETTABLE R8 R2 R6
  GETTABLE R8 R2 R7
  JUMPIF R8 [+4]
  GETUPVAL R8 1
  MOVE R9 R7
  CALL R8 1 1
  SETTABLE R8 R2 R7
  GETTABLE R8 R2 R6
  GETTABLE R9 R2 R7
  LENGTH R10 R8
  JUMPIFEQKN R10 K1 [0] [+14]
  LENGTH R10 R9
  JUMPIFNOTEQKN R10 K1 [0] [+2]
  JUMP [+9]
  LENGTH R11 R8
  GETTABLE R10 R8 R11
  GETTABLEN R11 R9 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["connectByWire"]
  MOVE R13 R10
  MOVE R14 R11
  CALL R12 2 1
  FORGLOOP R3 2 [-31]
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADK R10 K3 ["SoundEffect"]
  NAMECALL R8 R7 K4 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+11]
  GETTABLEKS R8 R7 K5 ["Parent"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R7 K5 ["Parent"]
  GETTABLE R8 R1 R9
  JUMPIF R8 [+4]
  GETUPVAL R8 3
  MOVE R9 R7
  CALL R8 1 1
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [-17]
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  FASTCALL2 TABLE_INSERT R3 R13 [+5]
  MOVE R15 R3
  MOVE R16 R13
  GETIMPORT R14 K8 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-8]
  FORGLOOP R4 2 [-14]
  RETURN R3 1

PROTO_8:
  GETUPVAL R0 0
  LOADK R2 K0 ["Migrate Sounds"]
  NAMECALL R0 R0 K1 ["TryBeginRecording"]
  CALL R0 2 1
  GETUPVAL R1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K2 ["Get"]
  CALL R2 1 -1
  CALL R1 -1 1
  LENGTH R3 R1
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 2
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["Set"]
  CALL R3 2 0
  JUMPIFNOT R0 [+12]
  JUMPIFNOT R2 [+3]
  GETIMPORT R3 K7 [Enum.FinishRecordingOperation.Commit]
  JUMP [+2]
  GETIMPORT R3 K9 [Enum.FinishRecordingOperation.Cancel]
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R3
  NAMECALL R4 R4 K10 ["FinishRecording"]
  CALL R4 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  LOADB R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 3
  FORGPREP R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["isSoundApi"]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+2]
  LOADB R0 1
  JUMP [+2]
  FORGLOOP R1 2 [-9]
  DUPTABLE R1 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
  DUPTABLE R2 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R3 K15 ["Standalone"]
  SETTABLEKS R3 R2 K10 ["DataModel"]
  LOADK R3 K16 ["Audio"]
  SETTABLEKS R3 R2 K11 ["PluginId"]
  LOADK R3 K17 ["Actions"]
  SETTABLEKS R3 R2 K12 ["Category"]
  LOADK R3 K18 ["Migrate"]
  SETTABLEKS R3 R2 K13 ["ItemId"]
  SETTABLEKS R2 R1 K2 ["Uri"]
  SETTABLEKS R0 R1 K3 ["Enabled"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["Visible"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K19 ["action"]
  LOADK R3 K20 ["MigrateSounds"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["Text"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K21 ["tooltip"]
  LOADK R3 K20 ["MigrateSounds"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Tooltip"]
  LOADK R2 K22 ["Sound"]
  SETTABLEKS R2 R1 K7 ["Icon"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K8 ["Shortcuts"]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 3
  NAMECALL R2 R2 K23 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 3
  GETUPVAL R3 4
  MOVE R5 R1
  LOADB R6 1
  NAMECALL R3 R3 K24 ["CreateAsync"]
  CALL R3 3 1
  GETTABLEN R2 R3 1
  DUPCLOSURE R4 K25 [PROTO_9]
  CAPTURE UPVAL U5
  NAMECALL R2 R2 K26 ["Connect"]
  CALL R2 2 1
  SETUPVAL R2 3
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_12:
  LOADK R3 K0 ["Actions"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  MOVE R3 R2
  CALL R3 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["SelectionChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 5
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AudioActions"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R6 R2 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["LocalizationUtil"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R2 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K14 ["SoundUtil"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R2 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K15 ["WiringUtil"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R2 K11 ["Src"]
  GETTABLEKS R7 R8 K16 ["Types"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R4
  DUPCLOSURE R10 K20 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  DUPCLOSURE R11 K21 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  DUPCLOSURE R12 K22 [PROTO_5]
  DUPCLOSURE R13 K23 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R12
  DUPCLOSURE R14 K24 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R9
  DUPCLOSURE R15 K25 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R1
  LOADNIL R16
  LOADNIL R17
  NEWTABLE R18 2 0
  NEWCLOSURE R19 P9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R16
  CAPTURE VAL R15
  CAPTURE REF R17
  SETTABLEKS R19 R18 K26 ["register"]
  NEWCLOSURE R19 P10
  CAPTURE REF R17
  CAPTURE REF R16
  SETTABLEKS R19 R18 K27 ["deregister"]
  CLOSEUPVALS R16
  RETURN R18 1