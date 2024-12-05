PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+80]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+69]
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K7 ["429"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["TooManyRequests"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K9 ["500"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K10 ["ServerError500"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K11 ["504"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K12 ["ServerError504"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K13 ["TextFullyFiltered"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["TextFullyFiltered"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K14 ["AccountingFailed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K5 [string.find]
  GETTABLEKS R2 R0 K6 ["error"]
  LOADK R3 K15 ["Decrementing account failed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K16 ["AccountingFailedDecrement"]
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K17 ["CustomMessage"]
  GETTABLEKS R2 R0 K6 ["error"]
  RETURN R1 2
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K18 ["Unknown"]
  LOADNIL R2
  RETURN R1 2
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["string"] [+62]
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K19 ["got network error status: 429"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["TooManyRequests"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K20 ["got network error status: 500"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K10 ["ServerError500"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K21 ["got network error status: 504"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K12 ["ServerError504"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K13 ["TextFullyFiltered"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["TextFullyFiltered"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K14 ["AccountingFailed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K5 [string.find]
  MOVE R2 R0
  LOADK R3 K15 ["Decrementing account failed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K16 ["AccountingFailedDecrement"]
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K17 ["CustomMessage"]
  MOVE R2 R0
  RETURN R1 2
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K18 ["Unknown"]
  LOADNIL R2
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Enum"]
  GETTABLEKS R2 R3 K8 ["GenerationErrorType"]
  CALL R1 1 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["MaterialGeneratorFixErrorParsing"]
  LOADB R5 0
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 1
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1