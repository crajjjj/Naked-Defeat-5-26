;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname nade_TIF__080390D8 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Quest qst = GetOwningQuest()
;(qst as nade_errandquest_scr).KillLetter(2)
;(qst as nade_errandquest_scr).ApplyDialogOutcome(Utility.RandomInt(0, 2), 1, 0, 170, 2)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
