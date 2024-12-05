PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"generatingImages"}]
  GETTABLEKS R5 R1 K2 ["amount"]
  SETTABLEKS R5 R4 K0 ["generatingImages"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"generatingImages"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K0 ["generatingImages"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"generationError"}]
  DUPTABLE R5 K4 [{"generationErrorType", "message"}]
  GETTABLEKS R6 R1 K2 ["generationErrorType"]
  SETTABLEKS R6 R5 K2 ["generationErrorType"]
  GETTABLEKS R6 R1 K3 ["message"]
  JUMPIF R6 [+3]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["None"]
  SETTABLEKS R6 R5 K3 ["message"]
  SETTABLEKS R5 R4 K0 ["generationError"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"isSavingMaterial"}]
  GETTABLEKS R5 R1 K0 ["isSavingMaterial"]
  SETTABLEKS R5 R4 K0 ["isSavingMaterial"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"textPrompt"}]
  GETTABLEKS R5 R1 K0 ["textPrompt"]
  SETTABLEKS R5 R4 K0 ["textPrompt"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["original"]
  GETTABLEKS R3 R1 K1 ["filteredText"]
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R0 1
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K2 ["textPrompt"]
  GETTABLEKS R4 R1 K0 ["original"]
  GETTABLEKS R5 R1 K1 ["filteredText"]
  CALL R2 3 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 1
  MOVE R4 R0
  DUPTABLE R5 K3 [{"textPrompt"}]
  SETTABLEKS R2 R5 K2 ["textPrompt"]
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["DoneGeneratingImages"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["MergeFilteredTextPrompt"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R3 K12 ["SetGeneratingImages"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R3 K13 ["SetGenerationError"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R3 K14 ["SetIsSavingMaterial"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R3 K15 ["SetTextPrompt"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R10 K17 ["tryReplaceFirstText"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K18 ["Enum"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K19 ["GenerationErrorType"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K20 ["join"]
  DUPTABLE R15 K26 [{"isGeneratingImages", "generatingImages", "isSavingMaterial", "textPrompt", "generationError"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K21 ["isGeneratingImages"]
  LOADN R16 0
  SETTABLEKS R16 R15 K22 ["generatingImages"]
  LOADB R16 0
  SETTABLEKS R16 R15 K23 ["isSavingMaterial"]
  LOADK R16 K27 [""]
  SETTABLEKS R16 R15 K24 ["textPrompt"]
  DUPTABLE R16 K30 [{"generationErrorType", "message"}]
  GETTABLEKS R17 R13 K31 ["None"]
  SETTABLEKS R17 R16 K28 ["generationErrorType"]
  LOADNIL R17
  SETTABLEKS R17 R16 K29 ["message"]
  SETTABLEKS R16 R15 K25 ["generationError"]
  GETTABLEKS R16 R2 K32 ["createReducer"]
  MOVE R17 R15
  NEWTABLE R18 8 0
  GETTABLEKS R19 R6 K33 ["name"]
  DUPCLOSURE R20 K34 [PROTO_0]
  CAPTURE VAL R14
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R4 K33 ["name"]
  DUPCLOSURE R20 K35 [PROTO_1]
  CAPTURE VAL R14
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R7 K33 ["name"]
  DUPCLOSURE R20 K36 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K33 ["name"]
  DUPCLOSURE R20 K37 [PROTO_3]
  CAPTURE VAL R14
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K33 ["name"]
  DUPCLOSURE R20 K38 [PROTO_4]
  CAPTURE VAL R14
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K33 ["name"]
  DUPCLOSURE R20 K39 [PROTO_5]
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLE R20 R18 R19
  CALL R16 2 1
  RETURN R16 1
