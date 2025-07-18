;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 70
Scriptname nade_errandquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY TrapCaptiveMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapCaptiveMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapMarker0
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapMarker0 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SettlementMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SettlementMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Settlement
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Settlement Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapContainer0
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapContainer0 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditLocCenter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditLocCenter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY bandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_bandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CapitalCenter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CapitalCenter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Capital
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Capital Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapCenter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapCenter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Book
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Book Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_TrapLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SettlementCenter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SettlementCenter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditLoc
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_BanditLoc Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Robber
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Robber Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapContainer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapContainer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CapitalMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CapitalMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Jarl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Jarl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Talker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Talker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TrapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TrapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Receipt
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Receipt Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Steward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Steward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SafeContainer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SafeContainer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Guard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Guard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hold
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Hold Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Letter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Letter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StrippedEquipment
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StrippedEquipment Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_59
Function Fragment_59()
;BEGIN CODE
;The random guard needs a quill and an inkwell.
SetObjectiveDisplayed(60, false)
SetObjectiveDisplayed(61, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_65
Function Fragment_65()
;BEGIN CODE
;Player has beaten the lieutenant in a fair fight
SetObjectiveDisplayed(64, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
;Player has gave the Receipt to the Guard
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;Player has won the brawl
SetObjectiveCompleted(31, true)
SetObjectiveDisplayed(32, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE nade_errandquest_scr
Quest __temp = self as Quest
nade_errandquest_scr kmyQuest = __temp as nade_errandquest_scr
;END AUTOCAST
;BEGIN CODE
;"Citizen event"
SetObjectiveDisplayed(20, true, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_61
Function Fragment_61()
;BEGIN CODE
;Player has given a quill and an inkwell to the random guard.
SetObjectiveCompleted(61, true)
SetObjectiveDisplayed(60, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Player needs to talk to the thief
SetObjectiveCompleted(20, true)
SetObjectiveDisplayed(30, true, true)
Alias_SettlementMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN AUTOCAST TYPE nade_errandquest_scr
Quest __temp = self as Quest
nade_errandquest_scr kmyQuest = __temp as nade_errandquest_scr
;END AUTOCAST
;BEGIN CODE
ObjectReference o

if !Alias_Guard.GetReference()
	o = Alias_Steward.GetReference()
	if !o
		o = Alias_Jarl.GetReference()
	endif
	if o
		Alias_Guard.ForceRefTo(o)
	endif
endif

if !Alias_TrapMarker.GetReference()
	o = Alias_TrapMarker0.GetReference()
	if o
		Alias_TrapMarker.ForceRefTo(o)
	endif
endif

if !Alias_TrapContainer.GetReference()
	o = Alias_TrapContainer0.GetReference()
	if o
		Alias_TrapContainer.ForceRefTo(o)
	endif
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
;Player has the Receipt, now they need to talk to the Guard
;SetObjectiveCompleted(16, true)
;SetObjectiveCompleted(60, true)
;SetObjectiveCompleted(63, true)
SetObjectiveDisplayed(17, true, true)
Alias_CapitalMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_50
Function Fragment_50()
;BEGIN CODE
;Player has to escape from their captors
SetObjectiveDisplayed(50, true, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_67
Function Fragment_67()
;BEGIN CODE
;player needs to give the book to the random guard
SetObjectiveCompleted(62, true)
SetObjectiveDisplayed(63, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN CODE
;Player needs to talk to a random guard of the hold
SetObjectiveFailed(15, true)
SetObjectiveDisplayed(16, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Success
CompleteAllObjectives()
Game.GetPlayer().RemoveItem(Alias_StrippedEquipment.GetReference(), 1, true, None)
Alias_StrippedEquipment.Clear()
Alias_TrapCaptiveMarker.GetReference().Delete()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN AUTOCAST TYPE nade_errandquest_scr
Quest __temp = self as Quest
nade_errandquest_scr kmyQuest = __temp as nade_errandquest_scr
;END AUTOCAST
;BEGIN CODE
;"Guard event"
SetObjectiveDisplayed(15, true, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_53
Function Fragment_53()
;BEGIN CODE
;Player has to go back into the dungeon
SetObjectiveCompleted(50, true)
SetObjectiveDisplayed(51, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_56
Function Fragment_56()
;BEGIN CODE
;Player needs to find a copy of The Solitude Textbook of Writing for the guard.
SetObjectiveDisplayed(62, true, true)
SetObjectiveDisplayed(60, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Player needs to talk to the robber again
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_52
Function Fragment_52()
;BEGIN CODE
;Player has to go back to the dungeon
SetObjectiveCompleted(17, true)
SetObjectiveDisplayed(51, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN AUTOCAST TYPE nade_errandquest_scr
Quest __temp = self as Quest
nade_errandquest_scr kmyQuest = __temp as nade_errandquest_scr
;END AUTOCAST
;BEGIN CODE
;Player has reached the end of the long conversation the first time.
;Stage changes so that they will have a shortcut next time, if they walk away w/o finishing the quest.
nade_AskedThrough.SetValueInt(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Easy way to get back your equipment
SetObjectiveDisplayed(10, true, true)
SetActive(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_48
Function Fragment_48()
;BEGIN CODE
;"Bandit event"
SetObjectiveCompleted(17, true)
if Alias_BanditLoc.GetLocation()
	SetObjectiveDisplayed(40, true, true)
else
	SetObjectiveDisplayed(41, true, true)
endif
Alias_BanditMapMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_57
Function Fragment_57()
;BEGIN CODE
;The random guard cannot give the receipt to the player.
SetObjectiveCompleted(16, true)
SetObjectiveDisplayed(60, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_69
Function Fragment_69()
;BEGIN CODE
;Player has claimed the book after the brawl
SetObjectiveCompleted(64, true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property nade_AskedThrough Auto

