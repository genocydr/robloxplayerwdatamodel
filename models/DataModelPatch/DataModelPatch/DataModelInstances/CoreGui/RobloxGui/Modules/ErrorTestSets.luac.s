MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 15
  GETIMPORT R1 K3 [Enum.ConnectionError.PlacelaunchCustomMessage]
  GETIMPORT R2 K5 [Enum.ConnectionError.PlacelaunchDisabled]
  GETIMPORT R3 K7 [Enum.ConnectionError.PlacelaunchError]
  GETIMPORT R4 K9 [Enum.ConnectionError.PlacelaunchFlooded]
  GETIMPORT R5 K11 [Enum.ConnectionError.PlacelaunchGameEnded]
  GETIMPORT R6 K13 [Enum.ConnectionError.PlacelaunchGameFull]
  GETIMPORT R7 K15 [Enum.ConnectionError.PlacelaunchHashException]
  GETIMPORT R8 K17 [Enum.ConnectionError.PlacelaunchHashExpired]
  GETIMPORT R9 K19 [Enum.ConnectionError.PlacelaunchHttpError]
  GETIMPORT R10 K21 [Enum.ConnectionError.PlacelaunchOtherError]
  GETIMPORT R11 K23 [Enum.ConnectionError.PlacelaunchPartyCannotFit]
  GETIMPORT R12 K25 [Enum.ConnectionError.PlacelaunchRestricted]
  GETIMPORT R13 K27 [Enum.ConnectionError.PlacelaunchUnauthorized]
  GETIMPORT R14 K29 [Enum.ConnectionError.PlacelaunchUserLeft]
  GETIMPORT R15 K31 [Enum.ConnectionError.PlacelaunchUserPrivacyUnauthorized]
  SETLIST R0 R1 15 [1]
  NEWTABLE R1 4 0
  GETIMPORT R2 K33 [Enum.ConnectionError.DisconnectErrors]
  NEWTABLE R3 0 26
  GETIMPORT R4 K35 [Enum.ConnectionError.DisconnectBadhash]
  GETIMPORT R5 K37 [Enum.ConnectionError.DisconnectBlockedIP]
  GETIMPORT R6 K39 [Enum.ConnectionError.DisconnectBySecurityPolicy]
  GETIMPORT R7 K41 [Enum.ConnectionError.DisconnectCloudEditKick]
  GETIMPORT R8 K43 [Enum.ConnectionError.DisconnectConnectionLost]
  GETIMPORT R9 K45 [Enum.ConnectionError.DisconnectDevMaintenance]
  GETIMPORT R10 K47 [Enum.ConnectionError.DisconnectDuplicatePlayer]
  GETIMPORT R11 K49 [Enum.ConnectionError.DisconnectDuplicateTicket]
  GETIMPORT R12 K51 [Enum.ConnectionError.DisconnectEvicted]
  GETIMPORT R13 K53 [Enum.ConnectionError.DisconnectHashTimeout]
  GETIMPORT R14 K55 [Enum.ConnectionError.DisconnectIdle]
  GETIMPORT R15 K57 [Enum.ConnectionError.DisconnectIllegalTeleport]
  GETIMPORT R16 K59 [Enum.ConnectionError.DisconnectNewSecurityKeyMismatch]
  GETIMPORT R17 K61 [Enum.ConnectionError.DisconnectOnRemoteSysStats]
  GETIMPORT R18 K63 [Enum.ConnectionError.DisconnectPlayerless]
  GETIMPORT R19 K65 [Enum.ConnectionError.DisconnectPrivateServerKickout]
  SETLIST R3 R4 16 [1]
  GETIMPORT R4 K67 [Enum.ConnectionError.DisconnectProtocolMismatch]
  GETIMPORT R5 K69 [Enum.ConnectionError.DisconnectRaknetErrors]
  GETIMPORT R6 K71 [Enum.ConnectionError.DisconnectReceivePacketError]
  GETIMPORT R7 K73 [Enum.ConnectionError.DisconnectReceivePacketStreamError]
  GETIMPORT R8 K75 [Enum.ConnectionError.DisconnectRejoin]
  GETIMPORT R9 K77 [Enum.ConnectionError.DisconnectRobloxMaintenance]
  GETIMPORT R10 K79 [Enum.ConnectionError.DisconnectSecurityKeyMismatch]
  GETIMPORT R11 K81 [Enum.ConnectionError.DisconnectSendPacketError]
  GETIMPORT R12 K83 [Enum.ConnectionError.DisconnectTimeout]
  GETIMPORT R13 K85 [Enum.ConnectionError.DisconnectWrongVersion]
  SETLIST R3 R4 10 [17]
  SETTABLE R3 R1 R2
  GETIMPORT R2 K87 [Enum.ConnectionError.PlacelaunchErrors]
  SETTABLE R0 R1 R2
  GETIMPORT R2 K89 [Enum.ConnectionError.TeleportErrors]
  NEWTABLE R3 0 7
  GETIMPORT R4 K91 [Enum.ConnectionError.TeleportFailure]
  GETIMPORT R5 K93 [Enum.ConnectionError.TeleportFlooded]
  GETIMPORT R6 K95 [Enum.ConnectionError.TeleportGameEnded]
  GETIMPORT R7 K97 [Enum.ConnectionError.TeleportGameFull]
  GETIMPORT R8 K99 [Enum.ConnectionError.TeleportGameNotFound]
  GETIMPORT R9 K101 [Enum.ConnectionError.TeleportIsTeleporting]
  GETIMPORT R10 K103 [Enum.ConnectionError.TeleportUnauthorized]
  SETLIST R3 R4 7 [1]
  SETTABLE R3 R1 R2
  RETURN R1 1