;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname nade_infurnitureutilquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY PlayerInFurniture
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerInFurniture Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Startup Stage
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;shutdown stage

Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Bool Function IsPlayerInFurniture()
	Int stg = GetStage()
	Bool b = (stg >= 10) && (stg < 1000)
	if !b
		Start()
		stg = GetStage()
		b = (stg >= 10) && (stg < 1000)
	endif
	SetStage(1000)
	return b
EndFunction
