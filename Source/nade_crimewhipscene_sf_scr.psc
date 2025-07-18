;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 37
Scriptname nade_crimewhipscene_sf_scr Extends Scene Hidden

;BEGIN FRAGMENT Fragment_24
Function Fragment_24(ReferenceAlias akAlias)
;BEGIN CODE
(GetOwningQuest() as nade_crimequest_qf_scr).ApplyTinkle(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
(GetOwningQuest() as nade_crimequest_qf_scr).EndScene()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
(GetOwningQuest() as nade_crimequest_qf_scr).ApplyTinkle(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
(GetOwningQuest() as nade_crimequest_qf_scr).StartScene()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
