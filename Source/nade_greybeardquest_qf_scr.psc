;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 23
Scriptname nade_greybeardquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wulfgar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wulfgar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArngeirMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArngeirMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EinarthMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EinarthMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Einarth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Einarth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Arngeir
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Arngeir Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Borri
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Borri Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BorriMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BorriMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WulfgarMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WulfgarMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
if Ritual.IsPlaying()
	Ritual.Stop()
endif
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
nade_PurificationQuest.SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;Startup Stage
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
nade_SlotIndex.SetValueInt(Slots.Length)
nade_KeywordIndex.SetValueInt(Keywords.Length)
Ritual.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
Int i = nade_RitualsDone.GetValueInt()
if i<8
	nade_RitualsDone.SetValueInt(i+1)
endif
RemoveCane()
Ritual.Stop()
nade_PurificationQuest.SetStage(1000)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
Ritual.Stop()
Int i = nade_PurificationQuest.GetStage()
if (i > 0) && (i < 40)
	 nade_PurificationQuest.SetObjectiveFailed(i, true)
endif
nade_PurificationQuest.SetStage(1003)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
nade_PurificationQuest.SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
if Ritual.IsPlaying()
	Ritual.Stop()
endif
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property Ritual Auto
GlobalVariable Property nade_SlotIndex Auto
GlobalVariable Property nade_KeywordIndex Auto
GlobalVariable Property nade_RitualsDone Auto
Int[] Property Slots Auto
Keyword[] Property Keywords Auto
Weapon Property Cane Auto
nade_configquest_scr Property cfgqst Auto
Quest Property nade_PurificationQuest Auto
Sound[] Property Verses Auto
SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto

Function AddCane()
	(Alias_Arngeir.GetReference() as Actor).AddItem(Cane, 1, true)
EndFunction

Function RemoveCane()
	Actor a = (Alias_Arngeir.GetReference() as Actor)
	Int i = a.GetItemCount(Cane)
	if i
		a.RemoveItem(Cane, i, true, None)
	endif
EndFunction

Function CompleteCurrentObjective()
	nade_PurificationQuest.SetObjectiveCompleted(nade_PurificationQuest.GetStage(), true)
EndFunction

Function PlaySound(Int Index = 0)
	if Index
		Verses[Index].Play(Alias_Arngeir.GetReference())
	else
		Verses[Index].Play(Alias_Wulfgar.GetReference())
	endif
EndFunction

Function DoOrgasm()
	Actor a = Alias_Player.GetReference() as Actor
	if cfgqst.WhipMarks
		cfgqst.AddTattoo("Cane Marks", "Cane Marks on Tits")
		cfgqst.AddTattoo("Cane Marks", "Red Pussy")
		cfgqst.SyncTattoos()
	endif
	if Aroused.GetActorExposure(a) > 70
		Game.ShakeCamera(a, 1, 5)
		SexLab.SendTrackedEvent(a, "SexLabOrgasm", 100)
	endif
EndFunction

Function ResetArousal()
	Actor a = Alias_Player.GetReference() as Actor
	Aroused.SetActorExposure(a, 0)
	Aroused.UpdateActorOrgasmDate(a)
EndFunction