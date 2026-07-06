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


nade_storage_qf_scr Property storqst Auto
nade_defeatquest_qf_scr Property defqst Auto
nade_slavery_qf_scr Property slaveqst Auto

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
	
	storqst.AllegianceQuestRunning = false 
	
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

Bool IgnoreCombat = false

Function Fragment_3()				;##START				;############ STAGE 10 ;############

QuestID = Random()



Debug.Trace("NAKED DEFEAT #allegiancequest: stage 10 (START)")

	storqst.AllegianceQuestRunning = true 

	if cfgqst.AllegianceScanType == "DuplicateEnemyScan"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	AreaScanDuplicateEnemies()
	
	elseif cfgqst.AllegianceScanType == "DuplicateEnemyScan_Forced" 
	cfgqst.AllegianceScanType = "empty"
	IgnoreCombat = true 
	AreaScanDuplicateEnemies()

	elseif cfgqst.AllegianceScanType == "MarkDuplicantsScan"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	AreaScanMarkDuplicants()

	elseif cfgqst.AllegianceScanType == "AreaScanRapers"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	AreaScanRapers()

	elseif cfgqst.AllegianceScanType == "AreaScanWhipper"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	AreaScanWhipper()
	;/
	elseif cfgqst.AllegianceScanType == "DropGarbageScan"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	DropGarbageScan()
	/;
	
	elseif cfgqst.AllegianceScanType == "PrepareDefeat"	;WIP - we want to duplicate enemies the more the merrier 
	cfgqst.AllegianceScanType = "empty"
	AreaScanPrepareDefeat()
	
	else 
	
	SetStage(1000)
	
	;	if cfgqst.ShowDebugMessages	
	;	Debug.Notification("NAKED DEFEAT allegiancequest: stage 10 (START)")
	;	endif
				
	;	Allegiance(true)	;---> calming actors 
	;	StopCombatScan = false
	;	while AllegianceRunning
	;	Utility.Wait(0.5)
	;	endwhile
	;	RegisterForSingleUpdate(0.1)	
	;	SetStage(14) 
	endif 

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


;/ MODS TO IMPROVE:
Follow Me and Swim After Me 
https://www.nexusmods.com/skyrimspecialedition/mods/7026?tab=posts

Inconvenient Dungeons
https://www.nexusmods.com/skyrimspecialedition/mods/66784

Dungeons - Revisited
https://www.nexusmods.com/skyrimspecialedition/mods/51798

Hand Placed Enemies - More populated spawns dungeons and POIs
https://www.nexusmods.com/skyrimspecialedition/mods/59249

/; 




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






Function AreaScanPrepareDefeat()

	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanPrepareDefeat()")
	;WE SCAN I VALID RAPERS ARE IN THE vicinity
	;when checking for misshaps (Traps/Struggling/Potions etc.)
	
	Faction NFF_FollowerPackageFaction = (Game.GetFormFromFile(0x0023F35B, "nwsFollowerFramework.esp") As Faction)
	
	Actor a										
	cfgqst.ProxActorDetected = 0
	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########
	String sTempName

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
			
			sTempName = cfgqst.GetActorName(a)
			
			if a.IsInCombat()
			SPE_Actor.SetActorCalmed(a, true)
			endif 
			
			if Nym()
				if a.IsHostileToActor(cfgqst.PlayerRef) 
					if a.IsInFaction(defqst.NakedFollowerNamedFaction) 
					a.RemoveFromFaction(defqst.NakedFollowerNamedFaction)
					ScreenMessage("Named Follower:"+cfgqst.SavedNames_01+" turned against you!")
					cfgqst.SavedNames_01 = "Is Hostile now"
					elseif a.IsInFaction(NFF_FollowerPackageFaction)
					ScreenMessage("NFF Follower:"+sTempName+" turned against you!")
					a.RemoveFromFaction(NFF_FollowerPackageFaction)
					a.RemoveFromFaction (cfgqst.PlayerFollowerFaction)
					endif 
				;if folqst.GetStage() < 1000
				folqst.EndFollowerQuest()
				Utility.Wait(0.5)
				folqst.StartFollowerQuest()
						
				endif 
			endif 
		else 
		Debug.Trace("NAKED DEFEAT: #AreaScanPrepareDefeat ACTOR["+i+"] = NONE")
		endif	
	endwhile	

	if cfgqst.ProxActorDetected > 0
	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanPrepareDefeat(Potential Rapers Nearby)")
	else 
	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanPrepareDefeat(NO Potential Rapers Nearby)")
	endif 
	
	;cfgqst.ProxGuardDetected = 0
	
	SetStage(1000)

EndFunction

	;/
Function DropGarbageScan()			;#AreaScanSlaveryCreatures() 

Debug.Trace("NAKED DEFEAT: DropGarbageScan() START")
	
	Actor a		

	int i = NPC.Length 		

	while i  ;&& (cfgqst.ProxActorDetected < 3) && !GuardSees	;if a Guard sees you we have the "worst" outcome already, civilians will be continued to check because we can still get a guard					
	i -= 1	
	a = NPC[i].GetReference() as Actor	

		if a	
			float TempFloatXa = 0
			float TempFloatXb = 0
			bool IsMoving = true
			
				if Nym()
				TempFloatXa = a.GetPositionX()
				Utility.Wait(0.1)
				TempFloatXb = a.GetPositionX()
				NymTrace("TempFloatXa:"+TempFloatXa+" TempFloatXb:"+TempFloatXb)
				
					if TempFloatXa == TempFloatXb ; && D100(5)
					IsMoving = false 
					endif 
				endif 

			if IsMoving			
			slaveqst.DropRandomGarbage(a)	
			endif 
		endif 

	endwhile	
	SetStage(1000)
	
EndFunction	
/;


;Function MoveWhipperToPlayer;()

	;TheWhipper.MoveTo(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 115.0, abMatchRotation = false)

;EndFunction 


Bool Function CheckWhippingRace(String sTempRaceKey)
NymTrace("CheckWhippingRace("+sTempRaceKey+")")

if !sTempRaceKey 
NymTrace("!sTempRaceKey")
endif 

if (sTempRaceKey == "")
NymTrace("(sTempRaceKey == '''')")
endif 

if !sTempRaceKey || (sTempRaceKey == "") || (sTempRaceKey == "Humans") || (sTempRaceKey == "Falmers") || (sTempRaceKey == "Draugrs") || (sTempRaceKey == "Skeletons") || (sTempRaceKey == "Rieklings") || (sTempRaceKey == "Dremora")
return true 
else 
return false
endif 

EndFunction


Function AreaScanWhipper()

	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanWhipper()")
	;WE SCAN I VALID RAPERS ARE IN THE vicinity
	;when checking for misshaps (Traps/Struggling/Potions etc.)

	Actor a										
	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	;NOTE: We search from 0 upwards because the higher actors (i = 10 etc.) have a HIGHER Distance.
	
	int j = 0
	
	Bool WhipperFound = false
	int sTempGender = 0
	Float sTempDistance = 0.0
	
	String sTempName
	String sTempRaceKey
		
	while (j < i) && !WhipperFound	
	;i -= 1
	a = NPC[j].GetReference() as Actor		
	j += 1
	
		if a
			sTempGender = SexLab.GetGender(a)
			sTempDistance = cfgqst.PlayerRef.GetDistance(a)
			sTempName = cfgqst.GetActorName(a)
			sTempRaceKey = cfgqst.GetRaceKey(a)
		
			if a.IsInFaction(slaveqst.WhippingFaction)
			a.RemoveFromFaction(slaveqst.WhippingFaction)
			NymMessage("Actor "+sTempName+" WAS IN WHIPPINGFACTION")
			endif 
			
			Debug.Trace("NAKED DEFEAT: #AreaScanWhipper ACTOR["+j+"]["+sTempName+"] [Distance = "+sTempDistance+"]")
			
			if folqst.IsPresentFollower(a) || (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
			Debug.Trace("NAKED DEFEAT: #AreaScanWhipper ACTOR["+j+"]["+sTempName+"] [IS FOLLOWER]")		
			;do nothing 
			;elseif CheckWhippingRace(sTempRaceKey) && !cfgqst.IsFucking(a) && !a.IsDead()
			elseif storqst.ValidateWhipper(a, sTempName) && !cfgqst.IsFucking(a) && !a.IsDead()
			;this is the main check for the whipper.
			
			a.AddToFaction(slaveqst.WhippingFaction)
			WhipperFound = true
			;this ends the loop, we only need ONE whipper 
			
			a.MoveTo(cfgqst.PlayerRef, -100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), -100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 115.0, abMatchRotation = false)
			Debug.Trace("NAKED DEFEAT: #AreaScanWhipper ACTOR["+j+"]["+sTempName+"] [Distance = "+sTempDistance+"]")
			endif	
			
		else
	
		;NymTrace("NAKED DEFEAT: #AreaScanWhipper ACTOR["+j+"][NONE]")
		endif	
		
	endwhile	

	NymTrace("i:"+i+" j:"+j)

	SetStage(1000)

EndFunction


Function AreaScanRapers()

	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanRapers()")
	;WE SCAN I VALID RAPERS ARE IN THE vicinity
	;when checking for misshaps (Traps/Struggling/Potions etc.)
	
	
	Actor a										
	cfgqst.ProxActorDetected = 0
	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########


	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
			
			if folqst.IsPresentFollower(a) || (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
			;sort out followers
			elseif cfgqst.AllowActor(a, 0, "PotentialRaper")  
				
				
			if !cfgqst.PlayerInCombat()
			cfgqst.GetEnemyType(a)	
			endif 
			
			cfgqst.ProxActorDetected += 1
	
			endif	
			
		else 
		Debug.Trace("NAKED DEFEAT: #AreaScanRapers ACTOR["+i+"] = NONE")
		endif	
	endwhile	

	if cfgqst.ProxActorDetected > 0
	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanRapers(Potential Rapers Nearby)")
	else 
	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanRapers(NO Potential Rapers Nearby)")
	endif 
	
	NymTrace("AreaScan Rapers Found: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
	NymTrace("AreaScan Rapers Found Count: "+cfgqst.ProxActorDetected)
	
	;cfgqst.ProxGuardDetected = 0
	
	SetStage(1000)

EndFunction


;------------------------------------------------------------------------------------------------------------------------------------------------------


Bool DuplicationRunning = false



Keyword DemonicCreature

Function AreaScanDuplicateEnemies()
	
	DuplicationRunning = true
	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanDuplicateEnemies()")

	Actor a		
	Actor aTempActor 
	Race SkeletonRace
	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########
	int j = NPC.Length
	int EnemyCount = 0
	;bool SpawnExtra = false 
	
	bool Enable = true
	int SpawnCount = 0
	bool Spawned = false
	bool DemonicCreatureFound = false
	
	float ActorAggression
	bool WeAreInDungeon = false 
	bool Abort = false
	String sTempName = "NoName"
	int iTempLevel = 0
	int ActorsToSpawn = 0
	bool IsDuplicant = false
	
	RaceKey = "none"
	
	if cfgqst.Nym() && cfgqst.TempDefeatShortProb == 100
	Enable = false 
	NymTrace("AreaScanDuplicateEnemies() QUEST MODE ABORT") 
	endif 
	
	if Enable
	
		if cfgqst.IsPlayerInDungeon() && cfgqst.PlayerRef.IsInInterior() 
		NymTrace("AreaScanDuplicateEnemies() WeAreInDungeon TRUE")
		WeAreInDungeon = true 
		else 
		NymTrace("AreaScanDuplicateEnemies() WeAreInDungeon FALSE")
		WeAreInDungeon = false 
		endif
		
		NymTrace("AreaScanDuplicateEnemies() NPC.Length: "+i)
		
		
		if cfgqst.ModDEM
			if !DemonicCreature 
				DemonicCreature = (Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
			
			endif 
		endif 
	
		while (j > 0) && !Abort
		j -= 1	
		a = NPC[j].GetReference() as Actor	
		

			if a && !a.IsInFaction(cfgqst.NakedDuplicantFaction)
			
		
				ActorAggression = a.GetAV("Aggression")

				
					if a.IsInFaction(cfgqst.NakedGhostFaction)
					a.disable()
					a.delete()
					else
					
					if a.IsHostileToActor(cfgqst.PlayerRef) ;superfluos, only hostiles get HERE
					EnemyCount += 1
					endif 
			
					
				endif 


			endif 
		endwhile 
		
		
		NymTrace("AreaScanDuplicateEnemies() EnemyCount: "+EnemyCount)
	;	NymMessage("EnemyCount: "+EnemyCount)
		;if EnemyCount < 3
		;SpawnExtra = true 
		;endif 
		
		if !Abort
			while i > 0					
	
			;	NymTrace("AreaScanDuplicateEnemies(A) "+i)
					
				i -= 1	
				a = NPC[i].GetReference() as Actor		
			;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
				
				DemonicCreatureFound = false 
				ActorsToSpawn = 0	

				
					if cfgqst.ModDEM
				;	NymTrace("AreaScanDuplicateEnemies(B) "+i)
						if !DemonicCreature 
					;	NymTrace("AreaScanDuplicateEnemies(C) "+i)
						DemonicCreature = (Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
						endif 
					endif 
					
					if a && !a.IsInFaction(cfgqst.NakedDuplicantFaction)
					;	NymTrace("AreaScanDuplicateEnemies(D) "+i)
						;if !sTempName
						sTempName = cfgqst.GetActorName(a)	
						;endif 
						
						;if Nym() && a.IsInFaction(cfgqst.NakedDuplicantFaction) 
							
						;	if Nym() 
						;	SPE_Actor.SetActorCalmed(a, true)
						;	SPE_Actor.SetActorCalmed(a, false)	
						;	a.EvaluatePackage()
						;	cfgqst.PlayerRef.Activate(a)
						;	a.StartCombat(cfgqst.PlayerRef)
						;	Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR["+i+"] ["+sTempName+"] [Level:"+iTempLevel+"] [Aggression:"+ActorAggression+"] = NakedDuplicantFaction - PACKAGE EVALUATED")
						;	endif 
						;	if a.IsDisabled()
						;	a.Enable()
						;	a.EvaluatePackage()
						;	Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR["+i+"] ["+sTempName+"] [Level:"+iTempLevel+"] [Aggression:"+ActorAggression+"] = NakedDuplicantFaction - ENABLED &&PACKAGE EVALUATED")
						;	endif 
						
						
						;endif 
					
						if (sTempName == "Mudcrab") || (sTempName == "Slaughterfish")
						ActorsToSpawn = 0
						
						elseif cfgqst.ModDEM && a.HasKeyword(DemonicCreature)
						DemonicCreatureFound = true
						NymTrace("AreaScanDuplicateEnemies() DemonicCreatureFound")
						
						ActorsToSpawn = Utility.RandomInt(2,3)
						
						else
						
						RaceKey = cfgqst.GetRaceKey(a)
						
						;NymTrace("AreaScanDuplicateEnemies(E) "+i)
						
							if (RaceKey == "Canines") || (RaceKey == "Wolves") || (RaceKey == "Skeevers") 
						
							ActorsToSpawn = Utility.RandomInt(2,4) 
			
							elseif (RaceKey == "Giants")
						
							ActorsToSpawn = Utility.RandomInt(0,1) 
							
							elseif (RaceKey == "Bears") || (RaceKey == "Sabrecats") 
							
							ActorsToSpawn = Utility.RandomInt(1,2) 
							
							elseif (RaceKey == "Draugrs")
								
								if !SkeletonRace 
								SkeletonRace = (Game.GetFormFromFile(0x000B7998, "Skyrim.esm") As Race)
								endif 						
								if a.GetRace() == SkeletonRace
								
									if DemonicCreatureFound
									a.disable()
									a.delete()
									;NymTrace("AreaScanDuplicateEnemies() DEM_SkeletonFound")
									;ActorsToSpawn = Utility.RandomInt(1,2) 
									else 
									NymTrace("AreaScanDuplicateEnemies() SkeletonFound")
										if EnemyCount < 10
										ActorsToSpawn = Utility.RandomInt(6,10) 
										EnemyCount += 10
										else 
										ActorsToSpawn = Utility.RandomInt(3,5) 
										endif 
									endif 
								endif 
							elseif (RaceKey == "Trolls")
							NymTrace("HealRate TROLL A: "+a.GetAV("HealRate"))
							
							a.SetAV("HealRate", 3.0)
							NymTrace("HealRate TROLL B: "+a.GetAV("HealRate"))
							
							ActorsToSpawn = Utility.RandomInt(0,1) 

							else 
							
							ActorsToSpawn = 1
							endif 
						
						endif 
					endif 
					
					if a && ((ActorsToSpawn > 0) || DemonicCreatureFound || WeAreInDungeon) ;this only spawns demonic creatures OR when we are in a dungeon in general
					
						iTempLevel = a.GetLevel()			
						;endif 
						
				
						
						if a.IsInFaction(cfgqst.NakedGhostFaction)
					;	NymTrace("AreaScanDuplicateEnemies(G) "+i)	
						a.disable()
						a.delete()
					
						;elseif a == folqst.Actor_Follower01	|| a == folqst.Actor_Follower02	|| (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
						;do nothing

						;elseif !a.IsInFaction(cfgqst.NakedDuplicantFaction) && a.IsHostileToActor(cfgqst.PlayerRef) && !a.IsInCombat() && !a.IsInFaction(cfgqst.RobberFaction)
						
						
						;TO DO: more elaborate pre selection
						elseif !a.IsInFaction(cfgqst.NakedDuplicantFaction) && a.IsHostileToActor(cfgqst.PlayerRef) && !a.IsInFaction(cfgqst.RobberFaction) ;WE ALLOW COMBAT SPAWNS FOR NOW
					;	NymTrace("AreaScanDuplicateEnemies(H) "+i)	
						;elseif a.IsInFaction(cfgqst.NakedDuplicantFaction) ;&& a.IsHostileToActor(cfgqst.PlayerRef) && !a.IsInCombat() && !a.IsInFaction(cfgqst.RobberFaction)	
						;	ActorsToSpawn = 1
							bool TestSystem = true 
							;Actorbase TempActorBase = a.GetActorBase() 
							Actorbase TempActorBase = a.GetLeveledActorBase() 
							Actor SpawnedActor

							if TestSystem 	
				;NymTrace("AreaScanDuplicateEnemies(I) "+i)	
								if TempActorBase
								;NymTrace("AreaScanDuplicateEnemies(J) "+i)														
								a.AddToFaction(cfgqst.NakedDuplicantFaction)
								Spawned = true
								
									while (ActorsToSpawn > 0) && cfgqst.ModEnabled
									;NymTrace("AreaScanDuplicateEnemies(K) "+i)	
									ActorsToSpawn -=1 
									SpawnedActor = a.PlaceActorAtMe(TempActorBase, 2)
									SpawnedActor.Moveto(a, -100.0 * Math.Sin(a.GetAngleZ()), -100.0 * Math.Cos(a.GetAngleZ()), a.GetHeight() - 150.0, abMatchRotation = false)
									;cfgqst.PlayerRef.PushActorAway(SpawnedActor, 0.5)
									

										if SpawnedActor
											
											
											
											Faction[] FactionListDebug ;= new Faction[30]
											
											FactionListDebug = a.GetFactions(-10, 10)
											int iLength = FactionListDebug.Length
											NymTrace("SpawnedActor Factions iLength: "+iLength)
											
											;Copy Factions! 
											while iLength
											iLength -= 1
											
											
											;float TestLenght = FactionListDebug.Lenght()
												if FactionListDebug[iLength]
												NymTrace("Faction Added:"+iLength)
												SpawnedActor.AddToFaction(FactionListDebug[iLength])
												endif 
												
											endwhile 
										SpawnedActor.EvaluatePackage()
										SpawnedActor.AddToFaction(cfgqst.NakedDuplicantFaction)
										SpawnedActor.EvaluatePackage()
										SpawnedActor.StartCombat(cfgqst.PlayerRef)
										
										Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies [IsHostile: "+SpawnedActor.IsHostileToActor(cfgqst.PlayerRef)+" IsInCombat: "+SpawnedActor.IsInCombat()+" Aggression: "+SpawnedActor.GetAV("Aggression")+"]")
										
									;	SpawnedActor.SetAV("Aggression", 1)
									;	SpawnedActor.SetAV("Aggression", 2)
										
											if !SpawnedActor.IsInFaction(cfgqst.NakedDuplicantFaction)
											Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies #ERROR - NOT in NakedDuplicantFaction")
											endif 
										
										endif 
										
									SpawnCount += 1
									Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR["+SpawnCount+"] ["+sTempName+"] [Level:"+iTempLevel+"] = %DUPLICATED ["+SpawnCount+"]")
									endwhile 
								else 
						
								Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR[NO LEVELED ACTOR BASE!")
								
								endif	
							
							
							;-------------------------
								;/
								if TempActor
								
								a.AddToFaction(cfgqst.NakedDuplicantFaction)
								
								Spawned = true
								
							;	ObjectReference TempObjectReferenc = TempActor as ObjectReference 
								Actor SpawnedDuplicant
								
									while (ActorsToSpawn > 0) && cfgqst.ModEnabled

										
										ActorsToSpawn -=1 
										SpawnedDuplicant = a.PlaceAtMe(SpawnedDuplicant, 1) as actor
										
										if SpawnedDuplicant
										SpawnCount += 1
										Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies (TEST) ACTOR["+i+"] ["+sTempName+"] [Level:"+iTempLevel+"] = %DUPLICATED ["+SpawnCount+"]")
										else 
										Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies (TEST) ACTOR["+i+"] ["+sTempName+"] = NO DUPLICANT!")
										
										endif 
									endwhile 

								else 
								
								Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies (TEST) ACTOR["+i+"] ["+sTempName+"] = NO ACTORBASE!")
								
								endif
								/;	
								
							;-------------------
							
							else 
							
								
							;/
								if TempActorBase
								
								a.AddToFaction(cfgqst.NakedDuplicantFaction)
							;	a.EvaluatePackage()
								Spawned = true
								
									while (ActorsToSpawn > 0) && cfgqst.ModEnabled
									ActorsToSpawn -=1 
									a.PlaceAtMe(TempActorBase, 1)
									SpawnCount += 1
									Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR["+i+"] ["+sTempName+"] [Level:"+iTempLevel+"] = %DUPLICATED ["+SpawnCount+"]")
									endwhile 

								else 
								
								Debug.Trace("NAKED DEFEAT: #AreaScanDuplicateEnemies ACTOR["+i+"] ["+sTempName+"] = NO ACTOR!")
								
								endif	
							
							/;
								
							endif 
						endif 	
					;else 
				
				endif	
			endwhile
		endif 
	endif 
	
	if Spawned
	ScreenMessage("Actors Spawned: "+SpawnCount)
	endif 
	
	if SpawnCount > 0
	defqst.DuplicationWasDone = true 
	else 
	defqst.DuplicationWasDone = false 
	endif 
	
	DuplicationRunning = false
	
	SetStage(1000)

EndFunction


;Bool Property defqst.DuplicationWasDone Auto 

Function AreaScanMarkDuplicants()		;THIS SHOULD BE SUPERFLUOUS NOW 

	Debug.Trace("NAKED DEFEAT: allegiancequest AreaScanMarkDuplicants()")

	Actor a										

	if DuplicationRunning
	Debug.MessageBox("DuplicationRunning #ERROR")
	endif 

	while DuplicationRunning && cfgqst.ModEnabled
	Utility.Wait(1.0)
	endwhile 

	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	bool enabled = true 
	
	if defqst.DuplicationWasDone
	NymTrace("defqst.DuplicationWasDone = TRUE")
	defqst.DuplicationWasDone = false
	enabled = true
	else 
	NymTrace("defqst.DuplicationWasDone = FALSE")
	enabled = false 
	endif 

	enabled = true

	while i	&& enabled						
	i -= 1	
	a = NPC[i].GetReference() as Actor	
	
	
	String sTempName = "NoActor"
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
			;sTempName = a.GetActorBase().GetName() 
			sTempName = cfgqst.GetActorName(a)
			;if !sTempName
			;sTempName = "NoName"
			;endif 
			
			if !folqst.IsPresentFollower(a) && !a.IsInFaction(cfgqst.NakedDuplicantFaction) && (a.GetBaseObject().GetName() != "FEC : Load Screen Detector")	;ONLY HOSTILE ACTORS GET HERE (PROBLEM FOR LATER)
			
				
			a.AddToFaction(cfgqst.NakedDuplicantFaction)
			Debug.Trace("NAKED DEFEAT: #AreaScanMarkDuplicants ACTOR["+i+"] "+sTempName+" = MARKED")
				
				if Nym() && !storqst.InCity && !storqst.InVillage && (storqst.IsLocalSlave == 0)
				Debug.Trace("NAKED DEFEAT: #AreaScanMarkDuplicants ACTOR["+i+"] "+sTempName+" = AGGROED")
				a.SetAV("Aggression", 1)
				a.SetAV("Aggression", 2)
				endif
					
			endif 
		;else 
		;else 
		
		
		endif	
	endwhile	

	SetStage(1000)

EndFunction


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
		if cfgqst.DefeatViaSurrender && cfgqst.DefeatTypeScenario != "Afterlife" && cfgqst.IsDefeatRunning()
		Debug.Trace("NAKED DEFEAT allegiancequest: Starting cfgqst.GetDefeatType()")
		cfgqst.GetDefeatType("AllegianceQuest")
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
	if cfgqst.Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT allegiancequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT allegiancequest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

