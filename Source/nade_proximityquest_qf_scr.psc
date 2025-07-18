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

;	Debug.Trace("NAKED DEFEAT: proximityquest stage 1000 (END)")	
;	Debug.Notification("NAKED DEFEAT: proximityquest stage 1000 (END)")	
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


	;ESP
	;IsChild = FALSE 
	;IsDead = FALSE 
	;IsDisabled = FALSE 
	;IsManakinRace = FALSE 
	;GetDistance(Player) <= 2000

			
if cfgqst.ProximityScanType == "CombatScan" 		;ARE ACTORS NEARBY 
cfgqst.ProximityScanType = "empty" 
ProximityScanCombat()	

elseif cfgqst.ProximityScanType == "DuplicateEnemyScan"
cfgqst.ProximityScanType = "empty"
ProximityScanDuplicateEnemies()

elseif cfgqst.ProximityScanType == "CityFightScan"
cfgqst.ProximityScanType = "empty"
ProximityScanCityFight()

elseif cfgqst.ProximityScanType == "DefeatScenarioScan"	;GET DEFEAT TYPE 
cfgqst.ProximityScanType = "empty" 
ProximityScanDefeatScenario()

elseif cfgqst.ProximityScanType == "FollowerNameScan"	
cfgqst.ProximityScanType = "empty" 
ProximityScanFollowerName()

elseif cfgqst.Indecency	;FOR PUBLIC PUNISHMENT 
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
	String sTempName = "empty"
	int i = NPC.Length 					
	bool bNameFound = false
	
	while i	&& !bNameFound						
	i -= 1	
	a = NPC[i].GetReference() as Actor		
	
		if a
		
			TempName = cfgqst.GetActorName(a)
			if sTempName == cfgqst.SavedNames_01
			a.AddToFaction(cfgqst.PlayerFollowerFaction)
			bNameFound = true
			endif
	
		else 
		Debug.Trace("NAKED DEFEAT: ProximityScanFollowerName ACTOR["+i+"] = NONE")
			
		endif	
	endwhile	
	
	SetStage(1000)

EndFunction


Function ProximityScanDefeatScenario()
; CAN ONLY BE USED IN COMBAT (PlayerDown/Surrender)
; CAN ONLY BE USED BEFORE CALMING


	Debug.Trace("NAKED DEFEAT: #proximityquest ProximityScanDefeatScenario()")
	;when player is downed, we Scan the vicinity for hostile actors and redetermine the Defeat Scenario. AllegianceQuest could do this....

	;/PLANS
	We want to use this in combat ONCE after the first hit to scan for enemies early
	We also want to use this to check for enemies after defeat and if we can get back up (because nobody is nearby)	
	/;
	cfgqst.ProxActorDetected = 0.0	;<<<- useful to judge if we have any enemy in the vicinity to determine if we are "save"
	cfgqst.ProxGuardDetected = 0.0	;<<<- useful to judge if we fight guards
	
	Actor a										

	int i = NPC.Length 					
	
	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
		
		if a
			TempGender = SexLab.GetGender(a)
			TempDistance = cfgqst.PlayerRef.GetDistance(a)
			TempName = cfgqst.GetActorName(a)
			if !TempName
			TempName = "No Name!"
			endif 
		;	Debug.Trace("NAKED DEFEAT: #ProximityScanDefeatScenario ["+TempName+"] Distance = "+TempDistance)
	
			;IS ENEMY - in combat, hostile	
			if a.IsInCombat() && a.IsHostileToActor(cfgqst.PlayerRef)
			Debug.Trace("NAKED DEFEAT: #ProximityScanDefeatScenario ACTOR["+i+"]["+TempName+"] [Distance = "+TempDistance+" IsEnemy")
				if cfgqst.PlayerRef.GetDistance(a) <= 2000 ;100 units = 1,42 m --> 14 m ca. 
				cfgqst.GetEnemyType(a)	
				cfgqst.ProxActorDetected += 1
				endif
				
				if !a.IsInFaction(cfgqst.EnemyFaction)
				a.AddToFaction(cfgqst.EnemyFaction) ;<<---- we use this to identify our enemies from combat
				endif 
			else 
			Debug.Trace("NAKED DEFEAT: #ProximityScanDefeatScenario ACTOR["+i+"]["+TempName+"] [Distance = "+TempDistance+" IsNeutral")
	
			endif	
			
			
		else 
		Debug.Trace("NAKED DEFEAT: #ProximityScanDefeatScenario ACTOR["+i+"] = NONE")
			
		endif	
	endwhile	
	
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[0]: "+cfgqst.Enemy[0])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[1]: "+cfgqst.Enemy[1])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[2]: "+cfgqst.Enemy[2])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[3]: "+cfgqst.Enemy[3])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[4]: "+cfgqst.Enemy[4])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[5]: "+cfgqst.Enemy[5])
	Debug.trace("NAKED DEFEAT ProximityScanDefeatScenario: Enemy[6]: "+cfgqst.Enemy[6])
	
	if cfgqst.IsNymrasGame()
