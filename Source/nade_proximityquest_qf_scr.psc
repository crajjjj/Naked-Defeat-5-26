;/

Defeatquest(playeralias): 	

				+Starts proximityQuest
				
				+StartCombatScan

Stage 10: 	+proximity(True)
			+StartCombatScan
			+set TCAI OFF

CombatScan:	If PC is in combat, end proximityQuest 

Stage 1000: end Quest, remove proximity from all (proximity(False))	
			+set TCAI ON
		
Defeatquest(playeralias): 		
CombatScan Restarts proximityQuest

Calmquest End: +Stop DefeatQuestsCombatScan
				+Stop proximityquest (Stage 1000)
	


	
LATER:
- DISTANCECHECK
	check if actor is in rapescan distance or not
	if NOT spawn actors for rape -> start calmquest via proximityquest? how to deal with the idles?

- add race check here?
- add guard check here?
- add dragon check here?
			
/;


;NEXT FRAGMENT INDEX 22

Scriptname nade_proximityquest_qf_scr Extends Quest Hidden

ReferenceAlias Property Alias_Enemy04 Auto
ReferenceAlias Property Alias_Enemy10 Auto
ReferenceAlias Property Alias_Enemy09 Auto
ReferenceAlias Property Alias_Enemy08 Auto
ReferenceAlias Property Alias_Enemy12 Auto
ReferenceAlias Property Alias_Enemy07 Auto
ReferenceAlias Property Alias_Enemy00 Auto
ReferenceAlias Property Alias_Enemy05 Auto
ReferenceAlias Property Alias_Enemy03 Auto
ReferenceAlias Property Alias_Enemy06 Auto
ReferenceAlias Property Alias_Enemy13 Auto
ReferenceAlias Property Alias_Enemy01 Auto
ReferenceAlias Property Alias_Enemy11 Auto
ReferenceAlias Property Alias_Enemy02 Auto
ReferenceAlias Property Alias_Enemy14 Auto
ReferenceAlias Property Alias_Enemy15 Auto

ReferenceAlias Property Follower Auto 
ReferenceAlias[] Property NPC Auto			;references NPCs, most likely the NPCs in the area based on the Conditions in ESP

Faction Property CalmFaction Auto
Faction Property AllegianceFaction Auto					;THIS ADDS THE NPC TO THE PLAYER ALLY FACTION.
Faction Property CurrentFollowerFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property FactionPlayerHousecarlFaction Auto
Faction Property FactionPlayerFaction Auto


;Faction Property DefeatFaction Auto			;TEST
;Faction Property Hirelings Auto
Faction Property zbfFactionSlave Auto
Faction Property SexLabForbiddenActors Auto

Keyword Property ActorTypeNPC Auto

nade_slavery_qf_scr Property slaveqst Auto
nade_storage_qf_scr Property storqst Auto
nade_defeatquest_qf_scr Property defqst Auto
nade_FollowerQuest_qf_scr Property folqst Auto
nade_configquest_scr Property cfgqst Auto
nade_capturequest_qf_scr Property capqst Auto
SexLabFramework Property SexLab Auto
slaFrameworkScr Property sla Auto		;aroused

Quest Property qst1 Auto		;calmquest

bool ScanOn = true ;proximity

bool Function PlayerInCombat()
if cfgqst.PlayerRef.IsInCombat() 
return true
else
return false
endif
EndFunction

Function Fragment_17()	;rape ROUND 2						;############ STAGE 11 ############							

EndFunction			

Function Fragment_19()				;RAPE #ROUND 3								;############ STAGE 12 ############	


EndFunction


Function Fragment_1()						;	#END			;############ STAGE 1000 ############					

	NymTrace("proximityquest Stage 1000 (END)")
;	Debug.Trace("NAKED DEFEAT: proximityquest stage 1000 (END)")	
;	Debug.Notification("NAKED DEFEAT: proximityquest stage 1000 (END)")	

;	storqst.ProximityQuestRunning = false 


	Stop()

EndFunction


Function Fragment_8()	;RAPE OUTCOME - Robbery/Slavery/Captivity -> research this! ;############ STAGE 500 ############	
				
SetStage(1000)		;Combatcheck				

EndFunction

Function Fragment_15()							;############ STAGE 13 ############		
;end of rape calm ;WHY?
Debug.Trace("NAKED DEFEAT: proximityquest stage 13")
				;Combatcheck
SetStage(1000)		;Combatcheck


EndFunction

Function Fragment_20()							;############ STAGE 14 ############	
Debug.Trace("NAKED DEFEAT: proximityquest stage 14 - WAITING STAGE")

	;GUIDE: we wait for a second before ending the quest so other scans can be completed in the meantime. 

Utility.Wait(1.0)
;While storqst.ProximityScansActive


SetStage(1000)		;Combatcheck

EndFunction

Bool RequestCombatScan


Function StartCombatScan()

Debug.Trace("NAKED DEFEAT: proximityquest StartCombatScan()")
	Start()

EndFunction 

Function Fragment_3()				;#START				;############ STAGE 10 ;############

;Debug.Trace("NAKED DEFEAT: proximityquest Script Version 11")		;Script Version Check 05
Debug.Trace("NAKED DEFEAT: proximityquest stage 10 (START "+cfgqst.ProximityScanType+")")		
;Debug.Notification("NAKED DEFEAT: proximityquest stage 10 (START)")	

;storqst.ProximityQuestRunning = true
	;ESP
	;IsChild = FALSE 
	;IsDead = FALSE s
	;IsDisabled = FALSE 
	;IsManakinRace = FALSE 
	;GetDistance(Player) <= 2000
	
	if storqst.IsLocalSlave()
	NearDistance = 400
	FarDistance = 800
	else 
	NearDistance = 600
	FarDistance = 1200	
	endif 

			
if cfgqst.ProximityScanType == "CombatScan" 		;ARE ACTORS NEARBY 
cfgqst.ProximityScanType = "empty" 
ProximityScanCombat()	

elseif cfgqst.ProximityScanType == "ProximityScanFixNudists" 		;scans for potential Rapers nearby. NOT just hostiles. Checks for valid types and fills Enemies (GetDefeatType still needed)
cfgqst.ProximityScanType = "empty" 
ProximityScanFixNudists()

elseif cfgqst.ProximityScanType == "RaperScan" 		;scans for potential Rapers nearby. NOT just hostiles. Checks for valid types and fills Enemies (GetDefeatType still needed)
cfgqst.ProximityScanType = "empty" 
ProximityScanRapers()

elseif cfgqst.ProximityScanType == "DetectMasterScan" 		;scans if a Master is in Front and looking at and closeby
cfgqst.ProximityScanType = "empty" 
ProximityScanDetectMaster()


;elseif cfgqst.ProximityScanType == "DuplicateEnemyScan"	;NO LONGER IN USE!!!!
;cfgqst.ProximityScanType = "empty"
;ProximityScanDuplicateEnemies()
;f Nym()
;NymTrace("ERROR START DuplicateEnemyScan") 
;endif 
;SetStage(1000)

