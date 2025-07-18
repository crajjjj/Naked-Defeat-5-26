;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 24
Scriptname nade_cloakquest_qf_scr Extends Quest Hidden

;BEGIN ALIAS PROPERTY NPC028
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC028 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC018
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC018 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC022
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC022 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC015
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC015 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC021
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC021 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC005
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC005 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC027
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC027 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC014
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC014 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC009
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC009 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC029
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC029 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC010
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC010 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC008
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC008 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC025
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC025 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC019
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC019 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC024
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC024 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC002
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC002 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC026
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC026 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC003
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC003 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC017
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC017 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC007
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC007 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC023
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC023 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC006
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC006 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC001
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC001 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC016
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC016 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC012
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC012 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC020
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC020 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC004
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC004 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC013
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC013 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC011
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC011 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NPC000
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NPC000 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;shutdown stage

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;un-calming NPCs

Actor a
Int j = 0

if cfgqst.ShowDebugMessages
	Debug.Notification("Un-calming NPCs...")
endif

Int i = NPC.Length
while i
	i -= 1
	if ToBeCalmed[i]
		a = NPC[i].GetReference() as Actor
		if a.IsInFaction(Factions[0])
			a.RemoveFromFaction(Factions[0])
			j += 1
		endif
	endif
endwhile

if cfgqst.ShowDebugMessages
	Debug.Notification("NPCs un-calmed: "+j)
endif

