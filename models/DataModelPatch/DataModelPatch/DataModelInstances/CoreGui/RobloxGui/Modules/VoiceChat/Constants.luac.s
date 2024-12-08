MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"USER_AGENCY", "BUBBLE_CHAT", "IN_GAME_MENU", "MUTE_TOGGLES", "REPORT_MENU", "EASIER_UNMUTING", "UNKNOWN"}]
  LOADK R1 K8 ["useragency"]
  SETTABLEKS R1 R0 K0 ["USER_AGENCY"]
  LOADK R1 K9 ["bubblechat"]
  SETTABLEKS R1 R0 K1 ["BUBBLE_CHAT"]
  LOADK R1 K10 ["ingamemenu"]
  SETTABLEKS R1 R0 K2 ["IN_GAME_MENU"]
  LOADK R1 K11 ["mutetoggles"]
  SETTABLEKS R1 R0 K3 ["MUTE_TOGGLES"]
  LOADK R1 K12 ["reportmenu"]
  SETTABLEKS R1 R0 K4 ["REPORT_MENU"]
  LOADK R1 K13 ["easierunmuting"]
  SETTABLEKS R1 R0 K5 ["EASIER_UNMUTING"]
  LOADK R1 K14 ["unknown"]
  SETTABLEKS R1 R0 K6 ["UNKNOWN"]
  DUPTABLE R1 K18 [{"ALL", "FRIENDS", "NONFRIENDS"}]
  LOADK R2 K19 ["all"]
  SETTABLEKS R2 R1 K15 ["ALL"]
  LOADK R2 K20 ["friends"]
  SETTABLEKS R2 R1 K16 ["FRIENDS"]
  LOADK R2 K21 ["nonfriends"]
  SETTABLEKS R2 R1 K17 ["NONFRIENDS"]
  DUPTABLE R2 K29 [{"INACTIVE", "TALKING", "CONNECTING", "MUTED", "LOCAL_MUTED", "ERROR", "HIDDEN"}]
  LOADK R3 K30 ["Inactive"]
  SETTABLEKS R3 R2 K22 ["INACTIVE"]
  LOADK R3 K31 ["Talking"]
  SETTABLEKS R3 R2 K23 ["TALKING"]
  LOADK R3 K32 ["Connecting"]
  SETTABLEKS R3 R2 K24 ["CONNECTING"]
  LOADK R3 K33 ["Muted"]
  SETTABLEKS R3 R2 K25 ["MUTED"]
  LOADK R3 K26 ["LOCAL_MUTED"]
  SETTABLEKS R3 R2 K26 ["LOCAL_MUTED"]
  LOADK R3 K34 ["Error"]
  SETTABLEKS R3 R2 K27 ["ERROR"]
  LOADK R3 K35 ["Hidden"]
  SETTABLEKS R3 R2 K28 ["HIDDEN"]
  DUPTABLE R3 K37 [{"NUDGE_V3"}]
  LOADN R4 7
  SETTABLEKS R4 R3 K36 ["NUDGE_V3"]
  DUPTABLE R4 K43 [{"Idle", "Joining", "Suspended", "Joined", "Left"}]
  LOADK R5 K38 ["Idle"]
  SETTABLEKS R5 R4 K38 ["Idle"]
  LOADK R5 K39 ["Joining"]
  SETTABLEKS R5 R4 K39 ["Joining"]
  LOADK R5 K40 ["Suspended"]
  SETTABLEKS R5 R4 K40 ["Suspended"]
  LOADK R5 K41 ["Joined"]
  SETTABLEKS R5 R4 K41 ["Joined"]
  LOADK R5 K42 ["Left"]
  SETTABLEKS R5 R4 K42 ["Left"]
  DUPTABLE R5 K48 [{"CONTROL", "VARIANT1", "VARIANT2", "VARIANT3"}]
  LOADK R6 K49 ["control"]
  SETTABLEKS R6 R5 K44 ["CONTROL"]
  LOADK R6 K50 ["variant1"]
  SETTABLEKS R6 R5 K45 ["VARIANT1"]
  LOADK R6 K51 ["variant2"]
  SETTABLEKS R6 R5 K46 ["VARIANT2"]
  LOADK R6 K52 ["variant3"]
  SETTABLEKS R6 R5 K47 ["VARIANT3"]
  DUPTABLE R6 K55 [{"IN_EXP_UPSELL", "DATA_CONSENT_TOAST"}]
  LOADK R7 K56 ["in-experience-voice-upsell"]
  SETTABLEKS R7 R6 K53 ["IN_EXP_UPSELL"]
  LOADK R7 K57 ["data-consent-toast"]
  SETTABLEKS R7 R6 K54 ["DATA_CONSENT_TOAST"]
  DUPTABLE R7 K60 [{"JOIN_VOICE", "LIKELY_SPEAKING"}]
  LOADK R8 K61 ["joinVoiceButton"]
  SETTABLEKS R8 R7 K58 ["JOIN_VOICE"]
  LOADK R8 K62 ["likelySpeakingBubble"]
  SETTABLEKS R8 R7 K59 ["LIKELY_SPEAKING"]
  DUPTABLE R8 K66 [{"None", "VoiceChat", "AccountSecurity"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K63 ["None"]
  LOADN R9 1
  SETTABLEKS R9 R8 K64 ["VoiceChat"]
  LOADN R9 2
  SETTABLEKS R9 R8 K65 ["AccountSecurity"]
  DUPTABLE R9 K81 [{"VOICE_CONTEXT_TYPE", "VOICE_JOIN_PROGRESS", "VOICE_GROUP_TYPE", "VOICE_STATE", "BAN_REASON", "IN_EXP_UPSELL_VARIANT", "MODAL_IDS", "IN_EXP_UPSELL_ENTRYPOINTS", "IN_EXP_PHONE_UPSELL_IXP_LAYER", "EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER", "PHONE_UPSELL_VALUE_PROP", "SEAMLESS_VOICE_FTUX_KEY", "SEAMLESS_VOICE_STUX_KEY", "SEAMLESS_VOICE_STATUS_ENABLED_NEW_USER"}]
  SETTABLEKS R0 R9 K67 ["VOICE_CONTEXT_TYPE"]
  SETTABLEKS R4 R9 K68 ["VOICE_JOIN_PROGRESS"]
  SETTABLEKS R1 R9 K69 ["VOICE_GROUP_TYPE"]
  SETTABLEKS R2 R9 K70 ["VOICE_STATE"]
  SETTABLEKS R3 R9 K71 ["BAN_REASON"]
  SETTABLEKS R5 R9 K72 ["IN_EXP_UPSELL_VARIANT"]
  SETTABLEKS R6 R9 K73 ["MODAL_IDS"]
  SETTABLEKS R7 R9 K74 ["IN_EXP_UPSELL_ENTRYPOINTS"]
  LOADK R10 K82 ["InExperience.UpsellCard"]
  SETTABLEKS R10 R9 K75 ["IN_EXP_PHONE_UPSELL_IXP_LAYER"]
  LOADK R10 K83 ["ExitConfirmation.UpsellCard"]
  SETTABLEKS R10 R9 K76 ["EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER"]
  SETTABLEKS R8 R9 K77 ["PHONE_UPSELL_VALUE_PROP"]
  LOADK R10 K84 ["SeamlessVoiceFTUX"]
  SETTABLEKS R10 R9 K78 ["SEAMLESS_VOICE_FTUX_KEY"]
  LOADK R10 K85 ["SeamlessVoiceSTUXCount"]
  SETTABLEKS R10 R9 K79 ["SEAMLESS_VOICE_STUX_KEY"]
  LOADN R10 3
  SETTABLEKS R10 R9 K80 ["SEAMLESS_VOICE_STATUS_ENABLED_NEW_USER"]
  RETURN R9 1