;elseif cfgqst.ProximityScanType == "MarkDuplicantsScan"	;WIP - we want to duplicate enemies the more the merrier 
;cfgqst.ProximityScanType = "empty"
;if Nym()
;NymTrace("ERROR START DuplicateEnemyScan") 
;endif 
;SetStage(1000)

;ProximityScanMarkDuplicants()

;cfgqst.ProximityQuestStart("DuplicateEnemyScan")
;cfgqst.ProximityQuestStart("MarkDuplicantsScan")

elseif cfgqst.ProximityScanType == "CageMaintenanceScan"
cfgqst.ProximityScanType = "empty"
ProximityScanCageMaintenance()

elseif cfgqst.ProximityScanType == "CityFightScan"	;WIP - we need to check if we are fighting in the city and who is fighting whom
cfgqst.ProximityScanType = "empty"
ProximityScanCityFight()

elseif cfgqst.ProximityScanType == "DefeatScenarioScan"	;GET DEFEAT TYPE ---> scans ONLY hostiles 
cfgqst.ProximityScanType = "empty" 
DefeatScenarioScan()

elseif cfgqst.ProximityScanType == "FollowerNameScan"	
cfgqst.ProximityScanType = "empty" 
ProximityScanFollowerName()


elseif cfgqst.ProximityScanType == "PushRapersAwayScan"	
cfgqst.ProximityScanType = "empty" 
ProximityScanPushRapersAway()

elseif cfgqst.Indecency || (cfgqst.ProximityScanType == "PublicRapeScan")		;FOR PUBLIC PUNISHMENT 
cfgqst.ProximityScanType = "empty"
ProximityScan()

else
SetStage(1000)
endif


;ConsoleUtil.ExecuteCommand("tcai")
	
EndFunction


;-----------------------------------------------------------------------------------------------------------------------------------

Function Fragment_13() ;skip what? egal         ;############ STAGE 600 ############	

EndFunction

Function SetExpression(int type = 0)	

if type == 0
cfgqst.PlayerRef.ClearExpressionOverride()
elseif type == 1
cfgqst.PlayerRef.SetExpressionOverride(1, 100)	;dialogue fear 	
;Debug.Notification("NAKED DEFEAT TEST: dialogue fear ")
elseif type == 2
cfgqst.PlayerRef.SetExpressionOverride(16, 100)
;Debug.Notification("NAKED DEFEAT TEST: dialogue combat shout ")
endif

EndFunction

;/
Event OnUpdate()			;	#update #scan

Debug.Trace("NAKED DEFEAT: proximityquest - Scan (ON)")

while ScanOn
	if !PlayerInCombat() && cfgqst.DefeatQuestRunning	;if NOT in combat repeat
	Utility.wait(1.0)
	else
	ScanOn = false 	
	SetStage(1000)
	Debug.Trace("NAKED DEFEAT: proximityquest - Scan (OFF)")
	endif
	
	if !PlayerInCombat() && cfgqst.DefeatQuestRunning	;if NOT in combat repeat
	Utility.wait(1.0)
	else
	ScanOn = false 	
	SetStage(1000)
	Debug.Trace("NAKED DEFEAT: proximityquest - Scan (OFF)")
	endif
	
	if !PlayerInCombat() && cfgqst.DefeatQuestRunning	;if NOT in combat repeat
	Utility.wait(1.0)
	else
	ScanOn = false 	
	SetStage(1000)
	endifcalm
	Debug.Trace("NAKED DEFEAT: proximityquest - Scan (OFF)")
	
endwhile
	
EndEvent
/;

;/
Factions
JobBlacksmithFaction [FACT:0005091D]
JobTailorFaction "Tailor" [FACT:000806A8]
JobTrainerSmithingFaction "Smithing Trainer" [FACT:000E3A50]

check for these for equiping stuff


/;




Function ProximityScanFollowerName()
; CAN ONLY BE USED IN COMBAT (PlayerDown/Surrender)
; CAN ONLY BE USED BEFORE CALMING


	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanFollowerName()")

	Actor a										
	String sTempName
	int i = NPC.Length 					
	bool bNameFound = false
	;Faction NFF_FollowerPackageFaction = (Game.GetFormFromFile(0x0023F35B, "nwsFollowerFramework.esp") As Faction)
	
	while i	&& !bNameFound						
	i -= 1	
	a = NPC[i].GetReference() as Actor		
	
		if a

			sTempName = cfgqst.GetActorName(a)
			
			;Delete old Named Follower
			if a.IsInFaction(defqst.NakedFollowerNamedFaction) && (sTempName != cfgqst.SavedNames_01)
			Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName Old Named Follower Removed ACTOR["+i+"] = "+sTempName)
				a.RemoveFromFaction(defqst.NakedFollowerNamedFaction)
				bNameFound = true
				ScreenMessage(sTempName+" unregistered as Naked Defeat Follower.")
				
				if a.IsInFaction(cfgqst.PlayerFollowerFaction)
				a.RemoveFromFaction (cfgqst.PlayerFollowerFaction)
				
				
				Utility.Wait(0.5)
				;if folqst.GetStage() < 1000
				folqst.EndFollowerQuest()
				Utility.Wait(0.5)
				folqst.StartFollowerQuest()
				;assistanceFaction nwsFF_AssistFac 5D081749
				
				
				endif 
			endif 	
				
			Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName ACTOR["+i+"] = "+sTempName)
			
			;add Named Follower
			if sTempName == cfgqst.SavedNames_01
			Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName NAMED FOLLOWER FOUND - ACTOR["+i+"] = "+sTempName)
			ScreenMessage(sTempName+" registered as Naked Defeat Follower.")
			a.AddToFaction(defqst.NakedFollowerNamedFaction)
			a.AddToFaction(cfgqst.PlayerFollowerFaction)
			
			bNameFound = true
			
			;elseif a.IsInFaction(NFF_FollowerPackageFaction) && Nym()
			;Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName NFF FOLLOWER FOUND - ACTOR["+i+"] = "+sTempName)
			;a.AddToFaction(cfgqst.PlayerFollowerFaction)
			endif 

		else 
		Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName ACTOR["+i+"] = NONE")
			
		endif	
	endwhile	
	
	SetStage(1000)

EndFunction


Float TempHeight
Float PlayerHeight

