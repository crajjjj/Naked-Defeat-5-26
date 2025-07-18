Scriptname nade_followerquest_qf_scr Extends Quest Hidden


ReferenceAlias Property Alias_Follower01 Auto
ReferenceAlias Property Alias_Follower02 Auto
ReferenceAlias Property Alias_Follower03 Auto
ReferenceAlias Property Alias_Follower04 Auto
ReferenceAlias Property Alias_Follower05 Auto

ReferenceAlias Property Alias_Follower06 Auto
ReferenceAlias Property Alias_Follower07 Auto
ReferenceAlias Property Alias_Follower08 Auto
ReferenceAlias Property Alias_Follower09 Auto
ReferenceAlias Property Alias_Follower10 Auto


;ReferenceAlias Property Follower Auto 
ReferenceAlias[] Property NPC Auto			;references NPCs, most likely the NPCs in the area based on the Conditions in ESP

Faction Property CalmFaction Auto
Faction Property FollowerScanFaction Auto					;THIS ADDS THE NPC TO THE PLAYER ALLY FACTION.
Faction Property CurrentFollowerFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property DefeatFaction Auto			
Faction Property zbfFactionSlave Auto
Faction Property SexLabForbiddenActors Auto
Faction Property FactionDefeat02 Auto
Faction Property NadeFollower01Faction Auto

Keyword Property ActorTypeNPC Auto

nade_configquest_scr Property cfgqst Auto
nade_capturequest_qf_scr Property capqst Auto
SexLabFramework Property SexLab Auto
slaFrameworkScr Property sla Auto		;aroused

String Property Name_Follower01 Auto
String Property Name_Follower02 Auto
String Property Name_Follower03 Auto
String Property Name_Follower04 Auto
String Property Name_Follower05 Auto

String Property Name_Follower06 Auto
String Property Name_Follower07 Auto
String Property Name_Follower08 Auto
String Property Name_Follower09 Auto
String Property Name_Follower10 Auto

Actor Property Actor_Follower01 Auto
Actor Property Actor_Follower02 Auto
Actor Property Actor_Follower03 Auto
Actor Property Actor_Follower04 Auto
Actor Property Actor_Follower05 Auto

Actor[] Property NakedFollower Auto
int Property NakedFollowerCount Auto

int Property Follower01_Helmet31 Auto
int Property Follower01_Body32 Auto
int Property Follower01_Hands33 Auto
int Property Follower01_Feet37 Auto
int Property Follower01_Circlet42 Auto
int Property Follower01_BikiniBottom52 Auto
int Property Follower01_BikiniThigh53 Auto

int Property Follower02_Helmet31 Auto
int Property Follower02_Body32 Auto
int Property Follower02_Hands33 Auto
int Property Follower02_Feet37 Auto
int Property Follower02_Circlet42 Auto
int Property Follower02_BikiniBottom52 Auto
int Property Follower02_BikiniThigh53 Auto

;Logic: we save int 0 = Follower cannot have the item. int = 1 follower has and wears the item. int = 2 follower has the item but does not wear it (maybe allows several outfits).

	;MAIN SLOTS:
	;31 - Hair / HELMET or 
	;42 - Circlet
	;32 - BODY
	;33 - HANDS	
	;37 - FEET	
	;52	- Bikini Bottom


Quest Property qst1 Auto		;calmquest

;-----------------------------------------------------------------------------------------------------------------------------------

Event OnUpdate()		;#update

	;New Primary Follower Maintenance.
	;keeps Followers naked or partially dressed depending on the saved values
	FollowerStripUpdate()
	RegisterForSingleUpdate(5.0)
	
	;NymTrace("NakedFollowerCount: "+NakedFollowerCount)
	
	;ADD Arousal check and Dice Roll for Follower Fucks Player! 

EndEvent 


