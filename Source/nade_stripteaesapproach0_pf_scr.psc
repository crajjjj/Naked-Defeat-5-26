;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname nade_stripteaesapproach0_pf_scr Extends Package Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(Actor akActor)
;BEGIN CODE
Int i = nade_NumSpectDone.GetValueInt() + 1
nade_NumSpectDone.SetValueInt(i)
nade_StripteaseQuest.UpdateCurrentInstanceGlobal(nade_NumSpectDone)
nade_StripteaseQuest.SetObjectiveDisplayed(20, true, true)
if i >= nade_NumSpect.GetValueInt()
	nade_StripteaseQuest.SetStage(100)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property nade_NumSpect Auto
GlobalVariable Property nade_NumSpectDone  Auto  

Quest Property nade_StripteaseQuest  Auto  