Function DefeatScenarioScan()

	Debug.Trace("NAKED DEFEAT: #proximityquest DefeatScenarioScan()")
	;when player is downed, we Scan the vicinity for hostile actors and redetermine the Defeat Scenario. AllegianceQuest could do this....

	;/PLANS
	We want to use this in combat ONCE after the first hit to scan for enemies early
	We also want to use this to check for enemies after defeat and if we can get back up (because nobody is nearby)	
	/;
	cfgqst.ProxActorDetected = 0.0	;<<<- useful to judge if we have any enemy in the vicinity to determine if we are "save"
	cfgqst.ProxGuardDetected = 0.0	;<<<- useful to judge if we fight guards
	
	Actor a										

	int i = NPC.Length 					
	
	PlayerHeight = cfgqst.PlayerRef.GetPositionZ()
	NymTrace("#proximityquest DefeatScenarioScan() PlayerHeight = "+PlayerHeight)
	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
		
		if a
			TempGender = SexLab.GetGender(a)
			TempDistance = cfgqst.PlayerRef.GetDistance(a)
			TempHeight = a.GetPositionZ()
			
			TempName = cfgqst.GetActorName(a)
			if !TempName
			TempName = "No Name!"
			endif 

			;IS ENEMY - in combat, hostile	
			if a.IsInCombat() && a.IsHostileToActor(cfgqst.PlayerRef)
			Debug.Trace("NAKED DEFEAT: #DefeatScenarioScan ACTOR["+i+"]["+TempName+"] [Distance = "+TempDistance+"] [Heigth = "+TempHeight+"] IsEnemy")
				if cfgqst.PlayerRef.GetDistance(a) <= 2000 ;100 units = 1,42 m --> 14 m ca. 
				cfgqst.GetEnemyType(a)	;this fills Enemies up but does NOT delete them 
				cfgqst.ProxActorDetected += 1
				endif
				
				if !a.IsInFaction(cfgqst.EnemyFaction)
				a.AddToFaction(cfgqst.EnemyFaction) ;<<---- we use this to identify our enemies from combat
				endif 
			else 
			Debug.Trace("NAKED DEFEAT: #DefeatScenarioScan ACTOR["+i+"]["+TempName+"] [Distance = "+TempDistance+"] IsNeutral")
			endif	

		else 
		Debug.Trace("NAKED DEFEAT: #DefeatScenarioScan ACTOR["+i+"] = NONE")
			
		endif	
	endwhile	
	
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[0]: "+cfgqst.Enemy[0])
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[1]: "+cfgqst.Enemy[1])
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[2]: "+cfgqst.Enemy[2])
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[3]: "+cfgqst.Enemy[3])
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[4]: "+cfgqst.Enemy[4])
	Debug.trace("NAKED DEFEAT DefeatScenarioScan: Enemy[5]: "+cfgqst.Enemy[5])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[6]: "+cfgqst.Enemy[6])
	
	if Nym()