;	ScreenMessage("Enemies for Defeat: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
;	ScreenMessage("Enemies for Defeat Count: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Actors: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Guards: "+cfgqst.ProxGuardDetected)
	endif 
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

Function ProximityScanCombat()

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanCombat()")

	Bool IsFollowerFighting = true

	;/PLANS
	We want to use this in combat ONCE after the first hit to scan for enemies early
	We also want to use this to check for enemies after defeat and if we can get back up (because nobody is nearby)	
	/;
	cfgqst.ProxActorDetected = 0.0	;<<<- useful to judge if we have any enemy in the vicinity to determine if we are "save"
	cfgqst.ProxGuardDetected = 0.0	;<<<- useful to judge if we fight guards
	
	Actor a										

	int i = NPC.Length 						

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
			;Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ["+sTempName+"] Distance = "+TempDistance)
			
		
		
			if a.IsInFaction(cfgqst.NakedGhostFaction)
			a.disable()
			a.delete()
			endif 	
			
			;IS ENEMY 
			;if a.IsHostileToActor(cfgqst.PlayerRef)
			
			if a && (a == folqst.Actor_Follower01) && (a == folqst.Actor_Follower02) && (a == folqst.Actor_Follower03) && (a == folqst.Actor_Follower04) && (a == folqst.Actor_Follower05)
				if a.IsInCombat()
				cfgqst.ProxGuardDetected += 1.0	
				endif
			elseif a 
			Debug.Trace("NAKED DEFEAT: #ProximityScanCombat ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+" IsEnemy")
				if !(a.GetBaseObject().GetName() == "FEC : Load Screen Detector")						
					;if a != folqst.Actor_Follower01
					cfgqst.GetEnemyType(a)
					
					;if a.IsInCombat()
					if cfgqst.PlayerRef.GetDistance(a) <= 1500 ;100 units = 1,42 m --> 14 m ca. 
					cfgqst.ProxActorDetected += 1.0	
					endif
					;endif 
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
	Debug.trace("NAKED DEFEAT #ProximityScanCombat: Enemy[6]: "+cfgqst.Enemy[6])

	NymTrace("Enemies: "+cfgqst.Enemy[0]+" "+cfgqst.Enemy[1]+" "+cfgqst.Enemy[2]+" "+cfgqst.Enemy[3]+" "+cfgqst.Enemy[4]+"  "+cfgqst.Enemy[5]+"  "+cfgqst.Enemy[6])
	NymTrace("Enemies Count: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Actors: "+cfgqst.ProxActorDetected)
	;Debug.Notification("NAKED DEFEAT proximity: Guards: "+cfgqst.ProxGuardDetected)

	SetStage(1000)

EndFunction


Function ProximityScanDuplicateEnemies()

	Debug.Trace("NAKED DEFEAT: proximityquest ProximityScanDuplicateEnemies()")

	Actor a										

	int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########

	while i							
	i -= 1	
	a = NPC[i].GetReference() as Actor		
;	Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;check actor alias slots (15)
	
		if a
			
			if a == folqst.Actor_Follower01	|| a == folqst.Actor_Follower02	|| (a.GetBaseObject().GetName() == "FEC : Load Screen Detector")
			;do nothing
			
			else 
			Actorbase TempActor = a.GetActorBase() 
			a.PlaceAtMe(TempActor, 1);

			endif	
		else 
		Debug.Trace("NAKED DEFEAT: #ProximityScanDuplicateEnemies ACTOR["+i+"] = NONE")
		
		endif	
	endwhile	

	SetStage(1000)

EndFunction




float PlayerAngleZ
float zOffset
String akactorName

Bool Function CheckLOS(actor akactor, String sTempName)

	if akactor.HasLOS(cfgqst.PlayerRef)
	DebugTracing("#ProximityScan ["+sTempName+"] has LOS to Player")
	return true
	elseif (TempGender < 2) && (TempDistance <= 600) ;CHECK FOV only when close  
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
	
Function ProximityScan()			;#proximity

Debug.Trace("NAKED DEFEAT: ProximityScan() START")
	
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
			;Debug.Trace("NAKED DEFEAT: #ProximityScan ("+i+") ["+TempName+"] Distance = "+TempDistance)
			Debug.Trace("NAKED DEFEAT: #ProximityScan ACTOR["+i+"]["+sTempName+"] [Distance = "+sTempDistance+"]")	
				;CLOSE BY 
				if (sTempDistance <= 600) ;Actor nearby (8,4 metres)
				ActorAllowed = true 
				elseif  (sTempDistance <= 1200) && D100(50)
				ActorAllowed = true 
				else 	
				ActorAllowed = false
				;Debug.Trace("NAKED DEFEAT: PROXIMITY SCAN ["+TempName+"] is too far away")
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
		if Nym()
		NymMessage(GuardName01+" (a Guard) sees you") 
		else
		InfoMessage(GuardName01+" (a Guard) sees you") 
		endif 
	elseif CivilianSees
	;InfoMessage("A Civilian sees you") 
		
		if cfgqst.ProxActorDetected == 1.0
			if Nym()
			NymMessage(CivilianName01+" sees you") 
			else
			InfoMessage(CivilianName01+" sees you") 
			endif 
		elseif cfgqst.ProxActorDetected == 2.0
			if Nym()
			NymMessage(CivilianName01+" and "+CivilianName02+" can see you") 
			else
			InfoMessage(CivilianName01+" and "+CivilianName02+" can see you") 
			endif 
		elseif cfgqst.ProxActorDetected > 2.0
			if Nym()
			NymMessage(CivilianName01+", "+CivilianName02+" and "+CivilianName03+" can see you") 
			else
			InfoMessage(CivilianName01+", "+CivilianName02+" and "+CivilianName03+" can see you") 
			endif 
		endif 
	endif 

	SetStage(1000)
	
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
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT proximityquest: (#trace NYM) "+Text2)
	endif
EndFunction


Bool Function Nym()

	if cfgqst.IsNymrasGame()
	return TRUE
	else
	return false
	endif 
EndFunction
