;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 30
Scriptname nade_wizardquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY WizardLabMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WizardLabMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wizard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wizard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WizardMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WizardMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerLabMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerLabMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Cat
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Cat Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bowl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bowl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Paddle
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Paddle Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Door
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Door Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY chest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_chest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Cane
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Cane Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Furniture
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Furniture Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WEAPON
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WEAPON Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;player needs to retrieve their belongings

SetObjectiveDisplayed(100, true)
Alias_Chest.GetReference().Lock(false)
WizardScene.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;whipmarks

if cfgqst.WhipMarks
	if WeaponIndex
		if (TatNames1[FurnitureIndex] != "<none>")
			cfgqst.AddTattoo("Cane Marks", TatNames1[FurnitureIndex])
		endif
		if (TatNames2[FurnitureIndex] != "<none>")
			cfgqst.AddTattoo("Cane Marks", TatNames2[FurnitureIndex])
		endif
	else
		if (TatNames1[FurnitureIndex] != "<none>")
			cfgqst.AddTattoo("Cane Marks", TatNames3[FurnitureIndex])
		endif
		if (TatNames2[FurnitureIndex] != "<none>")
			cfgqst.AddTattoo("Cane Marks", TatNames4[FurnitureIndex])
		endif
	endif
	cfgqst.SyncTattoos()
endif
cfgqst.SexLabMoan(cfgqst.PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;player is using the furniture

SetObjectiveCompleted(30, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;player needs to use the furniture

SetObjectiveDisplayed(30, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;player needs to undress

Alias_Chest.GetReference().Lock(false)
SetObjectiveDisplayed(20, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;finalization

ObjectReference o

SetObjectiveCompleted(200, true)

Alias_Wizard.GetReference().MoveTo(Alias_WizardMarker.GetReference())
cfgqst.PlayerRef.MoveTo(Alias_PlayerMarker.GetReference())
if NeedRemoveFromFaction
	cfgqst.PlayerRef.RemoveFromFaction(zbfFactionSlave)
endif

o = Alias_Wizard.GetReference()
o.RemoveItem(Alias_Weapon.GetReference(), 1, true, None)
Alias_Weapon.Clear()
Weapons[WeaponIndex].Clear()

o = Alias_WizardMarker.GetReference()
if o
	o.Delete()
	Alias_WizardMarker.Clear()
endif
o = Alias_PlayerMarker.GetReference()
if o
	o.Delete()
	Alias_PlayerMarker.Clear()
endif
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0

;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;player has put their items in the chest

ObjectReference c = Alias_Chest.GetReference()
cfgqst.PlayerRef.RemoveAllItems(c, true, false)
c.SetOpen(false)
c.Lock(true)
SetObjectiveCompleted(20, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;initialization

SetObjectiveDisplayed(20, false)
SetObjectiveDisplayed(30, false)
SetObjectiveDisplayed(50, false)
SetObjectiveDisplayed(100, false)
SetObjectiveDisplayed(200, false)
SetObjectiveCompleted(20, false)
SetObjectiveCompleted(30, false)
SetObjectiveCompleted(50, false)
SetObjectiveCompleted(100, false)
SetObjectiveCompleted(200, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
;Function Fragment_25()
;BEGIN CODE
;player is using the sample collector

;cfgqst.PlayerRef.AddItem(Pee, 1, true)
;cfgqst.PlayerRef.EquipItem(Pee, true, true)
;PeeInstance = PeeSound.Play(cfgqst.PlayerRef)
;if PeeInstance
;	Sound.SetInstanceVolume(PeeInstance, 1.0)
;endif
;SetObjectiveCompleted(50, true)
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;player needs to use the door

SetObjectiveCompleted(100, true)
SetObjectiveDisplayed(200, true)
Alias_Door.GetReference().Lock(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
;player needs to use the sample collector

SetObjectiveDisplayed(50, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
;Function Fragment_29()
;BEGIN CODE
;device removal
;
;if PeeInstance
;	Sound.StopI;nstance(PeeInstance)
;endif
;cfgqst.PlayerRef.RemoveItem(Pee, cfgqst.PlayerRef.GetItemCount(Pee), true, None)
;Int i = qst.Keywords.Length - 2
;while i
;	i -= 1
;	cfgqst.DestroyGenericDeviceByKeyword(qst.Keywords[i])
;endwhile
;END CODE
;EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Faction Property zbfFactionSlave Auto
Scene Property WizardScene Auto
nade_configquest_scr Property cfgqst Auto
nade_greybeardquest_qf_scr Property qst Auto
;zadlibs Property libs Auto
;Armor Property Pee Auto
;Sound Property PeeSound Auto
ObjectReference[] Property Furnitures Auto
ReferenceAlias[] Property Weapons Auto
String[] Property TatNames1 Auto
String[] Property TatNames2 Auto
String[] Property TatNames3 Auto
String[] Property TatNames4 Auto
Bool NeedRemoveFromFaction
Int FurnitureIndex
Int WeaponIndex
;Int PeeInstance