;	ScreenMessage("Enemies for Defeat: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
;	ScreenMessage("Enemies for Defeat Count: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Actors: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Guards: "+cfgqst.ProxGuardDetected)
	endif 
	SetStage(1000)

EndFunction

Function ProximityScanCageMaintenance()
	
	;GUIDE: 
	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanCageMaintenance()")

	Actor a										

	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
		
			TempGender = SexLab.GetGender(a)
			TempDistance = cfgqst.PlayerRef.GetDistance(a)
			TempName = cfgqst.GetActorName(a)
			if !TempName
			TempName = "No Name!"
			endif 
			Debug.Trace("NAKED DEFEAT: #ProximityScanCageMaintenance ["+TempName+"] Distance = "+TempDistance)
		
			;IS IN CAGE
			if !a.IsInFaction(defqst.NakedCagePartnerFaction) && a.GetDistance(defqst.XMarkerHeadingAnchor) <= 100
			Debug.Trace("NAKED DEFEAT: #ProximityScanCageMaintenance IS IN CAGE ["+TempName+"] Distance = "+TempDistance)
			a.MoveTo(defqst.XMarkerHeadingAnchor, 300.0 * Math.Sin(defqst.XMarkerHeadingAnchor.GetAngleZ()), 300.0 * Math.Cos(defqst.XMarkerHeadingAnchor.GetAngleZ()), defqst.XMarkerHeadingAnchor.GetHeight(), abMatchRotation = false)
			endif	
		else 
		Debug.Trace("NAKED DEFEAT: #ProximityScanCageMaintenance ACTOR["+i+"] = NONE")
			
		endif	
		
	endwhile	
	
	SetStage(1000)

EndFunction


Function ProximityScanCityFight()
	
	;GUIDE: we are looking for nearby Guards that are HOSTILE to the player to determine if we should auto surrender or not.
	;Needs to be expanded to scan for all civilian City based actors 

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanCityFight()")

	Bool IsFollowerFighting = true
	
	;/PLANS
	We want to use this in combat ONCE after the first hit to scan for enemies early
	We also want to use this to check for enemies after defeat and if we can get back up (because nobody is nearby)	
	/;
	cfgqst.ProxActorDetected = 0.0	;<<<- useful to judge if we have any enemy in the vicinity to determine if we are "save"
	cfgqst.ProxGuardDetected = 0.0	;<<<- useful to judge if we fight guards
	
	Actor a										

	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
		
			TempGender = SexLab.GetGender(a)
			TempDistance = cfgqst.PlayerRef.GetDistance(a)
			TempName = cfgqst.GetActorName(a)
			if !TempName
			TempName = "No Name!"
			endif 
			Debug.Trace("NAKED DEFEAT: #ProximityScanCityFight ["+TempName+"] Distance = "+TempDistance)
		
			;IS ENEMY 
			if a.IsHostileToActor(cfgqst.PlayerRef)
		
				if cfgqst.PlayerRef.GetDistance(a) <= 1000 ;100 units = 1,42 m --> 14 m ca. 
				cfgqst.ProxActorDetected += 1.0	
									
					if cfgqst.IsGuard(a) 				
					cfgqst.ProxGuardDetected += 1.0	
					endif
					
				endif 
			endif	
		else 
		Debug.Trace("NAKED DEFEAT: #ProximityScanCityFight ACTOR["+i+"] = NONE")
			
		endif	
		
	endwhile	
	
	SetStage(1000)

EndFunction

	Faction JarlFaction
	
Bool Function IsJarl(actor akActor)

	if !JarlFaction
	JarlFaction = game.GetFormFromFile(0x00050920, "Skyrim.esm") as Faction
	endif 
	
	if akActor.IsInFaction(JarlFaction)
	return true 
	else 
	return false 
	endif 
	
	;JARL: 290 too far
	;240 ideal
	;194 too close
	
EndFunction 

	Faction TrainerFaction

Bool Function IsTrainer(actor akActor)

	if !TrainerFaction
	TrainerFaction = game.GetFormFromFile(0x000E3A49, "Skyrim.esm") as Faction
	endif 
	
	if akActor.IsInFaction(TrainerFaction)
	return true 
	else 
	return false 
	endif 
		
EndFunction 


	Faction BlackSmithFaction

Bool Function IsBlackSmith(actor akActor)

	if !BlackSmithFaction
	BlackSmithFaction = game.GetFormFromFile(0x0005091D, "Skyrim.esm") as Faction
	endif 
	
	if akActor.IsInFaction(BlackSmithFaction)
	return true 
	else 
	return false 
	endif 
		
EndFunction 


Function ProximityScanCombat()			;"COMBAT SCAN" NobodyAround() uses this 

	;1 - scans the vicinity (2000 units) for nearby enemies
	;2 - it also tries to enforce combat between NPC and Followers 

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanCombat()")

	Bool IsFollowerFighting = true
	Bool StartCombat0 = false
	Bool StartCombat1 = false
	bool ActorStateTemp = 0
	;/PLANS
	We want to use this in combat ONCE after the first hit to scan for enemies early
	We also want to use this to check for enemies after defeat and if we can get back up (because nobody is nearby)	
	/;
	cfgqst.ProxActorDetected = 0.0	;<<<- useful to judge if we have any enemy in the vicinity to determine if we are "save"
	cfgqst.ProxGuardDetected = 0.0	;<<<- useful to judge if we fight guards
	
	Actor a										

	int i = NPC.Length 						

	PlayerHeight = cfgqst.PlayerRef.GetPositionZ()

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
;	int sTempGender = 0
	Float sTempDistance = 0.0
	String sTempName
	
		if a
		
		;	sTempGender = SexLab.GetGender(a) ;not needed in this scan
			sTempDistance = cfgqst.PlayerRef.GetDistance(a)
			sTempName = cfgqst.GetActorName(a)
			if !sTempName
			sTempName = "No Name!"
			endif 
			
			TempHeight = a.GetPositionZ()
			
			;Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ["+sTempName+"] Distance = "+TempDistance)
			
		
		
			if a.IsInFaction(cfgqst.NakedGhostFaction)
			a.disable()
			a.delete()
			endif 	
			
			if a.IsInFaction(cfgqst.NakedDuplicantFaction) && !storqst.InCity && !storqst.InVillage && (storqst.IsLocalSlave == 0) ;&& !a.IsHostileToActor(cfgqst.PlayerRef)
			Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] ATTEMPT AGGRO")	
						
			a.SetAV("Aggression", 1)
			a.SetAV("Aggression", 2)
			endif 	
		
			;IS ENEMY 
			;if a.IsHostileToActor(cfgqst.PlayerRef)
			
			if a 
				
				ActorStateTemp = PO3_SKSEFunctions.GetActorState(a)	
				
				if (a == folqst.Actor_Follower01) || (a == folqst.Actor_Follower02) || (a == folqst.Actor_Follower03) || (a == folqst.Actor_Follower04) || (a == folqst.Actor_Follower05)
				
					if a.IsInCombat() && (ActorStateTemp == 0)
					cfgqst.ProxGuardDetected += 1.0	
					endif
					
				elseif a.IsDead() 				
				Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] IsDead")	
					
					
				elseif ActorStateTemp != 0	
				Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] IsDown(ActorStateTemp:"+ActorStateTemp+")")	
					
					
				else
				Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] IsEnemy [Heigth = "+TempHeight+"]")
					if !(a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
						;#distance: only log this actor as one of our defeat enemies if it is within range.
						;Otherwise a distant NPC (e.g. an unrelated mage across the room) gets recorded as our
						;attacker and wrongly steers the DefeatType. Registration now sits inside the range gate
						;(previously GetEnemyType ran regardless of distance).
						if cfgqst.PlayerRef.GetDistance(a) <= 2000 ;100 units = 1,42 m --> 14 m ca.
						cfgqst.GetEnemyType(a)
						cfgqst.ProxActorDetected += 1.0
						endif
						
						int icombatstart = 404
						
						if folqst.IsWithUs_Follower(0) && (PO3_SKSEFunctions.GetActorState(folqst.NakedFollower[0]) == 0)
						a.StartCombat(folqst.NakedFollower[0])
						icombatstart = 0
						NymTrace("Enemy start combat with NakedFollower[0]")
						elseif folqst.IsWithUs_Follower(1) && (PO3_SKSEFunctions.GetActorState(folqst.NakedFollower[1]) == 0)
						a.StartCombat(folqst.NakedFollower[1])
						icombatstart = 1
						NymTrace("Enemy start combat with NakedFollower[1]")
						elseif folqst.IsWithUs_Follower(2) && (PO3_SKSEFunctions.GetActorState(folqst.NakedFollower[2]) == 0)
						a.StartCombat(folqst.NakedFollower[2])	
						icombatstart = 2
						NymTrace("Enemy start combat with NakedFollower[2]")
						elseif folqst.IsWithUs_Follower(3) && (PO3_SKSEFunctions.GetActorState(folqst.NakedFollower[3]) == 0)
						a.StartCombat(folqst.NakedFollower[3])
						icombatstart = 3
						NymTrace("Enemy start combat with NakedFollower[3]")
						elseif folqst.IsWithUs_Follower(4) && (PO3_SKSEFunctions.GetActorState(folqst.NakedFollower[4]) == 0)
						a.StartCombat(folqst.NakedFollower[4])
						icombatstart = 4
						NymTrace("Enemy start combat with NakedFollower[4]")
					;	StartCombat0 = true 
					;	Debug.Messagebox("Start Combat 0")
						endif 
						

						if Nym() && icombatstart < 404
							
							if folqst.NakedFollower[icombatstart].IsInCombat()
							NymTrace("NakedFollower"+icombatstart+" IsInCombat")
							endif
							
							folqst.NakedFollower[icombatstart].StartCombat(a)
						
						endif 
						
						;endif 
					endif 	
				endif   
			endif 
				;/	
			;IS FOLLOWER 01 
			elseif a == folqst.Actor_Follower01	
			Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+" IsFollower01")	
				if (cfgqst.PlayerRef.GetDistance(a) <= 1000) ;100 units = 1,42 m --> 14 m ca. 		
					Debug.trace("NAKED DEFEAT proximityquest: Follower1 nearby")		
					if a.IsWeaponDrawn()
					IsFollowerFighting = true
					Debug.trace("NAKED DEFEAT proximityquest: Follower1 still fighting")
					else
					IsFollowerFighting = false
					Debug.trace("NAKED DEFEAsT proximityquest: Follower1 NOT fighting")
					endif 
				endif
			;IS FOLLOWER 02 
			elseif a == folqst.Actor_Follower02	
			Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+" IsFollower02")	
				if (cfgqst.PlayerRef.GetDistance(a) <= 1000) ;100 units = 1,42 m --> 14 m ca. 		
					Debug.trace("NAKED DEFEAT proximityquest: Follower2 nearby")		
					if a.IsWeaponDrawn()
					IsFollowerFighting = true
					Debug.trace("NAKED DEFEAT proximityquest: Follower2 still fighting")
					else
					IsFollowerFighting = false
					Debug.trace("NAKED DEFEAT proximityquest: Follower2 NOT fighting")
					endif 
				endif		
					
			else 
			Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+" IsFollower")	

	
			endif	
			/;	
		else 
		Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"] = NONE")
		
		endif	
	endwhile	
	
	
	if !IsFollowerFighting
	cfgqst.ProxActorDetected = 0 
	endif 
	;cfgqst.ProxActorDetected > 0 ---> still fighting (somebody nearby)
	;cfgqst.ProxActorDetected = 0 ---> nobody (hostile) nearby
	
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[0]: "+cfgqst.Enemy[0])
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[1]: "+cfgqst.Enemy[1])
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[2]: "+cfgqst.Enemy[2])
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[3]: "+cfgqst.Enemy[3])
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[4]: "+cfgqst.Enemy[4])
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[5]: "+cfgqst.Enemy[5])
	;Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[6]: "+cfgqst.Enemy[6])

	NymTrace("Enemies: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5])
	NymTrace("Enemies Count: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Actors: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Guards: "+cfgqst.ProxGuardDetected)

	SetStage(1000)

EndFunction


Function ProximityScanRapers()

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers()")
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
		Debug.Trace("NAKED DEFEAT: #ProximityScanRapers ACTOR["+i+"] = NONE")
		endif	
	endwhile	

	if cfgqst.ProxActorDetected > 0
	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(Potential Rapers Nearby)")
	else 
	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(NO Potential Rapers Nearby)")
	endif 
	
	NymTrace("Rapers Found: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
	NymTrace("Rapers Found Count: "+cfgqst.ProxActorDetected)
	
	;cfgqst.ProxGuardDetected = 0
	
	SetStage(1000)

EndFunction



Function ProximityScanPushRapersAway()

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanPushRapersAway()")
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
			elseif folqst.IsWithUs_Follower(0) && a.GetDistance(folqst.NakedFollower[0]) < 200
			NymTrace("Actor Pushed away from "+folqst.NakedFollower[0])
			folqst.NakedFollower[0].PushActorAway(a, 2.0)
			elseif folqst.IsWithUs_Follower(1) && a.GetDistance(folqst.NakedFollower[1]) < 200
			NymTrace("Actor Pushed away from "+folqst.NakedFollower[1])
			folqst.NakedFollower[1].PushActorAway(a, 2.0)
			elseif a.GetDistance(cfgqst.PlayerRef) < 200
			NymTrace("Actor Pushed away from Player")
			cfgqst.PlayerRef.PushActorAway(a, 2.0)
			endif	
			
	;	else 
	;	Debug.Trace("NAKED DEFEAT: #ProximityScanRapers ACTOR["+i+"] = NONE")
		endif	
	endwhile	

;	if cfgqst.ProxActorDetected > 0
;	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(Potential Rapers Nearby)")
;	else 
;	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(NO Potential Rapers Nearby)")
;	endif 
	
;	NymTrace("Rapers Found: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
;	NymTrace("Rapers Found Count: "+cfgqst.ProxActorDetected)
	
	;cfgqst.ProxGuardDetected = 0
	
	SetStage(1000)

EndFunction


Function ProximityScanFixNudists()

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanFixNudists()")
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
			
					
			String sTempName = cfgqst.GetActorName(a)
			int sTempGender = SexLab.GetGender(a)
			float fDistance	= a.GetDistance(cfgqst.PlayerRef)		
			
			
			if Nym() && (sTempGender < 2)
				Form fBody = a.GetWornForm(0x00000004)
				if fBody
				NymTrace("ProximityScanFixNudists: "+TempName+" Clothed")
				else
				NymTrace("ProximityScanFixNudists: "+TempName+" Naked - Distance: "+fDistance)
				a.Disable() 
				a.Enable()
				
					if a && a.GetWornForm(0x00000004)
					a.GetDistance(cfgqst.PlayerRef)
					NymTrace("ProximityScanFixNudists: "+TempName+" FIXED- Distance: "+fDistance)
					else 
					NymTrace("ProximityScanFixNudists: "+TempName+" Fixed? Is now NONE")
					endif 
				endif
			endif 

		endif	
	endwhile	

;	if cfgqst.ProxActorDetected > 0
;	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(Potential Rapers Nearby)")
;	else 
;	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanRapers(NO Potential Rapers Nearby)")
;	endif 
	
;	NymTrace("Rapers Found: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
;	NymTrace("Rapers Found Count: "+cfgqst.ProxActorDetected)
	
	;cfgqst.ProxGuardDetected = 0
	
	SetStage(1000)

EndFunction


Function ProximityScanDuplicateEnemies()	;OLD DELETE

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanDuplicateEnemies()")

	;/
	Actor a		
	Actor aTempActor 
	Keyword DemonicCreature
	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	bool SpawnExtra = false 
	
	bool Enable = true
	int SpawnCount = 0
	bool Spawned = false
	bool DemonicCreatureFound = false
	
	if cfgqst.PlayerRef.IsInCombat()
	Enable = false
	endif 
	
	
	if Enable
	
		if i < 3
		SpawnExtra = true 
		endif 


		while i							
		i -= 1	
		a = NPC[i].GetReference() as Actor		
	;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
			
			
			if cfgqst.ModDEM
			DemonicCreature = (Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
			endif 
			
			if a
				
				String sTempName = a.GetActorBase().GetName() 		
				
				if a.IsInFaction(cfgqst.NakedDuplicantFaction) 
				Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = NakedDuplicantFaction - NOT DUPLICATED")
				endif 
				if !a.IsHostileToActor(cfgqst.PlayerRef)
				Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = Is NOT Hostile - NOT DUPLICATED")
				endif 			
				
				if a.IsInFaction(cfgqst.NakedGhostFaction)
				a.disable()
				a.delete()
			
				
				elseif a == folqst.Actor_Follower01	|| a == folqst.Actor_Follower02	|| (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
				;do nothing
				
				elseif !a.IsInFaction(cfgqst.NakedDuplicantFaction) && a.IsHostileToActor(cfgqst.PlayerRef)
				Actorbase TempActor = a.GetActorBase() 
				
				
					if TempActor
					Spawned = true
					a.PlaceAtMe(TempActor, 1);
					SpawnCount += 1
					Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = DUPLICATED")
				
							if cfgqst.ModDEM && a.HasKeyword(DemonicCreature)
							DemonicCreatureFound = true
						;	Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = DEMONC CREATURE TRIPLICATED")
						;	a.PlaceAtMe(TempActor, 1);
							endif 
							
							if SpawnExtra || DemonicCreatureFound
							Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = EXTRA SPAWN")
							a.PlaceAtMe(TempActor, 1);
							SpawnCount += 1
								if DemonicCreatureFound || D100(50)
								a.PlaceAtMe(TempActor, 1)
								SpawnCount += 1
								endif 
						;	a.PlaceAtMe(TempActor, 1);
							endif 
							DemonicCreatureFound = false 
					;	endif 
					else 
					
					;Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] "+sTempName+" = NO ACTOR!")
					
					endif	
				endif 	
			;else 
			
			
			endif	
		endwhile	
	endif 
	
	if Spawned
	ScreenMessage("Actors Spawned: "+SpawnCount)
	endif 
	
	/;
	
	SetStage(1000)

EndFunction

Function ProximityScanMarkDuplicants()	;OLD DELETE


	
	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanDuplicateEnemies()")

;/
	Actor a										

	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor	
	
	TempDistance = cfgqst.PlayerRef.GetDistance(a)
	
	String sTempName = "NoActor"
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
			sTempName = a.GetActorBase().GetName() 
			
			if a == folqst.Actor_Follower01	|| a == folqst.Actor_Follower02	|| (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
			;do nothing	
			else
			
				if !a.IsInFaction(cfgqst.NakedDuplicantFaction) 		
				a.AddToFaction(cfgqst.NakedDuplicantFaction)
				Debug.Trace("NAKED DEFEAT: #ProximityScanMarkDuplicants ACTOR["+i+"] "+sTempName+" = MARKED")
				endif 
				
				a.StartCombat(cfgqst.PlayerRef)
				
			endif	
		;else 
		;else 
		
		
		
		
		endif	
	endwhile	
	/;

	SetStage(1000)

EndFunction

float PlayerAngleZ
float zOffset
String akactorName


Bool Function CheckPlayerLOS(actor akactor, String sTempName)

	if (TempDistance <= 250) ;
		
		zOffset = cfgqst.PlayerRef.GetHeadingAngle(akactor)

		if (zOffset < 20) && (zOffset > -20)
		DebugTracing("#ProximityScan ["+sTempName+"] has Master inside of FOV (40°)")
		
		return true 	
		else
			if IsMaster
			ScreenMessage("You are not facing the Target!")
			endif
		DebugTracing("#ProximityScan ["+sTempName+"] no FOV")
		return false
		endif 
	else
	return false
		
	endif 
	
EndFunction


Bool Function CheckTargetLOS(actor akactor, String sTempName)

	if (TempDistance <= 150) ;CHECK FOV only when close  
		
		zOffset = akactor.GetHeadingAngle(cfgqst.PlayerRef)
		akactorName = akactor.GetBaseObject().GetName()
		
		if (zOffset < 100) && (zOffset > -100)
		DebugTracing("#ProximityScan ["+sTempName+"] has Player inside of FOV (200°)")
		
			if TempDistance < 40
			ScreenMessage("You are too close to the Target")
			return false
			else 
			return true
			endif 

		else

		DebugTracing("#ProximityScan ["+sTempName+"] no FOV")
		return false
		endif 
	else
	return false
		
	endif 
	
EndFunction

Bool Function CheckMasterLOS(actor akactor, String sTempName, float MasterDistance)

	NymTrace("MasterDistance: "+MasterDistance)

	if (MasterDistance <= 150) ;CHECK FOV only when close  
		
		zOffset = akactor.GetHeadingAngle(cfgqst.PlayerRef)
		akactorName = akactor.GetBaseObject().GetName()
		
		if (zOffset < 20) && (zOffset > -20)
		DebugTracing("#ProximityScan ["+sTempName+"] has Player inside of FOV (40°)")
		
			if MasterDistance < 40
			ScreenMessage("You are too close to the master")
			return false
			else 
			return true
			endif 

		else

		DebugTracing("#ProximityScan ["+sTempName+"] no FOV")
		return false
		endif 
	else
	return false
		
	endif 
	
EndFunction


Float NearDistance
Float FarDistance

Bool Function CheckLOS(actor akactor, String sTempName)

	Float PlayerElevation
	Float NPCElevation
	Float Difference
	
	
	
	PlayerElevation = cfgqst.PlayerRef.GetPositionZ()
	NPCElevation = akactor.GetPositionZ()
	NymTrace("PlayerElevation: "+PlayerElevation)
	NymTrace("NPCElevation: "+NPCElevation)
	
	if PlayerElevation > NPCElevation ;player higher
	Difference = PlayerElevation - NPCElevation
	NymTrace("Difference (Player Higher): "+Difference)
	else 	;player lower
	Difference = NPCElevation - PlayerElevation
	NymTrace("Difference (Player Lower): "+Difference)
	endif 

	if akactor.HasLOS(cfgqst.PlayerRef)
	DebugTracing("#ProximityScan ["+sTempName+"] has LOS to Player")
	return true
	elseif (TempGender < 2) && (TempDistance <= NearDistance) ;CHECK FOV only when close  
		zOffset = akactor.GetHeadingAngle(cfgqst.PlayerRef)
		akactorName = akactor.GetBaseObject().GetName()

		
		if (zOffset < 60) && (zOffset > -60)
		DebugTracing("#ProximityScan ["+sTempName+"] has Player inside of FOV (120°)")
		
		return true 	
		else

		DebugTracing("#ProximityScan ["+sTempName+"] no LOS, no FOV")
		return false
		endif 
	else
	return false
		
	endif 
	
EndFunction
	
	int TempGender = 0
	Float TempDistance = 0.0
	String TempName

; https://ck.uesp.net/wiki/Condition_Functions
	
		
Function ProximityScanDetectMaster()			;#ProximityScanDetectMaster() 

Debug.Trace("NAKED DEFEAT: ProximityScanDetectMaster() START")
	
	cfgqst.ProxActorDetected = 0.0
	cfgqst.ProxGuardDetected = 0.0	
	bool MasterSees = false
	bool CivilianSees = false
	bool ActorAllowed = true
	Actor a		

	String CivilianName01 = "Nobody"
	String CivilianName02 = "Nobody"
	String CivilianName03 = "Nobody"
	String MasterName01 = "Nobody"

	int i = NPC.Length 		

	while i && (cfgqst.ProxGuardDetected == 0) && (cfgqst.ProxActorDetected == 0) ;&& (cfgqst.ProxActorDetected < 3) && !GuardSees	;if a Guard sees you we have the "worst" outcome already, civilians will be continued to check because we can still get a guard					
	i -= 1	
	ActorAllowed = true
	a = NPC[i].GetReference() as Actor	
	Bool ValidCreature = false 
	

	int sTempGender = 0
	Float sTempDistance = 0.0
	Float sAllowedDistanceMaster = 150.0
	Float sAllowedDistanceTarget = 250.0
	Float sAllowedDistanceCreature = 350.0
	
	String sTempName
	String sTempRaceKey
	
	storqst.TargetActorProfession = "No Profession"
	
		if a	
	
			sTempGender = SexLab.GetGender(a)
			sTempDistance = cfgqst.PlayerRef.GetDistance(a)
			sTempName = cfgqst.GetActorName(a) 
			if !sTempName
			sTempName = "No Name!"
			endif 
			
			if a.IsInFaction(cfgqst.NakedGhostFaction)
			a.disable()
			a.delete()
			endif 	
								
				;CLOSE BY 
				if (sTempDistance <= 350) ;Actor nearby (8,4 metres)
				Debug.Trace("NAKED DEFEAT: #ProximityScanDetectMaster ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"]")
				ActorAllowed = true 
				;elseif  (sTempDistance <= 1200) && D100(50)
				;ActorAllowed = true 
				else 	
				ActorAllowed = false
				;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ["+TempName+"] is too far away")
				endif 
		
				;----- LAST CHECKS (only return FALSE) ------------------------------------------------------------------------------------------------------------
				
				if ActorAllowed && (sTempName == "FEC : Load Screen Detector")
				ActorAllowed = false
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] is FEC : Load Screen Detector")
				endif 
				
				if ActorAllowed && !a.Is3DLoaded()
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] no 3D")
				ActorAllowed = false
				endif 
				
				if ActorAllowed && a.IsInCombat()
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] in Combat")
				ActorAllowed = false
				endif 
				
				if ActorAllowed && folqst.IsPresentFollower(a) ;allowed if NOT a Follower
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] is Follower")
				ActorAllowed = false							
				endif 
				
				; 0 - Not sleeping    2 - Not sleeping, wants to sleep  3 - Sleeping   4 - Sleeping, wants to wake
			
				if ActorAllowed && (a.GetSleepState() > 2)
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] is Sleeping:"+a.GetSleepState())
				ActorAllowed = false 
				endif 
				
				if slaveqst.CreatureTask && ActorAllowed  
				sTempRaceKey = cfgqst.GetRaceKey(a)
				
					if sTempRaceKey == slaveqst.SexTaskRaceKey	;we need to get the angle right
					ActorAllowed = true
					endif 
				endif 
				
				;-------------------------------------------------------------------------------------------------------------------------------------------------- 
			
				if ActorAllowed	
				NymTrace("#ProximityScanDetectMaster ["+sTempName+"] is Allowed")

					if (sTempGender < 2) ;|| (SexLab.GetGender(a) == 0)
					NymTrace("#ProximityScanDetectMaster ["+sTempName+"] is Human and Allowed")
						if IsIdleMaster(a) && (sTempDistance <= 130) && CheckMasterLOS(a, sTempName, sTempDistance) && CheckPlayerLOS(a, sTempName) 
					;	IsMaster = true
							;if 
							;storqst.TargetActorProfession = "Guard"
							slaveqst.TempMaster = a			
							;cfgqst.ProxGuardDetected += 1
							storqst.ProxMasterDetected += 1

							MasterName01 = sTempName
							NymTrace(MasterName01+" is the Master") 
							;endif 
						else	
						
							NymTrace("Try Seducing Target")
							;Seduce Target
							if (sTempDistance <= 250)
								
								if IsBlackSmith(a) && CheckPlayerLOS(a, sTempName) && !IsTooClose(a)
								storqst.TargetActorProfession = "Blacksmith"
								cfgqst.ProxActorDetected += 1
								MasterName01 = sTempName
								slaveqst.TempMaster = a	
								NymTrace(MasterName01+" is Blacksmith") 							
								elseif CheckPlayerLOS(a, sTempName) && !IsTooClose(a)
								cfgqst.ProxActorDetected += 1
								MasterName01 = sTempName
								slaveqst.TempMaster = a	
								NymTrace(MasterName01+" is the Seduced") 
								endif
								
							endif 
						endif
					elseif slaveqst.CreatureTask

						NymTrace("Try Seducing Creature Target")
						;Seduce Target
						if CheckPlayerLOS(a, sTempName) && !IsTooClose(a)
						cfgqst.ProxActorDetected += 1
						MasterName01 = sTempName
						slaveqst.TempMaster = a	
						NymTrace(MasterName01+" is the Master") 
						endif	
					endif 
				endif	
		
			else 

			Debug.Trace("NAKED DEFEAT: #ProximityScanDetectMaster ACTOR["+i+"] = NONE")
			endif	
		
		sTempGender = 5
		
	endwhile	

	if storqst.ProxMasterDetected > 1
	storqst.ProxMasterDetected = 1
	
		if Nym()
	;	NymMessage(MasterName01+" (a Master) sees you") 
		else
		InfoMessage(MasterName01+" (a Master) sees you") 
		endif 
	else 	
	storqst.ProxMasterDetected = 0
	endif 


	SetStage(1000)
	
EndFunction	

Bool IsMaster = false

Bool Function IsTooClose(actor akactor)

	if cfgqst.PlayerRef.GetDistance(akactor) < 40
	ScreenMessage("You are too close to the target")
	return true 
	else 
	return false
	endif 
EndFunction 
	
Function ProximityScan()			;#proximity 

Debug.Trace("NAKED DEFEAT: ProximityScan() START")
	
	;GUIDE: This is the Main Proximity Scan for Public Punishment and Local Slavery that loops with the PlayerAliasQuest based Update Loop (variable Time based on MCM)

	if slaveqst.StartDroppingGarbage
	slaveqst.StartDroppingGarbage = false
	NymTrace("StartDroppingGarbage THIS WORKED A")
	;cfgqst.AllegianceScanType = "DropGarbageScan"
	;SendModEvent("StartAllegianceQuest") 	
	SendModEvent("StartDropQuest")

	NymTrace("StartDroppingGarbage THIS WORKED B")
	endif 
	
	cfgqst.ProxActorDetected = 0.0
	cfgqst.ProxGuardDetected = 0.0	
	bool GuardSees = false
	bool CivilianSees = false
	bool ActorAllowed = true
	Actor a		

	String CivilianName01 = "Nobody"
	String CivilianName02 = "Nobody"
	String CivilianName03 = "Nobody"
	String GuardName01 = "Nobody"

	int i = NPC.Length 		

	while i ;&& (cfgqst.ProxActorDetected < 3) && !GuardSees	;if a Guard sees you we have the "worst" outcome already, civilians will be continued to check because we can still get a guard					
	i -= 1	
	ActorAllowed = true
	a = NPC[i].GetReference() as Actor	
	Bool ValidCreature = false 
	
	;cfgqst.ProxActorDetected = 0
	
	int sTempGender = 0
	Float sTempDistance = 0.0
	String sTempName
	;Game.FindClosestActor(0.0, 0.0, 0.0, 5.0)	;check Creationkit
		
		if a	


			sTempGender = SexLab.GetGender(a)
			sTempDistance = cfgqst.PlayerRef.GetDistance(a)
			sTempName = cfgqst.GetActorName(a)
			if !sTempName
			sTempName = "No Name!"
			endif 
			
			if Nym() && IsJarl(a)
			NymTrace("Jarl Distance: "+sTempDistance)
			endif 
			
			if a.IsInFaction(cfgqst.NakedGhostFaction)
			Debug.Trace("NAKED DEFEAT: #ProximityScan ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] deleted NakedGhost")
			a.disable()
			a.delete()
			a = none
			endif 	

			
		;	if D100(5)	;MOved to AllegianceQuest
		;	slaveqst.DropRandomGarbage(a)
		;	endif 
			
		;	if Nym() && !storqst.InCity && !storqst.InVillage && (storqst.IsLocalSlave == 0)
		;		if a.IsInFaction(cfgqst.NakedDuplicantFaction) ;&& !a.IsHostileToActor(cfgqst.PlayerRef)
		;		Debug.Trace("NAKED DEFEAT: #ProximityScan ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"] ATTEMPT AGGRO")				
		;		a.SetAV("Aggression", 1)
		;		a.SetAV("Aggression", 2)
		;		endif 	
		;	endif 
			
			
			;Debug.Trace("NAKED DEFEAT: #ProximityScan ("+i+") ["+TempName+"] Distance = "+TempDistance)
			Debug.Trace("NAKED DEFEAT: #ProximityScan ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"]")	
				;CLOSE BY 
				
				;1	1.428 cm
				;100 = 1,43 m
					
				;slaves are less "visible" and therefor detection distances are lower
				if storqst.IsLocalSlave()
					if (sTempDistance <= NearDistance) ;Actor nearby (8,4 metres)
					ActorAllowed = true 
					elseif  (sTempDistance <= FarDistance) && D100(33)
					ActorAllowed = true 
					else 	
					ActorAllowed = false
					;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ["+TempName+"] is too far away")
					endif 
				else 

					if (sTempDistance <= NearDistance) ;Actor nearby (8,4 metres)
					ActorAllowed = true 
					elseif  (sTempDistance <= FarDistance) && D100(50)
					ActorAllowed = true 
					else 	
					ActorAllowed = false
					;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ["+TempName+"] is too far away")
					endif 
				endif 
			
				;LINE OF SIGHT / VIEWING ANGLE   
				if ActorAllowed && cfgqst.PublicPunishment_LOS_TOGGLE
					if CheckLos(a, sTempName) ;tracing in LOS Function 
					ActorAllowed = true
					else 
					ActorAllowed = false
					;DebugTracing("#ProximityScan ["+TempName+"] is FEC : Load Screen Detector")
					endif 
				endif 
				
				;if cfgqst.ModDEM && ActorAllowed ;&& ;(TempName == ; Guard Trolls?
				;endif 		
				;----- LAST CHECKS (only return FALSE) ------------------------------------------------------------------------------------------------------------
				
				if ActorAllowed && (sTempName == "FEC : Load Screen Detector")
				ActorAllowed = false
				NymTrace("#ProximityScan ["+sTempName+"] is FEC : Load Screen Detector")
				endif 
				
				if ActorAllowed && !a.Is3DLoaded()
				NymTrace("#ProximityScan ["+sTempName+"] no 3D")
				ActorAllowed = false
				endif 
				
				if ActorAllowed && a.IsInCombat()
				NymTrace("#ProximityScan ["+sTempName+"] in Combat")
				ActorAllowed = false
				endif 
				
				if folqst.IsPresentFollower(a) ;allowed if NOT a Follower
				NymTrace("#ProximityScan ["+sTempName+"] is Follower")
				ActorAllowed = false							
				endif 
				
				; 0 - Not sleeping    2 - Not sleeping, wants to sleep  3 - Sleeping   4 - Sleeping, wants to wake
			
				if ActorAllowed && (a.GetSleepState() > 2)
				NymTrace("#ProximityScan ["+sTempName+"] is Sleeping:"+a.GetSleepState())
				ActorAllowed = false 
				endif 
				;-------------------------------------------------------------------------------------------------------------------------------------------------- 
			
				if ActorAllowed	
				
					if slaveqst.Pretending && (sTempDistance <= NearDistance) && ((sTempGender == 0) || (sTempGender == 1 && cfgqst.FemalesAllowed))
						if !slaveqst.TempMaster
						NymTrace("#ProximityScan ["+sTempName+"] is our Punisher for Pretending") ;NOT IDEALLL!!! 
						slaveqst.TempMaster = a
						endif 
					endif 
				
					NymTrace("#ProximityScan ["+sTempName+"] is Allowed")
					
					if (sTempGender < 2) ;|| (SexLab.GetGender(a) == 0)
					NymTrace("#ProximityScan ["+sTempName+"] is Human and Allowed")
						if cfgqst.IsGuard(a)  	
						GuardSees = true
						cfgqst.ProxGuardDetected += 1.0	;we count the guards for later use (currently 0 or 1 is all we need)
						cfgqst.ProxActorDetected += 1.0 ;!!!!(Public Punishment Calculation only trigers on  ProxActorDetected > 1  !!!!
						GuardName01 = sTempName
						else
						CivilianSees = true
							;we count the actor for later use (currently 0 or 1 is all we need)
							if CivilianName01 == "Nobody"
							CivilianName01 = sTempName
							cfgqst.ProxActorDetected += 1.0
							elseif CivilianName02 == "Nobody"
							CivilianName02 = sTempName
							cfgqst.ProxActorDetected += 1.0
							elseif CivilianName03 == "Nobody"
							CivilianName03 = sTempName
							cfgqst.ProxActorDetected += 1.0
							else
							cfgqst.ProxActorDetected += 1.0
							endif 
						endif
					endif 
				endif	
		
			else 
		;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR["+i+"] = NONE")
			Debug.Trace("NAKED DEFEAT: #ProximityScan ACTOR["+i+"] = NONE")
			endif	
		
		sTempGender = 5
		
	endwhile	
	
	;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN END: ProxActorDetected: "+cfgqst.ProxActorDetected)
	;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN END: ProxGuardDetected: "+cfgqst.ProxGuardDetected)
	;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN END: GuardSees: "+GuardSees)
	;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN END: CivilianSees: "+CivilianSees)
	
	if GuardSees
		if Nym() && !cfgqst.IsDefeatRunning() && !storqst.SlaveAtWork
		NymMessage(GuardName01+" (a Guard) sees you") 
		else
		InfoMessage(GuardName01+" (a Guard) sees you") 
		endif 
	elseif CivilianSees
	;InfoMessage("A Civilian sees you") 
		
		if cfgqst.ProxActorDetected == 1.0
			if Nym() && !cfgqst.IsDefeatRunning() && !storqst.SlaveAtWork
			NymMessage(CivilianName01+" sees you") 
			else
			InfoMessage(CivilianName01+" sees you") 
			endif 
		elseif cfgqst.ProxActorDetected == 2.0
			if Nym() && !cfgqst.IsDefeatRunning() && !storqst.SlaveAtWork
			NymMessage(CivilianName01+" and "+CivilianName02+" can see you") 
			else
			InfoMessage(CivilianName01+" and "+CivilianName02+" can see you") 
			endif 
		elseif cfgqst.ProxActorDetected > 2.0
			if Nym() && !cfgqst.IsDefeatRunning() && !storqst.SlaveAtWork
			NymMessage(CivilianName01+", "+CivilianName02+" and "+CivilianName03+" can see you") 
			else
			InfoMessage(CivilianName01+", "+CivilianName02+" and "+CivilianName03+" can see you") 
			endif 
		endif 
	endif 
	Debug.Trace("NAKED DEFEAT: #ProximityScan ProxGuardDetected: "+cfgqst.ProxGuardDetected)
	Debug.Trace("NAKED DEFEAT: #ProximityScan ProxActorDetected: "+cfgqst.ProxActorDetected)

	SetStage(1000)
	
EndFunction	

Bool Function IsGuard(Actor akRef)
	if akRef.IsInFaction(cfgqst.GuardDiaogueFaction)
		return true
	else
		return false
	endif
EndFunction

Bool Function IsIdleMaster(Actor akRef)
	if akRef.IsInFaction(cfgqst.GuardDiaogueFaction) && !akRef.IsInFaction(slaveqst.WhippingFaction)
	
		;int MasterSits = akRef.GetSitState()
	
		return true
	else
		return false
	endif
EndFunction


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
	Debug.trace("NAKED DEFEAT proximityquest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT proximityquest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function DebugTracing(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages || Nym()
	;Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#msg DEBUG) "+Text2)
	endif
EndFunction


Function NymMessage(String Text2)		;#DebugMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#trace NYM) "+Text2)
	endif
EndFunction


Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction
