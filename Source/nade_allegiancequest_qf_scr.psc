;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment



Scriptname nade_allegiancequest_qf_scr Extends Quest Hidden

ReferenceAlias Property Alias_Enemy00 Auto
ReferenceAlias Property Alias_Enemy01 Auto
ReferenceAlias Property Alias_Enemy02 Auto
ReferenceAlias Property Alias_Enemy03 Auto
ReferenceAlias Property Alias_Enemy04 Auto

ReferenceAlias Property Alias_Enemy05 Auto
ReferenceAlias Property Alias_Enemy06 Auto
ReferenceAlias Property Alias_Enemy07 Auto
ReferenceAlias Property Alias_Enemy08 Auto
ReferenceAlias Property Alias_Enemy09 Auto

ReferenceAlias Property Alias_Enemy10 Auto
ReferenceAlias Property Alias_Enemy11 Auto
ReferenceAlias Property Alias_Enemy12 Auto
ReferenceAlias Property Alias_Enemy13 Auto
ReferenceAlias Property Alias_Enemy14 Auto

ReferenceAlias Property Alias_Enemy15 Auto
ReferenceAlias Property Alias_Enemy16 Auto
ReferenceAlias Property Alias_Enemy17 Auto
ReferenceAlias Property Alias_Enemy18 Auto
ReferenceAlias Property Alias_Enemy19 Auto

ReferenceAlias Property Alias_Enemy20 Auto
ReferenceAlias Property Alias_Enemy21 Auto
ReferenceAlias Property Alias_Enemy22 Auto
ReferenceAlias Property Alias_Enemy23 Auto
ReferenceAlias Property Alias_Enemy24 Auto

ReferenceAlias Property Alias_Enemy25 Auto
ReferenceAlias Property Alias_Enemy26 Auto
ReferenceAlias Property Alias_Enemy27 Auto
ReferenceAlias Property Alias_Enemy28 Auto
ReferenceAlias Property Alias_Enemy29 Auto

ReferenceAlias Property Alias_Enemy30 Auto
ReferenceAlias Property Alias_Enemy31 Auto
ReferenceAlias Property Alias_Enemy32 Auto
ReferenceAlias Property Alias_Enemy33 Auto
ReferenceAlias Property Alias_Enemy34 Auto

ReferenceAlias Property Alias_Enemy35 Auto
ReferenceAlias Property Alias_Enemy36 Auto
ReferenceAlias Property Alias_Enemy37 Auto
ReferenceAlias Property Alias_Enemy38 Auto
ReferenceAlias Property Alias_Enemy39 Auto

ReferenceAlias Property Alias_Enemy40 Auto
ReferenceAlias Property Alias_Enemy41 Auto
ReferenceAlias Property Alias_Enemy42 Auto
ReferenceAlias Property Alias_Enemy43 Auto
ReferenceAlias Property Alias_Enemy44 Auto

ReferenceAlias Property Alias_Enemy45 Auto
ReferenceAlias Property Alias_Enemy46 Auto
ReferenceAlias Property Alias_Enemy47 Auto
ReferenceAlias Property Alias_Enemy48 Auto
ReferenceAlias Property Alias_Enemy49 Auto

ReferenceAlias Property Alias_Enemy50 Auto



ReferenceAlias Property Follower Auto 
ReferenceAlias[] Property NPC Auto			;references NPCs, most likely the NPCs in the area based on the Conditions in ESP



;/


NEW IDEAS:
- add counter to "add faction" and "remove faction" and display as debug to count IN and Outfit
- increase player health by 100000 during defeat?
- add "OnHit" as trigger for allegianceQuest?
- add a cleanup Quest that removes factions nonstop? -.-
- IsInCombat a faulty way to work with?
- add compatibility for BattleFuck

NEW QUEST SYSTEM:

AllegianceQuest checks actors and determines:

