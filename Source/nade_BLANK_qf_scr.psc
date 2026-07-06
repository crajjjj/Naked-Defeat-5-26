Scriptname nade_BLANK_qf_scr Extends Quest Hidden

;############################################################################################################################################################################################################
;############### 	PROPERTIES 	#############################################################################################################################################################################################
;############################################################################################################################################################################################################

nade_configquest_scr Property cfgqst Auto
nade_calmquest_qf_scr Property calmqst Auto


;############################################################################################################################################################################################################
;############### QUEST STAGES #############################################################################################################################################################################
;############################################################################################################################################################################################################

Function Fragment_0()					;############ STAGE 10 ############		#START			
		DebugTrace("stage 10 (START)")
										
		SetStage(100)

EndFunction															

															
															
Function Fragment_4()				;############ STAGE 1000 ############		#END

	DebugTrace("stage 1000 (END)")

	Stop()

EndFunction

 
Function Fragment_7()						;############ STAGE 100 ############	 #ActivateRapeScan		;CalmQuest needs to SetStage 100 to restart scan after rape

	DebugTrace("stage 100 (ACTIVE)")

EndFunction


;############################################################################################################################################################################################################
;#############	 FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################

Function StartStorageQuest()
	DebugTrace("StartStorageQuest()")
	Start()
	
EndFunction 


Function EndStorageQuest()
	DebugTrace("EndStorageQuest()")
	Stop()
	
EndFunction 


;############################################################################################################################################################################################################
;#############	 BASIC FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################


Function DebugTrace(String Text1)			;#DebugTrace
Debug.Trace("NAKED DEFEAT storagequest: "+Text1)
EndFunction

Function ShowDebugNotification(String Text2);#ShowDebugNotification
	if cfgqst.ShowDebugMessages
	Debug.Notification(Text2)
	endif
EndFunction

Function ScreenMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#InfoMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT storagequest: (#msg DEBUG) "+Text2)
	endif
EndFunction
	
Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT storagequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	Debug.trace("NAKED DEFEAT storagequest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return true
	else
	return false
	endif 
	
EndFunction