;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname nade_eatquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
;Function Fragment_0()
;BEGIN CODE
;Startup Stage

;cfgqst.UpdatePotions()
;cfgqst.UpdateObesitySettings()
;cfgqst.UpdateSlowdown(false, true)
;(Alias_Player.GetReference() as Actor).AddSpell(nade_ObesitySpell, false)
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
;Function Fragment_1()
;BEGIN CODE
;shutdown stage
;
;(Alias_Player.GetReference() as Actor).RemoveSpell(nade_ObesitySpell)
;cfgqst.UpdateSlowdown(false, true)

;Stop()
;END CODE
;EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

nade_configquest_scr Property cfgqst Auto
;SPELL Property nade_ObesitySpell Auto