SetStage(1000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
;Function Fragment_11()
;BEGIN CODE
;setting captor alias

;qst.Alias_Talker.ForceRefTo(Captor)
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
;Function Fragment_13()
;BEGIN CODE
;re-stripping captor if necessary
;
;if ToBeStripped[CaptorIndex]
;	Strip(Captor as Actor)
;	if cfgqst.ShowDebugMessages
;		Debug.Notification("Captor is stripped again.")
;	endif
;endif
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;calming NPCs

Actor a
Int j = 0

if cfgqst.ShowDebugMessages
	Debug.Notification("Calming NPCs...")
endif

Int i = NPC.Length
while i
	i -= 1
	if ToBeCalmed[i]
		a = NPC[i].GetReference() as Actor
		a.AddToFaction(Factions[0])
		a.StopCombat()
		j += 1
	endif

endwhile

if cfgqst.ShowDebugMessages
	Debug.Notification("NPCs calmed: "+j)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
;Function Fragment_9()
;BEGIN CODE
;initializing

;DeadFound = 0
;DeadStripped = 0
;LivingFound = 0
;LivingStripped = 0
;FollowerFound = 0
;CaptorCount = 0
;CaptorIndex = -1
;SpiderIndex = -1
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
;Function Fragment_1()
;BEGIN CODE
;enumerating and stripping NPCs
;Actor a
;
;if cfgqst.ShowDebugMessages
;	Debug.Notification("Stripping NPCs...")
;endif
;
;Bool c
;
;Int i = NPC.Length
;while i
;	i -= 1
;	ToBeStripped[i] = false
;	ToBeCalmed[i] = false
;	a = NPC[i].GetReference() as Actor
;
;	if a
;;		if a.IsPlayerTeammate() || a.IsInFaction(Factions[1]) || a.IsInFaction(Factions[2]) || a.IsInFaction(Factions[3])
;;		if a.IsInFaction(Factions[1]) || a.IsInFaction(Factions[2]) || a.IsInFaction(Factions[3])
;		if (a.GetFactionRank(Factions[1]) >= 0) || (a.GetFactionRank(Factions[2]) >= 0) || (a.GetFactionRank(Factions[3]) >= 0)
;			FollowerFound += 1
;			if Utility.RandomInt(1, 100) <= cfgqst.FollowerProb
;				ToBeStripped[i] = true
;				StripFollower(a)
	;		endif
	;	else
	;		c = a.HasKeyword(ActorTypeCreature)
;			if a.IsDead()
;
;				DeadFound += 1
;				if !c && (Utility.RandomInt(1, 100) <= cfgqst.DeadProb)
;					DeadStripped += 1
;					ToBeStripped[i] = true
;					StripDead(a)
;				endif
;
;			else							;living
;
;				LivingFound += 1
;
;				if a.IsHostileToActor(PlayerRef)
;					ToBeCalmed[i] = true
;					if !c
;						Captors[CaptorCount] = i
;						CaptorCount += 1
;					endif
;				endif
;
;;				if (SpiderIndex < 0) && c && ((a.GetBaseObject() as ActorBase).GetRace() == SpiderRace)
	;			if (SpiderIndex < 0) && c && (a.GetLeveledActorBase().GetRace() == SpiderRace)
	;				SpiderIndex = i
	;			endif
;
;				if !c && (Utility.RandomInt(1, 100) <= cfgqst.LivingProb)
;					LivingStripped += 1
;					ToBeStripped[i] = true
;					Strip(a)
;				endif						;stripping living npcs
;
;			endif						;dead or living
;		endif					;follower or not
;	endif				;valid actor
;
;endwhile
;
;if CaptorCount
;	CaptorIndex = Captors[Utility.RandomInt(0, CaptorCount - 1)]
;	Captor = NPC[CaptorIndex].GetReference()
;endif
;
;if cfgqst.ShowDebugMessages
;	Debug.Notification("NPCs stripped: "+(DeadStripped+LivingStripped+FollowerFound)+"/"+(DeadFound+LivingFound+FollowerFound)+" (living: "+LivingStripped+"/"+LivingFound+", dead: "+DeadStripped+"/"+DeadFound+", followers: " +FollowerFound+"/"+FollowerFound+")")
;endif
;END CODE
;EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
;Function Fragment_23()
;BEGIN CODE
;setting captor reference

;Captor = NPC[SpiderIndex].GetReference()
;END CODE
;EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
ReferenceAlias[] Property NPC Auto
;Bool[] Property ToBeStripped Auto
Bool[] Property ToBeCalmed Auto
Keyword[] Property Keywords Auto
ObjectReference Property SafeContainer Auto
Keyword Property ActorTypeCreature Auto
Faction[] Property Factions Auto
;Race Property SpiderRace Auto
nade_configquest_scr Property cfgqst Auto
nade_errandquest_qf_scr Property qst Auto
;Outfit Property zadEmptyOutfit Auto

ObjectReference Property Captor Auto
;Int Property DeadFound Auto
;Int Property DeadStripped Auto
;Int Property LivingFound Auto
;Int Property LivingStripped Auto
Int Property FollowerFound Auto
;Int Property SpiderIndex Auto
Int Property CaptorCount Auto
Int Property CaptorIndex Auto
Int[] Property Captors Auto

;Function StripDead(Actor akTarget)
;	Int i
;	Form frm	
;
;	i = akTarget.GetNumItems()
;	while (i > 0)
;		i -= 1
;		frm = akTarget.GetNthForm(i)
;		if frm && !frm.HasKeyword(Keywords[0]) && (frm.HasKeyword(Keywords[1]) || frm.HasKeyword(Keywords[2]) || frm.HasKeyword(Keywords[3]) || frm.HasKeyword(Keywords[4]))
;			akTarget.RemoveItem(frm, akTarget.GetItemCount(frm))
;		endif
;	endwhile
;
;EndFunction

;Function StripFollower(Actor akTarget)
;	ObjectReference o
;	
;	int i = cfgqst.IndexOfActor(akTarget, cfgqst.Followers)
;	if i>=0
;		o = cfgqst.FollowerContainers[i]
;	else
;		int j = cfgqst.IndexOfNone(cfgqst.Followers)
;		if j >= 0
;			ActorBase ab = akTarget.GetActorBase()
;			o = cfgqst.FollowerContainers[j]
;			cfgqst.Followers[j] = akTarget
;			cfgqst.Outfits[j] = ab.GetOutfit()
;			ab.SetOutfit(zadEmptyOutfit)
;		else
;			o = SafeContainer
;		endif
;	endif	
;
;	akTarget.RemoveAllItems(o, false, false)
;
;EndFunction

;Function Strip(Actor akTarget)
;	Form frm		
;	Int i = 30
;
;	while i >= 0
;		frm = akTarget.GetWornForm(Armor.GetMaskForSlot(i + 30))
;		if frm && !frm.HasKeyword(Keywords[0]) && (frm.HasKeyword(Keywords[1]) || frm.HasKeyword(Keywords[2]) || frm.HasKeyword(Keywords[3]))
;			if akTarget.IsEquipped(frm)
;				akTarget.UnequipItem(frm, false, true)
;			endif
;			akTarget.RemoveItem(frm,  akTarget.GetItemCount(frm), true)
;		endif
;		i -= 1
;	endwhile
;
;EndFunction