Function FollowerStripUpdate()

	int i = NakedFollowerCount
	
		while i > 0
			i -= 1 
			if NakedFollower[0] 
			;NymTrace("NakedFollower[0] FOUND") 
				if Follower01_Helmet31 == 0
				cfgqst.Strip(31, NakedFollower[0] ) 
				elseif Follower01_Body32 == 0
				cfgqst.Strip(32, NakedFollower[0] ) 
				elseif Follower01_Hands33 == 0
				cfgqst.Strip(33, NakedFollower[0] ) 		
				elseif Follower01_Feet37 == 0
				cfgqst.Strip(37, NakedFollower[0] ) 					
				elseif Follower01_Circlet42 == 0
				cfgqst.Strip(42, NakedFollower[0] ) 
				elseif Follower01_BikiniBottom52 == 0
				cfgqst.Strip(52, NakedFollower[0] ) 
				elseif Follower01_BikiniThigh53 == 0
				cfgqst.Strip(53, NakedFollower[0] ) 
				endif 
			elseif NakedFollower[1] 
				if Follower02_Helmet31 == 0
				cfgqst.Strip(31, NakedFollower[1]) 
				elseif Follower02_Body32 == 0
				cfgqst.Strip(32, NakedFollower[1]) 
				elseif Follower02_Hands33 == 0
				cfgqst.Strip(33, NakedFollower[1]) 		
				elseif Follower02_Feet37 == 0
				cfgqst.Strip(37, NakedFollower[1]) 					
				elseif Follower02_Circlet42 == 0
				cfgqst.Strip(42, NakedFollower[1]) 
				elseif Follower02_BikiniBottom52 == 0
				cfgqst.Strip(52, NakedFollower[1]) 
				elseif Follower02_BikiniThigh53 == 0
				cfgqst.Strip(53, NakedFollower[1]) 
				endif 			
			endif 
		endwhile 			
			
EndFunction 


Bool Function IsPresentFollower(actor akActor) ; OLD DELETE !!!!!!!!!!!!!!!!

	if Actor_Follower01 && (Actor_Follower01.GetDistance(cfgqst.PlayerRef) < 10000) && (akActor == Actor_Follower01)
	return true
	elseif Actor_Follower02 && (Actor_Follower02.GetDistance(cfgqst.PlayerRef) < 10000) && (akActor == Actor_Follower02)
	return true
	elseif Actor_Follower03 && (Actor_Follower03.GetDistance(cfgqst.PlayerRef) < 10000) && (akActor == Actor_Follower03)
	return true
	elseif Actor_Follower04 && (Actor_Follower04.GetDistance(cfgqst.PlayerRef) < 10000) && (akActor == Actor_Follower04)
	return true
	elseif Actor_Follower05 && (Actor_Follower05.GetDistance(cfgqst.PlayerRef) < 10000) && (akActor == Actor_Follower05)
	return true
	else
	return false
	endif 
EndFunction 


Bool Function IsFollowerPresent()
	
	int i = NakedFollowerCount
	bool FollowerPresent = false
	while (i > 0) && !FollowerPresent
	i -= 1
		if IsWithUs_Follower(i)
		FollowerPresent = true
		endif 
	endwhile
	return FollowerPresent
EndFunction

	
Bool Function IsWithUs_Follower(int i)	
	NymTrace("IsWithUs_Follower("+i+")")
	if NakedFollower[i]
		if NakedFollower[i].GetDistance(cfgqst.PlayerRef) < 10000
		NymTrace("IsWithUs_Follower TRUE("+i+")")
		return true 
		else
		NymTrace("IsWithUs_Follower FALSE("+i+")")
		return false
		endif 
	else
	NymTrace("IsWithUs_Follower NONE("+i+")")
	return false
	endif 

EndFunction 

Bool Function IsTravellingWithUsFollower(String sNumber)
	NymTrace("IsTravellingWithUsFollower("+sNumber+")")
	if sNumber == "01" 
		if Actor_Follower01
			if Actor_Follower01.GetDistance(cfgqst.PlayerRef) < 10000
			return true 
			else
			return false
			endif 
		else
		return false 
		endif 
	elseif sNumber == "02" 
		if Actor_Follower02
			if Actor_Follower02.GetDistance(cfgqst.PlayerRef) < 10000
			return true 
			else
			return false
			endif 
		else
		return false 
		endif
	elseif sNumber == "03" 
		if Actor_Follower03
			if Actor_Follower03.GetDistance(cfgqst.PlayerRef) < 10000
			return true 
			else
			return false
			endif 
		else
		return false 
		endif 
	elseif sNumber == "04" 
		if Actor_Follower04
			if Actor_Follower04.GetDistance(cfgqst.PlayerRef) < 10000
			return true 
			else
			return false
			endif 
		else
		return false 
		endif 
	elseif sNumber == "05" 
		if Actor_Follower05
			if Actor_Follower05.GetDistance(cfgqst.PlayerRef) < 10000
			return true 
			else
			return false
			endif 
		else
		return false 
		endif 
	else
	return false
	endif 

EndFunction 

Bool Function Follower01_Present()

	if Actor_Follower01
		if Actor_Follower01.GetDistance(cfgqst.PlayerRef) < 10000
		return true 
		else
		return false
		endif 
	else
	return false 
	endif 

EndFunction 

Bool Function Follower02_Present()

	if Actor_Follower02
		if Actor_Follower02.GetDistance(cfgqst.PlayerRef) < 10000
		return true 
		else
		return false
		endif
	else
	return false 
	endif 

EndFunction 

Bool Function Follower03_Present()

	if Actor_Follower03
		if Actor_Follower03.GetDistance(cfgqst.PlayerRef) < 10000
		return true 
		else
		return false
		endif
	else
	return false 
	endif 

EndFunction 

Bool Function Follower04_Present()

	if Actor_Follower04
		if Actor_Follower04.GetDistance(cfgqst.PlayerRef) < 10000
		return true 
		else
		return false
		endif
	else
	return false 
	endif 

EndFunction 

Bool Function Follower05_Present()

	if Actor_Follower05
		if Actor_Follower05.GetDistance(cfgqst.PlayerRef) < 10000
		return true 
		else
		return false
		endif
	else
	return false 
	endif 

EndFunction 


Function Fragment_17()	;						;############ STAGE 11 ############							
;EMPTY
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------


Function Fragment_19()								;############ STAGE 12 ############	
;EMPTY
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------


Function Fragment_1()						;	#END			;############ STAGE 1000 ############	#1000					
		
	
	Name_Follower01 = "empty"
	Name_Follower02 = "empty"
	Name_Follower03 = "empty"
	Name_Follower04 = "empty"
	Name_Follower05 = "empty"
	
	ShowDebugTrace("NAKED DEFEAT: followerquest stage 1000 (END)")	
	ShowDebugNotification("NAKED DEFEAT: followerquest stage 1000 (END)")
	Stop()
	
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------


Function Fragment_8()		;############ STAGE 500 ############	
;EMPTY
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------


Function Fragment_15()							;############ STAGE 13 ############		
Debug.Trace("NAKED DEFEAT followerquest: stage 13")
;EMPTY
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------

Function Fragment_20()							;############ STAGE 14 ############		
Debug.Trace("NAKED DEFEAT followerquest: stage 14")
;EMPTY
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------

Function Fragment_3()				;			;############ STAGE 10 ;############

ShowDebugTrace("NAKED DEFEAT followerquest: stage 10 (START)")	
ShowDebugNotification("NAKED DEFEAT: followerquest stage 10 (START)")		

;SetStage(600) ;send to waiting stage
	
EndFunction


;-----------------------------------------------------------------------------------------------------------------------------------

Function Fragment_13()     ;############ STAGE 600 ############		

Debug.Trace("NAKED DEFEAT followerquest: stage 600 (FollowerScan())")	

	Name_Follower01 = "empty"
	Name_Follower02 = "empty"
	Name_Follower03 = "empty"
	Name_Follower04 = "empty"
	Name_Follower05 = "empty"

FollowerScan()	

	NakedFollower = new Actor[5]					
	NakedFollower[0] = Actor_Follower01						
	NakedFollower[1] = Actor_Follower02						
	NakedFollower[2] = Actor_Follower03						
	NakedFollower[3] = Actor_Follower04	
	NakedFollower[4] = Actor_Follower05	


;and then wait :-)
	RegisterForSingleUpdate(5.0)

EndFunction


