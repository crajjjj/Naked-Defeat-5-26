;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname nade_TIF__080E2546 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.SetPlayerAIDriven(true)
nade_PlayerWasNaked.SetValueInt(cfgqst.IsPlayerNaked() as Int)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property nade_PlayerWasNaked Auto
nade_configquest_scr Property cfgqst Auto
