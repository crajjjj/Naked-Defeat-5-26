;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 28
Scriptname nade_stripteasequest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY Spectator3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Spectator3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Spectator1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Spectator1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Vehicle
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Vehicle Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Spectator0
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Spectator0 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Carpet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Carpet Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Spectator4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Spectator4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Spectator2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Spectator2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
;Function Fragment_8()
;BEGIN CODE
;shutdown stage

;Cleanup()
;Stop()
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
;Function Fragment_0()
;BEGIN CODE
;Startup Stage

;if CheckCarpet()

;END FRAGMENT

;BEGIN FRAGMENT Fragment_27


;BEGIN FRAGMENT Fragment_18

;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

nade_configquest_scr Property cfgqst Auto
;zadlibs Property libs Auto
SexLabFramework Property SexLab Auto
FormList Property nade_ZazDanceDevs Auto
ObjectReference CreatedCarpet = None
Keyword Property zdfFurnitureDancePoleDance Auto
Keyword Property SexLabNoStrip Auto
MiscObject Property Gold001 Auto
GlobalVariable Property nade_StopCrime Auto
GlobalVariable Property nade_StripStage Auto
GlobalVariable Property nade_NumSpect Auto
GlobalVariable Property nade_NumSpectDone Auto
Scene Property nade_StripteaseScene Auto
Message Property nade_StripteaseMsg Auto
Message Property nade_StripteaseBondageMsg Auto
Int[] Property SlotMasks Auto
Bool UpdateProcessing = false
Bool PlayerInScene = false
Int CurrentPose = 0
Int final_tid = 0
Int[] Property RejectCount Auto




;I DELETED EVERYTHING: CHECK OLDER VERSIONS -> SPECATOR MIGHT BE INTERESTING