Bool Function ValidateActorAsFollower(actor akactor) 

	int TempGender 
	Race TempRaceHorseA 
	Race TempRaceHorseB 
	Race ActorRace 

	if akactor

	TempGender = Sexlab.GetGender(akactor)
	TempRaceHorseA = (Game.GetFormFromFile(0x000DE505, "Skyrim.esm") As Race)
	TempRaceHorseB = (Game.GetFormFromFile(0x000131FD, "Skyrim.esm") As Race)
	ActorRace = akactor.GetRace()
		 

		if TempGender == 2 
		Debug.Trace("NAKED DEFEAT followerquest: Actor INVALID (is a Creature)")	
		return false 
		endif 
		
		if !ActorRace
		Debug.Trace("NAKED DEFEAT followerquest: Actor INVALID (has no Race)")
		return false
		endif 
		
		if (ActorRace == TempRaceHorseA) || (ActorRace == TempRaceHorseB)
		Debug.Trace("NAKED DEFEAT followerquest: Actor INVALID (is a Horse)")
		return false
		endif 
		
		if TempGender < 2
		Debug.Trace("NAKED DEFEAT followerquest: Actor VALID (is Male or Female)")
		return true 
		endif 
	else 
	Debug.Trace("NAKED DEFEAT followerquest: Actor INVALID (#ERROR Actor is none/false)")
	return false
	endif 


EndFunction 

Function FollowersStripWeapons()

	if Actor_Follower01
	
		if Actor_Follower01.GetEquippedWeapon()
		Actor_Follower01.UnequipItem(Actor_Follower01.GetEquippedWeapon(), false, true)
		endif
	endif 

	if Actor_Follower02
		if Actor_Follower02.GetEquippedWeapon(true)
		Actor_Follower02.UnequipItem(Actor_Follower02.GetEquippedWeapon(true), false, true)
		endif
	endif 

EndFunction

Function DebugFactions(actor akactor)


	if akactor.IsInFaction(cfgqst.CrawlFaction)
	akactor.RemoveFromFaction(cfgqst.CrawlFaction)
	endif 
	if akactor.IsInFaction(cfgqst.ProtectedActorFaction)
	akactor.RemoveFromFaction(cfgqst.ProtectedActorFaction)
	endif 
	if akactor.IsInFaction(cfgqst.nade_DefeatFaction)
	akactor.RemoveFromFaction(cfgqst.nade_DefeatFaction)
	endif 
	akactor.ClearExpressionOverride()
	MfgConsoleFunc.ResetPhonemeModifier(akactor)	

EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------

