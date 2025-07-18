;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname nade_TIF__080887BD Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
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