- HumanDefeat (Bandits, Forsworn, etc.)
- OrkDefeat (humans with Orkrace)
- UndeadDefeat (vampires, scelettons, draugr)
- TrollDefeat
- GargoyleDefeat (to undead defeat?)
- FalmerDefeat
- RieklingDefeat
- AnimalDefeat (non predatory animals)
- AnimalPredatorDefeat (predatory animals)
- GiantDefeat
etc.

Starts new SpawnQuest
- HumanDefeat spawns Dogs, Skeevers, Horses, maybe goats
	-> mage defeat (human subtype) -> spawns elementals
- OrkDefeat spawns??? Rieklings?
- UndeadDefeat spawns Skelettons
- TrollDefeat spawns???
- FalmerDefeat spawns insects
- RieklingDefeat spawns? boarriders and vise versa
- AnimalDefeat? 
- GiantDefeat? spawns nothing


Defeatquest(allegiancequest): 	

				+Starts AllegianceQuest
				
				+StartCombatScan

Stage 10: 	+Allegiance(True)
			+StartCombatScan
			+set TCAI OFF

CombatScan:	If PC is in combat, end AllegianceQuest 

Stage 1000: end Quest, remove allegiance from all (Allegiance(False))	
			+set TCAI ON
		
Defeatquest(allegiancequest): 		
CombatScan Restarts AllegianceQuest

Calmquest End: +Stop DefeatQuestsCombatScan
				+Stop Allegiancequest (Stage 1000)
	


	
LATER:
- DISTANCECHECK
	check if actor is in rapescan distance or not
	if NOT spawn actors for rape -> start calmquest via allegiancequest? how to deal with the idles?

- add race check here?
- add guard check here?
- add dragon check here?
			
/;

Faction Property CalmFaction Auto
Faction Property AllegianceFaction Auto					;THIS ADDS THE NPC TO THE PLAYER ALLY FACTION.
Faction Property CurrentFollowerFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property DefeatFaction Auto			
;Faction Property Hirelings Auto
Faction Property zbfFactionSlave Auto
Faction Property SexLabForbiddenActors Auto
Faction Property FactionDefeat02 Auto
Faction Property NadeFollower01Faction Auto

Keyword Property ActorTypeNPC Auto

nade_followerquest_qf_scr Property folqst Auto
nade_configquest_scr Property cfgqst Auto
nade_capturequest_qf_scr Property capqst Auto
SexLabFramework Property SexLab Auto
slaFrameworkScr Property sla Auto		;aroused

Quest Property qst1 Auto		;calmquest

bool ScanOn = true ;ALLEGIANCE

int QuestID = 0


int Function Random()
return Utility.RandomInt(1,1000)
Endfunction


Function Fragment_17()	;rape ROUND 2						;############ STAGE 11 ############							

EndFunction			

Function Fragment_19()				;RAPE #ROUND 3								;############ STAGE 12 ############	


EndFunction


Function Fragment_1()						;	#END			;############ STAGE 1000 ############	#1000					
	
	Debug.Trace("NAKED DEFEAT: allegiancequest stage 1000 (END)")		
	if cfgqst.ShowDebugMessages
	Debug.Notification("NAKED DEFEAT: allegiancequest stage 1000 (END)")	
	endif
	
	cfgqst.AllegianceShutdown = false		;what is this????
;	Allegiance(false)
	Stop()
	
EndFunction


Function Fragment_8()		;############ STAGE 500 ############	
	Debug.Trace("NAKED DEFEAT allegiancequest: stage 500")			
;not in use					

EndFunction

Function Fragment_15()							;############ STAGE 13 ############		
Debug.Trace("NAKED DEFEAT allegiancequest: stage 13")
					
;not in use			


EndFunction
	
Function Fragment_20()							;############ STAGE 14 ############		
Debug.Trace("NAKED DEFEAT allegiancequest: stage 14 (WAITING)")	
;not in use		

EndFunction



Function Fragment_3()				;#START				;############ STAGE 10 ;############

QuestID = Random()

Debug.Trace("NAKED DEFEAT #allegiancequest: stage 10 (START)")
if cfgqst.ShowDebugMessages	
Debug.Notification("NAKED DEFEAT allegiancequest: stage 10 (START)")
endif
		
Allegiance(true)	;---> calming actors 
StopCombatScan = false
while AllegianceRunning
Utility.Wait(0.5)
endwhile
RegisterForSingleUpdate(0.1)	
SetStage(14) 
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------

bool StopCombatScan = false

Function Fragment_13()     ;############ STAGE 600 ############	SCAN STAGE

StopCombatScan = true
Debug.Trace("NAKED DEFEAT allegiancequest: Stage 600 (WAITING))")

EndFunction

Function CombatScan()
Debug.Trace("NAKED DEFEAT allegiancequest: CombatScan()")
	if cfgqst.FirstStartUp
	int Waiting = 20
		while (Waiting > 0) && cfgqst.FirstStartUp 		;what is this for again??? wait 20 seconds for what?
		Waiting -= 2
		Utility.Wait(2)
		endwhile
	Debug.Trace("NAKED DEFEAT allegiancequest: FirstStartUp(END)")
	cfgqst.FirstStartUp = false
	endif

	;this is looping until called to stop by End stage of Defeat
	while !StopCombatScan && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
		
		if PartyInCombat()
		StopCombatScan = true	
		else
		Utility.Wait(3.0)	;change from 2.0 to 5.0... should suffice.	
		endIf
	endWhile
	
	Allegiance(false)
	Debug.Trace("NAKED DEFEAT allegiancequest: CombatScan() AllegianceQuest (RESTART)")
	
	if (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
	SendModEvent("RestartAllegianceQuest")	
	endif	
	SetStage(1000)	
	Debug.Trace("NAKED DEFEAT allegiancequest: CombatScan(OFF)")

EndFunction



bool AllegianceRunning = false

bool OnlyHumans = true

bool Function PartyInCombat()		;#combatscan

if cfgqst.FollowerCount > 0
	if cfgqst.PlayerRef.IsInCombat() || folqst.PartyInCombatDuringDefeat()
	return true
	else
	return false
	endif
else
	if cfgqst.PlayerRef.IsInCombat() 
	return true
	else
	return false
	endif
endif
EndFunction

;------------------------------------------------------------------------------------------------------------------------------------------------------

Function Allegiance(Bool value = true)			; #allegiance
	
	;ESP
	;IsChild = FALSE 
	;IsDead = FALSE 
	;IsDisabled = FALSE 
	;IsManakinRace = FALSE 
	;IsInCombat ----> TRUE 
	;IsHostileToActor(Player) -----> TRUE 
	;-- hmm, what if we in bleedout? 
	
	;NymMessage("Allegiance ON - DefeatStatePlayer: "+cfgqst.DefeatStatePlayer) 

	AllegianceRunning = true
	OnlyHumans = true
	Actor a		
	Actor aTheEnemy = none			
	Int i = NPC.Length						
	int ActorCount = 0
	Bool NewSystem = true
	String sTempName = "empty"
	
	
	
	;GET THE ENEMY FirstStartUp
	if value
		while i && !aTheEnemy	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor		

			if a && a.IsInFaction(cfgqst.EnemyFaction)		
			aTheEnemy = a		
			sTempName = cfgqst.GetLeveledActorBaseName(a)
			Debug.Trace("NAKED DEFEAT allegiancequest: #Allegiance (The Enemy = ACTOR#"+i+": "+sTempName)	;#DEBUG
			endif

		endwhile
		
		if aTheEnemy
	;	NymMessage("The Enemy found: "+sTempName)
		else 
	;	NymMessage("The Enemy not found")
		endif 
	endif 
	


	;Allegiance(TRUE) ----> All Actors (not only enemies)
	if value		
	
		Debug.Trace("NAKED DEFEAT allegiancequest: Allegiance (ON)")
		while i 	 												
			i -= 1												
			a = NPC[i].GetReference() as Actor		

			if a 	
			sTempName = cfgqst.GetLeveledActorBaseName(a)
			
			Debug.Trace("NAKED DEFEAT allegiancequest: #Allegiance (ON) ACTOR#"+i+": "+sTempName)	;#DEBUG
			
					;-------- DEFEAT TYPE (if surrendering) -------------------------------------------------------------
					
					;---- maybe we also need this to determine defeattype of some other scenarios
					
					;check reaction of a towards "The Enemy"
					if !a.IsInFaction(cfgqst.EnemyFaction) && (a.GetFactionReaction(aTheEnemy) > 1) 
					;NymTrace("Is Ally/Friend")
					a.AddToFaction(cfgqst.EnemyFaction)
					else
					;NymTrace("Is NOT Ally/Friend")
					endif 

					if NewSystem

						if cfgqst.AllegianceScanType == "Combat Surrender Start"
						cfgqst.AllegianceScanType = "Empty"
						endif 
						if cfgqst.AllegianceScanType == "Combat Crime Surrender Start"
						cfgqst.AllegianceScanType = "Empty"
						endif 
						
						if cfgqst.DefeatViaSurrender						;IS ENEMY - in combat, hostile	
							if a.IsInCombat() && a.IsHostileToActor(cfgqst.PlayerRef)
							
								if cfgqst.PlayerRef.GetDistance(a) <= 4000 ;100 units = 1,42 m --> 14 m ca. 
								cfgqst.GetEnemyType(a)	
								cfgqst.ProxActorDetected += 1
								endif
								
								if !a.IsInFaction(cfgqst.EnemyFaction)
								a.AddToFaction(cfgqst.EnemyFaction) ;<<---- we use this to identify our enemies from combat
								;NymTrace("#NOTE: Added to Enemy Faction: "+sTempName)
								endif 

							endif
							
						;ENEMY DETECTION 	
						elseif cfgqst.AllegianceScanType == "Combat Defeat Start"
						cfgqst.AllegianceScanType = "Empty"
						;combat ends, we need as much INFO as we can get. All Actors within 10.000 Units will be scanned for combatstance and hostility
						;hope we can get even the fireball slingers from far away this way.
						
							if a.IsInCombat() && a.IsHostileToActor(cfgqst.PlayerRef)
								
								if cfgqst.PlayerRef.GetDistance(a) <= 12000
								cfgqst.GetEnemyType(a)	
								cfgqst.ProxActorDetected += 1
								endif 
								
								if !a.IsInFaction(cfgqst.EnemyFaction)
								a.AddToFaction(cfgqst.EnemyFaction) ;<<---- we use this to identify our enemies from combat
								;NymTrace("#NOTE: CombatDefeatStart - Added to Enemy Faction: "+sTempName)
								endif 

							endif
						endif 
						
					else 	
						;OLD SYSTEM ------------------------------------------
						if cfgqst.DefeatViaSurrender ;&& (cfgqst.Enemy[0] == "none")
						;Debug.Trace("NAKED DEFEAT allegiancequest: cfgqst.DefeatViaSurrender(true)")
							;if a.IsInCombat() && a.IsHostileToActor(cfgqst.PlayerRef) && (cfgqst.Enemy[5] == "none")
							if !cfgqst.IsFollower(a) && (cfgqst.PlayerRef.GetDistance(a) <= 3000)
							Debug.Trace("NAKED DEFEAT allegiancequest: START GetEnemyType()")
							cfgqst.GetEnemyType(a)	;GUIDE: this gets the enemies type (faction/racekey) to allow us to determine the DefeatType	
							endif
						endif
					endif 
					
					
						;-----------------------------------------------
					;------------------------------------------------------------------------------------
					
					a.StopCombat()		
					a.StopCombatAlarm()	

					if !a.IsInFaction(FactionDefeat02)
						a.AddToFaction(FactionDefeat02)
						;if cfgqst.ShowDebugMessages
						;Debug.Trace("NAKED DEFEAT allegiancequest: actor ADDED to FactionDefeat02: "+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (30)
						;endif
						ActorCount += 1
					endif
					
					;backup calmfaction (test)
					if !a.IsInFaction(CalmFaction)
					a.AddToFaction(CalmFaction)
					endif
					
					if a.IsAlerted()
					a.SetAlert(False)
					endif

			endif

		endwhile
		
		;-------- DEFEAT TYPE ----------
		if cfgqst.DefeatViaSurrender && cfgqst.DefeatTypeScenario != "Afterlife"
		Debug.Trace("NAKED DEFEAT allegiancequest: Starting cfgqst.GetDefeatType()")
		cfgqst.GetDefeatType()
		endif
		;-------------------------------
		
		;if cfgqst.IsNymrasGame()
	;	NymMessage("ALlegiance UPDATE TEST") 
		;endif 
		
		;if (qst1.GetStage() == 1000) && OnlyHumans && !cfgqst.DefeatViaSlavery     ;SLAVERY HAS OWN SPAWN SYSTEM

		;	if cfgqst.NymSpawning && cfgqst.AllowCreatures  
		;	Debug.Trace("NAKED DEFEAT allegiancequest: #spawn: only humans, calmquest not started, go SpawnRapers") ;#DEBUG
		;		if cfgqst.DefeatTypeGeneral == "AreHumans"
		;		cfgqst.SpawnRapers("random", false)	
		;		endif
		;		
		;		;#to do: add extra spawns for different scenarios?
		;	endif
		
		;elseif !OnlyHumans
		;Debug.Trace("NAKED DEFEAT allegiancequest: #spawn: we already have non-human actors, nothing to do")
		;else
		;Debug.Trace("NAKED DEFEAT allegiancequest: #spawn: CalmQuest already running, too late to spawn") ;#DEBUG
		;endif
		
		OnlyHumans = true ;reset 	
	
		Debug.Trace("NAKED DEFEAT allegiancequest: Allegiance(ON) ActorCount: "+ActorCount)	;#DEBUG ;compare count!
			
		cfgqst.PlayerRef.StopCombat()		
		cfgqst.PlayerRef.StopCombatAlarm()	
			
	;Allegiance(FALSE)			
	else		
	Debug.Trace("NAKED DEFEAT allegiancequest: Allegiance (OFF)")
	;Debug.Trace("NAKED DEFEAT allegiancequest: AllegianceFunction(OFF) QuestID: "+QuestID)					
		while i												
			i -= 1
			a = NPC[i].GetReference() as Actor
			
			if a	
					
				if (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
				;do nothing
				else
					
					if (a.IsInFaction(FactionDefeat02)) ;&&  !(a.IsPlayerTeammate())						
					a.RemoveFromFaction(FactionDefeat02)
					ActorCount += 1					
					endif
					
					;backup calmfaction (test)
					if (a.IsInFaction(CalmFaction))							
					a.RemoveFromFaction(CalmFaction)
					endif

				endif
			endif
		endwhile	
		Debug.Trace("NAKED DEFEAT: allegiancequest Allegiance (OFF) ActorCount: "+ActorCount)	 ;#DEBUG compare count!

	;SetStage(1000)	;allegiance false, now shutdown
	endif		
	AllegianceRunning = false
	cfgqst.PlayerDownAlready = false ;TEST NEW SYSTEM 2025

EndFunction

Event OnUpdate()			;	#update 
		
CombatScan()
	
EndEvent


string tempraceID = "empty"

String Function GetRaceKey(Actor akActor = None)
tempraceID = MiscUtil.GetActorRaceEditorID(akActor) 
return sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)
tempraceID = "empty"
Endfunction

string RaceKey = "none"



;BASE FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

bool Function D100(float chance)	;#diceroll	;#d100

;if we roll equal or below the send "chance" it will return true (so D100(95)) is a 95% of "TRUE")

if Utility.RandomInt(1, 100) <= chance
return true
else
return false
endif
EndFunction

Function DebugTrace(String Text1)

Debug.Trace(Text1)

EndFunction

Function DebugNotification(String Text2)
if cfgqst.ShowDebugMessages
Debug.Notification(Text2)
endif
EndFunction

Function ScreenMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT allegiancequest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT allegiancequest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT allegiancequest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#NymMessage
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT allegiancequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT allegiancequest: (#trace NYM) "+Text2)
	endif
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