Function FollowerScan()			; #FollowerScan()
	
	Actor a									
	Int i = NPC.Length						
		cfgqst.FollowerCount = 0
		Debug.Trace("NAKED DEFEAT followerquest: FollowerScan (ON) #ACTOR# LIST:")
		while i 	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor	
		

				;fill in names ---> needs to be here so it can be filled with "none" if theres no follower (hopefully? -.-) --- test
				
			if ValidateActorAsFollower(a) 	
				if i == 0 		;Actor001
				
					if a 

					DebugFactions(a)

					Name_Follower01 = cfgqst.GetLeveledActorBaseName(a)
		
						if Name_Follower01 == "Serana" 
							if a.GetDistance(cfgqst.PlayerRef) < 500
							cfgqst.FollowerCount += 1
							NakedFollowerCount +=1
							Debug.Trace("NAKED DEFEAT Follower #01: "+Name_Follower01)
							Actor_Follower01 = a	
							a.AddToFaction(NadeFollower01Faction)
							ScreenMessage("Serana joined your ranks")
							else 
							ScreenMessage("Serana is too far away. Get closer to add her as follower")
							endif 
						else
						cfgqst.FollowerCount += 1
						NakedFollowerCount +=1
						Debug.Trace("NAKED DEFEAT Follower #01: "+Name_Follower01)
						Actor_Follower01 = a	
						a.AddToFaction(NadeFollower01Faction)
						endif 

					else
					Name_Follower01 = "empty"
					endif			
				elseif i == 1	;Actor002
				
					if a 
					Name_Follower02 = cfgqst.GetLeveledActorBaseName(a)
		
						if Name_Follower02 == "Serana" 
							if a.GetDistance(cfgqst.PlayerRef) < 500
							cfgqst.FollowerCount += 1
							NakedFollowerCount +=1
							Debug.Trace("NAKED DEFEAT Follower #02: "+Name_Follower02)
							Actor_Follower02 = a	
							a.AddToFaction(NadeFollower01Faction)
							ScreenMessage("Serana joined your ranks")
							else 
							ScreenMessage("Serana is too far away. Get closer to add her as follower")
							endif 
						else
						cfgqst.FollowerCount += 1
						NakedFollowerCount +=1
						Debug.Trace("NAKED DEFEAT Follower #02: "+Name_Follower02)
						Actor_Follower02 = a
						a.AddToFaction(NadeFollower01Faction)						
						endif 
						
					else
					Name_Follower02 = "empty"
					endif
				elseif i == 2	;Actor003
				
					if a 
					Name_Follower03 = cfgqst.GetLeveledActorBaseName(a)
		
						if Name_Follower03 == "Serana" 
							if a.GetDistance(cfgqst.PlayerRef) < 500
							cfgqst.FollowerCount += 1
							NakedFollowerCount +=1
							Debug.Trace("NAKED DEFEAT Follower #03: "+Name_Follower03)
							;Actor_Follower03 = a	
							a.AddToFaction(NadeFollower01Faction)
							ScreenMessage("Serana joined your ranks")
							else 
							ScreenMessage("Serana is too far away. Get closer to add her as follower")
							endif 
						else
						cfgqst.FollowerCount += 1
						NakedFollowerCount +=1
						a.AddToFaction(NadeFollower01Faction)	
						Debug.Trace("NAKED DEFEAT Follower #03: "+Name_Follower03)
					;	Actor_Follower03 = a							
						endif 
					else
					Name_Follower03 = "empty"
					endif
				elseif i == 3	;Actor004
				
					if a 
					Name_Follower04 = cfgqst.GetLeveledActorBaseName(a)
		
						if Name_Follower04 == "Serana" 
							if a.GetDistance(cfgqst.PlayerRef) < 500
							cfgqst.FollowerCount += 1
							NakedFollowerCount +=1
							Debug.Trace("NAKED DEFEAT Follower #04: "+Name_Follower04)
							;Actor_Follower04 = a
							a.AddToFaction(NadeFollower01Faction)	
							ScreenMessage("Serana joined your ranks")
							else 
							ScreenMessage("Serana is too far away. Get closer to add her as follower")
							endif 
						else
						cfgqst.FollowerCount += 1
						NakedFollowerCount +=1
						Debug.Trace("NAKED DEFEAT Follower #04: "+Name_Follower04)
						a.AddToFaction(NadeFollower01Faction)
					;	Actor_Follower04 = a							
						endif 
					else
					Name_Follower04 = "empty"
					endif
				elseif i == 4	;Actor005
				
					if a 
					Name_Follower05 = cfgqst.GetLeveledActorBaseName(a)
		
						if Name_Follower05 == "Serana" 
							if a.GetDistance(cfgqst.PlayerRef) < 500
							cfgqst.FollowerCount += 1
							NakedFollowerCount +=1
							Debug.Trace("NAKED DEFEAT Follower #05: "+Name_Follower05)
							;Actor_Follower05 = a
							a.AddToFaction(NadeFollower01Faction)							
							ScreenMessage("Serana joined your ranks")
							else 
							ScreenMessage("Serana is too far away. Get closer to add her as follower")
							endif 
						else
						cfgqst.FollowerCount += 1
						NakedFollowerCount +=1
						Debug.Trace("NAKED DEFEAT Follower #05: "+Name_Follower05)
					;	Actor_Follower05 = a	
						a.AddToFaction(NadeFollower01Faction)					
						endif 
					else
					Name_Follower05 = "empty"
					endif
				endif
				
				if a 	
					if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT followerquest: FollowerScan (ON) ACTOR#"+i+": "+cfgqst.GetActorInfo(a))		;#DEBUG
					else
					Debug.Trace("NAKED DEFEAT followerquest: #FollowerScan (ON) ACTOR#"+i+": "+cfgqst.GetLeveledActorBaseName(a))		;#DEBUG
					endif
				endif	
			endif 
		endwhile
		
		;is this correct? sigh
		if NakedFollowerCount == 1
		ShowScreenMessage("Your current Naked Defeat Followers: "+Name_Follower01)
		elseif NakedFollowerCount == 2
		ShowScreenMessage("Your current Naked Defeat Followers: "+Name_Follower01+" :: "+Name_Follower02)
		elseif NakedFollowerCount == 3
		ShowScreenMessage("Your current Naked Defeat Followers: "+Name_Follower01+" :: "+Name_Follower02+" :: "+Name_Follower03)
		elseif NakedFollowerCount == 4
		ShowScreenMessage("Your current Naked Defeat Followers: "+Name_Follower01+" :: "+Name_Follower02+" :: "+Name_Follower03+" :: "+Name_Follower04)
		elseif NakedFollowerCount == 5
		ShowScreenMessage("Your current Naked Defeat Followers: "+Name_Follower01+" :: "+Name_Follower02+" :: "+Name_Follower03+" :: "+Name_Follower04+" :: "+Name_Follower05)
		endif
		;Debug.Notification("NAKED DEFEAT Followers found: "+cfgqst.FollowerCount)	
		
