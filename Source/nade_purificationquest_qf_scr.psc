;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname nade_purificationquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY Arngeir
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Arngeir Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Cross
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Cross Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
ImmobilizePlayer()
SetObjectiveDisplayed(40, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
Int i = nade_GreybeardQuest.GetStage()
if (i>=30) && (i<1000)
	nade_GreybeardQuest.SetStage(1001)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(20, true)
SetActive(true)
nade_GreybeardQuest.SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
ReleasePlayer()
CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveDisplayed(30, true)
nade_GreybeardQuest.SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Int i = nade_GreybeardQuest.GetStage()
if (i>=30) && (i<1000)
	nade_GreybeardQuest.SetStage(1002)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;fail quest
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
FastenPlayer()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property nade_GreybeardQuest Auto
nade_configquest_scr Property cfgqst Auto
;zadlibs Property libs Auto

Function RestartQuest(Int stg = 10)
	SetObjectiveDisplayed(10,false)
	SetObjectiveCompleted(10,false)
	SetObjectiveFailed(10,false)

	SetObjectiveDisplayed(20,false)
	SetObjectiveCompleted(20,false)
	SetObjectiveFailed(20,false)

	SetObjectiveDisplayed(30,false)
	SetObjectiveCompleted(30,false)
	SetObjectiveFailed(30,false)

	SetObjectiveDisplayed(40,false)
	SetObjectiveCompleted(40,false)
	SetObjectiveFailed(40,false)

	SetObjectiveDisplayed(50,false)
	SetObjectiveCompleted(50,false)
	SetObjectiveFailed(50,false)

	if IsRunning()
		Reset()
	else
		Start()
	endif
	SetStage(stg)
EndFunction

Function CompleteCurrentObjective()
	SetObjectiveCompleted(GetStage(), true)
EndFunction

Function ImmobilizePlayer()
;	libs.GlobalEventFlag = false
	if cfgqst.PlayerRef.IsSneaking()
		cfgqst.PlayerRef.StartSneaking()
	endif
	Game.DisablePlayerControls(true, true, false, false, true, false, true, false)
	Game.SetPlayerAIDriven(true)
EndFunction

Function FastenPlayer()
	if cfgqst.PlayerRef.GetSitState() == 0
		ObjectReference o = Alias_Cross.GetReference()
		if o
			o.Activate(cfgqst.PlayerRef)
		else
			Debug.Notification("ERROR: nade_PurificationQuest not running!")
		endif
	endif
EndFunction

Function ReleasePlayer()
	if cfgqst.PlayerRef.GetSitState() != 0
		ObjectReference o = Alias_Cross.GetReference()
		if o
			o.Activate(cfgqst.PlayerRef)
		else
			Debug.Notification("ERROR: nade_PurificationQuest not running!")
		endif
	endif
	Game.SetPlayerAIDriven(false)
	Game.EnablePlayerControls()
;	libs.GlobalEventFlag = true
EndFunction
