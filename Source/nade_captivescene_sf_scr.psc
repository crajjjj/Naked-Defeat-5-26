;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 26
Scriptname nade_captivescene_sf_scr Extends Scene Hidden

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
(GetOwningQuest() as nade_errandquest_scr).EndWhipPhase()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16(ReferenceAlias akAlias)
;BEGIN CODE
;(GetOwningQuest() as nade_errandquest_scr).StartLeak(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
(GetOwningQuest() as nade_errandquest_scr).ReStrip()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
(GetOwningQuest() as nade_errandquest_scr).EndWhip()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;(GetOwningQuest() as nade_errandquest_scr).StartWetScene()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
