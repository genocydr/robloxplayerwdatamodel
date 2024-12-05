PROTO_0:
  FASTCALL1 MATH_LOG R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [math.log]
  CALL R2 1 1
  MULK R1 R2 K0 [1.44269504089]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EQUALIZER"]
  JUMPIFNOTEQ R0 R1 [+12]
  LOADN R1 200
  SETUPVAL R1 1
  LOADN R1 32
  SETUPVAL R1 2
  LOADN R1 176
  SETUPVAL R1 3
  LOADN R1 10
  SETUPVAL R1 4
  LOADN R1 3
  SETUPVAL R1 5
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["FILTER"]
  JUMPIFNOTEQ R0 R1 [+12]
  LOADN R1 20
  SETUPVAL R1 1
  LOADN R1 240
  SETUPVAL R1 2
  LOADN R1 226
  SETUPVAL R1 3
  LOADN R1 30
  SETUPVAL R1 4
  LOADN R1 1
  SETUPVAL R1 5
  RETURN R0 0
  LOADB R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K3 [assert]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["log2"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["getXMin"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["log2"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getXMax"]
  CALL R3 0 -1
  CALL R2 -1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["log2"]
  GETTABLEKS R4 R0 K3 ["X"]
  CALL R3 1 1
  SUB R5 R3 R1
  SUB R6 R2 R1
  DIV R4 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["log2"]
  GETTABLEKS R8 R0 K3 ["X"]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["log2"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["getXMin"]
  CALL R9 0 -1
  CALL R8 -1 1
  SUB R6 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["log2"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["getXMax"]
  CALL R9 0 -1
  CALL R8 -1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["log2"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["getXMin"]
  CALL R10 0 -1
  CALL R9 -1 1
  SUB R7 R8 R9
  DIV R5 R6 R7
  GETTABLEKS R7 R0 K4 ["Y"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["getYMin"]
  CALL R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["getYMax"]
  CALL R9 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K9 [math.clamp]
  CALL R6 -1 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["getYMin"]
  CALL R11 0 1
  SUB R10 R6 R11
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["getYMax"]
  CALL R12 0 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["getYMin"]
  CALL R13 0 1
  SUB R11 R12 R13
  DIV R9 R10 R11
  GETUPVAL R10 1
  POW R8 R9 R10
  SUBRK R7 R10 K8 ["clamp"]
  GETIMPORT R8 K13 [Vector2.new]
  MOVE R9 R4
  MOVE R10 R7
  CALL R8 2 -1
  RETURN R8 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["log2"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["getXMin"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["log2"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getXMax"]
  CALL R3 0 -1
  CALL R2 -1 1
  GETTABLEKS R5 R0 K3 ["X"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["log2"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["getXMax"]
  CALL R7 0 -1
  CALL R6 -1 1
  MUL R4 R5 R6
  GETTABLEKS R7 R0 K3 ["X"]
  SUBRK R6 R4 K7 ["clamp"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["log2"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["getXMin"]
  CALL R8 0 -1
  CALL R7 -1 1
  MUL R5 R6 R7
  ADD R3 R4 R5
  LOADN R5 2
  POW R4 R5 R3
  GETTABLEKS R7 R0 K5 ["Y"]
  SUBRK R6 R4 K7 ["clamp"]
  LOADN R7 0
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K8 [math.clamp]
  CALL R5 3 1
  GETUPVAL R10 1
  DIVRK R9 R4 K10 ["getYMin"]
  POW R8 R5 R9
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["getYMax"]
  CALL R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["getYMin"]
  CALL R11 0 1
  SUB R9 R10 R11
  MUL R7 R8 R9
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["getYMin"]
  CALL R8 0 1
  ADD R6 R7 R8
  GETIMPORT R7 K13 [Vector2.new]
  MOVE R8 R4
  MOVE R9 R6
  CALL R7 2 -1
  RETURN R7 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["plotToView"]
  MOVE R4 R0
  CALL R3 1 1
  MUL R2 R3 R1
  RETURN R2 1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["viewToPlot"]
  DIV R3 R0 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_10:
  MUL R2 R0 R1
  RETURN R2 1

PROTO_11:
  DIV R2 R0 R1
  RETURN R2 1

PROTO_12:
  JUMPIF R1 [+12]
  GETIMPORT R2 K2 [Vector2.new]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getYMin"]
  CALL R4 0 -1
  CALL R2 -1 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K5 ["AbsoluteSize"]
  GETTABLEKS R4 R1 K6 ["AbsolutePosition"]
  SUB R3 R0 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["absToPlot"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  LOADN R3 200
  LOADN R4 32
  LOADN R5 176
  LOADN R6 10
  LOADN R7 3
  DUPCLOSURE R8 K8 [PROTO_0]
  SETTABLEKS R8 R2 K9 ["log2"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE REF R7
  SETTABLEKS R8 R2 K10 ["setInstanceType"]
  NEWCLOSURE R8 P2
  CAPTURE REF R3
  SETTABLEKS R8 R2 K11 ["getXMin"]
  NEWCLOSURE R8 P3
  CAPTURE REF R4
  SETTABLEKS R8 R2 K12 ["getXMax"]
  NEWCLOSURE R8 P4
  CAPTURE REF R5
  SETTABLEKS R8 R2 K13 ["getYMin"]
  NEWCLOSURE R8 P5
  CAPTURE REF R6
  SETTABLEKS R8 R2 K14 ["getYMax"]
  NEWCLOSURE R8 P6
  CAPTURE VAL R2
  CAPTURE REF R7
  SETTABLEKS R8 R2 K15 ["plotToView"]
  NEWCLOSURE R8 P7
  CAPTURE VAL R2
  CAPTURE REF R7
  SETTABLEKS R8 R2 K16 ["viewToPlot"]
  DUPCLOSURE R8 K17 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K18 ["plotToAbs"]
  DUPCLOSURE R8 K19 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K20 ["absToPlot"]
  DUPCLOSURE R8 K21 [PROTO_10]
  SETTABLEKS R8 R2 K22 ["viewToAbs"]
  DUPCLOSURE R8 K23 [PROTO_11]
  SETTABLEKS R8 R2 K24 ["absToView"]
  DUPCLOSURE R8 K25 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K26 ["mouseToPlot"]
  CLOSEUPVALS R3
  RETURN R2 1
