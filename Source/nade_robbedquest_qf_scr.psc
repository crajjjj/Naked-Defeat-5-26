;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname nade_robbedquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY Robber
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Robber Auto
;END ALIAS PROPERTY

nade_configquest_scr Property cfgqst Auto

;BEGIN ALIAS PROPERTY RobberyLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_RobberyLocation Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()				;STAGE 10
Debug.Trace("NAKED DEFEAT robberyquest (Startup STAGE)")
;BEGIN CODE
;Startup Stage
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()				;STAGE 100
Debug.Trace("NAKED DEFEAT robberyquest (Start STAGE)")
;BEGIN CODE
;start stage
cfgqst.Robbed = true
SetObjectiveDisplayed(100, true, false)
SetActive(true)

;END CODE
EndFunction
;END FRAGMENT

				;STAGE 1000
Function Fragment_1()
Debug.Trace("NAKED DEFEAT robberyquest: Stage 1000 (completed)")
;BEGIN CODE
;shutdown stage

SetObjectiveCompleted(100, true)
cfgqst.Robbed = false
Alias_Robber.Clear()
Alias_RobberyLocation.Clear()

EndFunction


;BEGIN FRAGMENT Fragment_11			;STAGE 200
Function Fragment_11()
Debug.Trace("NAKED DEFEAT robberyquest: Stage 200 (get stuff back)")
;BEGIN CODE
;equipment given back
;SendModEvent("StartReturnGold")
;Alias_Robber.GetReference().RemoveAllItems(Game.GetPlayer(), true, false)
SetStage(1000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8			;STAGE 2000
Function Fragment_8()
;BEGIN CODE
Debug.Trace("NAKED DEFEAT robberyquest: Stage 2000 (failed)")
;shutdown stage

SetObjectiveFailed(100, true)
cfgqst.Robbed = false
Alias_Robber.Clear()
Alias_RobberyLocation.Clear()
;END CODE
EndFunction

Location Property DefaultLocation Auto


Function StartRobberyQuest(Actor akRobber = None)
	Int stg = GetStage()

	if stg == 100
		SetStage(2000)
	endif

	SetObjectiveDisplayed(100,false)
	SetObjectiveCompleted(100,false)
	SetObjectiveFailed(100,false)

	if stg == 0
		Start()
	else
		Reset()
	endif
	if akRobber
		Alias_Robber.ForceRefTo(akRobber)
		Location loc = akRobber.GetCurrentLocation()
		if loc
			Alias_RobberyLocation.ForceLocationTo(loc)
		else
			Alias_RobberyLocation.ForceLocationTo(DefaultLocation)
		endif
		SetStage(100)
	endif

EndFunction


Function RestartQuest(Actor akRobber = None)
	Int stg = GetStage()

	if stg == 100
		SetStage(2000)
	endif

	SetObjectiveDisplayed(100,false)
	SetObjectiveCompleted(100,false)
	SetObjectiveFailed(100,false)

	if stg == 0
		Start()
	else
		Reset()
	endif
	if akRobber
		Alias_Robber.ForceRefTo(akRobber)
		Location loc = akRobber.GetCurrentLocation()
		if loc
			Alias_RobberyLocation.ForceLocationTo(loc)
		else
			Alias_RobberyLocation.ForceLocationTo(DefaultLocation)
		endif
		SetStage(100)
	endif

EndFunction

;Bool Function RobberyQuestRunning
;Getstage() > 0) || Getstage() 1000) 