EndFunction

Bool Function PartyDown()

	Debug.Trace("NAKED DEFEAT followerquest: PartyDown()")

	Actor a									
	Int i = NPC.Length		

	bool AllDown = false
		
		
		while i 	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor		

			if a 	
				if a.IsBleedingOut() 
				AllDown = true
				else
				AllDown = false
				endif		
			endif	
			
		endwhile
		
	if AllDown
	Debug.trace("NAKED DEFEAT followerquest: Followers all down")
	return true	
	else
	Debug.trace("NAKED DEFEAT followerquest: Followers still on their feet")
	return false
	endif
	
EndFunction	


Bool Function PartyInCombat()

	Debug.Trace("NAKED DEFEAT followerquest: PartyInCombat()")

	Actor a									
	Int i = NPC.Length		

	bool PartyInCombat = false
		
		while i 	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor		

			if a 	
				;check if follower is in combat AND if it has a weapon out
				;why? because it seems often followers are still in combat but no enemy is nearby and they sheath their weapons
				;for naked defeats purpose I count this as "follower is not in combat anymore"
				if a.IsInCombat() && a.IsWeaponDrawn()
				PartyInCombat = true
				else
				PartyInCombat = false
				endif		
			endif	
			
		endwhile
	
if cfgqst.DefeatQuestRunning
	if PartyInCombat
;	Debug.trace("NAKED DEFEAT followerquest: #ERROR Followers fighting during Defeat Scenario")
	return true	
	else
	;Debug.trace("NAKED DEFEAT followerquest: Followers NOT fighting during Defeat Scenario")
	return false
	endif
else
	if PartyInCombat
;	Debug.trace("NAKED DEFEAT followerquest: Followers still fighting")
	return true	
	else
;	Debug.trace("NAKED DEFEAT followerquest: Followers not fighting")
	return false
	endif
endif
EndFunction

Bool Function PartyInCombatDuringDefeat()

	;Debug.Trace("NAKED DEFEAT followerquest: PartyInCombatDuringDefeat()")

	Actor a									
	Int i = NPC.Length		

	bool PartyInCombat = false
		
		while i 	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor		

			if a 	
				;check if follower is in combat AND if it has a weapon out
				;why? because it seems often followers are still in combat but no enemy is nearby and they sheath their weapons
				;for naked defeats purpose I count this as "follower is not in combat anymore"
				if a.IsInCombat() ;&& a.IsWeaponDrawn()
				PartyInCombat = true
				else
				PartyInCombat = false
				endif		
			endif	
			
		endwhile
	
if cfgqst.DefeatQuestRunning
	if PartyInCombat
	Debug.trace("NAKED DEFEAT followerquest: #ERROR Followers fighting during Defeat Scenario")
	return true	
	else
	;Debug.trace("NAKED DEFEAT followerquest: Followers NOT fighting during Defeat Scenario")
	return false
	endif
else
	if PartyInCombat
	Debug.trace("NAKED DEFEAT followerquest: Followers still fighting")
	return true	
	else
	;Debug.trace("NAKED DEFEAT followerquest: Followers not fighting")
	return false
	endif
endif
EndFunction

Function EndFollowerQuest()

	SetStage(1000)
	
EndFunction


Function StartFollowerQuest()
	
	Start()
	SetStage(600)
	
EndFunction


Function ShowDebugTrace(String Text1)
if cfgqst.ShowDebugMessages
Debug.Trace(Text1)
endif
EndFunction

Function ScreenMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT followerquest: (#msg) "+Text3)
EndFunction

Function ShowDebugNotification(String Text2)
if cfgqst.ShowDebugMessages
Debug.Notification(Text2)
endif
EndFunction

Function ShowScreenMessage(String Text3)

Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
Debug.trace("NAKED DEFEAT followerquest: (#msg) "+Text3)

EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT followerquest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.IsNymrasGame()
	return TRUE
	else
	return false
	endif 
EndFunction
