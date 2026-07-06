Scriptname nade_calmquest_qf_scr Extends Quest Hidden

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
ReferenceAlias Property Alias_Enemy26 Auto 	;different, no previous conditions
ReferenceAlias Property Alias_Enemy27 Auto	;different, no previous conditions
ReferenceAlias Property Alias_Enemy28 Auto	;different, no previous conditions
ReferenceAlias Property Alias_Enemy29 Auto	;different, no previous conditions

ReferenceAlias Property Alias_Enemy30 Auto	;different, no previous conditions

ObjectReference Property VehiclePlayer Auto
ObjectReference Property Vehicle_Victims0 Auto
ObjectReference Property Vehicle_Victims1 Auto

ReferenceAlias Property Alias_Vehicle Auto	
ReferenceAlias Property Alias_Vehicle_Follower_01 Auto
ReferenceAlias Property Alias_Vehicle_Follower_02 Auto
ReferenceAlias Property Alias_Vehicle_Follower_03 Auto

ReferenceAlias Property Alias_XMarkerHeading_00 Auto	
ReferenceAlias Property Alias_XMarkerHeading_01 Auto	
ReferenceAlias Property Alias_XMarkerHeading_02 Auto	
ReferenceAlias Property Alias_XMarkerHeading_03 Auto	

ReferenceAlias Property Alias_Player Auto
ReferenceAlias Property Follower Auto 

;DOES NOTHING:
ReferenceAlias[] Property NPC Auto			;references NPCs, most likely the NPCs in the area based on the Conditions in ESP

;THIS IS AN IMPORTANT CORE ELEMENT: 
ReferenceAlias[] Property ActorArray Auto	

import JsonUtil


Faction Property CalmFaction Auto
Faction Property AllegianceFaction Auto					;THIS ADDS THE NPC TO THE PLAYER ALLY FACTION.
Faction Property CurrentFollowerFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property DefeatFaction Auto			;TEST
Faction Property Hirelings Auto
Faction Property zbfFactionSlave Auto
Faction Property SexLabForbiddenActors Auto
Faction Property NakedGhostFaction Auto
Faction Property PlayerFaction Auto
Faction Property FactionBusyRaper Auto
Faction Property WhippingFaction Auto
Faction Property BusyFaction Auto


Faction Property Faction_Whipper_00 Auto
Faction Property Faction_Whipper_01 Auto
Faction Property Faction_Whipper_02 Auto

Faction Property SexLabAnimatingFaction Auto

nade_WhipQuest_00 Property whipq00 Auto
nade_WhipQuest_01 Property whipq01 Auto
nade_WhipQuest_02 Property whipq02 Auto

;nade_SexQuest_qf_scr Property sexqst Auto

nade_FollowerIdleQuest_01_qf_scr Property folidle01 Auto
nade_defeatquest_qf_scr Property defqst Auto
nade_followerquest_qf_scr Property folqst Auto
nade_configquest_scr Property cfgqst Auto
nade_storage_qf_scr Property storqst Auto
nade_slavery_qf_scr Property slaveqst Auto

nade_playeralias_scr Property playscr Auto
nade_capturequest_qf_scr Property capqst Auto
SexLabFramework Property SexLab Auto
slaFrameworkScr Property sla Auto		;aroused

Idle[] Property KnockdownIdles Auto
Idle[] Property Poses Auto					;NYMRA reimplement poses

Actor[] Property Aggressors02 Auto
Actor[] Property Aggressors Auto
Actor[] Property Victims Auto
Actor[] Property Rapers Auto

Actor[] Property Fappers Auto

Actor[] Property VoyeursA Auto

Actor[] Property UpdateRapers Auto

Actor[] Property AggressorList Auto

Armor[] Property AggressorClothesList Auto
Weapon[] Property AggressorWeaponsA1List Auto
Weapon[] Property AggressorWeaponsA2List Auto
Weapon[] Property AggressorWeaponsBList Auto
Armor[] Property AggressorShieldsList Auto

Actor[] Property SpawnedActor Auto
Actor[] Property RapersA Auto
Actor[] Property RapersB Auto
Actor[] Property RapersC Auto
Actor[] Property CreaturesA Auto
Actor[] Property CreaturesB Auto
Actor[] Property CreaturesC Auto
Actor[] Property CreaturesD Auto
Actor[] Property CreaturesE Auto
Actor[] Property CreaturesF Auto

Actor[] Property RapersTemp Auto

Actor[] Property Whippers Auto
Actor[] Property ActorsGhostsHumans Auto

Actor Property Aggressor Auto	;old delete?
Actor Property Followers Auto	;old delete?

Actor Property PresentRobber Auto	;for RobberyQuests

;ActorBase Ghost0

;ActorBase Ghost1
;ActorBase Ghost2

;Int Property SpawnedActorCount Auto
Int Property RapersACount Auto
Int Property RapersBCount Auto
Int Property RapersCCount Auto
Int RapersAFemaleCount = 0
Int RapersBFemaleCount = 0
Int RapersCFemaleCount = 0

Int Property CreaturesACount Auto
Int Property CreaturesBCount Auto
Int Property CreaturesCCount Auto
Int Property CreaturesDCount Auto
Int Property CreaturesECount Auto
Int Property CreaturesFCount Auto

Int Property FapperCount Auto

Int Property AggressorCount Auto
Int Property Aggressor02Count Auto
Int Property VictimCount Auto
Int Property RaperCount Auto

Int Property VoyeursACount Auto

Quest Property AllegianceQuest Auto

Location[] Property LocationRegions Auto

sslBaseAnimation[] Property Animations1_Follower01 Auto
sslBaseAnimation[] Property Animations2_Follower01 Auto
sslBaseAnimation[] Property Animations3_Follower01 Auto
sslBaseAnimation[] Property Animations4_Follower01 Auto

sslBaseAnimation[] Property Animations1_Follower02 Auto
sslBaseAnimation[] Property Animations2_Follower02 Auto
sslBaseAnimation[] Property Animations3_Follower02 Auto
sslBaseAnimation[] Property Animations4_Follower02 Auto


sslBaseAnimation[] Property AnimationsForeplay Auto
sslBaseAnimation[] Property AnimationsSolo Auto

sslBaseAnimation[] Property Animations1 Auto
sslBaseAnimation[] Property Animations2 Auto
sslBaseAnimation[] Property Animations3 Auto
sslBaseAnimation[] Property Animations4 Auto	

sslBaseAnimation[] Property AnimationsPee1 Auto
sslBaseAnimation[] Property AnimationsPee2 Auto
sslBaseAnimation[] Property AnimationsPee3 Auto
sslBaseAnimation[] Property AnimationsPee4 Auto

sslBaseAnimation[] Property AnimationsIdle01 Auto	

Bool Property IsHuman Auto ;remove?
;Bool Property IsHumanoid Auto
Bool Property IsHumanFucker Auto ;remove?

Keyword Property ActorTypeNPC Auto
Key[] Property Keys Auto
FormList Property nade_HumanList Auto
FormList Property nade_HumanoidList Auto
Armor [] Property DefeatBinds Auto		
Armor [] Property DefeatBindsYoke Auto		
Armor [] Property DefeatBindsArmbinder Auto	
;0 ArmBWrstArmbinder 02

Armor[] Property EmptyArmor Auto
Armor[] Property Pee Auto	
Weapon Property Cane Auto	

Sound Property SoundCoin Auto	

;nade_capturequest_qf_scr Property capqst Auto
Bool NeedArmbinder = false
Bool creaturegroup = false
Bool humangroup = false
Bool group = false
Bool NeedARaper = false
Bool NeedAnotherRaper = false
;Bool FollowerExists = false
Bool PlayerRape = true				;ONLY TESTING IMPROVE THIS
Bool FollowerRape = true
Bool FollowerGetsRaped = false
Bool Peeing = false
;bool ForcePosing_1 = false
;bool ForcePosing_2 = false

bool IsGuardEndDefeat = false
bool OnlyAnimals = false
bool rape1done = false
bool rape2done = false
bool AddRapeHandsDuringSex = false
bool CombatScanner = false
;bool StopCombatScan = false
bool EndOfRape = false
bool EndOfQuest = false
bool NeedAwhipper = true
int SexScenesDone = 0

;bool RestartCalmQuest = false
bool ReequipBindsAfterSex = false

;bool WaitForWashing = false

;NO LONGER IN USE 
;bool Victims0 = false
;bool Victims1 = false
;bool Victims2 = false
;bool Victims3 = false
;bool Victims4 = false

;bool StartSpawnFloor = false

;bool RemoveFloor = false

;bool PlayerInCombat() = IsInCombat()			;Combatcheck

;bool Function PlayerInCombat()
;if cfgqst.PlayerRef.IsInCombat() 
;return true
;else
;return false
;endif
;EndFunction

;/
bool Function IsCombatStarted()
if cfgqst.PlayerRef.IsInCombat() 
return true
else
return false
endif
EndFunction
/;

Bool Function AllowBathing()
;Bathing In Skyrim no longer required
			float DirtinessValue = 0			
			;if cfgqst.ModBiS
			
			
			if cfgqst.ModBiS || cfgqst.ModBiS_R
			GlobalVariable Dirtiness; = (Game.GetFormFromFile(0x00000DA8, "Bathing in Skyrim - Main.esp") As GlobalVariable)	
			
				if (Game.GetModByName("Bathing in Skyrim - Main.esp") != 255)  
				Dirtiness = (Game.GetFormFromFile(0x00000DA8, "Bathing in Skyrim - Main.esp") As GlobalVariable)	
				NymTrace("Dirtiness from File (Classic) = "+Dirtiness.GetValue())
				elseif (Game.GetModByName("Bathing in Skyrim.esp") != 255)
				Dirtiness = (Game.GetFormFromFile(0x00000DA8, "Bathing in Skyrim.esp") As GlobalVariable)
				NymTrace("Dirtiness from File (Renewed) = "+Dirtiness.GetValue())
				endif 
				
				DirtinessValue = (Dirtiness.GetValue()*100)	;float to % 
				NymTrace("DirtinessValue = "+DirtinessValue)
				
				if (DirtinessValue > 25) && D100(DirtinessValue)
				return true
				else
				return false
				endif
			else
			return false
			endif 
		
EndFunction			

Bool Function AllowShortDefeat()	
NymTrace("AllowShortDefeat()")
	
	if (cfgqst.DefeatEntranceVia == "Prostitution")
	return false
	;elseif (storqst.IsLocalSlave > 0) && (storqst.SlavePunishmentLevel > 0)
	;storqst.SlavePunishmentLevel = 0
	;return false	
	elseif (storqst.IsLocalSlave > 0) && D100(90)
	NymTrace("AllowShortDefeat(IsLocalSlave 90% short chance)")
	return true	
	elseif (cfgqst.DefeatTypeGeneral == "AreAnimals") && cfgqst.SkipSex
	return false
	else
		;if we surrender and cooperation is on
		if cfgqst.DefeatViaSurrender && D100(cfgqst.CooperativeSurrenderChance)
		return true
		;if its civil rape and we are prostitute (#TODO) improve this
		;elseif cfgqst.CivilRapeRunning && cfgqst.IsRadiantProstitute()		
		;return true
		;if its Defeat and chances are met
		elseif cfgqst.DefeatViaSurrender && cfgqst.CivilRapeRunning && D100(90)
		return true
		
		elseif cfgqst.DefeatQuestRunning && D100(cfgqst.DefeatShortProb)
		return true
		;if its civilrape and chances are met
		elseif cfgqst.CivilRapeRunning && D100(cfgqst.PunishShortProb)
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: cfgqst.PunishShortProb: "+cfgqst.PunishShortProb)
		return true
		
		elseif cfgqst.CivilRapeRunning && cfgqst.PlayerRef.IsInFaction(cfgqst.SlaveWhiterun)
		return true
		else
		return false
		endif 
	endif
EndFunction	

int Function RaperGroupCount()

	int GroupCount = 0 
	int ActorCount = 0
	int HumanCount = 0
	int CreatureCount = 0
	bool CreaturesAndHumans = false

	HumanCount = RapersACount + RapersBCount + RapersCCount
	CreatureCount = CreaturesACount + CreaturesBCount + CreaturesCCount + CreaturesDCount + CreaturesECount + CreaturesFCount 
	ActorCount = HumanCount + CreatureCount
	
	if (HumanCount > 0) && (CreatureCount > 0)
	CreaturesAndHumans = true
	endif 
	if (RapersACount > 0) 
	GroupCount += 1
	endif 
	if (RapersBCount > 0) 
	GroupCount += 1
	endif 
	if (RapersCCount > 0) 
	GroupCount += 1
	endif 
	if (CreaturesACount > 0) 
	GroupCount += 1
	endif 	
	if (CreaturesBCount > 0) 
	GroupCount += 1
	endif 	
	if (CreaturesCCount > 0) 
	GroupCount += 1
	endif 
	if (CreaturesDCount > 0) 
	GroupCount += 1
	endif 	
	if (CreaturesECount > 0) 
	GroupCount += 1
	endif 	
	if (CreaturesFCount > 0) 
	GroupCount += 1
	endif 
	
	;if ActorCount == 1 && SexScenes > 1 
	;SexScenes = 1
	;endif 

	
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GroupCount "+GroupCount)
	
	return GroupCount
	
EndFunction 

String DefeatTypeExecution = "none"
		
Int Function GetSexScenes()			;#GetSexScenes()
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes()")
		;group or not is determined in the functions, not here	
				
		if cfgqst.SkipSex		
			NymMessage("SkipSex...") 
			return 0			;#IMPORTANT - we need to make sure the mod processes correctly RAPEAGAIN should not happen when SkipSex	
			
		elseif cfgqst.DefeatType == "Slaughterfishes" || cfgqst.DefeatType == "Mudcrabs"
			return 1	
		elseif cfgqst.ShortPunishment > 0
		
			if cfgqst.ShortPunishment == 1 
			return 1
			else 
			return 0
			endif 
			
		elseif cfgqst.DefeatViaSlavery && !cfgqst.RapeAgain && (cfgqst.DefeatChainProb > 0)	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatViaSlavery()")
		return 3	
		
		;is this superfluous?
		elseif cfgqst.RapeAgain && D100(cfgqst.DefeatChainProb) 
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapeAgain()")
			if D100(50)
			return Utility.RandomInt(1,2)
			else
			return Utility.RandomInt(1,3)
			endif
		elseif cfgqst.DefeatTypeScenario == "FastTravel"
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FastTravel()")
		
			if cfgqst.DefeatEntranceVia == "Travel Ritual Risky"
				if D100(10)	
				ScreenMessage("Your ritual partners are very horny...brace yourself!")			
				return Utility.RandomInt(4,6)	
				elseif D100(15)
				return 3
				elseif D100(35)
				return 2
				else
				return 1
				endif		
			else 
				if D100(1)	
					ScreenMessage("Your ritual partners are very horny...brace yourself!")			
					return Utility.RandomInt(4,6)	
					elseif D100(5)
					return 3
					elseif D100(15)
					return 2
					else
					return 1
					endif		
			endif
		
;/		
	;IMPROVE LATER - maybe only account for very low or very high raper counts
		;-- Regular Scenario based on GroupCount --;					
		elseif cfgqst.IsNymrasGame() && cfgqst.DefeatQuestRunning && (cfgqst.DefeatChainProb > 50)
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: IsNymrasGame()")
			;int i = RaperGroupCount() ;we dont have filled the groups yet
			int i = CountActorsSmart()
			;#TODO THIS IS NOT WORKING -- TOO EARLY FOR THE GROUPS NOT YET CHECKED
			
			if i > 6 
			ScreenMessage("A lot of rapers are queuing up. Brace yourself!")	
			return 6
			elseif i > 5 
			ScreenMessage("A lot of rapers are queuing up. Brace yourself!")
			return 5
			elseif i > 4 
			ScreenMessage("A lot of rapers are queuing up. Brace yourself!")
			return 4
			elseif i > 3
			return 3
			elseif i > 2
			return 2
			else
			return 1 
			endif 
		
/;
		elseif (cfgqst.DefeatTypeScenario == "ChainRape") ;|| cfgqst.HarderDefeat
		;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Harder()")
			;	if cfgqst.HarderDefeat
			;	ScreenMessage("You will be chainraped for missbehaving") 
			;	endif
			return 6
		
		;-- Regular Scenario based on MCM alone --;
		elseif D100(cfgqst.DefeatChainProb)
		;	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Defeat Chain Rape()")
			;if D100(90)
			if Nym()
			return 3
			else 
			return Utility.RandomInt(2,3) 
			endif 
			;else
			;return 0		;10% chance of NO Sex Scene playing (directly to furniture game)
			;endif

		else
		;	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: else 1 Scene()")
			;if D100(80)
			return 1
			;else
			;return 0		;20% chance of NO Sex Scene playing (directly to furniture game)
			;endif	
		endif
EndFunction

Int Function CountActorsSmart()
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CountActorsSmart()")


EndFunction


Int Function GetSexScenesSmart() ;WIP
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenesSmart()")

; NOT WORKING 
		;recalculate SexScenes based on Group COunt	
							
	;	int GroupCount = GroupCountCreatures + GroupCountHumans	

	;	if cfgqst.DefeatTypeScenario == "ChainRape"
	;		if GroupCount > 2
	;		return 6
	;		elseif GroupCount > 1
	;		return 5
	;		elseif GroupCount == 1
	;		return 4
	;		endif 
			
	;	elseif cfgqst.DefeatTypeScenario == "Afterlife" 	
	;		return 3
	;	else
	;		if GroupCount > 2
	;		return 3
	;		elseif GroupCount > 1
	;		return 2
	;		elseif GroupCount == 1
	;		return 1
	;		endif
	;	endif	

EndFunction

int Function GetShortDefeatScenario()
NymTrace("GetShortDefeatScenario()")

	if cfgqst.DefeatTypeGeneral == "AreHumans"
	
		;HUMANS - no sex, no whip
		if cfgqst.SkipSex && (cfgqst.DefeatWhipProb == 0)	
			if cfgqst.DefeatQuestRunning
			return 3
			else
				if (cfgqst.GetDirtiness() > 45) && D100(cfgqst.GetDirtiness())
				return Utility.RandomInt(3,5)	;no sex, no whip
				else
				return Utility.RandomInt(3,4)	;no sex, no whip, no bathing
				endif
			endif
		;HUMANS - no sex
		elseif cfgqst.SkipSex && (cfgqst.DefeatWhipProb > 0)
			if cfgqst.DefeatQuestRunning
			return Utility.RandomInt(2,3)	
			else
				if (cfgqst.GetDirtiness() > 45) && D100(cfgqst.GetDirtiness())
				return Utility.RandomInt(2,5)	;no sex
				else
				return Utility.RandomInt(2,4)	;no sex, no bathing
				endif 
			endif
		;HUMANS - no whip
		elseif cfgqst.DefeatWhipProb == 0
			int fuckthis
			if cfgqst.DefeatQuestRunning
			fuckthis = Utility.RandomInt(1,3)
			else
				if (cfgqst.GetDirtiness() > 45) && D100(cfgqst.GetDirtiness())
				fuckthis = Utility.RandomInt(1,5)	
				else
				fuckthis = Utility.RandomInt(2,5)	;no bathing
				endif
			endif
			if fuckthis == 2
			fuckthis = 1
			endif
			return fuckthis
			
		elseif cfgqst.DefeatQuestRunning
		return Utility.RandomInt(1,3)
		else	
			if (cfgqst.GetDirtiness() > 45) && D100(cfgqst.GetDirtiness())
			return Utility.RandomInt(1,5)	
			else
			return Utility.RandomInt(1,4)	;no bathing
			endif
		endif
		
	elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids") && (cfgqst.DefeatType != "Giants") && (cfgqst.DefeatType != "Trolls")
		;HUMANOIDS - no sex, no whip
		if cfgqst.SkipSex && (cfgqst.DefeatWhipProb == 0)	
		return 3	
		;HUMANOIDS - no sex
		elseif cfgqst.SkipSex && (cfgqst.DefeatWhipProb > 0)
		return Utility.RandomInt(2,3)
		;HUMANOIDS - no whip
		elseif cfgqst.DefeatWhipProb == 0
			int fuckthis = Utility.RandomInt(1,3)
			if fuckthis == 2
			fuckthis = 1
			endIf
			return fuckthis
		else
		return Utility.RandomInt(1,3)
		endif
		
	elseif (cfgqst.DefeatTypeGeneral == "AreAnimals") && !cfgqst.SkipSex
	return 1							;only Sex
	else 
	return 1	;can always be sex 
	endif
EndFunction

	;EVERYTHING IS OFF
	;main bools
	bool Allow_FindSpot = false	
	bool Allow_ForcedBathing = false
	bool Allow_GoldenShower = false
	bool Allow_Foreplay = false	
	bool Allow_Creatures = false			;creatures are ON by default, this is an extra internal check. IMPROVE THIS #baustelle
	int Allow_SexScenes = 0 			
	;cfgqst.Allow_Whipping = false
	string Allow_Aftermath = "None"
	bool Allow_EscapeCrawl = false

	;minor Bools
	;cfgqst.Allow_EscapeGameAftermath = false
	;cfgqst.Allow_EscapeDifficulty = "Easy"	
	bool Allow_PayFine = false
	bool Allow_AddBinds = false
	bool Allow_AddCollar = false
	;bool Allow_EscapeGame = false
	;int Allow_Scenario = 0
	;bool Allow_FullStrip = false
	
	;Do this LATER
		;Allow_Robbery
		;Allow_Rescue
		;Allow_SlaverySS
		;Allow_SlaverySD
		;Allow_ImprisonPOP
		;Allow_Capture

Function AbortDefeat()

	Sexlab.ThreadSlots.StopAll()	
	
	ResetAllowance()
EndFunction

Function ResetAllowance()
	
	;main bools, order of appearance
	Allow_FindSpot = false	
	;Allow_AddBinds = false
	;Allow_AddCollar = false
	Allow_ForcedBathing = false
	Allow_GoldenShower = false
	Allow_Foreplay = false	
	Allow_Creatures = false
	Allow_SexScenes = 0 			
	cfgqst.Allow_Whipping = false
	Allow_Aftermath = "None"
	;Allow_EscapeCrawl = false

	;minor Bools
	cfgqst.Allow_EscapeGameAftermath = false
	cfgqst.Allow_EscapeDifficulty = "Random"	
	Allow_PayFine = false
	
	
EndFunction	
		
Function StartTest()

	;Disable Afterlife Test
;	if cfgqst.NymBETA
;		if cfgqst.DefeatTypeScenario == "Execution"
;		ScreenMessage("STEP 1")
;		elseif cfgqst.DefeatTypeScenario == "Afterlife"	 
;;		ScreenMessage("STEP 2")
	;	endif
	;
	;	if cfgqst.DefeatTypeScenario != "Afterlife"
	;	cfgqst.DefeatTypeScenario = "Execution"
	;	endif	
;	endif
	
EndFunction
		
		
		;PRISON / CRIME LOCATIONS WINDHELM - assuming space left and right and FOllowers in a row L and R 
		;000CD920 	Next to the Gates inside ->>> Public Display
		;000C582B 	Test 5Marker, Market Place Display. Rotate 90? ->>> Public Display
		;000A24A7 	IdleMarker, only when already in City- Up the staris, central plaza, nice! ->>> Public Display
		;000C565A	Test 5Marker. In Front of Palace Door next to the fire ->>> Public Display
		;000282DE	Front of Jarls Throne. Move back 50 or so? ->>> Jarl Service
		;001000E6	X Marker in Baracks Mess Hall. Move back 50. ->>> Guards Service 
		;000D2CC8	MarkerHEading in Prison. Rotate to the right 45° and move back like 200 units. ->>> Prion Cell 
		;000235A9	XMarker in Kitchen. Rotate 180 ->>> servant service 
		;0002B055	MarkerHeading in narrow place, firewood ->>> Public Display
		;000A24B1	MarkerHeading in Quarters ->>> Public Display
		;cells are full but there are three. Future update... 
		
Function GetMainSequence()	;#MAIN1		#GetMainSequence()		#sequence2
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetMainSequence()")
	
	;GENERAL ALLOWANCES --------------------------
	;--- CREATURES --- ;
	if cfgqst.AllowCreatures
	Allow_Creatures = true		;set FALSE for cases where its not working internally (scenarios)
	else
	Allow_Creatures = false
	endif
	
	;--- ESCAPE CRAWL ---;
	if cfgqst.DefeatEscapeCrawl > 0
	Allow_EscapeCrawl = true
	endif
	
	if cfgqst.CivilRapeRunning 	
	Allow_EscapeCrawl = false
	endif	

	;>>>>> HANDLE SCENARIOS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;we want to be able to send a specified scenario later
	

	;>>>>> RAPE AGAIN SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;DefeatViaSlavery does not trigger here since this is not the "Regular Sequence"

	if cfgqst.RapeAgain
	;ResetAllowance() dont need this here. we only make sure we get back into furniture
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(RapeAgain) "+Allow_SexScenes)
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "RandomRapeAgain"
	cfgqst.Allow_EscapeGameAftermath = true
	cfgqst.HarderDefeat = false

	;>>>>> FAST TRAVEL SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;for now its simply a fucking event without much else. Add additional checks (naked/dirt) and risks later.
	;needs to be before Short Defeat Chance because that should not trigger here	
	elseif (cfgqst.DefeatTypeScenario == "FastTravel")
		
		ResetAllowance()
		Allow_SexScenes = GetSexScenes()
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(FastTravel) "+Allow_SexScenes)
		Allow_EscapeCrawl = false
		Allow_FindSpot = false	
		Allow_AddBinds = false
		Allow_AddCollar = false
		Allow_ForcedBathing = false
		Allow_GoldenShower = false
		Allow_Foreplay = false	
		Allow_Creatures = true			
		cfgqst.Allow_Whipping = false
		Allow_Aftermath = "None"
		cfgqst.Allow_EscapeGameAftermath = false
		cfgqst.Allow_EscapeDifficulty = "Random"	
		Allow_PayFine = false
		
		;if cfgqst.DefeatEntranceVia == "Travel Ritual Save"
		
	;	if (cfgqst.DefeatEntranceVia == "Travel Ritual Risky") 
			
	;		if D100(50)
	;		Allow_SexScenes = 3
	;	
	;	endif 
	
	;>>>>> AFTERLIFE SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	elseif cfgqst.DefeatTypeScenario == "Afterlife"
		
		ResetAllowance()
	
		if cfgqst.Nym()	;NYMRAS DARK WORLD 
		Allow_SexScenes = Utility.Randomint(2,4)
		else
		Allow_SexScenes = Utility.Randomint(2,3)
		
		
		
		endif 
	
		Allow_EscapeCrawl = false
		Allow_FindSpot = false	
		Allow_AddBinds = false
		Allow_AddCollar = false
		Allow_ForcedBathing = false
		Allow_GoldenShower = false
		Allow_Foreplay = false	
		Allow_Creatures = true			
		cfgqst.Allow_Whipping = false
		Allow_Aftermath = "Afterlife"
		cfgqst.Allow_EscapeGameAftermath = false
		cfgqst.Allow_EscapeDifficulty = "Random"	
		Allow_PayFine = false
			
	;>>>>> EXECUTION SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< WIP, change, this is strange atm.
	;this will execute the player AFTER the rape as aftermath
;	elseif cfgqst.DefeatTypeScenario == "Execution"
;	ScreenMessage("Your captors have a sinister smile in their faces...")
;	ResetAllowance()
;	Allow_SexScenes = 1
;	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(Execution) "+1)
;	Allow_Aftermath = "Execution"
	

	;>>>>> PRISON SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<		#crime
	;VIOLENT CRIME
	elseif cfgqst.PunishCrimeMajor && !storqst.IsLocalSlave()
	
	;cfgqst.CrimeGoldToGet
	;PayCrimeGold()	--- move to LATER 
	
	cfgqst.PunishCrimeMajor = false ;<<--- keep this around till later?
	cfgqst.PunishCrimeMinor = false 
;	cfgqst.ResetMinorCrime() <<--- keep this around till later?
	ScreenMessage("You will be punished for your major crimes")
	cfgqst.PublicExposure = 0
	cfgqst.ShortPunishment = 0
	Allow_FindSpot = true
	Allow_SexScenes = 3
	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(IsMajorCrime) "+3)
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Hardest"
	cfgqst.Allow_EscapeGameAftermath = true
	;Allow_EscapeCrawl = true
	cfgqst.Allow_Whipping = true
	cfgqst.DefeatType = "Guards"	 ;---> Only Crime is allowed to shift the Scenario to Guards.
	
	
	Allow_Creatures = false
	Allow_Foreplay = false	
		
		
	;cfgqst.HarderDefeat = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (01) cfgqst.HarderDefeat = true")
	
	elseif cfgqst.PunishCrimeMinor && !storqst.IsLocalSlave()
	cfgqst.PunishCrimeMinor = false 
	ScreenMessage("You will be punished for your minor crimes")
	cfgqst.PublicExposure = 0
	cfgqst.ShortPunishment = 0			;<---- why not Short? 
	Allow_FindSpot = true
	Allow_SexScenes = 1
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(IsMinorCrime) "+1)
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Easy"
	cfgqst.Allow_EscapeGameAftermath = true
	;Allow_EscapeCrawl = true
	cfgqst.Allow_Whipping = false
	cfgqst.DefeatType = "Guards" ;---> Only Crime is allowed to shift the Scenario to Guards.
	
	Allow_Creatures = false
	Allow_Foreplay = false	
		
	;cfgqst.HarderDefeat = true

	;>>>>> EXECUTE ON THE SPOT SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;will start with Execution Animation directly after finding a spot
	;elseif (cfgqst.DefeatTypeGeneral == "AreHumans") && (cfgqst.DefeatDeathChance > 0) && !cfgqst.DefeatViaSlavery
	
	;NO LONGER HAPPENS FOR ME 
	elseif !Nym() && (cfgqst.DefeatTypeGeneral == "AreHumans") && !cfgqst.DefeatViaSlavery && (storqst.IsLocalSlave == 0) && D100(cfgqst.DefeatDeathChance) ;&& D100(33)	
	
			;new DEATH Scenario ---> Last Steps! 
		
				
			;OLD EXECUTION SCENARIO 
			
			
			ScreenMessage("Your captors have a sinister smile in their faces...")
			ResetAllowance()
			Allow_FindSpot = true

			Allow_SexScenes = 1
			Allow_EscapeCrawl = false
			cfgqst.DefeatTypeScenario = "Execution"
			
				int y = Utility.RandomInt(1,3)
				;int y = 1

				if y == 1
				DefeatTypeExecution = "ProxyImpale"
				elseif y == 2
				DefeatTypeExecution = "ProxySoils"
				elseif y == 3
				DefeatTypeExecution = "NymraGallows"
				endif
			
			Allow_Aftermath = "Afterlife"
	
	;/
	
	This needs lot of work...
	Basically we can move around now, set spots in the cities, add tasks etc.
	make crawl from one way to the other.
	This is only the basic scenario.
	
	IMPORTANT: we can now "calm" the guards by removing the crimegold, so we can add defeated by guards, which should also lead here
	
	/;
	

	;>>>>> SHORT DEFEAT SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	##Short
	elseif AllowShortDefeat() && !cfgqst.DefeatViaSlavery 
	
		cfgqst.ShortPunishment = GetShortDefeatScenario()	;very elaborate :P but "Short Sex happens to seldom
		
		if cfgqst.ShortPunishment > 1 && D100(33)	;make sex happen abit more often. Maybe add "groping" as Short Defeat Scenario -> Foreplay Scenes with 2+ Stages
		cfgqst.ShortPunishment = 1
		endif 
		
		String TempMessageShort
		
		if cfgqst.DefeatSpotAndEscape	;move to general?
		Allow_FindSpot = true
		endif
		
		if (storqst.IsLocalSlave > 0) && (cfgqst.ShortPunishment == 4)
		cfgqst.ShortPunishment = 3
		endif 
		
		if Nym() ;---test new furniture system 
	;	NymMessage("SHORT SEX FOR DEBUG")
	;	cfgqst.ShortPunishment = 1
		endif 
		
		;-- SHORT SEX --;
		if cfgqst.ShortPunishment == 1 
		ScreenMessage("This will be over quick, bow down. [SHORT SEX]")		
		Allow_SexScenes = 1			;scenarios are allowed, careful, need second check for this
		Allow_Aftermath = "None"
		cfgqst.Allow_EscapeGameAftermath = false
		Allow_ForcedBathing = false
		Allow_GoldenShower = false
		Allow_Foreplay = false	
	
		;-- SHORT WHIPPING --;
		elseif cfgqst.ShortPunishment == 2 		
		ScreenMessage("Feel the whip! [SHORT WHIPPING]")	
		cfgqst.Allow_Whipping = true	;make sure its 100% chance!!!!
		Allow_Aftermath = "Capture"
		cfgqst.Allow_EscapeDifficulty = "Easy"
		cfgqst.Allow_EscapeGameAftermath = false
		Allow_Creatures = false
		
		;-- SHORT ESCAPE GAME --;
		elseif cfgqst.ShortPunishment == 3
		ScreenMessage("Lets see how you escape from that! [SHORT CAPTURE]")	
		Allow_Aftermath = "Capture"
		cfgqst.Allow_EscapeDifficulty = "Normal"
		cfgqst.Allow_EscapeGameAftermath = false
		Allow_Creatures = false
		
		;-- SHORT PAY FINE --;
		elseif cfgqst.ShortPunishment == 4	
		ScreenMessage("You have to pay a fine for your misdemeanor! [SHORT FINE]")
		Allow_PayFine = true
		Allow_FindSpot = false
		Allow_Creatures = false
		
		;-- SHORT BATHING --;
		elseif cfgqst.ShortPunishment == 5
		Allow_Creatures = false
				if D100(cfgqst.DefeatPeeProb)
				ScreenMessage("Like a golden shower you dirty scum? [SHORT PEE]")	
				Allow_GoldenShower = true
				else
				ScreenMessage("Get yourself clean. Fast! [SHORT BATHING]")
				Allow_ForcedBathing = true
				endIf	
		Allow_Aftermath = "None"
		cfgqst.Allow_EscapeGameAftermath = false					
		endif
		
	;>>>>> DD Sequence <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	
	
	elseif cfgqst.DefeatTypeScenario == "DD"
	;we are equipped with DDs during Naked Defeat
	NymTrace("cfgqst.DefeatTypeScenario == DD")
	ResetAllowance()
	Allow_FindSpot = true
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(DD) "+Allow_SexScenes)
	
	Allow_Foreplay = true 
	if cfgqst.ModDDNG
	Allow_Creatures = true
	else
	Allow_Creatures = false
	endif 
	Allow_ForcedBathing = false
	cfgqst.Allow_Whipping = true
	Allow_Aftermath = "Random"
	cfgqst.Allow_EscapeGameAftermath = true

	;Allow_AddBinds = false

	;>>>>> REGULAR SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	else 
		;-- FIND SPOT --;
		
		if cfgqst.DefeatSpotAndEscape
		Allow_FindSpot = true
		endif
	
		;-- FOREPLAY --;
		;!!!!! THIS NEEDS TO BE ROLLED at GetMainSequenceLastSteps !!!!
		;this only determines if we have ANY foreplay possibly.
		;scenarios can say "NO FOREPLAY" and then there will be no roll in the end.
		if cfgqst.DefeatForeplayChance > 0
		Allow_Foreplay = true 
		endif	

		;-- SEX SCENES --;			
		Allow_SexScenes = GetSexScenes()	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(Regular Sequence) "+Allow_SexScenes)
			
		;-- AFTERMATH --;														
		Allow_Aftermath = "Random"		;This allows the Aftermath Function to randomly choose an Aftermath. :Capture Event will allow its own stuff then		
		cfgqst.Allow_EscapeGameAftermath = true
		
		;-- WHIPPING --;		
		if cfgqst.DefeatWhipProb > 0		;WhipChance is again Checked on the respective Whipping Events. This just allows those events to trigger.
		cfgqst.Allow_Whipping = true
		endif		
		
		;-- ESCAPE CRAWL --; (moved to general allowances)
		;if (cfgqst.DefeatEscTime > 0) && !cfgqst.CivilRapeRunning	;no Escape Crawl when public punishment? hmm
		;Allow_EscapeCrawl = true
		;endif
		
		cfgqst.Allow_EscapeDifficulty = "Random"
							
		;MODIFY REGULAR SEQUENCE >>>>> DEFEAT BINDS ALLOWED? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<			
		;DefeatBinds are added in 75% of cases for humans and humanoids, 50% is only collar.
		;might make more elaborte chances later
		if (cfgqst.DefeatTypeGeneral == "AreHumans") || (cfgqst.DefeatType == "Falmers") || (cfgqst.DefeatType == "Rieklings") || (cfgqst.DefeatType == "Draugr")
		
			if D100(75)
			Allow_AddBinds = true
			Allow_AddCollar = true			
			elseif D100(75)
			Allow_AddCollar = true	
			else
			Allow_AddCollar = false
			Allow_AddBinds = false
			endif

		;elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"				
		;	if (cfgqst.DefeatType == "Falmers") || (cfgqst.DefeatType == "Rieklings") || (cfgqst.DefeatType == "Draugr") 	
		;	Allow_AddBinds = true
		;	Allow_AddCollar = true			
		;	endif
		endif	
		
		;MODIFY REGULAR SEQUENCE >>>>> SLAVERY SCENARIO <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		;needs to come here because it has higher priority than "Binds allowed"
		;after Regular Scenario we modiy it here because its easier to do
		;the first round is harder. 3 SexScenes + Hardest Escape Chance, but then it is handled like normal Scenario (Rape Again etc.)
		
		if cfgqst.DefeatViaSlavery || cfgqst.DefeatEntranceVia == "Sold as Slave" || cfgqst.DefeatEntranceVia == "Sold as Public Slave"	
		Allow_FindSpot = True	;WIP ;overrules other stuff
		Allow_Aftermath = "Capture"
			if cfgqst.RapeAgain	;WE NEVER GET HERE!
			cfgqst.Allow_EscapeDifficulty = "HardestRapeAgain"
			cfgqst.Allow_EscapeGameAftermath = true
			else
			cfgqst.Allow_EscapeDifficulty = "Hard"	;1% but gets 1-5% easier	OK
			cfgqst.Allow_EscapeGameAftermath = true
			endif
		endif
				
		;Creatures and Animals
		;needs to come last because else we have bugged stuff	
		if (cfgqst.DefeatTypeGeneral == "AreHumanoids")
		Allow_ForcedBathing = false
		;Allow_GoldenShower = false
		elseif (cfgqst.DefeatTypeGeneral == "AreAnimals")
		Allow_ForcedBathing = false
		;Allow_GoldenShower = false
		cfgqst.Allow_Whipping = false
		Allow_Aftermath = "Escape"
		
		elseif (cfgqst.DefeatTypeGeneral == "AreFunny")
		Allow_Aftermath = "Escape"
		Allow_AddCollar = false
		Allow_AddBinds = false
		Allow_ForcedBathing = false
		cfgqst.Allow_Whipping = false
		
		else		
		Allow_ForcedBathing = true		
		endif
	endif	

	if cfgqst.DefeatEntranceVia == "Orgy"
	Allow_FindSpot = false
	endif 
	
	;SEQUENCE LIST
	;/
	Allow_FindSpot			true/false
	Allow_AddBinds			true/false
	Allow_AddCollar			true/false
	Allow_ForcedBathing		true/false	
	Allow_GoldenShower		true/false
	Allow_Foreplay			true/false	
	Allow_SexScenes			0-6
	cfgqst.Allow_Whipping	true/false
	Allow_Aftermath			String				"Random" "Capture" "Escape"	
	Allow_EscapeCrawl		true/false
	cfgqst.Allow_EscapeDifficulty String		Hard, Hardest ?
	
	/;
	
	if Nym()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: :::::::::::::::::::::: #Sequence STEP 1 ::::::::::::::::::::::")
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatEntranceVia: "+cfgqst.DefeatEntranceVia)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapeAgain: "+cfgqst.RapeAgain)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatType: "+cfgqst.DefeatType)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Creatures: "+Allow_Creatures)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_FindSpot: "+Allow_FindSpot)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_ForcedBathing: "+Allow_ForcedBathing)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_GoldenShower: "+Allow_GoldenShower)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Foreplay: "+Allow_Foreplay)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_SexScenes: "+Allow_SexScenes)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Whipping: "+cfgqst.Allow_Whipping)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Aftermath: "+Allow_Aftermath)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeCrawl: "+Allow_EscapeCrawl)
	;minor Bools
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeGameAftermath: "+cfgqst.Allow_EscapeGameAftermath)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeDifficulty: "+cfgqst.Allow_EscapeDifficulty)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_PayFine: "+Allow_PayFine)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ShortDefeat: "+cfgqst.ShortPunishment)
	endif
	
EndFunction	

	
	;DO NOT END CALMQUEST!!!
	;Just SetStage 10 again
	;Stage 1000 is ShutDownQuest for EVERYTHING
	;move Stage 1000 stuff to Function or other Stage (we have some left)

	
Function GetMainSequenceLastSteps()		;#LastSteps
	NymTrace("GetMainSequenceLastSteps()")
	String sHelpMessageTest = "mESSAGE HERE"	
		
		;MCM ---> Skip Sex 	
		if cfgqst.SkipSex
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #MCM SkipSex")
		Allow_SexScenes = 0
		endif 
		;MCM ---> No Creatures 	
		if !cfgqst.AllowCreatures
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #MCM allowes No Creatures")
		Allow_Creatures = false
		endif
		
		if cfgqst.DefeatFindSpot == 0 
		Allow_FindSpot = false 
		endif 
		
		if cfgqst.DefeatEntranceVia == "Sold as Slave"  
		;ScreenMessage("NOTE: Find Spot enabled on Slavery temporarily until I fixed the Landing Points for AE/SE")
		Allow_FindSpot = true
		Allow_EscapeCrawl = true
		elseif cfgqst.DefeatEntranceVia == "Sold as Public Slave"
		Allow_FindSpot = true
		Allow_EscapeCrawl = false	;WIP ;#TODO 
		
		elseif cfgqst.DefeatEntranceVia == "Orgy"
		
			if cfgqst.RAPEAGAIN
			Allow_SexScenes = Utility.RandomInt(1,3)
			else 
			Allow_SexScenes = Utility.RandomInt(3,4)		;GET SEX SCENES PLEASE!!!
			endif 
		
		Allow_FindSpot = false
		Allow_Aftermath = "Capture"
		cfgqst.Allow_EscapeDifficulty = "Random Hard"
		cfgqst.ShortPunishment = 0
		Allow_EscapeCrawl = false
		Allow_PayFine = false
			if cfgqst.DefeatTypeScenario == "Execution"
			cfgqst.DefeatTypeScenario = "Pillory"			
			endif 
		endif

		if cfgqst.DefeatEscapeCrawl == 0
		Allow_EscapeCrawl = false 
		endif 

		if cfgqst.Allow_Whipping
		SelectWhipper()
		storqst.WantWhipping = true
		endif 
		
		if cfgqst.Allow_Whipping && !WhipperFound
		cfgqst.Allow_Whipping = false
		storqst.WantWhipping = false
		endif 
		
		;MCM and Diceroll ---> BATHING / GOLDEN SHOWER
		
		if cfgqst.ShortPunishment == 1 	;SHORT SEX 
		Allow_Aftermath = "None"
		cfgqst.Allow_EscapeGameAftermath = false
		Allow_ForcedBathing = false
		Allow_GoldenShower = false
		Allow_Foreplay = false	
		
		elseif cfgqst.ShortPunishment == 0
		
			if cfgqst.DefeatTypeGeneral == "AreHumans" && D100(cfgqst.DefeatPeeProb)
			Allow_GoldenShower = true 
			Allow_ForcedBathing = false 
			elseif Allow_ForcedBathing && AllowBathing() ;checks for dirtiness 
			;bathing can happen
			Allow_ForcedBathing = true	
			else 
			Allow_GoldenShower = false 
			Allow_ForcedBathing = false	
			endif 
			
			if Allow_ForcedBathing && !cfgqst.Forced_Bathing_TOGGLE
			Allow_ForcedBathing = false	
			endif 
			
			if Allow_ForcedBathing && nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
			Allow_ForcedBathing = false 		
			endif 
			
		endif 
		
		
		;DEATH NEW 
		;the scenario starts AFTER the normal Defeat Scenario 

		if Nym() && D100(cfgqst.DefeatDeathChance) ;#death1
			
			;ScreenMessage ---> NO Warning
			;ResetAllowance() ---> NO --> other scenarios play out 
			;Allow_FindSpot = true

			storqst.DefeatKillPlayerMode = Utility.RandomInt(1,3)
			
			;storqst.DefeatKillPlayerMode == 1		- Execution 	(Impale/Spoils/Gallows etc.)
			;storqst.DefeatKillPlayerMode == 2		- Fucked to Death (ChainRape end to end until fadeout)
			;storqst.DefeatKillPlayerMode == 3		- ElectroCuted 	(shocked to death on a suitable Furniture)
			;storqst.DefeatKillPlayerMode == 4		- Massacred (bound in furniture, then enemies attack)
			;storqst.DefeatKillPlayerMode == 5		- Left to Die - bound in furniture. very low change to escape or be rescued. High Chance to die.
			;storqst.DefeatKillPlayerMode == 6		- Crucified - Crux with Nails - left to die (moan till fadeout, no struggle (or only low chance?)
			;storqst.DefeatKillPlayerMode == 7		- Garotte - Put in Torture Chair. Whenever you are Spanked, the chair tightens. you can also struggle to escape, but it can also kill You

	
		
		;	cfgqst.DefeatTypeScenario = "Execution"
			
				; --- Execution ---;
				if storqst.DefeatKillPlayerMode == 1	
					int y = Utility.RandomInt(1,3)
					;int y = 1
					
					;CHECK PROXY SLAL 
					;CHECK NYMRA SLAL
					;CHECK FUNNYBIZ SLAL 
					
					;"AddTag,PsycheNecroFuck,NymExecution",
					;"AddTag,FunnyBizness Bound Snuff,NymExecution",
							
					;we can set this later too 
					if y == 1
					DefeatTypeExecution = "ProxyImpale"		
					elseif y == 2
					DefeatTypeExecution = "ProxySoils"
					elseif y == 3
					DefeatTypeExecution = "NymraGallows"	 
					endif
					
					Allow_Aftermath = "Execution" ;---> starts another round of rape with Guro/Brutal and then Execution 
				;	Allow_SexScenes = 2;?	Sex Scenes determined in Aftermath
			
				; --- Fucked to Death ---;				
				elseif storqst.DefeatKillPlayerMode == 2

					;Nymra Aggressive FOreplay 03 
					
					Allow_Aftermath = "Fucked to Death"	
				
				;	Allow_SexScenes = 6;? Sex Scenes determined in Aftermath
					
				; --- ElectroCution ---;	
				elseif storqst.DefeatKillPlayerMode == 3
				
					Allow_Aftermath = "Electrocution"	;---> starts caputre and whipping as usual, but then -.-- high chance of "overdrive" and then chaind up to fadeout	
				;	Allow_SexScenes = same as normal
				endif
		
		endif 

		if Allow_GoldenShower && (cfgqst.DefeatPeeProb == 0)
		Allow_GoldenShower = false 
		endif

			;	if Allow_GoldenShower && D100(cfgqst.DefeatPeeProb)
				;Golden Showers can happen, MCM decides if yes
			;	Allow_ForcedBathing = false
			;	Allow_GoldenShower = true			
			;	else
				;no golden shower, just normal bathing can happen
			;	Allow_GoldenShower = false 
				
			;	endif 
			;se 
			;bathing can NOT happen
			;Allow_ForcedBathing = false		
			;Allow_GoldenShower = false	
			;endif 


	;main bools
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: :::::::::::::::::::::: #Sequence Setp 2 FINAL ::::::::::::::::::::::")		;#final
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatEntranceVia: "+cfgqst.DefeatEntranceVia)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapeAgain: "+cfgqst.RapeAgain)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatType: "+cfgqst.DefeatType)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Creatures: "+Allow_Creatures)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_FindSpot: "+Allow_FindSpot)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_ForcedBathing: "+Allow_ForcedBathing)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_GoldenShower: "+Allow_GoldenShower)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Foreplay: "+Allow_Foreplay)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_SexScenes: "+Allow_SexScenes)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Whipping: "+cfgqst.Allow_Whipping)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_Aftermath: "+Allow_Aftermath)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeCrawl: "+Allow_EscapeCrawl)
	;minor Bools
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeGameAftermath: "+cfgqst.Allow_EscapeGameAftermath)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_EscapeDifficulty: "+cfgqst.Allow_EscapeDifficulty)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Allow_PayFine: "+Allow_PayFine)
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ShortDefeat: "+cfgqst.ShortPunishment)
	
	;NOTHING IS CHANGED AFTER THIS DAMNIT 
		
EndFunction	
	


Function Fragment_17()	;Sex Round #2						;############ STAGE 11 ############							
		
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 11 [Last Scene Ordered: "+LastSceneOrdered+"]")
	
	if (cfgqst.AbortAll)
	Allow_SexScenes = 0
	SetStage(1000)
	endif 
	
	if cfgqst.NymStripping && (!cfgqst.AbortAll)
	;cfgqst.PlayerRef.UnequipItemSlot(32)	;body 		
	cfgqst.Strip(48, cfgqst.PlayerRef)		;Bikini Tops (Dwarven etc.)
	cfgqst.GroupStripMaintenance()
	
	cfgqst.Strip(32, cfgqst.PlayerRef)
	endif		
		
	;WE NEED TO REWORK THIS SHIT<<<<<<<<		
	if (cfgqst.DefeatTypeScenario == "Masturbation") 
	cfgqst.DefeatTypeScenario = "Bound"
	elseif cfgqst.DefeatTypeScenario == "Bukkake" ;&& D100(75)
	cfgqst.DefeatTypeScenario = "Bound"
	endif
	;<<<<<<<<<<<
	
	if cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	FuckingRound = 2
	cfgqst.FadeToBlack(true)
	StartRapeSequence(11)
	endif 
	
EndFunction			

Function Fragment_19()				;Sex Round #3		;############ STAGE 12 ############	
		
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 12 [Last Scene Ordered: "+LastSceneOrdered+"]")	
	
	if (cfgqst.AbortAll)
	Allow_SexScenes = 0
	SetStage(1000)
	endif 
	
	if cfgqst.NymStripping&& (!cfgqst.AbortAll)			
	cfgqst.Strip(37, cfgqst.PlayerRef)		;boots
	cfgqst.GroupStripMaintenance()
	endif
	
	if cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	cfgqst.FadeToBlack(true)
	FuckingRound = 3
	StartRapeSequence(12)
	endif 
	
EndFunction


Function SS_PlatformExit() 
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SS_PlatformExit() ")		
		;Vehicle("Remove") 
		bool FollowerFound = false
			if folqst.Actor_Follower01 	;Victims0	
			FollowerFound = true			
			folidle01.StartDoingNothing_01(false)
			;Vehicle_Follower_01("remove") 
			cfgqst.ResetIdle(folqst.Actor_Follower01)
			endif
			if folqst.Actor_Follower02	
			FollowerFound = true
			folidle01.StartDoingNothing_02(false)	
			;Vehicle_Follower_02("remove") 
			cfgqst.ResetIdle(folqst.Actor_Follower02)
			endif	
			
			if !cfgqst.IsDefeatRunning() && FollowerFound	;do NOT end FollowerIdleQuest when Defeat is running.
			folidle01.EndFollowerIdleQuest_01()	
			endif 
			
EndFunction 

;bool WasShortPunishment = false	 ;does nothing anymore

bool StartTeleportIntoDanger = false

;Execution

;Afterlife Chanc on Bleedout
;/
;KILL ON SPOT SCENES:
FunnyBizness Necro Brain Fuck
FunnyBizness Snuff Cowgirl
FunnyBizness Snuff Prone
FunnyBizness Savage Necro (umbauen, hit head to the front)
FunnyBizness Bound Snuff (end final stage early)
FunnyBizness Molag Oral
FunnyBizness Brutal Guro
BaboChokeRape03
BaboChokeRape02
BaboChockingRape02

Dead Prone (ROind 2)

SWORD
Proxy Spoils of War (Round 1), time the round or slower anim speed
Guro Kill Fuck (Round 1)
Guro Lust Handjob (Round 2)
Guro Lust Blowjob (Round 2)
Guro Lust ANal Prone
;Vampire Kill
FunnyBizness Molag Snuff Vamp 
FunnyBizness Molag Necro Cannibal 1 (Cannibal 2 is like Snukk Vamp) 
FunnyBizness Necro Vampire Male
FunnyBizness Necro Vampire Doggy
/;


Function ResetFollowers()
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 (ResetFollowers())")	
		if folqst.IsFollowerPresent()
			
			int i = 4
			folidle01.EndFollowerIdleQuest_01()		;ends 	folidle01.StartDoingNothing_01(false)

			while i > 0
			i -= 1
				if folqst.IsWithUs_Follower(i)
				NymTrace("ResetFollowers(NakedFollower["+i+"]")
					cfgqst.ResetIdle(folqst.NakedFollower[i])
					folqst.NakedFollower[i].PushActorAway(folqst.NakedFollower[i], 1)				
					if folqst.NakedFollower[i].IsInFaction(cfgqst.CrawlFaction)
					folqst.NakedFollower[i].RemoveFromFaction(cfgqst.CrawlFaction)
					endif 
					if folqst.NakedFollower[i].IsInFaction(cfgqst.ProtectedActorFaction)
					folqst.NakedFollower[i].RemoveFromFaction(cfgqst.ProtectedActorFaction)
					endif 
					if folqst.NakedFollower[i].IsInFaction(cfgqst.nade_DefeatFaction)
					folqst.NakedFollower[i].RemoveFromFaction(cfgqst.nade_DefeatFaction)
					endif 
					if folqst.NakedFollower[i].IsInFaction(BusyFaction)
					folqst.NakedFollower[i].RemoveFromFaction(BusyFaction)
					endif 	
				;	AddDefeatBindsToActor(folqst.NakedFollower[i], "remove")
					folqst.NakedFollower[i].ClearExpressionOverride()
					MfgConsoleFunc.ResetPhonemeModifier(folqst.NakedFollower[i])
				endif		
			endwhile
		endif 	
		
		
			int i = 4
	
	while i > 0 
		i -= 1
		if folqst.IsWithUs_Follower(i)

			folqst.NakedFollower[i].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(folqst.NakedFollower[i])	
		endif 		
	endwhile
	
	folqst.RemoveBindsFromFollowers()
	FollowersAreBound = false

EndFunction 

Function RestoreVictimFurnitures()

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RestoreVictimFurnitures(VictimCount = "+VictimCount+")")	

	;	if folqst.IsFollowerPresent()
			int i = VictimCount
		;	int i = 5
			
			while i > 0
			i -= 1
				if Victims[i]
				PlayPoseOnActor(Victims[i], "FollowerDevices", true)
					if i == 0
					Vehicle_Follower_01("restore")
					elseif i == 1
					Vehicle_Follower_02("restore")
					endif
				endif 	
			endwhile

FollowersAreBound = false ;does nothing anymore

EndFunction 


Function CalmFollowers(bool calm)
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ##CalmFollowers("+calm+"))")	

		if folqst.IsFollowerPresent()
			
			int i = 5
	
			while i > 0
			i -= 1
				if calm		
					if folqst.IsWithUs_Follower(i) && !SPE_actor.IsActorCalmed(folqst.NakedFollower[i])
					SPE_actor.SetActorCalmed(folqst.NakedFollower[i], true)
					endif 
				else 
					if folqst.IsWithUs_Follower(i) && SPE_actor.IsActorCalmed(folqst.NakedFollower[i])
					SPE_actor.SetActorCalmed(folqst.NakedFollower[i], false)
					endif 
	
				endif
			endwhile
		endif 	

FollowersAreBound = false

EndFunction 


Bool StartRescued = false
Bool StartWakeUpInWilderness = false
Bool StartResurrection = false 



;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; END >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	############ STAGE 1000 ###########	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


Function Fragment_1()						;ENDofDEFEAT			;1000	##end1	##1000##

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 ()")	


	if Nym()
;	Message.ResetHelpMessage("SexSlaveDutiesStart")
	endif 

	if cfgqst.DefeatTypeGeneral == "Giving Up/Abort"
	cfgqst.AbortAll = true
	endif 
	
if cfgqst.SlaveAuction
cfgqst.SlaveAuction = false 
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 (SlaveAuction #END)")				;THIS HAS TO BE IMPROVED!!! I DO NOT NEED CALMQUEST FOR THE SLAVE AUCTION STUFF!!!

			if folqst.Actor_Follower01 	;Victims0		
			folidle01.StartDoingNothing_01(false)
			;Vehicle_Follower_01("remove") 
			cfgqst.ResetIdle(folqst.Actor_Follower01)
			endif
			if folqst.Actor_Follower02	
			folidle01.StartDoingNothing_02(false)	
			;Vehicle_Follower_02("remove") 
			cfgqst.ResetIdle(folqst.Actor_Follower02)
			endif	
			
			folidle01.EndFollowerIdleQuest_01()	
			
			Stop()

;do nothing, jump to end Directly.

else

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 (Defeat #END)")	
	cfgqst.CheckFastTravel()

	if cfgqst.AbortAll
	cfgqst.RapeAgain = false
	cfgqst.DefeatTypeScenario = "none"
	StartSlavery = false
	endif 

	RemoveSpawnedRapers()	;Replaced By A Function in Calm(OFF) 

	if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "Execution")
	Utility.Wait(5.0)
	;do nothing. with afterlife we keep the Fade
	else
	cfgqst.FadeToBlack(false) ; FADE IN
	endif

	if cfgqst.RapeAgain && Rescued
	cfgqst.RapeAgain = false
	NymBox("Naked Defeat #ERROR 1551 - RapeAgain + Rescued")
	endif

	;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	; END ::::::::::::::::: RAPE AGAIN END // LOOP :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

	if cfgqst.RapeAgain

	cfgqst.RapeAgain = false

	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 (RAPE AGAIN FALSE)")
	HairChangedOnce = false 	;ResetBools 

		if Victimcount > 0
		folidle01.StartDoingNothing_01(true)
		endif
		if Victimcount > 1
		folidle01.StartDoingNothing_02(true)
		folidle01.StartDoingNothing_02(true)
		endif

		if cfgqst.DefeatTypeScenario !=("Yoke") && cfgqst.DefeatTypeScenario !=("Cuffs") && cfgqst.DefeatTypeScenario !=("Armbinder")
		RemoveDefeatBinds()
		endif

	Stop()
	;----> nothing else triggers after here
	
	
	;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	; END ::::::::::::::::: REGULAR ENDING START :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

	else

		;>>>>>>>>>> Remove Binds & Chains >>>>>>>>>>>>>>>>>>>>>>>
		RemoveDefeatBinds()
		cfgqst.RemoveChains()
		;--------------------------------------------------------

	Vehicle("Remove") 		
			
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: END MESSAGE :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			if NoActors_StartSlavery ;;why is this before Abort? well sigh....
			ScreenMessage("They cannot fuck you but they can sell you...") 
			elseif cfgqst.AbortAll ;&& !NoActors_StartSlavery
			ScreenMessage("NAKED DEFEAT Aborted")	
			elseif Rescued && cfgqst.DefeatTypeScenario == "Afterlife"		
			cfgqst.DefeatTypeScenario == "none"
			ScreenMessage("You are alive. Again?")
			elseif Rescued 	
			ScreenMessage("You were miraculously rescued!")
			
			;SLAVERY before we are moved elswhere
			elseif StartTeleportIntoDanger
			ScreenMessage("Fuck... Something went wrong during the Ritual!")
			elseif StartSlavery
			ScreenMessage("You are blindfolded and carried elsewhere...")		
			elseif NoActorsAbort
			ScreenMessage("Nobody there to take advantage of your situation.")
			elseif (cfgqst.ShortPunishment > 0) 		
			ScreenMessage("That was over surprisingly quick. They let you go!")	
			elseif IsGuardEndDefeat
			ScreenMessage("The guard defeated you...but it seems they wont rape you.")
			elseif OnlyAnimals && !cfgqst.CivilRapeRunning
			ScreenMessage("No humans around to take advantage of your situation.")
			OnlyAnimals = false
			NoActorsAbort = true	;---> skip crawling away
			
			elseif cfgqst.DefeatViaSlavery ;&& !isArrested
			ScreenMessage("Your owners got bored of you and let you go.")
			
			elseif cfgqst.CivilRapeRunning && !isArrested
			ScreenMessage("You are free to go. Follow the rules in the future!")
		;	elseif (cfgqst.DefeatTypeScenario == "DDeEvent")			;REWRITING the DDe Scenario
		;	ScreenMessage("Equiped with all those devices your enemies really let you.. well... 'go'...")
					
			elseif (cfgqst.DefeatTypeScenario == "Execution")		;??????
			ScreenMessage("You are DEAD")		
			;AFTERLIFE - before we wake up
			elseif (cfgqst.DefeatTypeScenario == "Afterlife")			;???????
			ScreenMessage("You feel like you are falling...")	
			elseif !isArrested
			;ScreenMessage("Your enemies give you a headstart...")
			endif
			
			;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			
			isArrested = false	;improve the message system please
			
			Sexlab.ThreadSlots.StopAll()		;see if this speeds up things
				
			; END >>>>>>>>>>>>>>>>>> GodMode Option >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			;if cfgqst.GodMode
		;	Debug.SetGodMode(false)
		;	Debug.trace("NAKED DEFEAT GodModeFalse")
			;endif
	
			; END >>>>>>>>>>>>>>>>>> Followers Reset (move to function) >>>>>>>>>>>>>>>>>>>>>
			
			ResetFollowers()
			cfgqst.FollowerStripUpdate()
	
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: ESCAPE CRAWL :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#ESCAPE
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			if Allow_EscapeCrawl
			
				if !StartSlavery && !Rescued && !NoActorsAbort && !cfgqst.AbortAll ;&& (cfgqst.DefeatEscTime > 0); && (cfgqst.ShortPunishment == 0)
				cfgqst.SlowDownPlayer("Start", false)
				
				cfgqst.Immobilize(false)

				cfgqst.ImmobilizeCrawl(true)
				
				;>>>>>>>>>>>>>>
				Escape()							;#Escape1
				;>>>>>>>>>>>>>>
				
				cfgqst.Immobilize(false)
				
				cfgqst.SlowDownPlayer("End", false)	
				endif	
				
				cfgqst.Crawl(cfgqst.PlayerRef, false)
				
				if folqst.IsWithUs_Follower(0)
				Utility.Wait(0.5)
				cfgqst.Crawl(folqst.Actor_Follower01, false)
				endIf
				if folqst.IsWithUs_Follower(1)
				Utility.Wait(0.5)
				cfgqst.Crawl(folqst.Actor_Follower02, false)
				endif
				
				cfgqst.DefeatQuestRunning = false ;<<<---- maybe better with ResetBools??	

			endif
			
			if cfgqst.HeelsFix
			;GENEREL ENABLING  
			cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 1813)
				if folqst.IsWithUs_Follower(0)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[0], 1813)
				endif 
				if folqst.IsWithUs_Follower(1)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[1], 1813)
				endif
				if folqst.IsWithUs_Follower(2)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[2], 1813)
				endif
				if folqst.IsWithUs_Follower(32)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[3], 1813)
				endif
			endif 

			cfgqst.SlowDownPlayer("End", false) ;FOR SAFETY
			cfgqst.Crawl(cfgqst.PlayerRef, false)
			cfgqst.Immobilize(false)

			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: LOCL SLAVERY CHECK :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			if (cfgqst.DefeatEntranceVia == "Orgy") && storqst.IsLocalSlave()
			slaveqst.SexTaskDuration += 1
			slaveqst.CompleteSlaveSexTask()		;FINISH ORGY 
			endif 		

			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: UNCALMING :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			Calm(false,1)		;earlier ReDressing Of Actors
			CalmFollowers(False) ;SPE_Actor based ---> 
			
			if SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)
			SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, false)
			NymTrace("#CALM OFF Player only")
			endif 

			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: CLEAN UP :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			;>>>>>>>>>>>>>>>>>> HealthBoost Option >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;	if cfgqst.HealthBoost && (cfgqst.PlayerRef.GetActorValue("health") > 100000)
		;	cfgqst.PlayerRef.ModActorValue("health", -100000.0)	
		;	endif
			;-------------------------------------------------------------------------
			;>>>>>>>>>>>>>>>>>> DAR compatibility >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ????
			if cfgqst.PlayerRef.IsInFaction(DefeatFaction)
			cfgqst.PlayerRef.RemoveFromFaction(DefeatFaction)
			endif
			;-------------------------------------------------------------------------

			ResetValues()

			cfgqst.SexSceneCountPlayer = 0
			cfgqst.ResetExpressions()

			if storqst.ModAcheron && !storqst.AcheronBleedoutFix ;disabled Acheron Scripts
				if !cfgqst.AcheronEnabled 
				cfgqst.EnableAcheron()		;#ACHERON
				endif
			endif 


			cfgqst.SendModEvents(false)	
			cfgqst.PlaceFloor("remove") ;#floor
			cfgqst.PlaceLight("remove")
			cfgqst.AddVictimsToCalmFactions(false)

			if cfgqst.PlayerRef.IsInFaction(cfgqst.ProtectedActorFaction)
			cfgqst.PlayerRef.RemoveFromFaction(cfgqst.ProtectedActorFaction)
			endif 

			if storqst.ModAcheron && !storqst.AcheronBleedoutFix ;disabled Acheron Scripts
				If(Acheron.IsDefeated(cfgqst.PlayerRef))
					Acheron.RescueActor(cfgqst.PlayerRef, false)
					Utility.Wait(3)
					Acheron.ReleaseActor(cfgqst.PlayerRef)
				ElseIf(Acheron.IsPacified(cfgqst.PlayerRef))
					Acheron.ReleaseActor(cfgqst.PlayerRef)
					Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdleForceDefaultState")
				EndIf
			endif 

			Stop() ;this is before the Transitions because they could be VOIDS I think... Should be mostly Save now due to the ModEvents. But it works so....
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #STOP")
		
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			; END ::::::::::::::::: >>>> TRANSITIONS >>>> :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


			if NoActors_StartSlavery
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: No Actors - SSLV Entry")
			NoActors_StartSlavery = false 
			
				if cfgqst.DefeatRobberyProb > 0
					if storqst.ImmersiveRobbery
					cfgqst.StartRobberyAtLocation()
					endif 
				endif 
			;SendModEvent("SSLV Entry")
				if Nym()
				Message.ResetHelpMessage("SoldIntoSlavery")
				storqst.MSG_SlaverySold.ShowAsHelpMessage("SoldIntoSlavery", 4, 0, 1)
				Utility.Wait(1.0)
				endif 
			CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
			
			elseif StartTeleportIntoDanger && !cfgqst.AbortAll
			StartTeleportIntoDanger = false 
			CreateModEvent("NakedDefeatTransition", "Teleport Misshap")

			elseif StartRescued && !cfgqst.AbortAll
			StartRescued = false 
			CreateModEvent("NakedDefeatTransition", "Rescued")
		
			elseif StartWakeUpInWilderness && !cfgqst.AbortAll
			StartWakeUpInWilderness = false 
			CreateModEvent("NakedDefeatTransition", "Wake up in the Wilderness")
			
			elseif StartResurrection && !cfgqst.AbortAll
			StartResurrection = false 
			CreateModEvent("NakedDefeatTransition", "Resurrection")

			elseif StartSlavery && !cfgqst.AbortAll
			StartSlavery = false 
			
				if Nym()
				Message.ResetHelpMessage("SoldIntoSlavery")
				storqst.MSG_SlaverySold.ShowAsHelpMessage("SoldIntoSlavery", 4, 0, 1)
				Utility.Wait(1.0)
				endif 
				
				if storqst.ModSS			
				CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
				else 
				Debug.Messagebox("Simple Slavery is NOT installed -> you are free")			
				endif 
				
			elseif StartAfterlife
			StartAfterlife = false
				if Nym()
				Message.ResetHelpMessage("AfterLifeStart")
				storqst.MSG_AfterLifeStart.ShowAsHelpMessage("AfterLifeStart", 4, 0, 1)
				Utility.Wait(1.0)
				endif 
			CreateModEvent("NakedDefeatTransition", "Afterlife")
			endif
			
			; END :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

			cfgqst.AbortAll = false 
			IsEndOfDefeat = false 
			
			Debug.Trace(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 1000 ::::::::::::::::::::::: ##Shutdow##:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
			Debug.Trace(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
		
	endif		

endif		

EndFunction


Function CreateModEvent(String sEventName, String sEventType)	;#CreateModEvent
NymTrace("CreateModEvent")
    int handle = ModEvent.Create(sEventName)
    if (handle)
		ModEvent.PushForm(handle, self)
      ;  ModEvent.PushForm(handle, someOtherForm)
       ; ModEvent.PushInt(handle, 1000)
		ModEvent.PushString(handle, sEventName)
        ModEvent.PushString(handle, sEventType)
        ModEvent.Send(handle)
    endIf
EndFunction


;OLD REMOVE THIS 
;/
Function ResetFollowersEndOfDefeat() 			;#ResetFollowersEndOfDefeat()

	if Victimcount > 0	
			
			if Victims[0]
			Victims[0].PlayIdle(KnockdownIdles[0])
			Victims[0].RemoveFromFaction(BusyFaction)
			PlayPoseOnActor(Victims[0], "Wait", false)	
			Utility.Wait(0.5)
			
			PlayPoseOnActor(Victims[0], "Stop", false)
			PlayPoseOnActor(Victims[1], "Stop", false)
			;PlayPoseOnVictims(0, "Stop", false)	
			
			AddDefeatBindsToActor(Victims[0], "remove")
			FollowersAreBound = false
			Victims[0].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(Victims[0])
			
			endIf
			
			if Victims[1]
			Victims[1].PlayIdle(KnockdownIdles[0])
			Victims[1].RemoveFromFaction(BusyFaction)
			AddDefeatBindsToActor(Victims[1], "remove")
			PlayPoseOnActor(Victims[1], "Wait", false)	
			Utility.Wait(0.5)
			PlayPoseOnActor(Victims[1], "Stop", false)	
			
			
			
			Victims[1].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(Victims[1])
			endif
			
			if Victims[2]
			Victims[2].PlayIdle(KnockdownIdles[0])
			Victims[2].RemoveFromFaction(BusyFaction)
			AddDefeatBindsToActor(Victims[2], "remove")
			
			Victims[2].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(Victims[2])
			
			endIf
			
			if Victims[3]
			Victims[3].PlayIdle(KnockdownIdles[0])
			Victims[3].RemoveFromFaction(BusyFaction)
			AddDefeatBindsToActor(Victims[3], "remove")
			
			Victims[3].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(Victims[3])
			
			endIf
			
			FollowersAreBound = false
		endif


EndFunction
/;

String Function GetRegion()

if cfgqst.PlayerRef.IsInLocation(LocationRegions[0])
return "Region The Reach - Markarth"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[1])
return "Region The Pale - Dawnstar"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[2])
return "Region The Rift - Riften"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[3])
return "Region Whiterun"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[4])
return "Region Eastmarch - Windhelm"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[5])
return "Region Falkreath"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[6])
return "Region Hjaalmarch - Morthal"
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[7])
return "Region Winterhold"
else
return "Region Unknown"
endif
EndFunction

Function MoveToPrison()

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: MoveToPrison()")

ScreenMessage("And on top of all that you are arrested for your misdemeanor!")
;Debug.Notification("<font color='#ff0000'>And on top of all that you are arrested for your misdemeanor!</font>")	;MESSAGE
;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) And on top of all that you are arrested for your misdemeanor!")

int bountygold = 1500

;the reach // markarth
if cfgqst.PlayerRef.IsInLocation(LocationRegions[0])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (the reach)")
SendModEvent("xpoArrestPC", "TheReachCrimeFaction", bountygold)

;the pale // windpeak
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[1])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (the pale)")
SendModEvent("xpoArrestPC", "PaleCrimeFaction", bountygold)

;the rift // riften
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[2])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (the rift)")
SendModEvent("xpoArrestPC", "RiftCrimeFaction", bountygold)

;whiterun // whiterun
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[3])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (whiterun)")
SendModEvent("xpoArrestPC", "WhiterunCrimeFaction", bountygold)

;eastmarch // windhelm
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[4])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (eastmarch)")
SendModEvent("xpoArrestPC", "EastmarchCrimeFaction", bountygold)

;falkreath // falkreath
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[5])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (falkreath)")
SendModEvent("xpoArrestPC", "FalkreathCrimeFaction", bountygold)

;hjaalmarch // morthal
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[6])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (hjaalmarch)")
SendModEvent("xpoArrestPC", "HjaalmarchCrimeFaction", bountygold)

;winterhold // winterhold
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[7])
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Arrest: we are in Location (winterhold)")
SendModEvent("xpoArrestPC", "WinterholdCrimeFaction", bountygold)

else
SendModEvent("xpoArrestPC", "", bountygold)

endif

;#TODO SOLITUDE MISSING!!!!
EndFunction

;------------------------------------------------------------------------------------------------------------------------------------------

bool Rescued = false

Function MoveToRescueLocation()		;#rescue #inn  ;;;DONE ALL MOVED TO NEW SYSTEM 
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: MoveToRescueLocation")
Rescued = true

;https://en.uesp.net/wiki/Skyrim:Inns


Utility.Wait(5)

ObjectReference LocTemp

Bool RescueInnFound = false

	; --- RESCUED AT AN INN // IN NEARBY CITY -------------------------------------------------------------------------------------------------
	;based on our Location when raped we get rescued at an nearby Inn. This can fail when our Location is not clear and then we wake up in Wilderness (backup)
	;if cfgqst.DefeatTransition != "Afterlife" 
	
;	NymMessage("DefeatTypeScenario: "+cfgqst.DefeatTypeScenario+" DefeatTransition: "+cfgqst.DefeatTransition)
	
	if cfgqst.DefeatTypeScenario != "Afterlife" ;Afterlife always sends to Wilderness
	
		;the reach // markarth // Silverblood Inn
		if cfgqst.PlayerRef.IsInLocation(LocationRegions[0])
		;DONE
		;landing: 	
		LocTemp = (Game.GetFormFromFile(0x000F9943, "Skyrim.esm") As OBJECTREFERENCE)		;Xmarker in the side Tunnel for landing
		cfgqst.PlayerRef.MoveTo(LocTemp)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (the reach)")  	
		;LocRescueTemp = (Game.GetFormFromFile(0x000C42D4, "Skyrim.esm") As ObjectReference)	;Temp Static "Rug" (wont work)
		consoleutil.ExecuteCommand("player.moveto 000C42D4")	;Temp Static "Rug" via console
		
		;the pale // windpeak 
		;DONE
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[1])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (the pale)")
		LocTemp = (Game.GetFormFromFile(0x00052270, "Skyrim.esm") As ObjectReference)	;XMARKER near entrance by the 2 chairs
		cfgqst.PlayerRef.MoveTo(LocTemp)
		cfgqst.PlayerRef.MoveTo(cfgqst.PlayerRef, 60.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 60.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		;LocRescueTemp = (Game.GetFormFromFile(0x0010FCC8, "Skyrim.esm") As ObjectReference)		;IDLE MARKER (Wont work)

		;the rift // riften // Bees and Barbs
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[2])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (the rift)")
		;DONE (copied from SS++ Loc)
		;LocRescueTemp = (Game.GetFormFromFile(0x000BEC41, "Skyrim.esm") As ObjectReference)	;TempStatic "Pelt Floor" WONT WORK 	
		LocTemp = (Game.GetFormFromFile(0x0005CE28, "Skyrim.esm") As ObjectReference)	;XMARKER heading in the center
		cfgqst.PlayerRef.MoveTo(LocTemp)
		;LocTemp = (Game.GetFormFromFile(0x00046BA5, "Skyrim.esm") As ObjectReference)	;IDLE MARKER near Entrance
		cfgqst.PlayerRef.MoveTo(cfgqst.PlayerRef, 125.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 125.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		;whiterun // whiterun // Bannered Mare or Drunken Huntsman
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[3])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (whiterun)")
			if D100(33)
			;--- Bannered Mare ---;	
			;DONE COPIED FROM SS 
			LocTemp = (Game.GetFormFromFile(0x0001F88C, "Skyrim.esm") As ObjectReference)	;XMARKER by the fire
			cfgqst.PlayerRef.MoveTo(LocTemp)
			cfgqst.RotatePC(180)	
			consoleutil.ExecuteCommand("player.moveto 000C8FD5")	;TempStatic "Rug" WORKED 
			Debug.Trace("NAKED DEFEAT: Bannered Mare: "+LocTemp)
			elseif D100(50)
			;--- Drunken Huntsman ---;		
			;DONE COPIED FROM SS 
			LocTemp = (Game.GetFormFromFile(0x0009D5CD, "Skyrim.esm") As ObjectReference)	;XMARKER
			cfgqst.PlayerRef.MoveTo(LocTemp)
			Debug.Trace("NAKED DEFEAT: Drunken Huntsman: "+LocTemp)

			else
			;--- Sleeping Giant Inn --- Riverwood ---;	
			;DONE COPIED FROM SS 
			LocTemp = (Game.GetFormFromFile(0x0001DC0A, "Skyrim.esm") As ObjectReference)	;XMarker HEADING in the corner, right of bar USE THIS 
			cfgqst.PlayerRef.MoveTo(LocTemp)
			cfgqst.RotatePC(315)
			Debug.Trace("NAKED DEFEAT: Sleeping Giant Inn: "+LocTemp)
			endif
		;eastmarch // windhelm // Candlehearth // GnisisCornerClub
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[4])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (eastmarch)")
			if D100(50)
			; --- Candleheart Hall --- ;
			;DONE COPIED FROM SS 
			LocTemp = (Game.GetFormFromFile(0x0010FC2A, "Skyrim.esm") As ObjectReference)	;XMARKER Heading (should work)
			cfgqst.PlayerRef.MoveTo(LocTemp)
			Debug.Trace("NAKED DEFEAT: Candlehearth Hall: "+LocTemp)
			else
			; --- Gnisis Corner Club --- ;	
			;DONE COPIED FROM SS 
			LocTemp = (Game.GetFormFromFile(0x000209DA, "Skyrim.esm") As ObjectReference)	;XMARKER center on Rug 
			cfgqst.PlayerRef.MoveTo(LocTemp)
			cfgqst.RotatePC(270)
			endif
		;--- Falkreath // Falkreath // Dead Mans Drink -----------------------------------------------------------------
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[5])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (falkreath)")	
		; --- Dead Mans Drink --- ;
		;DONE COPIED FROM SS  
		LocTemp = (Game.GetFormFromFile(0x0007266A, "Skyrim.esm") As ObjectReference)	;XMARKER 
		cfgqst.PlayerRef.MoveTo(LocTemp)
		cfgqst.RotatePC(180)
		Debug.Trace("NAKED DEFEAT: Dead Mans Drink: "+LocTemp)

		;hjaalmarch // morthal // Moorside Inn
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[6])	
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (hjaalmarch)")
		LocTemp = (Game.GetFormFromFile(0x0001EB95, "Skyrim.esm") As ObjectReference) ;XMARKER worx!

		;winterhold // winterhold // Frozen Heart
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[7])
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rescue: we are in Location (winterhold)")
		LocTemp = (Game.GetFormFromFile(0x0010FC3A, "Skyrim.esm") As ObjectReference)		;XMARKER worx!	
	;	loc = (Game.GetFormFromFile(0x0010FC3A, "Skyrim.esm" as ObjectReference)) ;WINTERHOLD FROZEN HEARTH X-Marker

		endif
		
		if LocTemp
		RescueInnFound = true
		cfgqst.PlayerRef.MoveTo(LocTemp)
		cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[Utility.RandomInt(0,16)])
		Utility.Wait(2.0)
		ScreenMessage("You regain conciousness in an Inn. Naked but free...") 
		
		else; !LocRescueTemp
		RescueInnFound = false
		;THIS IS OK CAUSE WE ARE MAYBE JUST NOT IN A LOCATIONREGION THAT IS DETECTABLE 
		
		;Debug.MessageBox("Naked Defeat #ERROR: Inn Rescue Location = None. Using Backup.")
		endif
		;nearby = true
		;locfound = true
	endif
		
		;/
		;							  000E736F
		
		MAGIC SLAVERY 
		(MIDDEN IN COLLEGE)	000D7BA2 (midst of a ritual circle) -- no actors!
		Dark Midden	Ritual Room. has severl carpets -> use for Followers	000CEE97 (rotate 180)
		FORSWORN Slave
		Red Eagle Redoubt 000A05B2 in der Suppe. maybe spawn floor
		
		
		DISPLAY SLAVE
		DB39BDD6 <<<< SD CAges :(
		
		Windhelm Outside of Gnisis Corner Club - IdleMarker 000E77CC 
		
		Whiterun 0007878B flach vor dem Tor
		
		/;
	


	
	;WildernessLocations for Afterlive currenlty or as BackUp For the INN
	if cfgqst.DefeatTypeScenario == "Afterlife"	|| !RescueInnFound				      
		int j = Utility.RandomInt(1,4)
		if j == 1
		LocTemp = (Game.GetFormFromFile(0x000F3354, "Skyrim.esm") As ObjectReference)		;CLEARSPRING TARN			X-MARKER
		elseif j == 2
		LocTemp = (Game.GetFormFromFile(0x000FB33C, "Skyrim.esm") As ObjectReference)		;near markarth on slope 	X-MARKER HEADING
		elseif j == 3
		
		LocTemp = (Game.GetFormFromFile(0x00016222, "Skyrim.esm") As ObjectReference)		;solitude some grove		CLEARPINE POND Persistent
		elseif j == 4
		LocTemp = (Game.GetFormFromFile(0x000E0ED5, "Skyrim.esm") As ObjectReference)		;DAWNSTAR STONE on coast	THETOWERSTONE (Persistent, should work)
		;elseif j == 5
		;LocTemp = (Game.GetFormFromFile(0x0002244F, "Skyrim.esm") As ObjectReference)		;DAWNSTAR island			COCMarkerHeading (should work?)	--- no temporary....
		;;LocTemp = (Game.GetFormFromFile(0x000355E3, "Skyrim.esm") As ObjectReference)		;ORPHAN ROCK				COCMarkerHeading (should work?)	--- no temporary....
		;LocTemp = (Game.GetFormFromFile(0x00099806, "Skyrim.esm") As ObjectReference)		;EVERGREEN GROVE			COCMarkerHeading (should work?) --- no temporary...
		;elseif j == 6
		
		;elseif j == 7
		endIf
		
		
		if !LocTemp
			if Nym() ;Debugging
			Debug.Messagebox("#ERROR Wilderness Location "+j+" not found") 
			endif 
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR Wilderness Location "+j+" not found")
		LocTemp = (Game.GetFormFromFile(0x000F3354, "Skyrim.esm") As ObjectReference)		;BACKUP
		endif 
			
	cfgqst.PlayerRef.MoveTo(LocTemp)
	cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[Utility.RandomInt(0,16)])
	Utility.Wait(2.0)
	
		if cfgqst.DefeatTypeScenario != "Afterlife"
		ScreenMessage("You wake up in the wilderness...") 
		endif
	endif
	
	if VictimCount > 0
		if VictimCount == 4
		Victims[0].MoveTo(LocTemp, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[1].MoveTo(LocTemp, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[2].MoveTo(LocTemp, 200.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 200.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[3].MoveTo(LocTemp, 250.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 250.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		elseif VictimCount == 3
		Victims[0].MoveTo(LocTemp, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[1].MoveTo(LocTemp, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[2].MoveTo(LocTemp, 200.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 200.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		elseif VictimCount == 2
		Victims[0].MoveTo(LocTemp, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		Victims[1].MoveTo(LocTemp, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		elseif VictimCount == 1
		Victims[0].MoveTo(LocTemp, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false)
		endIf
	endif	

	;Notification Message
	;if Nearby	
	;ScreenMessage("You regain conciousness in a nearby city. Thank the gods!")
	;Debug.Notification("<font color='#ff0000'>You regain conciousness in a nearby city. Thank the gods! </font>")	;MESSAGE
	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) You regain conciousness in a nearby city. Thank the gods!")
	;else
	;ScreenMessage("You regain conciousness in a city. Praise the gods!")
	;Debug.Notification("<font color='#ff0000'>You regain conciousness in a city. Praise the gods!</font>")	;MESSAGE
	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) You regain conciousness in a city. Praise the gods!")
	;endIf

	Utility.Wait(3.0)
	cfgqst.FadeToBlack(False)
	Utility.Wait(4.0)
	;cfgqst.PlayerRef.PlayIdle(KnockdownIdles[0])
	cfgqst.Immobilize(false)	
	;Game.EnablePlayerControls()
	;Game.SetPlayerAIDriven(false)
	
; set to false LATER 	
;	if cfgqst.DefeatTypeScenario == "Afterlife" 	
;	cfgqst.DefeatTypeScenario = "none" ;#switch Scenario from "Afterlife" to "none" --> this is the definite end of the scenario, not earlier! <<<- 
;	endif
	

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Bool isArrested = false	

Bool noTrolls = false	
Bool noAnimals = false	
Bool noGhosts = false	
Bool noGuards = false	
Bool isSlave = false	
Bool noSlavery = false
;Bool noRobbery = false	
Bool noCaptivity = false
Bool AggressorsReDressed = false
Bool AftermathStarted = false 

Function Fragment_8()	;#aftermath ;############ STAGE 500 ############		#500	#bridge

	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 500 (AFTERMATH)")
	
	AftermathStarted = true
	
	NymTrace("Allow_Aftermath = "+Allow_Aftermath)	
	Bool isRescued = false	
		
	while cfgqst.SexFinished && cfgqst.ModEnabled && (!cfgqst.AbortAll)
	Utility.Wait(1.0)
	endwhile	
	
	cfgqst.GroupStripMaintenance()
	
	if !AggressorsReDressed
	AggressorsReDressed = true
	DressAllAggressors()
	endif 
	
	;>>>>>>>> CHECKING CONDITIONS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	if !(cfgqst.DefeatTypeGeneral == "AreAnimals")	
	noAnimals = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 500 noAnimals(true)")
	endif

	if !(cfgqst.DefeatType == "Trolls")	
	noTrolls = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 500 noTrolls(true)")
	endif

	if (RapersA[0] && !RapersA[0].IsInFaction(NakedGhostFaction)) || (CreaturesA[0] && !CreaturesA[0].IsInFaction(NakedGhostFaction))
	noGhosts = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 500 noGhosts(true)")
	endif

	if !cfgqst.CivilRapeRunning
	noGuards = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 500 noGuards(true)")
	endif

	;to prevent double enslavement: -> Submissive Lola requires MCM Setting to work!
	if cfgqst.PlayerRef.IsInFaction(zbfFactionSlave)
	isSlave = true
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage 500 isSlave(true)")
	endif
	
	if (cfgqst.AbortAll)
	Allow_Aftermath = "none"
	Allow_PayFine = false
	cfgqst.DefeatTypeScenario = "None"
	endif
	
	;>>>>>>>> AFTERMATH SPECIAL >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	;SPECIAL Aftermath that are bound to DefeatTypeScenario
	
	; --- "Special: Girlfriend" --- ; 
	if cfgqst.DefeatTypeScenario == "Girlfriend"
		if D100(95) ;95% chance they keep their word
		ScreenMessage("They keep their word and let you go!")
		InfoMessage("SCENARIO: Girlfriend end")
		StartPlayerFree()
		else
		ScreenMessage("The evil bastards betrayed you!")
		cfgqst.DefeatTypeScenario == "none"
		cfgqst.Allow_EscapeDifficulty = "Hard"
		StartPlayerRobbed()
		StartPlayerCaptured()
		endif
					
	;elseif cfgqst.DefeatTypeScenario == "DD"				
		;ScreenMessage("What will they do to you now?")	
	;	StartPlayerCaptured()
					
	; --- "Special: Afterlife" --- ; 	
	; we are in Afterlife Hell / Dead and this Scenario ends here (we are send to the World again)
	elseif cfgqst.DefeatTypeScenario == "Afterlife"				
		ScreenMessage("Was this only a dream?!")		;before we are send back to the world
		;cfgqst.DefeatTransition = "Send To Afterlife"
		cfgqst.FadeToBlack(true)	
		cfgqst.RemoveAllDDevices()
		
		cfgqst.SendWashPlayerEvent()
	
		if folqst.IsWithUs_Follower(0)
		cfgqst.SendModEvent_BiS_WashActor(folqst.Actor_Follower01)
		endif 
		if folqst.IsWithUs_Follower(1)
		cfgqst.SendModEvent_BiS_WashActor(folqst.Actor_Follower02)
		endif 
		
		
		;cfgqst.SendWashPlayerEvent() ;DOUBLE WASHING? 
		;StartWakeUpInWilderness = true
		StartResurrection = true 
		SetStage(1000)	
		
	; --- "Special: Execution" --- ;	
	; we are executed/dead and send to the Afterlife 
	elseif cfgqst.DefeatTypeScenario == "Execution"		
		
		;ScreenMessage("Welcome in Hell!")			
	;	StartAfterlife = true
		;cfgqst.DefeatTransition = "Send To Execution"
		
		StartAfterlife = true		;Stage 1000 will MOVE us via cfgqst.LocationEvent -> the event will wait for CalmQuest to end
		SetStage(1000)

		
	; --- "Special: Fast Travel" --- ; 
	elseif cfgqst.DefeatTypeScenario == "FastTravel"
		
		;Risky Ritual Outcome
		if (cfgqst.DefeatEntranceVia == "Travel Ritual Risky") 
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FastTravel Aftermath Risky") 
			if D100(75)		;90 Chance of Fast Travel to suceed
			StartPlayerFree()
			cfgqst.FastTravel("Enabled", true)	
			cfgqst.RemoveAllDDevices()	
			else
			ScreenMessage("Fuck... Something went wrong during the Ritual!")
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
					if storqst.ImmersiveRobbery
					cfgqst.StartRobberyAtLocation()
					endif 
				endif 
				StartTeleportIntoDanger = true		;Stage 1000 will MOVE us via cfgqst.LocationEvent -> the event will wait for CalmQuest to end
				SetStage(1000)	
			endif
			
		;Save Ritual Outcome 	
		else
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FastTravel Aftermath") 
			if D100(95)		;90 Chance of Fast Travel to suceed
			
			cfgqst.RemoveAllDDevices()

			StartPlayerFree()
			cfgqst.FastTravel("Enabled", true)	
			else
		
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
					if storqst.ImmersiveRobbery
					cfgqst.StartRobberyAtLocation()
					endif 
				endif 
				StartTeleportIntoDanger = true
				SetStage(1000)	
			endif
		endif 
		
	; --- "Special: ChainRape" --- ; 		
	elseif cfgqst.DefeatTypeScenario == "ChainRape"	
			
		if D100(95)
		ScreenMessage("Exhausted from chainraping you they just let you go!")
		StartPlayerFree()	
		else
		ScreenMessage("Those bastards still have the strength to bind you!")
		cfgqst.DefeatTypeScenario == "none"
		cfgqst.Allow_EscapeDifficulty = "Hard"
		StartPlayerRobbed()
		StartPlayerCaptured()
		endif	
		
		
	;>>>>>>>> AFTERMATH RANDOM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
		
	; --- "Random" --- ; 						
	elseif Allow_Aftermath == "Random"				
	StartRandomAftermath()		
		
	
	;>>>>>>>> AFTERMATH PRESET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	
	; --- "Pay Fine" --- ; 
	elseif Allow_PayFine
		
		cfgqst.PayFine()
		SoundCoin.Play(cfgqst.PlayerRef)
		Utility.Wait(2.0)
		cfgqst.PlayerRef.PlayIdle(KnockdownIdles[0])		;works
		cfgqst.Immobilize(false)	
		SendModEvent("EndofDefeat")	
							
	; --- "Capture" --- ; 
	elseif Allow_Aftermath == "Capture"
	StartPlayerCaptured()
	; --- "Free / Escape" --- ;
	elseif Allow_Aftermath == "Escape"
	StartPlayerFree()
	
	;>>>>>>>> AFTERMATH FREE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	
	
	; --- "None" --- ; 			
	elseif Allow_Aftermath == "None"		
	StartPlayerFree()	
	else 
	StartPlayerFree()
	endif 
					

	;KILL Event
	;/
	You start it with

	actor1.PlayIdleWithTarget(<IdleObject>, actor2)
	For <IdleObject> look for the available idles in the CK, Animations -> 0_master.hkx -> LOOSE
	 
	For example "pa_1HMKillMoveBackStab".

	If you happen to have a custom killmove then you can look into the FNIS Modder's doc on how to integrate it into the game.

	/;
EndFunction
	
;/
Bool Function CanCapture()

	if cfgqst.DefeatTypeGeneral == "AreHumans"
	return true
	if cfgqst.DefeatTypeGeneral == "AreAnimals"
	return false
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
		
		if cfgqst.DefeatType == "Trolls" || cfgqst.DefeatType == 
		

EndFunction

/;


Bool Function CanSellSlaves()

	if cfgqst.DefeatTypeGeneral == "AreHumans"
	return true
	elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
	return false
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
		
		if (cfgqst.DefeatType == "Trolls") || (cfgqst.DefeatType == "Giants") || (cfgqst.DefeatType == "Gargoyles") || (cfgqst.DefeatType == "Draugr") || (cfgqst.DefeatType == "Undead")
		return false
		else
		return true
		endif 
	else 
	return false	
	endif 	
		
EndFunction


;DEATH LOCATIONS

;000E82D4 - Xmarker in Hall of Heroes between Tables
;000E82D1 - Xmkarer in the Hall of Heroes, big spectator hall


Event OnStartPlayerRescued(String EventName, String ArgString, Float ArgNum, Form Sender)
Debug.Trace("NAKED DEFEAT configquest: OnStartPlayerRescued()()")

StartPlayerRescued()

EndEvent

;/
RESCUE1 happens in Stage 500


/;


Function StartRandomAftermath()			;RANDOM AFTERMATH
	NymTrace("StartRandomAftermath()")	
		
	;#EXECUTION >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		;WIP #WIP #execution2 as aftermath
	;if !isSlave && noGuards && D100(cfgqst.DefeatDeathChance)	
	;StartPlayerExecuted()	
	
	Bool Bandits = cfgqst.IsItBandits() ;UNRELIABLE 
	
	if !Bandits
		if cfgqst.DefeatType == "Bandits"
		Bandits = true
		endif
	endif 	
	
	if Bandits
	NymTrace("StartRandomAftermath(Bandits)")	
	endif 
	;---- 1st Roll ----- #RESCUE1 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 1st
	if !cfgqst.HarderDefeat && !isSlave && noGuards && D100(cfgqst.DefeatRescueProb)
	
		;IN NYMRAS GAME WE STILL CAN GET ROBBED BEFORE RESCUE
		if Nym() && D100(33) ;Nymras Dark World
		StartPlayerRobbed()
		Utility.Wait(1.0)
		endif
		
	if D100(50)
	cfgqst.RemoveAllDDevices()
	endif
		
	Rescued = true
	StartRescued = true
	SetStage(1000)	
		
	;---- nothing else triggers after here (Rescued = True)
	
	;---- 2nd Roll ----- #ROBBERY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	elseif !cfgqst.DefeatViaSlavery && noGuards && noGhosts && noAnimals && noTrolls && !cfgqst.CivilRapeRunning && (storqst.IsLocalSlave == 0)
		
			;NymMessage("Robbed by Bandits: ("+cfgqst.IsItBandits()+")")
				
			if storqst.NymDarkWorld && Bandits ;Nymras Dark World .-- CAREFUL; We can only ask For Bandits ONCES 	
			BadMessage("Nymra's Dark World: Robbers being Robbers")
			;In Nymras Game robbers rob 100% of the time
			StartPlayerRobbed()	
			
				if !cfgqst.IsRobberyWorthIt
				ScreenMessage("They sell you because your body is only thing valuable that you brought with you")
				StartSlavery = true
				SetStage(1000)
				endif 
			
			;BANDITS rob x2 Chance		
			elseif cfgqst.NymBeta && Bandits && (cfgqst.DefeatRobberyProb > 0)	;careful, can only ask ONCE for "IsBandits"!!
			float tempRobchance = (cfgqst.DefeatRobberyProb) + (cfgqst.DefeatRobberyProb) ;+ (cfgqst.DefeatRobberyProb)	

				if D100(tempRobchance)
				InfoMessage("Bandits have a x2 the MCM-robberychance to rob you. BanditsRobChance: "+tempRobchance)
				StartPlayerRobbed()
				;---- nothing else triggers after here
				endif
				 
			StartPlayerRobbed()
			;---- nothing else triggers after here
			elseif (D100(cfgqst.DefeatRobberyProb))
			StartPlayerRobbed()
			;---- nothing else triggers after here
			endif
	;--- further checks possible if no robbery		
	endif

	if !Rescued	
	
		;<<<<<<<<<< PRISON (POP) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #POP
		if cfgqst.ModPOP && cfgqst.CivilRapeRunning && D100(cfgqst.DefeatArrestProb)
		StartPlayerPrisonerPOP()
		
		
		;---- 3rd Roll -----  ;<<<<<<<<<< SLAVERY (SD+ & SS++) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #SS
		
		elseif Nym() && IsItSlavers(RapersA[0])	;Nymras Dark World - Slavers
		
		StripFollower(0)
		StripFollower(1)
		
		if cfgqst.DefeatRobberyProb > 0 
			if storqst.ImmersiveRobbery
			cfgqst.StartRobberyAtLocation()
			endif 
		endif 
		;StartPlayerSlaverySS()
		StartSlavery = true
		SetStage(1000)
		
		
		
		elseif !noCaptivity && !noslavery && !cfgqst.HarderDefeat && !isSlave && noGuards && noGhosts && D100(cfgqst.DefeatSlaveryProb) ;|| (cfgqst.IsItBandits() && D100(cfgqst.DefeatSlaveryProb + 10))  ;---------------------- SLAVERY event

		
		
			if D100(cfgqst.DefeatSDweight)
			StartPlayerSlaverySD()		
			elseif noAnimals && noTrolls
					
			if cfgqst.DefeatRobberyProb > 0
			ScreenMessage("They take all your stuff before selling you as a slave")
			StartPlayerRobbed()
			Utility.Wait(1.0)
			endif
			
			StartSlavery = true
			SetStage(1000)
			
			else
			StartPlayerFree()
			endif
			
		;<<<<<<<<<< CAPTURE >>>>>>>>>>> furniture or DDe >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>				
		elseif !noCaptivity && !ShortDefeat && noAnimals && noTrolls && (D100(cfgqst.DefeatCaptivityProb) || cfgqst.HarderDefeat)		;---------------------- LOCAL CAPTIVITYevent
		StartPlayerCaptured()

		;<<<<<<<<<< NO OUTCOME >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		else
		StartPlayerFree()	
		endif
	endif ;!if Rescued


EndFunction


Function StartPlayerRobbed()

	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerRobbed()")
			;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRobbery()")
			
			cfgqst.Immobilize(true)
			
		if Nym() && PresentRobber && !PresentRobber.IsDead()
		cfgqst.StartRobbery(PresentRobber)		
		else 
			if (cfgqst.DefeatTypeGeneral == "AreHumans")
				if RapersA[0] && !RapersA[0].IsDead() && !RapersA[0].IsEssential() && CheckRobber(RapersA[0])
				cfgqst.StartRobbery(RapersA[0])
				elseif RapersB[0] && !RapersB[0].IsDead() && !RapersA[0].IsEssential() && CheckRobber(RapersB[0])
				cfgqst.StartRobbery(RapersB[0])
				elseif RapersC[0] && !RapersC[0].IsDead() && !RapersA[0].IsEssential() && CheckRobber(RapersC[0])
				cfgqst.StartRobbery(RapersC[0])
				else
				;If Rapers are not valid (no Vanilla Actors) we use our own RobberyQuest
				;ADD CREATURE BASED ROBBERY LOCATIONS TOO?
						if storqst.ImmersiveRobbery
						cfgqst.StartRobberyAtLocation()
						endif 
				endif
				
			elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids")
				
				if CreaturesACount > 0
				string RobberRace = "none"
				RobberRace = GetRaceKey(CreaturesA[0])				
					if (RobberRace == "Draugrs") || (RobberRace == "Falmers") || (RobberRace == "Rieklings") || (RobberRace == "Giants")   
						if CreaturesA[0] && !CreaturesA[0].IsDead() && CheckRobber(CreaturesA[0])
						cfgqst.StartRobbery(CreaturesA[0])
						endif
					elseif CreaturesBCount > 0		
					RobberRace = GetRaceKey(CreaturesB[0])				
						if (RobberRace == "Draugrs") || (RobberRace == "Falmers") || (RobberRace == "Rieklings") || (RobberRace == "Giants")   
			
							if CreaturesB[0] && !CreaturesB[0].IsDead() && CheckRobber(CreaturesB[0])
							cfgqst.StartRobbery(CreaturesB[0])
							endif						
						elseif CreaturesCCount > 0		
						RobberRace = GetRaceKey(CreaturesC[0])				
							if (RobberRace == "Draugrs") || (RobberRace == "Falmers") || (RobberRace == "Rieklings") || (RobberRace == "Giants")   				
								if CreaturesC[0] && !CreaturesC[0].IsDead() && CheckRobber(CreaturesC[0])
								cfgqst.StartRobbery(CreaturesC[0])
								endif						
							endIf
						endIf
					endIf
				endif	
			endif
		endif 
EndFunction
	
	
;#rescue2	
Function StartPlayerRescued()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerRescued()")
	Rescued = true
	

	CreateModEvent("NakedDefeatTransition", "Teleport Misshap")

;/
	cfgqst.FadeToBlack(True)
	Utility.Wait(1.0)
	MoveToRescueLocation()	
	
	if cfgqst.IsDefeatRunning()		;ERROR HERE? ;ADD/CHECK FADE 
	SendModEvent("EndofDefeat")
	;cfgqst.PlayerPosing("Stop", false)
	;PlayPosesOnActors("Stop", false)
	
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Stopping 	 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
	PlayPoseOnActor(Victims[0], "Stop", false)
	PlayPoseOnActor(Victims[1], "Stop", false)
	endif
	/;
	
EndFunction

Function PayCrimeGold()				;#crime
Debug.trace("Naked Defeats configquest - PayCrimeGold()")	
Debug.trace("Naked Defeats configquest - CrimeGoldToGet1: "+cfgqst.CrimeGoldToGet)			
	
	int PlayerGold = cfgqst.PlayerRef.GetGoldAmount()
	int TempGold
	;int TempSentence
	
	if cfgqst.CrimeGoldToGet > 10000
	;cfgqst.PrisonSentence += 10
	elseif cfgqst.CrimeGoldToGet > 5000
	;cfgqst.PrisonSentence += 5
	elseif cfgqst.CrimeGoldToGet > 1000
	;cfgqst.PrisonSentence += 2
	elseif cfgqst.CrimeGoldToGet > 500
	;cfgqst.PrisonSentence += 1
	endif 
	
	if PlayerGold >= cfgqst.CrimeGoldToGet
		
		;take all Gold 
		if D100(1)	
		cfgqst.CrimeGoldToGet = PlayerGold
		;take 50% of playergold on top 	
		elseif D100(5)
		TempGold = (PlayerGold - cfgqst.CrimeGoldToGet)/2 
		cfgqst.CrimeGoldToGet = cfgqst.CrimeGoldToGet + TempGold
		;take twice the Gold 	
		elseif D100(50)
		cfgqst.CrimeGoldToGet = cfgqst.CrimeGoldToGet*2 
		endif 
	elseif PlayerGold == 0 
	
	;cfgqst.PrisonSentence += cfgqst.PrisonSentence
	else 
	;TempSentence = Utility.RandomInt(1,5)
	;cfgqst.PrisonSentence += TempSentence
	cfgqst.CrimeGoldToGet = PlayerGold
	endif 
	
	cfgqst.RobGoldFromPlayer(cfgqst.CrimeGoldToGet, RapersA[0]) 
	
	if cfgqst.CrimeGoldToGet > 0
	ScreenMessage("They are taking "+cfgqst.CrimeGoldToGet+" Septims from you")  	
	endif 
	cfgqst.CrimeGoldToGet = 0
	
	
EndFunction 

;/

	cfgqst.PrisonSentence
	PunishmentRounds before Free 
	1 Sentence =
	
	3 SexScenes 
	3 WhipScenes 
	1 day in furniture 
	
	Prison starts with Furniture 
	wiggle can draw attention. (do we even add binding spell?) 
	
	Sex and Whipping will decrease the sentence, so will days in binding 
	
	There is also a 5% chance the guards put the player in their barracks for an orgy and then sell them as slave
	
	
/; 


		;/#Leniency Brainstorming
		
		Leniency: for slavery (Long Term)
		Mercy: short term  

		Mercy is between -100 and +100
		
		at 0 it does nothing
		
		After each SexScene: 
		No Mercy: +1 Scene  / +10 Mercy 
		Mercy: if scenes left > 0, -1 Scene / -10 Mercy 
			
		
		EscapeGame:
		Mercy can increase the escape difficulty 
		
		Mercy can increase the chance of beeing Bukkaked, Fucked, Whipped 
		
		
		/; 
		


Function StartPlayerPrisonerPOP()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerPrisonerPOP()")
	
	if cfgqst.IsDefeatRunning()
	SendModEvent("EndofDefeat")
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Stopping 	 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
	PlayPoseOnActor(Victims[0], "Stop", false)
	PlayPoseOnActor(Victims[1], "Stop", false)
	endif
	isArrested = true
	MoveToPrison()
EndFunction			

Function StartPlayerSlaverySD()

;if !Rescued && !ShortDefeat && !isSlave && noGuards && noGhosts && (Utility.RandomInt(1, 100) <= cfgqst.DefeatSlaveryProb);---------------------- SLAVERY event
	;Immobilize(false)
	;cfgqst.PlayerRef.AddToFaction(zbfFactionSlave)			;necessary? maybe remove. its SS++ anyway
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerSlayerSD")	
		;SD+
				
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OUTCOME Slavery [SD+]")
	
		; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
		; Stopping 	 	
		PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
		PlayPoseOnActor(Victims[0], "Stop", false)
		PlayPoseOnActor(Victims[1], "Stop", false)
		
		if RapersA[0]
		ScreenMessage("Your enemies decided to keep you as their slave [SD+]")
		RapersA[0].SendModEvent("PCSubEnslave") 	
		
		elseif CreaturesA[0]
		ScreenMessage("The foul creature seems to keep you for breeding [SD+]")
		CreaturesA[0].SendModEvent("PCSubEnslave") 
		
		else
		ScreenMessage("Nobody there to enslave you. Lucky you. [SD+]")
		endif

	SendModEvent("EndofDefeat")	


EndFunction

Function StartPlayerSlaverySS() ;;OLD REMOVE 

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerSlayerSS()")
	;if robbery is allowed we always trigger that before slavery
	;if (cfgqst.DefeatRobberyProb > 0) ;&& !cfgqst.DefeatViaSlavery && !cfgqst.Robbed && noGuards && noGhosts && noAnimals && noTrolls
	;StartRobbery()
	;endif
	
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Stopping 	 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
	PlayPoseOnActor(Victims[0], "Stop", false)
	PlayPoseOnActor(Victims[1], "Stop", false)
	
	SendModEvent("EndofDefeat_Slavery")

EndFunction


Event StartTeleportIntoDanger()	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartTeleportIntoDanger()")
	;Utility.Wait(2.0)
	;StartSlavery = true

EndEvent


	
Function StartPlayerFree()				;PlayerFree()
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPlayerFree()")

;	cfgqst.PlayerRef.PlayIdle(KnockdownIdles[0])		;works
	;cfgqst.PlayerPosing("Stop", false)
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Stopping 	 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
	PlayPoseOnActor(Victims[0], "Stop", false)
	PlayPoseOnActor(Victims[1], "Stop", false)
	
	if !Rescued
	ScreenMessage("It seems like they are done with you.")	
	endif
	InfoMessage("End of Naked Defeat Scenario")
	SendModEvent("EndofDefeat")	

EndFunction	


Form [] StrippedArmor

Function StripRaper(actor Raper, int Count)


	if RapersA
	StrippedArmor[Count] = Raper.GetWornForm(0x00000004)	;32 BODY
	Raper.RemoveItem(StrippedArmor[Count], 1, true)
	endif
	;Function RemoveItem(Form akItemToRemove, int aiCount = 1, bool abSilent = false, ObjectReference akOtherContainer = None) native
	
;#luisa
EndFunction

Function StartPlayerCaptured() 

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #StartPlayerCaptured()")	

cfgqst.DefeatStatePlayer = "EscapeGame" 	;#chapter
cfgqst.DefeatStateChapter = "EscapeGame" 	;#chapter

	if VictimCount > 0		
		if Victims[0]		
		folidle01.StartDoingNothing_01(true)
		Vehicle_Follower_01("restore")
		;AddDefeatBindsFollowers(Victims[0])
		
		AddDefeatBindsToActor(Victims[0], "add")
		
		StripFollower(0)	
						
		endif		
		if Victims[1]
		folidle01.StartDoingNothing_02(true)
		;AddDefeatBindsFollowers(Victims[1])
		AddDefeatBindsToActor(Victims[1], "add")
		
		StripFollower(1)
		Vehicle_Follower_02("restore")
		
		endif			
	endif
		
	if cfgqst.IsPoseScenario()	
	
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Wait for Binding . followers might struggle  		 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	
	PlayPoseOnActor(Victims[0], "Random", false)	
	PlayPoseOnActor(Victims[1], "Random", false)
	
	else
	cfgqst.FadeToBlack(true)

	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; Stop Player (its for furniture) - followers can still struggle 		 	
	PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
	PlayPoseOnActor(Victims[0], "Stop", false)
	PlayPoseOnActor(Victims[1], "Stop", false)
	endif
	
	if cfgqst.ShortPunishment == 0
	Utility.Wait(2.0)
	endif 
	
	AftermathStarted = false
	capqst.StartCapture()

EndFunction	

;OLD	
;Function StartRobbery()

;EndFunction


Bool Function CheckRobber(actor akactor)			;NO LONGER GOOD -- needs to be more elaborate than this :(

Actor a = akactor
Int iModIndex
Int intFormID
String stringFileName

			;a = akactor .GetWornForm(0x00000001)	;30 - HEAD
			;intFormID = item.GetFormID()
			intFormID = (akactor.GetBaseObject() As ActorBase).GetFormID()
			iModIndex = Math.RightShift(intFormID, 24) 	; e.g. 0x1B0012B7 becomes 0x1B or the decimal value of 27
			stringFileName = Game.GetModName(iModIndex) 		;Gets Name of Mod eg. Skyrim.esm, Update.esm, Hearthfire.esm, etc.
			
		;	if stringFileName == "Naked Defeat.esp"
		;	ScreenMessage("Actor NOT valid for Robbery")
		;	return false
		;	else
		;	ScreenMessage("Actor valid for Robbery")
		;	return true
		;	endif
			
			if akactor.IsInFaction(NakedGhostFaction) || akactor.IsCommandedActor() || akactor.IsDead()
			return false
			endif 
			
		;	if akactor.IsInFaction(cfgqst.RobberFaction)
		;	return false
		;	endif 

			if stringFileName == "Skyrim.esm"
			return true
			else
			return false
			ScreenMessage("NAKED DEFEAT: NON-Vanilla Actor -> NOT valid for Robbery")
			endif
	
			
EndFunction

bool Function IsItSlavers(actor akactor)

if Nym()
	;Actor akactor = RapersA[0]
	Int iModIndex
	Int intFormID
	String stringFileName

				;a = akactor .GetWornForm(0x00000001)	;30 - HEAD
				;intFormID = item.GetFormID()
				intFormID = (akactor.GetBaseObject() As ActorBase).GetFormID()
				iModIndex = Math.RightShift(intFormID, 24) 	; e.g. 0x1B0012B7 becomes 0x1B or the decimal value of 27
				stringFileName = Game.GetModName(iModIndex) 		;Gets Name of Mod eg. Skyrim.esm, Update.esm, Hearthfire.esm, etc.
				
			;	if stringFileName == "Naked Defeat.esp"
			;	ScreenMessage("Actor NOT valid for Robbery")
			;	return false
			;	else
			;	ScreenMessage("Actor valid for Robbery")
			;	return true
			;	endif
			
				if (stringFileName == "enemy-encounter-wellsantos.esp") ;&& cfgqst.IsItBandits()
				Debug.MessageBox("SLAVERS!")
				return true
				else
				;ScreenMessage("Actor NOT valid for Robbery")
				return false
				endif
else
return false
endif				
				
EndFunction


Function Fragment_15()							;############ STAGE 13 ############		
	
;end of last rape sequence

;#TO DO: this stage is remaining.
; we need stage 10 cleaned up (faster), so all stage content needs to move up one spot. 

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 13")	

	SetStage(14)

EndFunction


int SexSequencesDone = 0

Function Fragment_20()							;############ STAGE 14 ############	;#14
	
	;END OF SEX SEQUENCE 	
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 14")

	SexScenesDone = 0
	FuckingRound = 0
	LastSceneOrdered = 100 ;END!
	
	FollowerHadGroup = false 
	PlayerHadGroup = false 
	
	;SexSequencesDone += 1
	
	;if cfgqst.DefeatTypeScenario == "FastTravel" 	 ;superfluous?
	;SetStage(500)	
	;doNothing			

	;cfgqst.DefeatTypeScenario = "none"
	;endif
	
	;End Sex Sequence when 3 or less scenes
	;elseif (Allow_SexScenes < 4) && (SexSequencesDone == 1)
	;DebugTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexSequencesDone: Regular END") 
	;SexSequencesDone = 0
	SetStage(500)
	;Repeat Sex Sequence if SexScenes more than 3
	;elseif (Allow_SexScenes > 3) && (SexSequencesDone == 1)
	;DebugTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexSequencesDone: ChainRape Repeat") 
	;SetStage(11)
	;End Sex Sequence if SexScenes more than 3
	;elseif (Allow_SexScenes > 3) && (SexSequencesDone == 2)
	;DebugTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexSequencesDone: ChainRape END") 

	;SexSequencesDone = 0
	;SetStage(500)
	;else		
	;SetStage(500)
	
	;endif

EndFunction


;bool WashingPlayer = false
bool calming = true
bool skip = false
;bool IdlesUnbound = false
;bool IdlesCuffs = false

bool AllowPlaceFloor = false
bool NoActorsAbort = false
bool NoActorsRestartSlavery = false

Float Property IncreasedDistance Auto
float Distance 

Keyword DemonicCreature

;bool StartCombatScan = false

Function RegisterForModEvents()			;#events #register

RegisterForModEvent("Bis_BatheEvent", "OnBis_BatheEvent")
;RegisterForModEvent("StartForceExpression", "OnStartForceExpression")
;RegisterForModEvent("StartCombatScanner", "OnStartCombatScanner")
RegisterForModEvent("StartAddRapeHands", "OnStartAddRapeHands")
RegisterForModEvent("StartAddRapeTears", "OnStartAddRapeTears")
RegisterForModEvent("StartAddRapeCount", "OnStartAddRapeCount")
RegisterForModEvent("StartForceImmobilize", "OnStartForceImmobilize")
RegisterForModEvent("EndofDefeat", "OnEndofDefeat")
RegisterForModEvent("EndofDefeat_Slavery", "OnEndofDefeat_Slavery") 
RegisterForModEvent("EndofDefeat_Afterlife", "OnEndofDefeat_Afterlife") 
RegisterForModEvent("StartPlayerRescued", "OnStartPlayerRescued") 
RegisterForModEvent("StartMoaning", "OnStartMoaning")
RegisterForModEvent("HookStageStart", "StageStart")
RegisterForModEvent("StartEscape", "OnStartEscape")
RegisterForModEvent("StartSolo", "OnStartSolo")
RegisterForModEvent("StartCallMolesters", "OnStartCallMolesters")
RegisterForModEvent("StartVoyeurs", "OnStartVoyeurs")
RegisterForModEvent("StartNakedSexExpressions", "OnStartNakedSexExpressions")
;RegisterForModEvent("StartRaperExpressions", "OnStartRaperExpressions")
RegisterForModEvent("ForceStageProgression", "OnStartForceStageProgression")
RegisterForModEvent("StartForceOpenMouth", "OnStartForceOpenMouth")

EndFunction


Function InitialMaintenance_Followers()
	;GUIDE: THIS IS THE ONLY TIME WE HANDLE THE FOLLOWERS RIGHT AT THE START.
	;check the script for later double troubles....
		
	NymTrace("InitialMaintenance_Followers() ::::::::::::::::::::::::::::::::::::::::::::::::::::") ;#fol1

	Victims = new Actor[4]					
	Victims[0] = None
	Victims[1] = None
	Victims[2] = None
	Victims[3] = None
	VictimCount = 0

	if folqst.IsFollowerPresent()
	folidle01.StartFollowerIdleQuest_01("none") 


		if folqst.NakedFollowerCount > 0
		
			int f = folqst.NakedFollowerCount
			while (f > 0) 
			f -= 1
				if folqst.IsWithUs_Follower(f)
				NymTrace("Follower set as Victim: "+f)
				Victims[f] = folqst.NakedFollower[f]
				Victimcount +=1
				Victims[f].AddToFaction(BusyFaction) ;what does it do?	
				CalmActor(Victims[f]) ;might be superfluos	;#improve!
					if !SPE_actor.IsActorCalmed(folqst.NakedFollower[f])
					SPE_actor.SetActorCalmed(folqst.NakedFollower[f], true)
					endif 
				
					if f == 0	;#improve!
					folidle01.StartDoingNothing_01(true)
					elseif f == 1
					folidle01.StartDoingNothing_02(true)
					elseif f == 2
					folidle01.StartDoingNothing_03(true)
					elseif f == 3
					folidle01.StartDoingNothing_04(true)
					endif 
				endif
			endwhile	
			
			if Victimcount > 1 			;#improve!
			NeedAnotherRaper = true
			NeedARaper = true		
			elseif Victimcount == 1
			NeedARaper = true
			endif 
		endif 
	endif 

EndFunction 


		

		
		Bool WearingDDsBlockingSex = false

Function InitialMaintenance()	;STAGE 10 start
	NymTrace("InitialMaintenance() ::::::::::::::::::::::::::::::::::::::::::::::::::::")	

	;Follower Handling!!!

	if !SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)	
	NymTrace("InitialMaintenance() Actor was NOT calmed")
	SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, true)
	endif

	cfgqst.FixExpressions()
	
	cfgqst.PublicExposure = 0
	cfgqst.StopHeartBeat()
	
	LastHitterAsWhipper()

	RegisterForModEvents()
	cfgqst.PlayerDownAlready = false  ;too early?

		
		if cfgqst.ModDDframework

			if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
			DebugTrace("InitialMaintenance() Wearing Lockable DD")
			WearingDDs = true 
			endif 
		
			if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
			WearingDDs_HeavyBondage = true 
			DebugTrace("InitialMaintenance() Wearing HeavyBondage DD")
			endif 
		
		
			if WearingDDs && !storqst.IsLocalSlave()	;slaves dont get their DDs removed!
		
				float fRemoveDDChanceTemp
				
				if (cfgqst.DefeatEntranceVia == ("Surrendered in Combat")) && D100(cfgqst.CooperativeSurrenderChance)
				fRemoveDDChanceTemp = cfgqst.RemoveDDChance + cfgqst.RemoveDDChance
				else
				fRemoveDDChanceTemp = cfgqst.RemoveDDChance
				endif 
				
				if (cfgqst.DefeatEntranceVia == ("Send to Afterlife")) 
				cfgqst.RemoveAllDDevices(true, "empty01", "empty02", "empty03", "empty04", "empty05")
				NymTrace("InitialMaintenance() - RemoveAllDDevices(Afterlife)")
				elseif D100(fRemoveDDChanceTemp)
				cfgqst.RemoveAllDDevices(true, "Piercing Nipples", "empty02", "empty03", "empty04", "empty05")
				NymTrace("InitialMaintenance() - RemoveAllDDevices()")
				endif 
			endif 
			
			if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "BlockingSex")
			NymTrace("InitialMaintenance() IsWearingDDs")
			WearingDDsBlockingSex = true
			cfgqst.DefeatTypeScenario = "DD"	
			else 
			WearingDDsBlockingSex = false
			endif

		endif 

		
	;--- REMOVE POTION EFFECTS -------------------------------------------------------------- ;
	
	if cfgqst.CheckDurationSpell("Magicka")
	cfgqst.RemoveDurationSpell("Magicka")
	endif
	
	if cfgqst.CheckDurationSpell("Health")
	cfgqst.RemoveDurationSpell("Health")
	endif
	
	if cfgqst.RapeAgain
	
	AddDefeatBinds()		;AddBindsAgain to restore the "DefeatStateBindings" for RapeAgain (else the poses will not match)
	
		;if D100(33)			;33% chance that the scenario is changed on RapeAgain (NOT tested)
		;cfgqst.DefeatTypeScenario = "none"
		;endif
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: cfgqst.RapeAgain = TRUE")
	else
	;GracePeriod needs to be set to 0 for the first start of Naked Defeat.
	;when RapeAgain is true, the GracePeriod is used for the EscapeGame.
	cfgqst.GracePeriod = 0
	endif
	
	if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
	;ScreenMessage("FORBIDDEN Fuck...!!!!!!####")
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 (SexLabForbiddenActors)")
	cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)
	endif

	if cfgqst.CivilRapeRunning
	cfgqst.DefeatTypeGeneral = "AreHumans"
	cfgqst.DefeatType = "Humans"
	endIf

	;Demonic Creatures Keyword RapeAgain
	if cfgqst.ModDEM
	DemonicCreature = (Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
	endif	
		
	;Search Radius Setup 				
	if cfgqst.DefeatViaSlavery || (cfgqst.DefeatTypeScenario == "Afterlife")
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: cfgqst.DefeatViaSlavery")
	Distance = 10000
	elseif cfgqst.PlayerRef.IsInInterior()
	Distance = cfgqst.SearchRadiusInterior
	else
	Distance = cfgqst.SearchRadius
	endif
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SearchRadius: "+Distance)

	;Search Radius error check
	if Distance < 5000
	;Distance = 5000
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR SearchRadius is very low. Distance: "+Distance)
	;Debug.Notification("NAKED DEFEAT: #ERROR SearchRadius not found. now set to 5000, report to forum")
	endif
	
	;enable Godmode (MCM toggle)
;	if cfgqst.GodMode
;	Debug.SetGodMode(true)
;	Debug.trace ("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Godmode TRUE")
;	endif
	
	AllowPlaceFloor = true
	cfgqst.SexState = 0 ;no Sex 
	
EndFunction

int Prost


Function GetScenarioByWeight(String Restriction)

	if cfgqst.DefeatTypeScenario == "FastTravel"
	;do nothing!
	else 
		NymTrace("GetScenarioByWeight BEFORE DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)

		bool OnlyGuardScenarios = false
		String [] RandomScenarioArray
		RandomScenarioArray = new String[12]	
		RandomScenarioArray[0] = "NoScenario"
		RandomScenarioArray[1] = "NoScenario"		
		RandomScenarioArray[2] = "NoScenario"
		RandomScenarioArray[3] = "NoScenario"
		RandomScenarioArray[4] = "NoScenario"
		RandomScenarioArray[5] = "NoScenario"
		RandomScenarioArray[6] = "NoScenario"
		RandomScenarioArray[7] = "NoScenario"
		RandomScenarioArray[8] = "NoScenario"
		RandomScenarioArray[9] = "NoScenario"
		RandomScenarioArray[10] = "NoScenario"
		RandomScenarioArray[11] = "NoScenario"
		
		int x = 0

		if Restriction == "OnlyGuardScenarios"
		OnlyGuardScenarios = true
		endif 

		if D100(cfgqst.Scenario_Pillory_Weight_VALUE) 
		RandomScenarioArray[x] = "Pillory"
		x += 1
		endif 
		if D100(cfgqst.Scenario_XCross_Weight_VALUE)
		RandomScenarioArray[x] = "XCross"
		x += 1
		endif 	
		if D100(cfgqst.Scenario_Wheel_Weight_VALUE)
		RandomScenarioArray[x] = "Wheel"
		x += 1
		endif 	
		if D100(cfgqst.Scenario_Stockade_Weight_VALUE)
		RandomScenarioArray[x] = "Stockade"
		x += 1
		endif 	
		if D100(cfgqst.Scenario_Armbinder_Weight_VALUE)
		RandomScenarioArray[x] = "Armbinder"
		x += 1
		endif 	
		if D100(cfgqst.Scenario_Cuffs_Weight_VALUE)
		RandomScenarioArray[x] = "Cuffs"
		x += 1
		endif 		
		if D100(cfgqst.Scenario_Rodeo_Weight_VALUE) && !OnlyGuardScenarios
		RandomScenarioArray[x] = "Rodeo"
		x += 1
		endif 	
		if D100(cfgqst.Scenario_ChainRape_Weight_VALUE) && !OnlyGuardScenarios
		RandomScenarioArray[x] = "ChainRape"
		x += 1
		endif 
		if D100(cfgqst.Scenario_ForcedMasturbation_Weight_VALUE) && !OnlyGuardScenarios
		RandomScenarioArray[x] = "Masturbation"
		x += 1
		endif 
		if D100(cfgqst.Scenario_Bukkake_Weight_VALUE) && !OnlyGuardScenarios
		RandomScenarioArray[x] = "Bukkake"
		x += 1
		endif 
		if D100(cfgqst.Scenario_Girlfriend_Weight_VALUE) && !OnlyGuardScenarios
		RandomScenarioArray[x] = "Girlfriend"
		x += 1
		endif 
		;if cfgqst.ModDDNG
		;RandomScenarioArray[x] = "DD"
		;x += 1
		;endif 
		
		
		int y = Utility.RandomInt(0,x)
		
		cfgqst.DefeatTypeScenario = RandomScenarioArray[y]
		NymTrace("GetScenarioByWeight = "+cfgqst.DefeatTypeScenario)
	endif 

EndFunction 

Function GetDefeatScenario()			;#scenario2 ;#GetDefeatScenario()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetDefeatScenario()")	

	Allow_SexScenes = 0
	
	
	;WIP
	;CHAINED ABOVE 
	;PsycheRestrictRape05 --> remove frame then it might do
	;Gallows : PsycheRestrain02* falsch rum
	;Chained Above: PsycheRestrain MOD
	
	;NEW SCENARIOS:
	;Chained Above  NymChained (2 :( only)  DD has this: \meshes\devious\Heretic\Restraints\WristIronHDT.nif
	;Gallows (lots!)    ----> replace all Gallows Models!
	;Hogtied (2 From Billyy, some bound stuff, SlaveGirl rolling on floor
	;Magic - Magic/NymMagic 
	;Wall - FenceWoven02 000008A7 - Skyrim Vanilla Fence. maybe stuck two above each other?
	
	; 	1 		Yoke
	;	2 		Cuffs
	; 	3 		Rodeo
	;	4 		Maturbation
	; 	5 		Bukkake
	;	6 		Chainrape
	; 	7 		Girlfriend
	;	8 		Pillory
	;	9 		Furniture
	;	10		Armbinder
	;	11		Xcross
	;   12 		Wheel
	; 	13		Stockade
	
	;ARMBINDER FIRST?
	
	;CALCULATE WHORING GOLD AT START AND END AND THEN ADD GOLD AFTERWARDS

	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetDefeatScenario() ShortPunishment: "+cfgqst.ShortPunishment)
	ResetAllowance()
	
	;----- Get Scenario By Weight ------ ;
	
	if cfgqst.IsDDScenario() || (cfgqst.DefeatTypeScenario == "FastTravel")
	; do nothing?
	elseif cfgqst.DefeatEntranceVia == "Prostitution"
	int cis 
	float WhoringGold = (Utility.RandomFloat(500.0,3000.0))
	float CustomerCount
	
		if cfgqst.ModBiS_R || cfgqst.ModBiS
		float TempDirtiness = cfgqst.GetDirtiness()
		TempDirtiness/100
		WhoringGold = WhoringGold*TempDirtiness
		endif 
		
		CustomerCount = RapersMale
		if cfgqst.FemalesAllowed
		CustomerCount = RapersMale + RapersFemale
		endif 
		
		if CustomerCount > 4		
		WhoringGold = WhoringGold*1.25
		elseif CustomerCount > 8
		WhoringGold = WhoringGold*1.5
		endif 
		
		cfgqst.AddGold(WhoringGold as int)
	
	
		if cfgqst.ProstitutionScenario == "Bound"
			cis = Utility.RandomInt(1,3)
			Allow_SexScenes = 3
			if cis == 1
			cfgqst.DefeatTypeScenario = "Yoke"
			NymMessage("Prostitution: Yoke")
			elseif cis == 2
			cfgqst.DefeatTypeScenario = "Cuffs"
			NymMessage("Prostitution: Cuffs")
			elseif cis == 3
			NymMessage("Prostitution: Armbinder")
			cfgqst.DefeatTypeScenario = "Armbinder"
			endif 
			
		elseif cfgqst.ProstitutionScenario == "Furniture" 	
			cis = Utility.RandomInt(1,3)	
			Allow_SexScenes = 3	
			if cis == 1
			cfgqst.DefeatTypeScenario = "Pillory"
			NymMessage("Prostitution: Pillory")
			elseif cis == 2
			cfgqst.DefeatTypeScenario = "Wheel"
			NymMessage("Prostitution: Wheel")
			elseif cis == 3
			NymMessage("Prostitution: XCross")
			cfgqst.DefeatTypeScenario = "XCross"
			endif 
		
		elseif cfgqst.ProstitutionScenario == "Girlfriend" 
			cfgqst.DefeatTypeScenario = "Girlfriend"
			Allow_SexScenes = 5
		elseif cfgqst.ProstitutionScenario == "ChainRape" 	
			Allow_SexScenes = 5
			cfgqst.DefeatTypeScenario = "ChainRape"
			
		elseif cfgqst.ProstitutionScenario == "Rodeo" 	
			Allow_SexScenes = 3
			cfgqst.DefeatTypeScenario = "Rodeo"	
			
	;	elseif cfgqst.ProstitutionScenario = "Random" 	
	;		Allow_SexScenes = 3
	;		i = 3		
		
		endif 
	
	;--- Guard Scenarios ---;
	elseif cfgqst.DefeatType == "Guards" 	
	
	;#GUARDS - DOUBLE!!!
	GetScenarioByWeight("OnlyGuardScenarios")
	
	;--- Standard Scenarios ---;
	else 
	GetScenarioByWeight("none")
	endif 	

	; --- GENERAL SCENARIO ALLOWANCE --- ;
	;true for all scenarios
	
	if Allow_SexScenes == 0
	Allow_SexScenes = GetSexScenes()
	endif 
	
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(General Allowance) "+Allow_SexScenes)
	Allow_FindSpot = true
	cfgqst.Allow_Whipping = true
	Allow_Aftermath = "Random"		;most scenarios are handled there directly
	cfgqst.Allow_EscapeGameAftermath = true
	cfgqst.Allow_EscapeDifficulty = "Random"

	if cfgqst.DefeatEntranceVia == "Prostitution"
		if Allow_SexScenes == 3
		Allow_Aftermath = "Captured"
		cfgqst.Allow_EscapeDifficulty = "Random"
		elseif Allow_SexScenes == 5
		Allow_Aftermath = "Escape"
		endif 
	endif 
	
	;--- Set Allowances for seleted Scenario ---;
	
	;DD	------------------------
	if cfgqst.DefeatTypeScenario == "DD"
	;we are equipped with DDs during Naked Defeat
	ResetAllowance()
	Allow_FindSpot = true
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(DD) "+Allow_SexScenes)
	storqst.IsPoseScenario = false
	Allow_Foreplay = true 
		if cfgqst.ModDDNG
		Allow_Creatures = true
		else
		Allow_Creatures = false
		endif 
	Allow_ForcedBathing = false
	cfgqst.Allow_Whipping = true
	Allow_Aftermath = "Random"
	cfgqst.Allow_EscapeGameAftermath = true
	
	
	;YOKE	------------------------
	elseif cfgqst.DefeatTypeScenario == "Yoke"
	TempScenarioMessage = "They come to you with a heavy yoke. [Scenario Yoke]"
	TempInfoMessage = "SCENARIO: Yoke"
	storqst.IsPoseScenario = true	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false ;check if creatures are possible for some
	
	;CUFFS	------------------------
	elseif cfgqst.DefeatTypeScenario == "Cuffs"
	storqst.IsPoseScenario = true
	SetScenarioCuffs()
	;Allow_Creatures = false ;check if creatures are possible for some (falmers, rieklings?)
	;----> for now we need to allow creatures here or we ll get no rapers too often!!
	
	;RODEO (whipping) ------------------------
	elseif cfgqst.DefeatTypeScenario == "Rodeo"	
	;	if (RapersACount > 1) && (cfgqst.DefeatWhipProb > 0)
		TempScenarioMessage = "They prepare a nasty looking whip...[Scenario Rodeo]"
		TempInfoMessage = "SCENARIO: Rodeo"
		Allow_ForcedBathing = true
		Allow_GoldenShower = true
		Allow_Foreplay = true	
		Allow_Creatures = false ;check if creatures are possible for some
	;	else ;fall back scenario cuffs
	;	SetScenarioCuffs()	
	;	endif
		
	;MASTURBATION (whipping) ------------------------			
	elseif cfgqst.DefeatTypeScenario == "Masturbation"
	;	if (RapersACount > 1) && (cfgqst.DefeatWhipProb > 0)
		TempScenarioMessage = "They force you to touch yourself! [Scenario Forced Masturbation]"
		TempInfoMessage = "SCENARIO: Forced Masturbation"
		
		Allow_ForcedBathing = true
		Allow_GoldenShower = true
		Allow_Foreplay = false
	;	else ;fall back scenario cuffs
	;	SetScenarioCuffs()
	;	endif
			
	;BUKKAKE ------------------------				
	elseif cfgqst.DefeatTypeScenario == "Bukkake"
	TempScenarioMessage = "Seems like you are about to receive a cum bath..."
	TempInfoMessage = "SCENARIO: Bukkake"
	Allow_Foreplay = false
	Allow_ForcedBathing = true
	Allow_GoldenShower = true
	Allow_Creatures = false ;check if creatures are possible for some (skelettons/draugr)
	
	;CHAINRAPE ----------------------	 ;#TODO no furniture
	elseif cfgqst.DefeatTypeScenario == "ChainRape"		
	TempScenarioMessage = "Prepare for a long hard chain fuck..."
	TempInfoMessage = "SCENARIO: Chain Rape (4-6 Scenes)" 

	
	Allow_ForcedBathing = true
	Allow_GoldenShower = true
	Allow_Foreplay = true
	Allow_SexScenes = Utility.RandomInt(4,6)
	Allow_Creatures = true
		
	;GIRLFRIEND --------------------------	
	elseif cfgqst.DefeatTypeScenario == "Girlfriend"
	TempScenarioMessage = "Bitch, you will pretent to love fucking us and we don't kill you. Deal?"
	TempInfoMessage = "SCENARIO: Girlfriend" 
	
	
	cfgqst.HarderDefeat = false
	Allow_Foreplay = true
	Allow_ForcedBathing = true
	Allow_Creatures = false
	
	;PILLORY ------------------------
	elseif cfgqst.DefeatTypeScenario == "Pillory"
	TempScenarioMessage = "They seem to build a Pillory."
	TempInfoMessage = "SCENARIO: Pillory" 
	storqst.IsPoseScenario = true
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;FURNITURE ------------------------
	elseif cfgqst.DefeatTypeScenario == "Furniture"
	TempScenarioMessage = "They just want to watch you struggle."
	TempInfoMessage = "SCENARIO: Furniture" 
	storqst.IsPoseScenario = false
	
	Allow_SexScenes = 0
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Hardest"
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;ARMBINDER ------------------------
	elseif cfgqst.DefeatTypeScenario == "Armbinder"
	TempScenarioMessage = "They force your arms into a tight armbinder."
	TempInfoMessage = "SCENARIO: Armbinder" 
	storqst.IsPoseScenario = true
	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false

	;XCROSS ------------------------
	elseif cfgqst.DefeatTypeScenario == "XCross"
	TempScenarioMessage = "They seem to build an X Cross"
	TempInfoMessage = "SCENARIO: XCross" 
	storqst.IsPoseScenario = true
	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;WHEEL ------------------------
	elseif cfgqst.DefeatTypeScenario == "Wheel"
	TempScenarioMessage = "They bring in a cartwheel..."
	TempInfoMessage = "SCENARIO: Wheel" 
	storqst.IsPoseScenario = true
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	;cfgqst.DefeatStateBindings ---> is set in PlayerPosing. lets see if this causes problems missing here
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;STOCKADE ------------------------
	elseif cfgqst.DefeatTypeScenario == "Stockade"
	TempScenarioMessage = "They bring in a strange device..."
	TempInfoMessage = "SCENARIO: Stockade" 
	storqst.IsPoseScenario = true
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false
	;cfgqst.DefeatStateBindings ---> is set in PlayerPosing. lets see if this causes problems missing here
	endif
	
;	if cfgqst.NymBeta && (cfgqst.DebugPunishmentType > 0)
;	Debug.Messagebox("DEBUG: Scenario selected: "+cfgqst.DefeatTypeScenario)	
;	endif

	;checks which scenario was the last one used and if its the same as the current one
	;if cfgqst.CheckLastDefeatScenario()
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CheckLastDefeatScenario(we change to cuffs)")
	;SetScenarioCuffs() ;fallback to Cuffs Scenario (for now)
	;endif
	
	;saves the current scenario as "last one used"
	if cfgqst.DefeatTypeScenario != "Cuffs"
	cfgqst.SaveLastDefeatScenario()
	endIf
	
	;ScenarioMessage
	ScreenMessage(TempScenarioMessage)
	InfoMessage(TempInfoMessage)
	
EndFunction

String TempScenarioMessage = "none"
String TempInfoMessage = "none"

Function SetScenarioCuffs()
;because it is used as FALLBACK
	
		TempScenarioMessage = "They bind your wrist and ankles tight. [Scenario Cuffs]"
		;ScreenMessage("They bind your wrist and ankles tight")
		InfoMessage("SCENARIO: Cuffs")	
		cfgqst.DefeatTypeScenario = "Cuffs"			
		cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
		Allow_Foreplay = true
		Allow_GoldenShower = true
		Allow_Creatures = false 

EndFunction

String PoseToPlay

;/
Function PlayPosesOnActors(String type, Bool restore)		

	if !cfgqst.PlayerRef.IsInFaction(SexLabAnimatingFaction)
	PlayPoseOnActor(cfgqst.PlayerRef, type, restore)
	endif
	if folqst.Actor_Follower01 && !folqst.Actor_Follower01.IsInFaction(SexLabAnimatingFaction)
	PlayPoseOnActor(folqst.Actor_Follower01, type, restore)
	endIf
	if folqst.Actor_Follower02 && !folqst.Actor_Follower02.IsInFaction(SexLabAnimatingFaction)
	PlayPoseOnActor(folqst.Actor_Follower02, type, restore)
	endif

EndFunction

Function PlayPosesOnFollowers(String type, Bool restore)		

	if folqst.Actor_Follower01 && !folqst.Actor_Follower01.IsInFaction(SexLabAnimatingFaction)
	PlayPoseOnActor(folqst.Actor_Follower01, type, restore)
	endIf
	if folqst.Actor_Follower02 && !folqst.Actor_Follower02.IsInFaction(SexLabAnimatingFaction)
	PlayPoseOnActor(folqst.Actor_Follower02, type, restore)
	endif

EndFunction
/;


;Function STA_CallSpanker()
;Event OnSTA_DoRandomNpcSpank(Float Timeout, Bool AllowNpcInFurniture, Float ResistLoss = -1.0)
;SendModevent("STA_DoRandomNpcSpank") 

   ; Int SpankStart = ModEvent.Create("STA_DoRandomNpcSpank")
   ; if (SpankStart)	
	;	ModEvent.PushFloat(SpankStart, 0.0)	
	;	ModEvent.PushBool(SpankStart, false)						
	;	ModEvent.PushFloat(SpankStart, 0.0)							
	;	ModEvent.Send(SpankStart)
   ; endIf
;EndFunction

Function STA_CallSpanker()

	if (cfgqst.DefeatTypeGeneral == "AreHumans")

		int SpankEvent = ModEvent.Create("STA_DoRandomNpcSpank")
		if (SpankEvent)
			ModEvent.PushFloat(SpankEvent, 1.0)
			ModEvent.PushBool(SpankEvent, true)
			ModEvent.PushFloat(SpankEvent, -0.1)
			ModEvent.Send(SpankEvent)
		EndIf
	endif 	
	
EndFunction


Function GetDDScenario()
	;Bool SetDDScenario = fale
	
	if (cfgqst.DefeatTypeGeneral != "AreAnimals") && (cfgqst.DefeatType != "Trolls") && (cfgqst.ShortPunishment == 0) && !cfgqst.RapeAgain && (!cfgqst.AbortAll)
	
		if cfgqst.ModDDNG && D100(cfgqst.DefeatDDChance) 
		
			if (cfgqst.DefeatTypeScenario == "None" || cfgqst.DefeatTypeScenario == "NoScenario" || cfgqst.DefeatTypeScenario == "")
			cfgqst.DefeatTypeScenario = "DD" 
			endif 
			
		endif 
	endif 

EndFunction 

Bool NeedCreaturesForSex = false

Bool NoActors_StartSlavery = false 

Bool DoForceImmobilize 

;/
Event 

	If cfgqst.IsNymrasGame() && cfgqst.DefeatViaSlavery ;#SS Bridge Improvement
	
		while DoForceImmobilize && cfgqst.ModEnabled
		
		if Game.IsMovementControlsEnabled() 
		;Debug.Messagebox(", please report to forum!")
		NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR Player can move! Immobilize now!")
		cfgqst.Immobilize(true)
		;DoForceImmobilize = false 
		endif 
		Utility.Wait(0.5)
		endwhile

	endif 

EndEvent 
/;

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX DEFEAT QUEST START XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

;Bool SlaveryLocBeta = false --- WHAT WAS THIS FOR?

Bool VehicleAlreadySetup = false

Static VehiclePlayerTest 


ObjectReference Afterlife_Table_Center 
ObjectReference Afterlife_Table_Front 
ObjectReference Afterlife_Table_Back

ObjectReference Afterlife_Stairs_Center 
ObjectReference Afterlife_Stairs_Right
ObjectReference Afterlife_Stairs_Left

Function Fragment_3()	;############ STAGE 10 ############			##Start1 ##START##
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 (NAKED DEFEAT ##START##)")

	Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 ::::::::::::::::::::::::: ##START## :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
	Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
	
	if storqst.IsLocalSlave() && Nym()
	ScreenMessage("Your sex slave duties are calling!")
	Message.ResetHelpMessage("Sneak")
	Utility.Wait(0.1)
	storqst.MSG_SexSlaveDutiesStart.ShowAsHelpMessage("Sneak", 4, 0, 1)
	;Utility.Wait(5.0)
	;cfgqst.Immobilize(false)
	;cfgqst.PlayerRef.StartSneaking()
	;Utility.Wait(0.1)
	;cfgqst.PlayerRef.StartSneaking()
	;cfgqst.Immobilize(true)
	Message.ResetHelpMessage("Empty")
	storqst.MSG_TutorialEmptyMSG.ShowAsHelpMessage("Empty", 1, 0, 1)
;	Message.ResetHelpMessage("SexSlaveDutiesStart")
;	storqst.MSG_SexSlaveDutiesStart.ShowAsHelpMessage("SexSlaveDutiesStart", 4, 0, 1)
;	Utility.Wait(5.0)
	endif 
;	Utility.Wait(5.0)
;	Message.ResetHelpMessage("EmptyMessage")
;	storqst.MSG_TutorialEmptyMSG.ShowAsHelpMessage("EmptyMessage", 1, 0, 1)

	storqst.IsBlockedAttack = false
	
	if Nym()
	IsHumanFucker = false  ;Let Sexlab Handle NIoverred 
				 ;= True 	;Defeat handles 
	endif 
	

	;/
	if cfgqst.IsNymrasGame() && cfgqst.DefeatViaSlavery
		
;	VehiclePlayerTest = game.GetFormFromFile(0x00000034, "Skyrim.esm") 
	VehiclePlayerTest = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(0x00000034, "Skyrim.esm") as Static, 1)
		if VehiclePlayerTest
		NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VEHICLE FOUND")
		else 
		NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VEHICLE NONE")
		endif
;	NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VEHICLE PLACEMENT FOR LOCATION")
	;VehiclePlayerTest = Alias_Vehicle.GetReference() 
					
			
	VehiclePlayerTest.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
	endif 
	/;
	
;	if cfgqst.IsNymrasGame()
;	SlaveryLocBeta = TRUE
;	else
;	SlaveryLocBeta = false 
;	endif	
	
	
	storqst.Defeat_ID += 1
	bool Test = false 
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	DEFEAT START	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;	
		DebugTrace("MODVERSION: "+cfgqst.NakedDefeat_ModVersion)
		DebugTrace("stage 10 #Start#: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)		
		DebugTrace("stage 10 #Start#: DefeatType: "+cfgqst.DefeatType)	
		DebugTrace("stage 10 #Start#: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
		if cfgqst.RapeAgain
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 #Start#: DefeatEntranceVia (RapeAgain): "+cfgqst.DefeatEntranceVia)
		else
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 #Start#: DefeatEntranceVia: "+cfgqst.DefeatEntranceVia)
		endif 
		DebugTrace("----------------------------------------------------------------------------------------------------------")
		DebugTrace("stage 10 #Start#: Defeat Location: "+defqst.GetCurrentLocationName())
		DebugTrace("stage 10 #Start#: DefeatStateBindings: "+cfgqst.DefeatStateBindings)
		DebugTrace("stage 10 #Start#: Chapter: "+cfgqst.DefeatStateChapter)
		if Nym()
		DebugTrace("stage 10 #Start#: DEBUG STATUS: Nym() "+Nym()+" DebugPunishmentType: "+cfgqst.DebugPunishmentType)
		
		DebugTrace("stage 10 #Start#: WaitTime Current "+storqst.WaitTimeTest/2+"seconds")
		endif 
		DebugTrace("----------------------------------------------------------------------------------------------------------")
		;cfgqst.ActionLog("DefeatVia:"+cfgqst.DefeatEntranceVia)
		
		;INITITAL STUFF >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
		if (!cfgqst.AbortAll)
		cfgqst.DefeatStatePlayer = "StartofDefeat"
		cfgqst.Immobilize(true)
		endif 
		
		;WAS NYM()!
		if cfgqst.DefeatTypeScenario == "Afterlife" && (!cfgqst.AbortAll)
		Vehicle("SetupForAfterlife")
		endif 

		if (!cfgqst.AbortAll)
		InitialMaintenance()
		InitialMaintenance_Followers()
		endif
		
		;/
		NymTrace("RapersACount: "+RapersACount)
		NymTrace("RapersBCount: "+RapersBCount)
		NymTrace("RapersCCount: "+RapersCCount)
		NymTrace("CreaturesACount: "+CreaturesACount)
		NymTrace("CreaturesBCount: "+CreaturesBCount)
		NymTrace("CreaturesCCount: "+CreaturesCCount)
		NymTrace("CreaturesDCount: "+CreaturesDCount)
		NymTrace("CreaturesECount: "+CreaturesECount)
		NymTrace("CreaturesFCount: "+CreaturesFCount)
		/;

		if Nym() && (cfgqst.DefeatTypeScenario != "AfterLife") && (cfgqst.DefeatTypeScenario != "FastTravel")
		;STA_CallSpanker()
		endif 
		
		if cfgqst.DefeatViaSlavery
			if folqst.Actor_Follower01
			folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -160.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -160.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;
			endif 
			if folqst.Actor_Follower02
			folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, 160.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), 160.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;
			endif  
		endif 
		
		cfgqst.Immobilize(true)
		cfgqst.AddVictimsToCalmFactions(true)
		
		
	;	if !cfgqst.RapeAgain && (cfgqst.DefeatTypeScenario != "Afterlife")
	;	PlayPoseOnActor(cfgqst.PlayerRef, "Reset", True)
	;	endif 	
			
		;if cfgqst.IsNymrasGame()
		;STA_CallSpanker()
		;endif 	
		
	;	if cfgqst.DefeatEntranceVia == "Ambush"
	;	NymTrace("Spawn Ambush")
	;	SpawnActorGroups("Ambush") ;TEST MOVED EARLIER
	;	endif 
			
		if cfgqst.CivilRapeRunning && !cfgqst.DefeatViaSlavery	;#crime ; need to check here so we account for late crimes committed right before defeat
		cfgqst.ProcessCrimeGold()		
		cfgqst.CheckCrimePunishment()	
		endif 				
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	ARRIVAL SCENE :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;	
		
		cfgqst.DefeatStateChapter = "Arrival Scene"
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 :::::: Arrival Scene ::::::")	
		
		; xxxxxxxxxxxxxxxxxxxxXXXX --- INITIAL #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
		
		if (cfgqst.DefeatEntranceVia == "Prostitution")
		PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)	
		PlayPoseOnActor(Victims[0], "Offering", false)
		PlayPoseOnActor(Victims[1], "Offering", false)
			
		;>--- for Slavery --->	 - we arrive at slave location and wait for processing 			
		elseif cfgqst.DefeatViaSlavery && (cfgqst.DefeatTypeScenario != "Afterlife") && !cfgqst.RapeAgain && (!cfgqst.AbortAll)		
		;VehiclePlayer = Alias_Vehicle.GetReference() 
	;	cfgqst.PlayerRef.MoveTo(VehiclePlayer, abMatchRotation = true)

		;if SlaveryLocBeta
		;do nothing
		;else
		;Vehicle("SetupForSlavery")	
		;endif 
		PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)			
		PlayPoseOnActor(Victims[0], "Wait", false)
		PlayPoseOnActor(Victims[1], "Wait", false)
	
		;>--- for Afterlife --->	; we wait for our fate in the afterlife 		
		elseif cfgqst.DefeatTypeScenario == "Afterlife"

		Vehicle("SetupForAfterlife")
	
		PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		PlayPoseOnActor(Victims[0], "Wait", false)
		PlayPoseOnActor(Victims[1], "Wait", false)
				
		NymTrace("cfgqst.DefeatViaSlavery = false")
		cfgqst.DefeatViaSlavery = false ;FIX THIS SHIT... needs to be adressed in configquest FIX WHAT?
		cfgqst.DefeatType = "Hell"
		cfgqst.DefeatTypeGeneral = "AreHumanoids"
		cfgqst.Dead = 0 
		Utility.Wait(2.0)
		storqst.WaitTimeTest+=4		
			if cfgqst.BlackFadeStatus == 1
			cfgqst.FadeToBlack(false)	
			endif 
			
		elseif cfgqst.RapeAgain
		;we should still play a Pose from before! 
		endIf

		;------------- WHY IS THIS REQUIRED???----------------------------------------------
		;improve this. we check Calm and Sort while looking for a spot better? 
		int waitloops = 0
		
		if cfgqst.DefeatTypeScenario == "none"
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 (Waiting Loop)")
		;if (cfgqst.DefeatTypeScenario != "Afterlife") && cfgqst.DefeatTypeScenario != "FastTravel" 
			while (cfgqst.DefeatTypeGeneral == "none") && (waitloops < 5) && (!cfgqst.AbortAll) && (cfgqst.ModEnabled)
			
		 
			Utility.Wait(1.0)
			storqst.WaitTimeTest+=2
			waitloops += 1
			EndWhile	
			
			if (waitloops == 5) && cfgqst.DefeatTypeGeneral == "none"
				cfgqst.DefeatType = "Funny"
				cfgqst.DefeatTypeGeneral = "AreFunny"	
			endif

		waitloops = 0
		endif 
		;---------------------------------------------------------------------------------------
		

		;>>>>>>>>>>>>>>>>>> #Sequence1 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	

		if (!cfgqst.AbortAll)
		GetMainSequence()	;#Seq1
		endif
		;>>>>>>>>>>>>>>>> SPECIAL POSE (not regular) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		; SET PLAYER - Initial - POSE if >>> NOT <<< Regular StartUp --- ;
				
		;>--- for FastTravel ---> 		
		if cfgqst.DefeatTypeScenario == "FastTravel" || (cfgqst.DefeatEntranceVia == "Prostitution")
		NymMessage("OfferingPose and Vehicle Setup for FastTravel") 
		Vehicle("setup")	
			
			;if cfgqst.IsNymrasGame()
			;STA_CallSpanker()
			;endif 	
				
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we wait for our travel partners? 
		PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)		
		PlayPoseOnActor(Victims[0], "Offering", false)
		PlayPoseOnActor(Victims[1], "Offering", false)
		 
		;>--- for Afterlife --->	
		elseif cfgqst.DefeatTypeScenario == "Afterlife"	
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we wait for our fate in the afterlife 
		PlayPoseOnActor(cfgqst.PlayerRef, "Wait", true)		
		PlayPoseOnActor(Victims[0], "Wait", false)
		PlayPoseOnActor(Victims[1], "Wait", false)

		;Vehicle("SetupForAfterlife") MOVE EARLIER 
		
			;if cfgqst.BlackFadeStatus == 1
			;cfgqst.FadeToBlack(false)	
			;endif 
		
		;>--- for RapeAgain --->
		elseif cfgqst.RapeAgain
		;no pose because we still in furniture or posing anyway		
		endif
		
		;---------------------------------------------------------------------------------------------
			
		;>>>>>>>>>> CALM & COUNT ACTORS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;Make this a modevent that plays during the setup scene? Scenario should already be set, no?
		SendModEvent("Moan")
		if (!cfgqst.AbortAll)
		Calm(true, 1)	
		endif
		
		
		if AllRapersTooFarAway
		AllRapersTooFarAway = false 
		ScreenMessage("No Rapers in Range, temporarily increasing Search Radius")
		IncreasedDistance = 8000
		else 
		IncreasedDistance = 0
		endif 
		
		if cfgqst.DefeatWhipProb > 0 && Nym()
		storqst.StartWhipping_00(8)
		endif 
		
		;>>>>>>>>>> Check if we Abort A >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #Abort
		;!!! IMPORTANT !!! WE only check actors abort in Non-Spawn Scenarios (so not for FastTravel, Afterlife
		
		NeedCreaturesForSex = false
		
		if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "FastTravel") || (cfgqst.DefeatEntranceVia == "Ambush")
		;dont care, we spawn our stuff anyway 
				
		elseif cfgqst.DefeatViaSlavery 	
		NymTrace("Check for Rapers for Slavery: RapersMale = "+RapersMale+" RapersFemale = "+RapersFemale)
		;if there are no rapers at the target location we need to spawn some.
			if (RapersMale == 0) ;&& !cfgqst.FemalesAllowed 
			NeedRapersForSlavery = true 
			endif 
			if (RapersCreatures == 0) && cfgqst.NymSpawning
			NeedCreaturesForSlavery = true
			endif 
				
		;Human Defeat, can be nobody left -> abort  		
		elseif cfgqst.DefeatTypeGeneral == "AreHumans" 
	
			if (RapersMale == 0) && !cfgqst.FemalesAllowed 
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsAbort(RapersMale == 0)")	
		
				if RapersCreatures == 0
				ScreenMessage("No male rapers around. You are lucky!")			
				NoActorsAbort = true 
				else 
				ScreenMessage("No male rapers around. Creatures will take care of you.")
				NoActorsAbort = false 
				endif 
				
			elseif (RapersMale == 0) && (RapersFemale == 0)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsAbort(RapersMale&Female == 0)")
			
				if RapersCreatures == 0
				ScreenMessage("No humans around to fuck you. You are lucky!")		
				NoActorsAbort = true 
				else 
				ScreenMessage("No humans around to fuck you. But Creatures will take care of you.")
				NoActorsAbort = false 
				endif 
			endif 
			
			if !NoActorsAbort && (RapersCreatures == 0) && cfgqst.NymSpawning
			NeedCreaturesForSex = true
			endif 
					
		;Creature/Animal  Defeat, if nobody left -> abort 	
		elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids") || (cfgqst.DefeatTypeGeneral == "AreAnimals") 
		
			if (RapersCreatures == 0)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsAbort(RapersCreatures == 0)")
			ScreenMessage("No creatures nearby to fuck you. You are lucky!")
			NoActorsAbort = true
			endif
		
		else ;FUNNY; NONE; 
					
			NoActorsAbort = true			
			if NoActorsAbort && cfgqst.FemalesAllowed && RapersFemale > 0  
			NoActorsAbort = false
			endif 
			
			if NoActorsAbort && RapersMale > 0
			NoActorsAbort = false
			endif 
			
			if NoActorsAbort && cfgqst.AllowCreatures && RapersCreatures > 0
			NoActorsAbort = false
			endif 

		endif 
		;------------------------------------------------------------------------------------------------------

		;>>>>>>>>>> SORT & SPAWN ACTORS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		if !NoActorsAbort && (!cfgqst.AbortAll)
		SortActors() 	;#sortActors1
		
		SendModEvent("StartRaperExpressions")
		endif
		
		;>>>>>>>>>> Check if we Abort B >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;!!! IMPORTANT !!! WE only check actors abort in Non-Spawn Scenarios (so not for FastTravel, Afterlife and technically also not slavery (work on that!!!)
		
		if (cfgqst.DefeatTypeScenario != "FastTravel") && (cfgqst.DefeatTypeScenario != "Afterlife")
			If (RapersACount == 0) && (RapersBCount == 0) && (RapersCCount == 0) && (CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0) && ((CreaturesDCount == 0) && (CreaturesECount == 0) && (CreaturesFCount == 0))
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT No Humans or Creatures found!")
			NoActorsAbort = true
			elseif (cfgqst.DefeatTypeGeneral == "AreHumans") && ((RapersACount == 0) && (RapersBCount == 0) && (RapersCCount == 0))
			NoActorsAbort = true
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT - AreHumans but no Humans found")
					if ((CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0)) && ((CreaturesDCount == 0) && (CreaturesECount == 0) && (CreaturesFCount == 0))
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT - AreHumans but no Humans and No Creatures available")
					NoActorsAbort = true
					else 
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT - AreHumans > no Humans but there are Creatures available")
					(cfgqst.DefeatTypeGeneral == "AreCreatures")
						if cfgqst.DefeatTypeScenario == "DD"
						;do NOTHING
						else 
						cfgqst.DefeatTypeScenario == "none"
						Allow_Foreplay = false 
						Allow_GoldenShower = false 
						endif
					NoActorsAbort = false
					endif 
			
			elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids") && ((CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0)) && ((CreaturesDCount == 0) && (CreaturesECount == 0) && (CreaturesFCount == 0))
			NoActorsAbort = true
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT - AreHumanoids but no Creatures found")
			elseif (cfgqst.DefeatTypeGeneral == "AreAnimals") && ((CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0)) && ((CreaturesDCount == 0) && (CreaturesECount == 0) && (CreaturesFCount == 0))
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ABORT - AreAnimals but no Creatures found")
			NoActorsAbort = true
			endif 
		;endif 
		
			if NoActorsAbort && cfgqst.DefeatViaSlavery
			;need spawn rapers for Slavery  ;NymSpawning ????
			endif 
			
			if NoActorsAbort	
			;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsAbort")
			;Debug.Messagebox("No Actors around to fuck you --> Aborting!") 
			cfgqst.AbortAll = true
			ResetAllowance()
			endif 
			
		;---------------------------------------------------------------------------------------------
		
	
		;if cfgqst.IsNymrasGame()	;CAN GET STUCK - DANGEROUS: also does not seem to work. maybe use SpankThatAssBridge/Mod
		;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartCallMolesters Event Sent")
		;SendModEvent("StartCallMolesters")
		;endif
		
			if Game.IsMovementControlsEnabled() && (!cfgqst.AbortAll)
			;Debug.Messagebox(", please report to forum!")
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR Player can move! Immobilize now!")
			cfgqst.Immobilize(true)
			endif
			
		;only PUBLIC PUNISHMENT: disable DefeatTypeGuards (thats only for DEFEAT) ;DO WE NEED THIS STILL????
			if cfgqst.CivilRapeRunning && (cfgqst.DefeatType == "Guards") && (!cfgqst.AbortAll)

				;check is too late?	
				;This is only for starters. Later we can track the total crime gold and change the punishment based on that value.
				if !cfgqst.DefeatViaSlavery && !storqst.IsLocalSlave()
				cfgqst.CheckCrimePunishment()
				endif 
			
				cfgqst.PlayerSheatheWeapon()
				;while cfgqst.PlayerRef.IsWeaponDrawn() && (cfgqst.ModEnabled)	;WhileFix 
				;	cfgqst.PlayerRef.SheatheWeapon() 
				;	Utility.Wait(0.5)
				;endWhile

			endif		

			;WIP --- No actors ---> start ambush/slavery			
		;	if NoActorsAbort && cfgqst.IsNymrasGame()
		;	
		;		if (RapersMale == 0) && (RapersFemale > 0)
		;		NoActors_StartSlavery = true 
		;		endif 
		;
		;	endif 
		
			
			if OnlyAnimals ;#abort 
				AbortDefeat()
				cfgqst.AbortAll = true
				ResetAllowance()
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: skipping because no humans and creatures not allowed")	
			endif	
			
			
		endif 
	
		;>>>>>>>>>>>>>>>>>> Water Check >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
		;maybe we should teleport the PC out of the water. Maybe towards the RapersA/CreaturesA?. in general water defeat not ideal.
		;maybe we prevent the scenario from happening while in water alltogether?		
			
		if cfgqst.PlayerRef.IsSwimming() && (!cfgqst.AbortAll)
			cfgqst.Immobilize(false)	
			ScreenMessage("You lost the fight, get out of the water you coward!")
			While cfgqst.PlayerRef.IsSwimming() && cfgqst.ModEnabled ;whileFix 
			Utility.Wait(1.0)
			storqst.WaitTimeTest+=2
			EndWhile
		endif	
	

		cfgqst.Immobilize(true)

		if Nym() && (!cfgqst.AbortAll)
	;	NymTrace("CallSpanker")
	;	STA_CallSpanker()
		endif 		
		
		if cfgqst.HeelsFix
		;GENERAL DISBALE 
		cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, 114575)
			if folqst.IsWithUs_Follower(0)
			cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[0], 114575)
			endif 
			if folqst.IsWithUs_Follower(1)
			cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[1], 114575)
			endif
		endif 
		
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	FIND SPOT	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 :::::::::::: Find Spot ::::::::::::")
	
		cfgqst.Crawl(cfgqst.PlayerRef, true)	;REMOVE DownedFaction
		
		cfgqst.DefeatStateChapter = "Find Spot"
		
		if Allow_FindSpot && !cfgqst.RapeAgain && (!cfgqst.AbortAll)
		cfgqst.PlayerSheatheWeapon()
		cfgqst.StripWeapons()
		
		cfgqst.SlowDownPlayer("Start", false)
		storqst.PlayerPosingVehicle(false)
		if (!cfgqst.AbortAll)
		Utility.Wait(1.0)
		endif 
		storqst.WaitTimeTest+=2
		cfgqst.Immobilize(false)
		Utility.Wait(0.1)
		cfgqst.ImmobilizeCrawl(true)
		
		cfgqst.FadeToBlack(false)

		if (!cfgqst.AbortAll)
		FindSpot()							;#FindSpot1 #spot1
		endif 
		cfgqst.ImmobilizeCrawl(false)
		if Nym()
		Vehicle("Setup Early")
		endif
		
		Utility.Wait(0.1)
		cfgqst.Immobilize(true)
		cfgqst.SlowDownPlayer("End", false)
		endif
			
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	STARTING SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 :::::::::::: Starting Scene ::::::::::::")
		cfgqst.DefeatStateChapter = "Starting Scene"

		; xxxxxxxxxxxxxxxxxxxxXXXX --- STARTING #POSE ----- XXXXxxxxxxxxxxxxxxxxxxxx 
		;  ---> Slavery/RapeAgain ---> we wait for our fate as slaves or when raped again
		if (cfgqst.DefeatViaSlavery || cfgqst.RapeAgain) && !cfgqst.AbortAll
		PlayPoseOnActor(cfgqst.PlayerRef, "wait", false)		
		PlayPoseOnActor(Victims[0], "wait", false)
		PlayPoseOnActor(Victims[1], "wait", false)
		; ---> Defeat ---> we have found our spot and surrender ourselves, raising hands
		elseif (!cfgqst.AbortAll)
		PlayPoseOnActor(cfgqst.PlayerRef, "surrender", false)		
		PlayPoseOnActor(Victims[0], "surrender", false)
		PlayPoseOnActor(Victims[1],"surrender", false)
		endIf
		
		if (!cfgqst.AbortAll) && ((cfgqst.ShortPunishment < 2) || (cfgqst.ShortPunishment > 3))
		Utility.Wait(4.0)
		storqst.WaitTimeTest+=8
		endif 
		
		SendModEvent("Moan")
		
		;............ooooooooooooooooOOOOOOOOOOOOO	FADE TO BLACK TRUE OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
		cfgqst.FadeToBlack(true) 									
		;oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
	
		cfgqst.ToggleFaceLight()
			
		;Remove Early Whippers again
		if VoyeursA[0] 
		VoyeursA[0].RemoveFromFaction(WhippingFaction)
		endif 
		if VoyeursA[1] 
		VoyeursA[1].RemoveFromFaction(WhippingFaction)
		endif 
		if VoyeursA[2] 
		VoyeursA[2].RemoveFromFaction(WhippingFaction)
		endif 
		if VoyeursA[3] 
		VoyeursA[3].RemoveFromFaction(WhippingFaction)
		endif 

	;if  && (cfgqst.DefeatTypeScenario != "Afterlife") && !cfgqst.DefeatViaSlavery
		
		if (!cfgqst.AbortAll)
		Vehicle("setup") 			;<<<<<----- THIS NEEDS TO HAPPEN if no earlier vehicle setup. Other conditions dont matter!!!
		endif
		
		cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, false) ;???????
	;	if (!cfgqst.AbortAll) && cfgqst.NymBeta
	;	SendModEvent("StartVoyeurs")
	;	endif 
				
		;Pay Fine / Pay Crime Gold 
		if (cfgqst.DefeatType == "Guards") && (!cfgqst.AbortAll)
		PayCrimeGold()	
		endif 
		
		;>>>>>>>>>>>>>>>>>> Follower Stripping and Positioning >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>			
		
		if (VictimCount > 0) && (!cfgqst.AbortAll)
			if Victims[0];Victims0	
			StripFollower(0)	
			folidle01.StartDoingNothing_01(true)	
			Vehicle_Follower_01("setup")				
			endif		
			if Victims[1];Victims1
			StripFollower(1)		
			folidle01.StartDoingNothing_02(true)
			Vehicle_Follower_02("setup")				
			endif				
			if Victims[2];Victims2
			StripFollower(2)
			folidle01.StartDoingNothing_03(true)
			endif
			if Victims[3];Victims3
			StripFollower(3)
			folidle01.StartDoingNothing_04(true)
			endif
		endif
		
		FollowersOnSpot = true
			

		
		;>>>>>>>>>>>>>>>>>> Stripping (instant) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;#stripping1	
		
		;DD Move earlier
		
		int StrippingScene = 0
		
		if !cfgqst.AbortAll	
		
		;	if Nym() && ((cfgqst.DefeatTypeGeneral == "AreHumans") || (cfgqst.DefeatTypeGeneral == "AreHumanoids"))
		
			;	if (cfgqst.ShortPunishment == 0) && (CountWornSlots() > 2) && (cfgqst.DefeatTypeGeneral == "AreHumans")
		
				if (cfgqst.ShortPunishment == 0) && D100(cfgqst.DefeatWhipProb) && (CountWornSlots() > 2) && (cfgqst.DefeatTypeGeneral == "AreHumans") ;|| (cfgqst.DefeatTypeGeneral == "AreHumanoids")) <<<- later
				NymTrace("Stripping > Stripping Scene")
				ScreenMessage("They whip your clothes off your body")
				StrippingScene = 1 ;whip Strip
				else  
			
					if cfgqst.NymStripping
					cfgqst.Strip(52, cfgqst.PlayerRef)	;Bikini Bottom
					endif 
					
					if cfgqst.NymStripping && D100(95)
									
						if cfgqst.BlackFadeStatus == 0
						cfgqst.FadeToBlack(true)
						endif
						
						if D100(50)
						NymTrace("Stripping > StripPlayer()")
						StripPlayer() ;strip main slots and some other
						elseif storqst.IsLocalSlave()
						NymTrace("Stripping > PlayerStripCompletely(37,45,0,0,0)")
						cfgqst.PlayerStripCompletely(37,45,0,0,0) ;ignore boots (37), ignore collar (45)
						
						elseif Nym()
						NymTrace("Stripping > PlayerStripCompletely(37,0,0,0,0)")
						cfgqst.PlayerStripCompletely(37,0,0,0,0)
						else	
						NymTrace("Stripping > PlayerStripCompletely(0,0,0,0,0)")					
						cfgqst.PlayerStripCompletely(0,0,0,0,0) ;completely naked
						endif
					endif
				endif 
	
		cfgqst.GroupStripMaintenance()	
		endif 
		
		if cfgqst.NymBeta	;PLUGS 
		defqst.RemoveBrutalPlugs()
		endif 
		
		;>>>>>>>>>>>>>>>>>> HairStyleChange (instant) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;#hair			
	
		if (StrippingScene == 0) && !cfgqst.AbortAll && ((cfgqst.ShortPunishment < 2) || (cfgqst.ShortPunishment > 3))
			if D100(cfgqst.BondageHaircutProb) && !HairChangedOnce 	
				if cfgqst.BlackFadeStatus == 0
				cfgqst.FadeToBlack(true)
				endif	
				HairChangedOnce = true
				cfgqst.ChangeHairStyle()
			endif
		endif 

		;>>>>>>>>>>>>>>>>>> GetScenario >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
					
		;Enfore Scenario Selection (Special Sequence)			;MOVE ALL CONDITIONS INTO THE GET DEFEAT SCENARIO FUNCTION 		
		if (cfgqst.DefeatEntranceVia == "Prostitution") || (cfgqst.DebugPunishmentType > 0)	
		
			if cfgqst.DebugPunishmentType > 0
			Debug.Messagebox("cfgqst.DebugPunishmentType: "+cfgqst.DebugPunishmentType)
			endif 
		
		GetDefeatScenario()	;always gets scenario, work on DDs later
		
		elseif (cfgqst.DefeatType == "Guards") && (Allow_SexScenes > 0) && !cfgqst.SkipSex && (!cfgqst.AbortAll)
		;Guards always use binds. That is what we want to achieve here.	
			
			if (cfgqst.DefeatDDChance > 0) && D100(50)
			GetDDScenario()			;;50% chance for DDs 
			else
			GetDefeatScenario()		
			endif 
		
		;Regular Sequence - Scenario Chance%
		elseif (cfgqst.ShortPunishment == 0) && !cfgqst.RapeAgain && (cfgqst.DefeatTypeGeneral == "AreHumans") && (cfgqst.DefeatTypeScenario == "none") && (Allow_SexScenes > 0) && !cfgqst.SkipSex && (!cfgqst.AbortAll)	
		;not if short punishment	
	
			if CheckHumanGroupsAvailable() 		;CHANGE WHEN WE LATER HAVE MORE SCENARIOS WITH CREATURES 
			
				if D100(cfgqst.ScenarioChance) 
				GetDefeatScenario()	
				endif  

			endif 
		endif
		
		;#IMPROVE/CHECK 
		GetDDScenario()	;all exclusions handled internally (no animals, no certain conditions, no trolls, etc.) - if Guards equip DDs, this just wont do much since it only starts when there is no scenario set.
		
		if (!cfgqst.AbortAll)
		GetMainSequenceLastSteps()		;for now skip sex fix
		endif 
		
		if (cfgqst.DefeatTypeGeneral == "AreHumans") && (cfgqst.ShortPunishment == 0)
		AggressorsReDressed = false
		StripAllAggressors()
		endif 
		
		;when RAPE AGAIN we change some scenarios
		if cfgqst.RapeAgain && (cfgqst.DefeatTypeScenario == ("Furniture")) && (!cfgqst.AbortAll)
		cfgqst.DefeatTypeScenario = "none"
		Allow_SexScenes = GetSexScenes()
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexScenes(RapeAgain B) "+Allow_SexScenes)
		Allow_Aftermath = "capture"
		cfgqst.Allow_EscapeDifficulty = "Random"
		endif
		
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
		;-------------------------------------------------------------------------------------
		
		;>>>>>>>>>>>>>>>>>> ADD DEFEAT BINDS/COLLAR >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
		;WIP---> animated equip with enemy?
		
		if ((cfgqst.ShortPunishment < 2) || (cfgqst.ShortPunishment > 3))
		
			if (!cfgqst.AbortAll)
					;	else 
				if Allow_AddCollar
				cfgqst.AddDefeatCollar("Random")	
				endif 
				Utility.Wait(1.0)
				storqst.WaitTimeTest+=2
				AddDefeatBinds()	;player is bound with cuffs/yoke/etc.
			;	endif 
			endif 	
			
			if (VictimCount > 0) && !cfgqst.RapeAgain && (!cfgqst.AbortAll);&& BindsEquiped
			;RAPEAGAIN - we still have binds? 
				if Victims[0]	
				AddDefeatBindsToActor(Victims[0], "add")
				StripFollower(0)
				endif				
				if Victims[1]
				AddDefeatBindsToActor(Victims[1], "add")
				StripFollower(1)
				endif					
				if Victims[2]
				AddDefeatBindsToActor(Victims[2], "add")
				StripFollower(2)
				endif					
				if Victims[3]
				AddDefeatBindsToActor(Victims[3], "add")
				StripFollower(3)
				endif
			FollowersAreBound = true
			endif
			;endif 	
			
			if cfgqst.DefeatTypeScenario == "Execution" && (!cfgqst.AbortAll)	;EXECUTION EARLY ROBBERY
					if cfgqst.DefeatRobberyProb > 0
					StartPlayerRobbed()
					endif
			endif 
		endif 
		
		if (!cfgqst.AbortAll)
		; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we are bound or otherwise unhappy and start to struggle 		
		PlayPoseOnActor(cfgqst.PlayerRef, "struggle", false)		
		PlayPoseOnActor(Victims[0], "struggle", false)
		PlayPoseOnActor(Victims[1],"struggle", false)
		Utility.Wait(1.0)
		storqst.WaitTimeTest+=2
		
		;OOOOOOOOOOOOOoooooooooooooooo............	FADE BLACK OFF 01 ...............................................................................................
		cfgqst.FadeToBlack(false) 
		;.............................................................................................................................................................
		
		Utility.Wait(3.0)
		storqst.WaitTimeTest+=6
		endif 
		
		if cfgqst.RapeAgain 
		Debug.trace("NAKED DEFEAT calmquest RapeAgain: LastAddedDevice")
		cfgqst.LastAddedDevice.DisableNoWait()
		cfgqst.LastAddedDevice.Delete()
		cfgqst.LastAddedDevice = None
		endif
		
		if (!cfgqst.AbortAll)
		Utility.Wait(1.0)
		storqst.WaitTimeTest+=2
		endif
		
		Sexlab.ThreadSlots.StopAll()		
		SolosRunning = 0
		if (!cfgqst.AbortAll)
		Utility.Wait(1.0)	
		storqst.WaitTimeTest+=2
		endif 
		
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	STRIPPING SCENE (New)	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
		if StrippingScene == 1
		
		WhipStripScene()
		
		elseif StrippingScene == 2
		
		StartGropeStripFast("Humans", none, none, none)
		
		
		
		endif
		

		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	BATHING SCENE || GOLDEN SHOWER SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 :::::: Bathing Scene ::::::")
		cfgqst.DefeatStateChapter = "Bathing Scene"	
		
		;MAKE MOD EVENT for Golden Shower
		
		if Allow_ForcedBathing && (!cfgqst.AbortAll)	 
		SceneForcedBathing("ForcedBathing")	
		elseif Allow_GoldenShower && (!cfgqst.AbortAll)
		SceneForcedBathing("GoldenShower")
		endif
		 
		;wait for Scene to finish
		while (Peeing || IsBathing) && cfgqst.ModEnabled && (!cfgqst.AbortAll) ;while fix
			if (!cfgqst.AbortAll)
			Utility.Wait(3.0)	
			endif
		EndWhile
		
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	SEX SCENES	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		cfgqst.DefeatStateChapter = "Sex Start"		
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: stage 10 :::::: Sex Scenes ::::::")		
		
		;for slavery we check if there are humans present, 
		if cfgqst.DefeatViaSlavery && ((cfgqst.DefeatTypeGeneral == "AreHumans") && !CheckRaperGroups()) && (!cfgqst.AbortAll) ; || !CheckCreatureGroups())
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsRestartSlavery ##RESTART##")
		Debug.Messagebox("Naked Defeat #ERROR Code 5500 - report to forum plz") 
		
		SetStage(1000)
			
		;checks if ANY rapers are valid
		elseif (CheckRaperGroups() || CheckCreatureGroups()) && (!cfgqst.AbortAll)

			if Allow_SexScenes == 0
	;		ScreenMessage("No fucking right now.")
			SetStage(14)
			elseif Allow_SexScenes > 0	;allow Sex to Start
			FuckingRound = 1
			StartRapeSequence(10)
			endif
		
		else	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NoActorsAbort (B)")
		NoActorsAbort = true 
		SetStage(1000)		;no rapers nearby
		endif
	;endif 

		;::::::::::::::::::::::	STAGE 10 END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
	
EndFunction	


Bool Function CheckHumanGroupsAvailable()
		;this is as long as scenarios do not include creatures
		;we might be forced to sort between HUMAN and MIXED scenarios 
		if (Victimcount == 0) && HumanGroupsAvailable > 0
		return true 
		elseif (Victimcount == 1) && HumanGroupsAvailable > 1
		return true 
		elseif (Victimcount == 2) && HumanGroupsAvailable > 2
		return true 
		elseif (Victimcount == 3) && HumanGroupsAvailable > 3
		return true
		else
		return false
		endif 
EndFunction 

Function Fragment_13()          ;############ STAGE 600 ############	
;skip
Debug.Messagebox("NAKED DEFEAT #ERROR: Stage 600, write me on loverslab.")
Debug.Notification("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ERROR Stage 600, contact support :-(")
;DEAD END

EndFunction

Function StripPlayer()
NymTrace("StripPlayer()")
				;slot 53 (arm cuffs) slot 59 (leg cuffs) are NOT to be stripped --> SexlabNoStrip Keyword should solve this
				;slot 52 (fuck belt) also dont use
				if !Nym()
				cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
				endif 
				cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
				cfgqst.Strip(32, cfgqst.PlayerRef)	;body 
				
				cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
				cfgqst.Strip(53, cfgqst.PlayerRef)	;steel thigh armor	-> dont use (why not?)	--> SexlabNoStrip Keyword should solve this
				cfgqst.Strip(35, cfgqst.PlayerRef)	;amulett
				cfgqst.Strip(42, cfgqst.PlayerRef)	;circlet	
				cfgqst.Strip(46, cfgqst.PlayerRef)	;harness
				cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom	-> dont use (why not?) --> SexlabNoStrip Keyword should solve this
				cfgqst.Strip(49, cfgqst.PlayerRef)	;savage bikini thong
				
				;GroupStripMaintenance()
				
EndFunction
			
	Bool CalmRunning = False
			
Function CalmActor(actor ActorToCalm)			

NymTrace("CalmActor() OLD")

ActorToCalm.StopCombat()		
ActorToCalm.StopCombatAlarm()	

;main DefeatFaction (for debug, maybe not necessary)
if !ActorToCalm.IsInFaction(DefeatFaction)
ActorToCalm.AddToFaction(DefeatFaction)
endif

;backup calmfaction (test)
if !ActorToCalm.IsInFaction(CalmFaction)
ActorToCalm.AddToFaction(CalmFaction)
endif

if !ActorToCalm.IsInFaction(AllegianceFaction)
ActorToCalm.AddToFaction(AllegianceFaction)
endif

;Followers cant be whippers for now, but maybe add an option THAT they can be (MCM Followers join rapers)

if ActorToCalm.IsAlerted()
ActorToCalm.SetAlert(False)
endif

;cant hurt doing it twice (maybe it can)
;ActorToCalm.StopCombat()		
;ActorToCalm.StopCombatAlarm()	
;---------------------
EndFunction					


Function CalmSpawnedActor(actor ActorToCalm)			
NymTrace("CalmSpawnedActor: "+ActorToCalm)

if Nym()
;ActorToCalm.ModAv("Health", 1000000)
;NymTrace("ActorToCalm.ModAv(Health, 1000000)")
;NymTrace("ActorToCalm.Health = "+ActorToCalm.GetAV("Health"))
endif 
	
	if ActorToCalm
	SPE_Actor.SetActorCalmed(ActorToCalm, true)

	ActorToCalm.EvaluatePackage()

	ActorToCalm.StopCombat()		
	ActorToCalm.StopCombatAlarm()	

	ActorToCalm.RemoveFromAllFactions()
	ActorToCalm.AddToFaction(CalmFaction)
	ActorToCalm.AddToFaction(AllegianceFaction)
	ActorToCalm.AddToFaction(DefeatFaction)
	ActorToCalm.AddToFaction(NakedGhostFaction)


	ActorToCalm.RemoveAllItems(none, false, true) ;STRIP ALL DAMNIT

	;NymTrace("ActorAggressionA: "+ActorToCalm.GetActorValue("Aggression"))
	;ActorToCalm.ModAv("Aggression", -2)
	;NymTrace("ActorAggressionB: "+ActorToCalm.GetActorValue("Aggression"))

	if ActorToCalm.IsAlerted()
	ActorToCalm.SetAlert(False)
	endif

	ActorToCalm.StopCombat()		
	ActorToCalm.StopCombatAlarm()	
	else 
	NymTrace("CalmSpawnedActor: #ERROR 5009 - No ACtor to calm?!")
	endif 

;cant hurt doing it twice (maybe it can)
;ActorToCalm.StopCombat()		
;ActorToCalm.StopCombatAlarm()	
;---------------------
EndFunction		

;/
anger 0
fear 1
happy 2
sad 3
surprise 4
puzzled 5
disgust 6
neutral 7
/;

Bool RaperExpressionsPlaying = false

Function PlayRaperExpressions()	;#OnStartRaperExpressions
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayRaperExpressions()")
	
		NymTrace("SexScene C: "+cfgqst.SexScene)
	
		Bool Play = cfgqst.SexScene
		;if Sex Scene gets "false" the expressions are reset
		;we start this function ONCE when Sex Scene ends to stop expressions again
		
		;improve the Selection for ACTIVE rapers only (make Groups for VictimRapers?)
		if Nym()
				
			NymTrace("RaperExpressionsPlaying: "+RaperExpressionsPlaying)
			
			if !RaperExpressionsPlaying
			RaperExpressionsPlaying = true 
			
				NymTrace("PlayRaperExpressions:"+Play)
				
				;Run Expressions on the PlayerRaperGroup
				if RaperCount > 0
				NymTrace("PlayRaperExpressions A")
					if Rapers[0] 
					NymTrace("PlayRaperExpressions B")
						SetExpressionOnActor(Rapers[0], Play)
					endif
					if RaperCount > 1 && Rapers[1]
						SetExpressionOnActor(Rapers[1], Play)
					endif
					if RaperCount > 2 && Rapers[2]
						SetExpressionOnActor(Rapers[2], Play)
					endif
					if RaperCount > 3 && Rapers[3]
						SetExpressionOnActor(Rapers[3], Play)
					endif
				endif
				
				;MOANS
				 
				 if RaperCount > 0
					if Rapers[0] 
						SetExpressionOnActor(Rapers[0], Play)
					endif
					if RaperCount > 1 && Rapers[1]
						SetExpressionOnActor(Rapers[1], Play)
					endif
					if RaperCount > 2 && Rapers[2]
						SetExpressionOnActor(Rapers[2], Play)
					endif
					if RaperCount > 3 && Rapers[3]
						SetExpressionOnActor(Rapers[3], Play)
					endif
				endif
				
			RaperExpressionsPlaying	= false
			else 
			NymTrace("RaperExpressionsPlaying: ALREADY PLAYING ABORT")
			endif
		endif 

			;/
			if RapersACount > 0
				if RapersA[0] && RapersA[0].Is3DLoaded() && !RapersA[0].IsDead()
					SetExpressionOnActor(RapersA[0], Play)
				endif
				if RapersACount > 1 && RapersA[1] && RapersA[1].Is3DLoaded() && !RapersA[1].IsDead()
					SetExpressionOnActor(RapersA[1], Play)
				endif
				if RapersACount > 2 && RapersA[2] && RapersA[2].Is3DLoaded() && !RapersA[2].IsDead()
					SetExpressionOnActor(RapersA[2], Play)
				endif
				if RapersACount > 3 && RapersA[3] && RapersA[3].Is3DLoaded() && !RapersA[3].IsDead()
					SetExpressionOnActor(RapersA[3], Play)
				endif
			endif

			if RapersBCount > 0
				if RapersBCount > 0 && RapersB[0] && RapersB[0].Is3DLoaded() && !RapersB[0].IsDead()
					SetExpressionOnActor(RapersB[0], Play)
				endif
				if RapersBCount > 1 && RapersB[1] && RapersB[1].Is3DLoaded() && !RapersB[1].IsDead()
					SetExpressionOnActor(RapersB[1], Play)
				endif
				if RapersBCount > 2 && RapersB[2] && RapersB[2].Is3DLoaded() && !RapersB[2].IsDead()
					SetExpressionOnActor(RapersB[2], Play)
				endif
				if RapersBCount > 3 && RapersB[3] && RapersB[3].Is3DLoaded() && !RapersB[3].IsDead()
					SetExpressionOnActor(RapersB[3], Play)
				endif
			endif

			if RapersCCount > 0
				if RapersCCount > 0 && RapersC[0] && RapersC[0].Is3DLoaded() && !RapersC[0].IsDead()
					SetExpressionOnActor(RapersC[0], Play)
				endif
				if RapersCCount > 1 && RapersC[1] && RapersC[1].Is3DLoaded() && !RapersC[1].IsDead()
					SetExpressionOnActor(RapersC[1], Play)
				endif
				if RapersCCount > 2 && RapersC[2] && RapersC[2].Is3DLoaded() && !RapersC[2].IsDead()
					SetExpressionOnActor(RapersC[2], Play)
				endif
				if RapersCCount > 3 && RapersC[3] && RapersC[3].Is3DLoaded() && !RapersC[3].IsDead()
					SetExpressionOnActor(RapersC[3], Play)
				endif
			endif
			/;
EndFunction

Function PlayRaperMoan(actor akActor, int actorNumber)			;#PlayRaperMoan
	NymTrace("PlayRaperMoan()")
	sslBaseVoice voice

	if !voice
		voice = SexLab.PickVoice(akActor)
	EndIf
					  ;volume, victim, lipsync
	voice.PlayMoan(akActor, 100, false, false)

EndFunction 

Function SetExpressionOnActor(actor akActor, bool play)		;#SetExpressionOnActor
	NymTrace("SetExpressionOnActor()")
	if play
	NymTrace("SetExpressionOnActor(play)")
		int type = Utility.RandomInt(1,5)
		;int StrengthMax 	
		
		if type == 1
		NymTrace("SetExpressionOnActor(1)")		
		defqst.SetModifier_MOOD(akActor, 0, 100, 0.1) ;ANGER
				
		;akActor.SetExpressionOverride(0, 100)	;ANGER	
		elseif type == 2
		NymTrace("SetExpressionOnActor(2)")	
		defqst.SetModifier_MOOD(akActor, 2, 100, 0.1) ;HAPPY	
		
		;akActor.SetExpressionOverride(2, 100) ;HAPPY 
		elseif type == 3
		NymTrace("SetExpressionOnActor(3)")	
		defqst.SetModifier_MOOD(akActor, 4, 100, 0.1) ;SURPRISE	
		;akActor.SetExpressionOverride(4, 100)	;SURPRISE
		elseif type == 4
		NymTrace("SetExpressionOnActor(4)")	
		defqst.SetModifier_MOOD(akActor, 7, 100, 0.1) ;NEUTRAL	
		;akActor.SetExpressionOverride(7, 100) ;NEUTRAL
		;elseif type == 5
		;PlayerRef.SetExpressionOverride(0, 100)	;ANGER
		elseif type == 5
		NymTrace("SetExpressionOnActor(5)")	
		defqst.SetModifier_MOOD(akActor, 6, 100, 0.1) ;DISGUST
		;PlayerRef.SetExpressionOverride(6, 100)	;DISGUST
		endif	
		
		if cfgqst.SexScene 
		NymTrace("SetExpressionOnActor(SexScene)")	
		defqst.SetModifier_MOUTH(akActor, 1, Utility.RandomInt(60,100), 0.1)
		;MfgConsoleFunc.SetPhoneme(akActor, 1, (Utility.RandomInt(60,100)))	;BIG AAH
		else
		defqst.SetModifier_MOUTH(akActor, 1, Utility.RandomInt(0,50), 0.1)
		;MfgConsoleFunc.SetPhoneme(akActor, 1, (Utility.RandomInt(0,100)))	;BIG AAH
		endif 
	else 
		akActor.ClearExpressionOverride()
		MfgConsoleFunc.ResetPhonemeModifier(akActor)
		NymTrace("Reset Expressions On Actor (Raper/NPC)")
	
	endif 

EndFunction 
;/
Function OnStartRaperExpressions(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartRaperExpressions
		
	;PlayerMonitorLoop starts this via ModEvent every 5 seconds	
		
bool NEWSYSTEM = true 

	if NEWSYSTEM
		
		if Nym()
		PlayRaperExpressions()
		endif 
		
	else 

		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnRaperExpressions")
			
		if Nym()
		
			while !RapersResetted && cfgqst.ModEnabled
				NymTrace("OnStartRaperExpressions A")
				if cfgqst.SexScene && !Nym() 
				;when not Nymras game and sex scene running, no expressions! 
				else 
					NymTrace("OnStartRaperExpressions B")
					if RapersACount > 0
						if RapersA[0] && RapersA[0].Is3DLoaded() && !RapersA[0].IsDead()
							SetExpressionOnActor(RapersA[0], ResetRapers)
						endif
						if RapersACount > 1 && RapersA[1] && RapersA[1].Is3DLoaded() && !RapersA[1].IsDead()
							SetExpressionOnActor(RapersA[1], ResetRapers)
						endif
						if RapersACount > 2 && RapersA[2] && RapersA[2].Is3DLoaded() && !RapersA[2].IsDead()
							SetExpressionOnActor(RapersA[2], ResetRapers)
						endif
						if RapersACount > 3 && RapersA[3] && RapersA[3].Is3DLoaded() && !RapersA[3].IsDead()
							SetExpressionOnActor(RapersA[3], ResetRapers)
						endif
					endif

					if RapersBCount > 0
						if RapersBCount > 0 && RapersB[0] && RapersB[0].Is3DLoaded() && !RapersB[0].IsDead()
							SetExpressionOnActor(RapersB[0], ResetRapers)
						endif
						if RapersBCount > 1 && RapersB[1] && RapersB[1].Is3DLoaded() && !RapersB[1].IsDead()
							SetExpressionOnActor(RapersB[1], ResetRapers)
						endif
						if RapersBCount > 2 && RapersB[2] && RapersB[2].Is3DLoaded() && !RapersB[2].IsDead()
							SetExpressionOnActor(RapersB[2], ResetRapers)
						endif
						if RapersBCount > 3 && RapersB[3] && RapersB[3].Is3DLoaded() && !RapersB[3].IsDead()
							SetExpressionOnActor(RapersB[3], ResetRapers)
						endif
					endif

					if RapersCCount > 0
						if RapersCCount > 0 && RapersC[0] && RapersC[0].Is3DLoaded() && !RapersC[0].IsDead()
							SetExpressionOnActor(RapersC[0], ResetRapers)
						endif
						if RapersCCount > 1 && RapersC[1] && RapersC[1].Is3DLoaded() && !RapersC[1].IsDead()
							SetExpressionOnActor(RapersC[1], ResetRapers)
						endif
						if RapersCCount > 2 && RapersC[2] && RapersC[2].Is3DLoaded() && !RapersC[2].IsDead()
							SetExpressionOnActor(RapersC[2], ResetRapers)
						endif
						if RapersCCount > 3 && RapersC[3] && RapersC[3].Is3DLoaded() && !RapersC[3].IsDead()
							SetExpressionOnActor(RapersC[3], ResetRapers)
						endif
					endif
					
					Utility.Wait(5.0)
					
					;MAINTENANCE 
					if !ResetRapers && !cfgqst.IsDefeatRunning()
					NymTrace("OnStartRaperExpressions C")
					;when defeatquest ends during loop, order reset of rapers
					ResetRapers = true 
					elseif ResetRapers
					NymTrace("OnStartRaperExpressions D")
					;we get here the second time after ordering the reset, now we end the loop
					RapersResetted = true 
					endif 
				endif 

			endwhile 	
		endif 	
		
		NymTrace("OnStartRaperExpressions E")
	endif 
	
EndFunction
/;


Function OpenMouth()		;#OpenMouth()
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OpenMouth(IsMouthAvailable = "+cfgqst.IsMouthAvailable+")")

defqst.GetMouthStatePlayer()

cfgqst.IsMouthAvailable = 0	;sucking 
cfgqst.Gagged = true 
EndFunction 
	
;/	
Function OnStartNakedSexExpressions(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartNakedSexExpressions ;OLD REMOVE !! now in DefeatQuest


Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartNakedSexExpressions (DISABLED)")
;loops while SexScene is active
;might have to reduce the time tick to 1 second for more response 
;OnStageStart we check if we are sucking or not (mouth available) 
;basically we need to call this whenever SexScene = true
	
		
bool Enabled = false	

	if Enabled
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartNakedSexExpressions 1")	
		while (cfgqst.IsFucking(cfgqst.PlayerRef) || cfgqst.SexScene) && cfgqst.ModEnabled
			;NymTrace("OnStartNakedSexExpressions 2")
			;NORMAL		
			if cfgqst.IsMouthAvailable == 1	;not sucking
			;NymTrace("OnStartNakedSexExpressions 3")
			cfgqst.Gagged = false 
			cfgqst.SetExpression(Utility.RandomInt(1,6))

			;SUCKING 	
			elseif cfgqst.IsMouthAvailable == 0 ;sucking 
			;NymTrace("OnStartNakedSexExpressions 4")
			cfgqst.Gagged = true 
			cfgqst.SetExpression(1)
			endif 
			
		SendModEvent("Moan") 	
		
		Int WaitTime = Utility.RandomInt(3,6)
		
		Utility.Wait(WaitTime)

		endwhile 
	;NymTrace("OnStartNakedSexExpressions 10")	
	cfgqst.IsMouthAvailable = 1
	cfgqst.Gagged = false ;<<<<--- sigh 
	cfgqst.ResetExpressions()	
		
	endif 
			
EndFunction 
	
/;
	
Function RemoveAggressorOutfits(actor akActor, int num) ;OLD REMOVE 

;/
	NymTrace("RemoveAggressorOutfits")
	;akFormlist.Revert()

	AggressorClothesList[num] = (akActor.GetWornForm(0x00000004)) as armor	;32 - BODY
	
	if AggressorClothesList[num]
	NymTrace("RemoveAggressorOutfits["+num+"]")
	akActor.RemoveItem(AggressorClothesList[num])
	else 
	NymTrace("RemoveAggressorOutfits["+num+"] - NONE")
	
	endif 
	/;
	
EndFunction


Function StripAllAggressors()				;#StripAllAggressors()

	if Nym()
	;if storqst.StripRapers
		;NO No
		;1. we only need to handle Rapers for now 
		;and mayyyybe Falmers 
		;

		NymTrace("StripAllAggressors()")	
		int i = 26
		int j = 0
		while i > 0
		i -= 1
			if AggressorList[i]	;saved actor
			
			defqst.StripAggressorStuff(AggressorList[i], i)
			j += 1
			else 
			NymTrace("StripAllAggressors: Aggressor["+i+"] - NONE ")	
			;RemoveAggressorOutfits(AggressorList[i], i)
			;RemoveAggressorWeapons(AggressorList[i], i)
			
			endif
		endwhile 

		NymTrace("StripAllAggressors: Aggressors Stripped: "+j)
	endif 
EndFunction 


Function DressAllAggressors()		;#DressAllAggressors()
	NymTrace("DressAllAggressors()")
	int i = 26
	int j = 0
	
	if Nym()
	;if storqst.StripRapers	
		while i > 0
		i -= 1
			if AggressorList[i]
				j += 1
			defqst.ReturnAggressorStuff(AggressorList[i], i)
			AggressorList[i] = none
			else 
			NymTrace("DressAllAggressors: Aggressor["+i+"] - NONE ")	
			endif

		endwhile 

	NymTrace("DressAllAggressors: Aggressors Dressed: "+j)	
	endif 
EndFunction 

Function AddAggressorOutfits(actor akActor, int num)		;OLD REMOVE 


		
	;/

	NymTrace("AddAggressorOutfits")

	if AggressorClothesList[num]
	NymTrace("AddAggressorOutfits["+num+"]")
	akActor.AddItem(AggressorClothesList[num])	;32 - BODY	;TEST
	;akActor.Equipitem(AggressorClothesList[num] ,true)	;32 - BODY
	;akActor.EquipItemEx(AggressorClothesList[num], 0, false ,true)
	akActor.EquipItemEx(AggressorClothesList[num], 0, true ,true)
	else 
	NymTrace("AddAggressorOutfits["+num+"- NONE]")

	endif 
	
	if Nym()
		Form a = akActor.GetWornForm(0x00000004)
		if a
	;	NymTrace("Actor Clothed")
		else 
		NymTrace("#ERROR Actor Naked")
		endif 
	endif 
	
	
	/;	
EndFunction

Function RemoveAggressorWeapons(actor akActor, int num)	;OLD REMOVE 
	
;/
	;akActor.DrawWeapon()

	NymTrace("RemoveAggressorWeapons: "+num)
	AggressorWeaponsA1List[num] = akActor.GetEquippedWeapon(false) as weapon ;Right Hand (A1)
	if AggressorWeaponsA1List[num]
	akActor.RemoveItem(AggressorWeaponsA1List[num])
	endif 
	
	AggressorWeaponsA2List[num] = akActor.GetEquippedWeapon(false) as weapon ;Right Hand (A2)
	if AggressorWeaponsA2List[num]
	akActor.RemoveItem(AggressorWeaponsA2List[num])
	endif 
	
	AggressorWeaponsBList[num] = akActor.GetEquippedWeapon(true) as weapon ;Left Hand (B)
	if AggressorWeaponsBList[num]
	akActor.RemoveItem(AggressorWeaponsBList[num])
	endif 

	;AggressorShieldsList[num] = akActor.GetEquippedShield() as Armor ;Shield
	AggressorShieldsList[num] = GetShield(akActor)
	
	if AggressorShieldsList[num]
	NymTrace("RemoveAggressorWeapons SHIELD FOUND: "+num)
	akActor.RemoveItem(AggressorShieldsList[num])
	else 

		AggressorShieldsList[num] = GetShieldFromSlot(akActor)
		
		if AggressorShieldsList[num]
		NymTrace("RemoveAggressorWeapons SHIELD from Slot FOUND: "+num)
		akActor.RemoveItem(AggressorShieldsList[num])
		endif
		
	endif 
	/;
	
	;akActor.SheatheWeapon()
	
EndFunction

Armor Function GetShieldFromSlot(actor akActor)
	
	int OutfitSize = 0
;	Weapon CheckWeapon
	Armor CheckArmor

	Formlist FormlistInventory = cfgqst.RobbedStuff ;TODO
	FormlistInventory.Revert()

	akActor.GetAllForms(FormlistInventory)
	OutfitSize = FormlistInventory.GetSize()
	NymTrace("GetShieldFromSlot: OutfitSize: "+OutfitSize)
	
	while OutfitSize > 0
		
		OutfitSize -= 1	
	
		CheckArmor = FormlistInventory.GetAt(OutfitSize) as Armor 		
		if CheckArmor && CheckArmor.GetSlotMask() == 512
		NymTrace("GotShield From SLOT")
		return CheckArmor
		else
		NymTrace("NO Shield From SLOT")
		CheckArmor = NONE
		return CheckArmor
		endif 

	endwhile	
	
EndFunction 

Armor Function GetShield(actor akActor)
	
	int OutfitSize = 0
;	Weapon CheckWeapon
	Armor CheckArmor

	Formlist FormlistInventory = cfgqst.RobbedStuff ;TODO
	FormlistInventory.Revert()

	akActor.GetAllForms(FormlistInventory)
	OutfitSize = FormlistInventory.GetSize()
	NymTrace("GetShield: OutfitSize: "+OutfitSize)
	
	while OutfitSize > 0
		
		OutfitSize -= 1	
	
		CheckArmor = FormlistInventory.GetAt(OutfitSize) as Armor 
		if CheckArmor && CheckArmor.IsShield()
		NymTrace("GotShield")
		return CheckArmor
		else
		NymTrace("NO Shield")
		CheckArmor = NONE
		return CheckArmor
		endif 

	endwhile	
	
EndFunction 

;/
Function RemoveNPCWeaponsAndShields(actor akActor, int num)
	
	int OutfitSize = 0
	Weapon CheckWeapon
	Armor CheckArmor

	Formlist FormlistInventory = cfgqst.RobbedStuff ;TODO
	FormlistInventory.Revert()

	akActor.GetAllForms(FormlistInventory)
	OutfitSize = FormlistInventory.GetSize()
	
	while OutfitSize > 0
		
		OutfitSize -= 1	
		
		CheckWeapon = FormlistInventory.GetAt(OutfitSize) as Weapon 
		if CheckWeapon
		;add to saved Stuff and Remove
			AggressorWeaponsA1List[num] = CheckWeapon 
			akActor.RemoveItem()
		
		else
			CheckArmor = FormlistInventory.GetAt(OutfitSize) as Armor 
			if CheckArmor.IsShield()
			;add to saved Stuff and Remove
			endif
		endif 

	endwhile	
	
EndFunction 
/;

Function AddAggressorWeapons(actor akActor, int num)
	NymTrace("AddAggressorWeapons")
	if AggressorWeaponsA1List[num]
	akActor.AddItem(AggressorWeaponsA1List[num])	;Right Hand (A1)
	endif 
	
	if AggressorWeaponsA2List[num]
	akActor.AddItem(AggressorWeaponsA2List[num])	;Right Hand (A2)
	endif 
	if AggressorWeaponsBList[num]
	akActor.AddItem(AggressorWeaponsBList[num])	;Left Hand (B)
	endif 
	if AggressorShieldsList[num]
	akActor.AddItem(AggressorShieldsList[num])	;Shield
	endif 
	
EndFunction

bool WhipperFound = false
		
int	RapersMale = 0
int	RapersFemale = 0
int RapersCreatures = 0
int FollowerVictims = 0
Bool AllRapersTooFarAway = true 
			
			
;##################################################################################################################################################################################################################
;################		CALM FUNCTION		##################################################################################################################################################################################################	
;##################################################################################################################################################################################################################	

Function Calm(Bool doCalm = true, Int Round = 1)			;#calm

	CalmRunning = True
		
	if !cfgqst.AllowCreatures	;needs to MOVE
	OnlyAnimals = true
	endif

	Actor a	
	
	Int i = ActorArray.Length		;I think we should be able to preven followes from beeing put into this in the first place
	;lengt 31 (all the actors from the quest)
	
	Rapers = new Actor[4]					
	Rapers[0] = None						
	Rapers[1] = None						
	Rapers[2] = None						
	Rapers[3] = None	
	RaperCount = 0
	
	
	Fappers = new Actor[24]					
	Fappers[0] = None						
	Fappers[1] = None						
	Fappers[2] = None						
	Fappers[3] = None
	
	Fappers[4] = None						
	Fappers[5] = None						
	Fappers[6] = None						
	Fappers[7] = None
	
	Fappers[8] = None						
	Fappers[9] = None						
	Fappers[10] = None						
	Fappers[11] = None
	
	Fappers[12] = None						
	Fappers[13] = None						
	Fappers[14] = None						
	Fappers[15] = None	
	
	Fappers[16] = None						
	Fappers[17] = None						
	Fappers[18] = None						
	Fappers[19] = None
	
	Fappers[20] = None						
	Fappers[21] = None						
	Fappers[22] = None						
	Fappers[23] = None
	FapperCount = 0
	
	RapersMale = 0
	RapersFemale = 0
	RapersCreatures = 0
	FollowerVictims = 0

	Int a_TempGender
	Float a_TempDistance
	String a_TempName = "empty"
	; :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	; ::::::::: CALM (ON) :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::	;#calm2 
	; :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	
	;GUIDE: this no longer really Calms but also sorts the actors early. Maybe we can remove/replace this alltogether soon.
	
	if doCalm	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Calm ON")
		;FOLLOWER DIRECT ADDITION
		
		;#dress 	
		;creates the lists we need to save aggressors and the stripped Items
		;happens only here 
		
		if Nym() ;NakedStripping
		AggressorList = new Actor[26]	
		endif 

		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #Calm (ON) #ACTOR# LIST:")		
		while i 	 												
			i -= 1																
			a = ActorArray[i].GetReference() as Actor	;makes the References into Actors	
	
			if a 	
				;get Gender here 	
				a_TempGender = storqst.GetGender(a)  ;(SexLab.GetGender(a))  ;Sexlab -> slow?
				a_TempDistance = a.GetDistance(cfgqst.PlayerRef)
				a_TempName = cfgqst.GetActorName(a)

				if a_TempGender == 0 && FapperCount < 25
				;add all male rapers as potential Fappers	(for bukkake and similar
					Fappers[FapperCount] = a	 		
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FapperCount #"+FapperCount)
					FapperCount += 1
				endif

				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #CALM SCAN (ON) ACTOR#"+i+": "+a_TempName+" Gender:"+a_TempGender+" Distance:"+a_TempDistance)	;#DEBUG
			
				if a.IsInFaction(WhippingFaction)
				a.RemoveFromFaction(WhippingFaction)
					if Nym() && WhipperFound 
					Debug.Messagebox("Whipper already Found, reconsider")
					endif 
				WhipperFound = false
				endif 
			
				if a.IsInFaction(cfgqst.RobberFaction) && !PresentRobber
				PresentRobber = a
				endif 
				
				;Enemies 			
			;	if (a != Victims[0]) && (a != Victims[1])
				
				; BETA >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
				;get Voyeurs. They will stand and masturbate next to the PC
				;remove for now 
				;/
				if VoyeursACount == 0
				VoyeursA = new Actor[4]					
				VoyeursA[0] = None						
				VoyeursA[1] = None						
				VoyeursA[2] = None						
				VoyeursA[3] = None	
				VoyeursACount = 0
				endif
				
				if VoyeursACount < 4
					;if guard is male or is female AND females are allowed as rapers
					if (a_TempGender == 0) || ((a_TempGender == 1) && cfgqst.FemalesAllowed)
					
						VoyeursA[VoyeursACount] = a	 
						VoyeursA[VoyeursACount].AddToFaction(WhippingFaction)						
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VoyeursA #"+VoyeursACount+": "+cfgqst.GetActorInfo(VoyeursA[VoyeursACount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VoyeursA #"+VoyeursACount+": "+((VoyeursA[VoyeursACount]).GetBaseObject().GetName()))
							endif
						VoyeursACount += 1
						;cfgqst.DefeatType = "Guards"
					endif
				endif
				/;
		
				;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

				; ------ GUARD HANDLING ------ ;
				;can probably be removed now?
				;looking for Guards: IF is Guard and in combat with player -> send terminate
				
				if (Round == 1) && cfgqst.IsGuard(a) && (a_TempDistance <= Distance)  		
				
					;Sort guards into their own Group
					if cfgqst.CivilRapeRunning || cfgqst.DefeatViaSlavery
			
						if RapersACount == 0		;would it be better to use B or C?
						RapersA = new Actor[4]					
						RapersA[0] = None						
						RapersA[1] = None						
						RapersA[2] = None						
						RapersA[3] = None	
						RapersACount = 0
						endif
						
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GUARD a_TempGender("+a_TempGender+") cfgqst.FemalesAllowed "+cfgqst.FemalesAllowed)
						
						if RapersACount < 4
							;if guard is male or is female AND females are allowed as rapers
							if (a_TempGender == 0) || ((a_TempGender == 1) && cfgqst.FemalesAllowed)
							
								RapersA[RapersACount] = a	 		
								
								Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GUARD RapersACount #"+RapersACount)
								RapersACount += 1
							;	cfgqst.DefeatType = "Guards"
							endif
						endif
						
					else
					;do nothing
					endif

				;OMG THIS IS WEIRD 	
				elseif (Round == 1) && !cfgqst.AllowCreatures && (a_TempGender < 2) 	;looking for Humans
					;if cfgqst.PlayerRef.GetDistance(a) <= Distance							;looking if Humans are close enough
					if a_TempDistance <= Distance 
					OnlyAnimals = false														;if humans there and close -> no cancel defeat		
					endif
				endif
						
				if folqst.IsPresentFollower(a)		
				FollowerVictims += 1
				else 		
					;CountActors 
					if a_TempDistance <= Distance
					AllRapersTooFarAway = false 
					endif 
					
					if a_TempGender == 0 
					RapersMale += 1
					elseif a_TempGender == 1
					RapersFemale += 1
					elseif a_TempGender == 2
					RapersCreatures += 1
					endif 
				
					;#dress1
					if Nym() 
					;Guide: add human aggressors to the List for later removing their inventory.
						if a_TempGender < 2	;NOT RELIABLE!!! 
						NymTrace("Save Aggressor to List: "+a_TempName)
						
						AggressorList[i] = a
						endif 
					endif 
					
				endif 
				;>>>>>>>>>>>> SexQuest Calm (Enemies) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
						
				a.StopCombat()		
				a.StopCombatAlarm()	
				
				;main DefeatFaction (for debug, maybe not necessary)
				if !a.IsInFaction(DefeatFaction)
				a.AddToFaction(DefeatFaction)
				endif
				
				if !a.IsInFaction(cfgqst.ProtectedActorFaction)
				a.AddToFaction(cfgqst.ProtectedActorFaction)
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
		
		;#dress3
		;remove all body armor and weapons from Aggressors and saves them in Arrays
		;StripAllAggressors() ;----> Place Somewhere else and refine 
		
		NymTrace("#CALM: RapersMale = "+RapersMale+" RapersFemale = "+RapersFemale+" RapersCreatures "+RapersCreatures+" FollowerVictims "+FollowerVictims+")")
			
		calming = false
		needAwhipper = true
	
	; :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	; ::::::::: CALM (OFF) :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::	;#calm3 
	; :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	else	
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Calm OFF")

		ActorsSpawned = false
		WhipperFound = false
		
		while i												
			i -= 1
			;a = NPC[i].GetReference() as Actor
			a = ActorArray[i].GetReference() as Actor
			a_TempGender = (SexLab.GetGender(a))

			;>>>>>>>>>>>> SexQuest Calm (All) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
			if a		
				if cfgqst.ShowDebugMessages	
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #CALM SCAN (OFF) ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;#DEBUG
				else
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #CALM SCAN (OFF)ACTOR#"+i+": "+cfgqst.GetActorName(a))		;#DEBUG
				endif
				
				if cfgqst.FemalesAllowed && cfgqst.FemalesAsMales && a_TempGender == 1
				Sexlab.UnequipStrapon(a)
				endif 
			
				if a.IsInFaction(cfgqst.EnemyFaction)
				a.RemoveFromFaction(cfgqst.EnemyFaction)
				endif									
				
				if a.IsInFaction(DefeatFaction)
				a.RemoveFromFaction(DefeatFaction)
				endif
				
				if SPE_Actor.IsActorCalmed(a)
				SPE_Actor.SetActorCalmed(a, false)
				endif 
				
			;	if a.IsInFaction(cfgqst.AcheronVictimFaction)
			;	a.RemoveFromFaction(cfgqst.AcheronVictimFaction)
			;	endif
				
			;	if a.IsInFaction(cfgqst.AcheronEnemyFaction)
			;	a.RemoveFromFaction(cfgqst.AcheronEnemyFaction)
			;	endif
				
				if (a.IsInFaction(CalmFaction))							
				a.RemoveFromFaction(CalmFaction)
				endif
				
				;------- clean up ghosts -------------- ;maybe do NOT remove non-ghost actors later (test more)
				if a.IsInFaction(NakedGhostFaction)	
				a.disable()
				a.delete()
				endif
				;--------------------------------------
				
				if a.IsInFaction(cfgqst.ProtectedActorFaction)
				a.RemoveFromFaction(cfgqst.ProtectedActorFaction)
				endif					
				
				if a.IsInFaction(WhippingFaction)
				a.RemoveFromFaction(WhippingFaction)
				endif			
				;--------------------------------------------------------------------------
				
			endif
		endwhile
		
		;CLEAN UP SPAWNED ACTORS ---
		;BackUp Redress
		if !AggressorsReDressed
		AggressorsReDressed = true
		DressAllAggressors()
		endif 
	

	endif
		
	CalmRunning = False

EndFunction

;##################################################################################################################################################################################################################	


;-----------------------------------------------------------------------------------------------------------------------------------------

Function RemoveSpawnedRapers()
		NymTrace("RemoveSpawnedRapers(DISABLED)")
			
	;/
		
	if RapersACount > 0
		if RapersA[0] && RapersA[0].IsInFaction(NakedGhostFaction)	
		RapersA[0].disable()
		RapersA[0].delete()
		endif 
		if RapersA[1] && RapersA[1].IsInFaction(NakedGhostFaction)	
		RapersA[1].disable()
		RapersA[1].delete()
		endif 
		if RapersA[2] && RapersA[2].IsInFaction(NakedGhostFaction)	
		RapersA[2].disable()
		RapersA[2].delete()
		endif 
		if RapersA[3] && RapersA[3].IsInFaction(NakedGhostFaction)	
		RapersA[3].disable()
		RapersA[3].delete()
		endif 
	endif 
	if RapersBCount > 0
		;RapersB		
		if RapersB[0] && RapersB[0].IsInFaction(NakedGhostFaction)	
		RapersB[0].disable()
		RapersB[0].delete()
		endif 
		if RapersB[1] && RapersB[1].IsInFaction(NakedGhostFaction)	
		RapersB[1].disable()
		RapersB[1].delete()
		endif 
		if RapersB[2] && RapersB[2].IsInFaction(NakedGhostFaction)	
		RapersB[2].disable()
		RapersB[2].delete()
		endif 
		if RapersB[3] && RapersB[3].IsInFaction(NakedGhostFaction)	
		RapersB[3].disable()
		RapersB[3].delete()
		endif 
	endif 
	if RapersCCount > 0
	NymTrace("RemoveSpawnedRapers(RapersC removing)")
		;RapersC
		if RapersC[0] && RapersC[0].IsInFaction(NakedGhostFaction)	
		RapersC[0].disable()
		RapersC[0].delete()
		endif 
		if RapersC[1] && RapersC[1].IsInFaction(NakedGhostFaction)	
		RapersC[1].disable()
		RapersC[1].delete()
		endif 
		if RapersC[2] && RapersC[2].IsInFaction(NakedGhostFaction)	
		RapersC[2].disable()
		RapersC[2].delete()
		endif 
		if RapersC[3] && RapersC[3].IsInFaction(NakedGhostFaction)	
		RapersC[3].disable()
		RapersC[3].delete()
		endif 
	endif 
		;CreaturesA	
			
	if CreaturesACount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesA removing)")
		if CreaturesA[0] && CreaturesA[0].IsInFaction(NakedGhostFaction)    
			CreaturesA[0].disable()
			CreaturesA[0].delete()
		endif 
		if CreaturesA[1] && CreaturesA[1].IsInFaction(NakedGhostFaction)    
			CreaturesA[1].disable()
			CreaturesA[1].delete()
		endif 
		if CreaturesA[2]  && CreaturesA[2].IsInFaction(NakedGhostFaction)    
			CreaturesA[2].disable()
			CreaturesA[2].delete()
		endif 
		if CreaturesA[3] && CreaturesA[3].IsInFaction(NakedGhostFaction)    
			CreaturesA[3].disable()
			CreaturesA[3].delete()
		endif     
	endif 

	if CreaturesBCount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesB removing)")
		if CreaturesB[0] && CreaturesB[0].IsInFaction(NakedGhostFaction)    
			CreaturesB[0].disable()
			CreaturesB[0].delete()
		endif 
		if CreaturesB[1] && CreaturesB[1].IsInFaction(NakedGhostFaction)    
			CreaturesB[1].disable()
			CreaturesB[1].delete()
		endif 
		if CreaturesB[2]  && CreaturesB[2].IsInFaction(NakedGhostFaction)    
			CreaturesB[2].disable()
			CreaturesB[2].delete()
		endif 
		if CreaturesB[3] && CreaturesB[3].IsInFaction(NakedGhostFaction)    
			CreaturesB[3].disable()
			CreaturesB[3].delete()
		endif     
	endif 

	if CreaturesCCount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesC removing)")
		if CreaturesC[0] && CreaturesC[0].IsInFaction(NakedGhostFaction)    
			CreaturesC[0].disable()
			CreaturesC[0].delete()
		endif 
		if CreaturesC[1] && CreaturesC[1].IsInFaction(NakedGhostFaction)    
			CreaturesC[1].disable()
			CreaturesC[1].delete()
		endif 
		if CreaturesC[2]  && CreaturesC[2].IsInFaction(NakedGhostFaction)    
			CreaturesC[2].disable()
			CreaturesC[2].delete()
		endif 
		if CreaturesC[3] && CreaturesC[3].IsInFaction(NakedGhostFaction)    
			CreaturesC[3].disable()
			CreaturesC[3].delete()
		endif     
	endif 

	if CreaturesDCount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesD removing)")
		if CreaturesD[0] && CreaturesD[0].IsInFaction(NakedGhostFaction)    
			CreaturesD[0].disable()
			CreaturesD[0].delete()
		endif 
		if CreaturesD[1] && CreaturesD[1].IsInFaction(NakedGhostFaction)    
			CreaturesD[1].disable()
			CreaturesD[1].delete()
		endif 
		if CreaturesD[2]  && CreaturesD[2].IsInFaction(NakedGhostFaction)    
			CreaturesD[2].disable()
			CreaturesD[2].delete()
		endif 
		if CreaturesD[3] && CreaturesD[3].IsInFaction(NakedGhostFaction)    
			CreaturesD[3].disable()
			CreaturesD[3].delete()
		endif     
	endif 

	if CreaturesECount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesE removing)")
		if CreaturesE[0] && CreaturesE[0].IsInFaction(NakedGhostFaction)    
			CreaturesE[0].disable()
			CreaturesE[0].delete()
		endif 
		if CreaturesE[1] && CreaturesE[1].IsInFaction(NakedGhostFaction)    
			CreaturesE[1].disable()
			CreaturesE[1].delete()
		endif 
		if CreaturesE[2]  && CreaturesE[2].IsInFaction(NakedGhostFaction)    
			CreaturesE[2].disable()
			CreaturesE[2].delete()
		endif 
		if CreaturesE[3] && CreaturesE[3].IsInFaction(NakedGhostFaction)    
			CreaturesE[3].disable()
			CreaturesE[3].delete()
		endif     
	endif 

	if CreaturesFCount > 0
	NymTrace("RemoveSpawnedRapers(CreaturesF removing)")
		if CreaturesF[0] && CreaturesF[0].IsInFaction(NakedGhostFaction)    
			CreaturesF[0].disable()
			CreaturesF[0].delete()
		endif 
		if CreaturesF[1] && CreaturesF[1].IsInFaction(NakedGhostFaction)    
			CreaturesF[1].disable()
			CreaturesF[1].delete()
		endif 
		if CreaturesF[2]  && CreaturesF[2].IsInFaction(NakedGhostFaction)    
			CreaturesF[2].disable()
			CreaturesF[2].delete()
		endif 
		if CreaturesF[3] && CreaturesF[3].IsInFaction(NakedGhostFaction)    
			CreaturesF[3].disable()
			CreaturesF[3].delete()
		endif     
	endif

Actor a									

Int i = ActorArray.Length	
												
	while i												
			i -= 1
			a = ActorArray[i].GetReference() as Actor

			;>>>>>>>>>>>> SexQuest Calm (All) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>				
			if a			
				if a.IsInFaction(NakedGhostFaction)	
				a.disable()
				a.delete()
				endif
			endif
			
	endwhile
	
	cfgqst.SpawnRapers("clear", false)
	
	/;
EndFunction



string function GetActorRaceEditorID(Actor actorRef) global native		;RACEKEY

;internal, short time bools
;/
bool RapersAvalid = false	
bool RapersBvalid = false		
bool RapersCvalid = false		
bool CreaturesAvalid = false	
bool CreaturesBvalid = false		
bool CreaturesCvalid = false

bool RapersAselected = false	
bool RapersBselected = false		
bool RapersCselected = false	
bool CreaturesAselected = false	
bool CreaturesBselected = false		
bool CreaturesCselected = false
;internal, short time bools
/;

string CreaturesARace = "empty"
string CreaturesBRace = "empty"
string CreaturesCRace = "empty"
string CreaturesDRace = "empty"
string CreaturesERace = "empty"
string CreaturesFRace = "empty"
int SpawnedGender = 0


;string CreaturesARaceID			;not in use anymore it seems 
;string CreaturesBRaceID
;string CreaturesCRaceID
;string CreaturesDRaceID
;string CreaturesERaceID
;string CreaturesFRaceID

string tempraceID = "empty"

String Function GetRaceKey(Actor akActor = None)
tempraceID = MiscUtil.GetActorRaceEditorID(akActor) 
return sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)
tempraceID = "empty"
Endfunction


String RandomSpawnType = "empty"
String RandomSpawnType02 = "empty"
String RandomSpawnType03 = "empty"
int RandomSpawnCount = 0		;depends on what animations we have (2P/3P/4P/5P) 
ObjectReference TempAnActor


Function CalmSpawnedActorGroupAGAIN()

armor TempArmor
if (SpawnedActor[0])
NymTrace("CalmSpawnedActorGroup_AGAIN[0]") 
CalmSpawnedActor(SpawnedActor[0])

	TempArmor = (SpawnedActor[0].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup_AGAIN[0]- TempArmor")
	SpawnedActor[0].RemoveItem(TempArmor)
	else 
	
	NymTrace("CalmSpawnedActorGroup_AGAIN[0]- TempArmor - NONE")
	
	endif 
endif	
if (SpawnedActor[1])
NymTrace("CalmSpawnedActorGroup_AGAIN[1]") 
CalmSpawnedActor(SpawnedActor[1])

	TempArmor = (SpawnedActor[1].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup_AGAIN[1]- TempArmor")
	SpawnedActor[1].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup_AGAIN[1]- TempArmor - NONE")
	endif 
endif
if (SpawnedActor[2])
NymTrace("CalmSpawnedActorGroup_AGAIN[2]") 
CalmSpawnedActor(SpawnedActor[2])

	TempArmor = (SpawnedActor[2].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup_AGAIN[2]- TempArmor")
	SpawnedActor[2].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup_AGAIN[2]- TempArmor - NONE")
	endif 
endif
if (SpawnedActor[3])
NymTrace("CalmSpawnedActorGroup_AGAIN[3]") 
CalmSpawnedActor(SpawnedActor[3])

	TempArmor = (SpawnedActor[3].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup_AGAIN[3]- TempArmor")
	SpawnedActor[3].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup_AGAIN[3]- TempArmor - NONE")
	endif 
endif	

EndFunction 


Function HarmonizeSpawnedActorGroup()

if (SpawnedActor[0])
(SpawnedActor[0]).AddToFaction(cfgqst.BanditFaction)
(SpawnedActor[0]).AddToFaction(cfgqst.NakedDuplicantFaction)
NymTrace("AMBUSH: Actor 0 added to NakedDuplicantFaction")
endif 

if (SpawnedActor[1])
(SpawnedActor[1]).AddToFaction(cfgqst.BanditFaction)
(SpawnedActor[1]).AddToFaction(cfgqst.NakedDuplicantFaction)
NymTrace("AMBUSH: Actor 0 added to NakedDuplicantFaction")
endif 

if (SpawnedActor[2])
(SpawnedActor[2]).AddToFaction(cfgqst.BanditFaction)
(SpawnedActor[2]).AddToFaction(cfgqst.NakedDuplicantFaction)
NymTrace("AMBUSH: Actor 0 added to NakedDuplicantFaction")
endif 

if (SpawnedActor[3])
(SpawnedActor[3]).AddToFaction(cfgqst.BanditFaction)
(SpawnedActor[3]).AddToFaction(cfgqst.NakedDuplicantFaction)
NymTrace("AMBUSH: Actor 0 added to NakedDuplicantFaction")
endif 

EndFunction 

Function CalmSpawnedActorGroup()  ;#CalmSpawnedActorGroup
armor TempArmor
int VerifiedSpawnCount = 0

; calm the freshly spawned group before filling them into RapersX or CreaturesX group
if (SpawnedActor[0])
NymTrace("CalmSpawnedActorGroup[0]") 
CalmSpawnedActor(SpawnedActor[0])
VerifiedSpawnCount += 1
	TempArmor = (SpawnedActor[0].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup[0]- TempArmor")
	SpawnedActor[0].RemoveItem(TempArmor)
	else 	
	NymTrace("CalmSpawnedActorGroup[0]- TempArmor - NONE")
	endif 

SpawnedActor[0].UnequipAll()	
	
endif	
if (SpawnedActor[1])
NymTrace("CalmSpawnedActorGroup[1]") 
CalmSpawnedActor(SpawnedActor[1])
VerifiedSpawnCount += 1
	TempArmor = (SpawnedActor[1].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup[1]- TempArmor")
	SpawnedActor[1].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup[1]- TempArmor - NONE")
	endif 
	
SpawnedActor[1].UnequipAll()
endif
if (SpawnedActor[2])
NymTrace("CalmSpawnedActorGroup[2]") 
CalmSpawnedActor(SpawnedActor[2])
VerifiedSpawnCount += 1
	TempArmor = (SpawnedActor[2].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup[2]- TempArmor")
	SpawnedActor[2].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup[2]- TempArmor - NONE")
	endif 
endif

SpawnedActor[2].UnequipAll()

if (SpawnedActor[3])
NymTrace("CalmSpawnedActorGroup[3]") 
CalmSpawnedActor(SpawnedActor[3])
VerifiedSpawnCount += 1
	TempArmor = (SpawnedActor[3].GetWornForm(0x00000004)) as armor	;32 - BODY	
	if TempArmor
	NymTrace("CalmSpawnedActorGroup[3]- TempArmor")
	SpawnedActor[3].RemoveItem(TempArmor)
	else 
	NymTrace("CalmSpawnedActorGroup[3]- TempArmor - NONE")
	endif 
endif	

SpawnedActor[3].UnequipAll()
DebugTrace("SpawnActorGroups(RandomSpawnType:"+RandomSpawnType+" - #Target: "+RandomSpawnCount)
RandomSpawnCount = VerifiedSpawnCount
NymTrace("SpawnActorGroups(RandomSpawnType:"+RandomSpawnType+" - #Verified: "+VerifiedSpawnCount)
EndFunction	

Function FillTestRapers()
;Transfer Spawned Actor into Target Group RapersA
RapersAcount = RandomSpawnCount

;RapersABlocked = true
ResetSpawnedActors()

EndFunction	
	
Function FillRapersA()
;Transfer Spawned Actor into Target Group RapersA
RapersAcount = RandomSpawnCount

if SpawnedActor[0]
RapersA[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
RapersA[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
RapersA[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
RapersA[3] = SpawnedActor[3] 
endif

cfgqst.SpawnedGroups[0] = 1
RapersABlocked = true
ResetSpawnedActors()

EndFunction	

Function FillRapersB()
;Transfer Spawned Actor into Target Group RapersA
RapersBcount = RandomSpawnCount

if SpawnedActor[0]
RapersB[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
RapersB[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
RapersB[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
RapersB[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[1] = 1
RapersBBlocked = true
ResetSpawnedActors()
EndFunction	

Function FillRapersC()
;Transfer Spawned Actor into Target Group RapersA
RapersCcount = RandomSpawnCount

if SpawnedActor[0]
RapersC[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
RapersC[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
RapersC[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
RapersC[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[2] = 1
RapersCBlocked = true
ResetSpawnedActors()
EndFunction	

Function FillCreaturesA()
;Transfer Spawned Actor into Target Group RapersA
CreaturesAcount = RandomSpawnCount
CreaturesARace = RandomSpawnType

if SpawnedActor[0]
CreaturesA[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesA[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesA[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesA[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[3] = 1
CreaturesABlocked = true
ResetSpawnedActors()
EndFunction	
	
Function FillCreaturesB()
;Transfer Spawned Actor into Target Group RapersA
CreaturesBcount = RandomSpawnCount
CreaturesBRace = RandomSpawnType

if SpawnedActor[0]
CreaturesB[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesB[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesB[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesB[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[4] = 1
CreaturesBBlocked = true
ResetSpawnedActors()
EndFunction		

Function FillCreaturesC()
;Transfer Spawned Actor into Target Group RapersA
CreaturesCcount = RandomSpawnCount
CreaturesCRace = RandomSpawnType

if SpawnedActor[0]
CreaturesC[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesC[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesC[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesC[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[5] = 1
CreaturesCBlocked = true
ResetSpawnedActors()
EndFunction	

Function FillCreaturesD()
;Transfer Spawned Actor into Target Group RapersA
CreaturesDcount = RandomSpawnCount
CreaturesDRace = RandomSpawnType

if SpawnedActor[0]
CreaturesD[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesD[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesD[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesD[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[6] = 1
CreaturesDBlocked = true
ResetSpawnedActors()
EndFunction	

Function FillCreaturesE()
;Transfer Spawned Actor into Target Group RapersA
CreaturesEcount = RandomSpawnCount
CreaturesERace = RandomSpawnType

if SpawnedActor[0]
CreaturesE[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesE[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesE[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesE[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[7] = 1
CreaturesEBlocked = true
ResetSpawnedActors()
EndFunction	


Function FillCreaturesF()
;Transfer Spawned Actor into Target Group RapersA
CreaturesFcount = RandomSpawnCount
CreaturesFRace = RandomSpawnType

if SpawnedActor[0]
CreaturesF[0] = SpawnedActor[0]
endif	
if SpawnedActor[1]
CreaturesF[1] = SpawnedActor[1] 
endif
if SpawnedActor[2]
CreaturesF[2] = SpawnedActor[2] 
endif
if SpawnedActor[3]
CreaturesF[3] = SpawnedActor[3] 
endif
cfgqst.SpawnedGroups[8] = 1
CreaturesFBlocked = true
ResetSpawnedActors()
EndFunction	


Function PlaySummonEffect(actor akactor)

EffectShader Summonshader

	Summonshader = (Game.GetFormFromFile(0x000280C0, "Skyrim.esm") as EffectShader) ;DragonPowerAbsorbFXS ;Blue and Yellow Energy. TEST FOR SUMMON
	Summonshader.Play(akactor, Utility.RandomFloat(3.0, 6.0))	

EndFunction 

Function GetRandomExtraRaperType()
;if this returns "empty" its not harmfull since its only Bonus Actors
	NymTrace("GetRandomExtraRaperType()")
	
	int Spawn = Utility.RandomInt(1,5)	
	
	if Nym()
	;Spawn = 4 TestGROUP
	endif 
		;Redguards
		if (Spawn == 1) 
		RandomSpawnType = "Redguards"
		RandomSpawnCount = Utility.RandomInt(2,4)
		;Orcs
		elseif (Spawn == 2) 
		RandomSpawnType = "Orcs"
		RandomSpawnCount = Utility.RandomInt(2,4)	
		;Bandits	
		elseif (Spawn == 3) ;&& cfgqst.AllowCreatures && cfgqst.AllowHorses 
		RandomSpawnType = "Bandits"
		RandomSpawnCount = Utility.RandomInt(2,4)	
		;Khajiits
		elseif (Spawn == 4) && cfgqst.AllowArgonKajit		
		RandomSpawnType = "Khajiits"
		RandomSpawnCount = Utility.RandomInt(2,4)	
		;Argonians
		elseif (Spawn == 5) && cfgqst.AllowArgonKajit		
		RandomSpawnType = "Argonians"
		RandomSpawnCount = Utility.RandomInt(2,4)		
		else
		RandomSpawnType = "empty"
		RandomSpawnCount = 0
		endif	
		
Endfunction


Function GetSlaveOwnerType()
;#TODO --- we need to save the SlaveryType!!!
		int Spawn
		;SpawnCount done in Base Function
		if cfgqst.DefeatEntranceVia == "Sold as Slave"
		RandomSpawnType = "Bandits"
		elseif cfgqst.DefeatEntranceVia == "Sold as Public Slave"
		RandomSpawnType = "Farmers"
		endif 
		
Endfunction

Function GetAmbushType()	

		NymTrace("GetAmbushType()")
		int Spawn = Utility.RandomInt(1,4)	
		int i = 0
		
		if Nym()
		i = utility.RandomInt(1,3)
		else 
		i = utility.RandomInt(1,2)
		endif 
		
			if i == 1 
			RandomSpawnType = "Rieklings"	
			RandomSpawnType02 = "Rieklings Mounted"
			RandomSpawnType03 = "Boars"

			cfgqst.DefeatTypeGeneral = "AreHumanoids"
			cfgqst.DefeatType = "Rieklings"
			elseif i == 2
			RandomSpawnType = "Skeevers"	
			RandomSpawnType02 = "Skeevers"
			RandomSpawnType03 = "Skeevers"

			cfgqst.DefeatTypeGeneral = "AreAnimals"
			cfgqst.DefeatType = "Skeevers"
			
			elseif i == 3
			RandomSpawnType = "Dremora"	
			RandomSpawnType02 = "Dremora"
			RandomSpawnType03 = "Dremora"

			cfgqst.DefeatTypeGeneral = "AreHumans"
			cfgqst.DefeatType = "Dremora"		
			
			endif 
		
	;	if (Spawn == 1) && cfgqst.AllowCreatures && cfgqst.AllowCanines	
	;	RandomSpawnType = "Canines"
		
		
		;Skeevers
		;Wolves
		;Orcs
		;Forsworn
		;Bandits


EndFunction 

Function GetRandom_Animal_Rape_Type()
;if this returns "empty" its not harmfull since its only Bonus Actors
		NymTrace("GetRandom_Animal_Rape_Type()")
		int Spawn = Utility.RandomInt(1,4)	

		;DOGS
		if (Spawn == 1) && cfgqst.AllowCreatures && cfgqst.AllowCanines	
		RandomSpawnType = "Canines"
		RandomSpawnCount = Utility.RandomInt(1,4)
		;SKEEVERS -
		elseif (Spawn == 2) && cfgqst.AllowCreatures && cfgqst.AllowSkeevers
		RandomSpawnType = "Skeevers"
		RandomSpawnCount = Utility.RandomInt(1,4)	
		;HORSE	
		elseif (Spawn == 3) && cfgqst.AllowCreatures && cfgqst.AllowHorses && !cfgqst.PlayerRef.IsInInterior()
		RandomSpawnType = "Horse"
		RandomSpawnCount = 1	
		;GOAT
		elseif (Spawn == 4) && cfgqst.AllowGoats		
		RandomSpawnType = "Goat"
		RandomSpawnCount = 1
		;DOGS - Fallback
		elseif cfgqst.AllowCanines	
		RandomSpawnType = "Canines"
		RandomSpawnCount = Utility.RandomInt(1,4)		
		else
		RandomSpawnType = "empty"
		RandomSpawnCount = 0
		endif		
		
Endfunction


Function GetRandom_Animal_Wild_Type()

		int Spawn = Utility.RandomInt(1,5)	 
		
		;Bears
		if (Spawn == 1) && cfgqst.AllowCreatures && cfgqst.AllowBears	
		RandomSpawnType = "Bears"
		RandomSpawnCount = Utility.RandomInt(1,2)
		;Wolves
		elseif (Spawn == 2) && cfgqst.AllowCreatures && cfgqst.AllowCanines
		RandomSpawnType = "Skeevers"
		RandomSpawnCount = Utility.RandomInt(2,4)	
		;Deer	
		elseif (Spawn == 3) && cfgqst.AllowCreatures && cfgqst.AllowDeers 
		RandomSpawnType = "Horse"
		RandomSpawnCount = Utility.RandomInt(1,2)
		;Sabrecats
		elseif (Spawn == 4) && cfgqst.AllowSabrecats		
		RandomSpawnType = "Sabrecats"
		RandomSpawnCount = Utility.RandomInt(1,2)
		;Boars
		elseif (Spawn == 4) && cfgqst.AllowSabrecats		
		RandomSpawnType = "Boars"
		RandomSpawnCount = Utility.RandomInt(1,2)
		else
		RandomSpawnType = "empty"
		RandomSpawnCount = 0
		endif		
		
Endfunction

Function GetRandomMonsterType(bool CreaturesOnly)

		int Spawn 
		
		if CreaturesOnly && cfgqst.AllowCreatures	;carefull, can lead to no groups so we need humans too
		Spawn = Utility.RandomInt(1,11)
		else
		Spawn = Utility.RandomInt(1,14)	 ;12+ are Humans
		endif 
		SpawnedGender = 2
		
		;DRAGONPRIESTS 
		if (Spawn == 1) && cfgqst.AllowCreatures && cfgqst.AllowUndead	
		RandomSpawnType = "DragonPriests"
		RandomSpawnCount = 1
		;ATRONACH STORM 
		elseif (Spawn == 2) && cfgqst.AllowCreatures && cfgqst.AllowElementalsMale
		RandomSpawnType = "Atronach Storm"
		RandomSpawnCount = 1	
		;CORRUPTED SHADE SKELETONS 	
		elseif (Spawn == 3) && cfgqst.AllowCreatures && cfgqst.AllowUndead 
		RandomSpawnType = "CorruptedShadeSkeletons"
		RandomSpawnCount = Utility.RandomInt(2,4)	
		
		;DREMORA (HUMANS)		---> HUMANS CANNOT BE HERE! THEY ARE FILLED IN WRONG GROUP
		;elseif (Spawn == 4) 		
	;	RandomSpawnType = "Dremora"
	;	RandomSpawnCount = Utility.RandomInt(2,4)
	;	SpawnedGender = 0
	
		;GARGOYLES 
		elseif (Spawn == 4 || Spawn == 5 ) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts 			
		RandomSpawnType = "Gargoyles"
		RandomSpawnCount = Utility.RandomInt(1,2)
		;ASHSPAWN -
		elseif (Spawn == 6) && cfgqst.AllowCreatures && cfgqst.AllowUndead 			
		RandomSpawnType = "Ashspawn"
		RandomSpawnCount = Utility.RandomInt(2,4)
		;SEEKERS --
		elseif (Spawn == 7) && cfgqst.AllowCreatures && cfgqst.AllowTentacleStuff
		RandomSpawnType = "Seekers"
		RandomSpawnCount = 1
		;DEATHHOUNDS -	
		elseif (Spawn == 8) && cfgqst.AllowCreatures && cfgqst.AllowCanines
		RandomSpawnType = "DeathHounds"	
		RandomSpawnCount = Utility.RandomInt(2,4)				
		;LURKERS --	
		elseif (Spawn == 9) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts
		RandomSpawnType = "Lurkers"		
		RandomSpawnCount = 1	
		;ATRONACH STORM
		elseif (Spawn == 10) && cfgqst.AllowCreatures && cfgqst.AllowElementalsMale
		RandomSpawnType = "Atronach Frost"
		RandomSpawnCount = 1	

		;ATRONACH Flame  
		elseif (Spawn == 11) && cfgqst.AllowCreatures && cfgqst.AllowElementalsFemale
		RandomSpawnType = "Atronach Flame"
		RandomSpawnCount = 1	
		
		;VAMPIRELORDS --- missing 	(DLC?)
		elseif (Spawn == 22) && cfgqst.AllowCreatures && cfgqst.AllowUndead		
		RandomSpawnType = "VampireLords"
		RandomSpawnCount = 1	

		;TEST Magic ANOMALY 
		
		
		;HUMAN GHOSTS (HUMANS)
		else 
			if D100(50)
			RandomSpawnType = "Human Ghosts"
			SpawnedGender = 0
			RandomSpawnCount = Utility.RandomInt(2,4)
			else 
			RandomSpawnType = "Dremora"
			RandomSpawnCount = Utility.RandomInt(2,4)
			SpawnedGender = 0
			endif 
		endif 
		
		;TODO:
		;WEREWOLVES
		;Monster TROLLS
		;Demonic Creatures!!!

Endfunction

Function ResetSpawnedActors()
;empties SpawnedActors[0]
	Utility.Wait(1.0)
	CalmSpawnedActorGroupAGAIN()

SpawnedActor[0] = none
SpawnedActor[1] = none
SpawnedActor[2] = none
SpawnedActor[3] = none	
SpawnedGender = 0	

NymTrace("Spawn END")
EndFunction

;order
	;01 SpawnActorGroups()
		;02 GetRandom" "Type()
		;03 SpawnActors()
			;04 CalmSpawnedActorGroup()
		;05 FillRapers/FillCreatures	
			;06 ResetSpawnedActors()
Function SpawnActorGroups(String sScenario) 		;#spawn2		;#SpawnActorGroups()

NymTrace("SpawnActorGroups")

int GroupCount = 1	
int iTempDistance

	SpawnedActor = new Actor[4]					
	SpawnedActor[0] = None						 
	SpawnedActor[1] = None						 
	SpawnedActor[2] = None						 
	SpawnedActor[3] = None	
	

	if (sScenario == "FastTravel")	
	;spawns FULL set of Rapers and considers Followers
	;GroupCount = GroupCount + VictimCount
	cfgqst.StartPunishmentEffect("Shock")
	iTempDistance = 300

	GroupCount = 3 ;--- always spawn 3 groups, even when we are alone (more variety)
		
		storqst.SOUND_RitualStart.Play(cfgqst.PlayerRef)
		
		if GroupCount > 0
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
		cfgqst.StartPunishmentEffect("Shock")
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersA()
			elseif SpawnedGender == 2
			FillCreaturesA()
			endif
		endif 
		if GroupCount > 1
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
		cfgqst.StartPunishmentEffect("Shock")
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersB()
			elseif SpawnedGender == 2
			FillCreaturesB()
			endif
		endif
		if GroupCount > 2
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
		cfgqst.StartPunishmentEffect("Shock")
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersC()
			elseif SpawnedGender == 2
			FillCreaturesC()
			endif
		endif
		storqst.BlockPosing = false
		PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
		
	elseif (sScenario == "Afterlife")		
	;spawns FULL set of Rapers and considers Followers
	;GroupCount = GroupCount + VictimCount

	if AfterLifeStairsLocation
	iTempDistance = -350
	else 
	iTempDistance = -800
	endif 
	SpawnActors("Human Ghosts", 4, iTempDistance)
	FillRapersA()
	SpawnActors("Human Ghosts", 4, iTempDistance)
	FillRapersB()
	SpawnActors("Dremora", 4, iTempDistance)
	FillRapersC()
		
		if cfgqst.AllowCreatures
		GroupCount = 3 ;--- always spawn 3 groups, even when we are alone (more variety)
			if GroupCount > 0
			GetRandomMonsterType(true) ;Fills String RandomSpawnType and RandomSpawnCount
			SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
				
			FillCreaturesA()
		
			endif 
			if GroupCount > 1
			GetRandomMonsterType(true) ;Fills String RandomSpawnType and RandomSpawnCount
			SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
		
			FillCreaturesB()
			
			endif
			if GroupCount > 2
			GetRandomMonsterType(true) ;Fills String RandomSpawnType and RandomSpawnCount
			SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)

			FillCreaturesC()
			
			endif	
		endif 	
	
	elseif (sScenario == "Ambush")	
	;GroupCount = GroupCount + VictimCount	
		
		GetAmbushType()	
		
		SpawnActors(RandomSpawnType, 4, -250)
		FillCreaturesA()
		
		SpawnActors(RandomSpawnType02, 2, -250)
		FillCreaturesB()	

		SpawnActors(RandomSpawnType03, 1, -250)
		FillCreaturesC()	
		

		
		
	elseif (sScenario == "Slave Owners")
	;spawns FULL set of Rapers and considers Followers -- nothing found at Location
	GroupCount = GroupCount + VictimCount
	GetSlaveOwnerType() ;Fills String sRandomTypes and iRandomCount
		if GroupCount > 0
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,4), 250)
		FillRapersA()
		endif
		if GroupCount > 1
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,4), 250)
		FillRapersB()
		endif
		if GroupCount > 2
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,4), 250)
		FillRapersB()
		endif
		;Slavery Creatures Extra
		GetRandom_Animal_Rape_Type()
		SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
		FillCreaturesA()

	elseif (sScenario == "Extra Animals") ;&& cfgqst.NymSpawning	
		;NymTrace("(sScenario == Extra Animal, GetRandomExtraAnimalType()s)")
		GetRandom_Animal_Rape_Type()
		;NymTrace("(sScenario == Extra Animals, Spawn Actors)")
		SpawnActors(RandomSpawnType, RandomSpawnCount, 250)	;RandomSpawnCount = 1
		;NymTrace("(sScenario == Extra Animals, FillCreaturesA())")
		FillCreaturesA()

	elseif (sScenario == "Extra Wild Animals") ;&& cfgqst.NymSpawning	
		GetRandom_Animal_Wild_Type()
		SpawnActors(RandomSpawnType, RandomSpawnCount, 250)	;RandomSpawnCount = 1
		FillCreaturesF()

	elseif (sScenario == "Extra Rapers") ;&& cfgqst.NymSpawning
		;NymTrace("(sScenario == Extra Rapers, GetRandomExtraRaperType())")
		GetRandomExtraRaperType()
		
		bool RunTest = false 
		if RunTest
		RandomSpawnType = "TEST"
		RandomSpawnCount = 4
		;iDistance = 125
		NymTrace("sType: "+RandomSpawnType+" Count: "+RandomSpawnCount)
		SpawnActors(RandomSpawnType, RandomSpawnCount, 125)
		FillRapersC()
		else 
		SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
		FillRapersC()
		endif 
	elseif (sScenario == "Extra Hagravens") ;&& cfgqst.NymSpawning
		;GetRandomExtraRaperType()
		RandomSpawnType = "Forsworn"
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,4), 250)
		FillRapersC()	
		
		RandomSpawnType = "Spriggan Burnt"
		SpawnActors(RandomSpawnType, 1, 250)
		FillCreaturesF()
		
	elseif (sScenario == "Extra Undead") ;&& cfgqst.NymSpawning
		;GetRandomExtraRaperType()
		int i = Utility.RandomInt(1,8)
		
		if i < 3
		RandomSpawnType = "Skeletons"
		SpawnActors(RandomSpawnType, Utility.RandomInt(2,4), 250)
		FillCreaturesF()	
		elseif i == 3
		RandomSpawnType = "Gargoyles"
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,2), 250)
		FillCreaturesF()
		elseif i == 4
		RandomSpawnType = "DragonPriests"
		SpawnActors(RandomSpawnType, 1, 250)
		FillCreaturesF()	
		elseif i == 5
		RandomSpawnType = "CorruptedShadeSkeletons"
		SpawnActors(RandomSpawnType, Utility.RandomInt(1,2), 250)
		FillCreaturesF()	
		elseif i == 6
		RandomSpawnType = "DeathHounds"
		SpawnActors(RandomSpawnType, 4, 250)
		FillCreaturesF()			
		elseif i > 6
		RandomSpawnType = "DeathHounds"
		SpawnActors(RandomSpawnType, 4, 250)
		FillCreaturesF()	
		endif	
		
		;RapersUndead	 "Skeletons"	"Gargoyles" "DragonPriests"	 "CorruptedShadeSkeletons" "DeathHounds" "Ashspawn"
		
		
	;	RandomSpawnType = "Skeletons"		
	;	SpawnActors(RandomSpawnType, Utility.RandomInt(2,4), 250)
	;	FillCreaturesE()	

	elseif (sScenario == "Extra Giants") ;&& cfgqst.NymSpawning
		;GetRandomExtraRaperType()
		
		RandomSpawnType = "Giants Male"
		SpawnActors(RandomSpawnType, Utility.RandomInt(2), 250)
		FillCreaturesE()	
		
		RandomSpawnType = "Giants Male"
		SpawnActors(RandomSpawnType, 2, 250)
		FillCreaturesF()	
	;	RandomSpawnType = "Skeletons"		
	;	SpawnActors(RandomSpawnType, Utility.RandomInt(2,4), 250)
	;	FillCreaturesE()	
	
		
	endif 

EndFunction			
	
bool spawned_END = false	


;ActorBase function GetActorBase()
;	return GetBaseObject() as ActorBase
;EndFunction
	
Function SpawnActors(String sType, int iRaperCount, int iDistanceBase)			;#lib		#SpawnActors

int iDistance = iDistanceBase

;/
if Nym()

iDistance = 0 - iDistance

NymTrace("iDistance: "+iDistance) 

endif 
/;

NymTrace("SpawnActors: "+sType)
;fills SpawnedActors[0]
;provies ALL Actors as strings and Groups up to 4
;ObjectReference SpawnedActor


;WEREBEAR TEST LOL!	 040322B1 

;EBONY WARRIOR : 040285C3

;SPRIGGAN COMPATNION 0001E7C6 TEST
;SPRIGGAN GUARD 00022837 TEST
;SPRIGGAN COMPATNION SNOW 00025D3B TEST
;SPRIGGARN 0002B710

;Hagraven Companion
;0004B473 - TEST

;VAMPIRES:
;Vampire BossBretonM 0002E1DC 
;Vapire BossNordM 0002E1E2 
;Vampire dark Elf Boss 0002E1F8
;Vampire BOSS  high helf 0002EA9C

;normal Vampire: 0002F9E1 
;normal Vampire Booss: 0002F9E2 

;WEREWOLF 0001E7CC 
;CHAUSURS 0001FA28

;DRAUGR MELEE 0001FB8F
;DRAUGR MELEE 0001FB90

;Giant02 00030437
;Giant03 00030438
;LvLGiant 0003053F

;Falmer MeleeGuard 0003E080
;FalmerShaman 0003E081
;FalmerBoss 0003E082

	;Painted Cow 000C39F1
	
		;WEREWOLF
		;000A1980
		;00023ABC
		
		;ICE WRAITH
		;00084095
		
		;TROLL FROST
		;000F4C90
		
		;FAST TRAVEL ---- 
		;SPRIGGAN (Dawngarud)			;02013B74 Dawnguard.esm 

		;Netch? (betty netch) 			;0401B649 Dragonborn.esm	
		;Netch? (bull netch) 			;0402857E Dragonborn.esm
		;Netch				 			;0402173B Dragonborn.esm
	
		;INTERRACIAL HUMAN ACTORS:
		
		;SKyrim.esm: 
		
		;REDGIARD ALIRK COCKS ALIRK ENCOUNTER 
		;00067641
		;00067642
		;00067645
		;00067648
	
		;BOUNTY HUNTERS 
		;WEBountyHunterBoss "Bounty Hunter" [NPC_:000BC09F]
		;WEBountyHunterMissile "Bounty Hunter" [NPC_:000BC0A0]
		;WEBountyHunterWizard "Bounty Hunter" [NPC_:000BC0A1]

		;Glowing Spider (Dragonborn)	;04027495 Dragonborn.esm
	;------
		
	;rieeklings are Dragonborn ESM 
		
		;Ashhopper 04028E89 	Dragonborn.esm

		;GIANT ;0008BEE6
		;Giant NON Aggro 0010157F
				
		;Dwarven Sphere 0010EC92
		;Drawen Spider 0010EC91
		;Dwarven Automaton 0010EC93
		;Dwarven Centurion  0010FCE6	

;ICEwraith 00084095

; AFFLICTED?
;Afflicted  00064A4A
;Affliced2 00064A48
;Affliced2 00064A80
;Affliced2 00064A47


;Alirk Melee (Arabs?) 00067672

;Thalmor  00072883
;Thalmor  000728AE Magic

;/
;LIST:
;	"Human Ghosts"
; --- Foul Creatures --- ;
;	"Gargoyles"
;	"DragonPriests"
;	 "CorruptedShadeSkeletons"
;	 "DeathHounds"
;	 "Atronach Frost"
;	 "Atronach Storm"
;	 "Atronach Flame"
;	 "Seekers"
;	 "Lurkers"
;	"Dremora"
;	"Skeletons"

; --- Extra Cocks ----;
;	 "Orcs"
;	 "Forsworn"
;	 "Couriers"
;	 "Farmers"
;	 "Nobles"
;	 "Redguards"
;	 "Bandits"
;	 "Khajiits"
;	 "Argonians"

;	 "Canines" - should be Dogs
;	 "Skeevers"
;	 "Goat"
;	 "Horse"
;	 "Magic Anomaly"

;		"Rieklings"
;	"Rieklings Mounted"

;	"Ashhoppers
; 	"Spriggan Burnt"

;--- Wild ANIMALS--- M
;	 "Bears"
;	 "Deer"
;	 "Wolves"
;	 "Sabrecats"
;	 "Boars"
;	 "aa"
;	 "aa"
;	 "aa"

/;
if sType == "Human Ghosts"		;Groupsize 1-4
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F96, "Skyrim.esm"), 1)		;LvlBanditGhostMelee1HMale
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F97, "Skyrim.esm"), 1)		;LvlBanditGhostMelee2HMale
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F98, "Skyrim.esm"), 1)		;LvlBanditGhostMeleeBerserkerMale
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F99, "Skyrim.esm"), 1)		;LvlBanditGhostMeleeTankMale
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
	
elseif sType == "Chaurus"		;Groupsize 1-2
	;LVLChaurus Ambush 0007932F
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001FA28, "Skyrim.esm"), 1)		;LVLChaurus 0001FA28
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001FA28, "Skyrim.esm"), 1)		;LVLChaurus 0001FA28
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Sabrecats"		;Groupsize 1-2

	;SabreCatLeveled 000FE2D6

	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0003D278, "Skyrim.esm"), 1)		;Sabrecat Ravenscar - TEST
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0003D278, "Skyrim.esm"), 1)		;Sabrecat Ravenscar Ambush- TEST
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Spriggan Burnt"		;Groupsize 1

	iRaperCount = 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04035E6E, "Dragonborn.esm"), 1)		;DLC2EncSprigganBurnt
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

	
elseif sType == "Bears"		;Groupsize 1-2

	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00042265, "Skyrim.esm"), 1)		;LVLBearAll
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7A4, "Skyrim.esm"), 1)		;LVLBearNoTSnow
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif


elseif sType == "Deer"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000ABEE0, "Skyrim.esm"), 1)		;Deer
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000ABEE0, "Skyrim.esm"), 1)		;Deer
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Rieklings"		;Groupsize 2-4
	;iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0201B650, "Dragonborn.esm"), 1)		;Riekling Missile		
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0201B651, "Dragonborn.esm"), 1)		;Riekling Missile
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0201B652, "Dragonborn.esm"), 1)		;Riekling Missile
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0201B656, "Dragonborn.esm"), 1)		;Riekling Melee
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Rieklings Mounted"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04025E18, "Dragonborn.esm"), 1)		;LVLMountedRiekling
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04025E11, "Dragonborn.esm"), 1)		;LVLMountedRiekling BOSS
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Ashhoppers"		;Groupsize 2-4
	;iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Boars"		;Groupsize 2-4  Boars for Rieklings
	;iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0202403B, "Dragonborn.esm"), 1)		;DLC2EncBoar01  
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0202403B, "Dragonborn.esm"), 1)		;DLC2EncBoar01
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0202403B, "Dragonborn.esm"), 1)		;DLC2EncBoar01
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0202403B, "Dragonborn.esm"), 1)		;DLC2EncBoar01
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
	
elseif sType == "Werewolves"		;Groupsize 1-2
	
	if iRaperCount == 4
	
	else 
	iRaperCount = Utility.RandomInt(1,2)
	endif 
	
	;LvLWerewolfBoss 000A1980
	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7CC, "Skyrim.esm"), 1)		;LvlWerewolf
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7CC, "Skyrim.esm"), 1)		;LvlWerewolf
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7CC, "Skyrim.esm"), 1)		;LvlWerewolf
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7CC, "Skyrim.esm"), 1)		;LvlWerewolf
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Wolves"		;Groupsize 2-4
	
	if iRaperCount == 4
	else 
	iRaperCount = Utility.RandomInt(2,4)
	endif 
	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Skeletons"		;Groupsize 2-4			;RapersUndead	 "Skeletons"	"Gargoyles" "DragonPriests"	 "CorruptedShadeSkeletons" "DeathHounds" "Ashspawn"

	;FOR AMBUSH: LvLSkeletonMeleeMxed 000BCCC7 

	iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Gargoyles"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMelee1HMale
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMelee2HMale
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMeleeBerserkerMale
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMeleeTankMale
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "DragonPriests"		;Groupsize 1
	iRaperCount = 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C8, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcFire
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C9, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcShock
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008DC3E, "Skyrim.esm"), 1)		;EncDragonPriestStaff
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008DC3E, "Skyrim.esm"), 1)		;EncDragonPriestStaff
	SpawnedActor[31] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "CorruptedShadeSkeletons"		;Groupsize 1-4 DA08 Necro Skeleton effect

	
		if iRaperCount > 0
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00006AF0, "Dawnguard.esm"), 1) ;SHADE - no Legs	
		SpawnedActor[0] = TempAnActor as actor
		SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 1
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00006AF1, "Dawnguard.esm"), 1) ;SHADE - only arms	
		SpawnedActor[1] = TempAnActor as actor
		SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 2
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00006AF0, "Dawnguard.esm"), 1) ;SHADE - no Legs	
		SpawnedActor[2] = TempAnActor as actor
		SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 3
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00006AF1, "Dawnguard.esm"), 1) ;SHADE - only arms	
		SpawnedActor[3] = TempAnActor as actor
		SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
	
	 ;/
		if iRaperCount > 0
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB870, "Skyrim.esm"), 1)		;
		SpawnedActor[0] = TempAnActor as actor
		SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 1
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB876, "Skyrim.esm"), 1)		;
		SpawnedActor[1] = TempAnActor as actor
		SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 2
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EBA05, "Skyrim.esm"), 1)		;
		SpawnedActor[2] = TempAnActor as actor
		SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 3
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000F5BB9, "Skyrim.esm"), 1)		;
		SpawnedActor[3] = TempAnActor as actor
		SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif	
 /;

elseif sType == "Ashspawn"		;Groupsize 1-4

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "DeathHounds"	;Groupsize 1-4

	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif


elseif sType == "Atronach Frost"	;Groupsize 1 
	
	iRaperCount	= 1	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA7, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Atronach Storm"	;Groupsize 1 
	
	iRaperCount	= 1	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Seekers"	;Groupsize 1 
	
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Lurkers"		;Groupsize 1  

	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Dremora"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010CCEA, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010CCEA, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Orcs"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9447, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9447, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00062128, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00062128, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Forsworn"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0004430A, "Skyrim.esm"), 1)		;Forsworn Briarheart Magic
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00043BEE, "Skyrim.esm"), 1)		;Forsworn Forager Melee
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00044263, "Skyrim.esm"), 1)		;Forsworn Looter Melee
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00044287, "Skyrim.esm"), 1)		;Forsworn Ravager Melee
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif		
	
elseif sType == "Couriers"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00039F83, "Skyrim.esm"), 1)		;Courier Whiterun
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065EE, "Skyrim.esm"), 1)		;Courier WoodElf
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065EF, "Skyrim.esm"), 1)		;Courier Nord
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065E0, "Skyrim.esm"), 1)		;Courier Imperial
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Farmers"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000BD75E, "Skyrim.esm"), 1)		;Farmer Male
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E4, "Skyrim.esm"), 1)		;Farmer Male
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00106A61, "Skyrim.esm"), 1)		;Farmer Male Twins
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00106A61, "Skyrim.esm"), 1)		;Farmer Male Twins
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Nobles"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00102D62, "Skyrim.esm"), 1)		;Noble Male
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92D, "Skyrim.esm"), 1)		;Nobleman
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A930, "Skyrim.esm"), 1)		;Old Noble
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00102D62, "Skyrim.esm"), 1)		;Noble Male
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Redguards"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92F, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Bandits"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00015BE5, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0BC, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Khajiits"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105553, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00109A7F, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105551, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00103515, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Argonians"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105554, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105561, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010612D, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105552, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Canines"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Thiefs"		;Groupsize 1-4 
	;Thief Ranged: 001051F1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E7, "Skyrim.esm"), 1)		;LvLWEThief
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E7, "Skyrim.esm"), 1)		;LvLWEThief
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E7, "Skyrim.esm"), 1)		;LvLWEThief
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E7, "Skyrim.esm"), 1)		;LvLWEThief
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
elseif sType == "Skeevers"		;Groupsize 1-4 

	
		if iRaperCount > 0
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000490F2, "Skyrim.esm"), 1)		;VenomFang Skeever (Lvl 7 unleveled)
		SpawnedActor[0] = TempAnActor as actor
		SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 1
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000490F2, "Skyrim.esm"), 1)		;VenomFang Skeever (Lvl 7 unleveled)
		SpawnedActor[1] = TempAnActor as actor
		SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 2
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000490F2, "Skyrim.esm"), 1)		;VenomFang Skeever (Lvl 7 unleveled)
		SpawnedActor[2] = TempAnActor as actor
		SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 3
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000490F2, "Skyrim.esm"), 1)		;VenomFang Skeever (Lvl 7 unleveled)
		SpawnedActor[3] = TempAnActor as actor
		SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif	
		
		;/
		if iRaperCount > 0
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;Skeever LvL 1 unleveled
		SpawnedActor[0] = TempAnActor as actor
		SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 1
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;Skeever LvL 1 unleveled
		SpawnedActor[1] = TempAnActor as actor
		SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 2
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;Skeever LvL 1 unleveled
		SpawnedActor[2] = TempAnActor as actor
		SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif
		if iRaperCount > 3
		TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;Skeever LvL 1 unleveled
		SpawnedActor[3] = TempAnActor as actor
		SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
		endif	
	endif 	
	/;

elseif sType == "Goat"		;Groupsize 1

	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0004359C, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

elseif sType == "Horse"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	

elseif sType == "Magic Anomaly"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B6F94, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Atronach Flame"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0009F33E, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
	
elseif sType == "Giants Male"		;Groupsize 1
	;iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00000847, "CreatureSummoner.esp"), 1)		;Giant
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00000848, "CreatureSummoner.esp"), 1)	;Giant 1
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif
	
elseif sType == "Giants Female"		;Groupsize 1
	;iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0000084A, "CreatureSummoner.esp"), 1)		;Giantess
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif	
	
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0000084A, "CreatureSummoner.esp"), 1)	;Giantess
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, abMatchRotation = false)
	endif

endif 

Float zOffsetB

if !IsAmbush
	if SpawnedActor[0]
	
		while !SpawnedActor[0].Is3DLoaded() && cfgqst.ModEnabled
		Utility.Wait(0.1)
		endwhile 
	
		zOffsetB = SpawnedActor[0].GetHeadingAngle(cfgqst.PlayerRef)
		SpawnedActor[0].SetAngle(0.0, 0.0, SpawnedActor[0].GetAngleZ() + zOffsetB)
	
	PlaySummonEffect(SpawnedActor[0])
	endif
	if SpawnedActor[1]
	
		while !SpawnedActor[1].Is3DLoaded() && cfgqst.ModEnabled
		Utility.Wait(0.1)
		endwhile 
		
		zOffsetB = SpawnedActor[1].GetHeadingAngle(cfgqst.PlayerRef)
		SpawnedActor[1].SetAngle(0.0, 0.0, SpawnedActor[1].GetAngleZ() + zOffsetB)
	
	PlaySummonEffect(SpawnedActor[1])
	endif
	if SpawnedActor[2]
	
		while !SpawnedActor[2].Is3DLoaded() && cfgqst.ModEnabled
		Utility.Wait(0.1)
		endwhile 
		
		zOffsetB = SpawnedActor[2].GetHeadingAngle(cfgqst.PlayerRef)
		SpawnedActor[2].SetAngle(0.0, 0.0, SpawnedActor[2].GetAngleZ() + zOffsetB)
	PlaySummonEffect(SpawnedActor[2])
	endif
	if SpawnedActor[3]
		while !SpawnedActor[3].Is3DLoaded() && cfgqst.ModEnabled
		Utility.Wait(0.1)
		endwhile 
		
		zOffsetB = SpawnedActor[3].GetHeadingAngle(cfgqst.PlayerRef)
		SpawnedActor[3].SetAngle(0.0, 0.0, SpawnedActor[3].GetAngleZ() + zOffsetB)
		
	PlaySummonEffect(SpawnedActor[3])
	endif
endif

if IsAmbush 
NymTrace("AMBUSH: is Ambush")
HarmonizeSpawnedActorGroup()
else 
NymTrace("AMBUSH: NO Ambsush")
CalmSpawnedActorGroup()
endif 

EndFunction 


bool Property IsAmbush Auto

;#follower handling
float Victim_00_speed = 0.0
Bool NeedRapersForSlavery = false
Bool NeedCreaturesForSlavery = false

Bool ActorsSpawned = false 

bool RapersABlocked = false
bool RapersBBlocked = false
bool RapersCBlocked = false
Bool CreaturesABlocked = false
Bool CreaturesBBlocked = false
Bool CreaturesCBlocked = false
Bool CreaturesDBlocked = false
Bool CreaturesEBlocked = false
Bool CreaturesFBlocked = false



;---------------- SortActors Function ------------------------------

Function SortActors()			;does this mean the numbers from the "call" are reverted to 0?)					#SortActors()
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SortActors(START)")
;ScreenMessage("Your captors need some time to decide who goes first...")
InfoMessage("If this takes too long, try enabling LagFix in MCM or open console for some seconds")
	
;	STAGE 
	Actor a										;INDEX IS WRONG I THINK
	bool RapersAareGuards = false
	
	;GroupCountHumans = 0
	;GroupCountCreatures = 0
	
	if cfgqst.CivilRapeRunning		;WHAT IS THIS AND WHY?
		while CalmRunning && cfgqst.ModEnabled 
		Utility.Wait(2.0)
		endwhile
	endif
		
	;PUBLIC PUNISHMENT ---> CALM Function searches for Guards and puts them as RapersA...
	;if no Guards found, we need normal rapers
	
	;WAS NYM()
	if ActorsSpawned
	;do nothing here or we delete the groups and the Naked Spawned actors remain
	
	else 
		;Bool RapersABlocked = false
		
		if cfgqst.SpawnedGroups[0] == 0	
		
			if cfgqst.CivilRapeRunning && (RapersACount == 0)
			RapersA = new Actor[4]					
			RapersA[0] = None						 
			RapersA[1] = None						 
			RapersA[2] = None						 
			RapersA[3] = None	
			RapersACount = 0
			
			;Guards are now a Group for RapersA
			elseif cfgqst.CivilRapeRunning && (RapersACount > 0)
			RapersAareGuards = true
			;if Not public punishment or no Guards found, we are here
			else
			
			RapersA = new Actor[4]					
			RapersA[0] = None						 
			RapersA[1] = None						 
			RapersA[2] = None						 
			RapersA[3] = None	
			RapersACount = 0
			
			endif
		endif 
		
		if cfgqst.SpawnedGroups[1] == 0	
		RapersB = new Actor[4]					
		RapersB[0] = None						 
		RapersB[1] = None						 
		RapersB[2] = None						 
		RapersB[3] = None	
		RapersBCount = 0
		;Bool RapersBBlocked = false
		endif 

		if cfgqst.SpawnedGroups[2] == 0			
		RapersC = new Actor[4]					
		RapersC[0] = None						 
		RapersC[1] = None						 
		RapersC[2] = None						 
		RapersC[3] = None	
		RapersCCount = 0
		;Bool RapersCBlocked = false
		endif		
		if cfgqst.SpawnedGroups[3] == 0	
		CreaturesA = new Actor[4]					
		CreaturesA[0] = None						 
		CreaturesA[1] = None						 
		CreaturesA[2] = None						 
		CreaturesA[3] = None	
		CreaturesACount = 0
		;Bool CreaturesABlocked = false
		endif		
		if cfgqst.SpawnedGroups[4] == 0	
		CreaturesB = new Actor[4]					
		CreaturesB[0] = None						
		CreaturesB[1] = None						
		CreaturesB[2] = None						
		CreaturesB[3] = None	
		CreaturesBCount = 0
		;Bool CreaturesBBlocked = false
		endif		
		if cfgqst.SpawnedGroups[5] == 0	
		CreaturesC = new Actor[4]					
		CreaturesC[0] = None						 
		CreaturesC[1] = None						 
		CreaturesC[2] = None						 
		CreaturesC[3] = None	
		CreaturesCCount = 0
		endif
		;Bool CreaturesCBlocked = false
		if cfgqst.SpawnedGroups[6] == 0	
		CreaturesD = new Actor[4]					
		CreaturesD[0] = None						 
		CreaturesD[1] = None						 
		CreaturesD[2] = None						 
		CreaturesD[3] = None	
		CreaturesDCount = 0
		;Bool CreaturesDBlocked = false
		endif		
		if cfgqst.SpawnedGroups[7] == 0	
		CreaturesE = new Actor[4]					
		CreaturesE[0] = None						 
		CreaturesE[1] = None						 
		CreaturesE[2] = None						 
		CreaturesE[3] = None	
		CreaturesECount = 0
		;Bool CreaturesEBlocked = false
		endif		
		if cfgqst.SpawnedGroups[8] == 0	
		CreaturesF = new Actor[4]					
		CreaturesF[0] = None						 
		CreaturesF[1] = None						 
		CreaturesF[2] = None						 
		CreaturesF[3] = None	
		CreaturesFCount = 0
		;Bool CreaturesFBlocked = false
		endif		
		if cfgqst.SpawnedGroups[9] == 0	
		SpawnedActor = new Actor[4]					
		SpawnedActor[0] = None						 
		SpawnedActor[1] = None						 
		SpawnedActor[2] = None						 
		SpawnedActor[3] = None	
		endif
	endif 

	
	;>>>>>>>>>>>>>>>>> SPAWN RAPERS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
	;/
	
	1. spawn MORE RAPERS 
	We add more actors when there are not many (Rapers C empty)
	
	2. spawn ANY RAPERS AT ALL 
	Spawn Rapers in Situations where there SHOULD be some (Slavery, Traps etc.)
	
	3. spawn SPECIAL RAPERS 
	For Scenarios like Fast Travel Ritual, Ork Gangbang or similar.
	
	4. spawn CREATURES when we only have boring HumanZ (only outside scenarios for now)
	
	PROCEDURE:
	This "Blocks" Actor Groups from filling with other NPC further down, preventing oddities etc.
	This means Spawned Actors always have a higher priority.
	
	/;
	
	
	Bool NewSpawnSystem = false
	;bool SpawnStuff = false
	
;	if cfgqst.IsNymrasGame()
	NewSpawnSystem = true
;	endif 

;#####################################################################################################################################################################
	if NewSpawnSystem  		;#spawn1
	;this spawns the groups needed, calms them and sorts them into RapersX and CreaturesX 
		
		NymTrace("NeedRapersForSlavery: "+NeedRapersForSlavery+" cfgqst.RapeAgain = "+cfgqst.RapeAgain)
		
		if cfgqst.RapeAgain
		NymTrace("RapeAgain")
		;DO nothing - we do not spawn new Actors When we do RapeAgain
		else 
		
			;AFTERLIFE FOWL CREATURES
			if cfgqst.DefeatTypeScenario == "Afterlife" ; ---> ALWAYS SPAWN
			;NymMessage("Spawn Afterlife")
			SpawnActorGroups("Afterlife")
			ActorsSpawned = true
			;FAST TRAVEL FOWL CREATURES
			elseif cfgqst.DefeatTypeScenario == "FastTravel" ; ---> ALWAYS SPAWN
			;NymMessage("Spawn FastTravel")
			SpawnActorGroups("FastTravel")
			ActorsSpawned = true
			elseif cfgqst.DefeatEntranceVia == "Ambush" ; ---> ALWAYS SPAWN
			NymTrace("Spawn Ambush")
			SpawnActorGroups("Ambush") ;TEST MOVED EARLIER
			ActorsSpawned = true
			
			;EXTRA RAPERS / CREATURES for Human Scenarios
			elseif cfgqst.DefeatTypeGeneral == "AreHumans" && cfgqst.DefeatType != "Undead" && cfgqst.DefeatType != "Vampires" && cfgqst.DefeatType != "Necromancers"
				
					if NeedRapersForSlavery	; ---> ALWAYS SPAWN
					NymMessage("Spawn Slave Owners")
					SpawnActorGroups("Slave Owners")
					ActorsSpawned = true			
				
					elseif cfgqst.NymSpawning

						if NeedCreaturesForSex ;&& D100(75)
						;NymTrace("Spawn START 1")
						;NymMessage("Spawn Extra Animals")
						SpawnActorGroups("Extra Animals")
						ActorsSpawned = true
						endif 	
						Utility.Wait(1.0)
						if (RapersMale < 3) && D100(25)
						;NymTrace("Spawn START 2")
						;NymMessage("Spawn Extra Rapers")
						SpawnActorGroups("Extra Rapers")	
						ActorsSpawned = true
						endif
					endif 
			
			;EXTRA FORSWORN FOR HAGRAVEN SCENARIO
			elseif cfgqst.DefeatType == "Hagravens" && cfgqst.NymSpawning
			NymMessage("Spawn Extra Rapers for Hagravens")
			SpawnActorGroups("Extra Hagravens")
			ActorsSpawned = true
			elseif cfgqst.DefeatType == "Spriggans" && cfgqst.NymSpawning
			NymMessage("Spawn Extra Rapers for Spriggans")
			SpawnActorGroups("Extra Wild Animals")	
			ActorsSpawned = true
			elseif cfgqst.DefeatType == "Undead" && cfgqst.NymSpawning
			NymMessage("Spawn Extra Rapers for Undead")
			SpawnActorGroups("Extra Undead")	
			ActorsSpawned = true
			
			elseif cfgqst.DefeatType == "Giants" && cfgqst.NymSpawning
			NymMessage("Spawn Extra Rapers for Giants")
			SpawnActorGroups("Extra Giants")	
			ActorsSpawned = true
			
			;SLAVE OWNERS 
			elseif NeedRapersForSlavery ; ---> ALWAYS SPAWN
			SpawnActorGroups("Slave Owners")	;improve to fit scenario better
			ActorsSpawned = true
			
			endif 
		endif 
	endif 

	;#####################################################################################################################################################################


		;DOG 0x00023A92

		
	;<<<<<<<<<<<<<<<< SPAWN RAPERS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	
		
		
	; >>>>>> CALM ALL ACTORS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	;we do NOT do this for FastTravel or AfterLife - in that case we want a set type of actors only 
	
	;search for #whippers
;	Whippers = new Actor[3]					
;	Whippers[0] = None
;	Whippers[1] = None
;	Whippers[2] = None

	;int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########
	int i = ActorArray.Length 
	
	String aName
	Bool aIsValid = false 
	Bool NewWhile = true 
	
	;int j = 12
	
	;if neither afterlife nor fast travel 
	if (cfgqst.DefeatTypeScenario != "Afterlife") && (cfgqst.DefeatTypeScenario != "FastTravel")
	
;-------- NEW WHILE
 
		if NewWhile 
		
			while i							
				i -= 1		
				a = ActorArray[i].GetReference() as Actor
				aIsValid = false 	

				int aGender 
				bool ThisWomanIsWhipper = false
				;1 = female
				;0 = male
				;2 = creature

				if a
				aGender = SexLab.GetGender(a)
				else 
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CALM - No Actor!")  
				aGender = 404
				endif 
				
				if aGender == 2	;get creature Name
				aName = cfgqst.GetLeveledActorBaseName(a)
				elseif aGender < 2 	;get human name
				aName = a.GetBaseObject().GetName()
				endif 
				
				if folqst.IsPresentFollower(a) 
				
					if a.IsInFaction(WhippingFaction)
					a.RemoveFromFaction(WhippingFaction)
					endif 
				elseif !WhipperFound && !storqst.NeedaWhipper && aGender == 1 && !folqst.IsPresentFollower(a) && (cfgqst.DefeatWhipProb > 0) 

				a.Addtofaction(WhippingFaction)
				storqst.NeedaWhipper = false
				WhipperFound = true
				ThisWomanIsWhipper = true 
				endif 
			
				;::::::::::: SORT FEMALES :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
				if (aGender == 1) && cfgqst.FemalesAllowed && !ThisWomanIsWhipper																																									

					if cfgqst.AllowActor(a, 1, aName)	;disallowed Actors are Traced in the AllowActorFunction
					
	
						;get a Raper to Group B for Follower01 - ONLY IF GROUP IS EMPTY 
						if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						RapersBFemaleCount += 1
						
						NeedARaper = false	
						;get a Raper to Group C for Follower02 - ONLY IF GROUP IS EMPTY! 
						elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersCBlocked																				
						RapersC[RapersCCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+aName)
							endif
						RapersCCount += 1
						RapersCFemaleCount += 1
						
						NeedAnotherRaper = false
						elseif RapersACount < 4	&& !RapersABlocked
						RapersA[RapersACount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+aName)
							endif

						RapersACount += 1
						RapersAFemaleCount += 1
						
						elseif RapersBCount < 4 && !RapersBBlocked							
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						RapersBFemaleCount += 1
						
						elseif RapersCCount < 4	&& !RapersCBlocked						
						RapersC[RapersCCount] = a	 							
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+aName)
							endif
						RapersCCount += 1
						RapersCFemaleCount += 1
						endif

					endif	
					
					
				;::::::::::: SORT MALES :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
				elseif aGender == 0 ;&& cfgqst.MalesAllowed 	

					if cfgqst.AllowActor(a, 1, aName) ;disallowed Actors are Traced in the AllowActorFunction
					
						;get a Raper to Group B for Follower01
						if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						NeedARaper = false
						;get a Raper to Group C for Follower02
						elseif NeedAnotherRaper && RapersBCount > 0	&& RapersCCount == 0 && !RapersBBlocked																			
						RapersC[RapersCCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+aName)
							endif
						RapersCCount += 1
						NeedAnotherRaper = false
						;sort RapersA (if no guards found)
						elseif !RapersAareGuards && RapersACount < 4 && !RapersABlocked
						RapersA[RapersACount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+aName)
							endif
						RapersACount += 1
						elseif RapersBCount < 4 && !RapersBBlocked						
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						elseif RapersCCount < 4	&& !RapersCBlocked					
						RapersC[RapersCCount] = a	
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else	
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))		
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+aName)	
							endif
						RapersCCount += 1	

						endif	

					endif								
										
				;::::::::::: SORT CREATURES :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::																
				elseif (aGender == 2) && cfgqst.AllowCreatures 
				
					if !a.IsInFaction(PlayerFaction) ; && AllowActor(a) ;<----- new hitter detection
						;asign a racekey to each group based on scanned Creatures - each group gets ONE Racekey asigned and is then false
						if cfgqst.AllowActor(a, 2, aName)	
						
	
							if CreaturesARace == "empty"
							CreaturesARace = GetRaceKey(a) 								;fill in RacesA
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesARace #"+CreaturesARace)
							elseif (CreaturesBRace == "empty") && (CreaturesARace != GetRaceKey(a))
							CreaturesBRace = GetRaceKey(a) 								;fill in RacesB
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesBRace #"+CreaturesBRace)
							elseif (CreaturesCRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a))
							CreaturesCRace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesCRace #"+CreaturesCRace)
							
							elseif (CreaturesDRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a))
							CreaturesDRace = GetRaceKey(a) 								;fill in RacesB
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesDRace #"+CreaturesDRace)
							elseif (CreaturesERace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a))
							CreaturesERace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesERace #"+CreaturesERace)
							elseif (CreaturesFRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a)) && (CreaturesERace != GetRaceKey(a))	
							CreaturesFRace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesFRace #"+CreaturesFRace)
																					
							endif	
					
							;asign a Creature to Group B for Follower01
							;overwrites the above racekey
							if NeedARaper && CreaturesACount > 0
							CreaturesB[CreaturesBCount] = a		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesB #"+CreaturesBCount+": "+aName)		
									endif								

							CreaturesBCount += 1
							NeedARaper = false
							CreaturesBRace = GetRaceKey(a) 
					
							;asign a Creature to Group C for Follower02
							;overwrites the above racekey
							elseif NeedAnotherRaper && CreaturesBCount > 0																				
							CreaturesC[CreaturesCCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesC #"+CreaturesCCount+": "+aName)													
									endif		
							CreaturesCCount += 1
							NeedAnotherRaper = false
							CreaturesCRace = GetRaceKey(a) 
					
							;asign a creature to a group based on matching RaceKeys
							elseif (GetRaceKey(a) == CreaturesARace) && (CreaturesACount < 4)
							CreaturesA[CreaturesACount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesA #"+CreaturesACount+": "+cfgqst.GetActorInfo(CreaturesA[CreaturesACount]))
									else		
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesA #"+CreaturesACount+": "+aName)			
									endif
							CreaturesACount += 1
							;tempraceID = "empty"

							elseif (GetRaceKey(a) == CreaturesBRace) && (CreaturesBCount < 4)
							CreaturesB[CreaturesBCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesB #"+CreaturesBCount+": "+aName)		
									endif
							CreaturesBCount += 1
							;tempraceID = "empty"
							
							elseif (GetRaceKey(a) == CreaturesCRace) && (CreaturesCCount < 4)
							CreaturesC[CreaturesCCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesC #"+CreaturesCCount+": "+aName)													
									endif
							CreaturesCCount += 1	
							
							elseif (GetRaceKey(a) == CreaturesDRace) && (CreaturesDCount < 4)
							CreaturesD[CreaturesDCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesD #"+CreaturesDCount+": "+cfgqst.GetActorInfo(CreaturesD[CreaturesDCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesD #"+CreaturesDCount+": "+aName)													
									endif
							CreaturesDCount += 1														
							elseif (GetRaceKey(a) == CreaturesERace) && (CreaturesECount < 4)
							CreaturesE[CreaturesECount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesE #"+CreaturesECount+": "+cfgqst.GetActorInfo(CreaturesE[CreaturesECount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesE #"+CreaturesECount+": "+aName)													
									endif
							CreaturesECount += 1															
							elseif (GetRaceKey(a) == CreaturesFRace) && (CreaturesFCount < 4)
							CreaturesF[CreaturesFCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesF #"+CreaturesFCount+": "+cfgqst.GetActorInfo(CreaturesF[CreaturesFCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesF #"+CreaturesFCount+": "+aName)													
									endif
							CreaturesFCount += 1															
					
							endif
						endif	
					endif	
				endif
			endwhile
		
		else 
			;/
			while i							
			i -= 1		
			a = ActorArray[i].GetReference() as Actor
			aIsValid = false 	
				if a	
					
					aName = a.GetBaseObject().GetName()
					if !aName
					aName = cfgqst.GetLeveledActorBaseName(a)
					endif 
					;SORT OUT: too far away ; sorted by interior distance and exterior distance
					;if (cfgqst.PlayerRef.IsInInterior() && cfgqst.PlayerRef.GetDistance(a) <= cfgqst.SearchRadiusInterior) || (!cfgqst.PlayerRef.IsInInterior() && cfgqst.PlayerRef.GetDistance(a) <= cfgqst.SearchRadius)
					if a.IsInFaction(cfgqst.EnemyFaction) 
					;Enemy Faction is not scanned for Distance
					
					elseif cfgqst.PlayerRef.GetDistance(a) <= Distance
						if cfgqst.ShowDebugMessages
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: "+aName+": "+cfgqst.PlayerRef.GetDistance(a))
						endif
					
						;SORT OUT GUARDS (they are already "sorted" in calm)
						;if !cfgqst.IsGuard(a)		
							;SORT OUT unwanted actors
							;if !(a.GetBaseObject().GetName() == "FEC : Load Screen Detector")							
								;SORT OUT Dragons (WIP #todo)
								if !cfgqst.IsDragon(a)  	 
									;SORT OUT commanded actors (not really working tho)
									;if !a.IsCommandedActor()	
										;if (VictimCount > 0) && ((a != Victims[0]) || (a != Victims[1]) || (a != Victims[2]) || (a != Victims[3]) || (a != Victims[4]))
											
											
											;HUMAN female o+									
											if (SexLab.GetGender(a) == 1) && cfgqst.FemalesAllowed  					;IF FEMALE 																																									
												;if !a.IsPlayerTeammate() && !a.IsInFaction(CurrentFollowerFaction) && cfgqst.FemalesAllowed	 	;IF FEMALES Allowed -> aggressor
												;if !a.IsInFaction(CurrentFollowerFaction) && !a.IsInFaction(PlayerFaction) && cfgqst.FemalesAllowed && !(a.GetBaseObject().GetName() == "Sofia")					 	;IF FEMALES Allowed -> aggressor					
											;	if !IsFollower(a) && cfgqst.FemalesAllowed			
																		
													if cfgqst.AllowActor(a, 1, aName)	
														;get a Raper to Group B for Follower01 - ONLY IF GROUP IS EMPTY 
														if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															endif
														RapersBCount += 1
														NeedARaper = false		
														;get a Raper to Group C for Follower02 - ONLY IF GROUP IS EMPTY! 
														elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersCBlocked																				
														RapersC[RapersCCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
															endif
														RapersCCount += 1
														NeedAnotherRaper = false
														elseif RapersACount < 4	&& !RapersABlocked
														RapersA[RapersACount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
															endif

														RapersACount += 1
														elseif RapersBCount < 4 && !RapersBBlocked							
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															endif
														RapersBCount += 1
														elseif RapersCCount < 4	&& !RapersCBlocked						
														RapersC[RapersCCount] = a	 							
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
															endif
														RapersCCount += 1
														endif

												endif	
												
												;-----------------------------------------------------------------------------------------------	
												
											;HUMAN male  o->
											elseif (SexLab.GetGender(a) == 0) 
													
													if cfgqst.AllowActor(a, 1, aName)
														;get a Raper to Group B for Follower01
														if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
															endif
														RapersBCount += 1
														NeedARaper = false
														;get a Raper to Group C for Follower02
														elseif NeedAnotherRaper && RapersBCount > 0	&& RapersCCount == 0 && !RapersBBlocked																			
														RapersC[RapersCCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))
															endif
														RapersCCount += 1
														NeedAnotherRaper = false
														;sort RapersA (if no guards found)
														elseif !RapersAareGuards && RapersACount < 4 && !RapersABlocked
														RapersA[RapersACount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersA #"+RapersACount+": "+(cfgqst.GetLeveledActorBaseName(RapersA[RapersACount])))
															endif
														RapersACount += 1
														elseif RapersBCount < 4 && !RapersBBlocked						
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
															endif
														RapersBCount += 1
														elseif RapersCCount < 4	&& !RapersCBlocked					
														RapersC[RapersCCount] = a	
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))		
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))	
															endif
														RapersCCount += 1	

														endif	

												endif								
												;-----------------------------------------------------------------------------------------------
														
											;CREATURES															
											elseif (SexLab.GetGender(a) == 2) 
											
												if !a.IsInFaction(PlayerFaction) ; && AllowActor(a) ;<----- new hitter detection
													;asign a racekey to each group based on scanned Creatures - each group gets ONE Racekey asigned and is then false
													if cfgqst.AllowCreatures		
														if cfgqst.AllowActor(a, 2, aName)	
														
															if CreaturesARace == "empty"
															CreaturesARace = GetRaceKey(a) 								;fill in RacesA
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesARace #"+CreaturesARace)
															elseif (CreaturesBRace == "empty") && (CreaturesARace != GetRaceKey(a))
															CreaturesBRace = GetRaceKey(a) 								;fill in RacesB
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesBRace #"+CreaturesBRace)
															elseif (CreaturesCRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a))
															CreaturesCRace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesCRace #"+CreaturesCRace)
															
															elseif (CreaturesDRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a))
															CreaturesDRace = GetRaceKey(a) 								;fill in RacesB
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesDRace #"+CreaturesDRace)
															elseif (CreaturesERace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a))
															CreaturesERace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesERace #"+CreaturesERace)
															elseif (CreaturesFRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a)) && (CreaturesERace != GetRaceKey(a))	
															CreaturesFRace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesFRace #"+CreaturesFRace)
																													
															endif	
													
															;asign a Creature to Group B for Follower01
															;overwrites the above racekey
															if NeedARaper && CreaturesACount > 0
															CreaturesB[CreaturesBCount] = a		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
																	endif								

															CreaturesBCount += 1
															NeedARaper = false
															CreaturesBRace = GetRaceKey(a) 
													
															;asign a Creature to Group C for Follower02
															;overwrites the above racekey
															elseif NeedAnotherRaper && CreaturesBCount > 0																				
															CreaturesC[CreaturesCCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: NeedARaper CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
																	endif		
															CreaturesCCount += 1
															NeedAnotherRaper = false
															CreaturesCRace = GetRaceKey(a) 
													
															;asign a creature to a group based on matching RaceKeys
															elseif (GetRaceKey(a) == CreaturesARace) && (CreaturesACount < 4)
															CreaturesA[CreaturesACount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesA #"+CreaturesACount+": "+cfgqst.GetActorInfo(CreaturesA[CreaturesACount]))
																	else		
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesA #"+CreaturesACount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesA[CreaturesACount])))			
																	endif
															CreaturesACount += 1
															;tempraceID = "empty"

															elseif (GetRaceKey(a) == CreaturesBRace) && (CreaturesBCount < 4)
															CreaturesB[CreaturesBCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
																	endif
															CreaturesBCount += 1
															;tempraceID = "empty"
															
															elseif (GetRaceKey(a) == CreaturesCRace) && (CreaturesCCount < 4)
															CreaturesC[CreaturesCCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
																	endif
															CreaturesCCount += 1	
															
															elseif (GetRaceKey(a) == CreaturesDRace) && (CreaturesDCount < 4)
															CreaturesD[CreaturesDCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesD #"+CreaturesDCount+": "+cfgqst.GetActorInfo(CreaturesD[CreaturesDCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesD #"+CreaturesDCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesD[CreaturesDCount])))													
																	endif
															CreaturesDCount += 1														
															elseif (GetRaceKey(a) == CreaturesERace) && (CreaturesECount < 4)
															CreaturesE[CreaturesECount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesE #"+CreaturesECount+": "+cfgqst.GetActorInfo(CreaturesE[CreaturesECount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesE #"+CreaturesECount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesE[CreaturesECount])))													
																	endif
															CreaturesECount += 1															
															elseif (GetRaceKey(a) == CreaturesFRace) && (CreaturesFCount < 4)
															CreaturesF[CreaturesFCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesF #"+CreaturesFCount+": "+cfgqst.GetActorInfo(CreaturesF[CreaturesFCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesF #"+CreaturesFCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesF[CreaturesFCount])))													
																	endif
															CreaturesFCount += 1															
															
															;tempraceID = "empty"														
															endif
														else ;ActorNotAllowed
														Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor Sorted out (is not Allowed")
														endif ;ActorNotAllowed
													else ;Gender
													Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor Sorted out CreaturesNotAllowed")
													endif ;Gender
													
												endif ;
											endif ;playerfactioncheck
										;endif	;followerDoubleCheck
									;else	
									;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor commanded: "+a.GetBaseObject().GetName())
									;endif	;commanded actor
								else	 
								Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor is Dragon: "+a.GetBaseObject().GetName())
								endif	;dragon
							;else	
							;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor is not allowed: "+a.GetBaseObject().GetName())
						;	Debug.Notification("NAKED DEFEAT DEBUG: Actor is not allowed: "+a)
							;endif	;non valid actors (from mods for example)
						;else ;IsGuard			
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: IsGuard: "+a.GetBaseObject().GetName())
						;endif 
						
					else ;distance
						if cfgqst.ShowDebugMessages
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Distance too far: "+cfgqst.PlayerRef.GetDistance(a))
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Actor is too far away: "+a.GetBaseObject().GetName())
						endif
					endif
				endif	;if a (no actor)
			endwhile
			/;
		endif 
		;OLDWHILE  <<<<<<<<<<<<<<<<<
		
	endif
	
	if cfgqst.CivilRapeRunning && (RapersACount == 0)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR - no RapersA!")
	ScreenMessage("#ERROR - no RapersA!")	
	endif
	;---------------------------------------------------------------------------------------------------------------------------------------
	
	;if cfgqst.IsNymrasGame()

	;reset all groups 	
	;0 - empty
	GroupArray = new int[9]	
	GroupArray[0] = 0	;RapersA
	GroupArray[1] = 0	;RapersB		
	GroupArray[2] = 0	;RapersC
	GroupArray[3] =	0	;CreaturesA	
	GroupArray[4] =	0	;CreaturesB
	GroupArray[5] =	0	;CreaturesC
	GroupArray[6] =	0	;CreaturesD	
	GroupArray[7] =	0	;CreaturesE
	GroupArray[8] =	0	;CreaturesF

	;0 -> empty
	;1 -> available
	;2 -> in use
	
	HumanGroupsAvailable = 0
	CreatureGroupsAvailable = 0 
	
	;sort out strange stuff.... Only if we do NOT spawn
	If cfgqst.DefeatTypeScenario != "Afterlife" && cfgqst.DefeatTypeScenario != "FastTravel"
		if (CreaturesACount > 0) && CreaturesARace == "empty" && (cfgqst.SpawnedGroups[3] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesA empty race - remove")
		CreaturesACount = 0
		endif 
		if (CreaturesBCount > 0) && CreaturesBRace == "empty" && (cfgqst.SpawnedGroups[4] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesB empty race - remove")
		CreaturesBCount = 0
		endif 
		if (CreaturesCCount > 0) && CreaturesCRace == "empty" && (cfgqst.SpawnedGroups[5] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesC empty race - remove")
		CreaturesCCount = 0
		endif 
		if (CreaturesDCount > 0) && CreaturesDRace == "empty" && (cfgqst.SpawnedGroups[6] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesD empty race - remove")
		CreaturesDCount = 0
		endif 
		if (CreaturesECount > 0) && CreaturesERace == "empty"  && (cfgqst.SpawnedGroups[7] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesE empty race - remove")
		CreaturesECount = 0
		endif 
		if (CreaturesFCount > 0) && CreaturesFRace == "empty" && (cfgqst.SpawnedGroups[8] == 0)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR-CreaturesF empty race - remove")
		CreaturesFCount = 0
		endif 
	endif 
	
	;CHECK and Tag available Groups 
	if RapersACount > 0	
	GroupArray[0] = 1 	
	HumanGroupsAvailable += 1
	endif	
	if RapersBCount > 0	
	GroupArray[1] = 1 	
	HumanGroupsAvailable += 1
	endif	
	if RapersCCount > 0	
	GroupArray[2] = 1 
	HumanGroupsAvailable += 1	
	endif
	if CreaturesACount > 0	
	GroupArray[3] = 1 
	CreatureGroupsAvailable += 1	
	endif	
	if CreaturesBCount > 0	
	GroupArray[4] = 1 	
	CreatureGroupsAvailable += 1	
	endif	
	if CreaturesCCount > 0	
	GroupArray[5] = 1 	
	CreatureGroupsAvailable += 1	
	endif	
	if CreaturesDCount > 0	
	GroupArray[6] = 1 
	CreatureGroupsAvailable += 1	
	endif	
	if CreaturesECount > 0	
	GroupArray[7] = 1 	
	CreatureGroupsAvailable += 1	
	endif	
	if CreaturesFCount > 0	
	GroupArray[8] = 1 	
	CreatureGroupsAvailable += 1	
	endif	
	
	;/
	else OLD SORTING / DELETE
	
		if RapersACount > 0
		RapersAvalid = true
		GroupCountHumans += 1	;no longer in use
	;	RapersA.AddToFaction(BusyFaction)	;#busy
	;	RapersA[0].Addtofaction(WhippingFaction)
		
		endif
		if RapersBCount > 0
		RapersBvalid = true
		GroupCountHumans += 1	;no longer in use
		endif
		if RapersCCount > 0
		RapersCvalid = true
		GroupCountHumans += 1 ;no longer in use
		endif
		if (CreaturesACount > 0) && cfgqst.AllowCreatures
		CreaturesAvalid = true
		GroupCountCreatures += 1	;no longer in use
		endif
		if CreaturesBCount > 0 && cfgqst.AllowCreatures
		CreaturesBvalid = true
		GroupCountCreatures += 1 ;no longer in use
		endif
		if CreaturesCCount > 0 && cfgqst.AllowCreatures
		CreaturesCvalid = true
		GroupCountCreatures += 1
		endif
	endif
	/;

	
	if RapersAareGuards
	RapersAareGuards = false
	endif
	
;-----------------------------------------	
	
	String RapersA_0_Name = "NoName"
	String RapersA_1_Name = "NoName"
	String RapersA_2_Name = "NoName"
	String RapersA_3_Name = "NoName"
	
	String RapersB_0_Name = "NoName"
	String RapersB_1_Name = "NoName"
	String RapersB_2_Name = "NoName"
	String RapersB_3_Name = "NoName"
	
	String RapersC_0_Name = "NoName"
	String RapersC_1_Name = "NoName"
	String RapersC_2_Name = "NoName"
	String RapersC_3_Name = "NoName"
	
	
	
	if Nym()
	
		if RapersACount > 0
			if RapersA[0]
			RapersA_0_Name = RapersA[0].GetBaseObject().GetName()
			endif 
			if RapersA[1]
			RapersA_1_Name = RapersA[1].GetBaseObject().GetName()
			endif 
			if RapersA[2]
			RapersA_2_Name = RapersA[2].GetBaseObject().GetName()
			endif 
			if RapersA[3]
			RapersA_3_Name = RapersA[3].GetBaseObject().GetName()
			endif 
		endif 
		
		if RapersBCount > 0
			if RapersB[0]
			RapersB_0_Name = RapersB[0].GetBaseObject().GetName()
			endif 
			if RapersB[1]
			RapersB_1_Name = RapersB[1].GetBaseObject().GetName()
			endif 
			if RapersB[2]
			RapersB_2_Name = RapersB[2].GetBaseObject().GetName()
			endif 
			if RapersB[3]
			RapersB_3_Name = RapersB[3].GetBaseObject().GetName()
			endif 
		endif 
		
		if RapersCCount > 0
			if RapersC[0]
			RapersC_0_Name = RapersC[0].GetBaseObject().GetName()
			endif 
			if RapersC[1]
			RapersC_1_Name = RapersC[1].GetBaseObject().GetName()
			endif 
			if RapersC[2]
			RapersC_2_Name = RapersC[2].GetBaseObject().GetName()
			endif 
			if RapersC[3]
			RapersC_3_Name = RapersC[3].GetBaseObject().GetName()
			endif 
		endif 

	endif 
	
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: :::::::::::::::::::::: ##RAPERS ::::::::::::::::::::::")
	
	if Nym()
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersACount:"+RapersACount+" [0]:"+RapersA_0_Name+" [1]:"+RapersA_1_Name+" [2]:"+RapersA_2_Name+" [3]:"+RapersA_3_Name)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersBCount:"+RapersBCount+" [0]:"+RapersB_0_Name+" [1]:"+RapersB_1_Name+" [2]:"+RapersB_2_Name+" [3]:"+RapersB_3_Name)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersCCount:"+RapersCCount+" [0]:"+RapersC_0_Name+" [1]:"+RapersC_1_Name+" [2]:"+RapersC_2_Name+" [3]:"+RapersC_3_Name)
	else 
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersACount:"+RapersACount)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersBCount:"+RapersBCount)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RapersCCount:"+RapersCCount)
	endif 
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesACount:"+CreaturesACount+" CreaturesARace: "+CreaturesARace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesBCount:"+CreaturesBCount+" CreaturesBRace: "+CreaturesBRace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesCCount:"+CreaturesCCount+" CreaturesCRace: "+CreaturesCRace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesDCount:"+CreaturesDCount+" CreaturesDRace: "+CreaturesDRace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesECount:"+CreaturesECount+" CreaturesERace: "+CreaturesERace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesFCount:"+CreaturesFCount+" CreaturesFRace: "+CreaturesFRace)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: VictimCount:"+VictimCount)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: HumanGroupsAvailable:"+HumanGroupsAvailable)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreatureGroupsAvailable:"+CreatureGroupsAvailable)
	
	
	
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesAvalid:"+CreaturesAvalid)
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesBvalid:"+CreaturesBvalid)
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CreaturesCvalid:"+CreaturesCvalid)
	
	;this is a bool for "AllowActor"
	note = false
	
	;Count Groups

EndFunction


	int HumanGroupsAvailable = 0
	int CreatureGroupsAvailable = 0 

;int GroupCountHumans
;int GroupCountCreatures

;internal, short time bools
;bool RapersAinUSE = false
;bool RapersBinUSE = false
;bool RapersCinUSE = false
;bool CreaturesAinUSE = false
;bool CreaturesBinUSE = false
;bool CreaturesCinUSE = false
;internal, short time bools

;------------------------------------------------------------------------------------------------------------------------------------------------------------

Function SelectPeeGuys()	;#guys					
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectPeeGuys()")

	creaturegroup = false
	humangroup = false
	group = false

	;<<<<<<<<<<<<<<<<<<<<<<<<< NEW
	;translate Groups into temporary one (Aggressors02)
	
	Aggressors = new Actor[4]	
	Aggressors[0] = none				
	Aggressors[1] = none				
	Aggressors[2] = none					
	Aggressors[3] = none
	AggressorCount = 0
	
	Aggressors02 = new Actor[4]	
	Aggressors02[0] = none				
	Aggressors02[1] = none				
	Aggressors02[2] = none					
	Aggressors02[3] = none
	Aggressor02Count = 0
	
	Aggressors02[0] = RapersA[0]					
	Aggressors02[1] = RapersA[1]					
	Aggressors02[2] = RapersA[2]						
	Aggressors02[3] = RapersA[3]	
	Aggressor02Count = RapersACount
	humangroup = true
	

	if cfgqst.ShowDebugMessages	
		if Aggressor02Count == 4
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[3]: "+Aggressors02[3].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[2]: "+Aggressors02[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 3
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[2]: "+Aggressors02[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 2
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 1
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		endif
	endif
		
	;MAIN CHECKPOINT (sort out dead, not loaded, maybe too far away too?)		;check #dead

	if (cfgqst.DefeatTypeScenario == "FastTravel") || (cfgqst.DefeatTypeScenario == "Afterlife")
	
		while cfgqst.ModEnabled && Aggressor02Count > 0
			Aggressor02Count -= 1
			if !Aggressors02[Aggressor02Count].IsDead() ;&& Aggressors02[Aggressor02Count].Is3DLoaded()
			Aggressors02[Aggressor02Count] = Aggressors[AggressorCount]
			AggressorCount += 1
			endif
		endwhile	
		
	else 
	
		while cfgqst.ModEnabled && Aggressor02Count > 0
			Aggressor02Count -= 1
			if !Aggressors02[Aggressor02Count].IsDead() && Aggressors02[Aggressor02Count].Is3DLoaded()
			Aggressors02[Aggressor02Count] = Aggressors[AggressorCount]
			AggressorCount += 1
			endif
		endwhile	
	endif 
		
	;translate temporary group into final one 
	;Aggressors[0] = Aggressors02[0]					
	;Aggressors[1] = Aggressors02[1]					
	;Aggressors[2] = Aggressors02[2]						
	;Aggressors[3] = Aggressors02[3]	
	;AggressorCount = Aggressor02Count
	 
	 
	if cfgqst.ShowDebugMessages	
		if AggressorCount == 4
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[3]: "+Aggressors[3].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[2]: "+Aggressors[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 3
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[2]: "+Aggressors[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 2
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 1
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 0
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #actorcheck Aggressors[0]: #ERROR all actors sorted out")
		endif
	endif
	
	;<<<<<<<<<<<<<<<<<<<<<<<<< NEW

	;<<<<<<<<<<<<<<<<<<<<<<<<< OLD
	Aggressors = new Actor[4]	
	Aggressors[0] = none				
	Aggressors[1] = none				
	Aggressors[2] = none					
	Aggressors[3] = none
	AggressorCount = 0

	Aggressors[0] = RapersA[0]					
	Aggressors[1] = RapersA[1]					
	Aggressors[2] = RapersA[2]						
	Aggressors[3] = RapersA[3]	
	AggressorCount = RapersACount
	humangroup = true
	;<<<<<<<<<<<<<<<<<<<<<<<<< OLD
	
	
	if AggressorCount > 1 
	group = true
	endif	
	
	;sort out females for golden shower ;cosmetic. we will change golden showers anyway
	if AggressorCount == 4 		
		if Sexlab.GetGender(Aggressors[3]) == 1
		Aggressors[3] = none
		AggressorCount = 3
		endif
		if Sexlab.GetGender(Aggressors[2]) == 1
		Aggressors[2] = none
		AggressorCount = 2
		endif
		if Sexlab.GetGender(Aggressors[1]) == 1
		Aggressors[1] = none
		AggressorCount = 1
		endif
		if Sexlab.GetGender(Aggressors[0]) == 1
		Aggressors[0] = none
		AggressorCount = 0
		endif
	elseif AggressorCount == 3 		
		if Sexlab.GetGender(Aggressors[2]) == 1
		Aggressors[2] = none
		AggressorCount = 2
		endif
		if Sexlab.GetGender(Aggressors[1]) == 1
		Aggressors[1] = none
		AggressorCount = 1
		endif
		if Sexlab.GetGender(Aggressors[0]) == 1
		Aggressors[0] = none
		AggressorCount = 0
		endif
	elseif AggressorCount == 2 		
		if Sexlab.GetGender(Aggressors[1]) == 1
		Aggressors[1] = none
		AggressorCount = 1
		endif
		if Sexlab.GetGender(Aggressors[0]) == 1
		Aggressors[0] = none
		AggressorCount = 0
		endif
	elseif AggressorCount == 1 		
		if Sexlab.GetGender(Aggressors[0]) == 1
		Aggressors[0] = none
		AggressorCount = 0
		endif
	endif	
		
	
	if humangroup	
		if AggressorCount == 4            ;5P  			
			AnimationsPee4 = SexLab.GetAnimationsByTags(5, "goldenshower", none , True)
			if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 5-person animations found: "+AnimationsPee4.Length)
			Debug.Notification("NAKED DEFEAT: 5-person animatioxns found: "+AnimationsPee4.Length)
			endif
			if AnimationsPee4.Length < 1			;5P if 4 Aggressors and no 5P anims -> reduce Aggressors to 3
			AggressorCount = 3
			Aggressors[3] = None
			endif
		endif
		if AggressorCount == 3           ;4p
			AnimationsPee3 = SexLab.GetAnimationsByTags(4, "goldenshower", none, True)
			if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 4-person animations found: "+AnimationsPee3.Length)
			Debug.Notification("NAKED DEFEAT: 4-person animations found: "+AnimationsPee3.Length)
			endif
			if AnimationsPee3.Length < 1				
			AggressorCount = 2
			Aggressors[2] = None
			endif
		endif
		if AggressorCount == 2            ;3P
			AnimationsPee2 = SexLab.GetAnimationsByTags(3, "goldenshower", none, True)
			if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 3-person animations found: "+AnimationsPee2.Length)
			Debug.Notification("NAKED DEFEAT: 3-person animations found: "+AnimationsPee2.Length)
			endif
			if AnimationsPee2.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
			AggressorCount = 1
			Aggressors[1] = None
			endif
		endif
		if AggressorCount == 1            ;2P
			AnimationsPee1 = SexLab.GetAnimationsByTags(2, "goldenshower", none, True)
			if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 2-person animations found: "+AnimationsPee1.Length)
			Debug.Notification("NAKED DEFEAT: 2-person animations found: "+AnimationsPee1.Length)
			endif
			if AnimationsPee1.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
			AggressorCount = 0
			Aggressors[0] = None
			endif
		endif	
	endif	

EndFunction	
	
;------------------------------------------------------------------------------------------------------------------------------------------------------------
;SELECT AGGRESSOR NEW			
	
		
int [] GroupArray	
		
			;int RapersAstatus = 0
			;int RapersBstatus = 0
			;int RapersCstatus = 0
			;int CreaturesAstatus = 0
			;int CreaturesBstatus = 0
			;int CreaturesCstatus = 0
			
			;/
	1. get filled groups
	2. select a filled group 
	3. block selected group
	4. assign group as aggressors 
	GroupArray[0] = 0	;RapersA
	GroupArray[1] = 0	;RapersB		
	GroupArray[2] = 0	;RapersC
	GroupArray[3] =	0	;CreaturesA	
	GroupArray[4] =	0	;CreaturesB
	GroupArray[5] =	0	;CreaturesC
	/;		
			
	int NymraCountsFunctions = 0		
	String ForePlayGroup = "none"
	
	String SelectedGroup = "none"	
	String LastGroupPlayer = "Empty"
	
	String GroupTypePlayer = "none"
	
	Bool PlayerHadCreatures = false
		
Function SelectAggressor(Int iFuckingRound = 0, Int VictimNumber = 0)			;does this mean the numbers from the "call" are reverted to 0?)			##select## #SelectAggressor
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor START Round: "+iFuckingRound)

		;1. Selects a random RapersX/CreaturesX Group that is available
		;2. Fills the RapersX/CreaturesX actos into AggressorsGroup
		;3. Blocks the Selected Group
		;4. Selects the Sex Tags
			
	SelectedGroup = "none"	
	String ActorName 
	int y = 0
;if we only have ONE group and then Start ForePlay the Group is still Blocked!!!; VictimNumber 0 = Player
; VictimNumber 1 = Victims[0]
; VictimNumber 2 = Victims[1]

	if Nym() && (iFuckingRound > 1) && (ForePlayGroup != "none")
	NymMessage("#ERROR- Foreplaygroup should be none")
	endif

	if VictimNumber == 0
	ActorName = "Player"
	
	elseif VictimNumber == 1
	ActorName = folqst.Name_Follower01
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor START Victims[0]: "+Victims[0].GetBaseObject().GetName())
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor START Victims[0]")
	elseif VictimNumber == 2
	ActorName = folqst.Name_Follower02
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor START Victim[1]: "+Victims[2].GetBaseObject().GetName())
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor START Victims[1]")
	endif 

	; ------------------- SELECT GROUP -----------------------------: 
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SelectAggressor["+ActorName+"][Round "+iFuckingRound+"]") 
	
	creaturegroup = false
	humangroup = false
	group = false	
	
	
	;we select NO new group when we had ForePlay. We use the last Group instead.
	if WasForeplay 	
	SelectedGroup = LastGroupPlayer
	
	;we also want to vary groups more, so LastGroupPlayer will be used more anyway
	else 

		NymraCountsFunctions +=1
		String [] RandomGroupArray		
		RandomGroupArray = new String [9]
		RandomGroupArray[0] = "none"
		RandomGroupArray[1]	= "none"	
		RandomGroupArray[2]	= "none"
		RandomGroupArray[3]	= "none"
		RandomGroupArray[4]	= "none"
		RandomGroupArray[5]	= "none"
		RandomGroupArray[6]	= "none"
		RandomGroupArray[7]	= "none"
		RandomGroupArray[8]	= "none"

		int x = 0
		int w = 0
		bool GroupFound = false
		Bool UsePreselectedGroups = false
		Bool AllowHumanGroups = false
		Bool AllowCreatureGroups = false
		;int HumansChance = 100 ;= 25
			
		if VictimNumber == 0 && HasForeplay
		NymTrace("SelectAggressor() #ForePlayGroup - Pick ForePlayGroup")
		w = 3 ;only search humangroups for foreplay (at the moment....) 
		elseif (VictimNumber == 0) && WasForeplay;&& ForePlayGroup != "none"
		w = 3 ;only search humangroups for foreplay
		NymTrace("SelectAggressor()  #ForePlayGroup - This is the error I think. Not needed")
		else
		NymTrace("SelectAggressor() #All Groups Allowed")
		w = 9 ;search all groups << we needs to be x + 1 (or the search ends with group 2 or 5 ....) 
		endif 

		;Make Sure Round 1 fits the DefeatType (Round 0-1 always, Round 2 - 50% chance
		if (cfgqst.DefeatTypeGeneral == "AreAnimals") || (cfgqst.DefeatTypeGeneral == "AreHumanoids")
			if (VictimNumber == 0) && ((iFuckingRound < 2) || (iFuckingRound == 2) && D100(50))
				if (CreaturesARace == cfgqst.DefeatType) || (CreaturesBRace == cfgqst.DefeatType) || (CreaturesCRace == cfgqst.DefeatType) || (CreaturesDRace == cfgqst.DefeatType) || (CreaturesERace == cfgqst.DefeatType) || (CreaturesFRace == cfgqst.DefeatType)
				;check if one of the Groups matches the DefeatType 1:1 
				;if so, we only load the groups with that CreatureRaceType (set its designation to 3)
				;int iGroupsBlocked = 0
					UsePreselectedGroups = true			
					NymTrace("SelectAggressor() #Creatures Types ("+cfgqst.DefeatType+" Presorting")
					if (CreaturesARace == cfgqst.DefeatType) && (GroupArray[3] == 1)
					GroupArray[3] = 3 
					endif 
					if (CreaturesBRace == cfgqst.DefeatType) && (GroupArray[4] == 1)
					GroupArray[4] = 3 
					endif 
					if (CreaturesCRace == cfgqst.DefeatType) && (GroupArray[5] == 1)
					GroupArray[5] = 3 
					endif 
					if (CreaturesDRace == cfgqst.DefeatType) && (GroupArray[6] == 1)
					GroupArray[6] = 3 
					endif 
					if (CreaturesERace == cfgqst.DefeatType) && (GroupArray[7] == 1)
					GroupArray[7] = 3 
					endif 
					if (CreaturesFRace == cfgqst.DefeatType) && (GroupArray[8] == 1)
					GroupArray[8] = 3 
					endif 
				endif 
			endif 
		endif 
		
		;HUMAN vs CREATUREGROUPS 
		if (VictimNumber == 0) && (iFuckingRound < 3) && Allow_Creatures
		NymTrace("SelectAggressor(A)")
			if cfgqst.DefeatTypeGeneral == "AreHumans"	;consider rounds!
			;	NymTrace("SelectAggressor(B)")
				AllowHumanGroups = true
				
				if iFuckingRound == 1
				AllowCreatureGroups = false
			;	NymTrace("SelectAggressor(C)")
				elseif (iFuckingRound == 2) && !PlayerHadCreatures
				AllowCreatureGroups = true
			;	NymTrace("SelectAggressor(D)")
					;guarantee one creature group
					if cfgqst.NYMspawning && CheckCreatureGroups() && cfgqst.AllowCreatures && !PlayerHadCreatures
						NymTrace("SelectAggressor(E)")
						if (Allow_SexScenes < 3) 
					;	NymTrace("SelectAggressor() AllowHumanGroups = false (A)")
						AllowHumanGroups = false
						elseif D100(50)
					;	NymTrace("SelectAggressor() AllowHumanGroups = false (B)")
						AllowHumanGroups = false
						endif 
					endif 
				
				elseif (iFuckingRound == 3) && cfgqst.NYMspawning && CheckCreatureGroups() && cfgqst.AllowCreatures && !PlayerHadCreatures
			;	NymTrace("SelectAggressor() AllowHumanGroups = false (C)")
				AllowHumanGroups = false
				AllowCreatureGroups = true	
				endif 
				
			elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
				AllowCreatureGroups = true
			;	NymTrace("SelectAggressor(F)")
				if iFuckingRound == 1
			;	NymTrace("SelectAggressor(G)")
				AllowHumanGroups = false
				elseif (iFuckingRound == 2) && D100(25)
			;	NymTrace("SelectAggressor(H)")
				AllowHumanGroups = true	
				endif 

			elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
			;	NymTrace("SelectAggressor(I)")
				AllowCreatureGroups = true	
				if iFuckingRound == 1
			;	NymTrace("SelectAggressor(J)")
				AllowHumanGroups = false
				elseif (iFuckingRound == 2) && D100(10)
				NymTrace("SelectAggressor(K)")
			;	AllowHumanGroups = true	
				endif 
			else 
				NymTrace("SelectAggressor(L)")
			AllowCreatureGroups = true
			AllowHumanGroups = true
			endif 
		else
				NymTrace("SelectAggressor(M)")
			AllowCreatureGroups = true
			AllowHumanGroups = true
		endif			

		NymTrace("SelectAggressor() AllowHumanGroups: "+AllowHumanGroups+" // AllowCreatureGroups: "+AllowCreatureGroups)
	
		if UsePreselectedGroups
			;we search from 0 -> 5
			while (x < w) 	;search all 9 groups
				
				;--- PreSelected ---;
				if GroupArray[x] == 3
			;	NymTrace("SelectAggressor() GroupArray[x] == 3")

				GroupArray[x] = 1 ;set back to normal (available) 
					if x == 0 && AllowHumanGroups					
					RandomGroupArray[y] = "RapersA"		
					y += 1 					
					elseif x == 1 && AllowHumanGroups		
					RandomGroupArray[y] = "RapersB"
					y += 1					
					elseif x == 2 && AllowHumanGroups			
					RandomGroupArray[y] = "RapersC" 	
					y += 1
					elseif (x == 3) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesA" 	
					y += 1
					elseif (x == 4) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesB" 
					y += 1
					elseif (x == 5) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesC" 
					y += 1					
					elseif (x == 6) && AllowCreatureGroups&& Allow_Creatures  
					RandomGroupArray[y] = "CreaturesD" 	
					y += 1
					elseif (x == 7) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesE" 
					y += 1
					elseif (x == 8) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesF" 
					y += 1
					endif
				endif 
				x += 1 				;continue search up to 5
			endwhile 
		else  

		;we search from 0 -> 5
			while (x < w) 	;search all 9 groups
				
				;--- Normal Selection ---;				
				if GroupArray[x] == 1	;if group is full and not blocked, select it
				;GroupArray[x] = 2		;selected group blocked <---- no, we block only groups that we use!
				;NymTrace("SelectAggressor() GroupArray[x] == 1")

					if x == 0 && AllowHumanGroups					
					RandomGroupArray[y] = "RapersA"		
					y += 1 					
					elseif x == 1 && AllowHumanGroups		
					RandomGroupArray[y] = "RapersB"
					y += 1					
					elseif x == 2 && AllowHumanGroups			
					RandomGroupArray[y] = "RapersC" 	
					y += 1
					elseif (x == 3) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesA" 	
					y += 1
					elseif (x == 4) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesB" 
					y += 1
					elseif (x == 5) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesC" 
					y += 1					
					elseif (x == 6) && AllowCreatureGroups&& Allow_Creatures  
					RandomGroupArray[y] = "CreaturesD" 	
					y += 1
					elseif (x == 7) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesE" 
					y += 1
					elseif (x == 8) && AllowCreatureGroups&& Allow_Creatures 
					RandomGroupArray[y] = "CreaturesF" 
					y += 1
					endif	 	
							;we found a group and filled the array, so go up a slot
				endif 	
				x += 1 				;continue search up to 5
			endwhile 
		endif 
		;endif 
		y -= 1 ;dont ask... just stupid. 
		
		;Randomly Select on of the Groups from The Array 
								
		if Nym()							
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[0]: "+RandomGroupArray[0])		
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[1]: "+RandomGroupArray[1])		
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[2]: "+RandomGroupArray[2])
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[3]: "+RandomGroupArray[3])	
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[4]: "+RandomGroupArray[4])
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[5]: "+RandomGroupArray[5])
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[6]: "+RandomGroupArray[6])	
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[7]: "+RandomGroupArray[7])
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - RandomGroupArray[8]: "+RandomGroupArray[8])
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - y =: "+y)
		endif 
		
		int z 	
		if y == 0	
		z = 0
		else
		z = Utility.RandomInt(0, y)	;we randomly select a available and valid group that we selected earlier
		endif 
		
		;Selected Group is Filled  
		SelectedGroup = RandomGroupArray[z] 
			
		if VictimNumber == 0
		ActiveGroup_Player = RandomGroupArray[z] 
		LastGroupPlayer = RandomGroupArray[z] 
		endif 
	endif	
		;-------------------------------------------------------------------------------------------------------------------------

		;if HasForeplay
		;ForePlayGroup = z
		;endif 	
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] - Selected Group: "+SelectedGroup)
		;Debug.MessageBox("Selected Group: "+SelectedGroup)
		
		;WHAT FOR??? ---> For secondary Sorting / Group Size correction etc. 
		;/
		Aggressors02 = new Actor[4]	
		Aggressors02[0] = none				
		Aggressors02[1] = none				
		Aggressors02[2] = none					
		Aggressors02[3] = none
		Aggressor02Count = 0

		Aggressors = new Actor[4]	
		Aggressors[0] = none				
		Aggressors[1] = none				
		Aggressors[2] = none					
		Aggressors[3] = none
		AggressorCount = 0
		/;
			
		;WE ONLY NEED A STRING with Group Name here. So we can add a String Function above. 
		;we add a string Function that sets BLOCKED groups to "GroupArray = 2" 
		
		NymTrace("DEBUG SelectedGroup: "+SelectedGroup)
		NymTrace("DEBUG RapersACount: "+RapersACount)
		
		;Fill Rapers in and Block selected Group
		if (y == -1) || (SelectedGroup == "none")
		DebugTrace("#ERROR - no Group available")
		Aggressor02Count = 0
	
		elseif SelectedGroup == "RapersA"
		GroupArray[0] = 2
		FillAggressorGroup(SelectedGroup, RapersACount)	;#PRIO: FillAggressorGroup fills the Aggressors in AN checks the actors AND updates the OriginalGroup if required
		humangroup = true
		
		elseif SelectedGroup == "RapersB"
		GroupArray[1] = 2	
		FillAggressorGroup(SelectedGroup, RapersBCount)
		humangroup = true
		
		elseif SelectedGroup == "RapersC"
		GroupArray[2] = 2
		FillAggressorGroup(SelectedGroup, RapersCCount)
		humangroup = true
		
		elseif SelectedGroup == "CreaturesA"
		GroupArray[3] =	2
		FillAggressorGroup(SelectedGroup, CreaturesACount)
		creaturegroup = true
		
		elseif SelectedGroup == "CreaturesB"
		GroupArray[4] =	2
		FillAggressorGroup(SelectedGroup, CreaturesBCount)
		creaturegroup = true
		
		elseif SelectedGroup == "CreaturesC"
		GroupArray[5] =	2
		FillAggressorGroup(SelectedGroup, CreaturesCCount)
		creaturegroup = true
	
		elseif SelectedGroup == "CreaturesD"
		GroupArray[6] =	2
		FillAggressorGroup(SelectedGroup, CreaturesDCount)
		creaturegroup = true

		elseif SelectedGroup == "CreaturesE"
		GroupArray[7] =	2
		FillAggressorGroup(SelectedGroup, CreaturesECount)
		creaturegroup = true

		elseif SelectedGroup == "CreaturesF"
		GroupArray[8] =	2
		FillAggressorGroup(SelectedGroup, CreaturesFCount)
		creaturegroup = true
		endif 

		if creaturegroup
		PlayerHadCreatures = TRUE
		endif 
		
		if AggressorCount == 0 
			DebugTrace("SelectAggressor - AggressorCount == 0 --> Restart")
			NymBox("SelectAggressor - AggressorCount == 0 --> Restart")
		endif 
	
	;output is i which declares our group to use 
		
	;STAGE 0: Group assignment per Round
	;STAGE 1: Check dead/3D Loaded and transfer to aggressors group for scene start
	;STAGE 2: not exist atm :D
	;STAGE 3: Reduce Animations by chance and MCM settings
	;STAGE 4: Reduce Animations based on available Animations
	;switch 3 and 4?

	;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	;------- STAGE 0 ---- Manage which groups are used on which actor depending on the sex round (1, 2 or 3)

	;-------------------------------------------------------------------------------------
	;STAGE 1 - transfer actors to new group and check if dead or 3D loaded			#DEAD
	
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #CHECK START")	
	;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 

	;PROBLEM: we did not delete the sorted out actors....
		
	;check order:
	;Aggressors02[3] checked first -- transfered as Aggressors[0]
	;Aggressors[2] 
	;Aggressors[1] 
	;Aggressors[0] checked last
	;NOTE Sorting is automatically done. We get the group sized down correctly if needed
	
		  

	;-----------SCENARIO PREPARATION-----------------------------------------------------------------------------------------------------------------------------------
	;yoke and rodeo reduce group to 1 for 2P scenes 
	;reduce aggressorcount to 1 because we only have 2P yoke animations and want only 2P cowgirl etc. anims for rodeo
	;PILLORY has 5P Anims from FunnyBiz but we might need to make special scenario for those.
	;TEST PILLORY again

	; THIS IS NO LONGER REQUIRED (AND NEVER WAS)
	;if ((cfgqst.DefeatTypeScenario == "Yoke") && humangroup) || ((cfgqst.DefeatTypeScenario == "Stockade") && humangroup) || ((cfgqst.DefeatTypeScenario == "Wheel") && humangroup) || ((cfgqst.DefeatTypeScenario == "Rodeo") && humangroup) || ((cfgqst.DefeatTypeScenario == "Armbinder") && humangroup) || ((cfgqst.DefeatTypeScenario == "XCross") && humangroup) ;|| (cfgqst.DefeatTypeScenario == "Execution"); || ((cfgqst.DefeatTypeScenario == "Pillory") && humangroup)	;only if human group because we dont have creatureyoke (yet)				
	;Aggressors[3] = None	
	;Aggressors[2] = None					
	;Aggressors[1] = None
	;AggressorCount = 1						
	;humangroup = false
	;group = false
	;endif
	
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;------- STAGE 3 ---- Reduce RAPER GROUP SIZE based on MCM
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	;if !HasForeplay ;foreplay is sorted later
	
		if AggressorCount == 4 
			if D100(cfgqst.Group5Pchance)								;we have 5P
			NymTrace("5P by chance")															;we remain with 5P
			elseif D100(cfgqst.Group4Pchance)							;we have 4P
			NymTrace("4P by chance")
			Aggressors[3] = None	
			AggressorCount = 3											;reduce group size to 3 for 4P
			elseif D100(cfgqst.Group3Pchance)							;we have 3P
			NymTrace("3P by chance")
			Aggressors[3] = None	
			Aggressors[2] = None
			AggressorCount = 2											;reduce group size to 2 for 3P				
			else 			;2P
			NymTrace("2P by chance")
			Aggressors[3] = None	
			Aggressors[2] = None
			Aggressors[1] = None
			AggressorCount = 1											;reduce group size to 1 for 2P						
			endIf						
		elseif AggressorCount == 3	
			if D100(cfgqst.Group4Pchance)						;4P
			NymTrace("4P by chance")				;we remain with 4P
			elseif D100(cfgqst.Group3Pchance)										;3P
			NymTrace("3P by chance")
			Aggressors[2] = None	
			AggressorCount = 2		;reduce group size to 2 for 3P			
			else 																;2P	
			NymTrace("2P by chance")
			Aggressors[2] = None
			Aggressors[1] = None
			AggressorCount = 1		;reduce group size to 1 for 2P						
			endIf	
		elseif AggressorCount == 2	
			if D100(cfgqst.Group3Pchance)										;3P
			NymTrace("3P by chance")										;we remain with 3P		
			else 															;2P
			NymTrace("2P by chance")
			Aggressors[1] = None
			AggressorCount = 1		;reduce group size to 1 for 2P						
			endIf
		endif	
	
	;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	;------- STAGE 4 ---- Reduce Animations based on available Animations
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER	-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (VictimNumber == 0)

			if HasForeplay
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] PLAYER Group with Foreplay")
			else 
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] PLAYER Group")	
			endif 

	;bool NewSystem = true
	
	;sslBaseAnimation[] function GetCreatureAnimationsByRaceKeyTags(int ActorCount, string RaceKey, string Tags, string TagSuppress = "", bool RequireAll = true)
	;return CreatureSlots.GetByRaceKeyTags(ActorCount, RaceKey, Tags, TagSuppress, RequireAll)
	;endFunction

	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER	CREATURES-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
		if creaturegroup
		DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] creaturegroup ")
		String raceID = MiscUtil.GetActorRaceEditorID(Aggressors[0]) 
		String raceKey = sslCreatureAnimationSlots.GetRaceKeyByID(raceID) 
		String CreatureTags = "Creature" 			
		String CreatureTagsSuppress = "InvisFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, "		
		
		GroupTypePlayer = raceKey
		
			;--- PLAYER - CREATURES - 5P ---;
			if AggressorCount == 4           
			
				Animations4 = SexLab.GetCreatureAnimationsByRaceKeyTags(5, RaceKey, CreatureTags, CreatureTagsSuppress, false)
		
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 5P creature animations found ("+ActorName+"): "+Animations4.Length)
				if Animations4.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 4P ---;
			if AggressorCount == 3            
			
				Animations3 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 4P creature animations found ("+ActorName+"): "+Animations3.Length)

				if Animations3.Length < 1			
				AggressorCount = 2
				Aggressors[2] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 3P ---;
			if AggressorCount == 2            

				Animations2 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, RaceKey, CreatureTags, CreatureTagsSuppress, false)

				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 3P creature animations found ("+ActorName+"): "+Animations2.Length)
				if Animations2.Length < 1			
				AggressorCount = 1
				Aggressors[1] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 2P ---;
			if AggressorCount == 1            
			
				Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, RaceKey, CreatureTags, CreatureTagsSuppress, false)
			
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 2P creature animations found ("+ActorName+"): "+Animations1.Length)
	
				if Animations1.Length < 1			
				AggressorCount = 0
				Aggressors[0] = None
					
				 Debug.MessageBox("Naked Defeat #ERROR no suitable Creature Sex Animations Found for "+RaceKey+" Check your SLAL packs and SexLab Registration.")
				 DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] #ERROR no suitable Creature Animations Found for "+RaceKey)
				endif
			endif
		endif	
			
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER HUMANS ----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
		if humangroup	
		 DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] humangroup")

			;GetScenarioModifications(VictimNumber)		 ---> group size reduction is done in the Tag and Random System already, period	

			;--- PLAYER - HUMANS - 5P ---;

			GetSexTags(VictimNumber)	
			if cfgqst.DefeatStateChapter == "Foreplay Scene"
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] Group Tags FINAL FOREPLAY (Player): "+TagsWanted)
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] Supressed Tags FINAL FOREPLAY (Player): "+TagsSuppressed)
			else 
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] Group Tags FINAL (Player): "+TagsWanted)
			DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] Supressed Tags FINAL (Player): "+TagsSuppressed)
			endif 
			
			if AggressorCount == 4   
				Animations4 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, True)
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 5P Animations Found: "+Animations4.Length)
				if Animations4.Length < 1			;5P if 4 Aggressors and no 5P anims -> reduce Aggressors to 3
				AggressorCount = 3
				Aggressors[3] = None
				endif 
			endif
			
			;--- PLAYER - HUMANS - 4P ---;
	
			if AggressorCount == 3       
				Animations3 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, True)
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 4P Animations Found: "+Animations3.Length)
				if Animations3.Length < 1				
				AggressorCount = 2
				Aggressors[2] = None
				endif 
			endif
			;--- PLAYER - HUMANS - 3P ---;

			if AggressorCount == 2      
				Animations2 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, True)
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 3P Animations Found: "+Animations2.Length)
				if Animations2.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
				AggressorCount = 1
				Aggressors[1] = None
				endif 
			endif
			
			;--- PLAYER - HUMANS - 2P ---;

			if AggressorCount == 1     
				Animations1 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, True)
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] 2P Animations Found: "+Animations1.Length)
				
				if Animations1.Length < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
				AggressorCount = 0
				Aggressors[0] = None
				DebugTrace("SelectAggressor["+ActorName+"][Round "+iFuckingRound+"] #ERROR - no suitable Animations found")
				Debug.MessageBox("Naked Defeat #ERROR no suitable Sex Animations Found with the required Tags: "+TagsWanted+". Check your SLAL packs and SexLab Registration.")
				endif
			endif	
		endif	
		
		if AggressorCount == 0 && cfgqst.DefeatStateChapter == "Foreplay Scene"
		NymTrace("Naked Defeat #ERROR - no Foreplay Animations found. Import SLATE Nymra Action pack and run it in SLATE.")
		Debug.Messagebox("Naked Defeat #ERROR - no Foreplay Animations found. Import SLATE Nymra Action pack and run it in SLATE.") 
		elseif AggressorCount > 1 
		PlayerHadGroup = true		;no further group size reduction after this?
		endif 
		
		;PLAYER
		;this removes the Raper[0] from the whipping Faction to make sure WhipQuest does catch a valid whipper
		;this also adds to busy Faction to make sure other mods do not use the actor (SpecatorCrowdsCompatibility)
	;	if (cfgqst.DefeatTypeScenario == "Rodeo") && Aggressors[0].IsInFaction(WhippingFaction)
	;		Aggressors[0].RemoveFromFaction(WhippingFaction)
	;		Aggressors[0].AddToFaction(BusyFaction)	
	;	endif
		
		;	if cfgqst.ShowDebugMessages
		;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: - Anim available for: "+AggressorCount)
		;	Debug.Notification("NAKED DEFEAT -  Anim available for: "+AggressorCount)
		;	i = AggressorCount
		;	while i
		;		i -= 1
		;		Debug.Trace("NAKED DEFEAT - Select Aggressor Stage 4: Aggressor #"+i+": "+cfgqst.GetActorInfo(Aggressors[i])) ;traces the aggressors that were found
		;		Debug.Notification("NAKED DEFEAT - Select Aggressor Stage 4: Aggressor #"+i+": "+cfgqst.GetActorInfo(Aggressors[i])) ;traces the aggressors that were found
		;	endwhile
		;endif

	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ FOLLOWERS	-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
		
	elseif VictimNumber > 0  
		
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ FOLLOWERS CREATURES	-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------

		if creaturegroup
		String raceID = MiscUtil.GetActorRaceEditorID(Aggressors[0]) 
		String raceKey = sslCreatureAnimationSlots.GetRaceKeyByID(raceID) 	
		String CreatureTags = "Creature" 						
		String CreatureTagsSuppress = "InvisFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, "	
		
			;--- FOLLOWERS - CREATURES - 5P ---;	
			if AggressorCount == 4           	 			
				Animations4_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(5, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 5P creature animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				if Animations4_Follower01.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				endif
			endif	
			;--- FOLLOWERS - CREATURES - 4P ---;
			if AggressorCount == 3            		
				Animations3_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, RaceKey, CreatureTags, CreatureTagsSuppress, false)	
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 4P creature animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				if Animations3_Follower01.Length < 1			
				AggressorCount = 2
				Aggressors[2] = None
				endif
			endif
			;--- FOLLOWERS - CREATURES - 3P ---;
			if AggressorCount == 2              	
				Animations2_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 3P creature animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				if Animations2_Follower01.Length < 1			
				AggressorCount = 1
				Aggressors[1] = None
				endif
			endif
			;--- FOLLOWERS - CREATURES - 2P ---;
			if AggressorCount == 1             		
				Animations1_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 2P creature animations found ("+ActorName+"): "+Animations1_Follower01.Length)
				if Animations1_Follower01.Length < 1			
				AggressorCount = 0
				Aggressors[0] = None
				endif
			endif
		endif	

	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ FOLLOWERS HUMANS	-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------

		if humangroup	
		
			if AggressorCount == 4            ;5P  	
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
							
				Animations4_Follower01 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 5-person animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 5-person animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				if Animations4_Follower01.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				else 
				FollowerHadGroup = true
				endif
			endif

			if AggressorCount == 3           ;4p
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations3_Follower01 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 4-person animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 4-person animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				if Animations3_Follower01.Length < 1				
				AggressorCount = 2
				Aggressors[2] = None
				else 
				FollowerHadGroup = true
				endif
			endif

			if AggressorCount == 2            ;3P		
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations2_Follower01 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 3-person animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 3-person animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				if Animations2_Follower01.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
				AggressorCount = 1
				Aggressors[1] = None
				else 
				FollowerHadGroup = true
				endif
			endif
			
			if AggressorCount == 1            ;2P
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations1_Follower01 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 2-person animations found ("+ActorName+"): "+Animations1_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: 2-person animations found ("+ActorName+"): "+Animations1_Follower01.Length)
				if Animations1_Follower01.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
				AggressorCount = 0
				Aggressors[0] = None
				endif
			endif	
		endif	
		
		;FOLLOWER
		;this removes the Raper[0] from the whipping Faction to make sure WhipQuest does catch a valid whipper
		;this also adds to busy Faction to make sure other mods do not use the actor (SpecatorCrowdsCompatibility)
	;	if (cfgqst.DefeatTypeScenario == "Rodeo") && Aggressors[0].IsInFaction(WhippingFaction)
	;		Aggressors[0].RemoveFromFaction(WhippingFaction)
	;		Aggressors[0].AddToFaction(BusyFaction)	
	;	endif
	endif
				
EndFunction

Bool FollowerHadGroup = false 
Bool PlayerHadGroup = false 

Function GetScenarioModifications(int VictimNumber)
	
	;!!!!! REMOVE THIS FOR NOW. EXTRA CHECKS BUT the TAG System is in place for this already !!!!!!!!!!
	
	;FOLLOWERS 		
	if (VictimNumber > 0) && FollowerHadGroup
	
		if AggressorCount > 1 			
			if (cfgqst.DefeatTypeScenario == "Yoke") ||	(cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Armbinder")
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetScenarioModifications - Reduce Aggressors, FollowerHadGroup Already")
			AggressorCount = 1
			Aggressors[3] = None
			Aggressors[2] = None
			Aggressors[1] = None
			endif 
		endif 
	
	;PLAYER 	
	elseif (VictimNumber == 0) && PlayerHadGroup
		
		if AggressorCount > 1 	
			if (cfgqst.DefeatTypeScenario == "Yoke") ||	(cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Armbinder")
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetScenarioModifications - Reduce Aggressors, PlayerHadGroup Already")
			AggressorCount = 1
			Aggressors[3] = None
			Aggressors[2] = None
			Aggressors[1] = None
			endif 
		endif 
	endif 
	
EndFunction 
		
;----------------------------------------------------------------------------------------------------------------------

bool SexSceneStarted = false ;internal, short time bool ;OLD USELESS REMOVE 
		
		
		
String Function GetSuppressedTags()
	;suppress Standard Scenarios without special required Tags 
	
	String sTags_supALL_Temp	
	String sTags_supBASE_Temp
	String sTags_supFURN_Temp
	String sTags_supBINDS_Temp
	sTags_supBASE_Temp = "LeadIn, GoldenShower, Futa, Femdom, 3jiou, Necro, Guro, Loving, Molag " 		;#tags
	sTags_supFURN_Temp = "Furniture, XCross, Wall, InvisFurn, Bed, Stockade, Wheel, Pillory, BedOnly, Bench, Throne, WallHole " 		;#tags "Table" AND "Chair" ALLOWED FOR NOW
	sTags_supBINDS_Temp = "Yoke, Armbinder " 
		
	sTags_supALL_Temp = sTags_supBASE_Temp + sTags_supFURN_Temp + sTags_supBINDS_Temp
	return sTags_supALL_Temp
	
	;CreatureSub		
EndFunction 	

;:::::::::::::::::::::: FOREPLAY FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


String ActiveGroup_Player = "empty"

Function OnForeplayEnd(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnForeplayEnd
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnForeplayEnd()")
	;#GUIDE: this starts RapeScene after Foreplay ends
		
		
		cfgqst.DefeatStateChapter = "Sex Scene"
		HasForeplay = false ;<<<---- ForePlayTag was stuck....
		WasForeplay = true 	;NOT IDEAL 
		
		if (!cfgqst.AbortAll)
		cfgqst.Immobilize(true)
		endif 

		;if !cfgqst.IsNymrasGame()
		
		;SexRound+=1 ;WRONG
		
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnForeplayEnd(SelectAggressor)")	
		
		;if cfgqst.IsNymrasGame()
		;skip that (test) 
		
		;WE KEEP THE SAME GROUP AS RAPERS, SO NO NEW SELECTOR NEEDED
		;THIS IS BAD BECAUSE WE DONT GET TAGS!!!!
		;NymTrace("#TEST Skip SelectAggressor")
		;else 
		if (!cfgqst.AbortAll)
		SelectAggressor(FuckingRound, 0) ;<<<---- Dangerous. we should use Foreplay as a full sex Scene for all followers
		endif 
		
		;RAPERS is the Group for the Player Scene
		Rapers = new Actor[4]					
		Rapers[0] = None						
		Rapers[1] = None						
		Rapers[2] = None						
		Rapers[3] = None	
		RaperCount = 0
		
		;save Aggressors as Rapers --> Next Player Scene starts with those?! 
		if AggressorCount == 4
		Rapers[0] = Aggressors[0]
		Rapers[1] = Aggressors[1]
		Rapers[2] = Aggressors[2]
		Rapers[3] = Aggressors[3]
		RaperCount = 4
		elseif AggressorCount == 3
		Rapers[0] = Aggressors[0]
		Rapers[1] = Aggressors[1]
		Rapers[2] = Aggressors[2]
		RaperCount = 3
		elseif AggressorCount == 2
		Rapers[0] = Aggressors[0]
		Rapers[1] = Aggressors[1]
		RaperCount = 2
		elseif AggressorCount == 1
		Rapers[0] = Aggressors[0]
		RaperCount = 1
		endif
	
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRape(After Foreplay)")	
	if (!cfgqst.AbortAll)
	cfgqst.DefeatStateChapter == "Sex Scene after Foreplay"
		if CurrentStage > 0
		CurrentStage = 0
		endif 
	;	NymBox("CurrentStage:"+CurrentStage)
		
		
	StartRape(Rapers[0])
	endif 
	
	if cfgqst.AbortAll	;else this is a void!!!
	SetStage(500)
	endif 
	
	UnregisterForModEvent("AnimationEnd_NadeForeplay")	
	
EndFunction		

;early Event
Function OnForeplayEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnForeplayEnding()")
	cfgqst.FadeToBlack(true)
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	cfgqst.Immobilize(true)	
	UnregisterForModEvent("AnimationEnding_NadeForeplay")	
EndFunction	

Function OnAnimationStart(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationStart("+EventName+")")
		
	;IMPORTANT NOTE: THIS EVENT FIRES SECOND (after AnimationStarting)
	if EventName == "AnimationStart_NadeRape"
	;Utility.Wait(8.0)
	Utility.Wait(4.0)
	cfgqst.FadeToBlack(false)
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	GetIsMouthAvailable()

	UnregisterForModEvent("AnimationStart_NadeRape")
	
	elseif EventName == "AnimationStart_NadeForeplay"
	Utility.Wait(5.0)
	cfgqst.FadeToBlack(false)
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	UnregisterForModEvent("AnimationStart_NadeForeplay")
	endif

	
EndFunction	

Function OnAnimationStarting(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationStarting("+EventName+")")
	;IMPORTANT NOTE: THIS EVENT FIRES FIRST (before AnimationStart)
	if EventName == "AnimationStarting_NadeRape"
	
	Utility.Wait(8.0) ;make External JSON #external
	cfgqst.FadeToBlack(false)
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	
	UnregisterForModEvent("AnimationStarting_NadeRape")
	endif
EndFunction	

bool ForePlayStarting = false
		
	;--------------- OLD ---------------- ; DELETE? 		
	;/	
	
Function StartForeplay(Actor akAggressor)		;
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplay (Player) START")
		;cfgqst.FadeToBlack(true)

		
		
		
		ForePlayStarting = true
		
		if akAggressor ; && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
		
		RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
		RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
		RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
		RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")
				
		cfgqst.SexScene = true
		SendModEvent("StartNakedSexExpressions")
		
		;#GUIDE: chooses the Foreplay Animations from Nymras Forced Foreplay SLAL pack. Ignores all other foreplay scenes because there are like 2...
		;unbound foreplay
		
		sslBaseAnimation[] AnimationsForeplayName = new sslBaseAnimation[1]
		
	;	anims[0] = SexLab.GetAnimationByName("(Dog) LeitoDogCunni")
		
			;SIGH..... 
			if cfgqst.IsNymrasGame()		;ANIMATIONSbyNAME (for Foreplay and stuff)
			AnimationsForeplayName[0] = SexLab.GetAnimationByName("Billyy Sitting Fingering")
			(SexLab.GetAnimationByName("Billyy Sitting Fingering"))
			;bound foreplay (cuffs only. might add yoke/etc. one day)
			elseif cfgqst.DefeatStateBindings == "Cuffs"
			AnimationsForeplay = SexLab.GetAnimationsByTags(2, "NymGroping, Cuffs", "", True)
			else
			cfgqst.DefeatBindsEquipped == "none"				;tags		 ;supress
			AnimationsForeplay = SexLab.GetAnimationsByTags(2, "NymGroping", "Cuffs", True)	
			endif
		
		
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: foreplay animations found (Player): "+AnimationsForeplay.Length)

		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD	
			
		if cfgqst.IsPlayerMale()	
		ScreenMessage("Your captor touch you everywhere... [ForePlay]")
		else
			int i = Utility.RandomInt(1,3)
			
			if cfgqst.IsPlayerMale() && i == 1
			ScreenMessage("You feel their hands everyhwere.. [ForePlay]")
			else
				if i == 1
				ScreenMessage("Your captor tries to get you wet... [ForePlay]")
				elseif i == 2
				ScreenMessage("There will be some groping before the act... [ForePlay)]")
				elseif i == 3
				ScreenMessage("Your soft skin attracts dirty fingers... [ForePlay]")
				endif
			endif
		endif
		
			if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
;
				if cfgqst.IsNymrasGame(); ----- was needed for running anims by name. nothing worked, error was elsewehere
				
				Thread.SetForcedAnimations(AnimationsForeplayName)
				;Thread.SetForcedAnimations(SexLab.GetByName("Billyy Sitting Fingering"))	;SLU+ this is why we need it to overwrite the COmpile Scripts
			;	Thread.SetForcedAnimations(SexLab.GetBySlot(SexLab.GetAnimationByName("Billyy Sitting Fingering"))) ;GetBySlot not exist...
			;	Thread.SetForcedAnimations(SexLab.GetAnimationByName("Billyy Sitting Fingering"))	;TYPE MISMATCH FUCK YOU
			
			
				else
				Thread.SetForcedAnimations(AnimationsForeplay)	
				endif				
			
				
				Thread.DisableAllOrgasms(true)
				Thread.DisableLeadIn(true)
				if cfgqst.ModSLUplus
				Thread.DisableFurnitureUse(true)
				endif
				Thread.CenterOnObject(VehiclePlayer)			
				Thread.DisableBedUse(true)
				Thread.SetHook("NadeForeplay")	

			;	if Utility.RandomInt(1, 200) <= cfgqst.RapeHandsProb  	
			;	SendModEvent("StartAddRapeHands")			
			;	endif	

				if Thread.StartThread() 
				int PlayerThread = Sexlab.FindPlayerController()
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Player Thread ID (tid): "+PlayerThread)
				
				else ;!Thread.StartThread() 
					
					Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR failed to start SexLab thread.")
					OnForeplayEnd("", "", 0, None)					
				endif
			else			
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR: failed to player and first raper to the scene.")
				Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")

				OnForeplayEnd("", "", 0, None)
			endif
		
		else ;from "if akAggressor && !akAggressor.IsDead()"
		
			if akAggressor.IsDead()
			Debug.Notification("<font color='#ff0000'>Seems your asigned rapist is dead...</font>")	;MESSAGE
			Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Seems your asigned rapist is dead...(#ERROR)")
			else
			Debug.Notification("<font color='#ff0000'>Nobody there to fuck you this time...</font>")	;MESSAGE
			Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Nobody there to fuck you this time...(#ERROR)")
			endif

		OnForeplayEnd("", "", 0, None)
		endif	
		
		ForePlayStarting = false
		SexSceneStarted = true
		
EndFunction		

/;


;/
FOREPLAY DATABASE

Billyy 3p MMF Missionary Spitroast	1	BLOWvanila
Billyy 3p MMF Reverse Cowgirl Spitroast 1	BLOWvanilla 	not worth it?
Billyy 3p MMF Standing Spitroast Anal	1 BLOWvanilla	not worth it?, better than the above

Rohzima Prison BJ MMF 2x	rape

PsycheRestrictRape3p02 	GALLOWSrape
PsycheBanditDefeatedFFF	2 x 		UNBOUNDrape brutal(		oder alle)	rape

Anubs FFM Mistress 					2x rape	 (which position has player)
Anubs Housecarl gets even (FFM)		3 rape


"Nymra Forced Foreplay Standing 03" <<<--- NEEDS REPAIRING 	#TODO 
Nymra Forced Foreplay Missionary 01 Bound >--- repair (alles spiegelverkerht)
Nymra Forced Foreplay Blowjob 01 >--- repair (alles spiegelverkerht)
/;
	

;/
String[] Property SexAnimArray Auto		;does not need to be in ESP?
String[] Property SexForeplayArray Auto	

Bool Function IsSexAnimationAvailable(String sAnimName)			

	int iAnimFound = 0

	iAnimFound = Sexlab.FindAnimationByName(sAnimName)
	NymMessage("#NOTE: iAnimFound: "+iAnimFound)

	if iAnimFound <= 0 ; || iAnimFound == 0
	return false
	else
	return true 
	endif 

EndFunction 

String Function GetSexAnimationGroups(String sType) 
		
EndFunction 

 ;1 we have 20 names and 20 ints 
 ;2 we validate the names and fill the names into an array
 ;3 we coose one name at random --> start scene 
 
 

String Function GetSexAnimation(String sType) 

		int i = 0
		int y = SexForeplayArray.GetLenght() 
		a =  as Actor
	
		while y							
		y -= 1	
		
		if IsSexAnimationAvailable(SexForeplayArray[y]) 
		SexAnimArray[i] = 
		i+ = 1
		
		
	
				
				aIsValid = false 	

				int aGender 

EndFunction 

/;

Function GetForePlayAnimation()


		



EndFunction 



int ForePlayStages = 0
bool StartForeplayByName = false
;/
Function StartForeplayNew(Actor akAggressor)		;#foreplay	#leadin	#StartForeplayNew
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(Player)")
		;cfgqst.FadeToBlack(true)
		;HasForeplay
		sslBaseAnimation[] AnimationsForeplayName = new sslBaseAnimation[1]
		
		int ForePlayerCount = 0	;this sets the group size, nothing else
		String ForePlaySelected
		bool ForePlayFound = false
		bool SkipForeplay = true
		String SLALselected = "Nymra"
		int h

		ForePlayStarting = true
		
		if akAggressor ; && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
		
		RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
		RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
		RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
		RegisterForModEvent("StageEnd_NadeForeplay", "OnStageEnd")
		RegisterForModEvent("StageStart_NadeForeplay", "OnStageStart")
		;#GUIDE: chooses the Foreplay Animations from Nymras Forced Foreplay SLAL pack. Ignores all other foreplay scenes because there are like 2...
		;unbound foreplay
		
		cfgqst.SexScene = true
		SendModEvent("StartNakedSexExpressions")
		
		
	;	anims[0] = SexLab.GetAnimationByName("(Dog) LeitoDogCunni")
	
		StartForeplayByName = true
		
			if StartForeplayByName		;ANIMATIONSbyNAME (for Foreplay and stuff)
			
				if RaperCount == 0
				Debug.MessageBox("Rapers 0")
				endif

				;BOUND FOREPLAY 		
				if StartForeplayByName && cfgqst.DefeatStateBindings == "Cuffs"

						ForePlayerCount = 1	
						
						h = utility.randomint(1,6)	
						
						if h == 1
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 09 bound"		;BOUND - ALL - 2P		-  Heavy Beating (Scene for Unconcious or Death?)
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 2	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 07 bound"		;BOUND - ALL - 2P		-  Heavy Beating (Scene for Unconcious or Death?)
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 3	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 05 bound"		;BOUND - ALL - 2P		-  Heavy Beating (Scene for Unconcious or Death?)
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 4	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 04 bound"		;Bound  - ALL - 2P		not perfect tho
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 5	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 03 bound"		;Bound  - ALL - 2P		not perfect tho
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 6	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Doggy 03 bound"		;rape - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "Nymra"
						elseif h == 7
						;DONE ForePlaySelected = "Billyy Lesbian Cuffed Kneeling Finger"		;Fingering - ALL - 2P - FF!!  	
						ForePlayStages = 0
						SLALselected = "Billyy"
						elseif h == 8
						;DONE ForePlaySelected = "Billyy Lesbian Cuffed Standing Finger"		;Fingering - ALL - 2P - FF!!  	
						ForePlayStages = 0
						SLALselected = "Billyy"
						endif	

				elseif StartForeplayByName && RaperCount == 1
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(RaperCount 1)")
					
						ForePlayerCount = 1

						h = utility.randomint(1,33)
		
						if h == 1
						;DONE ForePlaySelected = "Billyy Sitting Fingering"			;vanilla/rape - all - 2P
						ForePlayStages = 0 
						SLALselected = "Billyy"
						elseif h == 2	
						;DONE ForePlaySelected = "Nymra Aggressive Foreplay 05"		;rape - ALL - 2P
						ForePlayStages = 0
						elseif h == 3	
						;DONE ForePlaySelected = "Anubs Rape"							;rape - 3 - 2P
						ForePlayStages = 3
						SLALselected = "Anubs"
						elseif h == 4	
						;DONE ForePlaySelected = "Nymra Aggressive Foreplay 04"		;rape - ALL - 2P		- On All 4, guy stands on top
						ForePlayStages = 0
						elseif h == 5	
						;DONE ForePlaySelected = "Nymra Aggressive Foreplay 03"		;rape - ALL - 2P		-  Heavy Beating (Scene for Unconcious or Death?)
						ForePlayStages = 0
						elseif h == 6	
						;DONE ForePlaySelected = "Nymra Aggressive Foreplay 02"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 7	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 10"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 8	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 08"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 9	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 06"		;rape - ALL - 2P		-  awkward touching from behind, arms lightly raised (paralize)
						ForePlayStages = 0
						elseif h == 10	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 04 search"		;rape - ALL - 2P		-body search
						ForePlayStages = 0
						elseif h == 11	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 02"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 12	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Standing 01"		;rape - ALL - 2P		
						ForePlayStages = 0

						elseif h == 13	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Missionary 03"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 14	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Missionary 02"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 15	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 06"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 16	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 05"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 17	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 02"		;rape - ALL - 2P	 unconcious	
						ForePlayStages = 0
						elseif h == 18	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Laying 01"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 19	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Doggy 04"			;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 20	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Doggy 02"			;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 21	
						;DONE ForePlaySelected = "Nymra Forced Foreplay Doggy 01"			;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 22	
						;DONE ForePlaySelected = "Nymra Forced Foreplay 02"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 23	
						;DONE ForePlaySelected = "Nymra Forced Foreplay 01"		;rape - ALL - 2P		
						ForePlayStages = 0
						elseif h == 24	
						 ;DONEForePlaySelected = "Nibbles Spanking (Chair)"		;rape - ALL - 2P	;CHAIR 	
						ForePlayStages = 0
						SLALselected = "Nibbles"
						elseif h == 25	
						;DONE ForePlaySelected = "Nibbles Spanking (Paddle)"		;rape - ALL - 2P	;CHAIR 	
						ForePlayStages = 0
						SLALselected = "Nibbles"
						elseif h == 26	
						;DONE ForePlaySelected = "Nibbles Anal Fingering"		;rape - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "Nibbles"
						elseif h == 27	
						;DONEForePlaySelected = "NCK30 True Love"			;VANILLA KISS - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "NCK30"
						elseif h == 28	
						;DONEForePlaySelected = "NCK30 Making Out"		;VANILLA KISS - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "NCK30"
						elseif h == 29	
						;DONEForePlaySelected = "NCK30 Carnal Cuisine"		;LICKING - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "NCK30"
						elseif h == 30	
						;DONEForePlaySelected = "Anubs Foreplay"		;VANILLA - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "Anubs"
						elseif h == 31	
						;DONEForePlaySelected = "Anubs  Forced Footjob"		;rape - ALL - 2P		
						ForePlayStages = 0
						SLALselected = "Anubs"
						elseif h == 32	
						;DONEForePlaySelected = "Anubs Adult Tease 2"		;VANULLA; PLAYING NICE	
						ForePlayStages = 0
						SLALselected = "Anubs"
						elseif h == 33	
						;DONEForePlaySelected = "Billyy Spanking Doggy"		;Spanik ALL ---> for punishment scenes?  	
						ForePlayStages = 0
						SLALselected = "Billyy"
						elseif h == 34	
						;DONEForePlaySelected = "Billyy Standing Fingering"
						ForePlayStages = 4
						SLALselected = "Billyy"	
						;BILLYY Mututal Masturbatin "Loving" 2P
						;BIllYY Mutual Hand Job and Fingering 
							
						;"Billyy Spanking Standing" <<< TEST 
						endif	
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(Selected 2P): "+ForePlaySelected)
						
					
					

				; --- 3P ----
				elseif StartForeplayByName && (RaperCount == 2)	
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(RaperCount > 1)")
					
					ForePlayerCount = 2	
					;ForePlayStages = 2
					h = utility.randomint(1,11)
					;int h = 3
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew h: "+h)
					if h == 1
						if cfgqst.CheckSLALpack("Babo")
						;DONE ForePlaySelected = "BaboThreateningMMF"	;rape - 2 - 3P
						ForePlayStages = 2
						ForePlayFound = true
						endif 
					elseif h == 2
					 ;DONE ForePlaySelected = "BaboMMFGangbang03"  ;rape - 2 - 3P
					ForePlayStages = 2
					elseif h == 3
					;DONE ForePlaySelected = "BaboMMFGangbang02"   ;rape - 2 - 3P
					ForePlayStages = 2
					elseif h == 4
					;DONE ForePlaySelected = "BaboFistingMMF01"			;rape - 2 - 3P
					ForePlayStages = 2
					
					elseif h == 5
					;DONE ForePlaySelected = "Leito Aggressive Bound Threesome MFF 2"	;SPELLING? ah no, tags restrict? .(	
					ForePlayStages = 2					
					SLALselected = "Leito"
					elseif h == 6
					;DONE ForePlaySelected = "Rohzima Prison BJ MMF"		;3P
					ForePlayStages = 2
					SLALselected = "Rohzima"
					elseif h == 7
					;DONE ForePlaySelected = "PsycheBanditDefeatedFFF"	;rape - 2 - 3P
					ForePlayStages = 2
					elseif h == 8
					;DONE ForePlaySelected = "Anubs  FFM Mistress " ;leerstelle?
					ForePlayStages = 2
					elseif h == 9
					;DONE ForePlaySelected = "Anubs  MMF Rape"		;rape - 2 - 3P
					ForePlayStages = 2
					elseif h == 10
					;DONE ForePlaySelected = "Billyy 3p MMF Double Blowjob"	;CONFIRMED
					ForePlayStages = 2
					SLALselected = "Billyy"
					elseif h == 11
					;DONE ForePlaySelected = "Billyy 3p MMF 69 Anal"
					ForePlayStages = 2
					SLALselected = "Billyy"
					elseif h == 12
					;DONE ForePlaySelected = "BaboMMFGangbang01"		;rape - 1 - 3P
					ForePlayStages = 1

					elseif h == 13
					;DONE ForePlaySelected = "BaboMMFGangbang04"		;rape - 1 - 3P
					ForePlayStages = 1
					
					elseif h == 14
					;DONE ForePlaySelected = "Leito Aggressive Bound Threesome MFF 1"		;rape - 1 - 3P
					ForePlayStages = 1
					
					elseif h == 15
					;DONE ForePlaySelected = "Milky Threesome 1"		;rape - 1 - 3P
					ForePlayStages = 1
					
					elseif h == 16
					;DONE ForePlaySelected = "Milky Threesome 3"		;rape - 1 - 3P
					ForePlayStages = 1
					
					elseif h == 17
					;DONE ForePlaySelected = "Rohzima Bound Grope"		;rape - all - 3P
					ForePlayStages = 0
					SLALselected = "Rohzima"
					elseif h == 18
					;DONE ForePlaySelected = "Rohzima Girl Sleeping MMG"		;rape - 3 - 3P
					ForePlayStages = 3
					SLALselected = "Rohzima"
					elseif h == 19
					;DONE ForePlaySelected = "Billyy 3p MMF Standing Spitroast"		;rape - all - 3P
					ForePlayStages = 1
					SLALselected = "Billyy"
					elseif h == 20
					;DONE ForePlaySelected = "Billyy 3p MMF Kneeling Spitroast"		;rape - 3 - 3P
					ForePlayStages = 1
					SLALselected = "Billyy"
					elseif h == 21
					;DONE ForePlaySelected = "FunnyBizness MMF Hardcore 3-Way"		;rape - 3 - 3P UNBOUNDrape - worth
					ForePlayStages = 1
					
					elseif h == 22
					;DONE ForePlaySelected = "Nibbles Threesome Standing (MMF)"		;rape - 3 -3P light rape (worth it)
					ForePlayStages = 1
					
					elseif h == 23
					;DONE ForePlaySelected = "Nibbles Threesome (MMF)"		;rape - 3 - 3P laying vanilla	
					ForePlayStages = 1	
		
					endif
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(Selected 3P): "+ForePlaySelected)
				endif
					
				
				;NymMessage("AnimationsForeplayName: "+AnimationsForeplayName.Length)	;Lenght is 1 !!! 
				int iAnimFound = 0
				iAnimFound = Sexlab.FindAnimationByName(ForePlaySelected)
				NymMessage("iAnimFound: "+iAnimFound)
				
				;if AnimationsForeplayName.Length < 1
				if iAnimFound <= 0 ; || iAnimFound == 0
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(#ERROR): No Animation Seleced. Use Base!")
				NymMessage("#ERROR - ForePlay use Fallback")	
					;2P Fallback
					if RaperCount == 1
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartForeplayNew(RaperCount 1)")
						;BOUND FOREPLAY 
						if cfgqst.DefeatStateBindings == "Cuffs"
						ForePlaySelected = "Billyy Sitting Fingering"			;vanilla/rape - all - 2P
						ForePlayStages = 2 
						else
						ForePlaySelected = "Billyy Sitting Fingering"			;vanilla/rape - all - 2P
						ForePlayStages = 2 
						endif 
						
					;3P Fallback					
					elseif RaperCount == 2	
					;ForePlaySelected = "Billyy 3p MMF 69 Anal" ;not found why?
					ForePlaySelected = "BaboMMFGangbang02"
					"Billyy 3p MMF Standing Spitroast"
					ForePlayStages = 2
					endif 
				else 
				
				iAnimFound = Sexlab.FindAnimationByName(ForePlaySelected)
				NymMessage("iAnimFound: "+iAnimFound)
				
					if iAnimFound <= 0
					SkipForeplay = true
					NymMessage("#ERROR - Skip Foreplay TRUE")
					else
					SkipForeplay = false
					endif 
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: foreplay animations found (Player): "+AnimationsForeplayName.Length)
				endif 
				
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Foreplay Found: "+ForePlaySelected)
				
				
				AnimationsForeplayName[0] = SexLab.GetAnimationByName(ForePlaySelected)
				
			;	if cfgqst.IsNymrasGame()
			;	ScreenMessage("ForePlaySelected: "+ForePlaySelected)
			;	endif 
					;this sets the group size, nothing else
			;bound foreplay (cuffs only. might add yoke/etc. one day)
		
			;2P cuffs ;OLD DELETE (TAG BASED)
			elseif cfgqst.DefeatStateBindings == "Cuffs"
			AnimationsForeplay = SexLab.GetAnimationsByTags(2, "NymGroping, Cuffs", "", True)
			;2P unbound ;OLD DELETE (TAG BASED)
			else
			cfgqst.DefeatBindsEquipped == "none"				;tags		 ;supress
			AnimationsForeplay = SexLab.GetAnimationsByTags(2, "NymGroping", "Cuffs", True)	
			endif
			
	;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: foreplay(2P) animations found (Player): "+AnimationsForeplay.Length)

		if !SkipForeplay
		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD	
			
		;if cfgqst.IsPlayerMale()	
		ScreenMessage("They touch you everywhere... [ForePlay by "+SLALselected+"]")
		;else
		;	int i = Utility.RandomInt(1,3)
		;	
		;;	if cfgqst.IsPlayerMale() && i == 1
		;	ScreenMessage("You feel their hands everyhwere.. [ForePlay]")
		;	else
		;		if i == 1
		;		ScreenMessage("Your captor tries to get you wet... [ForePlay]")
		;		elseif i == 2
		;		ScreenMessage("There will be some groping before the act... [ForePlay)]")
		;		elseif i == 3
		;		ScreenMessage("Your soft skin attracts dirty fingers... [ForePlay]")
		;		endif
		;	endif
		;endif
		;---------------------------
		;foreplay NEW (XP)	
			
			;2P 
			if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
			;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
			int a = 1
			
				;3P
				if (ForePlayerCount > 1) && Rapers[1] && (Thread.AddActor(Rapers[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
					a += 1
					;4P
					if (ForePlayerCount > 2) && Rapers[2] && (Thread.AddActor(Rapers[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
						a += 1
						;5P
						if (ForePlayerCount > 3) && Rapers[3] && (Thread.AddActor(Rapers[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
							a += 1
							
						endif
					endif
				endif	
				
				if Nym()
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+a)
				endif
				
				;new Foreplay by name
				if StartForeplayByName; ----- was needed for running anims by name. nothing worked, error was elsewehere
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SetForcedAnimations")
				Thread.SetForcedAnimations(AnimationsForeplayName)
				
				;old Foreplay by Tag (keep?!)
				else
				Thread.SetForcedAnimations(AnimationsForeplay)	
				endif	
				
				;else
				;Thread.SetForcedAnimations(AnimationsForeplay)	
				;endif	
				
				;if i == 4
				;Thread.SetForcedAnimations(Animations4)
				;elseif i == 3
				;Thread.SetForcedAnimations(Animations3)
				;elseif i == 2
				;Thread.SetForcedAnimations(Animations2)
				;elseif i == 1
				;Thread.SetForcedAnimations(Animations1)	
				;endif			
		
		;----------------------------
		;foreplay old 2P

		;	if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
;




			;:	if cfgqst.IsNymrasGame(); ----- was needed for running anims by name. nothing worked, error was elsewehere
				
			;	Thread.SetForcedAnimations(AnimationsForeplayName)
	
				;STAYS THE SAME (we check number of actors before this)
			;	else
			;	Thread.SetForcedAnimations(AnimationsForeplay)	
			;	endif				
			
		;--------------------------

		
				Thread.DisableAllOrgasms(true)
				Thread.DisableLeadIn(true)
				if cfgqst.ModSLUplus
				Thread.DisableFurnitureUse(true)
				endif
				Thread.CenterOnObject(VehiclePlayer)			
				Thread.DisableBedUse(true)
				Thread.SetHook("NadeForeplay")	

			;	if Utility.RandomInt(1, 200) <= cfgqst.RapeHandsProb  	
			;	SendModEvent("StartAddRapeHands")			
			;	endif	

				if Thread.StartThread() 
				int PlayerThread = Sexlab.FindPlayerController()
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Player Thread ID (tid): "+PlayerThread)
				
				else ;!Thread.StartThread() 
					
					Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR failed to start SexLab thread.")
					OnForeplayEnd("", "", 0, None)					
				endif
			else			
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR: failed to player and first raper to the scene.")
				Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")

				OnForeplayEnd("", "", 0, None)
			endif
		
		else ;from "if akAggressor && !akAggressor.IsDead()"
		
			if akAggressor.IsDead()
			ScreenMessage("He is dead and can't touch you anymore...")	;MESSAGE
			else
			ScreenMessage("Nobody there to touch you...")	;MESSAGE
			endif

		OnForeplayEnd("", "", 0, None)
		endif	
	else 
	OnForeplayEnd("", "", 0, None)	
	ScreenMessage("Your Rapers had no idea how to touch you. [SLAL missing: "+SLALselected+"]")
	endif 	

	ForePlayStarting = false
	SexSceneStarted = true
	
EndFunction

/;

;:::::::::::::::::::::: FOREPLAY FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	
Bool WasForeplay	
int SexRound = 0
;Bool DoubleStart = False 	

int SexSceneStatus = 0

Actor TrackedRaper
	
Function StartRape(Actor akAggressor)		;#StartRape	;akAgressor	;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	##Rape ##Sex
DebugTrace("::::::::::: StartRape (Player, [#SexRound: "+SexRound+"] cfgqst.DefeatStateChapter: ("+cfgqst.DefeatStateChapter+"):::::::::::::::::::::::::::::::::")
NymTrace("::::::::::: StartRape (Player, [#SexRound: "+SexRound+"] ForePlayStages: ("+ForePlayStages+"):::::::::::::::::::::::::::::::::")		
		Bool StartSex = true
		SexSceneStatus = 1 ;starting

		if cfgqst.HeelsFix
			cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 11463)	;put HeelsEffect back on so Sexlab can do its thing
			Utility.Wait(0.5)
		endif 
		
		if cfgqst.SexScene && !WasForeplay
		ScreenMessage("#ERROR: Sex Scene Running- Double Start?")
		NymBox("#ERROR: Sex Scene Running- Double Start?")
		StartSex = false 
		elseif !akAggressor
		ScreenMessage("#ERROR: No Aggressor to add!")
		NymBox("#ERROR: No Aggressor to add!")
		StartSex = false
		endif 
				
		if WasForeplay ;Bridge Bool --> this tells us that the scene BEFORE this one was a Foreplay scene 
		;and we should now have the SAME group in Scene 1 that we had in Foreplay
		WasForeplay = false
		endif 

		if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
			ScreenMessage("#ERROR: Player is in SexLabForbiddenActors Faction. Attempting to fix.")
			cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)
			Utility.Wait(0.1)
			if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
			ScreenMessage("#ERROR: Fixing the problem failed. Check/fix your other Mods")
			endif
		endif	
		if cfgqst.PlayerRef.IsInFaction(SexLabAnimatingFaction) 
			cfgqst.PlayerRef.RemoveFromFaction(SexLabAnimatingFaction)
			ScreenMessage("#ERROR: Player is in SexLabAnimatingFaction Faction. Attempting to fix.")
			Utility.Wait(0.1)
			if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
			ScreenMessage("#ERROR: Fixing the problem failed. Check/fix your other Mods")
			endif
		endif		
				
		if cfgqst.StageGoBack
		DefeatStageProb = Utility.RandomInt(5,30)
		endif
		
		if StartSex ; && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
	
			if cfgqst.DefeatStateChapter == "Foreplay Scene"		
			
			RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
			RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
			RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
			RegisterForModEvent("StageEnd_NadeForeplay", "OnStageEnd")
			RegisterForModEvent("StageStart_NadeForeplay", "OnStageStart")		
			else	
			RegisterForModEvent("AnimationStart_NadeRape", "OnAnimationStart")	
			RegisterForModEvent("AnimationStarting_NadeRape", "OnAnimationStarting")
			RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
			RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
			RegisterForModEvent("StageEnd_NadeRape", "OnStageEnd")
			RegisterForModEvent("StageStart_NadeRape", "OnStageStart")
			RegisterForModEvent("OrgasmStart_NadeRape", "OnOrgasmStart")
			RegisterForModEvent("OrgasmEnd_NadeRape", "OnOrgasmEnd")

			SexRound += 1		
			endif 
		;#  OrgasmStart - Sent when an actor reaches the final stage                                                                               #
		;#  OrgasmEnd - Sent when the final stage is completed  		
				
			sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				

;/
			function SetVictim(Actor ActorRef, bool Victimize = true)
				ActorAlias(ActorRef).SetVictim(Victimize)
			endFunction

			bool function IsVictim(Actor ActorRef)
				return HasActor(ActorRef) && Victims && Victims.Find(ActorRef) != -1
			endFunction

			bool function IsAggressor(Actor ActorRef)
				return HasActor(ActorRef) && Victims && Victims.Find(ActorRef) == -1
			endFunction
			/;
			
			;if cfgqst.NymBETA
				
				if (cfgqst.DefeatTypeScenario == "Execution")
				ScreenMessage("You are gonna be killed!")
				elseif cfgqst.DefeatStateChapter == ("Foreplay Scene")
				ScreenMessage("They touch you everywhere... [Foreplay][Round: "+SexRound+"]")
				else
				ScreenMessage("You are fucked! [Round: "+SexRound+"/"+Allow_SexScenes+"]")
				endif
				
				Utility.Wait(1.0)

				if cfgqst.FemalesAllowed && D100(cfgqst.FemalesAsMales)
					if Rapers[0] && Sexlab.GetGender(Rapers[0])	== 1 
					Sexlab.EquipStrapon(Rapers[0])
					endif 
					if Rapers[1] && Sexlab.GetGender(Rapers[1])	== 1 
					Sexlab.EquipStrapon(Rapers[1])

					endif 
					if Rapers[2] && Sexlab.GetGender(Rapers[2])	== 1 
					Sexlab.EquipStrapon(Rapers[2])

					endif 
					if Rapers[3] && Sexlab.GetGender(Rapers[3])	== 1 
					Sexlab.EquipStrapon(Rapers[3])

					endif 				
				endif 

				if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
				
				ToggleRaperFaceLight(true)
				
				Thread.SetVictim(cfgqst.PlayerRef, true)
				
				storqst.SexStartMaintenance(2)
				;defqst.SexDuration = 0
				;cfgqst.SexScene = true
				;cfgqst.SexState = 2	;SEX 
				;SendModEvent("StartNakedSexExpressions") 
		
				;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
				int i = 1
					if (RaperCount > 1) && Rapers[1] && (Thread.AddActor(Rapers[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
						i += 1
						;i = 2
						if (RaperCount > 2) && Rapers[2] && (Thread.AddActor(Rapers[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
							i += 1
							;i = 3	
							if (RaperCount > 3) && Rapers[3] && (Thread.AddActor(Rapers[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
								i += 1
								;i = 4
							endif
						endif
					endif	
	
					if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+i)
					endif

					if Nym()
					StartSexEffects()
					endif 
					
					if i == 4
					Thread.SetForcedAnimations(Animations4)
					elseif i == 3
					Thread.SetForcedAnimations(Animations3)
					elseif i == 2
					Thread.SetForcedAnimations(Animations2)
					elseif i == 1
					Thread.SetForcedAnimations(Animations1)	
					endif			

					if cfgqst.ModSLUplus
					Thread.DisableFurnitureUse(true)
					endif
					
					Thread.CenterOnObject(VehiclePlayer)			
					Thread.DisableBedUse(true)
					
					if cfgqst.NakedCumming
					Thread.DisableAllOrgasms(true)
					endif 
		
					if cfgqst.DefeatStateChapter == "Foreplay Scene"
					Thread.DisableAllOrgasms(true)
					Thread.SetHook("NadeForeplay")
					else 
					Thread.SetHook("NadeRape")					
					endif 
					
					if (cfgqst.DefeatTypeScenario == "Execution") || (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Armbinder") || (cfgqst.DefeatTypeScenario == "Xcross")|| (cfgqst.DefeatTypeScenario == "Stockade")
					Thread.DisableLeadIn(true)		;MOVE THIS TO MAIN SEQUENCE TOO OMG #TODO
					endif

					;THREAD START successfull
					if Thread.StartThread() 
					SexSceneStatus = 2 ;started
					int PlayerThread = Sexlab.FindPlayerController()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Player Thread ID (tid): "+PlayerThread)
					
						if DefeatTypeExecution == "ProxyImpale"
						SendModEvent("StartMoaning")
						endif
	
						cfgqst.SexSceneCountPlayer += 1

						;start whipping ; Improve / Move elsewhere maybe?
						if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")			
						storqst.StartWhipping_00(666)
						endif

					;THREAD START FAILED
					else ;!Thread.StartThread() 
					SexSceneStatus = 3 ;failed
						Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR failed to start SexLab thread.")
						
					;	if Nym()
					;	Debug.Messagebox("%Fixing Sex A")
					;	NymTrace("%Fixing Sex A")
					;	else 
						SexFailed = true	
						cfgqst.FadeToBlack("false")	
						;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN (failed Sex)...............................................................................................						
						SexFinished(11659)
					;	endif 
					endif
				;THREAD START FAILED
				else	
				SexSceneStatus = 3 ;failed		
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR: failed to player and first raper to the scene.")
					Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")
					
						;if Nym()
					;	Debug.Messagebox("%Fixing Sex B")
					;	NymTrace("%Fixing Sex B")
					;	else 
						SexFailed = true	
						cfgqst.FadeToBlack("false")		 ;failed Sex FadeIn	
						;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN (failed Sex) ...............................................................................................							
						SexFinished(11675)
					;	endif 
				endif
				

			else ;from "if akAggressor && !akAggressor.IsDead()"
			SexSceneStatus = 3 ;failed
				if akAggressor.IsDead()
				Debug.Notification("<font color='#ff0000'>Seems your asigned rapist is dead...</font>")	;MESSAGE
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Seems your asigned rapist is dead...(#ERROR)")
				else
				Debug.Notification("<font color='#ff0000'>Nobody there to fuck you this time...</font>")	;MESSAGE
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Nobody there to fuck you this time...(#ERROR)")
				endif

					;	if Nym()
					;	Debug.Messagebox("%Fixing Sex C")
					;	NymTrace("%Fixing Sex C")
					;	else 
					;	SexFailed = true
						cfgqst.FadeToBlack("false")	
						;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN (failed Sex) ...............................................................................................
						SexFinished(11697)
						
					;	endif 
			endif	
			
			;/
			if SexSceneStatus == 2
				;start whipping
				if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")			
				whipq00.StartWhipQuest_00()
				endif
				
				SexSceneStarted = true
			else 
			cfgqst.SexScene = false 
			SexSceneStarted = false
			endif 
			/;
			
EndFunction


Function StartGropeStripFast(String FastSexSubType = "", Actor FastSexPartner1 = none, Actor FastSexPartner2 = none, ObjectReference FastSexPlace = none)		;#Fast1 ;#StartSexFast
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartGropeStrip()")

		int i = 1 
		
		Rapers = new Actor[4]					
		Rapers[0] = None						
		Rapers[1] = None						
		Rapers[2] = None						
		Rapers[3] = None	
		RaperCount = 0
		
		Rapers[0] = FastSexPartner1
		RaperCount = 1
		
		if !FastSexSubType
		FastSexSubType = "Human"
		endif 
		
		if !Rapers[0]
		NymBox("NO RAPER")
		endif 
		
		SendModEvent("StartRaperExpressions")


			if cfgqst.HeelsFix
			
			;	if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
				;do nothing - we take over from Sexlab
			;	else 
				cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 11761)	;put HeelsEffect back on so Sexlab can do its thing
				Utility.Wait(0.5)
			;	endif 
			endif 

		storqst.FastSex = 1
		RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
		RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
		RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
		RegisterForModEvent("StageEnd_NadeForeplay", "OnStageEnd")
		RegisterForModEvent("StageStart_NadeForeplay", "OnStageStart")	


		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				

		if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
		
		Thread.SetVictim(cfgqst.PlayerRef, true)

		storqst.SexStartMaintenance(2)

					;/
				;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
				int i = 1
					if (RaperCount > 1) && Rapers[1] && (Thread.AddActor(Rapers[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
						i += 1
						;i = 2
						if (RaperCount > 2) && Rapers[2] && (Thread.AddActor(Rapers[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
							i += 1
							;i = 3	
							if (RaperCount > 3) && Rapers[3] && (Thread.AddActor(Rapers[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
								i += 1
								;i = 4
							endif
						endif
					endif	
					
					Thread.AddActor(Rapers[3], false)
					/;
					
					if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartGropeStrip Aggressors added to the thread: "+i)
					endif

					String GropeSuppressedTags
					String GropeTags
					

					GropeSuppressedTags = "Sleeping, FemDom, Furniture, InvFurn, Bed, BedOnly, Table, Yoke, Armbinder, Pillory, Wheel, Chair, Necro, Guro, "

					GropeTags = "NymForeplay, "
											
					if FastSexSubType == "Human" 
					Animations1 = SexLab.GetAnimationsByTags(2, GropeTags, GropeSuppressedTags , True)	
					else
					Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, GropeTags, "Creature", GropeSuppressedTags, True)	;TRUE: all Tags in "CageTags" are required to match
			
					endif 


					if i == 4
					Thread.SetForcedAnimations(Animations4)
					elseif i == 3
					Thread.SetForcedAnimations(Animations3)
					elseif i == 2
					Thread.SetForcedAnimations(Animations2)
					elseif i == 1
					Thread.SetForcedAnimations(Animations1)	
					endif			

					if cfgqst.ModSLUplus
					Thread.DisableFurnitureUse(true)
					endif
					Thread.CenterOnObject(cfgqst.PlayerRef)	 
					Thread.CenterOnObject(FastSexPlace)	
					Thread.DisableBedUse(true)
					Thread.DisableAllOrgasms(true)
					Thread.SetHook("NadeForeplay")


					;THREAD START successfull
					if Thread.StartThread() 
					int PlayerThread = Sexlab.FindPlayerController()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartGropeStrip Player Thread ID (tid): "+PlayerThread)

					;THREAD START FAILED
					else ;!Thread.StartThread() 
						
						Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartGropeStrip #ERROR failed to start SexLab thread.")
						SexFailed = true
						;OnAnimationEnding("", "", 0, None)
				;		SexFinished()
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
						
					endif
				;THREAD START FAILED
				else			
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartGropeStrip #ERROR: failed to player and first raper to the scene.")
					Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")
					SexFailed = true
					;OnAnimationEnding("", "", 0, None)
				;	SexFinished()
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				endif

EndFunction

Function StartSexFast(String FastSexType = "", String FastSexSubType = "", Actor FastSexPartner1 = none, Actor FastSexPartner2 = none, ObjectReference FastSexPlace = none)		;#Fast1 ;#StartSexFast
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartSexFast("+FastSexType+")")
		
		Bool AllowOrgasmsInThread = true
		Bool StartSex = true
		int SexStateToSet = 0
		int i = 1 
		
		Rapers = new Actor[4]					
		Rapers[0] = None						
		Rapers[1] = None						
		Rapers[2] = None						
		Rapers[3] = None	
		RaperCount = 0
		
		Rapers[0] = FastSexPartner1
		RaperCount = 1
		if !FastSexSubType
		FastSexSubType = "Normal"
		endif 
		
		if !Rapers[0]
		NymBox("NO RAPER")
		endif 
		
		SendModEvent("StartRaperExpressions")

		;String FastSexTypeTemp = "none"
		;Actor FastSexPartnerTemp = FastSexPartner

			if cfgqst.HeelsFix
			
				;if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
				;do nothing - we take over from Sexlab
				;else 
				cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 11904)	;put HeelsEffect back on so Sexlab can do its thing
				Utility.Wait(0.5)
				;endif 
			endif 
		
	;	cfgqst.SexScene = true 
		storqst.SexStartMaintenance(2) ;2 = sex
						
		if FastSexType == "CageRape" || FastSexType == "FastSlaveRape"
		
		storqst.FastSex = 1
		SexStateToSet = 1
		RegisterForModEvent("AnimationStart_NadeRape", "OnAnimationStart")	
		RegisterForModEvent("AnimationStarting_NadeRape", "OnAnimationStarting")
		RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
		RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
		RegisterForModEvent("StageEnd_NadeRape", "OnStageEnd")
		RegisterForModEvent("StageStart_NadeRape", "OnStageStart")
		RegisterForModEvent("OrgasmStart_NadeRape", "OnOrgasmStart")
		RegisterForModEvent("OrgasmEnd_NadeRape", "OnOrgasmEnd")
		
		elseif FastSexType == "GropeStrip"  
		
		storqst.FastSex = 1
		SexStateToSet = 2
		AllowOrgasmsInThread = false
		RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
		RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
		RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
		RegisterForModEvent("StageEnd_NadeForeplay", "OnStageEnd")
		RegisterForModEvent("StageStart_NadeForeplay", "OnStageStart")	

		else 
									
			if cfgqst.DefeatStateChapter == "Foreplay Scene"
			SexStateToSet = 2			
			AllowOrgasmsInThread = false
			RegisterForModEvent("AnimationStart_NadeForeplay", "OnAnimationStart")
			RegisterForModEvent("AnimationEnding_NadeForeplay", "OnForeplayEnding")
			RegisterForModEvent("AnimationEnd_NadeForeplay", "OnForeplayEnd")	
			RegisterForModEvent("StageEnd_NadeForeplay", "OnStageEnd")
			RegisterForModEvent("StageStart_NadeForeplay", "OnStageStart")		
			else	
			SexStateToSet = 1
			RegisterForModEvent("AnimationStart_NadeRape", "OnAnimationStart")	
			RegisterForModEvent("AnimationStarting_NadeRape", "OnAnimationStarting")
			RegisterForModEvent("StageEnd_NadeRape", "OnStageEnd")
			RegisterForModEvent("StageStart_NadeRape", "OnStageStart")
			RegisterForModEvent("OrgasmStart_NadeRape", "OnOrgasmStart")
			RegisterForModEvent("OrgasmEnd_NadeRape", "OnOrgasmEnd")

			endif 
		endif 

		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				

		if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
		
		Thread.SetVictim(cfgqst.PlayerRef, true)

		storqst.SexStartMaintenance(SexStateToSet)

					;/
				;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
				int i = 1
					if (RaperCount > 1) && Rapers[1] && (Thread.AddActor(Rapers[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
						i += 1
						;i = 2
						if (RaperCount > 2) && Rapers[2] && (Thread.AddActor(Rapers[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
							i += 1
							;i = 3	
							if (RaperCount > 3) && Rapers[3] && (Thread.AddActor(Rapers[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
								i += 1
								;i = 4
							endif
						endif
					endif	
					
					Thread.AddActor(Rapers[3], false)
					/;
					

					if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+i)
					endif
					
					if FastSexType == "CageRape" || FastSexType == "FastSlaveRape"		;#Cage3
					
					
						String CageSuppressedTags
						String CageTags
						
						
						if FastSexType == "CageRape"
						CageSuppressedTags = "Sleeping, FemDom, Furniture, InvFurn, Wall, Mage, NymMagic, Bed, BedOnly, Table, Yoke, Armbinder, Pillory, Wheel, Chair, Necro, Guro, "

						elseif FastSexType == "GropeStrip"
						
						CageSuppressedTags = "Sleeping, FemDom, Furniture, InvFurn, Wall, Mage, NymMagic, Bed, BedOnly, Table, Yoke, Armbinder, Pillory, Wheel, Chair, Necro, Guro, "
					
					elseif FastSexType == "FastSlaveRape"
							
							if cfgqst.PlayerRef.IsInInterior()
							CageSuppressedTags = "Sleeping, FemDom, InvFurn, Wall, Bed, Mage, NymMagic, BedOnly, Necro, Guro, Pillory, Pole, Wheel, XCross, NymForeplayPack, "
							else 
							CageSuppressedTags = "Sleeping, FemDom, InvFurn, Wall, Table, Mage, NymMagic, Furniture, Bed, Chair, Bench, BedOnly, Necro, Guro, Pillory, Pole, Wheel, XCross, NymForeplayPack, "
							endif 
	
						endif 
						
						int j = Utility.RandomInt(1,4)
						
						if FastSexSubType == "Body Search"
						CageTags = "Search, "
						elseif FastSexSubType == "Wall"
						CageTags = "MF, Wall, "
						elseif FastSexSubType == "Dog"
						CageTags = "Canines"
						elseif FastSexSubType == "Troll"
						CageTags = "Trolls"
						elseif FastSexSubType == "Skeevers"
						CageTags = "Skeevers"
						elseif FastSexSubType == "Rieklings"
						CageTags = "Rieklings"
						elseif FastSexSubType == "Sabrecats"
						CageTags = "Sabrecats"
						
						elseif FastSexSubType == "Human" 
						
							if storqst.IsFemale(Rapers[0])
							CageTags = "FF, "
							else 
								NymTrace("Fast Rape we are here")
								if j == 1 
								CageTags = "MF, Doggy, "
								elseif j == 2
								CageTags = "MF, Blowjob, "
								elseif j == 3
								CageTags = "MF, Standing, "
								elseif j == 4
								CageTags = "MF, Cowgirl, "
								storqst.Riding = true

								endif 
							endif 
						
						else 						
						CageTags = FastSexSubType	
						endif 
						
						if FastSexSubType == "Human" 
						Animations1 = SexLab.GetAnimationsByTags(2, CageTags, CageSuppressedTags , True)	;TRUE: all Tags in "CageTags" are required to match
						else
						Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, CageTags, "Creature", CageSuppressedTags, True)	;TRUE: all Tags in "CageTags" are required to match
				
						endif 
	
					else 
					Animations1 = SexLab.GetAnimationsByTags(2, "FF", "", True)
					endif
					
					
					if i == 4
					Thread.SetForcedAnimations(Animations4)
					elseif i == 3
					Thread.SetForcedAnimations(Animations3)
					elseif i == 2
					Thread.SetForcedAnimations(Animations2)
					elseif i == 1
					Thread.SetForcedAnimations(Animations1)	
					endif			

					;if (Game.GetModByName("SexLab UtilityPlus.esp") != 255)
					if cfgqst.ModSLUplus
					Thread.DisableFurnitureUse(true)
					endif
					
					if !FastSexPlace
					Thread.CenterOnObject(cfgqst.PlayerRef)	
					else 
					Thread.CenterOnObject(FastSexPlace)	
					endif 
					
					Thread.DisableBedUse(true)
					

		
					if !AllowOrgasmsInThread || cfgqst.DefeatStateChapter == "Foreplay Scene"
					Thread.DisableAllOrgasms(true)
					Thread.SetHook("NadeForeplay")
					else 
					Thread.SetHook("NadeRape")					
					endif 
					
					if cfgqst.NakedCumming
					Thread.DisableAllOrgasms(true)
					endif 
					
				;	if (cfgqst.DefeatTypeScenario == "Execution") || (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Armbinder") || (cfgqst.DefeatTypeScenario == "Xcross")|| (cfgqst.DefeatTypeScenario == "Stockade")
				;	Thread.DisableLeadIn(true)		;MOVE THIS TO MAIN SEQUENCE TOO OMG #TODO
				;	endif

					;THREAD START successfull
					if Thread.StartThread() 
					int PlayerThread = Sexlab.FindPlayerController()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Player Thread ID (tid): "+PlayerThread)
					
					;	if DefeatTypeExecution == "ProxyImpale"
					;	SendModEvent("StartMoaning")
					;	endif
					;cfgqst.FixExpressions()	
					cfgqst.SexSceneCountPlayer += 1
					
					;THREAD START FAILED
					else ;!Thread.StartThread() 
						
						Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR failed to start SexLab thread.")
						SexFailed = true
						;OnAnimationEnding("", "", 0, None)
				;		SexFinished()
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
						
					endif
				;THREAD START FAILED
				else			
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR: failed to player and first raper to the scene.")
					Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")
					SexFailed = true
					;OnAnimationEnding("", "", 0, None)
				;	SexFinished()
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				endif
				

		;	else ;from "if akAggressor && !akAggressor.IsDead()"
			
		;		if akAggressor.IsDead()
		;		Debug.Notification("<font color='#ff0000'>Seems your asigned rapist is dead...</font>")	;MESSAGE
		;		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Seems your asigned rapist is dead...(#ERROR)")
		;		else
		;		Debug.Notification("<font color='#ff0000'>Nobody there to fuck you this time...</font>")	;MESSAGE
		;		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) Nobody there to fuck you this time...(#ERROR)")
		;		endif

			;OnAnimationEnding("", "", 0, None)
		;	SexFailed = true
		;	SexFinished()
		;	endif	
			
			;start whipping
			if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")			
			storqst.StartWhipping_00(666)
			endif
			

EndFunction

;Function OnOrgasmEndSolo()
Function OnOrgasmEndSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnOrgasmEndSolo()")

;CURRENTLY NOT NEEDED
;cfgqst.SexSceneBukkake = false

;Sexlab.AddCum(cfgqst.PlayerRef, true, true, true)


;UnregisterForModEvent("OrgasmEnd_NadeSolo2") 
;UnregisterForModEvent("OrgasmEnd_NadeSolo3") 
 
EndFunction


Function OnAnimationEndingSolo1(String EventName, String ArgString, Float ArgNum, Form Sender)	;early

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo1: SolosRunningRunning: "+SolosRunning)
SolosRunning -= 1	
;/ #solos	- how it s supposed to work:

	SolosRunning get counted by the respective Starting Thread
	SolosRunning lets other stuff wait until they reach 0
	OnOrgasm plays message? NO

/;
	if cfgqst.DefeatStateChapter == "Golden Shower"			
	cfgqst.Pee(Rapers[0], false)
	endif 


	if cfgqst.SexSceneBukkake && (SolosRunning == 0)
	;ScreenMessage("You are soaked with warm cum")
	cfgqst.SexSceneBukkake = false
	AlreadySoaked = false
	endif

if SolosRunning == 0
	;this must not happen when we are in furniture
	if cfgqst.DefeatTypeScenario == "Bukkake" 	
		if !cfgqst.SexFinished && !IsBathing
		cfgqst.SexSceneBukkake = false
		SexFinished(12190)	
		endif
	endif
endif 	
	
if SolosRunning == 0	
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo1: All Solos DONE")
endif

UnregisterForModEvent("AnimationEnding_NadeSolo1") 
;UnregisterForModEvent("AnimationEnd_NadeSolo1") 
UnregisterForModEvent("OrgasmStart_NadeSolo1") 
;UnregisterForModEvent("OrgasmEnd_NadeSolo1") 
EndFunction

Function OnAnimationEndingSolo2(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo2: SolosRunningRunning: "+SolosRunning)
;SolosRunning -= 1
SolosRunning -= 1


	if cfgqst.DefeatStateChapter == "Golden Shower"			
	cfgqst.Pee(Rapers[1], false)
	endif 
	
	
if cfgqst.SexSceneBukkake && (SolosRunning == 0)
;ScreenMessage("You are soaked with warm cum")
cfgqst.SexSceneBukkake = false
AlreadySoaked = false
endif

if SolosRunning == 0
	;this must not happen when we are in furniture
	if cfgqst.DefeatTypeScenario == "Bukkake" 	
		if !cfgqst.SexFinished && !IsBathing
		cfgqst.SexSceneBukkake = false
		SexFinished(12228)
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo2") 
;UnregisterForModEvent("AnimationEnd_NadeSolo2") 
UnregisterForModEvent("OrgasmStart_NadeSolo2") 

EndFunction

Function OnAnimationEndingSolo3(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo3: SolosRunningRunning: "+SolosRunning)
;SolosRunning -= 1
SolosRunning -= 1

	if cfgqst.DefeatStateChapter == "Golden Shower"			
	cfgqst.Pee(Rapers[2], false)
	endif 


if cfgqst.SexSceneBukkake && (SolosRunning == 0)
;ScreenMessage("You are soaked with warm cum")
cfgqst.SexSceneBukkake = false
AlreadySoaked = false
endif

if SolosRunning == 0
	;this must not happen when we are in furniture
	if cfgqst.DefeatTypeScenario == "Bukkake" 	
		if !cfgqst.SexFinished && !IsBathing
		cfgqst.SexSceneBukkake = false
		SexFinished(12261)
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo3") 
;UnregisterForModEvent("AnimationEnd_NadeSolo3") 
UnregisterForModEvent("OrgasmStart_NadeSolo3") 

EndFunction

Function OnAnimationEndingSolo4(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo4: SolosRunningRunning: "+SolosRunning)
;SolosRunning -= 1
SolosRunning -= 1


	if cfgqst.DefeatStateChapter == "Golden Shower"			
	cfgqst.Pee(Rapers[3], false)
	endif 

if cfgqst.SexSceneBukkake && (SolosRunning == 0)
;ScreenMessage("You are soaked with warm cum")
cfgqst.SexSceneBukkake = false
AlreadySoaked = false
endif

if SolosRunning == 0
	;this must not happen when we are in furniture
	if cfgqst.DefeatTypeScenario == "Bukkake" 	
		if !cfgqst.SexFinished && !IsBathing
		cfgqst.SexSceneBukkake = false
		SexFinished(12294)
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo4") 
;UnregisterForModEvent("AnimationEnd_NadeSolo4") 
UnregisterForModEvent("OrgasmStart_NadeSolo4") 

EndFunction

Function OnOrgasmStart(String EventName, String ArgString, Float ArgNum, Form Sender)	 ;#OnOrgasmStart
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnOrgasmStart()")

if (EventName == "OrgasmStart_NadeRape")
defqst.MouthOpening = 100
defqst.InstantMouthOpening()
;MfgConsoleFunc.SetPhoneme(cfgqst.PlayerRef, 1, 100)		;BIG AAAH
cfgqst.Orgasm = true
SendModEvent("Moan")
cfgqst.Orgasm = false
endif

if Nym()
ScreenMessage("You are cumming hard...")
endif 

EndFunction

;#FIXBUKKAKE

bool AlreadySoaked = false

;ONLY NEEDED FOR CUM, NOTHING ELSE
Function OnOrgasmStartSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	;#bukfix
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnOrgasmStartSolo()")

if EventName == "OrgasmStart_NadeSolo1"
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddCum(1)")

	Sexlab.AddCum(Game.GetPlayer(), true, false, false)


elseif EventName == "OrgasmStart_NadeSolo2"
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddCum(2)")

	Sexlab.AddCum(Game.GetPlayer(), false, true, false)


elseif EventName == "OrgasmStart_NadeSolo3"
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddCum(3)")

	Sexlab.AddCum(Game.GetPlayer(), false, false, true)


elseif EventName == "OrgasmStart_NadeSolo4"
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddCum(4)")

	Sexlab.AddCum(Game.GetPlayer(), true, true, true)

endif

EndFunction

Int SolosRunning = 0
Bool AllowOrgasms
;Int SolosRunning = 0

Function StartSoloAggressor(actor akactor)	;#StartSoloAggressor #solo2

	;GUIDE: we Start Male Masturbation Scenes (4 right now, each for the Player) on one of the 4 Markers around him. 
	;OnAnimationEndingSoloX will reduce the count of active Solos 
	;OnOrgasmSoloX will apply Cum Overlays to the PC 

	SolosRunning += 1
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartAggressorSolo("+SolosRunning+")(DefeatStateChapter: "+cfgqst.DefeatStateChapter+")")
			
		if akactor	

			cfgqst.SexSceneBukkake = true
			
			if akactor.IsOnMount()		;hmm, put elsewhere?
			akactor.Dismount()
			endif
			
			;MALE Actor (Gender 0)
			if Sexlab.GetGender(akactor) == 0		;NO FEMALES GET HERE CURRENTLY 

				if cfgqst.DefeatStateChapter == "Golden Shower"			
				AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, M, Standing", "F, FapAndTouch, Furniture, InvisFurn, Funnybiz", True)	;supress Fap and Touch, too far foward.
				else 
				AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, M, Standing", "F, Furniture, InvisFurn, Funnybiz", True)	;supress Female (F) anims because... fuck SLAL tags.
				endif 
				
			;FEMALE Actor (Gender 1)
			else
			AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, F, Standing", "M, Furniture, InvisFurn, Funnybiz", True)	;supress Male (M) anims because... fuck SLAL tags.	
			endif

			sslThreadModel Thread = SexLab.NewThread()					
					
			if Thread && (Thread.AddActor(akactor, true) >= 0) 			
			NymTrace("StartAggressorSolo("+SolosRunning+") A")
			
			Thread.SetAnimations(AnimationsSolo)		
			
				if SolosRunning == 1
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
				
					if Nym()
					Thread.CenterOnObject(storqst.WatcherXMarkers[0])
					else 
					Thread.CenterOnObject(xMarkerHeading_00)	
					endif				
				elseif SolosRunning == 2
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
					if Nym()
					Thread.CenterOnObject(storqst.WatcherXMarkers[1])
					else 
					Thread.CenterOnObject(xMarkerHeading_01)	
					endif				
				elseif SolosRunning == 3
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
					if Nym()
					Thread.CenterOnObject(storqst.WatcherXMarkers[2])
					else 
					Thread.CenterOnObject(xMarkerHeading_02)	
					endif				
				elseif SolosRunning == 4
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
					if Nym()
					Thread.CenterOnObject(storqst.WatcherXMarkers[3])
					else 
					Thread.CenterOnObject(xMarkerHeading_03)	
					endif				
				endif
					
				;	>>>>>>>>>>>> NEW NEW NEW ;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>
				;/
				int i = 8 ;safety 
				int j = 0 ;SceneID
				SolosRunning = 0
				cfgqst.SexSceneBukkake = true
				sslThreadModel Thread
				AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, M, Standing", "F, Furniture, InvisFurn, Funnybiz", True)
				
				while i > 0 
					i -= 1
					if Fappers[j]	;starting with Fapppers 0
						Thread = SexLab.NewThread()
						if Thread && (Thread.AddActor(Fappers[j], true) >= 0) 	
						Thread.SetAnimations(AnimationsSolo)	
						Thread.CenterOnObject(storqst.WatcherXMarkers[j])	;starting with WatchMarker 0
						Thread.DisableAllOrgasms(false) ;Bukkake can all Orgasm
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Starting SUCCESS Fappers["+j+"] Scene("+SolosRunning+")")
						j += 1
						SolosRunning += 1
						else 
						j += 1
						Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Starting FAILED Fapper ["+j+"] Scene("+SolosRunning+")")
						endif
					else 
					;Fappers is NONE > end loop
					i = 0
						
					endif 
					
				endwhile 	
				
				/;
				;	>>>>>>>>>>>> NEW NEW NEW ;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>;>>>>>>>>>>>>


				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
			
		;	if IsBathing || !AllowOrgasms
		;	Thread.DisableAllOrgasms(true)
		;	endif
		
				if cfgqst.DefeatStateChapter == "Golden Shower"			
				NymTrace("StartAggressorSolo("+SolosRunning+") Pee Equipped")
				cfgqst.Pee(akactor, true)
				Thread.DisableAllOrgasms(true)
				elseif cfgqst.DefeatStateChapter == "Bukkake"		
				Thread.DisableAllOrgasms(false)
				elseif (cfgqst.DefeatStateChapter == "Voyeurs") || (cfgqst.DefeatStateChapter == "Forced Bathing")
				Thread.DisableAllOrgasms(false)
				endif 
			
				if SolosRunning == 1
				
				RegisterForModEvent("AnimationEnding_NadeSolo1", "OnAnimationEndingSolo1")
				;RegisterForModEvent("AnimationEnd_NadeSolo1", "OnOrgasmEndSolo") ;why leads to OnOrgasmEnd? Bug or intentional?
				;RegisterForModEvent("OrgasmEnd_NadeSolo1", "OnOrgasmEndSolo")
				RegisterForModEvent("OrgasmStart_NadeSolo1", "OnOrgasmStartSolo")

				Thread.SetHook("NadeSolo1")
				elseif SolosRunning == 2	
				
				RegisterForModEvent("AnimationEnding_NadeSolo2", "OnAnimationEndingSolo2")
				;RegisterForModEvent("AnimationEnd_NadeSolo2", "OnOrgasmEndSolo")
				;RegisterForModEvent("OrgasmEnd_NadeSolo2", "OnOrgasmEndSolo")
				RegisterForModEvent("OrgasmStart_NadeSolo2", "OnOrgasmStartSolo")
				
				Thread.SetHook("NadeSolo2")	
				
				elseif SolosRunning == 3
				
				RegisterForModEvent("AnimationEnding_NadeSolo3", "OnAnimationEndingSolo3")
				;RegisterForModEvent("AnimationEnd_NadeSolo3", "OnOrgasmEndSolo") why?
				;RegisterForModEvent("OrgasmEnd_NadeSolo3", "OnOrgasmEndSolo")
				RegisterForModEvent("OrgasmStart_NadeSolo3", "OnOrgasmStartSolo")
		
				Thread.SetHook("NadeSolo3")
				
				elseif SolosRunning == 4
				RegisterForModEvent("AnimationEnding_NadeSolo4", "OnAnimationEndingSolo4")
				;RegisterForModEvent("AnimationEnd_NadeSolo4", "OnOrgasmEndSolo")
				;RegisterForModEvent("OrgasmEnd_NadeSolo4", "OnOrgasmEndSolo")
				RegisterForModEvent("OrgasmStart_NadeSolo4", "OnOrgasmStartSolo")
				
				Thread.SetHook("NadeSolo4")
				
				endif
				
				
				;thread start FAILED
				if !Thread.StartThread()							
					cfgqst.SexSceneBukkake = false
					Debug.Notification("NAKED DEFEAT: #ERROR starting SOLO: "+SolosRunning)
					SolosRunning -=1
					
				;thread start SUCCESSFULL
				;do nothing currently
				else
					;SolosRunning += 1
				;/	if SolosRunning == 1
					RegisterForModEvent("AnimationEnding_NadeSolo1", "OnAnimationEndingSolo")
					RegisterForModEvent("AnimationEnd_NadeSolo1", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmEnd_NadeSolo1", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmStart_NadeSolo1", "OnOrgasmStartSolo")
					elseif SolosRunning == 2
					RegisterForModEvent("AnimationEnding_NadeSolo2", "OnAnimationEndingSolo")
					RegisterForModEvent("AnimationEnd_NadeSolo2", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmEnd_NadeSolo2", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmStart_NadeSolo2", "OnOrgasmStartSolo")
					elseif SolosRunning == 3
					RegisterForModEvent("AnimationEnding_NadeSolo3", "OnAnimationEndingSolo")
					RegisterForModEvent("AnimationEnd_NadeSolo3", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmEnd_NadeSolo3", "OnOrgasmEndSolo")
					RegisterForModEvent("OrgasmStart_NadeSolo3", "OnOrgasmStartSolo")
					elseif SolosRunning == 4
					RegisterForModEvent("AnimationEnding_NadeSolo4", "OnAnimationEndingSolo")	
					endif
					/;
				endif
			endif

		else				
			;thread start FAILED
			cfgqst.SexSceneBukkake = false
			Debug.Notification("NAKED DEFEAT: #ERROR starting SOLO: "+SolosRunning)
			SolosRunning -=1
		endif
		
		;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartAggressorSolo(SolosRunning): " +SolosRunning)
		
EndFunction

Function StartMasturbation()			;#masturbation
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRape (Player) START")
		
	;	ForcePosing_2 = false
		
		Animations1 = SexLab.GetAnimationsByTags(1, "Solo, F", "Tentacles, M, InvisFurn, ", True)
		
		RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
		RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
		RegisterForModEvent("StageStart_NadeRape", "OnStageStart")
		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD			
		ScreenMessage("You are forced to fuck yourself!")		
		InfoMessage("SCENARIO: Masturbation")	
		;Debug.Notification("<font color='#ff0000'>You are forced to fuck yourself!</font>")	;MESSAGE
		;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) You are forced to fuck yourself!")

			
	if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) 			;makes Thread with PC and Aggressor(0)
		;defqst.SexDuration = 0
		;cfgqst.SexScene = true
		;storqst.HideHUD()
		
		storqst.SexStartMaintenance(0)
		
	;	SendModEvent("StartNakedSexExpressions")	
	
		Thread.SetAnimations(Animations1)	
		;Thread.SetForcedAnimations(Animations1)		
		Thread.CenterOnObject(VehiclePlayer)			
		Thread.DisableBedUse(true)
		Thread.DisableLeadIn(true)
		Thread.SetHook("NadeRape")	
		
		cfgqst.FadeToBlack(false)

		if !Thread.StartThread()							
			;OnAnimationEnding("", "", 0, None)
			SexFinished(12602)
			Debug.Notification("NAKED DEFEAT: ERROR starting SexLab thread.")
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Failed to start SexLab thread.")
		endif

	else				
		SexFinished(12608)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Failed to add the Player to the SexLab thread.")
		Debug.Notification("NAKED DEFEAT: ERROR: Failed to add the Player to the SexLab thread.")
	endif
	
	;whipq00.StartWhipQuest_00()
	storqst.StartWhipping_00(666)	
	
	;	if Nym()
		
	;	else 
	;	SexSceneStarted = true
	;	endif 
		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;/
;no longer needed
Function StartIdleScene_01()		;#idle			;akAgressor		;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	#Rape
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartIdleScene_01 START")

			
		sslThreadModel Thread = SexLab.NewThread()										
	;	Debug.Notification("<font color='#ff0000'>They fuck your follower, too!</font>")	;MESSAGE
		AnimationsIdle01 = SexLab.GetAnimationsByTags(1, "tentacle", none, True)
			
			if Thread && (Thread.AddActor(Victims[0], true) >= 0) 
				
				Thread.SetAnimations(Animations1)
				;Thread.SetForcedAnimations(Animations1)										
				Thread.CenterOnObject(Vehicle_Victims0)	
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn()
	;			if VictimNumber == 0				
				Thread.SetHook("Nade_StartIdleScene_01done")			
			endif
EndFunction
/;

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------

bool SexFollower01Running = false ;internal, short time bool

;REBUILD THIS TO WORK WITH X FOLLOWERS!!! 

Function StartRapeFollower01(Actor akAggressor)					;#StartRapeFollower01		
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRape (Follower01) START")
				
		if cfgqst.HeelsFix
		
		;	if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
			;do nothing - we take over from Sexlab
		;	else 
			cfgqst.RestoreHeelsEffectOnActor(Victims[0], 12675)	;put HeelsEffect back on so Sexlab can do its thing
			Utility.Wait(1.0)
		;	endif 
		endif 
		
		SexFollower01Running = true					
						
		if akAggressor ;&& !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_Naderapefollower01", "OnAnimationEnding01")
		RegisterForModEvent("AnimationEnd_Naderapefollower01", "OnAnimationEnd01")
			
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>They fuck your follower, too!</font>")	;MESSAGE
		;;;---- new
			if cfgqst.FemalesAllowed && D100(cfgqst.FemalesAsMales)
				if Aggressors[0] && Sexlab.GetGender(Aggressors[0])	== 1 
				Sexlab.EquipStrapon(Aggressors[0])
				;Sexlab.TreatAsMale(Aggressors[0])
				
				endif 
				if Aggressors[1] && Sexlab.GetGender(Aggressors[1])	== 1 
				Sexlab.EquipStrapon(Aggressors[1])
				;Sexlab.TreatAsMale(Aggressors[1])
				
				endif 
				if Aggressors[2] && Sexlab.GetGender(Aggressors[2])	== 1 
				Sexlab.EquipStrapon(Aggressors[2])
				;Sexlab.TreatAsMale(Aggressors[2])
				
				endif 
				if Aggressors[3] && Sexlab.GetGender(Aggressors[3])	== 1 
				Sexlab.EquipStrapon(Aggressors[3])
				;Sexlab.TreatAsMale(Aggressors[3])	
				endif 				
			endif 

			;;;---- new
			
			if Thread && (Thread.AddActor(Victims[0], true) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)		
			int i = 1
			
			Thread.SetVictim(Victims[0], true)
			
				if (AggressorCount > 1) && Aggressors[1] && (Thread.AddActor(Aggressors[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
					i += 1
					;i = 2
					if (AggressorCount > 2) && Aggressors[2] && (Thread.AddActor(Aggressors[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
						i += 1
						;i = 3	
						if (AggressorCount > 3) && Aggressors[3] && (Thread.AddActor(Aggressors[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
							i += 1
							;i = 4
						endif
					endif
				endif	
				
				if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+i)
				endif

				
				if i == 4
				Thread.SetForcedAnimations(Animations4_Follower01)
				elseif i == 3
				Thread.SetForcedAnimations(Animations3_Follower01)
				elseif i == 2
				Thread.SetForcedAnimations(Animations2_Follower01)
				elseif i == 1
				Thread.SetForcedAnimations(Animations1_Follower01)	
				endif						
				Thread.CenterOnObject(Vehicle_Victims0)	
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
					
				Thread.SetHook("Naderapefollower01")	

			
			
				if !Thread.StartThread()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start A (StartRapeFollower01)")
					Debug.Notification("Nobody around to fuck your follower")
					OnAnimationEnd01("", "", 0, None)
					;Debug.Notification("ERROR starting SexLab thread.")
				;	Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Failed to start SexLab thread (StartRapeFollower01).")
				endif

			else				
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start B (StartRapeFollower01)")
				Debug.Notification("Nobody around to fuck your follower")
				OnAnimationEnd01("", "", 0, None)
				;Debug.Notification("ERROR: failed to add the first two participants to the SexLab thread.")
				;Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
			endif
		else		
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start C (StartRapeFollower01)")
			Debug.Notification("Nobody around to fuck your follower")
			OnAnimationEnd01("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------


bool SexFollower02Running = false	;internal, short time bool

Function StartRapeFollower02(Actor akAggressor)		;#StartRapeFollower02	
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRape (Follower02) START")
			
		if cfgqst.HeelsFix
		
		;	if Nym()&& !IsHumanFucker ; HeelsFix_Sexlab
			;do nothing - we take over from Sexlab
		;	else 
			cfgqst.RestoreHeelsEffectOnActor(Victims[1], 12791)	;put HeelsEffect back on so Sexlab can do its thing
			Utility.Wait(1.0)
		;	endif 
		endif 
		
		SexFollower02Running = true					
						
		if akAggressor ;&& !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_Naderapefollower02", "OnAnimationEnding02")
		RegisterForModEvent("AnimationEnd_Naderapefollower02", "OnAnimationEnd02")
			
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>And they also fuck your other follower...</font>")	;MESSAGE

			if cfgqst.FemalesAllowed && D100(cfgqst.FemalesAsMales)
				if Aggressors[0] && Sexlab.GetGender(Aggressors[0])	== 1 
				Sexlab.EquipStrapon(Aggressors[0])
				;Sexlab.TreatAsMale(Aggressors[0])
				
				endif 
				if Aggressors[1] && Sexlab.GetGender(Aggressors[1])	== 1 
				Sexlab.EquipStrapon(Aggressors[1])
				;Sexlab.TreatAsMale(Aggressors[1])
				
				endif 
				if Aggressors[2] && Sexlab.GetGender(Aggressors[2])	== 1 
				Sexlab.EquipStrapon(Aggressors[2])
				;Sexlab.TreatAsMale(Aggressors[2])
				
				endif 
				if Aggressors[3] && Sexlab.GetGender(Aggressors[3])	== 1 
				Sexlab.EquipStrapon(Aggressors[3])
				;Sexlab.TreatAsMale(Aggressors[3])	
				endif 				
			endif 

			
			if Thread && (Thread.AddActor(Victims[1], true) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
			int i = 1
			
			Thread.SetVictim(Victims[1], true)
			
				if (AggressorCount > 1) && Aggressors[1] && (Thread.AddActor(Aggressors[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
					i += 1
					;i = 2
					if (AggressorCount > 2) && Aggressors[2] && (Thread.AddActor(Aggressors[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
						i += 1
						;i = 3	
						if (AggressorCount > 3) && Aggressors[3] && (Thread.AddActor(Aggressors[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
							i += 1
							;i = 4
						endif
					endif
				endif	
				
				if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+i)
				endif
				
				if i == 4
				Thread.SetForcedAnimations(Animations4_Follower01)
				elseif i == 3
				Thread.SetForcedAnimations(Animations3_Follower01)
				elseif i == 2
				Thread.SetForcedAnimations(Animations2_Follower01)
				elseif i == 1
				Thread.SetForcedAnimations(Animations1_Follower01)		
				endif						
				Thread.CenterOnObject(Vehicle_Victims1)	
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
					
				Thread.SetHook("Naderapefollower02")				
			
		
			
				if !Thread.StartThread()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start A (StartRapeFollower02)")
					Debug.Notification("Nobody around to fuck your other follower")
					OnAnimationEnd02("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start B (StartRapeFollower02)")
				Debug.Notification("Nobody around to fuck your other follower")
				OnAnimationEnd02("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start C (StartRapeFollower02)")
			Debug.Notification("Nobody around to fuck your other follower")
			OnAnimationEnd02("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function StartPee(Actor akAggressor)						;#pee

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartPee START")
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
		

		RegisterForModEvent("AnimationEnding_NadePee", "OnPeeFinished")
		RegisterForModEvent("StageStart_NadePee", "OnStageStart")
		
	;	defqst.SexDuration = 0
	;	cfgqst.SexScene = true
	;	storqst.HideHUD()
	;	cfgqst.SexState = 3 ;GoldenShower
		
		storqst.SexStartMaintenance(3)
		
	;	SendModEvent("StartNakedSexExpressions")
		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD						
		ScreenMessage("Here is your golden shower!")	

			if Thread && (Thread.AddActor(cfgqst.PlayerRef, false) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
			int i = 1
				if (AggressorCount > 1) && Aggressors[1] && (Thread.AddActor(Aggressors[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
					i += 1
					;i = 2
					if (AggressorCount > 2) && Aggressors[2] && (Thread.AddActor(Aggressors[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
						i += 1
						;i = 3	
						if (AggressorCount > 3) && Aggressors[3] && (Thread.AddActor(Aggressors[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
							i += 1
							;i = 4
						endif
					endif
				endif	
				
				if cfgqst.ShowDebugMessages
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Aggressors added to the thread: "+i)
				endif
								
				if i == 4
				Thread.SetAnimations(AnimationsPee4)
				elseif i == 3
				Thread.SetAnimations(AnimationsPee3)
				elseif i == 2
				Thread.SetAnimations(AnimationsPee2)
				elseif i == 1
				Thread.SetAnimations(AnimationsPee1)	
				endif	
				
				if cfgqst.ModSLUplus
;				(Game.GetModByName("SexLab UtilityPlus.esp") != 255)
				Thread.DisableAllOrgasms(true)
				Thread.DisableFurnitureUse(true)
				endif
				
				Thread.CenterOnObject(cfgqst.PlayerRef)			
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
				Thread.SetHook("NadePee")		
			
			
				if !Thread.StartThread()
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start A (StartPee)")		
					Debug.Notification("Nobody wants to piss on you.")
					OnPeeFinished("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start B (StartPee)")		
				Debug.Notification("Nobody wants to piss on you.")
				OnPeeFinished("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#ERROR) Failed to Start C (StartPee)")		
			Debug.Notification("Nobody wants to piss on you.")
			OnPeeFinished("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function OnPeeFinished(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnPeeFinished				
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnPeeFinished()")
;EARLY EVENT	
	
	;#TODO this needs to be synchronized with the rest.
	; in general I need to make more of the PeeEvent and maybe add different special scenes too.
	
	;ForcePosing_1 = false
	;cfgqst.FadeToBlack(true)	;NO LONGER NECESSARY. we handle this elsewehere.
	;cfgqst.SexScene = false
	cfgqst.IsMouthAvailable = 1
	
	storqst.SexEndMaintenance()
	
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
	; after beeing peed on we struggle to get rid of the pee on our skin	
	PlayPoseOnActor(cfgqst.PlayerRef, "struggle", false)		
	PlayPoseOnActor(Victims[0], "struggle", false)
	PlayPoseOnActor(Victims[1],"struggle", false)
	
	Utility.Wait(3.0)
	;cfgqst.PlayerPosing("struggle", false)
	
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
	; Repair Posing 	
	PlayPoseOnActor(cfgqst.PlayerRef, "struggle", true)		
	PlayPoseOnActor(Victims[0], "struggle", true)
	PlayPoseOnActor(Victims[1], "struggle", true)
	
	cfgqst.FadeToBlack(false) ;PEE ENDING FADE (OFF) , both for Golden Shower and Forced Bathing
	if cfgqst.FollowerCount == 0
	Sexlab.ThreadSlots.StopAll()
	endif

	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
	; Repair Posing 	
	PlayPoseOnActor(cfgqst.PlayerRef, "struggle", true)		
	PlayPoseOnActor(Victims[0], "struggle", true)
	PlayPoseOnActor(Victims[1], "struggle", true)

	cfgqst.Immobilize(true)

	SendModEvent("Moan")

	Utility.Wait (3.0)

	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
	; Repair Posing 	
	PlayPoseOnActor(cfgqst.PlayerRef, "struggle", true)		
	PlayPoseOnActor(Victims[0], "struggle", true)
	PlayPoseOnActor(Victims[1], "struggle", true)
	SendModEvent("Moan")
	
	Utility.Wait (3.0)
	SendModEvent("Moan")
	
	Utility.Wait (3.0)
	SendModEvent("Moan")

	UnRegisterForModEvent("AnimationEnd_NadePee")
	UnRegisterForModEvent("AnimationEnding_NadePee")  
	Peeing = false

EndFunction


;----------------------------------------------------------------------------------------------------------------------

Event OnStartSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	;	;#solo		#events #bukkake
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartSolo()")
	
	;IMPROVE THIS!!!
	;WE want to generally select actor groups in a centralized function

	UpdateGroup("Fappers")
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartSolo(FapperCount"+FapperCount+")")

	int System = 3 
	
	if System == 3

		if FapperCount > 0
		StartSoloAggressor(Fappers[0])	
		endif
		
		if FapperCount > 1
		StartSoloAggressor(Fappers[1])	
		endif
		
		if FapperCount > 2
		StartSoloAggressor(Fappers[2])	
		endif
		
		if FapperCount > 3
		StartSoloAggressor(Fappers[3])	
		endif
	
	elseif System == 2 

		if RaperCount > 0
		StartSoloAggressor(Rapers[0])	
		endif
		
		if RaperCount > 1
		StartSoloAggressor(Rapers[1])	
		endif
		
		if RaperCount > 2
		StartSoloAggressor(Rapers[2])	
		endif
		
		if RaperCount > 3
		StartSoloAggressor(Rapers[3])	
		endif
		
	elseif System == 1 
	
		if RapersACount > 0
		StartSoloAggressor(RapersA[0])	
		endif
		
		if RapersACount > 1
		StartSoloAggressor(RapersA[1])
		elseif RapersBCount > 0
		StartSoloAggressor(RapersB[0])
		endif
		
		if RapersACount > 2
		StartSoloAggressor(RapersA[2])
		elseif RapersBCount > 1
		StartSoloAggressor(RapersB[1])
		endif
		
		if RapersACount > 3
		StartSoloAggressor(RapersA[3])
		elseif RapersBCount > 2
		StartSoloAggressor(RapersB[2])
		endif
	endif 
		
	Utility.Wait(1.0)
	cfgqst.FadeToBlack(false)
	
	;THIS SHOULD NOT BE HERE:::: 
	;if (SolosRunning == 0) && !cfgqst.SexFinished && !IsBathing
	;SexFinished()
	;endIf
	
;	Utility.Wait(3.0)
	;cfgqst.FadeToBlack(0)
;	ScreenMessage("And here is your cum bath!")
;	endIf	
	
EndEvent

Event OnStartVoyeurs(String EventName, String ArgString, Float ArgNum, Form Sender)	 ;#Voyeurs
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartVoyeurs()")
		
	;AllowOrgasms = false
	;/
	
	if SolosRunning == 0
	
		if (VoyeursACount > 0) && !VoyeursA[0].IsInFaction(SexLabAnimatingFaction)&& !VoyeursA[0].IsInFaction(BusyFaction)
		StartSoloAggressor(VoyeursA[0])	
		endif
		
		if (VoyeursACount > 1) && !VoyeursA[0].IsInFaction(SexLabAnimatingFaction)&& !VoyeursA[0].IsInFaction(BusyFaction)
		StartSoloAggressor(VoyeursA[1])
		endif
		
		if (VoyeursACount > 2) && !VoyeursA[0].IsInFaction(SexLabAnimatingFaction)&& !VoyeursA[0].IsInFaction(BusyFaction)
		StartSoloAggressor(VoyeursA[2])
		endif
		
		if (VoyeursACount > 3) && !VoyeursA[0].IsInFaction(SexLabAnimatingFaction)&& !VoyeursA[0].IsInFaction(BusyFaction)
		StartSoloAggressor(VoyeursA[3])
		endif
	endif 
	/;
				
EndEvent

;----------------------------------------------------------------------------------------------------------------------

bool MolestersCalled = false

Event OnStartCallMolesters(String EventName, String ArgString, Float ArgNum, Form Sender)
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartCallMolesters()")
	
	MolestersCalled = true

	;Actor closestA = Game.FindClosestActor(0.0, 0.0, 0.0, 1000.0)

	;Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), 5.0)
	Actor closestA = Game.FindClosestActorFromRef(cfgqst.PlayerRef, 5000.0)
	
	
	if closestA
	;Debug.Messagebox("Molester found")
	closestA.GetBaseObject().GetName()
	closestA.EvaluatePackage()
		
		If closestA.GetSitState() > 0
		closestA.MoveTo(closestA, 0.0, 0.0, closestA.GetHeight() + 10.0)
		Else
		closestA.MoveTo(closestA)
		EndIf	

	
	
		closestA.MoveTo(closestA)
		
	;	bool PlayerReached = false
		
		while MolestersCalled
				
		closestA.PathToReference(cfgqst.PlayerRef, 0.75)
		Utility.Wait(1.0)

		endWhile
	
	
		;Debug.Messagebox("Molester called OFF")
	endif
	
	;/
	if RapersACount > 0
	
		RapersA[0].EvaluatePackage()
		
		If RapersA[0].GetSitState() > 0
		RapersA[0].MoveTo(RapersA[0], 0.0, 0.0, RapersA[0].GetHeight() + 10.0)
		Else
		RapersA[0].MoveTo(RapersA[0])
		EndIf	

		RapersA[0].MoveTo(cfgqst.PlayerRef)
		
	;	bool PlayerReached = false
		
		while MolestersCalled
				
		RapersA[0].PathToReference(cfgqst.PlayerRef, 0.75)
		Utility.Wait(1.0)

		endWhile
		
	EndIf
	/;
		
EndEvent


Event OnStartCombatScanner(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				#events
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartCombatScanner()")
;	cfgqst.CombatScan()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartForceExpression(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartForceExpression()")
;	cfgqst.ForceExpression()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeHands(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartAddRapeHands()")
	cfgqst.AddRapeHands()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

bool KeepMoaning = false

Event OnStartMoaning(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartMoaning()")
	
	KeepMoaning = true
	while KeepMoaning
	SendModEvent("Moan")
	Utility.Wait(1.0)
	endwhile
	
EndEvent


;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeTears(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartAddRapeTears()")	
	cfgqst.AddRapeTears()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeCount(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartAddRapeCount()")	
	cfgqst.AddRapeCount()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartForceImmobilize(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartForceImmobilize()")

EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnEndofDefeat(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
;#todo we can add a Float ("ArgNum") to set the "wait" time individually.
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnEndofDefeat()")
	IsEndOfDefeat = true 
	Utility.Wait(2.0)
;	ForcePosing_2 = false
	SetStage(1000)	
EndEvent

bool IsEndOfDefeat = false 	
bool StartSlavery = false
bool StopSprintScan = false ;internal short time	
	
Event OnEndofDefeat_Slavery(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnEndofDefeat_Slavery()")
	Utility.Wait(2.0)
	StartSlavery = true
	SetStage(1000)	
EndEvent

bool StartAfterlife = false

Event OnEndofDefeat_Afterlife(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnEndofDefeat_Afterlife()")
	Utility.Wait(2.0)			
	;if cfgqst.DefeatTypeScenario == "Execution"	;#switch Execution to Afterlife 
	;cfgqst.DefeatTypeScenario = "Afterlife" <<<--- NO! 
	;cfgqst.DefeatTransition = "Send to Afterlife"
	;endif	
	StartAfterlife = true
	SetStage(1000)
EndEvent





;----------------------------------------------------------------------------------------------------------------------

;bool Escaping = false

Function Escape()	;#escape		#Escape()
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartEscape()")

	cfgqst.DefeatStatePlayer = "Escaping"
	;cfgqst.Immobilize(false);enable player controls to be able to crawl
	;Escaping = true
	;RegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint") 
	
	;ESCAPE
	;float EscapeTime = cfgqst.DefeatEscTime
	
;	if (cfgqst.DefeatTypeScenario == "DDeEvent")
;	ScreenMessage("Wiggle your way out!")
	
	;elseif cfgqst.NymBETA	;#TODO
	
	;	if cfgqst.DefeatTypeGeneral == "AreHumans" || cfgqst.DefeatTypeGeneral == "AreHumanoids"
	;	ScreenMessage("Crawl away now and take THIS as a souvenir!")
	;	cfgqst.AddBrutalPlugs("random")
	;	else
	;	ScreenMessage("Crawl away and try not to draw attention.")
	;	endif
;	else
	ScreenMessage("Get away now!")
	InfoMessage("[PRESS K (Action KEY) when you are save or ready to fight]")
	
	cfgqst.Crawl(cfgqst.PlayerRef, true) ;ESCAPE(START)  	 ;slows down, enbables controls disables controls for crawl	
	
;	endif
	;Debug.Notification("<font color='#ff0000'>Crawl away now, cunt!</font>")
							  ; 1      2     3      4      5     6      7    8     9	
	;Game.DisablePlayerControls(false, true, false, false, true, true, true, true, 0)
	;cfgqst.SlowDownPlayer(true)
	;cfgqst.ImmobilizeCrawl(true)
	
	;Game.DisablePlayerControls(0, 1, 0, 0, 1, 1, 1, 1, 0) ;original
   ;Game.DisablePlayerControls(1, 2, 3, 4, 5, 6, 7, 8, 9)							 
			;/enableplayercontrols [movement] [combat] [first person] [looking] [sneaking] [menu] [activate] [journal tabs] [perspective type]

			1	Movement			Optional. 1 to enable movement, 0 to disable.
			2	Combat				Optional. 1 to enable combat, 0 to disable.
			3	First Person		Optional. 1 to enable first person perspective, 0 to disable.
			4	Looking				Optional. 1 to enable looking, 0 to disable.
			5	Sneaking			Optional. 1 to enable sneaking, 0 to disable.
			6	Menu				Optional. 1 to enable the menu, 0 to disable.
			7	Activate			Optional. 1 to enable activate, 0 to disable.
			8	Journal Tabs		Optional. 1 to enable journal tabs, 0 to disable.
			9	Perspective Type	Optional. Either 0 or 1 - your desired POV type.

			/;


	;Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 0, 1, 1) 
	;Debug.SetGodmode(true)
	
			if cfgqst.DefeatEscapeCrawl == 1 	;UNLIMITED TIME  - only hotkey can end
			
				while cfgqst.DefeatStatePlayer == "Escaping" && cfgqst.ModEnabled && !cfgqst.AbortAll
				
					cfgqst.ImmobilizeCrawl(true)
					Utility.Wait(1.0)
					;cfgqst.SpeedMultMaintenance()
					
					if Nym()
						
						if !folqst.Actor_Follower01.IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower01 not in CrawlFaction -> FIX")
						folqst.Actor_Follower01.Addtofaction(cfgqst.CrawlFaction)
						endif 
						
						if !folqst.Actor_Follower02.IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower02 not in CrawlFaction -> FIX")
						folqst.Actor_Follower02.Addtofaction(cfgqst.CrawlFaction)
						endif 
					
					endif 
				
				;K press changes state to "SpotFound"
				endwhile
				
			elseif cfgqst.DefeatEscapeCrawl == 2 	;TIMER TICKS DOWN - hotkey can end
									
				Float f = cfgqst.DefeatEscTime
							
				while (f > 0) && (cfgqst.DefeatStatePlayer == "Escaping") && cfgqst.ModEnabled && !cfgqst.AbortAll
					
					f -= 1
					cfgqst.ImmobilizeCrawl(true)
					Utility.Wait(1.0)
					
					if Nym()
						
						if !folqst.Actor_Follower01.IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower01 not in CrawlFaction -> FIX")
						folqst.Actor_Follower01.Addtofaction(cfgqst.CrawlFaction)
						endif 
						
						if !folqst.Actor_Follower02.IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower02 not in CrawlFaction -> FIX")
						folqst.Actor_Follower02.Addtofaction(cfgqst.CrawlFaction)
						endif 
					
					endif 
					
				;	cfgqst.SpeedMultMaintenance()
				
					if (f == 10) && (cfgqst.DefeatStatePlayer == "Escaping")
					ScreenMessage("10 seconds left to escape.") 
					endif 
				
				;K press changes state to "SpotFound"
				endwhile
				
			endif 	
		
		
	;	cfgqst.Crawl(cfgqst.PlayerRef, false)	 ;ESCAPE(END)  slows down, enbables controls disables controls for crawl	
	
	; OLD 			
;/	
	if cfgqst.DefeatEscTime > 0

			int timeleft = cfgqst.DefeatEscTime as int
	
			while (cfgqst.DefeatStatePlayer == "Escaping") && cfgqst.ModEnabled 
			Utility.Wait(1.0)
			cfgqst.SpeedMultMaintenance()
			endwhile

	endif	
	/;	

	;Debug.SetGodmode(false)

	UnRegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint")
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

bool GoBack = false

Function OnOrgasmEnd(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stage
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnOrgasmEnd()")

if cfgqst.ShowDebugMessages
Debug.Notification("NAKED DEFEAT: End of Orgasm")
endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Int DefeatStageProb 




Function GetIsMouthAvailable()
	
	cfgqst.IsMouthAvailable = 1 ;neutral 
	
	; Gagged ?
	;GetIsGagged() >-- check DD gags (later)
	
	int tid = SexLab.FindActorController(cfgqst.PlayerRef)
	
	; Mouth 'otherwise' occupied ?
	; DOES THIS NEED TO BE DONE EVERY STAGE OR IS ANIMATION START ENOUGH????????????????????????????????????
	sslBaseAnimation Anim = sexlab.HookAnimation(tid)
	Actor[] actorList = SexLab.HookActors(tid as string)
	Int i = 0
	Int PlayerPos
	Actor NextActor
	While i < actorList.Length
		NextActor = actorList[i]
		If NextActor == cfgqst.PlayerRef
			PlayerPos = i
		EndIf
		i += 1
	EndWhile
	Debug.Trace("_STA_FORK: PlayerPos = " + i)
	
	If cfgqst.IsPlayerGagged()
	
		if Anim.UseOpenMouth(PlayerPos, SexLab.GetController(tid).Stage) 
		defqst.MouthStatePlayer = 29 ;gagged and sucking  
		cfgqst.IsMouthAvailable = 0
		else 
		defqst.MouthStatePlayer = 20 ;gagged 
		cfgqst.IsMouthAvailable = 0
		endif 
	
	
	elseif Anim.UseOpenMouth(PlayerPos, SexLab.GetController(tid).Stage) 
	defqst.MouthStatePlayer = 30 ;sucking 
	cfgqst.IsMouthAvailable = 0
	EndIf
	Debug.Trace("_STA_FORK: Mouth available: " + cfgqst.IsMouthAvailable)
EndFunction


Bool Function IsPlayerSucking()
	
	int tid = SexLab.FindActorController(cfgqst.PlayerRef)
	
	if IsBathing
	return false 
	else 
		sslBaseAnimation Anim = sexlab.HookAnimation(tid)
		Actor[] actorList = SexLab.HookActors(tid as string)
		Int i = 0
		Int PlayerPos
		Actor NextActor
		
		While i < actorList.Length
			NextActor = actorList[i]
			If NextActor == cfgqst.PlayerRef
				PlayerPos = i
			EndIf
			i += 1
		EndWhile
		
		if Anim && Anim.UseOpenMouth(PlayerPos, SexLab.GetController(tid).Stage) 
		return true
		else
		return false 
		endif 
	endif 
	
EndFunction
	
int Raper0_Orgasms
int Raper1_Orgasms
int Raper2_Orgasms
int Raper3_Orgasms
int Player_Orgasms

Int Function OrgasmChanceMale(int SceneStage, int Orgasms)

	if SceneStage == 5
		if Orgasms == 0
		return 100
		elseif Orgasms == 1
		return 100
		elseif Orgasms == 2
		return 100
		endif
	elseif SceneStage == 4
		if Orgasms == 0
		return 50
		elseif Orgasms == 1
		return 15
		endif
	elseif SceneStage == 3
		if Orgasms == 0
		return 15
		elseif Orgasms == 1
		return 5
		endif
	elseif SceneStage == 2
		if Orgasms == 0
		return 5
		elseif Orgasms == 1
		return 1
		endif	
	else 
		return 1
	endif 
	
EndFunction 

Function OnStartForceStageProgression(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartForceStageProgression

Bool Enable = true
int MonitoredStage = 0

if Nym() && Enable
	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
;	Int SceneStage = thread.Stage
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage "+SceneStage+" Started: Mouth: "+cfgqst.IsMouthAvailable)
;	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
;	sslBaseAnimation previousAnim = Controller.Animation	
	int WaitLoops = 0

	MonitoredStage = CurrentStage

	while WaitLoops < 7 && (MonitoredStage == CurrentStage) && cfgqst.SexScene && cfgqst.ModEnabled
	;	SceneStage = thread.Stage
		Utility.Wait(5.0)
		WaitLoops += 1
		NymTrace("ForceStageProgression - MonitoredStage: "+MonitoredStage+" - CurrentStage: "+CurrentStage+" - WaitLoops: "+WaitLoops)
	endwhile
	
	if (MonitoredStage == CurrentStage) && cfgqst.SexScene
	NymMessage("!!! FORCED Stage Progression:" +MonitoredStage)
	thread.AdvanceStage(false)
	else 
	NymMessage("Monitoring ended Stage: "+MonitoredStage)
	endif 
	
endif 

EndFunction 

Bool ForceOpenMouthRunning = false

Function OnStartForceOpenMouth(String EventName, String ArgString, Float ArgNum, Form Sender)
	NymTrace("OnStartForceOpenMouth START")
	
;	if !ForceOpenMouthRunning
;	ForceOpenMouthRunning = true
	
;		while cfgqst.IsDefeatRunning() && cfgqst.ModEnabled	
;		Utility.Wait(0.3)
;			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 0, defqst.MouthOpening)    ;AH
;			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, defqst.MouthOpening)    ;BIG AAAH
;			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 5, defqst.MouthOpening)    ;eee
;			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 6, defqst.MouthOpening)    ;EH
;			
;		endwhile 
;	ForceOpenMouthRunning = false
;	endif 
;	NymTrace("OnStartForceOpenMouth END")
	
EndFunction 









Int CurrentStage
Bool DroolApplied = false

Function OnStageStart(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback ;#OnStageStart ;#StageStart
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStageStart() cfgqst.DefeatStateChapter:"+cfgqst.DefeatStateChapter)

	GetIsMouthAvailable()

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	Int SceneStage = thread.Stage
	CurrentStage = SceneStage
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Stage "+SceneStage+" Started: Mouth: "+cfgqst.IsMouthAvailable)

	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation	
	
	SendModEvent("ForceStageProgression")

	NymMessage("Current SexStage: "+CurrentStage)
	

	if Nym() && SceneStage == 1
	cfgqst.FixExpressions()	
	endif 

	if cfgqst.DefeatStateChapter == "Foreplay Scene"
		if previousAnim.HasTag("NymForeplay1")
		ForePlayStages = 1
		elseif previousAnim.HasTag("NymForeplay2")
		ForePlayStages = 2
		elseif previousAnim.HasTag("NymForeplay3")
		ForePlayStages = 3
		elseif previousAnim.HasTag("NymForeplayAll")
		ForePlayStages = 0
		endif 
		NymTrace("#NOTE ForeplayStages: "+ForePlayStages)
	endif 
	
	if cfgqst.DefeatStateChapter == "Foreplay Scene" || cfgqst.DefeatStateChapter == "Golden Shower"
	;do nothing! 
	elseif cfgqst.NakedCumming 
		
		if SceneStage == 1
		
		Raper0_Orgasms = 0
		Raper1_Orgasms = 0
		Raper2_Orgasms = 0 
		Raper3_Orgasms = 0
		Player_Orgasms = 0
				
		elseif SceneStage > 1
						
			if Rapers[0] && Rapers[0].IsInFaction(SexLabAnimatingFaction)
			Utility.Wait(Utility.RandomInt(1, 5))
				if D100(OrgasmChanceMale(SceneStage, Raper0_Orgasms))
				Thread.ForceOrgasm(Rapers[0])
				
					if SceneStage == 5 && cfgqst.Gagged && !DroolApplied
					DroolApplied = true 
					defqst.ToggleDroolPlayer(true)
					endif 			
				
		;		NymMessage("Stage: "+SceneStage+" Rapers[0] is cumming! threadID: "+threadID)
				EndIf
			endif 
			if Rapers[1] && Rapers[1].IsInFaction(SexLabAnimatingFaction)
			Utility.Wait(Utility.RandomInt(1, 5))
				if D100(OrgasmChanceMale(SceneStage, Raper1_Orgasms))
				Thread.ForceOrgasm(Rapers[1])
					if SceneStage == 5 && cfgqst.Gagged && !DroolApplied
					DroolApplied = true 
					defqst.ToggleDroolPlayer(true)
					endif 
			;	NymMessage("Stage: "+SceneStage+" Rapers[1] is cumming! threadID: "+threadID)
				EndIf
			endif 

			;PLAYER 
			if D100(15*SceneStage) && !previousAnim.HasTag("Blowjob")
			Utility.Wait(Utility.RandomInt(1, 5))
			Thread.ForceOrgasm(cfgqst.PlayerRef)
		;	NymMessage("Stage: "+SceneStage+" Player is cumming !threadID: "+threadID)	
			;MfgConsoleFunc.SetPhoneme(cfgqst.PlayerRef, 1, 100)		;BIG AAAH
			cfgqst.Orgasm = true
			SendModEvent("Moan")
			cfgqst.Orgasm = false
			EndIf
			
			if Rapers[2] && Rapers[2].IsInFaction(SexLabAnimatingFaction)
			Utility.Wait(Utility.RandomInt(1, 3))
				if D100(OrgasmChanceMale(SceneStage, Raper2_Orgasms))
				Thread.ForceOrgasm(Rapers[2])
				
									if SceneStage == 5 && cfgqst.Gagged && !DroolApplied
					DroolApplied = true 
					defqst.ToggleDroolPlayer(true)
					endif 
				
			;	NymMessage("Stage: "+SceneStage+" Rapers[2] is cumming!threadID: "+threadID)
				EndIf
			endif 
			Utility.Wait(Utility.RandomInt(1, 3))
			if Rapers[3] && Rapers[3].IsInFaction(SexLabAnimatingFaction)
				if D100(OrgasmChanceMale(SceneStage, Raper3_Orgasms))
				Thread.ForceOrgasm(Rapers[3])
				
					if SceneStage == 5 && cfgqst.Gagged && !DroolApplied
					DroolApplied = true 
					defqst.ToggleDroolPlayer(true)
					endif 
			;	NymMessage("Stage: "+SceneStage+" Rapers[3] is cumming! threadID: "+threadID)
				EndIf
			endif 
			
		endif 
	endif 
	
EndFunction

; THIS FUNCTION IS CALLED ON registered EVENT from SEXLAB 
Function OnStageEnd(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback ;#OnStageEnd
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStageEnd()")

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	sslThreadModel ThreadLib = SexLab.GetController(threadID)

	Int SceneStage = ThreadLib.Stage
	
	CurrentStage = SceneStage
	
	
	Sound CurrentlyPlayingSound = thread.SoundFX
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SoundPlayed(): "+CurrentlyPlayingSound.GetName())
	
		
	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation


; ------------------------------------------------------- ;
; --- Tagging System                                  --- ;
; ------------------------------------------------------- ;

;bool function HasTag(string Tag) ;sslThreadModel
;	return Tag != "" && Tags.Find(Tag) != -1
;endFunction

	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetDescriptor(): "+CurrentlyPlayingSound.GetDescriptor()) ;<<<<---- THIS WORKS 

	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetDescriptor(): "+CurrentlyPlayingSound.GetDescriptor().GetName())
	;sslThreadController tc = SexLab.GetController(tid)
    ;sslBaseAnimation anim = tc.Animation
	; sslBaseAnimation anim = thread.Animation
	
	;if thread.UseOpenMouth(1, SceneStage)
	;if sslBaseExpression.IsMouthOpen(cfgqst.PlayerRef)
	;if anim.UseOpenMouth(1, SceneStage)
	;Debug.messageBox("USE OPEN MOUTH") 
	;endif  
	
	;GetIsMouthAvailable()
	
	
	

	
	;sslBaseExpression.IsMouthOpen(ActorRef)

	
	;SslThreadController.cfgqst.PlayerRef.SetVoice(none, true)	;#BAUSTELLE CUSTOM #SOUNDS
;	TestSound = thread.Animation.GetSoundFX(SceneStage)
;	ScreenMessage("TestSound: "+TestSound)
;	ScreenMessage("TestSound: "+TestSound.GetName())
	
	;COMPARE WITH SOUND PROPERTIES: SexlabSoundMarker
	;for now if SUCKING - disable it and tell Monitor to OPEN MOUTH and PLAY ORAL SOUNDS
	;disable player expressions
	;disable player sounds
	;get player voice and save it
	;mute player
	;play the sounds? I can call sexlab play sounds with a given voice, yesyes so that works
	;orgasm event already implemented
	;HOTKEY for open mouth (on/off toggle, auto off on sex end) -> automatically play sucking sounds. autoequip tongue too? ->> kissing in mind? oh yesssSSs!
	;HOTKEY for tongue? 
	;we can detect gags I think ourselves
	
	;Animations1.GetSoundFX(SceneStage)
	;TestSound = Animations1.GetSoundFX(1)
	
	
;sslBaseAnimation
;-----------------------------------------------------------------
	bool StagingDone = false
	
	SceneStage -= 1
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStageEnd() #Stage: "+SceneStage)

	;DebugNotification("NAKED DEFEAT: End of Stage: "+SceneStage)
	
	If Nym()
	InfoMessage("End of Stage: "+SceneStage)
	endif
	
	
	;--- FOREPLAY HANDLING -----------------------------------------------------------------------------------------
	
	if cfgqst.DefeatStateChapter == "Foreplay Scene"
		if ForePlayStages == 1 
			if SceneStage == 1
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			
			ForePlayStages = 0
			thread.EndAnimation(true)
			endIf
		elseif ForePlayStages == 2
			if SceneStage == 2
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			ForePlayStages = 0
			thread.EndAnimation(true)
			endIf
		elseif ForePlayStages == 3
			if SceneStage == 3
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			ForePlayStages = 0
			thread.EndAnimation(true)
			endIf
		endif 
		
	;--- EXECUTION HANDLING -----------------------------------------------------------------------------------------	
	;test proxy advance stage 2
	elseif (DefeatTypeExecution == "ProxyImpale") 
	
		if (SceneStage == 1)	;when executed and end of stage 1
		Utility.Wait(7.5) ;anim lenght is 7.66667 secs
		KeepMoaning = false
		cfgqst.Dead = 6
		;If cfgqst.IsNymrasGame()
		;Debug.Messagebox("Player is dead") 
		;endif 
		thread.AdvanceStage(false)	;advance a stage
		StagingDone = true
		endif
	
	elseif (DefeatTypeExecution == "NymraGallows")
		; end of stage 4 we die .... maybe move to beginning of stage 5
		if (SceneStage == 4)
		cfgqst.Dead = 6
			;If cfgqst.IsNymrasGame()
			;Debug.Messagebox("Player is dead") 
			;endif 
		endif 

	;--- INSATIABLE AGGRESSORS (Stage Go Back) HANDLING -----------------------------------------------------------------------------------------
	elseif cfgqst.StageGoBack 
		;dice roll if we go back a stage (normal sex). Should be disabled in execution
		if D100(DefeatStageProb) && (SceneStage	> 1) && (SceneStage < 5) && !StagingDone	;!GoBack &&				;#back
		DefeatStageProb -= 15
		Utility.Wait(Utility.RandomInt(5,10))
			if cfgqst.SexScene
			ScreenMessage("They really like to fuck you and take it slow.")
			endif 
		thread.AdvanceStage(true)	;go back a stage
		endif
		
		StagingDone = false
		
	endif

EndFunction


Function ToggleRaperFaceLight(Bool Enable)

	If Nym()
						
		Spell FaceLightSpell = Game.GetFormFromFile(0x0000D73, "Better Face Lighting - ENB Light.esp") as Spell

		;--- ACTIVATE FACELIGHT ---;
		if Enable && FaceLightSpell && Rapers[0] && !Rapers[0].HasSpell(FaceLightSpell)
					
			;2 - Enable Facelight Spell 
			Rapers[0].AddSpell(FaceLightSpell)
			
			if Rapers[1] && !Rapers[1].HasSpell(FaceLightSpell)
			Rapers[1].AddSpell(FaceLightSpell)
			endif 
			
			if Rapers[2] && !Rapers[2].HasSpell(FaceLightSpell)
			Rapers[2].AddSpell(FaceLightSpell)
			endif 
			
			if Rapers[3] && !Rapers[3].HasSpell(FaceLightSpell)
			Rapers[3].AddSpell(FaceLightSpell)
			endif 
		;--- EQUIP TORCH ---; 
		else
		
			; 1- Disable Facelight 
			if FaceLightSpell && Rapers[0] && Rapers[0].HasSpell(FaceLightSpell)
			Rapers[0].RemoveSpell(FaceLightSpell)
			endif 
			
			if Rapers[1] && Rapers[1].HasSpell(FaceLightSpell)
			Rapers[1].RemoveSpell(FaceLightSpell)
			endif 
			
			if Rapers[2] && Rapers[2].HasSpell(FaceLightSpell)
			Rapers[2].RemoveSpell(FaceLightSpell)
			endif 
			
			if Rapers[3] && Rapers[3].HasSpell(FaceLightSpell)
			Rapers[3].RemoveSpell(FaceLightSpell)
			endif 
		endif 
	endif 

EndFunction 

;----------------------------------------------------------------------------------------------------------------------

;early event 	PLAYER MAIN  
Function OnAnimationEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				

	if storqst.FastSex > 0 ;cfgqst.DefeatStateChapter == "Cage Escape" || cfgqst.DefeatStateChapter == "Escaping the Cage" || cfgqst.DefeatStateChapter == "Fast Slave Sex"
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding(FastSex)")
	; do nothng 
	cfgqst.FadeToBlack(true)
	
	elseif cfgqst.DefeatStateChapter == "Free"
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding(Free)")
	cfgqst.FadeToBlack(false)
	
	else
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding()")
	cfgqst.FadeToBlack(true)
	
	cfgqst.Immobilize(true)
	Vehicle("restore") 	;double check
	
	;if !cfgqst.SexFinished && !IsBathing
	SexFinished(13995)
	
	endif


EndFunction
	
;----------------------------------------------------------------------------------------------------------------------	
	
;late Event	
Function OnAnimationEnd(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE					

NymTrace("SexDuration: "+defqst.SexDuration)	;#fast2
	
	;move to SexFinished
	;/
	if storqst.IsLocalSlave > 0
	
		if cfgqst.DefeatEntranceVia == "Orgy" 
		
			if defqst.SexDuration < 90 
			defqst.SexDuration = 0
			ScreenMessage("You did not fuck long enough, lazy Cunt!")
			NymTrace("ServicesCompleted: "+slaveqst.ServicesCompleted)
			else 
			defqst.SexDuration = 0
			GoodMessage("Good work, slave")
			slaveqst.SexTaskDuration += 1
			slaveqst.ServicesCompleted+=1
			NymTrace("ServicesCompleted: "+slaveqst.ServicesCompleted)
			endif 
		elseif cfgqst.DefeatEntranceVia == "Service"	
			;all is done externailly
		endif 
	endif 
	/;
	
	if cfgqst.DefeatStateChapter == "Free"

	cfgqst.FadeToBlack(false)
	
	elseif cfgqst.DefeatStateChapter == "Fast Slave Sex"
	
	
		storqst.SexEndMaintenance()	
	;	if cfgqst.SexScene
	;	cfgqst.SexScene = false
	;	cfgqst.SexState = 0
	;	endif 
			
	cfgqst.FadeToBlack(false)
	
	elseif cfgqst.DefeatStateChapter == "Cage Escape"
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnd(FAST - Cage Escape)")
	NymTrace("cfgqst.SexScene: "+cfgqst.SexScene)
	NymTrace("cfgqst.SexState: "+cfgqst.SexState) 
	
		storqst.SexEndMaintenance()	
	;	if cfgqst.SexScene
	;	cfgqst.SexScene = false
	;	cfgqst.SexState = 0
	;	endif 
		
	cfgqst.Immobilize(false)	
	cfgqst.FadeToBlack(false)
	;MiscObject LockPick = (Game.GetFormFromFile(0x0000000A, "Naked Defeat.esp") As MiscObject)	
	Form lockpick = Game.GetFormFromFile(0x0000000A, "Skyrim.esm")
	NymMessage("defqst.SexDuration: "+defqst.SexDuration)
		if defqst.SexDuration < 90 
		ScreenMessage("You did not fuck long enough for a reward")
		defqst.SexDuration = 0
		elseif defqst.SexDuration > 90 
		defqst.SexDuration = 0
			if D100(5)
			ScreenMessage("No reward for you, just out of spite!")
			else
			SendModEvent("Moan")
			ScreenMessage("You feel something cold in your pussy. [Lockpick added]")
			cfgqst.PlayerRef.Additem(LockPick, 1, true)	
			endif 
		endif 
		
	elseif storqst.FastSex == 0
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnd()")	
	cfgqst.Immobilize(true)
	Vehicle("restore") 	;double check
	endif 
	
	;#fast3 (end)
	if storqst.FastSex > 0
	
		storqst.SexEndMaintenance()	
	;	if cfgqst.SexScene
	;	cfgqst.SexScene = false
	;	cfgqst.SexState = 0
	;	endif 
		Rapers[0] = None
		Rapers[1] = None	
		Rapers[2] = None
		Rapers[3] = None
		RaperCount = 0
	storqst.FastSex = 0
	endif 

EndFunction

Function PushRapersAway()	
	NymTrace("PushRapersAway()")
	if Nym()

		String sTempRacekey = cfgqst.GetRaceKey(Rapers[0])
		;Push RAPERs AWAY!!!!
		if sTempRacekey == "Falmers" || sTempRacekey == "Draugrs"
			NymTrace("PushRapersAway("+sTempRacekey+")")
			if Rapers[0]
			cfgqst.PlayerRef.PushActorAway(Rapers[0], 0.5)
			endif
			if Rapers[1]
			cfgqst.PlayerRef.PushActorAway(Rapers[1], 0.5)
			endif
			if Rapers[2]
			cfgqst.PlayerRef.PushActorAway(Rapers[2], 0.5)
			endif
			if Rapers[3]
			cfgqst.PlayerRef.PushActorAway(Rapers[3], 0.5)
			endif
		endif 
	endif 
	
	if Nym()
	cfgqst.ProximityQuestStart("PushRapersAwayScan")
	endif 
	
EndFunction 


Function PushFollowerRapersAway()

	NymTrace("PushFollowerRapersAway()")
	if Nym()

		if (CreaturesARace == "Falmers") || (CreaturesARace == "Draugrs")
			if CreaturesA[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesA[0], 0.5)
			endif
			if CreaturesA[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesA[1], 0.5)
			endif
			if CreaturesA[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesA[2], 0.5)
			endif
			if CreaturesA[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesA[3], 0.5)
			endif
		endif 
		
		if (CreaturesBRace == "Falmers") || (CreaturesBRace == "Draugrs")
			if CreaturesB[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesB[0], 0.5)
			endif
			if CreaturesB[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesB[1], 0.5)
			endif
			if CreaturesB[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesB[2], 0.5)
			endif
			if CreaturesB[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesB[3], 0.5)
			endif
		endif 
		
		if (CreaturesCRace == "Falmers") || (CreaturesCRace == "Draugrs")
			if CreaturesC[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesC[0], 0.5)
			endif
			if CreaturesC[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesC[1], 0.5)
			endif
			if CreaturesC[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesC[2], 0.5)
			endif
			if CreaturesC[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesC[3], 0.5)
			endif
		endif 
		
		if (CreaturesDRace == "Falmers") || (CreaturesDRace == "Draugrs")
			if CreaturesD[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesD[0], 0.5)
			endif
			if CreaturesD[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesD[1], 0.5)
			endif
			if CreaturesD[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesD[2], 0.5)
			endif
			if CreaturesD[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesD[3], 0.5)
			endif
		endif 
		
		if (CreaturesERace == "Falmers") || (CreaturesERace == "Draugrs")
			if CreaturesE[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesE[0], 0.5)
			endif
			if CreaturesE[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesE[1], 0.5)
			endif
			if CreaturesE[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesE[2], 0.5)
			endif
			if CreaturesE[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesE[3], 0.5)
			endif
		endif 
		
		if (CreaturesFRace == "Falmers") || (CreaturesFRace == "Draugrs")
			if CreaturesF[0]
			cfgqst.PlayerRef.PushActorAway(CreaturesF[0], 0.5)
			endif
			if CreaturesF[1]
			cfgqst.PlayerRef.PushActorAway(CreaturesF[1], 0.5)
			endif
			if CreaturesF[2]
			cfgqst.PlayerRef.PushActorAway(CreaturesF[2], 0.5)
			endif
			if CreaturesF[3]
			cfgqst.PlayerRef.PushActorAway(CreaturesF[3], 0.5)
			endif
		endif 
	endif 


EndFunction 
	
Function MoveRapersAway()	
		
		Int iTempDistance = -150
		
		if Nym()		;#BETA - move in sight to see 
		iTempDistance = 150
		endif 
		
		;MOVE RAPER AWAY!!!!
		if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "FastTravel")
		
			if (cfgqst.DefeatTypeScenario == "Afterlife")
			iTempDistance = 500
			endif 

			if Rapers[0]
			Rapers[0].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			endif
			if Rapers[1]
			Rapers[1].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			endif
			if Rapers[2]
			Rapers[2].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			endif
			if Rapers[3]
			Rapers[3].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			endif
		
	;	elseif 
			
		;	if Rapers[0]
		;	Rapers[0].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 500.0, abMatchRotation = false)
		;	endif
		;	if Rapers[1]
		;	Rapers[1].Moveto(cfgqst.PlayerRef, iTempDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iTempDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 500.0, abMatchRotation = false)
		;	endif
		endif
		
EndFunction 


Function StripRapers()	
	;REMOVE! / REPLACE 
	
		
		if cfgqst.NymStripping
	;/
			if Rapers[0]
			Rapers[0].UnequipAll()
			endif
			if Rapers[1]
			Rapers[1].UnequipAll()
			endif
			if Rapers[2]
			Rapers[2].UnequipAll()
			endif
			if Rapers[3]
			Rapers[3].UnequipAll()
			endif
				
			
			/;
		endif
		
EndFunction 

	
	Bool SexFailed 
	
	
Function SexFinished(int iSender)				;##finished #SexFinished()

		if cfgqst.SexFinished
		NymBox("#ERROR SexFinished DoubleStart")
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexFinished(#DOUBLESTART Sender: "+iSender+") :::::::::::::::::::::: #Rape Round "+FuckingRound+" (Player) END ::::::::::::::::::::::")
		else 
	
			; --- After Sex Maintenance ---;  
			cfgqst.SexFinished = true
			Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexFinished(Sender: "+iSender+") :::::::::::::::::::::: #Rape Round "+FuckingRound+" (Player) END ::::::::::::::::::::::")
			
			Vehicle("restore")
			storqst.ForceOpen = 0
			cfgqst.FixExpressions() ; ---> Nym()
			
			storqst.WhippingDuration = 0 ;ends whipping
			
			if Nym()
			defqst.ToggleDroolPlayer(false) ;--->  Nym() 
			endif 

			cfgqst.DefeatStateChapter = "Waiting"
			
			ToggleRaperFaceLight(false) ;--->  Nym() 
			
			StopSexEffects()
		;	if cfgqst.IsNymrasGame()
		;	cfgqst.PlayCombatBlockingSound()
		;	Utility.Wait(1.0)
		;	cfgqst.PlayCombatBlockingSound()
		;	endif 
			
			
			
			;Debug.Messagebox
		
			;if Nym() && cfgqst.SexFinished
			;
			;endif 
			
			if (VictimCount > 0) && SexFailed
			SexFailed = false 
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SexFinished() SexFailed, now we wait")	
			Utility.Wait(15.0)

			endif 

			;cfgqst.SexScene = false	
			
			storqst.SexEndMaintenance()	
			
			Utility.Wait(1.0)
			
			if storqst.IsLocalSlave()
		
				if cfgqst.DefeatEntranceVia == "Orgy" 
				
					if defqst.SexDuration < 90 
					defqst.SexDuration = 0
					ScreenMessage("You did not fuck long enough, lazy Cunt!")
					NymTrace("ServicesCompleted: "+slaveqst.ServicesCompleted)
					else 
					defqst.SexDuration = 0
					GoodMessage("Good work, slave")
					slaveqst.SexTaskDuration += 1
					slaveqst.ServicesCompleted+=1
					NymTrace("ServicesCompleted: "+slaveqst.ServicesCompleted)
					endif 
				elseif cfgqst.DefeatEntranceVia == "Service"	
					;all is done externailly
				endif 
			endif 
		;	if cfgqst.SexScene
		;	cfgqst.SexScene = false
		;	cfgqst.SexState = 0
		;	endif 
			
			NymTrace("cfgqst.IsMouthAvailable - calm 14681 :"+cfgqst.IsMouthAvailable)
			cfgqst.IsMouthAvailable = 1
			NymTrace("cfgqst.IsMouthAvailable - calm 14683 :"+cfgqst.IsMouthAvailable)
			cfgqst.Immobilize(true)	;double check
			ResetGroupsForNextRound() 
			; -----------------------------; 
				
		;	StripRapers()	
			PushRapersAway()	;--->  Nym() 
			MoveRapersAway() ;only for Afterlife/FastTravel at the moment SKIP for the rest not good yet 


			SendModEvent("StartAddRapeCount")	;---> cfgqst.NymBeta 


			;Vehicle("restore") 	;double check
			SendModEvent("Moan")

			;Still needed? 
			If Nym() && cfgqst.PlayerRef.IsAIEnabled() && (!cfgqst.AbortAll) ;Is  AI enabled?
			;NymBox("#ERROR AI is DISABLED")
			cfgqst.PlayerRef.EnableAI(true) ; If so enable his AI.
			EndIf
						
			; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
			if cfgqst.DefeatTypeScenario == "FastTravel"	
			; we patiently wait for the ritual to end 	
			PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)		
			PlayPoseOnActor(Victims[0], "Offering", false)
			PlayPoseOnActor(Victims[1], "Offering", false)
			else
			; we await our fait, calm or angry (struggling or waiting) 
			PlayPoseOnActor(cfgqst.PlayerRef, "Random", false)		
			PlayPoseOnActor(Victims[0], "Random", false)
			PlayPoseOnActor(Victims[1], "Random", false)
			endif
			
			if (!cfgqst.AbortAll) && (cfgqst.Dead == 0)
			Utility.Wait(5.0)
			endif 
				
			; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE RESTORE --- XXXXxxxxxxxxxxxxxxxxxxxx 
			if cfgqst.DefeatTypeScenario == "FastTravel"
			PlayPoseOnActor(cfgqst.PlayerRef, "Offering", true)		
			PlayPoseOnActor(Victims[0], "Offering", true)
			PlayPoseOnActor(Victims[1], "Offering", true)
			else
			PlayPoseOnActor(cfgqst.PlayerRef, "Random", true)		
			PlayPoseOnActor(Victims[0], "Random", true)
			PlayPoseOnActor(Victims[1], "Random", true)
			endif
				
			if (!cfgqst.AbortAll) && (cfgqst.Dead == 0)
			Utility.Wait(1.0)
			endif
			
			if cfgqst.HeelsFix
			
				if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
				;do nothing - we take over from Sexlab
				
				cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef,14450)

				else 
				cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef,14450)
				endif 
			endif 
			
			;OOOOOOOOOOOOOoooooooooooooooo............	FADE BLACK OUT 
							
			if cfgqst.BlackFadeStatus == 1
			cfgqst.FadeToBlack(false)	
			endif
						
			if cfgqst.FollowerCount == 0 || (!cfgqst.AbortAll)
			;Not so Nice... replace should not happen that much anyway 
			;Sexlab.ThreadSlots.StopAll()
			endif

			;Wait for FollowerScenes to finish
			while (SexFollower01Running || SexFollower02Running || (SolosRunning > 0)) && cfgqst.ModEnabled && (!cfgqst.AbortAll)
			Utility.Wait (1.0)
			endwhile
		
			PushFollowerRapersAway()

			SendModEvent("Moan")
			
			; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE RESTORE --- XXXXxxxxxxxxxxxxxxxxxxxx 
			if (!cfgqst.AbortAll)
				if cfgqst.DefeatTypeScenario == "FastTravel"
				PlayPoseOnActor(cfgqst.PlayerRef, "Offering", true)		
				PlayPoseOnActor(Victims[0], "Offering", true)
				PlayPoseOnActor(Victims[1], "Offering", true)
				else
				PlayPoseOnActor(cfgqst.PlayerRef, "Random", true)		
				PlayPoseOnActor(Victims[0], "Random", true)
				PlayPoseOnActor(Victims[1], "Random", true)
				endif
			endif 

			;additional waiting time:		
			float IdleWaitTime = 0
			IdleWaitTime = cfgqst.DefeatIdleTime
			while (IdleWaitTime > 0) && cfgqst.ModEnabled && (!cfgqst.AbortAll) && (cfgqst.Dead == 0)
			IdleWaitTime =- 4.0
			SendModEvent("Moan")
			Utility.Wait(4.0)
			endwhile
					
			Vehicle("restore") 	
			SendModEvent("Moan")		 
			UnRegisterForModEvent("AnimationEnd_NadeRape") 
			UnRegisterForModEvent("AnimationEnding_NadeRape") 
			UnRegisterForModEvent("StageEnd_NadeRape")
			UnRegisterForModEvent("StageStart_NadeRape")
			UnRegisterForModEvent("OrgasmStart_NadeRape")
			UnRegisterForModEvent("OrgasmEnd_NadeRape")
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			UnRegisterForModEvent("StageStart_NadeForeplay")
				
			;SceneStage = 0
			GoBack = false
		
			SexScenesDone +=1	

			;RAPE TEARS
			if (!cfgqst.AbortAll)
				if SexScenesDone == 0
					if D100(30)
					SendModEvent("StartAddRapeTears")
					endIf
				elseif SexScenesDone == 1
					if D100(60)
					SendModEvent("StartAddRapeTears")
					endIf
				elseif SexScenesDone > 1
					SendModEvent("StartAddRapeTears")
				endif
			endif
			
			if (!cfgqst.AbortAll)
			Allow_SexScenes == 0
			endif 
			
		;	if cfgqst.IsNymrasGame()
		;	cfgqst.PlayCombatBlockingSound()
		;	endif
			
			NymTrace("cfgqst.IsMouthAvailable - calm 14827 :"+cfgqst.IsMouthAvailable)
			
			cfgqst.SexFinished = false	
						
			;0 SCENES
			if cfgqst.IsDefeatRunning() && (Allow_SexScenes == 0)			;WHY DOES THIS EXIST?
			SetStage(14) ;end of rape
			SexScenesDone = 0 ;reset counter
			elseif cfgqst.IsDefeatRunning()
			
				;SEX SCENES HANDLING for CHAIN RAPE 		#scenes #chain
				if SexScenesDone == 1  	
					if Allow_SexScenes == 1
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 1/"+Allow_SexScenes+" done, send to end of rape") 
					SetStage(14) ;round 1/1 done >>> sent of end of rape
					elseif Allow_SexScenes > 1
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: chainrape round 1/"+Allow_SexScenes+" done: send to round 2")
					LastSceneOrdered = 2
					Setstage(11)	;round 1 completed >>> send to round 2
					endif
				elseif SexScenesDone == 2	
					if Allow_SexScenes == 2
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 2/"+Allow_SexScenes+" done, send to end of rape") 
					SetStage(14) ;round 2/2 done >>> sent of end of rape
					elseif Allow_SexScenes > 2
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: chainrape round 2/"+Allow_SexScenes+" done: send to round 3")
					LastSceneOrdered = 3
					Setstage(12)	;round 2 completed >>> send to round 3
					endif
				elseif SexScenesDone == 3	
					if Allow_SexScenes == 3
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 3/"+Allow_SexScenes+" done, send to end of rape") 
					SetStage(14) ;round 3/3 done >>> sent of end of rape
					elseif Allow_SexScenes > 3
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: chainrape round 3/"+Allow_SexScenes+" done: send to round 4")
					LastSceneOrdered = 4
					Setstage(11)	;round 3 completed >>> send to round 4
					endif
				elseif SexScenesDone == 4	
					if Allow_SexScenes == 4
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 4/"+Allow_SexScenes+" done, send to end of rape") 
					
					SetStage(14) ;round 4/4 done >>> sent of end of rape
					elseif Allow_SexScenes > 4
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: chainrape round 4/"+Allow_SexScenes+" done: send to round 5")
					LastSceneOrdered = 5
					Setstage(12)	;round 4 completed >>> send to round 5
					endif
				elseif SexScenesDone == 5	
					if Allow_SexScenes == 5
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 5/"+Allow_SexScenes+" done, send to end of rape") 
					SetStage(14) ;round 5/5 done >>> sent of end of rape
					elseif Allow_SexScenes > 5
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: chainrape round 5/"+Allow_SexScenes+" done: send to round 6")
					LastSceneOrdered = 6
					Setstage(11)	;round 5 completed >>> send to round 6
					endif
				elseif SexScenesDone == 6	
					if Allow_SexScenes == 6
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: round 6/"+Allow_SexScenes+" done, send to end of rape") 
					SetStage(14) ;round 6/6 done >>> sent of end of rape
					endif
				elseif cfgqst.IsDefeatRunning()
				ScreenMessage("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR - why are we here?")
				else
				ScreenMessage("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR - ABORT END OF DEFEAT")
				SetStage(1000)
				endif
			endif
		endif 
	
EndFunction
;----------------------------------------------------------------------------------------------------------------------

int LastSceneOrdered = 0

;----------------------------------------------------------------------------------------------------------------------
		
;early event	 ;Victims[0]		
Function OnAnimationEnd01(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE		
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: - OnAnimationEnd01 (Follower)")	
	NymTrace("OnAnimationEnd01 - Victims[0]")
	
	SexFollower01Running = false	;tells OnAnimationEnding(Player) to proceed
	
	folidle01.StartDoingNothing_01(true)
	Vehicle_Follower_01("restore")
	;if (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Bound") || (cfgqst.DefeatTypeScenario == "Bukkake")	;#todo double check all this...
	;AddDefeatBindsFollowers(Victims[0])
	;endif	
	AddDefeatBindsToActor(Victims[0], "add")
	
	StripFollower(0)

	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; after Sex unhappy 	 	
	PlayPoseOnActor(Victims[0], "Random", false)
		

	
	
	UnRegisterForModEvent("AnimationEnd_Naderapefollower01")  
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;late event		;Victims[0]
Function OnAnimationEnding01(String EventName, String ArgString, Float ArgNum, Form Sender)			;
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: - OnAnimationEnding01 (Follower)")

;	if !folidle01.IsSceneRunning()
	Vehicle_Follower_01("restore") 
;	folidle01.ResumeFollowerIdleQuest_01("struggle")

	StripFollower(0)
		
	Vehicle_Follower_01("restore")
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; after Sex unhappy restore   		
	PlayPoseOnActor(Victims[0], "Random", true)	
UnRegisterForModEvent("AnimationEnding_Naderapefollower01")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;early event 02		;Victims[1]			
Function OnAnimationEnd02(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE			
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: - OnAnimationEnd02 (Follower)")	
	
	SexFollower02Running = false	;tells OnAnimationEnding(Player) to proceed
	Vehicle_Follower_02("restore") 	;#idle
	
	folidle01.StartDoingNothing_02(true)
	Vehicle_Follower_02("restore")
	
	AddDefeatBindsToActor(Victims[1], "add")
	
	;if (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Bound") || (cfgqst.DefeatTypeScenario == "Bukkake")	;#todo double check all this...
	;AddDefeatBindsFollowers(Victims[1])
	;endif		
	StripFollower(1)
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
	; after Sex unhappy 	 	
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #Pose(OnAnimationEnding02 Victims[1])")	
	PlayPoseOnActor(Victims[1], "Random", false)	
	
	UnRegisterForModEvent("AnimationEnd_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;late event 02		;Victims[1]
Function OnAnimationEnding02(String EventName, String ArgString, Float ArgNum, Form Sender)			;
;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: - OnAnimationEnding02 (Follower)")

	SexFollower02Running = false
			
	StripFollower(1)
	Vehicle_Follower_02("restore") 
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; after Sex unhappy  		
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #Pose(OnAnimationEnding02 Victims[1])")		
	PlayPoseOnActor(Victims[1], "Random", true)	
	UnRegisterForModEvent("AnimationEnding_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Event OnUpdate()			; #update

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate()")
		
	;/
	if (cfgqst.DefeatTypeGeneral == "AreHumans") ;(cfgqst.DefeatTypeScenario != "AfterLife") && (cfgqst.DefeatTypeScenario != "FastTravel")
	cfgqst.TempIntBridge = 1
	cfgqst.WhipAgain = true
	whipq00.StartShortWhipping()
	endif 
	/;
		
	;	cfgqst.TempIntBridge = 1
	;	whipq00.StartWhipQuest_00()
		 ;no scene protectors
	;	Utility.Wait(8.0)
	;	whipq00.SetStage(25)
		;EscapeDifficulty += 1
	;	cfgqst.WhipAgain = false
	;	cfgqst.TempIntBridge = 0

	
	
	
						;	if EndOfRape && !cfgqst.RapeAgain
						;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (EndOfRape)")
						;	EndOfRape = false
						;	SetStage(500)	;send to defeat outcomes
	
						;	elseif EndOfQuest && !cfgqst.RapeAgain
						;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (EndOfQuest)")
						;	EndOfQuest = false
						;	Debug.Notification("<font color='#ff0000'>It seems like they are done with you.</font>")	;MESSAGE
						;	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) It seems like they are done with you.")				
						;	SetStage(1000)	;end of defeat
	
;	if ForcePosing_1				
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (ForcePosing_1)")
	;ForcePose("surrender")
;	elseif ForcePosing_2
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (ForcePosing_2)")
	;ForcePose("wiggle")
						;elseif cfgqst.RapeAgain && EndOfRape ;&& !EndOfRape && !EndOfQuest ;&& !ForcePosing_1 &&
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (RapeAgain)")
					
						;EndOfRape = false
						;EndOfQuest = false
						;SetStage(500)

;	else
;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (ERROR - update call)")
;	endif
	
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: onupdate (OFF)")

EndEvent

;----------------------------------------------------------------------------------------------------------------------

Function GetActorHuman(Actor akActor = None)					;update this With Sexlab Gendercheck???
	cfgqst.IsHuman(akActor)					
	Debug.Notification("NAKED DEFEAT: AggressorIsHuman" +cfgqst.IsHuman(akActor))		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

String TagsSuppressed
String TagsWanted	


String Function GetCurrentBoundScenario()


	if (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Armbinder") || (cfgqst.DefeatTypeScenario == "Wheel") || (cfgqst.DefeatTypeScenario == "XCross") || (cfgqst.DefeatTypeScenario == "Stockade") || (cfgqst.DefeatTypeScenario == "Cuffs")
	return cfgqst.DefeatTypeScenario
	else
	return "" 
	endif 

EndFunction 



Function GetSexTags(int VictimNumber)			;#tags   #GetSexTags(VictimNumber)
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(START - Actor: "+VictimNumber+")")
	
	String TagsSuppressedTemp = ""	
	String TagsWantedTemp = ""	
	String TagsWantedForeplayTemp = ""
	
	;String TagsSuppressedTemp_supFOREPLAY
	
	String TagsSuppressedTemp_supNYMRA = "Futa, Femdom,s 3jiou, Loving, "
	
	if !cfgqst.IsPoseScenario() && D100(50)
	NymTrace("FunnyBiz suppressed")
	TagsSuppressedTemp_supNYMRA = "Futa, Femdom,s 3jiou, FunnyBiz, Loving, "
	endif 
	
	String TagsSuppressedTemp_supBASE = "LeadIn, GoldenShower, Necro, Guro, Molag, MM, Gay, Femdom, " 		;#tags
	String TagsSuppressedTemp_supFURN = "Furniture, XCross, Wall, InvisFurn, Bed, Stockade, Wheel, Pillory, BedOnly, Bench, Throne, WallHole, " 		;#tags "Table" AND "Chair" ALLOWED FOR NOW
	String TagsSuppressedTemp_supBINDS = "Yoke, Armbinder, Cuffs, " 		
	String TagsSuppressedTemp_supPOSEScenarios = "GoldenShower, LeadIn, " 	
	String TagsSuppressedTemp_supNYMForeplay = "NymForeplayPack, " 
	
	;"VictimNumber 0 = Player" , BULLSHIT - use names
	
	; ---- ForePlay ----------------------------------------------------------------------------	
	if (VictimNumber == 0) && (cfgqst.DefeatStateChapter == "Foreplay Scene") 
		;ADD SCENARIO FOREPLAY LATER 
		
		TagsWantedForeplayTemp = "NymForeplay, "+GetCurrentBoundScenario()+", "
	
	; ---- Scenario DD ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "DD")

		
		if Nym()
			int i = Utility.RandomInt(1, 10)
		;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTagsRANDOM i = "+i)
			if i < 4  
				TagsWantedTemp = "Aggressive"
			elseif i == 5 
				TagsWantedTemp = "Standing"
			elseif i == 6 
				TagsWantedTemp = "Cowgirl"
				storqst.Riding = true
			elseif i == 7
				TagsWantedTemp = "Doggy"
			elseif i == 8
				TagsWantedTemp = "Doggy"
			elseif i == 9
				TagsWantedTemp = "Sex" 
			elseif i == 10
				TagsWantedTemp = "Billyy"
			endif	
		endif 
			
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
		;/
		if Nym()
		TagsWantedForeplayTemp = "Anubs,FFM,NymForeplay, "
		
		elseif D100(10)
		TagsWantedForeplayTemp = "NymForeplay, NymForeplay1, "
		ForePlayStages = 1
		elseif D100(10)
		TagsWantedForeplayTemp = "NymForeplay, NymForeplay1, "
		ForePlayStages = 2
		elseif D100(10)
		TagsWantedForeplayTemp = "NymForeplay, NymForeplay3, "
		ForePlayStages = 3
		else
		TagsWantedForeplayTemp = "NymForeplay, NymForeplayAll, "
		ForePlayStages = 0	;AL	
		;TODO: Treat all Aggressors as MALE in this scenario
		endif
		/;
	; ---- Scenario YOKE ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Yoke")
	TagsWantedTemp = "Yoke, "
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario ARMBINDER ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Armbinder")
	TagsWantedTemp = "Armbinder, "
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario WHEEL ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Wheel")
	TagsWantedTemp = "Wheel, "
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario XCROSS ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "XCross")
	TagsWantedTemp = "Xcross, "
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	
	; ---- Scenario STOCKADE ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Stockade")
	TagsWantedTemp = "Stockade, "
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()

	; ---- Scenario CUFFS ----------------------------------------------------------------------------		
	elseif (cfgqst.DefeatTypeScenario == "Cuffs")	
	TagsWantedTemp = "Cuffs, "	
	TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supNYMRA + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	
	; ---- Scenario EXECUTION ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "ProxyImpale") 
	TagsWantedTemp = "Proxy, Spike, "
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "ProxySoils")
	TagsWantedTemp = "Proxy, Spoils, Execution, "
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "NymraGallows")
	TagsWantedTemp = "Nymra, Gallows, "	
	
	; ---- Scenario DEATH ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Death") && (DefeatTypeExecution == "ProxyImpale") 
	TagsWantedTemp = "Proxy, Spike, "
	elseif (cfgqst.DefeatTypeScenario == "Death") && (DefeatTypeExecution == "ProxySoils")
	TagsWantedTemp = "Proxy, Spoils, Execution, "
	elseif (cfgqst.DefeatTypeScenario == "Death") && (DefeatTypeExecution == "NymraGallows")
	TagsWantedTemp = "Nymra, Gallows, "	
	
	elseif (cfgqst.DefeatTypeScenario == "Rodeo")
		int i = Utility.RandomInt(1, 5)
		if i > 2
		TagsWantedTemp = "Cowgirl"
		storqst.Riding = true
		elseif i == 2
		TagsWantedTemp = "Standing"
		elseif i == 1
		TagsWantedTemp = "Holding"
		endif
		
		TagsSuppressedTemp = "LeadIn, GoldenShower, Femdom, Yoke, Cuffs, Armbinder, Furniture, "
		TagsSuppressedTemp = TagsSuppressedTemp + TagsSuppressedTemp_supFURN + GroupComposition()
	
	; ---- Scenario GIRLFRIEND ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Girlfriend")
		int i = Utility.RandomInt(1, 4)
	;	if i < 4
	;	TagsWantedTemp = "Loving"
	;	else
		TagsWantedTemp = "Vanilla"
		;elseif i == 2
		;return "Milky"
		;elseif i == 1
		;return "Anubs"
	;	endif		
		
		TagsSuppressedTemp = "LeadIn, GoldenShower, Yoke, Cuffs, Armbinder, Bound, Aggressive, AggressiveDefault, Guro, Rape, Brutal, Necro, Sleep, Molag, FunnyBizness, Psyche, Babo"
		TagsSuppressedTemp = TagsSuppressedTemp + TagsSuppressedTemp_supFURN + GroupComposition()

	; ---- Scenario PILLORY ----------------------------------------------------------------------------		
	elseif (cfgqst.DefeatTypeScenario == "Pillory")
	TagsWantedTemp = "Pillory"
	;user defined custom tags (MCM) -> 4 random custom scenarios without specialised idles in between
		
	; ---- Scenario NONE ----------------------------------------------------------------------------	
	else
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(no Scenario)")			
		;SUPRESSED TAGS FOR ALL 	
		TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supFURN + TagsSuppressedTemp_supBINDS + GroupComposition()
		
		;------ NYMRAS MCM TAGS OVERWRITE ---------------------------------------------------------------------------------
		if Nym() ;my own random tags
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(NYMRA)")	
			int i = Utility.RandomInt(1, 10)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTagsRANDOM i = "+i)
			if i < 4  
				TagsWantedTemp = "Aggressive"
			elseif i == 5 
				TagsWantedTemp = "Standing"
			elseif i == 6 
				TagsWantedTemp = "Cowgirl"
				storqst.Riding = true
			elseif i == 7
				TagsWantedTemp = "Doggy"
			elseif i == 8
				TagsWantedTemp = "Blowjob"
			elseif i == 9
				TagsWantedTemp = "Sex" 
			elseif i == 10
				TagsWantedTemp = "Billyy"
			endif	
		
		;------ MCM TAGS ----------------------------------------------------------------------------------------------------
		else
			int i = Utility.RandomInt(1, 4)
			if i == 1 
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(MCM 01)")
			;	if cfgqst.NymBETA
			;	InfoMessage("Tags 01: "+cfgqst.SavedTags_01)
			;	endif
				TagsWantedTemp = cfgqst.SavedTags_01
			elseif i == 2 
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(MCM 02)")
			;	if cfgqst.NymBETA
			;	InfoMessage("Tags 02: "+cfgqst.SavedTags_02)
			;	endif
				TagsWantedTemp = cfgqst.SavedTags_02
			elseif i == 3 
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(MCM 03)")
			;	if cfgqst.NymBETA
			;	InfoMessage("Tags 03: "+cfgqst.SavedTags_03)
			;	endif
				TagsWantedTemp = cfgqst.SavedTags_03
			elseif i == 4
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(MCM 04)")
			;	if cfgqst.NymBETA
			;	InfoMessage("Tags 04: "+cfgqst.SavedTags_04)
			;	endif
				TagsWantedTemp = cfgqst.SavedTags_04
			endif	
		endif		
	endif 			

	if Nym()
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #BEFORE TagsWantedTemp == "+TagsWantedTemp)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #BEFORE TagsWanted == "+TagsWanted)
	endif
	if TagsWantedTemp == "none" 
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR TagsWantedTemp = NONE as String ")
	TagsWantedTemp = "Aggressive"
	
	elseif TagsWantedTemp == "" 
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR TagsWantedTemp = ")
	endif 

	if (VictimNumber == 0) && cfgqst.DefeatStateChapter == "Foreplay Scene"
	TagsSuppressed = TagsSuppressedTemp_supFURN
	TagsWanted = TagsWantedForeplayTemp
	else
	TagsSuppressed = TagsSuppressedTemp + TagsSuppressedTemp_supNYMForeplay ;block my own SLAL...
	TagsWanted = TagsWantedTemp
	endif 
	
	if Nym()
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #AFTER TagsWanted == "+TagsWanted)
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #AFTER TagsSuppressed == "+TagsSuppressed)
	endif
	
;	if cfgqst.IsNymrasGame()
;	TagsSuppressed = TagsSuppressedTemp + TagsSuppressedTemp_supNYMRA
;	TagsWanted = TagsWantedTemp
;	else
;	TagsSuppressed = TagsSuppressedTemp 
;	TagsWanted = TagsWantedTemp
;	endif 
	
	
EndFunction 

;/
;OLD REMOVE????! 
String Function GetCustomTags()			;#tags   #GetCustomTags()

;ONLY FOR 2P Animations: Sets the Scenario Tags (Improve this... I want ONE System please) 

 
if AggressorCount == 1 				;2P tags
	if (cfgqst.DefeatTypeScenario == "Yoke")
	return "Yoke"
	elseif (cfgqst.DefeatTypeScenario == "Armbinder")
	return "Armbinder"
	elseif (cfgqst.DefeatTypeScenario == "Wheel")
	return "Wheel"
	elseif (cfgqst.DefeatTypeScenario == "XCross")
	return "Xcross"
	elseif (cfgqst.DefeatTypeScenario == "Stockade")
	return "Stockade"
	elseif (cfgqst.DefeatTypeScenario == "Cuffs")
	return "Cuffs"
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "ProxyImpale") 
	return "Proxy, Spike"
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "NymraGallows")
	return "Nymra, Gallows"	
	elseif (cfgqst.DefeatTypeScenario == "Rodeo")
		int i = Utility.RandomInt(1, 5)
		if i > 2
		return "Cowgirl"
		elseif i == 2
		return "Standing"
		elseif i == 1
		return "Holding"
		endif
	elseif (cfgqst.DefeatTypeScenario == "Girlfriend")
		int i = Utility.RandomInt(1, 6)
		if i > 3
		return "Loving"
		elseif i == 3
		return "NCK30"
		elseif i == 2
		return "Milky"
		elseif i == 1
		return "Anubs"
		endif		
	elseif (cfgqst.DefeatTypeScenario == "Pillory")
	return "Pillory"
	;user defined custom tags (MCM) -> 4 random custom scenarios without specialised idles in between
	elseif cfgqst.IsNymrasGame()
		
			int i = Utility.RandomInt(1, 10)
			if i < 4  
				return "Aggressive"
			elseif i == 5 
				return "Standing"
			elseif i == 6 
				return "Cowgirl"
			elseif i == 7
				return "Doggy"
			elseif i == 8
				return "Blowjob"
			elseif i == 9
				return ""
			elseif i == 10
				return "Billyy"
			endif	
	
	else
			int i = Utility.RandomInt(1, 4)
			if i == 1 
				if cfgqst.NymBETA
				InfoMessage("Tags 01: "+cfgqst.SavedTags_01)
				endif
				return cfgqst.SavedTags_01
			elseif i == 2 
				if cfgqst.NymBETA
				InfoMessage("Tags 02: "+cfgqst.SavedTags_02)
				endif
				return cfgqst.SavedTags_02
			elseif i == 3 
				if cfgqst.NymBETA
				InfoMessage("Tags 03: "+cfgqst.SavedTags_03)
				endif
				return cfgqst.SavedTags_03
			elseif i == 4
				if cfgqst.NymBETA
				InfoMessage("Tags 04: "+cfgqst.SavedTags_04)
				endif
				return cfgqst.SavedTags_04
			endif	
	endif		
	
		
endif		
EndFunction


/;
;----------------------------------------------------------------------------------------------------------------------





;akActor - who you want to wash
;Animate - Play regular bathing animation (you probably want this off)
;FullClean - Fully clean the actor to 0% dirty. Otherwise you end up at 20%
;DoSoap - Play the soap effect. Depends on MCM settings!

;/
Function SendCleanDirtEvent(Form akTarget, Bool UsedSoap)
	int BiS_CleanActorDirtEvent = ModEvent.Create("BiS_CleanActorDirt")
    If (BiS_CleanActorDirtEvent)
		ModEvent.PushForm(BiS_CleanActorDirtEvent, akTarget)
		ModEvent.PushFloat(BiS_CleanActorDirtEvent, Menu.TimeToClean)
		ModEvent.PushFloat(BiS_CleanActorDirtEvent, Menu.TimeToCleanInterval)
		ModEvent.PushBool(BiS_CleanActorDirtEvent, UsedSoap)
        ModEvent.Send(BiS_CleanActorDirtEvent)
    EndIf
EndFunction
 
/;

;----------------------------------------------------------------------------------------------------------------------

bool DefeatBinds0 = false
bool DefeatBinds1 = false
bool DefeatBinds2 = false
bool DefeatBinds3 = false
bool DefeatYoke0 = false
;bool BindsEquiped = false
bool FollowersAreBound = false
bool FollowersAreBoundWithDDs = false
;/
Function AddDefeatBindsFollowers(actor akactor)		;#binds
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBindsFollowers")
actor a = akactor
if !FollowersAreBound
		cfgqst.PlayCuffsSoundRope()
		a.AddItem(DefeatBinds[3], 1, true)			;rope
		a.EquipItem(DefeatBinds[3], false, true)
		;cfgqst.SexLabMoan(akactor)		
elseif FollowersAreBound
a.EquipItem(DefeatBinds[3], false, true)
endif	
EndFunction
/;

Function AddDefeatBindsToActor(actor akactor, String mode)		;#AddDefeatBindsToActor
	
	DebugTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBindsToActor - Mode: "+mode)
	
	if akactor == folqst.Actor_Follower01
	NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBindsToActor - Actor: "+folqst.Name_Follower01)
	elseif akactor == folqst.Actor_Follower02
	NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBindsToActor - Actor: "+folqst.Name_Follower02)
	else 
	NymTrace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBindsToActor - Actor: #ERROR")
	endif 
	
	;check if we are allowed to/exclude animals
	if (mode == "Add") || (mode == "Restore")

		
		;----- DDs (only once!!!) ----------------------------------------------------------------------------------
		if cfgqst.ModDDNG && cfgqst.DefeatTypeScenario == "DD" && !nade_DDint.IsWearingDDs(akactor, "Lockable")

			if (mode == "Add")
				
				if akactor == cfgqst.PlayerRef 
				cfgqst.LoadOutfitPunishment(0, "All", false)
				
				else 
		
					int i = Utility.RandomInt(1,9)
					Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBinds(Followers) - Add DDevices Random: "+i)
					if i == 1
					nade_DDint.EquipDDtoActor(akactor, "DD Steel Yoke")
					elseif i == 2
					nade_DDint.EquipDDtoActor(akactor, "DD Iron Yoke")
					elseif i == 3
					nade_DDint.EquipDDtoActor(akactor, "DD Breast Yoke")
					elseif i == 4 			
					nade_DDint.EquipDDtoActor(akactor, "DD Iron Prisoner Chains")
					elseif i == 5
					nade_DDint.EquipDDtoActor(akactor, "DD Steel Manacles")
					elseif i == 6 
					nade_DDint.EquipDDtoActor(akactor, "DD Rope Armbinder")
					elseif i == 7 
					nade_DDint.EquipDDtoActor(akactor, "DD Black Leather Straitjacket Topless")
					elseif i == 8 
					nade_DDint.EquipDDtoActor(akactor, "DD Iron Yoke (Fiddle)")
					elseif i == 9 
					nade_DDint.EquipDDtoActor(akactor, "DD Hooked Elbow Shackles")
					endif 
				
				endif 
			endif 
		
		;----- ANIMALS ----------------------------------------------------------------------------------
		elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
		
		;NONE 	
		;----- GIRLFRIEND // FASTTRAVEL ----------------------------------------------------------------------------------
		elseif (cfgqst.DefeatTypeScenario == "Girlfriend") || (cfgqst.DefeatTypeScenario == "FastTravel")
		;NONE 

		;------ POSE SCENARIOS BINDS -----------------------------------------------------------------------
		
		;YOKE
		elseif (cfgqst.DefeatTypeScenario == "Yoke") 
		
			if (mode == "Add")
			cfgqst.PlayCuffsSoundMetal()
			akActor.AddItem(DefeatBindsYoke[0], 1, true)	
			endif		
			akActor.EquipItem(DefeatBindsYoke[0], false, true)

		;ARMBINDER
		elseif (cfgqst.DefeatTypeScenario == "Armbinder") 		;only 1 armbinder for the moment because the Anims Will have that one too... WIP #baustelle
		
		if (mode == "Add")
			cfgqst.PlayCuffsSoundRope()
			akActor.AddItem(DefeatBindsArmbinder[0], 1, true)	
			endif
			akActor.EquipItem(DefeatBindsArmbinder[0], false, true)

		;CUFFS
		elseif (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatStateBindings == "Cuffs" )		
		NymTrace("AddDefeatBindsToActor WE ARE HERE") 
		;int x = Utility.RandomInt (0, 3)
		;for now only equip metal cuffs...	
		;	if x == 0 
		;	cfgqst.PlayCuffsSoundRope()
		;	akActor.AddItem(DefeatBinds[0], 1, true)			;leather
		;	akActor.EquipItem(DefeatBinds[0], false, true)	
		;	elseif x == 1
			if (mode == "Add")
			cfgqst.PlayCuffsSoundMetal()
			akActor.AddItem(DefeatBinds[1], 1, true)			;metal
			endif 
			akActor.EquipItem(DefeatBinds[1], false, true)
		;	elseif x == 2
		;	cfgqst.PlayCuffsSoundMetal()
		;	akActor.AddItem(DefeatBinds[2], 1, true)			;metal
		;	akActor.EquipItem(DefeatBinds[2], false, true)
		;	elseif x == 3
		;	cfgqst.PlayCuffsSoundRope()
		;	akActor.AddItem(DefeatBinds[3], 1, true)			;rope
		;	akActor.EquipItem(DefeatBinds[3], false, true)
		;	endif
	
		
		;------ POSE SCENARIOS FURNITURE -----------------------------------------------------------------------
			
		;Stockade, Xcross, Pillory, Wheel 				
		elseif (cfgqst.DefeatTypeScenario == "Stockade") || (cfgqst.DefeatTypeScenario == "XCross") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Wheel")		
		
		;do what? 
		
		endif 
			
	elseif mode == "Remove" 
	
		;REMOVE YOKE
		if (cfgqst.DefeatTypeScenario == "Yoke") 
		cfgqst.PlayCuffsSoundMetal()
		akActor.RemoveItem(DefeatBindsYoke[0], 1, true, None)
		;REMOVE ARMBINDER
		elseif (cfgqst.DefeatTypeScenario == "Armbinder") 		;only 1 armbinder for the moment because the Anims Will have that one too... WIP #baustelle
		cfgqst.PlayCuffsSoundRope()
		akActor.RemoveItem(DefeatBindsArmbinder[0], 1, true, None)
		
		;REMOVE CUFFS
		elseif (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatStateBindings == "Cuffs" )		
		cfgqst.PlayCuffsSoundMetal()
		akActor.RemoveItem(DefeatBinds[1], 1, true, None)	;metal
		endif 

	endif 

EndFunction

;/
Function DebugFollowerBindings()
	NymTrace("DebugFollowerBindings()")
		folqst.RemoveBindsFromFollowers()
		int iFuck = 0
		
	;	if folqst.Actor_Follower01T
	;	iFuck = folqst.Actor_Follower01.GetItemCount(DefeatBinds[1])
	;	NymTrace("DebugFollowerBindings 01: iFuck = "+iFuck)
	;	folqst.Actor_Follower01.RemoveItem(DefeatBinds[1], iFuck, true, None)	;metal
	;	endif 
		
	;	if folqst.Actor_Follower02
	;	iFuck = folqst.Actor_Follower02.GetItemCount(DefeatBinds[1])
	;	NymTrace("DebugFollowerBindings 02: iFuck = "+iFuck)
	;	folqst.Actor_Follower02.RemoveItem(DefeatBinds[1], iFuck, true, None)	;metal
	;	endif 
Endfunction
/;


;OLD DELETE ++++++++++++++++++++++++++++++
Function RemoveDefeatBindsFollowers(actor akactor)
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: RemoveDefeatBindsFollowers")
actor a = akactor
	a.RemoveItem(DefeatBinds[3], 1, true, None)
EndFunction
;++++++++++++++++++++++++++++++	

	Bool WearingDDs = false
	Bool WearingDDs_HeavyBondage = false 
		
Function AddDefeatBinds()		;#binds		#AddDefeatBinds
;this function handles the equiping of binds AND fills the Variables that tell the mod which poses are played and in what kind of state / binds the player is
;important for (might be we overacted here and remove one of them again)
;cfgqst.DefeatBindsEquipped	;only needed for RemoveDefeatBinds() Function ----> PLAY POSE HERE to Remove Xcross etc.?
;cfgqst.DefeatStateBindings 

	NymTrace("AddDefeatBinds(): DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)

	Bool JsonPunishOutfitsExist = false

							
	if cfgqst.ModDDframework && cfgqst.DefeatTypeScenario == "DD"		;#DDD
	NymTrace("AddDefeatBinds(): WE ARE HERE")
		
		;BreastYOke is 32 (Body) and 46 (Harness)

		If PapyrusUtil.GetVersion() > 1

			If JsonExists("../Naked Defeat/outfitPunish 01")
			
			
			JsonPunishOutfitsExist = true
			else 
			Debug.Messagebox("DD Outfits missing. Download 'Naked Defeat EXTRA - Profile JSONs_V2' and copy the outFitPunish 01 - 05 into 'SKSE/Plugins/Naked Defeat'. You can create your own DD outfits now!")
			endif 
		endif 	
		int i	
			
			
			
		if JsonPunishOutfitsExist && !WearingDDs
			i = Utility.RandomInt(1,5)	
			cfgqst.IsCheat = true
			if i == 1
			cfgqst.Load_JSON_Outfit("Punish 01", "Forced", false)
			elseif i == 2
			cfgqst.Load_JSON_Outfit("Punish 02", "Forced", false)
			elseif i == 3
			cfgqst.Load_JSON_Outfit("Punish 03", "Forced", false)
			elseif i == 4
			cfgqst.Load_JSON_Outfit("Punish 04", "Forced", false)
			elseif i == 5
			cfgqst.Load_JSON_Outfit("Punish 05", "Forced", false)
			endif 
			cfgqst.IsCheat = false
		elseif !WearingDDs_HeavyBondage 
			i = Utility.RandomInt(1,9)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBinds() - Add DDevices Random: "+i)
			if i == 1
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Yoke")
			elseif i == 2
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke")
			elseif i == 3
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Breast Yoke")
			elseif i == 4 			
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Prisoner Chains")
			elseif i == 5
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Manacles")
			elseif i == 6 
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Rope Armbinder")
			elseif i == 7 
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Black Leather Straitjacket Topless")
			elseif i == 8 
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke (Fiddle)")
			elseif i == 9 
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Hooked Elbow Shackles")
			endif 
			;add more checks 
;/
			if D100(5)
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Clamps")
			elseif D100(5)
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Piercings")
			endif 
			if D100(20)
			nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Gag Bit")
			endif 
			/;
			
		endif
		
		cfgqst.DefeatStateBindings = "DDs"
	
	else 			
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: AddDefeatBinds() - DefeatStateBindings:"+cfgqst.DefeatStateBindings+" DefeatBindsEquipped:"+cfgqst.DefeatBindsEquipped)

		if cfgqst.DefeatBindsEquipped != "none"
		NymMessage("cfgqst.DefeatBindsEquipped was NOT none")
		cfgqst.DefeatBindsEquipped = "none"
		endif 

		;check if we are allowed to/exclude animals
		if (cfgqst.DefeatTypeGeneral == "AreHumans") || (cfgqst.DefeatTypeGeneral == "AreHumanoids")
		
		
				;----- ANIMALS ----------------------------------------------------------------------------------
			if cfgqst.DefeatTypeGeneral == "AreAnimals"
			cfgqst.DefeatBindsEquipped = "none"
			cfgqst.DefeatStateBindings = "Unbound"
			
			;----- GIRLFRIEND // FASTTRAVEL ----------------------------------------------------------------------------------
			elseif (cfgqst.DefeatTypeScenario == "Girlfriend") || (cfgqst.DefeatTypeScenario == "FastTravel")
			cfgqst.DefeatBindsEquipped = "none"
			cfgqst.DefeatStateBindings = "Unbound"
			
			elseif cfgqst.DefeatBindsEquipped == "none"
				
				;------ POSE SCENARIOS BINDS -----------------------------------------------------------------------
				;YOKE
				if (cfgqst.DefeatTypeScenario == "Yoke") 
				cfgqst.PlayCuffsSoundMetal()
				cfgqst.PlayerRef.AddItem(DefeatBindsYoke[0], 1, true)			
				cfgqst.PlayerRef.EquipItem(DefeatBindsYoke[0], false, true)
				SendModEvent("Moan")			
				cfgqst.DefeatBindsEquipped = "Yoke" 	
				cfgqst.DefeatStateBindings = "Yoke"
				Utility.Wait(3.0)
				;ARMBINDER
				elseif (cfgqst.DefeatTypeScenario == "Armbinder") 		;only 1 armbinder for the moment because the Anims Will have that one too... WIP #baustelle
				cfgqst.PlayCuffsSoundRope()
				cfgqst.PlayerRef.AddItem(DefeatBindsArmbinder[0], 1, true)			
				cfgqst.PlayerRef.EquipItem(DefeatBindsArmbinder[0], false, true)
				SendModEvent("Moan")			
				cfgqst.DefeatBindsEquipped = "Armbinder" 	
				cfgqst.DefeatStateBindings = "Armbinder"
				Utility.Wait(3.0)
				;CUFFS
				elseif (cfgqst.DefeatTypeScenario == "Cuffs") 		
					int x = Utility.RandomInt (0, 3)
					if x == 0 
					cfgqst.PlayCuffsSoundRope()
					cfgqst.PlayerRef.AddItem(DefeatBinds[0], 1, true)			;leather
					cfgqst.PlayerRef.EquipItem(DefeatBinds[0], false, true)
					;SendModEvent("Moan")	
					cfgqst.DefeatBindsEquipped = "Bound_0"
					Utility.Wait(3.0)
					elseif x == 1
					cfgqst.PlayCuffsSoundMetal()
					cfgqst.PlayerRef.AddItem(DefeatBinds[1], 1, true)			;metal
					cfgqst.PlayerRef.EquipItem(DefeatBinds[1], false, true)
					;SendModEvent("Moan")	
					cfgqst.DefeatBindsEquipped = "Bound_1"
					;Utility.Wait(3.0)
					elseif x == 2
					cfgqst.PlayCuffsSoundMetal()
					cfgqst.PlayerRef.AddItem(DefeatBinds[2], 1, true)			;metal
					cfgqst.PlayerRef.EquipItem(DefeatBinds[2], false, true)
					;SendModEvent("Moan")	
					cfgqst.DefeatBindsEquipped = "Bound_2"
					;Utility.Wait(3.0)
					elseif x == 3
					cfgqst.PlayCuffsSoundRope()
					cfgqst.PlayerRef.AddItem(DefeatBinds[3], 1, true)			;rope
					cfgqst.PlayerRef.EquipItem(DefeatBinds[3], false, true)
					;SendModEvent("Moan")	
					cfgqst.DefeatBindsEquipped = "Bound_3"
					;Utility.Wait(3.0)
					endif
					SendModEvent("Moan")	
					cfgqst.DefeatStateBindings = "Cuffs"
					Utility.Wait(3.0)
				
				
				;------ POSE SCENARIOS FURNITURE -----------------------------------------------------------------------
				;Stockade, Xcross, Pillory, Wheel 				
				elseif (cfgqst.DefeatTypeScenario == "Stockade") || (cfgqst.DefeatTypeScenario == "XCross") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "Wheel")		
				
					if (cfgqst.DefeatTypeScenario == "Wheel")
					cfgqst.PlayCuffsSoundRope()
					else
					cfgqst.PlayCuffsSoundMetal()
					endif
				SendModEvent("Moan")			
				cfgqst.DefeatBindsEquipped = cfgqst.DefeatTypeScenario	
				cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario	
				Utility.Wait(3.0)
						
		
				
				;----- RANDOM -----------------------------------------------------------------------------------
				else 
					;CUFFS
					if cfgqst.DefeatViaSlavery || D100(66)			;when slave always get cuffs when nothing else
						
						int x 
						
						if cfgqst.DefeatViaSlavery
						x = Utility.RandomInt (1, 2) ;for slaves only metal cuffs
						
						elseif cfgqst.DefeatType == "Spriggans"
						x = 3 ;only rope (matching the trees)
						else
						x = Utility.RandomInt (0, 3)
						endif
						
						if x == 0 
						cfgqst.PlayCuffsSoundRope()
						cfgqst.PlayerRef.AddItem(DefeatBinds[0], 1, true)			;cuffs leather
						cfgqst.PlayerRef.EquipItem(DefeatBinds[0], false, true)
						;SendModEvent("Moan")	
						cfgqst.DefeatBindsEquipped = "Bound_0"
						Utility.Wait(3.0)
						elseif x == 1
						cfgqst.PlayCuffsSoundMetal()
						cfgqst.PlayerRef.AddItem(DefeatBinds[1], 1, true)			;cuffs metal
						cfgqst.PlayerRef.EquipItem(DefeatBinds[1], false, true)
						;SendModEvent("Moan")	
						cfgqst.DefeatBindsEquipped = "Bound_1"
						;Utility.Wait(3.0)
						elseif x == 2
						cfgqst.PlayCuffsSoundMetal()
						cfgqst.PlayerRef.AddItem(DefeatBinds[2], 1, true)			;cuffs metal
						cfgqst.PlayerRef.EquipItem(DefeatBinds[2], false, true)
						;SendModEvent("Moan")	
						cfgqst.DefeatBindsEquipped = "Bound_2"
						;Utility.Wait(3.0)
						elseif x == 3
						cfgqst.PlayCuffsSoundRope()
						cfgqst.PlayerRef.AddItem(DefeatBinds[3], 1, true)			;cuffs rope
						cfgqst.PlayerRef.EquipItem(DefeatBinds[3], false, true)
						;SendModEvent("Moan")	
						cfgqst.DefeatBindsEquipped = "Bound_3"
						;Utility.Wait(3.0)
						endif
						SendModEvent("Moan")	
						cfgqst.DefeatStateBindings = "Cuffs"
						Utility.Wait(3.0)
					;UNBOUND
					else	
					cfgqst.DefeatBindsEquipped = "none"
					cfgqst.DefeatStateBindings = "Unbound"		
					endif	
				endif				
			endif ;BindsEquiped skips		
		endif
	endif 
;FadeToBlack(false)

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function RemoveDefeatBinds()		;#RemoveDefeatBinds()
	NymTrace("RemoveDefeatBinds(non DD!)") 
	if cfgqst.DefeatBindsEquipped == "Bound_0"
	cfgqst.PlayerRef.RemoveItem(DefeatBinds[0], 1, true, None)
	elseif cfgqst.DefeatBindsEquipped == "Bound_1"
	cfgqst.PlayerRef.RemoveItem(DefeatBinds[1], 1, true, None)
	elseif cfgqst.DefeatBindsEquipped == "Bound_2"
	cfgqst.PlayerRef.RemoveItem(DefeatBinds[2], 1, true, None)
	elseif cfgqst.DefeatBindsEquipped == "Bound_3"
	cfgqst.PlayerRef.RemoveItem(DefeatBinds[3], 1, true, None)	
	elseif cfgqst.DefeatBindsEquipped == "Yoke"
	cfgqst.PlayerRef.RemoveItem(DefeatBindsYoke[0], 1, true, None)
	elseif cfgqst.DefeatBindsEquipped == "Armbinder"
	cfgqst.PlayerRef.RemoveItem(DefeatBindsArmbinder[0], 1, true, None)
	else
	;PLAY POSE HERE to Remove Xcross etc.?
	endif
	
	cfgqst.DefeatBindsEquipped = "none"
	cfgqst.DefeatStateBindings = "Unbound"
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;/
Function ShowNPCPoses(int pose = 0)

if pose == 1		;humanoid defeat
	if Victimcount == 1
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[0]) 
	elseif Victimcount == 2
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[0]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[1]) 
	elseif Victimcount == 3
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[0])
		Utility.Wait(1.0) 
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[1]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[2])
	elseif Victimcount == 4
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[0])
		Utility.Wait(1.0) 
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[1]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[2])
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false, Victims[3])
	endif
elseif pose == 2	;animal defeat
	if Victimcount == 1
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[0])  
	elseif Victimcount == 2
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[0]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[1]) 
	elseif Victimcount == 3
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[0])
		Utility.Wait(1.0) 
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[1]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[2])
	elseif Victimcount == 4
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[0])
		Utility.Wait(1.0) 
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[1]) 
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[2])
		Utility.Wait(1.0)
		cfgqst.ShowNPCPose(cfgqst.PosesDefeat[Utility.RandomInt(15,19)], false, Victims[3])
	endif
endif	
EndFunction
/;

;/

;#race
if (RapersAcount == 0) && GetRaceKey(a) == ("Bears") || GetRaceKey(a) == ("SabreCats") || GetRaceKey(a) == ("Chaurus") || GetRaceKey(a) == ("Skeevers") || GetRaceKey(a) == ("Horses") || GetRaceKey(a) == ("Wolves") || GetRaceKey(a) == ("Dogs") 		
cfgqst.DefeatTypeAnimals = true		
endif

if GetRaceKey(a) == ("Draugrs") || GetRaceKey(a) == ("Falmers") || GetRaceKey(a) == ("VampireLords") || GetRaceKey(a) == ("FlameAtronach") || GetRaceKey(a) == ("Spriggans") || GetRaceKey(a) == ("Werewolves") || GetRaceKey(a) == ("Gargoyles") || GetRaceKey(a) == ("Rieklings")		
cfgqst.DefeatTypeHumanoids = true	
cfgqst.DefeatTypeAnimals = false		
endif

if GetRaceKey(a) == ("Trolls") 		
cfgqst.DefeatTypeTrolls = true	
cfgqst.DefeatTypeAnimals = false	
cfgqst.DefeatTypeHumanoids = false
endIf

if GetRaceKey(a) == ("Giants") 		
cfgqst.DefeatTypeGiants = true	
cfgqst.DefeatTypeAnimals = false	
cfgqst.DefeatTypeHumanoids = false
cfgqst.DefeatTypeTrolls = false	
endIf


AnimalDefeat		NO Furnitures
	ClearRaceKey("Bears")
	ClearRaceKey("SabreCats")
	ClearRaceKey("Chaurus")
	ClearRaceKey("Skeevers")
	ClearRaceKey("Horses")
	ClearRaceKey("Wolves")
	ClearRaceKey("Dogs")

	evtl. extra?
	ClearRaceKey("Spiders")
	ClearRaceKey("LargeSpiders")

Human/Humanoid Defeat
	ClearRaceKey("Draugrs")
	ClearRaceKey("Falmers")
	ClearRaceKey("VampireLords")
	ClearRaceKey("FlameAtronach")
	ClearRaceKey("Spriggans")
	ClearRaceKey("Werewolves")
	ClearRaceKey("Gargoyles")
	ClearRaceKey("Rieklings")
	
GiantDefeat				 (choose different furnitures?)	
	ClearRaceKey("Giants")

TrollDefeat				 (choose different furnitures?)	
	ClearRaceKey("Trolls")
	
	
out	
	ClearRaceKey("Dragons")

	
Bool Property DefeatTypeAnimals Auto
Bool Property DefeatTypeHumanoids Auto
Bool Property DefeatTypeTrolls Auto
Bool Property DefeatTypeGiants Auto
	


	ClearRaceKey("Seekers")


	ClearRaceKey("Lurkers")
	ClearRaceKey("Chickens")
	
	/;
	
;----------------------------------------------------------------------------------------------------------------------	

; NO LONGER NEEDED
;/	
Bool Function GetAnimalDefeat()

string tempRace = CreaturesARace
bool CheckCreaturesA = false
bool CheckCreaturesB = false
bool CheckCreaturesC = false

if CreaturesACount > 0
CheckCreaturesA = true
endIf
if CreaturesBCount > 0
CheckCreaturesB = true
endIf
if CreaturesCCount > 0
CheckCreaturesC = true
endIf

while CheckCreaturesA || CheckCreaturesB || CheckCreaturesC
	
	if CheckCreaturesA
	tempRace = CreaturesARace
	CheckCreaturesA = false
	elseif CheckCreaturesB
	tempRace = CreaturesBRace
	CheckCreaturesB = false
	elseif CheckCreaturesC
	tempRace = CreaturesCRace
	CheckCreaturesC = false
	endif
	
	if tempRace == ("Ashhoppers")
	return true
	elseif tempRace == ("Bears")
	return true
	elseif tempRace == ("Boars")
	return true
	elseif tempRace == ("BoarsAny")
	return true
	elseif tempRace == ("Canines")
	return true
	elseif tempRace == ("Chaurus")		;evtl change new category spidertypes (catch with special binds and cocoons)
	return true
	elseif tempRace == ("ChaurusHunters")	;evtl change new category spidertypes	(catch with special binds and cocoons)
	return true
	elseif tempRace == ("ChaurusReapers")	;evtl change new category spidertypes	(catch with special binds and cocoons)
	return true
	elseif tempRace == ("Chickens")
	return true
	elseif tempRace == ("Cows")
	return true
	elseif tempRace == ("Deers")
	return true
	elseif tempRace == ("Dogs")
	return true
	elseif tempRace == ("Foxes")
	return true
	elseif tempRace == ("Goats")
	return true
	elseif tempRace == ("Horkers")
	return true
	elseif tempRace == ("IceWraiths")			;evtl change new category ghosts
	return true
	elseif tempRace == ("Mammoths")
	return true
	elseif tempRace == ("Mudcrabs")
	return true
	elseif tempRace == ("Horkers")
	return true
	elseif tempRace == ("Netches")
	return true
	elseif tempRace == ("Rabbits")
	return true
	elseif tempRace == ("SabreCats")
	return true
	elseif tempRace == ("Skeevers")
	return true
	elseif tempRace == ("Slaughterfishes")
	return true
	elseif tempRace == ("Spiders")
	return true
	elseif tempRace == ("Slaughterfishes")
	return true
	elseif tempRace == ("LargeSpiders")
	return true
	elseif tempRace == ("GiantSpiders")
	return true
	elseif tempRace == ("Wolves")
	return true

	elseif tempRace == ("FrostAtronach")		;get his own category later
	return true
	else
	return false
	endif
endwhile	

EndFunction

/;

;/
		String[] Ashhoppers
		String[] Bears
		String[] Boars
		String[] BoarsAny
    String[] BoarsMounted
		String[] Canines
		String[] Chaurus
		String[] ChaurusHunters
		String[] ChaurusReapers
		String[] Chickens
		String[] Cows
		String[] Deers
		String[] Dogs
    String[] DragonPriests
    String[] Dragons
    String[] Draugrs
    String[] DwarvenBallistas
    String[] DwarvenCenturions
    String[] DwarvenSpheres
    String[] DwarvenSpiders
    String[] Falmers
    String[] FlameAtronach
		String[] Foxes
		String[] FrostAtronach
    String[] Gargoyles
    String[] Giants
		String[] Goats
    String[] Hagravens
		String[] Horkers
		String[] Horses
		String[] IceWraiths
    String[] Lurkers
		String[] Mammoths
		String[] Mudcrabs
		String[] Netches
		String[] Rabbits
    String[] Rieklings
		String[] SabreCats
	String[] Seekers
		String[] Skeevers
		String[] Slaughterfishes
    String[] StormAtronach
		String[] Spiders
		String[] LargeSpiders
		String[] GiantSpiders
    String[] Spriggans
    String[] Trolls
    String[] VampireLords
    String[] Werewolves
    String[] WispMothers
    String[] Wisps
		String[] Wolves	
	/;
	
;----------------------------------------------------------------------------------------------------------------------	

;/	
Function CombatScan()			;#scan	;MOVED TO CONFIGQUEST

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CombatScan() FUNCTION (ON)")

	;this is looping until called to stop by End stage of Defeat
	while !StopCombatScan && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
		;StopCombatScan = true
		Utility.Wait(1.0)

		if PartyInCombat()
			
			;wait for AllegianceQuest to shutdown before restarting
			while AllegianceQuest.GetStage() < 1000 
			Utility.Wait(1.0)
			endwhile
			
		;start allegiancequest to calm actors that fight (catch newly arrived actors too this way)	
		AllegianceQuest.Start()
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: CombatScan() AllegianceQuest (RESTART)")
		Utility.Wait(3.0)
		else
		;loop and wait for next check
		Utility.Wait(2.0)		
		endIf
	endWhile

EndFunction

;----------------------------------------------------------------------------------------------------------------------------------


bool Function PartyInCombat()		;#combatscan ;MOVED TO CONFIGQUEST

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
/;

;----------------------------------------------------------------------------------------------------------------------------------
	
;NEW 

int LastPosePlayer
String LastTypePlayer

;2025 this is the latest Follower Pose Function ---> REMOVE OLD 	
;/	
Function PlayPoseFollower(actor akactor, string type)		
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseFollower()")
	
	int PlayPoseNo
	
	if type == "surrender"
	PlayPoseNo = Utility.RandomInt(1,6)
		if PlayPoseNo == 1
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_01)
		elseif PlayPoseNo == 2
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_02)
		elseif PlayPoseNo == 3
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_03)	
		elseif PlayPoseNo == 4
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_04)
		elseif PlayPoseNo == 5
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_05)
		elseif PlayPoseNo == 6
		akactor.PlayIdle(cfgqst.IdlesHumanSurrender_06)
		endif
	elseif type == "wiggle"
		if FollowersAreBound
			if D100(66)		
			PlayPoseNo = Utility.RandomInt(0,19)
			akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[PlayPoseNo])		;array lenght 20
			else							
			PlayPoseNo = Utility.RandomInt(0,9)					
			akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[PlayPoseNo])	;array lenght 10
			endif
		else
		PlayPoseNo = Utility.RandomInt(0,16)
		akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[PlayPoseNo])
		endif
	elseif type == "furniture"
	int y = Utility.RandomInt(1,5)
		if y < 3			;crux
		PlayPoseNo = Utility.RandomInt(0,2)
		akactor.PlayIdle(cfgqst.IdlesDefeatCrux[PlayPoseNo])
		elseif y == 3		;chick on stick
		akactor.PlayIdle(cfgqst.IdlesDefeatImpaled[0])
		elseif y > 3		;pillory
		PlayPoseNo = Utility.RandomInt(0,16)
		akactor.PlayIdle(cfgqst.IdlesDefeatPilloryStruggle[PlayPoseNo])
		endif
	endif	
EndFunction
/;

;/ NO LONGER IN USE; REPLACE 
Function ChangeFollowerIdles()
;#GUIDE: 	This is meant to change the followers idle for each round of sex
;			to not make them have same idle for the whole duration in case they have no scene

	if victims0 && !Victims[0].IsInFaction(SexLabAnimatingFaction)
	PlayPoseFollower(Victims[0], "wiggle")
	endif
	if victims1 && !Victims[1].IsInFaction(SexLabAnimatingFaction)
	PlayPoseFollower(Victims[1], "wiggle")
	endif
	if victims2 && !Victims[2].IsInFaction(SexLabAnimatingFaction)
	PlayPoseFollower(Victims[2], "wiggle")
	endif
	if victims3 && !Victims[3].IsInFaction(SexLabAnimatingFaction)
	PlayPoseFollower(Victims[3], "wiggle")
	endif
	
EndFunction	
/;

;----------------------------------------------------------------------------------------------------------------------------------


;bool SexScene = false
bool StartForceExpression = false	

;/	
mfg expression
anger 0
fear 1
happy 2
sad 3
surprise 4
puzzled 5
disgust 6
neutral 7

mfg phoneme
Aah 0
BigAah 1
BMP 2
ChjSh 3
DST 4
Eee 5
Eh 6
FV 7
i 8
k 9
N 10
Oh 11
OohQ 12
R 13
Th 14
W 15

mfg modifier
BlinkL 0
BlinkR 1
BrowDownL 2
BrownDownR 3
BrowInL 4
BrowInR 5
BrowUpL 6
BrowUpR 7
LookDown 8
LookLeft 9
LookRight 10
LookUp 11
SquintL 12
SquintR 13

/;
	
;----------------------------------------------------------------------------------------------------------------------	
	

Function CalmFollower()	;REMOVE OLD REPLACED ALREADY 
	
	if folqst.IsWithus_Follower(0)
	
		if SPE_actor.IsActorCalmed(folqst.NakedFollower[0])
		NymTrace("#Mjoll CALM")
		else 
		SPE_actor.SetActorCalmed(folqst.NakedFollower[0], true)
		NymTrace("#Mjoll NOT CALM")
		endif 
	endif 

EndFunction

Function SelectWhipper()
	
	;GUIDE: we select an Actor based on the Scenario and remove him from his Group so that the whipper is always available
	
	NymTrace("SelectWhipper A (storqst.NeedAwhipper:"+storqst.NeedAwhipper)
	
	if cfgqst.DefeatWhipProb > 0 && !WhipperFound && NeedaWhipper
		
		storqst.NeedAwhipper = false 
		WhipperFound = true
		
		if cfgqst.DefeatTypeGeneral == "AreHumans"
		
			if RapersC[3]
			RapersC[3].AddToFaction(WhippingFaction)
			RapersC[3] = none
			RapersCCount = 3
			elseif RapersC[2]
			RapersC[2].AddToFaction(WhippingFaction)
			RapersC[2] = none
			RapersCCount = 2
			elseif RapersC[1]
			RapersC[1].AddToFaction(WhippingFaction)
			RapersC[1] = none
			RapersCCount = 1
			
		;	elseif VictimCount < 2 && RapersC[0]
		;	RapersC[0].AddToFaction(WhippingFaction)
		;	RapersC[0] = none
		;	RapersCCount = 0
			
			elseif RapersB[3]
			RapersB[3].AddToFaction(WhippingFaction)
			RapersB[3] = none
			RapersBCount = 3
			elseif RapersB[2]
			RapersB[2].AddToFaction(WhippingFaction)
			RapersB[2] = none
			RapersBCount = 2
			elseif RapersB[1]
			RapersB[1].AddToFaction(WhippingFaction)
			RapersB[1] = none
			RapersBCount = 1
			elseif RapersA[3]
			RapersA[3].AddToFaction(WhippingFaction)
			RapersA[3] = none
			RapersACount = 3
			elseif RapersA[2]
			RapersA[2].AddToFaction(WhippingFaction)
			RapersA[2] = none
			RapersACount = 2
			elseif RapersA[1]
			RapersA[1].AddToFaction(WhippingFaction)
			RapersA[1] = none
			RapersACount = 1
			
		elseif cfgqst.DefeatTypeGeneral == "AreHumanoids" && (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Falmers")
			
			elseif CreaturesF[3] && CheckWhipperRaceTypeVsScenario(CreaturesFRace)	
			CreaturesF[3].AddToFaction(WhippingFaction)
			CreaturesF[3] = none
			CreaturesFCount = 3
			elseif CreaturesF[2] && CheckWhipperRaceTypeVsScenario(CreaturesFRace)	
			CreaturesF[2].AddToFaction(WhippingFaction)
			CreaturesF[2] = none
			CreaturesFCount = 2
			elseif CreaturesF[1] && CheckWhipperRaceTypeVsScenario(CreaturesFRace)	
			CreaturesF[1].AddToFaction(WhippingFaction)
			CreaturesF[1] = none
			CreaturesFCount = 1
			;CreaturesD and E missing 
			elseif CreaturesC[3] && CheckWhipperRaceTypeVsScenario(CreaturesCRace)
			CreaturesC[3].AddToFaction(WhippingFaction)
			CreaturesC[3] = none
			CreaturesCCount = 3
			elseif CreaturesC[2] && CheckWhipperRaceTypeVsScenario(CreaturesCRace)
			CreaturesC[2].AddToFaction(WhippingFaction)
			CreaturesC[2] = none
			CreaturesCCount = 2
			elseif CreaturesC[1] && CheckWhipperRaceTypeVsScenario(CreaturesCRace)
			CreaturesC[1].AddToFaction(WhippingFaction)
			CreaturesC[1] = none
			CreaturesCCount = 1
			elseif CreaturesB[3] && CheckWhipperRaceTypeVsScenario(CreaturesBRace)
			CreaturesB[3].AddToFaction(WhippingFaction)
			CreaturesB[3] = none
			CreaturesBCount = 3
			elseif CreaturesB[2] && CheckWhipperRaceTypeVsScenario(CreaturesBRace)
			CreaturesB[2].AddToFaction(WhippingFaction)
			CreaturesB[2] = none
			CreaturesBCount = 2
			elseif CreaturesB[1] && CheckWhipperRaceTypeVsScenario(CreaturesBRace)
			CreaturesB[1].AddToFaction(WhippingFaction)
			CreaturesB[1] = none
			CreaturesBCount = 1
			elseif CreaturesA[3] && CheckWhipperRaceTypeVsScenario(CreaturesARace)
			CreaturesA[3].AddToFaction(WhippingFaction)
			CreaturesA[3] = none
			CreaturesACount = 3
			elseif CreaturesA[2] && CheckWhipperRaceTypeVsScenario(CreaturesARace)
			CreaturesA[2].AddToFaction(WhippingFaction)
			CreaturesA[2] = none
			CreaturesACount = 2
			elseif CreaturesA[1] && CheckWhipperRaceTypeVsScenario(CreaturesARace)
			CreaturesA[1].AddToFaction(WhippingFaction)
			CreaturesA[1] = none
			CreaturesACount = 1
			else 
			
			WhipperFound = false ;if we dont land anywhere above, this becomes false
			storqst.NeedAwhipper = true
			NymTrace("SelectWhipper A (storqst.NeedAwhipper:"+storqst.NeedAwhipper)
			endif 
		endif 
	endif		

EndFunction 

Bool Function CheckWhipperRaceTypeVsScenario(String CreatureGroupRace)
	NymTrace("CheckWhipperRaceTypeVsScenario: "+CreatureGroupRace)
	
	;GUIDE: Currently only some Humanoid Creatures are allowed as Whippers
	
	if cfgqst.DefeatType == "Undead"
		if CreatureGroupRace == "Draugrs" || CreatureGroupRace == "Skeletons" || CreatureGroupRace == "Dremora"
		return true 
		else 
		return false 
		endif 
	elseif cfgqst.DefeatType == "Spriggans"
		if CreatureGroupRace == "Spriggans" 
		return true 
		else 
		return false 
		endif 
	elseif cfgqst.DefeatType == "Rieklings"
		if CreatureGroupRace == "Rieklings" 
		return true 
		else 
		return false 
		endif 
	elseif cfgqst.DefeatType == "Falmers"
		if CreatureGroupRace == "Falmers" 
		return true 
		else 
		return false 
		endif 
	else 
	return false 
	endif 
	

EndFunction 


Bool Function LastHitterAsWhipper()

	;probably not required?
	String LastHitterRaceKey = storqst.GetRaceKeyFast(storqst.ActorEnemyLastHitter[0])

	if cfgqst.DefeatTypeGeneral == "AreHumans" && LastHitterRaceKey == "Humans"
	storqst.ActorEnemyLastHitter[0].Addtofaction(WhippingFaction)
	return true
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids" && CheckWhipperRaceTypeVsScenario(LastHitterRaceKey)
	storqst.ActorEnemyLastHitter[0].Addtofaction(WhippingFaction)
	return true
	else 
	return false
	endif 
	
EndFunction 

;----------------------------------------------------------------------------------------------------------------------

String Function GroupComposition() ;#GroupComposition()

int femalecount = 0
bool TreatFemalesAsMales = false

;this makes the function treat females as males if triggered
if (Utility.RandomInt(1, 100) <= cfgqst.FemalesAsMales) || (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Wheel") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Pillory") || (cfgqst.DefeatTypeScenario == "XCross") || (cfgqst.DefeatTypeScenario == "Stockade")
TreatFemalesAsMales = true
endif

if AggressorCount == 1			;2P
	
	if !TreatFemalesAsMales
		if Sexlab.GetGender(Aggressors[0]) == 1
		femalecount +=1
		endif
	endif	
	
	if cfgqst.FemalesAsMales > 0
	femalecount = 0
	endif 
	
	
	if femalecount == 0	
	return "FF, " 	 					;its MF, supress FF
	elseif femalecount == 1
	return "MF, FM, " 						;its FF, supress MF
	endif	
	
elseif AggressorCount == 2		;3P
	
	if !TreatFemalesAsMales
		if Sexlab.GetGender(Aggressors[0]) == 1
		femalecount +=1
		endif
		
		if Sexlab.GetGender(Aggressors[1]) == 1
		femalecount +=1
		endIf
	endif	
	
	if cfgqst.FemalesAsMales > 0
	femalecount = 0
	endif 
	
	if femalecount == 0
	return "FFF, MFF, FFM, " 	 			;its MMF, supress FFF, MFF		
	elseif femalecount == 1
	return "FFF, MMF, FMM, " 				;its MFF, supress FFF, MMF	
	elseif femalecount == 2
	return "MMF, MFF, FFM, FMM, " 				;its FFF, supress MMF, MFF
	endif	
	
elseif AggressorCount == 3		;4P
	
	if !TreatFemalesAsMales
		if Sexlab.GetGender(Aggressors[0]) == 1
		femalecount +=1
		endif
		
		if Sexlab.GetGender(Aggressors[1]) == 1
		femalecount +=1
		endIf
		
		if Sexlab.GetGender(Aggressors[2]) == 1
		femalecount +=1
		endIf
	endif	
	
	if cfgqst.FemalesAsMales > 0
	femalecount = 0
	endif 
	
	
	if femalecount == 0
	return "FFFF, MFFF, MMFF, FFFM, " 	 		;its MMMF, supress FFFF, MFFF, MMFF		
	elseif femalecount == 1
	return "FFFF, MFFF, MMMF, FFFM, " 			;its MMFF, supress FFFF, MFFF, MMMF	
	elseif femalecount == 2
	return "FFFF, MMFF, MMMF, FMMM, " 			;its MFFF, supress FFFF, MMFF, MMMF		
	elseif femalecount == 3	
	return "MFFF, MMFF, MMMF, FMMM, FFFM, " 	;its FFFF, supress MFFF, MMFF, MMMF
	endIf
	
elseif AggressorCount == 4		;5P
	
	if !TreatFemalesAsMales
		if Sexlab.GetGender(Aggressors[0]) == 1
		femalecount +=1
		endif
		
		if Sexlab.GetGender(Aggressors[1]) == 1
		femalecount +=1
		endIf
		
		if Sexlab.GetGender(Aggressors[2]) == 1
		femalecount +=1
		endIf
		
		if Sexlab.GetGender(Aggressors[3]) == 1
		femalecount +=1
		endIf
	endif	
	
	if cfgqst.FemalesAsMales > 0
	femalecount = 0
	endif 	
	
	if femalecount == 0
	return "FFFFF, MFFFF, FFFFM, " 	 		;its MMMMF, supress FFFFF, MFFFF			
	elseif femalecount == 3
	return "FFFFF, MMMMF, FMMMM, " 			;its MFFFF, supress FFFFF, MMMMF
	elseif femalecount == 4
	return "MFFFF, MMMMF, FMMMM, " 			;its FFFFF, supress MFFFF, MMMMF		
	elseif (femalecount == 1) || (femalecount == 2)
	return "MMMMF, MFFFF, FFFFF, FFFFM, FMMMM, " 		;its MMMFF or MMFFF which both do not exist -> supress MMMMF, MFFFF, FFFFF
	endIf
endIf

EndFunction


int Function CountWornSlots()

	int iReturn
	if storqst.GetSlotItem(33, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
	
	if storqst.GetSlotItem(42, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
	
	if storqst.GetSlotItem(57, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
	
	if storqst.GetSlotItem(53, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 	
			
	if storqst.GetSlotItem(46, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
	
	if storqst.GetSlotItem(32, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
			
	if storqst.GetSlotItem(49, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
	
	if storqst.GetSlotItem(35, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 
			
	if storqst.GetSlotItem(37, cfgqst.PlayerRef) 
	iReturn += 1			
	endif 	
	
	return iReturn

EndFunction 

Function WhipStripScene()			;#WhipStripScene()	
		
		DebugTrace("WhipStripScene(START)")
		Bool StrippedCompletely = false
		int i = 0
		int iWaitTime = 5
		storqst.StartWhipping_00(600)
	
		Utility.Wait(iWaitTime)
		
		while !StrippedCompletely
		
			if storqst.WhippingDuration == 0 ;restart WhipQuest if needed
			storqst.StartWhipping_00(600)
			endif 
		
			if D100(50) 
			PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
			endif 
			NymTrace("WhipStripScene(Round "+i+")")
			if i == 0 
				i += 1
				if storqst.GetSlotItem(33, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 
			elseif i == 1 				
				i += 1
				if storqst.GetSlotItem(42, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(42, cfgqst.PlayerRef)	;circlet
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 
			elseif i == 2 				
				i += 1
				if storqst.GetSlotItem(57, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	

			elseif i == 3 				
				i += 1
				if storqst.GetSlotItem(53, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(53, cfgqst.PlayerRef)	;steel thigh armor
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 4 				
				i += 1
				if storqst.GetSlotItem(46, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(46, cfgqst.PlayerRef)	;harness
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 5 				
				i += 1
				if storqst.GetSlotItem(32, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(32, cfgqst.PlayerRef)	;body 
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 6 				
				i += 1
				if storqst.GetSlotItem(52, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 7				
				i += 1
				if storqst.GetSlotItem(49, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(49, cfgqst.PlayerRef)	;savage bikini thong
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
			elseif i == 8 				
				i += 1
				if storqst.GetSlotItem(35, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(35, cfgqst.PlayerRef)	;amulett
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 9 				
				i += 1
				if storqst.GetSlotItem(37, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 10
				i += 1
				if storqst.GetSlotItem(48, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(48, cfgqst.PlayerRef)	;bikini top
				cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 11
				i += 1
				if cfgqst.BondageHaircutProb > 0
					HairChangedOnce = true
					cfgqst.ChangeHairStyle()	;whip hair into shape!!!
					SendModEvent("Moan")
					Utility.Wait(iWaitTime)
				endif			
					
			elseif i == 12 ;always ends here 
			StrippedCompletely = true
			endif 

		endwhile 	

		storqst.WhippingDuration = 0 ;ends whipping
		DebugTrace("WhipStripScene(END)")
		

EndFunction 

;Function DoubleCheckCreatures(Actor akactor)

;----------------------------------------------------------------------------------------------------------------------

;/
Function FollowersInitialPosing()
;FOLLOWER HANDLING		
	if cfgqst.RapeAgain
		if VictimCount > 0
			if Victims0	
			StripFollower(0)
			folidle01.StartDoingNothing_01(true)
			Vehicle_Follower_01("restore")
			PlayPoseFollower(Victims[0], "wiggle")	
			endif	
			if Victims1
			StripFollower(1)
 			folidle01.StartDoingNothing_02(true)
			Vehicle_Follower_02("restore")
			PlayPoseFollower(Victims[1], "wiggle")	
			endif			
			if Victims2
			StripFollower(2)
			folidle01.StartDoingNothing_02(true)
			PlayPoseFollower(Victims[2], "wiggle")
			endif		
			if Victims3
			StripFollower(3)			
			folidle01.StartDoingNothing_03(true)
			PlayPoseFollower(Victims[3], "wiggle")
			endif				
		endif
	else
		if cfgqst.FollowerCount > 0
		folidle01.StartDoingNothing_01(true)
		PlayPoseFollower(Victims[0], "wiggle")
		endif
		if cfgqst.FollowerCount > 1
		folidle01.StartDoingNothing_02(true)
		PlayPoseFollower(Victims[1], "wiggle")
		endif
		if cfgqst.FollowerCount > 2
		folidle01.StartDoingNothing_03(true)
		PlayPoseFollower(Victims[2], "wiggle")
		endif
		if cfgqst.FollowerCount > 3
		folidle01.StartDoingNothing_04(true)
		PlayPoseFollower(Victims[3], "wiggle")
		endif
	endif
	
EndFunction

/;



	;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV   VEHICLES FOLLOWERS  VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	
	;this places our Vehicles and matching actor relative to the Players Vehicle 
									
	;SetVehicleToActor(Victims[0], "FRONT RIGHT 45°", Alias_Vehicle_Follower_03.GetReference(), cfgqst.PlayerRef, VehiclePlayer, 160.0, 320.0)
				
Function PlaceWatchMarkers() 

		;XMARKER 00 
		xMarkerHeading_00 = Alias_XMarkerHeading_00.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_00.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_00.GetHeadingAngle(cfgqst.PlayerRef)
		
				
	;	if Nym()
		xMarkerHeading_00.SetAngle(0.0, 0.0, xMarkerHeading_00.GetAngleZ() + zOffset)
	;	else 
	;	xMarkerHeading_00.SetAngle(xMarkerHeading_00.GetAngleX(), xMarkerHeading_00.GetAngleY(), xMarkerHeading_00.GetAngleZ() + zOffset)
	;	endif 

		;XMARKER 01 
		xMarkerHeading_01 = Alias_XMarkerHeading_01.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_01.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_01.GetHeadingAngle(cfgqst.PlayerRef)
		
	;	if Nym()
		xMarkerHeading_01.SetAngle(0.0, 0.0, xMarkerHeading_01.GetAngleZ() + zOffset)
	;	else 
	;	xMarkerHeading_01.SetAngle(xMarkerHeading_01.GetAngleX(), xMarkerHeading_01.GetAngleY(), xMarkerHeading_01.GetAngleZ() + zOffset)
	;	endif 
		
		;XMARKER 02
		xMarkerHeading_02 = Alias_XMarkerHeading_02.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_02.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_02.GetHeadingAngle(cfgqst.PlayerRef)
		
	;	if Nym()
		xMarkerHeading_02.SetAngle(0.0, 0.0, xMarkerHeading_02.GetAngleZ() + zOffset)
	;	else 
	;	xMarkerHeading_02.SetAngle(xMarkerHeading_02.GetAngleX(), xMarkerHeading_02.GetAngleY(), xMarkerHeading_02.GetAngleZ() + zOffset)
	;	endif 
		
		
		
		
		;XMARKER 03
		xMarkerHeading_03 = Alias_XMarkerHeading_03.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_03.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_03.GetHeadingAngle(cfgqst.PlayerRef)
		
	;	if Nym()
		xMarkerHeading_03.SetAngle(0.0, 0.0, xMarkerHeading_03.GetAngleZ() + zOffset)
	;	else 
	;	xMarkerHeading_03.SetAngle(xMarkerHeading_03.GetAngleX(), xMarkerHeading_03.GetAngleY(), xMarkerHeading_03.GetAngleZ() + zOffset)
	;	endif 
		
		

EndFunction


Function PlaceWatcherXMarkers() 

		;---- Player > Create XMarkers ----;
		storqst.WatcherXMarkers[0] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[1] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[2] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[3] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[4] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[5] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[6] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		storqst.WatcherXMarkers[7] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)


		;---- Player > Place 4 Main XMarkers ----;
		
		;WatcherXMarkers[0]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[0].MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[0].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[0].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[0].GetAngleZ() + zOffset)

		;WatcherXMarkers[1]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[1].MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[1].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[1].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[1].GetAngleZ() + zOffset)

		;WatcherXMarkers[2]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[2].MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[2].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[2].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[2].GetAngleZ() + zOffset)

		;WatcherXMarkers[3]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[3].MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[3].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[3].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[3].GetAngleZ() + zOffset)

		;Marker[0] : 75 units front at 45°  (Front left)
		;Marker[1] : 75 units back at 45° 	(Back left)
		;Marker[2] : 75 units front at 135°  (Front right)
		;Marker[3] : 75 units back at 135° 	(Back right)
		
		;45 90 135 180
		
		;---- Player > Place 4 Secondary XMarkers ----;
		
		;WatcherXMarkers[2]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[4].MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+90.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[4].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[4].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[4].GetAngleZ() + zOffset)

		;WatcherXMarkers[3]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[5].MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+90.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[5].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[5].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[5].GetAngleZ() + zOffset)
		
		;WatcherXMarkers[2]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[6].MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+180.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+180.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[6].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[6].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[6].GetAngleZ() + zOffset)

		;WatcherXMarkers[3]
		; ---- Place Relative to Player --------------------------------
		storqst.WatcherXMarkers[7].MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+180.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+180.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = storqst.WatcherXMarkers[7].GetHeadingAngle(cfgqst.PlayerRef)
		storqst.WatcherXMarkers[7].SetAngle(0.0, 0.0, storqst.WatcherXMarkers[7].GetAngleZ() + zOffset)
		

EndFunction
	
Function PlayerSetVehicle(bool Set)	;#setvehicle ;PlayerSetVehicle(TRUE)

	if cfgqst.VRfix
	;do Nothing!

	else 
	
		if Set
		cfgqst.PlayerRef.SetVehicle(VehiclePlayer)
		else 
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
		endif 
	endif 
	
EndFunction 
	
	
Function SetVehicleToActor(Actor ActorTemp, String sPosition, ObjectReference VehicleTemp, Actor ActorAnchor, ObjectReference VehicleAnchor, Float fDistance, Float fRotation)
	;Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference()
	;ObjectReference VehicleTemp = Vehicle_Victims0
	;ObjectReference VehicleAnchor = VehiclePlayer
	;Actor ActorTemp = Victims[0]
	;Actor ActorAnchor = cfgqst.PlayerRef
	;Float fDistance = 160.0 	
	;Float fRotation = 320.0
	;String sPosition = "FRONT RIGHT 45°"  
				
	if sPosition == "FRONT RIGHT 45°"	
	VehicleTemp.MoveTo(VehicleAnchor, fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+45.0), fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+45.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true)
	elseif sPosition == "FRONT LEFT 45°"
	VehicleTemp.MoveTo(VehicleAnchor, fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+315.0), fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+315.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true)
	elseif sPosition == "LEFT 90°"
	VehicleTemp.MoveTo(VehicleAnchor, -fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+90.0), -fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+90.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true)
	elseif sPosition == "RIGHT 90°"
	VehicleTemp.MoveTo(VehicleAnchor, fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+90.0), fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+90.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true) 
	elseif sPosition == "FRONT 90°"
	VehicleTemp.MoveTo(VehicleAnchor, fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+0.0), fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+0.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true) 
 	elseif sPosition == "BACK 90°"
	VehicleTemp.MoveTo(VehicleAnchor, -fDistance * Math.Sin(VehicleAnchor.GetAngleZ()+0.0), -fDistance * Math.Cos(VehicleAnchor.GetAngleZ()+0.0), ActorAnchor.GetHeight() - 125.0, abMatchRotation = true) 
	endif 	
	zOffset = VehicleTemp.GetHeadingAngle(ActorAnchor)
	VehicleTemp.SetAngle(VehicleTemp.GetAngleX(), VehicleTemp.GetAngleY(), VehicleTemp.GetAngleZ() + zOffset)
	cfgqst.RotateObject(VehicleTemp, fRotation)
	ActorTemp.MoveTo(VehicleTemp, abMatchRotation = true)
	TillTouchdown(ActorTemp)
	VehicleTemp.MoveTo(ActorTemp, ActorTemp.GetHeight() - 125.0, abMatchRotation = true)
EndFunction

	;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	

float PlayerAngleZ
float zOffset

;ObjectReference vehicle = none

ObjectReference xMarkerHeading_00 = none
ObjectReference xMarkerHeading_01 = none
ObjectReference xMarkerHeading_02 = none
ObjectReference xMarkerHeading_03 = none

;ObjectReference Vehicle_Victims0 = none
;ObjectReference Vehicle_Victims1 = none
ObjectReference vehicle_foll_03 = none

Bool AfterLifeStairsLocation = false


Function Vehicle(string Type = "none")		;#vehicle()
;DebugTrace("Vehicle()")
NymTrace("Vehicle: "+Type)

;VehicleAlreadySetup = true 
Bool NewVehiclePlacement = true
		
	storqst.PlayerPosingVehicle(false)	
		
	if Type == "SetupForSlavery"
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (SetupForSlavery)")
	;PLAYER X MARKER (FAst Setup For Slavery) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	VehiclePlayer = Alias_Vehicle.GetReference() 
	VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
	if Nym()
	;VehiclePlayer.MoveTo(VehiclePlayer, 0.0 * Math.Sin(VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(VehiclePlayer.GetAngleZ()), VehiclePlayer.GetHeight() +3.0, abMatchRotation = true)
	endif 
	
	
	;	if !cfgqst.VRfix
	;	cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
	;	endif
		
		PlayerSetVehicle(TRUE)
		
		if folqst.Actor_Follower01	;LEFT					
		SetVehicleToActor(folqst.Actor_Follower01, "FRONT LEFT 45°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 160.0, 45.0)	
		endif 	
		if folqst.Actor_Follower02	;RIGHT			
		SetVehicleToActor(folqst.Actor_Follower02, "FRONT RIGHT 45°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 160.0, 320.0)
		endif
	
		; --- WATCHERS SETUP --- ;
		
		if Nym()
		PlaceWatcherXMarkers() 
		else 
		PlaceWatchMarkers()
		endif 
		
	elseif Type == "Setup Early"
	
		VehiclePlayer = Alias_Vehicle.GetReference() 
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		VehiclePlayer.SetAngle(0.0, 0.0, cfgqst.PlayerRef.GetAngleZ())
		PlayerSetVehicle(True)
	
	elseif Type == "SetupForAfterlife"			;#Afterlife		
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (SetupForAfterlife)")
		Bool NewVehicle = true

		Afterlife_Table_Center = (Game.GetFormFromFile(0x00005B13, "Naked Defeat.esp") As objectreference)
		Afterlife_Table_Front = (Game.GetFormFromFile(0x00005B14, "Naked Defeat.esp") As objectreference)
		Afterlife_Table_Back = (Game.GetFormFromFile(0x00005B15, "Naked Defeat.esp") As objectreference)
		
		Afterlife_Stairs_Center = (Game.GetFormFromFile(0x00005B17, "Naked Defeat.esp") As objectreference) 
		Afterlife_Stairs_Right = (Game.GetFormFromFile(0x00005B18, "Naked Defeat.esp") As objectreference)
		Afterlife_Stairs_Left = (Game.GetFormFromFile(0x00005B16, "Naked Defeat.esp") As objectreference)
	
		;if Nym()
		if NewVehicle
			if D100(33) ;Random decision which setup
			AfterLifeStairsLocation = true
			VehiclePlayer = Afterlife_Stairs_Center
			Vehicle_Victims0 = Afterlife_Stairs_Right
			Vehicle_Victims1 = Afterlife_Stairs_Left 
			else 
			AfterLifeStairsLocation = false
			VehiclePlayer = Afterlife_Table_Center
			Vehicle_Victims0 = Afterlife_Table_Front
			Vehicle_Victims1 = Afterlife_Table_Back 		
			endif 

			cfgqst.PlayerRef.MoveTo(VehiclePlayer, abMatchRotation = true)
			TillTouchdown(cfgqst.PlayerRef)
		;	if !cfgqst.VRfix
		;	cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		;	endif
			PlayerSetVehicle(True)
		
		else 
			;/
			; --- PLAYER SETUP --- ; OLD
			VehiclePlayer = Alias_Vehicle.GetReference() 
			VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
			if !cfgqst.VRfix
			cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
			endif
			
			VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)	;set rotation to match the PC
			;VehiclePlayer.SetAngle(0.0, 0.0, 0.0)
			/;
			; --- WATCHERS SETUP --- ;
			
		endif 		
		
		if Nym()
		PlaceWatcherXMarkers() 
		else 
		PlaceWatchMarkers()
		endif 
		
		
		; --- FOLLOWER PACKAGE --- ;
		folidle01.StartFollowerIdleQuest_01("none")	
		if folqst.Actor_Follower01
		
		;Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference()
		folidle01.StartDoingNothing_01(true)
		folqst.Actor_Follower01.EvaluatePackage()
		endif
		if folqst.Actor_Follower02
		;Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference()
		folidle01.StartDoingNothing_02(true)
		folqst.Actor_Follower02.EvaluatePackage()
		endif 
		cfgqst.FollowersStripCompletely()		

		
		if NewVehicle
		
			if NewVehicle
			;if Nym()			
				if folqst.IsWithUs_Follower(0)		
				NymTrace("folqst.IsWithUs_Follower(0)for VEHICLE")
				;Vehicle_Victims0 = Afterlife_Stairs_Right
				folqst.Actor_Follower01.MoveTo(Vehicle_Victims0, abMatchRotation = true)
				TillTouchdown(folqst.Actor_Follower01)
				folqst.Actor_Follower01.SetVehicle(Vehicle_Victims0)	
				endif 
				
				if folqst.IsWithUs_Follower(1)
				NymTrace("folqst.IsWithUs_Follower(0)for VEHICLE")
				;Vehicle_Victims1 = Afterlife_Stairs_Left
				folqst.Actor_Follower02.MoveTo(Vehicle_Victims1, abMatchRotation = true)
				TillTouchdown(folqst.Actor_Follower02)
				folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)	
				endif 
				
			else		
			
			;/
			
				;MOVE TO LEFT AND RIGHT OF PLAYER		;TAHLIA 				
				if folqst.Actor_Follower01	;FRONT 			
				;SetVehicleToActor(folqst.Actor_Follower01, "LEFT 90°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 170.0, 0.0)	;was 180 facing LEFT	less is rotating -> LEFT
				SetVehicleToActor(folqst.Actor_Follower01, "FRONT 90°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 185.0, 180.0)	;was 0 facing LEFT	less is rotating -> LEFT
				endif 	
				if folqst.Actor_Follower02	;BACK		;LYDIA
				;SetVehicleToActor(folqst.Actor_Follower02, "RIGHT 90°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 170.0, 180.0)	;was 0, facing LEFT	less is rotating -> LEFT
				SetVehicleToActor(folqst.Actor_Follower02, "BACK 90°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 180.0, 0.0)	;was 180, facing LEFT	less is rotating -> LEFT
				endif
				/;
			endif 
		
			
		else ;OLD VEHICLE 
		;/
		;1 Follower moved to Spot (LEFT)
		folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, -160.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -160.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;MOVES to the LEFT 

		;2 Follower TO FACE PLAYER			
		zOffset = folqst.Actor_Follower02.GetHeadingAngle(cfgqst.PlayerRef)
		folqst.Actor_Follower02.SetAngle(folqst.Actor_Follower02.GetAngleX(), folqst.Actor_Follower02.GetAngleY(), folqst.Actor_Follower02.GetAngleZ() + zOffset)
		cfgqst.RotateObject(folqst.Actor_Follower02, 270)
			
		folqst.Actor_Follower02.MoveTo(folqst.Actor_Follower02, abMatchRotation = true)
		TillTouchdown(folqst.Actor_Follower02)
		;MOVE TO RIGHT
		folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, 160.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), 160.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) 
		;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
		zOffset = folqst.Actor_Follower01.GetHeadingAngle(cfgqst.PlayerRef)
		folqst.Actor_Follower01.SetAngle(folqst.Actor_Follower01.GetAngleX(), folqst.Actor_Follower01.GetAngleY(), folqst.Actor_Follower01.GetAngleZ() + zOffset)
		cfgqst.RotateObject(folqst.Actor_Follower01, 270)
		folqst.Actor_Follower01.MoveTo(folqst.Actor_Follower01, abMatchRotation = true)
		TillTouchdown(folqst.Actor_Follower01)
		/;
		endif 
	
	;#SS AUCTION with FOLLOWERS 		
	elseif Type == "SetupForAuction"			;#auction		
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (SetupForAuction)")			
		
		if folqst.IsWithUs_Follower(0) || folqst.IsWithUs_Follower(1)
		folidle01.StartFollowerIdleQuest_01("none")	
		cfgqst.FollowersStripCompletely()
		endif 
		
		if folqst.IsWithUs_Follower(0)
		NymTrace("folqst.IsWithUs_Follower(0)")
		folidle01.StartDoingNothing_01(true)
		folqst.Actor_Follower01.EvaluatePackage()
		endif
		
		if folqst.IsWithUs_Follower(1)
		NymTrace("folqst.IsWithUs_Follower(1)")
		folidle01.StartDoingNothing_02(true)
		folqst.Actor_Follower02.EvaluatePackage()
		endif 
		
					if folqst.IsWithUs_Follower(1)
					folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, -110.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -110.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;MOVES to the LEFT 
		
					zOffset = folqst.Actor_Follower02.GetHeadingAngle(cfgqst.PlayerRef)
					folqst.Actor_Follower02.SetAngle(folqst.Actor_Follower02.GetAngleX(), folqst.Actor_Follower02.GetAngleY(), folqst.Actor_Follower02.GetAngleZ() + zOffset)
					cfgqst.RotateObject(folqst.Actor_Follower02, 270)
				
					folqst.Actor_Follower02.MoveTo(folqst.Actor_Follower02, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower02)

					PlayPoseOnActor(folqst.Actor_Follower02, "FollowerAuction", false)
					endif

					if folqst.IsWithUs_Follower(0)
					folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -180.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -180.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) 
								
					zOffset = folqst.Actor_Follower01.GetHeadingAngle(cfgqst.PlayerRef)
					folqst.Actor_Follower01.SetAngle(folqst.Actor_Follower01.GetAngleX(), folqst.Actor_Follower01.GetAngleY(), folqst.Actor_Follower01.GetAngleZ() + zOffset)
				
					cfgqst.RotateObject(folqst.Actor_Follower01, 270)
					folqst.Actor_Follower01.MoveTo(folqst.Actor_Follower01, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower01)
				
					PlayPoseOnActor(folqst.Actor_Follower01, "FollowerAuction", false)
					endif
		
	elseif (Type == "setup")
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (setup)")
	;GUIDE: Places the XMarker Heading for the Player (Main Vehicle/Anchor) at the final resting position (from find spot etc.).
	;places the secondary XMarker Heading as Vehicles for the Followers and additional XMarkers surrounded all that for Fappers/Spectators. 
	
		;if (Type != "Restore") && (Type != "Remove")
		
		if Nym()
		VehiclePlayer = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		Vehicle_Victims0 = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		Vehicle_Victims1 = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked)
		else 
		Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference()
		Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference()
		VehiclePlayer = Alias_Vehicle.GetReference() 
		endif 
		;VehiclePlayer.SetAngle(0.0, 0.0, 0.0)
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		VehiclePlayer.SetAngle(0.0, 0.0, cfgqst.PlayerRef.GetAngleZ())
		if Nym()
		;experiment with HIGHER elevation for vehicle to prevent falling through floor... but... welll...
		;VehiclePlayer.MoveTo(VehiclePlayer, 0.0 * Math.Sin(VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(VehiclePlayer.GetAngleZ()), VehiclePlayer.GetHeight() +3.0, abMatchRotation = true)
		endif 
		
		float fFollowerDistance
		
		if Nym()
		fFollowerDistance = 120.0 ;add MCM setting
		else 
		fFollowerDistance = 160.0
		endif 
		
		PlayerSetVehicle(True)
		
		if folqst.Actor_Follower01	;LEFT					
		SetVehicleToActor(folqst.Actor_Follower01, "FRONT LEFT 45°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, fFollowerDistance, 45.0)	
		endif 	
		if folqst.Actor_Follower02	;RIGHT			
		SetVehicleToActor(folqst.Actor_Follower02, "FRONT RIGHT 45°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, fFollowerDistance, 320.0)
		endif	
		
		; --- WATCHERS SETUP --- ;
		if Nym()
		PlaceWatcherXMarkers() 
		else 
		PlaceWatchMarkers()
		endif 
					
	elseif Type == "setupOLD"
	
	;/
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (setup)")
		;PLAYER X MARKER (MAIN) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		VehiclePlayer = Alias_Vehicle.GetReference() 
		
		if VehiclePlayer
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		;VehiclePlayer.SetAngle(0.0, 0.0, 0.0)	;reset rotation to have correct alignment of Surround Markers <<<<<<------ THIS WAS THE PROBLEM!!! 
		else
		NymTrace("#ERROR - Vehicle is NONE")
		endif 
		
	;	if !cfgqst.VRfix
	;	cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
	;	endif
		PlayerSetVehicle(True)
		
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)	;set rotation to match the PC

/;

	;PLAYER SURROUND X MARKER HEADING >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

		if NewVehiclePlacement
		
		;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX    X MARKERS    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		
		;XMARKER 00 
		xMarkerHeading_00 = Alias_XMarkerHeading_00.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_00.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_00.GetHeadingAngle(cfgqst.PlayerRef)
		xMarkerHeading_00.SetAngle(xMarkerHeading_00.GetAngleX(), xMarkerHeading_00.GetAngleY(), xMarkerHeading_00.GetAngleZ() + zOffset)
			
		;XMARKER 01 
		xMarkerHeading_01 = Alias_XMarkerHeading_01.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_01.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_01.GetHeadingAngle(cfgqst.PlayerRef)
		xMarkerHeading_01.SetAngle(xMarkerHeading_01.GetAngleX(), xMarkerHeading_01.GetAngleY(), xMarkerHeading_01.GetAngleZ() + zOffset)
		
		;XMARKER 02
		xMarkerHeading_02 = Alias_XMarkerHeading_02.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_02.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_02.GetHeadingAngle(cfgqst.PlayerRef)
		xMarkerHeading_02.SetAngle(xMarkerHeading_02.GetAngleX(), xMarkerHeading_02.GetAngleY(), xMarkerHeading_02.GetAngleZ() + zOffset)
		
		;XMARKER 03
		xMarkerHeading_03 = Alias_XMarkerHeading_03.GetReference()
		; ---- Place Relative to Player --------------------------------
		xMarkerHeading_03.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+135.0), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+135.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		; ---- Face Player --------------------------------------------
		zOffset = xMarkerHeading_03.GetHeadingAngle(cfgqst.PlayerRef)
		xMarkerHeading_03.SetAngle(xMarkerHeading_03.GetAngleX(), xMarkerHeading_03.GetAngleY(), xMarkerHeading_03.GetAngleZ() + zOffset)

		else 
	
		xMarkerHeading_00 = Alias_XMarkerHeading_00.GetReference()
		xMarkerHeading_00.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		xMarkerHeading_00.SetAngle(0.0, 0.0, 180.0)

		xMarkerHeading_01 = Alias_XMarkerHeading_01.GetReference()
		xMarkerHeading_01.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		xMarkerHeading_01.SetAngle(0.0, 0.0, 0.0)

		xMarkerHeading_02 = Alias_XMarkerHeading_02.GetReference()
		xMarkerHeading_02.MoveTo(VehiclePlayer, 75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+90), 75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+90), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		xMarkerHeading_02.SetAngle(0.0, 0.0, 270.0)

		xMarkerHeading_03 = Alias_XMarkerHeading_03.GetReference()
		xMarkerHeading_03.MoveTo(VehiclePlayer, -75.0 * Math.Sin(VehiclePlayer.GetAngleZ()+90), -75.0 * Math.Cos(VehiclePlayer.GetAngleZ()+90), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
		xMarkerHeading_03.SetAngle(0.0, 0.0, 90.0)
		
		endif
		
		;VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)	;set rotation to match the PC
	

	
	;FOLLOWER MARKERS HEADING >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
		if VictimCount > 0
		;RIGHT SPOT 	
		;	vehicle.SetAngle(0.0, 0.0, 90.0)
			;FOLLOWER 01:
			Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference() 	;#TODO clean vehicle integration Alias
			;!!!!!!!!!! WHYS WAS THIS VEHICLE FOLLOWER 03???? >---- bullshit... tidy this up for more follwoers... 
			;OLD VERSION (move in Front): Vehicle_Victims0.MoveTo(vehicle, 200.0 * Math.Sin(vehicle.GetAngleZ()), 200.0 * Math.Cos(vehicle.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)

			if NewVehiclePlacement
			;PLACE VEHICLE relative to PC
			Vehicle_Victims0.MoveTo(VehiclePlayer, 160.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), 160.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
			;should now have same angle as the PC, so we rotate 180°?
			
			;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------
			zOffset = Vehicle_Victims0.GetHeadingAngle(cfgqst.PlayerRef)
			Vehicle_Victims0.SetAngle(Vehicle_Victims0.GetAngleX(), Vehicle_Victims0.GetAngleY(), Vehicle_Victims0.GetAngleZ() + zOffset)
			cfgqst.RotateObject(Vehicle_Victims0, 320)
			;this did not work so well - but untested
			;Vehicle_Victims0.SetAngle(0.0, 0.0, 280.0)
			;Vehicle_Victims0.SetAngle(0.0, 0.0, 320.0)
			;Move Victim To Vehicle 
			Victims[0].MoveTo(Vehicle_Victims0, abMatchRotation = true)
			TillTouchdown(Victims[0])
			
			;Replace Vehicle to Victim 
			Vehicle_Victims0.MoveTo(Victims[0], Victims[0].GetHeight() - 125.0, abMatchRotation = true)

			else
			
			
			Vehicle_Victims0.MoveTo(VehiclePlayer, 200.0 * Math.Sin(VehiclePlayer.GetAngleZ()+45.0), 200.0 * Math.Cos(VehiclePlayer.GetAngleZ()+45.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
			;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------
			zOffset = Vehicle_Victims0.GetHeadingAngle(cfgqst.PlayerRef)
			Vehicle_Victims0.SetAngle(Vehicle_Victims0.GetAngleX(), Vehicle_Victims0.GetAngleY(), Vehicle_Victims0.GetAngleZ() + zOffset)
			;VEHICLE HEIGHT TO MATCH VICTIM -------------------------------------------
			Victims[0].MoveTo(Vehicle_Victims0, abMatchRotation = true)
			TillTouchdown(Victims[0])
			Vehicle_Victims0.MoveTo(Victims[0], Victims[0].GetHeight() - 125.0, abMatchRotation = true)
			endif
			;---------------------------------------------------------------------------------------------------
			

				if Victimcount > 1
				;LEFT SPOT 
				;FOLLOWER 02: 	
				Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference() 
				Utility.Wait(0.5)
				;OLD VERSION: Vehicle_Victims1.MoveTo(Vehicle_Victims0, -200.0 * Math.Sin(Vehicle_Victims0.GetAngleZ()+90), -200.0 * Math.Cos(Vehicle_Victims0.GetAngleZ())+90, cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
					if NewVehiclePlacement ;move closer....
					Vehicle_Victims1.MoveTo(VehiclePlayer, 160.0 * Math.Sin(VehiclePlayer.GetAngleZ()+315.0), 160.0 * Math.Cos(VehiclePlayer.GetAngleZ()+315.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
					;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
					zOffset = Vehicle_Victims1.GetHeadingAngle(cfgqst.PlayerRef)
					Vehicle_Victims1.SetAngle(Vehicle_Victims1.GetAngleX(), Vehicle_Victims1.GetAngleY(), Vehicle_Victims1.GetAngleZ() + zOffset)
					cfgqst.RotateObject(Vehicle_Victims1, 45)
					;Vehicle_Victims0.SetAngle(0.0, 0.0, 45.0)
					;Vehicle_Victims0.SetAngle(0.0, 0.0, 180.0) <<---- no rotation could do it (lol)
					Victims[1].MoveTo(Vehicle_Victims1, abMatchRotation = true)
					TillTouchdown(Victims[1])
					Vehicle_Victims1.MoveTo(Victims[1], Victims[1].GetHeight() - 125.0, abMatchRotation = true)
					else
					
					Vehicle_Victims1.MoveTo(VehiclePlayer, 200.0 * Math.Sin(VehiclePlayer.GetAngleZ()+315.0), 200.0 * Math.Cos(VehiclePlayer.GetAngleZ()+315.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)			
					;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
					zOffset = Vehicle_Victims1.GetHeadingAngle(cfgqst.PlayerRef)
					Vehicle_Victims1.SetAngle(Vehicle_Victims1.GetAngleX(), Vehicle_Victims1.GetAngleY(), Vehicle_Victims1.GetAngleZ() + zOffset)
					;---------------------------------------------------------------------------------------------------

					;Move Victim to Vehicle & adjust Vehicle Height to Victim-------------------------------------------
					Victims[1].MoveTo(Vehicle_Victims1, abMatchRotation = true)
					TillTouchdown(Victims[1])
					Vehicle_Victims1.MoveTo(Victims[1], Victims[1].GetHeight() - 125.0, abMatchRotation = true)
					;---------------------------------------------------------------------------------------------------
				endif
			endif
		endif
		
;/
	;OLD VEHICLE SETUP
	;FOLLOWER 01:
	Vehicle_Victims0 = Alias_Vehicle_Follower_01.GetReference() 
	Vehicle_Victims0.MoveTo(cfgqst.PlayerRef, 95.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90), 95.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ())+90, cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
	Vehicle_Victims0.SetAngle(0.0, 0.0, 180.0)
	;FOLLOWER 02:
	Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference() 
	Vehicle_Victims1.MoveTo(cfgqst.PlayerRef, -95.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90), 95.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ())+90, cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true)
	Vehicle_Victims1.SetAngle(0.0, 0.0, 180.0)
/;
	


	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (restored)")
		
		if !VehiclePlayer
		NymBox("#ERROR NO VEHICLE")
		endif 
		
		float VehicleDistance
		
		VehicleDistance = cfgqst.PlayerRef.GetDistance(VehiclePlayer)
	
		NymTrace("VehicleDistance: "+VehicleDistance as int)
		
		cfgqst.PlayerRef.MoveTo(VehiclePlayer)								
		
		float cZ = 0.0
		float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
		While(cZ != cfgqst.PlayerRef.Z) && (second < 2.0)
		cZ = cfgqst.PlayerRef.Z
		Utility.Wait(0.1)
		second += 0.1
		EndWhile
	
	;	if !cfgqst.VRfix
	;	cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Set Vehicle AfterSexA (ON)")
	;	endif
		
		PlayerSetVehicle(True)
	
	elseif Type == "remove"
		
	;	cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)	
		PlayerSetVehicle(False)
		
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle (removed)")
		
		if VehiclePlayer
		VehiclePlayer.DisableNoWait()
		VehiclePlayer.Delete()	
		VehiclePlayer = None		
		Alias_Vehicle.Clear() 
		endif 
		
		if Vehicle_Victims0
		Vehicle_Victims0.DisableNoWait()
		Vehicle_Victims0.Delete()	
		Vehicle_Victims0 = none	
		Alias_Vehicle_Follower_03.Clear() 	;#TODO clean vehicle integration Alias
		endif 
		
		if Vehicle_Victims1
		Vehicle_Victims1.DisableNoWait()
		Vehicle_Victims1.Delete()	
		Vehicle_Victims1 = none			
		Alias_Vehicle_Follower_02.Clear() 		
		endif 
		
		if xMarkerHeading_00
		xMarkerHeading_00.DisableNoWait()
		xMarkerHeading_00.Delete()										
		endif 
		Alias_XMarkerHeading_00.Clear() 
		
		if xMarkerHeading_01
		xMarkerHeading_01.DisableNoWait()
		xMarkerHeading_01.Delete()										
		endif 
		Alias_XMarkerHeading_01.Clear() 
		
		if xMarkerHeading_02
		xMarkerHeading_02.DisableNoWait()
		xMarkerHeading_02.Delete()	
		endif 
		Alias_XMarkerHeading_02.Clear() 
		
		if xMarkerHeading_03
		xMarkerHeading_03.DisableNoWait()
		xMarkerHeading_03.Delete()	
		endif		
		Alias_XMarkerHeading_03.Clear() 

		if Nym() ;#XMARKERS3
			int iMarkers = 24
			int iDeleted = 0
			while iMarkers > 0
				iMarkers -= 1
				iDeleted += 1
				if storqst.WatcherXMarkers[iMarkers]
				storqst.WatcherXMarkers[iMarkers].DisableNoWait()
				storqst.WatcherXMarkers[iMarkers].Delete()	
				storqst.WatcherXMarkers[iMarkers] = none
				endif 
			endwhile 
			
			
			NymTrace("Markers Deleted: "+iDeleted)
		endif 
	
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function TillTouchdown(actor akactor)	;#TillTouchdown
	
		float cZ = 0.0	
		float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
		While(cZ != akactor.Z) && (second < 2.0)
		cZ = akactor.Z
		Utility.Wait(0.1)
		second += 0.1
		EndWhile
EndFunction	


Function Vehicle_Follower_01(string Type = "none")			;#Vehicle_Follower_01
	
	;rewrite for VICTIMS 
	
	if Type == "setup"
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle_Victims0 (setup)")

		;--- move to vehicle ---

		if folqst.IsWithus_Follower(0)
		folqst.NakedFollower[0].MoveTo(Vehicle_Victims0)
		folqst.NakedFollower[0].SetVehicle(Vehicle_Victims0)
		endif		 

	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle_Victims0 (restored)")
		;--- restore to vehicle ---
		if folqst.IsWithus_Follower(0)
		folqst.NakedFollower[0].MoveTo(Vehicle_Victims0)	
		folqst.NakedFollower[0].EvaluatePackage()	
		folqst.NakedFollower[0].SetVehicle(Vehicle_Victims0)
		endif 
		
	elseif Type == "remove"
		
		if folqst.IsWithus_Follower(0)
		folqst.NakedFollower[0].SetVehicle(folqst.NakedFollower[0])			
		Vehicle_Victims0.DisableNoWait()
		Vehicle_Victims0.Delete()										
		Alias_Vehicle_Follower_01.Clear() 
		endif
	endif

EndFunction

Function Vehicle_Follower_02(string Type = "none")		

	if Type == "setup"
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle_Victims1 (setup)")

		if folqst.IsWithus_Follower(1)
		folqst.NakedFollower[1].MoveTo(Vehicle_Victims1)
		folqst.NakedFollower[1].SetVehicle(Vehicle_Victims1)
		endif	

	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Vehicle_Victims1 (restored)")
		;--- restore to vehicle ---
		
		if folqst.IsWithus_Follower(1)
		folqst.NakedFollower[1].MoveTo(Vehicle_Victims1)
		folqst.NakedFollower[1].EvaluatePackage()
		folqst.NakedFollower[1].SetVehicle(Vehicle_Victims1)
		endif 
	elseif Type == "remove"
		
		if folqst.IsWithus_Follower(1)
		folqst.NakedFollower[1].SetVehicle(folqst.NakedFollower[1])			
		Vehicle_Victims1.DisableNoWait()
		Vehicle_Victims1.Delete()										
		Alias_Vehicle_Follower_02.Clear()
		endif
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

				
Bool Function IsFollower(Actor akactor)		;#IsFollower

Actor aToCheck = akactor

;if !SexLab.GetGender(aToCheck) == 1 || !SexLab.GetGender(aToCheck) == 2	;is not male or female
;return false
if aToCheck.IsInFaction(CurrentFollowerFaction)	;this is the faction A the ESP scans for in followerquest
return true
elseif aToCheck.IsInFaction(PlayerFollowerFaction) ;this is the faction B the ESP scans for in followerquest
return true
elseif aToCheck.IsInFaction(cfgqst.NadeFollower01Faction) ;this is the faction B the ESP scans for in followerquest
return true
;elseif aToCheck.GetBaseObject().GetName() == "Sofia" ;custom name tags from MCM (5 should be enough?)
;return true
else
return false
endif

EndFunction

Bool Function AllowScenarios()

	;compare humans group count with creaturegroup count
	int humangroups = 0
	int creaturegroups = 0
	if (RapersACount > 0) 
	humangroups += 1
	endIf
	
	if (RapersBCount > 0) 
	humangroups += 1
	endIf
	
	if (RapersCCount > 0) 
	humangroups += 1
	endIf	

	if (CreaturesACount > 0) 
	creaturegroups += 1
	endIf
	
	if (CreaturesBCount > 0) 
	creaturegroups += 1
	endIf
	
	if (CreaturesCCount > 0) 
	creaturegroups += 1
	endIf	
	
	if (CreaturesDCount > 0) 
	creaturegroups += 1
	endIf
	
	if (CreaturesECount > 0) 
	creaturegroups += 1
	endIf
	
	if (CreaturesFCount > 0) 
	creaturegroups += 1
	endIf	
	
	if humangroups > creaturegroups
	return true
	else
	return false	
	endif	
	
EndFunction


;THIS IS NOT WORKING BECAUSE HUMANS HAVE NO RACEKEY!!!
Bool Function PreCheckActor(actor akActor)		;#check	

Actor a = akActor as Actor
string RaceKey = GetRaceKey(a)
; if Racenot NOT Humans && gender is NOT creatures
if (RaceKey != ("Humans")) && (SexLab.GetGender(a) < 2)
return true
else
return false
endif

EndFunction
;THIS IS NOT WORKING BECAUSE HUMANS HAVE NO RACEKEY!!!



bool note = false


;----------------------------------------------------------------------------------------------------------------------------------------------------

bool ShortDefeat = false

;/
Bool Function AllowActor(actor akActor, int Type)		;is run in SortActors (quite early)		;MOVED TO CONFIGQUEST

Actor a = akActor as Actor
string RaceKey = GetRaceKey(a)


;if Sexlab.IsValidActor(a)

	;GUIDE: spawned actors are always allowed.
	if a.IsInFaction(NakedGhostFaction)
	return true
	endif
	
	;HUMANS
	if Type == 1 
	
		if (a == Victims[0]) || (a == Victims[1]) || (a == Victims[2]) || (a == Victims[3]) ;|| (a == Victims[4])
		return false
		endif
	
;	if cfgqst.ShowDebugmessages
		if RaceKey
		Debug.Notification("NAKED DEFEAT: #ERROR Actor invalid (ask for support): has racekey: "+RaceKey)
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR Actor invalid (ask for support): has racekey: "+RaceKey)
		return false
		endif
		
		;rules out Followers (not allowed as rapers) -> solve special scenarios differently -> follower rapes PC and vice versa #todo
		if (cfgqst.FollowerCount > 0) && IsFollower(a)
		return false
		endif

		if (cfgqst.DefeatTypeGeneral == "AreHumans") || cfgqst.DefeatType == ("Humans") || cfgqst.DefeatType == ("Funny")
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Human Actor allowed")
		;	if RaceKey == ("Humans")		
				;check for argonians & Khajiits and sort out if necessary
				if cfgqst.IsBeastRace(a)
					if cfgqst.AllowArgonKajit 
						if Sexlab.IsValidActor(a)
						return true
						else
						return false
						endif
					else
					return false
					endif
				else
					if Sexlab.IsValidActor(a)
					return true
					else
					return false
					endif
				endif
		;	else
		;	return false
		;	endif
		elseif cfgqst.DefeatType == ("Undead")
		Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Human Actor allowed (Undead)")
		;	if RaceKey == ("Humans")		;need to check for vampire/necromancer, how? #todo
				;check for argonians & Khajiits and sort out if necessary
			if cfgqst.IsVampire(a) || cfgqst.IsNecromancer(a)		
				if cfgqst.IsBeastRace(a)
					if cfgqst.AllowArgonKajit 
						if Sexlab.IsValidActor(a)
						return true
						else
						return false
						endif
					else
					return false
					endif
				else
					if Sexlab.IsValidActor(a)
					return true
					else
					return false
					endif
				endif
			else
			return false
			endif
		;	else
		;	return false
		;	endif	
		else
			return false
		endif

	;CREATURES
	elseif Type == 2

		if Sexlab.IsValidActor(a)
			;checks if Creature is from Mod Demonic Creatures and always allows them (for now)
			if cfgqst.ModDEM && a.GetActorBase().HasKeyword(DemonicCreature)
			Debug.Notification("NAKED DEFEAT: Demonic Creature Found: "+RaceKey)
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #Demonic Creature Found: "+RaceKey)
			return true
			endif
		
			;HUMAN creatures
			if cfgqst.DefeatType == ("Humans") || (cfgqst.DefeatTypeGeneral == "AreHumans")

				if ((RaceKey == ("Dogs")) || (RaceKey == ("Canines"))) && cfgqst.AllowCanines 
				return true
				elseif RaceKey == ("Gargoyles") && cfgqst.AllowHumanoidBeasts
				return true
				elseif RaceKey == ("Draugr") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("WispMothers") && cfgqst.AllowElementalsFemale
				return true
				elseif RaceKey == ("Wisps") && cfgqst.AllowElementalsMale
				return true
				elseif RaceKey == ("VampireLords") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("DragonPriests") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("Horses") && cfgqst.AllowHorses
				return true
				elseif RaceKey == ("Goats") && cfgqst.AllowGoats
				return true
				elseif RaceKey == ("Skeevers") && cfgqst.AllowSkeevers
				return true
				elseif RaceKey == ("Cows") && cfgqst.AllowCows
				return true
				elseif RaceKey == ("StormAtronach") && cfgqst.AllowElementalsMale
				return true
				elseif RaceKey == ("FrostAtronach")	&& cfgqst.AllowElementalsMale
				return true
				elseif RaceKey == ("FlameAtronach")	&& cfgqst.AllowElementalsFemale
				return true
				elseif RaceKey == ("Humans")		
				return false
				elseif RaceKey == ("Netches") && cfgqst.AllowTentacleStuff
				return false
				elseif RaceKey == ("Seekers") && cfgqst.AllowTentacleStuff
				return false
				
				
				elseif RaceKey == ("Trolls") && cfgqst.AllowHumanoidBeasts
					if (a.GetBaseObject().GetName() == "Armored Troll") || (a.GetBaseObject().GetName() == "Armored Frost Troll") || (a.GetBaseObject().GetName() == "Tame Troll") || (a.GetBaseObject().GetName() == "Tame Frost Troll")
					return true
					else
					return false
					endif
				else
				return false
				endif
					
			;TROLLS
			elseif cfgqst.DefeatType == ("Trolls")

				if RaceKey == ("Trolls") && cfgqst.AllowHumanoidBeasts
				return true
				else
				return false
				endif
				
			;WOLVES			
			elseif cfgqst.DefeatType == ("Wolves")

				if RaceKey == ("Wolves") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Werewolves") && cfgqst.AllowHumanoidBeasts
				return true
				elseif RaceKey == ("Canines") && cfgqst.AllowCanines
				return true
				else
				return false
				endif	
				
			;UNDEAD				
			elseif cfgqst.DefeatType == ("Undead")
				;add vampires and necromancers somehow?
				if RaceKey == ("Draugrs") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("WispMothers") && cfgqst.AllowElementalsFemale
				return true
				elseif RaceKey == ("Wisps") && cfgqst.AllowElementalsMale
				return true
				elseif RaceKey == ("VampireLords") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("DragonPriests") && cfgqst.AllowUndead
				return true
				elseif RaceKey == ("Humans")
				return false
				elseif RaceKey == ("Skeevers") && cfgqst.AllowSkeevers
				return true
				elseif RaceKey == ("Ashhoppers") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("StormAtronach") && cfgqst.AllowElementalsMale	
				return true
				elseif RaceKey == ("FrostAtronach") && cfgqst.AllowElementalsMale	
				return true
				elseif RaceKey == ("FlameAtronach") && cfgqst.AllowElementalsFemale	
				return true
				elseif RaceKey == ("Canines") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Dogs") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Wolves") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Netches") && cfgqst.AllowTentacleStuff
				return false
				elseif RaceKey == ("Seekers") && cfgqst.AllowTentacleStuff
				return false
				else
				return false
				endif
				
			;FALMERS
			elseif cfgqst.DefeatType == ("Falmers")

				if RaceKey == ("Falmers") && cfgqst.AllowFalmers
				return true
				elseif RaceKey == ("Chaurus") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("ChaurusHunters") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("Chaurus") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("Netches") && cfgqst.AllowTentacleStuff
				return true
				elseif RaceKey == ("Seekers") && cfgqst.AllowTentacleStuff
				return true
				else
				return false
				endif
				
			;CHAURUS
			elseif cfgqst.DefeatType == ("Chaurus")

				if RaceKey == ("Falmers") && cfgqst.AllowFalmers
				return true
				elseif RaceKey == ("Chaurus") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("ChaurusHunters") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("Chaurus") && cfgqst.AllowInsects
				return true
				elseif RaceKey == ("Netches") && cfgqst.AllowTentacleStuff
				return true
				elseif RaceKey == ("Seekers") && cfgqst.AllowTentacleStuff
				return true
				else
				return false
				endif	
			
			;HUMAN ANIMALS
		;	elseif cfgqst.DefeatType == ("XXXX")
		;		;Disable RapersA, RapersB, RapersC		;add vampires and necromancers somehow?
		;		if ((RaceKey == ("Dogs")) || (RaceKey == ("Canines"))) && cfgqst.AllowCanines
		;		return true
		;		elseif RaceKey == ("Horses") && cfgqst.AllowHorses
		;		return true
		;		elseif RaceKey == ("Goats") && cfgqst.AllowGoats
		;		return true
		;		elseif RaceKey == ("Cows") && cfgqst.AllowCows
		;		return true
		;		else
		;		return false
		;		endif
			
			
			
			;SKEEVERS
			elseif cfgqst.DefeatType == ("Skeevers")

				if RaceKey == ("Skeevers") && cfgqst.AllowSkeevers
				return true
				else
				return false
				endif

			;SPIDERS
			elseif cfgqst.DefeatType == ("Spiders")

				if RaceKey == ("Spiders") && cfgqst.AllowSpiders
				return true
				elseif RaceKey == ("LargeSpiders") && cfgqst.AllowSpiders
				return true
				elseif RaceKey == ("GiantSpiders") && cfgqst.AllowSpiders
				return true
				else
				return false
				endif	
			
			;SABRECATS		
			elseif cfgqst.DefeatType == ("SabreCats")

				if RaceKey == ("SabreCats") && cfgqst.AllowSabrecats
				return true
				else
				return false
				endif
				
			;BEARS			
			elseif cfgqst.DefeatType == ("Bears")
				
				if RaceKey == ("Bears") && cfgqst.AllowBears
				return true
				else
				return false
				endif
				
			;GIANTS		
			elseif cfgqst.DefeatType == ("Giants")

				if RaceKey == ("Giants") && cfgqst.AllowHumanoidBeasts
				return true
				elseif RaceKey == ("Mammoths") && cfgqst.AllowMammoths
				return true
				else
				return false
				endif
			
			;DWARVEN
			elseif cfgqst.DefeatType == ("Dwemer")

				if RaceKey == ("DwarvenBallistas") && cfgqst.AllowDwarven
				return true
				elseif RaceKey == ("DwarvenCenturions") && cfgqst.AllowDwarven
				return true
				elseif RaceKey == ("DwarvenSpheres") && cfgqst.AllowDwarven
				return true
				elseif RaceKey == ("DwarvenSpiders") && cfgqst.AllowDwarven
				return true
				else
				return false
				endif
			
			;RIEKLINGS  	 
			elseif cfgqst.DefeatType == ("Rieklings")

				if RaceKey == ("Rieklings") && cfgqst.AllowRieklings
				return true
				elseif RaceKey == ("Boars") && cfgqst.AllowRieklings
				return true
				elseif RaceKey == ("BoarsAny") && cfgqst.AllowRieklings
				return true
				elseif RaceKey == ("BoarsMounted") && cfgqst.AllowRieklings
				return true
				else
				return false
				endif
				
			;WEREWOLVES
			elseif cfgqst.DefeatType == ("Werewolves")

				if RaceKey == ("Werewolves") && cfgqst.AllowHumanoidBeasts
				return true
				elseif RaceKey == ("Canines") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Wolves") && cfgqst.AllowCanines
				return true
				else
				return false
				endif	
				
			;SPRIGGANS
			elseif cfgqst.DefeatType == ("Spriggans")

				if RaceKey == ("Spriggans") && cfgqst.AllowSpriggans
				return true
				elseif RaceKey == ("Canines") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Wolves") && cfgqst.AllowCanines
				return true
				elseif RaceKey == ("Deers") && cfgqst.AllowDeers
				return true
				elseif RaceKey == ("Foxes") && cfgqst.AllowFoxes
				return true
				elseif RaceKey == ("Rabbits") && cfgqst.AllowRabbits
				return true
				elseif RaceKey == ("Bears") && cfgqst.AllowBears
				return true
				elseif RaceKey == ("Sabrecats") && cfgqst.AllowSabrecats
				return true
				else
				return false
				endif	
				
			;GHOSTS
			elseif cfgqst.DefeatType == ("Ghosts")

				if RaceKey == ("IceWraiths") && cfgqst.AllowElementalsMale
				return true	
				elseif RaceKey == ("StormAtronach") && cfgqst.AllowElementalsMale		;Atronachs... further checks?
				return true	
				elseif RaceKey == ("FrostAtronach") && cfgqst.AllowElementalsMale		;Atronachs... further checks?
				return true
				elseif RaceKey == ("FlameAtronach")	&& cfgqst.AllowElementalsFemale		;Atronachs... further checks?
				return true
				elseif RaceKey == ("WispMothers") && cfgqst.AllowElementalsFemale	
				return true
				elseif RaceKey == ("Wisps")	&& cfgqst.AllowElementalsMale
				return true
				elseif RaceKey == ("Netches") && cfgqst.AllowTentacleStuff
				return false
				elseif RaceKey == ("Seekers") && cfgqst.AllowTentacleStuff
				return false
				else
				return false
				endif	
				
			;ANIMALS (fallback) --- WIP --- requires change of actor selection in ESP first
			elseif (cfgqst.DefeatType == "funny") && (cfgqst.DefeatTypeGeneral == "AreAnimals")
				if !note
				note = true
				Debug.Notification("#NOTE: No last Attacker identified: All the creaturs fuck you now!")
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #NOTE: No last Attacker identified: All the creaturs fuck you now!")
				endif
			ShortDefeat = true
			return true

			elseif (cfgqst.DefeatType == "funny") 
				if !note
				note = true
				Debug.Notification("#NOTE: No last Attacker identified: You are fucked by everybody!")
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #NOTE: no enemy identified, you are fucked by everybody now!")
				endif
			ShortDefeat = true
			return true
			
			else
				Debug.Notification("#ERROR: No DefeatType!")
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: #ERROR: No DefeatType!")
			endif
		endif	
	endif	
		;#TODO ASHHOPPERS DEFEAT?

;else ;CreaturesNotAllowed
;return false 	
;endif	
EndFunction
/;

;-----------------------------------------------------------------------------------------------------------------------------------------

Bool Function DoubleCheckRaceKey(string GroupKey)
	
	if GroupKey == "Rabbits"
	return cfgqst.AllowRabbits
	elseif GroupKey == "Horkers" 
	return cfgqst.AllowHorkers
	elseif GroupKey == "Skeevers" 
	return cfgqst.AllowSkeevers

	elseif GroupKey == "Chickens"  
	return cfgqst.AllowChicken
		
	elseif GroupKey == "Sabrecats"  
	return cfgqst.AllowSabreCats
	elseif GroupKey == "Bears" 
	return cfgqst.AllowBears
	elseif GroupKey == "Horses" 
	return cfgqst.AllowHorses
	elseif GroupKey == "Cows" 
	return cfgqst.AllowCows
	elseif GroupKey == "Goats" 
	return cfgqst.AllowGoats
	elseif GroupKey == "Foxes" 
	return cfgqst.AllowFoxes
	
	elseif GroupKey == "Deers" 
	return cfgqst.AllowDeers
	
	elseif GroupKey == "Falmers" 
	return cfgqst.AllowFalmers
	
	elseif GroupKey == "Mammoths" 
	return cfgqst.AllowMammoths
	
	elseif (GroupKey == "Canines") || (GroupKey == "Dogs") || (GroupKey == "Wolves") ;done
	return cfgqst.AllowCanines
	
	elseif (GroupKey == "DwarvenBallistas") || (GroupKey == "DwarvenCenturions") || (GroupKey == "DwarvenSpheres") || (GroupKey == "DwarvenSpiders") ;DONE 
	return cfgqst.AllowDwarven
	

	elseif (GroupKey == "Giants") || (GroupKey == "Trolls") || (GroupKey == "Lurkers") || (GroupKey == "Werewolves")  ;done
	return cfgqst.AllowHumanoidBeasts	
	
	elseif (GroupKey == "Spiders") || (GroupKey == "LargeSpiders") || (GroupKey == "GiantSpiders") ;done
	return cfgqst.AllowSpiders		
		
	elseif (GroupKey == "Chaurus") || (GroupKey == "ChaurusHunters") || (GroupKey == "ChaurusReapers") ;done 
	return cfgqst.AllowInsects		
		
		
		
	else 
	NymTrace("#ERROR GroupKey "+GroupKey+" not found!!!")
	return false 
	endif 
	;/
	  SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowArgonKajit", AllowArgonKajit as int) 
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowHumanoidBeasts", AllowHumanoidBeasts as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowInsects", AllowInsects as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowSkeevers", AllowSkeevers as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowSpiders", AllowSpiders as int)	
		
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowSabreCats", AllowSabreCats as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowBears", AllowBears as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowCanines", AllowCanines as int)
	;	SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowMammoths", AllowMammoths as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowDragons", AllowDragons as int)
		
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowNetches", AllowNetches as int) 
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowDwarven", AllowDwarven as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowUndead", AllowUndead as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowRieklings", AllowRieklings as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowFalmers", AllowFalmers as int)	
		
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowSpriggans", AllowSpriggans as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowElementalsFemale", AllowElementalsFemale as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowElementalsMale", AllowElementalsMale as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowTentacleStuff", AllowTentacleStuff as int)
		SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowChicken", AllowChicken as int)
		
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowHorses", AllowHorses as int) 
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowCows", AllowCows as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowGoats", AllowGoats as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowDeers", AllowDeers as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowFoxes", AllowFoxes as int)	
		
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowRabbits", AllowRabbits as int)
		;SetINTValue("../Naked Defeat/profile" +Profile+ ".json", "AllowHorkers", AllowHorkers as int)
/;

EndFunction 


Function ResetValues()			;#reset
	NymTrace("ResetValues()")
	;::::::::::::::::::: FOLLOWERCLEANUP ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: 

	OldPoseVictims0 = 404
	OldPoseVictims1 = 404
	OldPosePlayer = 404
	OldTypeVictims0 = "empty"
	OldTypeVictims1 = "empty"
	OldTypePlayer = "empty"

	cfgqst.PlayerRef.ClearExpressionOverride()	;#phonemebaustelle
	defqst.ResetModifier_FACE(cfgqst.PlayerRef, 0.1)
	
;	MfgConsoleFunc.ResetPhonemeModifier(cfgqst.PlayerRef)

	cfgqst.ShortPunishment = 0

	cfgqst.PublicExposure = 0
	
	cfgqst.IsMouthAvailable = 1
	
	NoActorsAbort = false
	HairChangedOnce = false
	IsGuardEndDefeat = false
	OnlyAnimals = false
	
	 noTrolls = false	
	 noAnimals = false	
	 noGhosts = false	
	 noGuards = false	
	 isSlave = false	
	 noSlavery = false
	; noRobbery = false	
	 noCaptivity = false
	 
	 NeedRapersForSlavery = false
	NeedCreaturesForSlavery = false

	;ShortDefeat = false ;OLD
	
	Rescued = false	

	UnRegisterForUpdate()
	UnRegisterForModEvent("Bis_BatheEvent")						;#UnRegisterForModEvent
	UnRegisterForModEvent("StartForceExpression")
	UnRegisterForModEvent("StartCombatScanner")
	UnRegisterForModEvent("StartAddRapeHands")
	UnRegisterForModEvent("StartAddRapeTears")
	UnRegisterForModEvent("StartAddRapeCount")
	UnRegisterForModEvent("StartForceImmobilize")
	UnRegisterForModEvent("EndofDefeat")
	UnRegisterForModEvent("EndofDefeat_Slavery")
	UnRegisterForModEvent("EndofDefeat_Afterlife")
	UnRegisterForModEvent("HookStageStart")
	UnRegisterForModEvent("StartEscape")	
	UnRegisterForModEvent("StartCallMolesters")
	UnRegisterForModEvent("StartPlayerRescued")
	UnRegisterForModEvent("StartVoyeurs")
	UnRegisterForModEvent("StartNakedSexExpressions")
	;UnRegisterForModEvent("StartRaperExpressions")
	UnRegisterForModEvent("StartForceOpenMouth")
	
	UnRegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint")
	
	cfgqst.ResetBools()
	
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------	
			
int FuckingRound = 0	
bool HairChangedOnce = false
	
bool HasForeplay = false

;/
;cfgqst.SexState = 3

cfgqst.SexState = 0 ;NO SEX 
cfgqst.SexState = 1 ;FOREPLAY 		(SEXLAB SCENE)
cfgqst.SexState = 2 ;SEX			(SEXLAB SCENE)
cfgqst.SexState = 3 ;BUKKAKE 		(IDLE SCENE)
cfgqst.SexState = 4 ;Golden Shower 	(SEXLAB SCENE) ---> make idle scene
cfgqst.SexState = 5 ;Forced Bathing (IDLE SCENE) 

/; 
	
	
	;/	
	
	There is an animation event called AnimObjectUnequip, which sounds like it might be what you're looking for
Try doing Debug.SendAnimationEvent("AnimObjectUnequip", player) and see if it works out 🙂
(there are also payloads called AnimObjLoad & AnimObjDraw for doing the opposite)

	/;	
	
	
	
Function StartRapeSequence(int Stage)			;#StartRapeSequence()
;GUIDE: this starts all the rape scenes for player AND followers
;it starts for Every Round (so 3 times in total, more for chain rape?)

DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"][Sent From Stage: "+Stage+"][Last Scene Ordered: "+LastSceneOrdered+"]")
;FuckingRound 1 - can have foreplay etc. -- sent from Stage 10
;FuckingRound 2 - can have foreplay etc. -- sent from Stage 11
;FuckingRound 3 - can have foreplay etc. -- sent from Stage 12



bool StartFollowerScenes = true
	;; PLAYER ;; ;>>>>>>>>>>>>>>>>>> Roll for Foreplay Yes/No >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>						
						
	if Allow_Foreplay && (cfgqst.DefeatTypeGeneral == "AreHumans") && D100(cfgqst.DefeatForeplayChance) 	
	;; PLAYER ;; ;Foreplay only on Round 1 (takes all too long if not...)
		
		if (FuckingRound == 1)  
		HasForeplay = true 
		cfgqst.DefeatStateChapter = "Foreplay Scene"
		endif
	endif

	;; PLAYER ;; >>>>>>>>>>>>>>>>>> Select Aggressors for the Player >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	if (!cfgqst.AbortAll)
	SelectAggressor(FuckingRound, 0)
	endif 
		
	;; PLAYER ;; ;Rapers is the Group especially for the Player 
	FillRapersFast()
	
	;............ooooooooooooooooOOOOOOOOOOOOO	FADE BLACK IN 01
	
	if cfgqst.BlackFadeStatus == 0 && (!cfgqst.AbortAll)
	cfgqst.FadeToBlack(true)	
	endif
		
	;/
	if Nym() && cfgqst.DefeatTypeGeneral == "AreHumans"
	
	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] :::::::::::::::::::::: #Bukkake NYM Start ::::::::::::::::::::::")
	PlayPoseOnActor(cfgqst.PlayerRef, "receiving", false)	
	cfgqst.DefeatStateChapter = "Bukkake Scene"
	
	cfgqst.FixExpressions() ;---> Nym()
	StartFollowerScenes = false
	
		if SolosRunning > 0
		NymMessage("#ERROR SolosRunning = "+SolosRunning)
		SolosRunning = 0
		endif
		
	OnStartSolo("", "", 0, None) ;errrm, #TODO this good? Should Send ModEvent here I think... 
	endif 
	
	if Nym()
		while cfgqst.SexSceneBukkake
		Utility.Wait(3)
		endwhile 
	endif 
	
	/;	
	
	;when DefeatScenario us Bukkake, the "OnAnimationEndX" will send to "SexFinished" and SexFinished will eventually lead back here 
	


	;;;!!!! SexFinished() has to be the BRIDGE after every player round/scenario. Foreplay -> OnForePlay End but starts Sex and Sex -> SexFinished()!!!! 

	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	;;>>>>>>>>>>> 	START FOREPLAY (Player) 	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ;#foreplay1+ >>>>>>>>>>>>>>
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	if HasForeplay && cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] :::::::::::::::::::::: #ForePlay Start ::::::::::::::::::::::")
	cfgqst.FixExpressions() ;---> Nym()
	StartRape(Rapers[0])
	StartFollowerScenes = false
	
		;--- Foreplay Scene Failed - Retry Once ---; 	

		if SexSceneStatus == 3
		NymBox("Foreplay Failed, try fixing now (reSelectAggressor and Restart Scene")
		NymTrace("DefeatStateChapter () [Round:"+FuckingRound+"]("+cfgqst.DefeatStateChapter+") WasForeplay("+WasForeplay+") HasForeplay("+HasForeplay+")")
			
			WasForeplay = false
			HasForeplay = true 
			cfgqst.DefeatStateChapter = "Foreplay Scene"
			
			SelectAggressor(FuckingRound, 0)
			FillRapersFast()
		endif 




	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	;;>>>>>>>>>>>	 START MASTURBATION (Player) 	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  #Masturbation >>>>>
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	elseif (cfgqst.DefeatTypeScenario == "Masturbation") && cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRapeSequence(Masturbation)")
	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] :::::::::::::::::::::: #Masturbation Start ::::::::::::::::::::::")
	cfgqst.DefeatStateChapter = "Forced Masturbation Scene"
	cfgqst.FixExpressions() ;---> Nym()
	
	StartFollowerScenes = false
	
	StartMasturbation()
	
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	;;>>>>>>>>>>> 	START BUKKAKE (Player) 	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  #Bukkake1 >>>>>>>>>>>>>>
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 	elseif (cfgqst.DefeatTypeScenario == "Bukkake") && cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRapeSequence(Bukkake)")
	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] :::::::::::::::::::::: #Bukkake Start ::::::::::::::::::::::")
	PlayPoseOnActor(cfgqst.PlayerRef, "receiving", false)	
	cfgqst.DefeatStateChapter = "Bukkake Scene"
	
	cfgqst.FixExpressions() ;---> Nym()
	StartFollowerScenes = false
	
		if SolosRunning > 0
		NymMessage("#ERROR SolosRunning = "+SolosRunning)
		SolosRunning = 0
		endif
		
	OnStartSolo("", "", 0, None) ;errrm, #TODO this good? Should Send ModEvent here I think... 
	
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	;;>>>>>>>>>>> 	START REGULAR SEX (Player) 	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  #SEX >>>>>>>>>>>>>>
	;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	elseif cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] StartRapeSequence(REGULAR SEX)")
	
	StartFollowerScenes = true
	
	FillRapersFast()	;save Aggressors as Rapers

	cfgqst.DefeatStateChapter = "Sex Scene"
	
	if (!cfgqst.AbortAll)
	StartRape(Rapers[0])
	endif 
				
		;--- Sex Scene Failed - Retry Once ---; 
		if SexSceneStatus == 3
			NymBox("Sex Scene "+FuckingRound+" Failed, try fixing now (reSelectAggressor and Restart Scene")
		
			if !cfgqst.AbortAll
			SelectAggressor(FuckingRound, 0)
			endif 
			
			FillRapersFast()
			cfgqst.DefeatStateChapter = "Sex Scene"
			
			if !cfgqst.AbortAll
			StartRape(Rapers[0])
			endif 
			
			if SexSceneStatus == 3
			NymBox("Sex Scene "+FuckingRound+" Failed AGAIN, Abort")
			StartFollowerScenes = false
			endif 
		endif 

		if humangroup && D100(cfgqst.RapeHandsProb) && !cfgqst.AbortAll  	;#rapehands
		SendModEvent("StartAddRapeHands")			
		endif
	endif

	DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] ForePlayStarting: "+ForePlayStarting)
	
	;THIS DOES NOTHING ANYMORE !!!!!!!
	while ForePlayStarting && cfgqst.IsDefeatRunning() && !cfgqst.AbortAll
	Utility.Wait(2.0)
	endwhile
	;THIS DOES NOTHING ANYMORE !!!!!!!
						
	;---- FOLLLOWER SCENES -----------------------------------------------------------------------
	;NEW: we ONLY start Follower Scenes After The Special Scene is Finished. Because later we want this to happen to them too!
	if StartFollowerScenes && !cfgqst.AbortAll
		if (Victimcount > 0) && cfgqst.IsDefeatRunning()
		DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"] StartRapeSequence(Victims)")			

			;if Nym()	
			NymTrace("SexSceneStatus A:"+SexSceneStatus)
				int iWait = 10
				
				while (SexSceneStatus < 2) && (iWait > 0) && (!cfgqst.AbortAll)
				iWait -= 1
				Utility.Wait(0.5)
				endwhile
					
				if SexSceneStatus == 2
				StartFollowerScenes = true 
				elseif SexSceneStatus == 3
				StartFollowerScenes = false
				endif 		
			
			NymTrace("SexSceneStatus B:"+SexSceneStatus)

			if StartFollowerScenes
				; --- Victims[0] --- ; 
				if Victims[0]	
					;female 	
					if (SexLab.GetGender(Victims[0]) == 1) && cfgqst.FemaleFollower && (!cfgqst.AbortAll) 
					SelectAggressor(FuckingRound, 1)							
						
						if AggressorCount >  0&& (!cfgqst.AbortAll)
						Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRapeSequence(Victims[0]female StartRape)")	
						StartRapeFollower01(Aggressors[0])
						endif	
					;male
					elseif (SexLab.GetGender(Victims[0]) == 0) && cfgqst.MaleFollower && (!cfgqst.AbortAll)  
					SelectAggressor(FuckingRound, 1)						
						
						if AggressorCount > 0 && (!cfgqst.AbortAll)
						StartRapeFollower01(Aggressors[0])
						endif		
					endif
				endif
						
				; -- Victims[1] --- ;	
				if Victims[1]
					;female 
					if (SexLab.GetGender(Victims[1]) == 1) && cfgqst.FemaleFollower && (!cfgqst.AbortAll)  	
					SelectAggressor(FuckingRound, 2)						
					
						if AggressorCount > 0 && (!cfgqst.AbortAll)
						Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRapeSequence(Victims[1]female StartRape)")
						StartRapeFollower02(Aggressors[0])
						endif
					;male
					elseif (SexLab.GetGender(Victims[1]) == 0) && cfgqst.MaleFollower && (!cfgqst.AbortAll) 
					SelectAggressor(FuckingRound, 2)						
					
						if AggressorCount > 0 && (!cfgqst.AbortAll)
						StartRapeFollower02(Aggressors[0])
						endif
					endif
				endif
			endif 
			;here be Follower 03
			;all other followers get sex or just bound?
		endif	
	endif 
	
	if cfgqst.AbortAll
	SetStage(500)
	endif 
	
	;ResetThe Groups (selection done, all are available again)
	;0 stay 0 (not available), 1 stays 1 and 2 becomes 1 again. 
	;NOTE when we spawn actors later during the quest we need to make the script know that. (put Group to 1 manually)
	;#thomas
	
EndFunction


Function FillRapersFast()	;save Aggressors as Rapers	#FillRapersFast()

	Rapers = new Actor[4]					
	Rapers[0] = None						
	Rapers[1] = None						
	Rapers[2] = None						
	Rapers[3] = None	
	RaperCount = 0
		
	;save Aggressors as Rapers --> all Player Scenes start with these now!!!!
	if AggressorCount == 4
	Rapers[0] = Aggressors[0]
	Rapers[1] = Aggressors[1]
	Rapers[2] = Aggressors[2]
	Rapers[3] = Aggressors[3]
	RaperCount = 4
	elseif AggressorCount == 3
	Rapers[0] = Aggressors[0]
	Rapers[1] = Aggressors[1]
	Rapers[2] = Aggressors[2]
	RaperCount = 3
	elseif AggressorCount == 2
	Rapers[0] = Aggressors[0]
	Rapers[1] = Aggressors[1]
	RaperCount = 2
	elseif AggressorCount == 1
	Rapers[0] = Aggressors[0]
	RaperCount = 1
	endif

EndFunction

Function ResetGroupsForNextRound()
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ResetGroupsForNextRound - Reseted after Round: "+FuckingRound)
		
		;group was Blocked (2)
		;set Blocked to Available (1)
		;empty groups are (0)
		;preselected groups are (3) but never make it here, they are treatead normally after (set to (1) and to (2) if picked)
		
		if (RapersACount > 0) && GroupArray[0] == 2	;RapersA
		GroupArray[0] = 1
		endif 
		if (RapersBCount > 0) &&GroupArray[1] == 2	;RapersB
		GroupArray[1] = 1
		endif 
		if (RapersCCount > 0) && GroupArray[2] == 2	;RapersC
		GroupArray[2] = 1
		endif 
		if (CreaturesACount > 0) && GroupArray[3] == 2	;CreaturesA	
		GroupArray[3] = 1
		endif 
		if (CreaturesBCount > 0) && GroupArray[4] == 2	;CreaturesB
		GroupArray[4] = 1
		endif 			
		if (CreaturesCCount > 0) && GroupArray[5] == 2	;CreaturesC
		GroupArray[5] = 1
		endif 
		
		if (CreaturesDCount > 0) && GroupArray[6] == 2	;CreaturesD
		GroupArray[6] = 1
		endif 
		if (CreaturesECount > 0) && GroupArray[7] == 2	;CreaturesE
		GroupArray[7] = 1
		endif 			
		if (CreaturesFCount > 0) && GroupArray[8] == 2	;CreaturesF
		GroupArray[8] = 1
		endif 

EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------

Function StripFollower(int number = 0)				;#stripfollower	;#slots
							
	cfgqst.Strip(30, Victims[number]) 	;head
	cfgqst.Strip(31, Victims[number]) 	;hair 	
	cfgqst.Strip(39, Victims[number]) 	;shield
	cfgqst.Strip(37, Victims[number]) 	;boots
	cfgqst.Strip(33, Victims[number]) 	;gauntlets
	cfgqst.Strip(32, Victims[number]) 	;body 	
	cfgqst.Strip(52, Victims[number]) 	;bikini bottom/panties (also fuckbelt, care for later use)	
	
	FollowersStripWeapons(number)
	
EndFunction

Function FollowersStripWeapons(int number = 0)

	if Victims[number].GetEquippedWeapon()
	Victims[number].UnequipItem(Victims[number].GetEquippedWeapon(), false, true)
	endif
	if Victims[number].GetEquippedWeapon(true)
	Victims[number].UnequipItem(Victims[number].GetEquippedWeapon(true), false, true)
	endif

EndFunction
	
	
Function SelectSoloSceneActors()

int i = 12
int j = 0
	RapersTemp  = new Actor[12]	
	RapersTemp[0] = RapersA[0]						
	RapersTemp[1] = RapersA[1]						
	RapersTemp[2] = RapersA[2]						
	RapersTemp[3] = RapersA[3]
	RapersTemp[4] = RapersB[0]						
	RapersTemp[5] = RapersB[1]						
	RapersTemp[6] = RapersB[2]						
	RapersTemp[7] = RapersB[3]
	RapersTemp[8] = RapersC[0]						
	RapersTemp[9] = RapersC[1]						
	RapersTemp[10] = RapersC[2]						
	RapersTemp[11] = RapersC[3]
	;this is outside of SexScenes and our priority is to get the group ass FULL as possible 
	
	Rapers = new Actor[4]					
	Rapers[0] = None						
	Rapers[1] = None						
	Rapers[2] = None						
	Rapers[3] = None	
	RaperCount = 0
	

	while (i > 0)
	i -= 1
	
		if RapersTemp[i] && !RapersTemp[i].IsInFaction(SexLabAnimatingFaction) && !RapersTemp[i].IsInFaction(BusyFaction)
			if RapersTemp[i] && (Sexlab.GetGender(RapersTemp[i]) == 0) && (j < 4)
			Rapers[j] = RapersTemp[i]
			j +=1
			endif 
		endif 	
	endwhile 
		
	;/
	if Nym()	
		if Rapers[0] 
		NymTrace("Rapers[0] found")
		endif 
		if Rapers[1] 
		NymTrace("Rapers[1] found")
		endif 
		if Rapers[2] 
		NymTrace("Rapers[2] found")
		endif 
		if Rapers[3] 
		NymTrace("Rapers[3] found")
		endif 
	endif 
	/;
	
	RaperCount = j
	
	NymTrace("RaperCount: "+j)
	
EndFunction 	
	
	
;-----------------------------------------------------------------------------------------------------------------------------------------

;:::::::::::::::::::::::::::: BATHING STUFF START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

bool IsBathing = false




Function SceneForcedBathing(string BathingType)		;#bathing

Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: SceneForcedBathing()")
	
	;FADE TO BLACK - Starting (ON) ---> for both Pee and Bathing
	cfgqst.FadeToBlack(true)	
	;SexLab.StripActor(cfgqst.PlayerRef, none, false, false) ;actor // victim // playstripanim // LeadInStrip		;strip here because Pee is not victim anim and therefor will redress (sigh)
	StripPlayer()
	
	;GOLDEN SHOWER ------------------------
	if BathingType == "GoldenShower"
	ScreenMessage("Here is your golden shower! [Golden Shower]")	

		
		;OLD 
		;/
		if No
		
			Peeing = true
			SelectPeeGuys() ;;REMOVE BAD!!!!
			PlayPoseOnActor(cfgqst.PlayerRef, "receiving", false)
			
			if AggressorCount > 0
				StartPee(Aggressors[0])	
				cfgqst.PlaySoundPeeLong()
				
				
				
				Utility.Wait(5.0)
				cfgqst.FadeToBlack(false) ;FADE IN		;---> FADE TO BLACK - Starting (OFF) ---> Golden Shower
							
				Utility.Wait(20.0)
				SendWashPlayerEvent(false)
				cfgqst.BathingRemoveBlood()
				;Utility.Wait(7.0)
				while cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)			
				Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: IsInFaction(SexLabForbiddenActors)")
				Utility.Wait(1.0)
				cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)	;still needed???
				endwhile
				cfgqst.FadeToBlack(true)		;---> FADE TO BLACK - Ending (ON) ---> Golden Shower
												;OnPeeFinished() toggles it off again
			else
			Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: no valid pee guys, abort")
			OnPeeFinished("", "", 0, None)
			endif
			/;
		;NEW GOLDEN SHOWER 	
		;else
		
			ScreenMessage("They want you squicky shiny clean!")
			IsBathing = true
		;	cfgqst.DefeatStateChapter = "Golden Shower"
			
			;SelectPeeGuysNEW() ;	Rapers[0] are selected, the more the merrier, drawn from all 3 Human Groups
			
			StartSceneViaModEvent("Golden Shower")
			;SendModEvent("StartSolo")
		;	defqst.SexDuration = 0
		;	cfgqst.SexScene = true
			;golden shower = 3?
			storqst.SexStartMaintenance(3)

		;	SendModEvent("StartNakedSexExpressions")
			
			;external Loop while Function is running
			;cfgqst.NakedBathing()		;turns on Fade To Black for Ending
			
			NymTrace("PlaySoundPeeLong()")
			cfgqst.PlaySoundPeeLong()
			
			String PoseType
			int j = Utility.RandomInt(1,3)
			if j == 1
			PoseType = "Random"
			elseif j == 2
			PoseType = "Receiving"
			elseif j == 3
			PoseType = "Surrender"
			endif 
			
			bool TESTTEST = false
			
			if Nym() && TESTTEST
				
				StartSexFast("ForePlay", Victims[0])
				int iTimer = 0
				While cfgqst.IsFucking(cfgqst.PlayerRef)
				iTimer +=1 
				
					if iTimer == 1 
						if Victims[0]
						Sexlab.UnequipStrapon(Victims[0])
						endif 
						if Victims[1]
						Sexlab.UnequipStrapon(Victims[1])
						endif 
					endif 
				
					if iTimer == 8
					cfgqst.SendWashPlayerEvent()
					cfgqst.SendModEvent_BiS_WashActor(folqst.Actor_Follower01)
					endif 
				endwhile 	
			else 
			int i = 10
				while i > 0		;#petra
				i -= 1
				
					if D100(33)
					cfgqst.PlayBreathing()
					else
					SendModevent("Moan")
					endif
					
					if i == 7 
						if !Nym()
						cfgqst.BathingRemoveBlood()
						endif 
					Endif
					if i == 8
					cfgqst.SendWashPlayerEvent()
					endif 
					
				PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
				
				Utility.Wait(Utility.RandomInt(2,5))
				cfgqst.PlayerRef.DamageAV("Stamina", 100)
				endwhile 
			endif 
			
			Sexlab.ThreadSlots.StopAll()
			SolosRunning = 0
			
			IsBathing = false
			cfgqst.DefeatStateChapter = "Golden Shower"
			cfgqst.IsMouthAvailable = 1
			cfgqst.PlayerRef.RestoreAV("Stamina", 2000)
			OnPeeFinished("", "", 0, None)
	
	elseif BathingType == "ForcedBathing"
	ScreenMessage("They want you squicky shiny clean! [Forced Bathing]")
	IsBathing = true
	
	StartSceneViaModEvent("Forced Bathing")
	;defqst.SexDuration = 0
	;cfgqst.SexScene = true
	storqst.SexStartMaintenance(3)
	
;	SendModEvent("StartNakedSexExpressions")
	
	if Nym() &&	folqst.IsWithUs_Follower(0)
		StartSexFast("ForePlay", Victims[0])
		int iTimer = 0
		While cfgqst.IsFucking(cfgqst.PlayerRef)
		iTimer +=1 
			if iTimer == 8
			cfgqst.SendWashPlayerEvent()
			cfgqst.SendModEvent_BiS_WashActor(folqst.Actor_Follower01)
			endif 	
		Utility.Wait(2.0)
		Endwhile 
	else 	
	;external Loop while Function is running
	cfgqst.NakedBathing()		;turns on Fade To Black for Ending
	endif 
	Sexlab.ThreadSlots.StopAll()
	SolosRunning = 0
	
	IsBathing = false
	OnPeeFinished("", "", 0, None)
	;cfgqst.SexScene = false
	cfgqst.IsMouthAvailable = 1
	endif
			
EndFunction


Function StartSceneViaModEvent(String Type)

SelectSoloSceneActors()
cfgqst.DefeatStateChapter = Type
SendModEvent("StartSolo")

EndFunction 


;--------------------------------------------------------------------------------------------------------------------------------------------------------------------

Event OnBis_BatheEvent(Form akTarget)
;	Actor CleanActor = akTarget as Actor
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Event player bathing finished")

;	if !cfgqst.SexFinished
;	SexFinished()
;	endif
;	Utility.Wait(3.0)

EndEvent

;--------------------------------------------------------------------------------------------------------------------------------------------------------------------

Function RestorePosition(int akFollower)
;called from the FollowerIdleQuest ---> checks distance to vehicle and attempts to catch and restore vehicle and then pose.

if (akFollower == 0) && (Victims[0].GetDistance(Vehicle_Victims0) > 50)
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[0] caught fleeing.")
Victims[0].Moveto(Vehicle_Victims0)
elseif (akFollower == 1) && (Victims[1].GetDistance(Vehicle_Victims1) > 50)
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[1] caught fleeing.")
Victims[1].Moveto(Vehicle_Victims1)
endIf
EndFunction


Bool Function CheckEndOfDefeat()

	if IsEndOfDefeat
	return true
	else
	return false
	endif 

EndFunction

Bool FollowersOnSpot = false 


Bool Function IsVictimOnSpot(int VictimNum)

	if cfgqst.SlaveAuction ;basically we dont care here and dont use?! 
	return true 
	elseif !FollowersOnSpot || IsEndOfDefeat || (cfgqst.DefeatStatePlayer == "Escaping") || (cfgqst.DefeatStatePlayer == "Escaped")
	return true  ;basically we dont care here and dont use?! 
	elseif cfgqst.IsDefeatRunning() 
		if VictimNum == 0 && Victims[0]
				if Victims[0].GetDistance(Vehicle_Victims0) > 200
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[0] caught running.")
				return false
				else
				return true
				endif
		elseif VictimNum == 1 && Victims[1]
				if Victims[1].GetDistance(Vehicle_Victims1) > 200
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[1] caught running.")
				return false
				else
				return true
				endif	
		else 
		return true		
		endif
	else
	return true 
	endif 

EndFunction 

Bool Function FollowerCaughtRunning(int akFollower)

	;if ! ;DO NOT USE THIS DURING AUCTION
		if !FollowersOnSpot || IsEndOfDefeat || (cfgqst.DefeatStatePlayer == "Escaping") || (cfgqst.DefeatStatePlayer == "Escaped")
		
		NymTrace("FollowerCaughtRunning: NO CHECK ALLOWED > FollowersOnSpot: "+FollowersOnSpot+" // DefeatStatePlayer: "+cfgqst.DefeatStatePlayer)
		;NymTrace("FollowerCaughtRunning: NO CHECK ALLOWED")
		return false
		elseif cfgqst.IsDefeatRunning() || cfgqst.SlaveAuction ;seems we DO need during auction

			if (akFollower == 0) && Victims[0] && !cfgqst.IsFucking(Victims[0])
				
				;if cfgqst.IsNymrasGame() && !Vehicle_Victims0
				;Debug.MessageBox("NO VEHICLE FILLED 01") 
				;endif
				
			;	if !Vehicle_Victims0 && Nym()
			;	NymMessage("No Vehicle_Victims0") 
			;	endif 

				if Victims[0].GetDistance(Vehicle_Victims0) > 100
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[0] caught running.")
				Victims[0].Moveto(Vehicle_Victims0)
				return true
				else
				return false
				endif
				
			elseif (akFollower == 1) && Victims[1] && !cfgqst.IsFucking(Victims[1])
			
				;if !Vehicle_Victims1 && Nym()
				;NymMessage("No Vehicle_Victims1") 
				;endif 

				if Victims[1].GetDistance(Vehicle_Victims1) > 100
				Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: Victims[1] caught running.")
				Victims[1].Moveto(Vehicle_Victims1)
				return true
				else
				return false
				endif
				
			endIf
		ELSE
		return false
			
		endif 
	;ELSE
	;return false	
		
	;endif 

EndFunction

;:::::::::::::::::::::::::::: BATHING STUFF END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;/
Function RemoveWeapon()


	
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	;#### GUIDE: this is meant to allow the player to walk slowly to a suitable location for rape. running away is futile, the mod will start anyway. This is not an ideal solution but better
	;than just working with the spot where you were hit and then having to relocate later via Sexlab hotkeys}.####
		
Function RealWaiting(float WaitTime)	;#waiting

	float ftimeStart = Utility.GetCurrentRealTime()
	float ftimeCurrent = 0
	bool showmessage = false
	
	;float i = cfgqst.FindSpotTime
	;float timeleft 
	;if cfgqst.ShortPunishment > 0
	;timeleft = cfgqst.FindSpotTime*0.5 
	;else
	;timeleft = cfgqst.FindSpotTime 
	;endif
	
	
	if cfgqst.FindSpotTime > 6
	showmessage = true
	endif
	
;	DebugTrace("ftimeStart = "+ftimeStart)

	while cfgqst.ModEnabled && (ftimeCurrent < (ftimeStart + cfgqst.FindSpotTime))
	Utility.Wait(0.1)
	ftimeCurrent = Utility.GetCurrentRealTime()

		if (cfgqst.FindSpotTime > 0) && showmessage && (ftimeCurrent > ((ftimeStart + cfgqst.FindSpotTime) - 5.0))
		showmessage = false		
		;ScreenMessage("You have 5 seconds left.")
		endif

	endwhile

;	DebugTrace("ftimeCurrent = "+ftimeCurrent)

EndFunction		

;/ FUCK THIS
Function RealWaitingEscape(float WaitTime)	;#waiting

	float ftimeStart = Utility.GetCurrentRealTime()
	float ftimeCurrent = 0
	bool showmessage = false
	
	if WaitTime > 6
	showmessage = true
	endif
	
;	DebugTrace("ftimeStart = "+ftimeStart)

	while cfgqst.ModEnabled && Escaping && (ftimeCurrent < (ftimeStart + WaitTime))
	Utility.Wait(0.5)
	ftimeCurrent = Utility.GetCurrentRealTime()

		if showmessage && (ftimeCurrent > ((ftimeStart + WaitTime) - 5.0))
		showmessage = false		
		ScreenMessage("You have 5 seconds left.")
		endif

	endwhile

	;DebugTrace("ftimeCurrent = "+ftimeCurrent)

EndFunction		
/; 						
	

				
Function FindSpot()				;#crawl1	;#find #spot2		 #FindSpot2()	

	RegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint") 


	;use this instead?
	;https://www.creationkit.com/index.php?title=GetCurrentRealTime_-_Utility

	;Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FindSpot()	 Timer:"+cfgqst.FindSpotTime)
	
;	cfgqst.ProcessCrimeGold() ;FUCKING NO???

	bool SlaveryFindSpotAllowed = true
	
	if cfgqst.DefeatFindSpot == 0
	SlaveryFindSpotAllowed = false
	endif 
	if (cfgqst.DefeatEntranceVia == "Sold as Public Slave") || (cfgqst.DefeatEntranceVia == "Sold as Slave")	;OVERRIDE because... welp... things change
	SlaveryFindSpotAllowed = true
	endif 

	NymTrace("SlaveryFindSpotAllowed: "+SlaveryFindSpotAllowed)
	
	;slavere 
	;if (cfgqst.DefeatFindSpot == 0) && (cfgqst.DefeatEntranceVia != "Sold as Public Slave") && (cfgqst.DefeatEntranceVia != "Sold as Slave")	;NOT ALLOWED TO FIND SPOT 		;#DANGEROUS. CHANGE
	if !SlaveryFindSpotAllowed
		cfgqst.PlayerRef.SheatheWeapon()	
		cfgqst.DefeatStatePlayer = "SpotFound"
		ScreenMessage("Your captors will deal with you where you are.")
		;Debug.Notification("<font color='#ff0000'>Your captors will fuck you where you are.</font>")
	
	elseif (!cfgqst.AbortAll)

		cfgqst.DefeatStatePlayer = "FindSpot"
		ScreenMessage("Find a good spot...")
		InfoMessage("[PRESS K (Action KEY) when you found one]")
		cfgqst.PlayerRef.SheatheWeapon()
		AllowPlaceFloor = true	

	;	cfgqst.Crawl(cfgqst.PlayerRef, true)	 ;enbables controls disables controls for crawl		
			
		if folqst.IsWithUs_Follower(0) && (!cfgqst.AbortAll)
		Utility.Wait(1.0)
		cfgqst.Crawl(folqst.NakedFollower[0], true)
		endIf
		if folqst.IsWithUs_Follower(1)  && (!cfgqst.AbortAll)
		Utility.Wait(1.0)
		cfgqst.Crawl(folqst.NakedFollower[1], true)
		endif 
		
		;Utility.Wait(1.0)
		cfgqst.PlayerRef.SheatheWeapon()  && (!cfgqst.AbortAll)
	;	cfgqst.ImmobilizeCrawl(true)
			
		;#### GUIDE: this loops until the the hotkey is pressed (K)
		
		if cfgqst.DefeatFindSpot > 0	;ALLOWED TO FIND A SPOT 
	
			if cfgqst.DefeatFindSpot == 1 	;UNLIMITED TIME 
			
				while cfgqst.DefeatStatePlayer == "FindSpot" && cfgqst.ModEnabled && !cfgqst.AbortAll
				
					Utility.Wait(1.0)
					
					cfgqst.PlayerSheatheWeapon()
					
				;	cfgqst.SpeedMultMaintenance()
					if Nym()
						
						if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower01 not in CrawlFaction -> FIX")
						folqst.NakedFollower[0].Addtofaction(cfgqst.CrawlFaction)
						endif 
						
						if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower02 not in CrawlFaction -> FIX")
						folqst.NakedFollower[1].Addtofaction(cfgqst.CrawlFaction)
						endif 
					
					endif 
						
				;	if cfgqst.IsNymrasGame() && D100(33)
				;	STA_CallSpanker()
				;	endif 
				
				;K press changes state to "SpotFound"
				endwhile
				
			elseif cfgqst.DefeatFindSpot == 2 	;TIMER TICKS DOWN 
								
				Float f = cfgqst.FindSpotTime
							
				while (f > 0) && (cfgqst.DefeatStatePlayer == "FindSpot") && cfgqst.ModEnabled && !cfgqst.AbortAll
					
					f -= 1
					Utility.Wait(1.0)
					;cfgqst.SpeedMultMaintenance()
					
					if Nym()
						
						if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower01 not in CrawlFaction -> FIX")
						folqst.NakedFollower[0].Addtofaction(cfgqst.CrawlFaction)
						endif 
						
						if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].IsInFaction(cfgqst.CrawlFaction)
						NymTrace("#ERROR - Follower02 not in CrawlFaction -> FIX")
						folqst.NakedFollower[1].Addtofaction(cfgqst.CrawlFaction)
						endif 
					
					endif 
				
					if f == 10
					ScreenMessage("10 seconds left to find a spot!") 
					endif 
				
				;K press changes state to "SpotFound"
				endwhile
			endif 	
		endif	
	endif	
	
	; ------ SPOT FOUND -------- ;
	if (!cfgqst.AbortAll)
	cfgqst.ProcessCrimeGold()	
	endif 	
	;cfgqst.FindSpotTime = 1
	;BUSTED too many problems... dropped for now:
	;RealWaiting(cfgqst.FindSpotTime)
	
	AllowPlaceFloor = false
	UnRegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint")
	
	;cfgqst.SlowDownPlayer("reset")
	
EndFunction




Function StartCombatAmbush(String AmbushType, int Difficulty, int AmbushDistance)	;#Ambush

;Difficulty 3 Hard , 2 Moderate, 1 Easy
	
	if Nym()
	Debug.messageBox("I shall not Start!!!") 
	
	else 
	;/
	GlobalVariable GameHour; = (Game.GetFormFromFile(0x00000DA8, "Bathing in Skyrim - Main.esp") As GlobalVariable)	

	GameHour = (Game.GetFormFromFile(0x00000038, "Skyrim.esm") As GlobalVariable)	
	float CurrentHour = GameHour.GetValue()

	IsAmbush = true
	
	NymTrace("StartCombatAmbush(Calmquest) [CurrentLocationType: "+defqst.CurrentLocationType+"] [CurrentHour: "+CurrentHour+"] ")
	
	String AmbushType1
	String AmbushType2
	String AmbushType3
	
	int i
	int j
	int AmbushChance = 5

	if AmbushType == "Random Enemies"

		if defqst.CurrentLocationType == "Wild"
		AmbushChance = 10
			if D100(50)
			AmbushType = "Random Animals"
			else
			AmbushType = "Random Humanoids"	
			endif 
		elseif defqst.CurrentLocationType == "City"
		;do nothing atm
		AmbushType = "No Ambush"	
		AmbushChance = 0
		elseif defqst.CurrentLocationType == "Player House"
		
		AmbushChance = 7
		
			if D100(80)
			AmbushType = "Skeevers"
			else 
			AmbushType = "Bandits"
			endif 
			
		elseif defqst.CurrentLocationType == "Dungeon"
		
		AmbushChance = 15

		AmbushType = "Skeevers"
		
		else 	;not in City and not In Wilderness 
		AmbushType = "Random Humanoids"	
		endif 

	endif 

	if AmbushType == "Random Humanoids"

		;i = Utility.RandomInt(1,5)
		i = 1 ;Rieklings only for now
		Difficulty = Utility.RandomInt(1,3)
		
		if i == 1
		AmbushType1 = "Rieklings"
		AmbushType2 = "Rieklings Mounted"
		AmbushType3 = "Rieklings"
		j = Utility.RandomInt(3,4)
		elseif i == 2
		AmbushType1 = "Trolls"
		AmbushType2 = "Trolls"
		AmbushType3 = "Trolls"
		j = Utility.RandomInt(1,2)
		elseif i == 3
		AmbushType1 = "Bandits"
		AmbushType2 = "Bandits"
		AmbushType3 = "Bandits"
		j = Utility.RandomInt(1,4)
		endif 

	elseif AmbushType == "Random Animals"

		i = Utility.RandomInt(1,5)
		Difficulty = Utility.RandomInt(1,3)
		if i == 1
		AmbushType1 = "Wolves"
		AmbushType2 = "Wolves"
		AmbushType3 = "Wolves"
		j = Utility.RandomInt(3,4)
		elseif i == 2
		AmbushType1 = "Skeevers"
		AmbushType2 = "Skeevers"
		AmbushType3 = "Skeevers"
		j = Utility.RandomInt(3,4)
		elseif i == 3
		AmbushType1 = "Sabrecats"
		AmbushType2 = "Sabrecats"
		AmbushType3 = "Sabrecats"
		j = Utility.RandomInt(1,2)
		elseif i == 4
		AmbushType1 = "Boars"
		AmbushType2 = "Boars"
		AmbushType3 = "Boars"
		j = Utility.RandomInt(2,3)
		elseif i == 5
		AmbushType1 = "Bears"
		j = 1	
		endif	
	elseif AmbushType == "Skeevers"		
		AmbushType1 = "Skeevers"
		AmbushType2 = "Skeevers"
		AmbushType3 = "Skeevers"
		j = Utility.RandomInt(3,4)
	elseif AmbushType == "Bandits"	
		AmbushType1 = "Bandits"
		AmbushType2 = "Bandits"
		AmbushType3 = "Bandits"
		j = Utility.RandomInt(1,4)	
	endif 
	

	
	if (CurrentHour >= 0) && (CurrentHour <= 6)
		if AmbushChance > 0
		AmbushChance = AmbushChance+AmbushChance
		endif 
	endif 
	
	if D100(AmbushChance)
	cfgqst.FadeToBlack(true) 
	Utility.Wait(0.5)
	
		cfgqst.ActionLog("Fight Ambush: "+AmbushType1)
	 
		if Difficulty == 3 || Difficulty == 2 || Difficulty == 1
		SpawnActors(AmbushType1, j, AmbushDistance)
		endif 
		if Difficulty == 3 || Difficulty == 2 
		SpawnActors(AmbushType2, j, AmbushDistance)
		endif 
		if Difficulty == 3 
		SpawnActors(AmbushType3, j, AmbushDistance)
		endif 
	endif 

	IsAmbush = false
	
	cfgqst.FadeToBlack(false) 
/;
	endif 

EndFunction 



Event OnAnimationEvent(ObjectReference akSource, string asEventName)		;#sprint check
	
	if (asEventName == "tailSprint") && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning) 
	
		if cfgqst.DefeatStatePlayer == "Escaping"
		cfgqst.DefeatStatePlayer = "Escaped"
		ScreenMessage("Standing up means getting downed! Fight!")
		
		elseif cfgqst.DefeatStatePlayer == "FindSpot"
		cfgqst.HarderDefeat = true
		ScreenMessage("Don't try to run! I'll keep an eye on you! (Defeat and Escape is harder now!)")
		endif
		
	endif	
	
EndEvent

int OldPoseVictims0 = 404
int OldPoseVictims1	= 404
int OldPosePlayer = 404
String OldTypeVictims0 = "empty"
String OldTypeVictims1 = "empty"
String OldTypePlayer = "empty"
	
;String LastTypePlayer 	 ;WE NEED RESTORE!!!!

;/	USELESS CRAP DELETE ALL THIS!!!! >>>>>>>>>>
Function PlayPoseOnActor(Victims[0], string Type, bool restore)

	;if folqst.Actor_Follower01
	;PlayPoseOnActor(folqst.Actor_Follower01, Type, restore)
	;endif 
	PlayPoseOnActor(Victims[0], Type, restore)
	
EndFunction

Function PlayPoseOnActor(Victims[1], string Type, bool restore)

	;if folqst.Actor_Follower02
	;PlayPoseOnActor(folqst.Actor_Follower02, Type, restore)
	;endif 
	
	PlayPoseOnActor(Victims[1], Type, restore)
	
EndFunction



Function PlayPoseOnFollower(int iFollower, string sType, bool bRestore)

	if folqst.IsTravellingWithUsFollower(iFollower)
	PlayPoseOnActor(folqst.NakedFollower[iFollower], sType, bRestore)
	endif 
	
EndFunction<<<<<<<<<<<<<
/;

;CUFFS WAIT 
;cfgqst.IdlesDefeatCuffs[19]) 	;TEST, FORGOT it (need i = 20)

;cfgqst.IdlesDefeatCuffs[18]) 	;standing upright, hands on back : STRUGGLING !!! (move to struggle)
;cfgqst.IdlesDefeatCuffs[17]) 	;kneeling, legs spread, upright, still
;cfgqst.IdlesDefeatCuffs[16]) 	;kneeling, legs spread, upright, still
;cfgqst.IdlesDefeatCuffs[15]) 	;kneeling, slightly leaning forwards, legs a bit spread, upright, still
;cfgqst.IdlesDefeatCuffs[14]) 	;laying, embryonal, still
;cfgqst.IdlesDefeatCuffs[13]) 	;laying on side, hip, upper body upright, still
;cfgqst.IdlesDefeatCuffs[12]) 	;sitting on ass, legs spread, knees retracted, body upright
;cfgqst.IdlesDefeatCuffs[11]) 	;sitting on ass, legs closed, body upright
;cfgqst.IdlesDefeatCuffs[10]) 	;sitting on ass, legs spread and straight, body upright
;cfgqst.IdlesDefeatCuffs[9]) 	;standing, thighs pressed together, bending forwards (orgasm after?)
;cfgqst.IdlesDefeatCuffs[8]) 	;standing, thighs pressed together, bending forwards (orgasm after?)
;cfgqst.IdlesDefeatCuffs[7]) 	;standing, legs together, bowing forwards deep
;cfgqst.IdlesDefeatCuffs[6]) 	;standing, legs apart, bowing forwards deep
;cfgqst.IdlesDefeatCuffs[5]) 	;standing, legs closed, upright
;cfgqst.IdlesDefeatCuffs[4]) 	;laying flat on belly, legs closed, STRUGGLING!! !
;cfgqst.IdlesDefeatCuffs[3]) 	;laying flat on side, legs closed, STRUGGLING!! !
;cfgqst.IdlesDefeatCuffs[2]) 	;laying flat on side, HOGTIED, STRUGGLING!! !
;cfgqst.IdlesDefeatCuffs[1]) 	;laying flat on belly, knees spread HOGTIED, STRUGGLING!! !
;cfgqst.IdlesDefeatCuffs[0]) 	;laying flat on belly,feet upwards HOGTIED, STRUGGLING!! !

;CUFFS STRUGGLE 
;cfgqst.IdlesDefeatCuffsStruggle[9]) 	;Crouched on Toes, Wiggle Strong, Legs Spread, Hands Bound on Back.
;cfgqst.IdlesDefeatCuffsStruggle[8]) 	;Crouched on Toes, Wiggle Strong, Legs Closed, Hands Bound on Back.

;cfgqst.IdlesDefeatCuffsStruggle[7]) 	;Kneeling, Bend Over forwards, Hands Bound on Back.
;cfgqst.IdlesDefeatCuffsStruggle[6]) 	;Kneeling,Upright,  Wiggle Strong, Hands Bound on Back.
;cfgqst.IdlesDefeatCuffsStruggle[5]) 	;Kneeling,Upright,  Wiggle Strong, Hands Bound on Back.

;cfgqst.IdlesDefeatCuffsStruggle[4]) 	;Crouched Upright, Feet on Ground, slightly raised,  Wiggle Strong, Hands Bound on Back.
;cfgqst.IdlesDefeatCuffsStruggle[3]) 	;BROKEN
;cfgqst.IdlesDefeatCuffsStruggle[2]) 	;STANDING, Bowing Forwards, Struggling Hard, Hands on Back
;cfgqst.IdlesDefeatCuffsStruggle[1]) 	;STANDING, Upright, Struggling Hard, Hands on Back
;cfgqst.IdlesDefeatCuffsStruggle[0]) 	;STANDING, low, on toes, bend knees, Struggling Hard, Hands on Back

;cfgqst.IdlesDefeatCuffs[18]) 	;standing upright, hands on back : STRUGGLING !!! (move to struggle)

;Bool Property Strip_EnchantedWeapons_INFO_overrides_MCM_0_is_Unequip_1_is_Drop_2_Destroy_333_is_like_MCM Auto 


;SLAVE IDLES 

;CLEANING

;BarCounterWipe  000F57C8
;BucketFillRoot 0001E175
;BucketPourRoot	0001E344 

;CheckCorpse	000FB90B

;idleLooseSweepingStart 000640FE

;EnterBEdRollInstant 000E4612
;FallRoot 000A790E 

;BumpedFromFront 0003DE4F
;BumpedFromLeft 0003DE51
;BumpedFromRight  0003DE50
;BumpedFromBack 0003DE52

;CastDualMagic  00035B91	
;CastDualMagicConcentrationSelf  00035B9D

;DialogueAngryExpressive 000E5192 --> EXPLORE THIS MORE , there are a dozens of these 
;PlayIdle(IdleStop_Loose).


	;IdlesAnimalDefeat[0] - Bowing LOW on All Fours, ass up
	;IdlesAnimalDefeat[1] - Bowing LOW on All Fours TIGHT, shivering a bit
	;IdlesAnimalDefeat[1] - Crawling on All Fours, Head Hanging Down, shivering a bit

	;IdlesDefeatUnbound[4] - Sitting on Ass Exhausted, head hanging, legs straight
	;IdlesDefeatUnbound[5] - Curled together on side, covering boobs and ass
	;IdlesDefeatUnbound[8] - Sitting on Ass Exhausted, leanding back, breathing, legs angled
	;IdlesDefeatUnbound[11] - Sitting on Ass low, kneeling low, hands on ground, head hanging
	;IdlesDefeatUnbound[16] - Sitting on Ass low, holding stomach, legs straight, breathing

Function PlayPoseOnActor(actor akactor, string Type = "none", bool restore)				 ;#PlayPoseOnActor				

String PosingActor = "empty"
	if storqst.BlockPosing && (akactor == cfgqst.PlayerRef)
	
	NymTrace("PlayPoseOnActor BLOCKED!")

	else 
	
		if akactor == cfgqst.PlayerRef
		PosingActor = "Player"
		NymTrace("PlayPoseOnActor: "+Type)
		elseif akactor && akactor == folqst.NakedFollower[0]
		PosingActor = folqst.Name_Follower01
		;	if Nym()
		;	OldTypeVictims0 = type
		;	endif
			
		elseif akactor && akactor == folqst.NakedFollower[1]
		PosingActor = folqst.Name_Follower02
		;	if Nym()
		;	OldTypeVictims1 = type
		;	endif
		else 
		PosingActor = "NOT FOUND"
		endif
	

	;#posa1
	
	NymTrace("PlayPoseOnActor START: "+PosingActor+" Type: "+Type+" Restore: "+restore)
	
	
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor("+PosingActor+") - DefeatStateBindings: "+cfgqst.DefeatStateBindings+" Restore = "+restore)	
	
	;/
	if restore
		if OldPosePlayer == 404 || OldPoseVictims0 == 404 || OldPoseVictims1 == 404
		;Debug.Messagebox("#ERROR no Old Pose saved") 
		endif

		if (OldTypePlayer == "empty") || (OldPoseVictims0 == "empty") || (OldPoseVictims1 == "empty")
		;Debug.Messagebox("#ERROR no Old Type saved") 
		endif 
	else
	/;
	
		
;TYPE should be "wiggle, wait, surrender". ---> determines the pose dynamic
;SCENARIO should be the DefeatTypeScenario String or a direct string ---> determines the furniture/bound options
;cfgqst.PlayerPosing("Struggle", cfgqst.DefeatTypeScenario, false)
		
	int NewPose	
	int DebugPose
	;bool RestorePoseVictims0
	;bool RestorePoseVictims1
	;We need "NewPose saved as OlPoseVictims/Player 
	;we set NewPose to old Pose at the start and add if NewPose > 0 > do not roll the dice.
		if PosingActor == "NOT FOUND"
		; DO NOTHING!!! 
		NymTrace("PlayPoseOnActor("+PosingActor+") - EMPTY CALL - Abort")
		else 			
			if type == "reset"
			NymTrace("PlayPoseOnActor("+PosingActor+") - Type: "+type)
			OldPoseVictims0 = 404
			OldPoseVictims1 = 404
			OldPosePlayer = 404
			OldTypeVictims0 = "empty"
			OldTypeVictims1 = "empty"
			OldTypePlayer = "empty"
			else
		
		
				;RANDOMIZE when (Type == "Random"), dont use when FollowerDevices wanted
				if (Type == "Random") && !Restore;&& (cfgqst.DefeatStateBindings != "FollowerDevices")
					if D100(50)
					Type = "Struggle"
					else
					Type = "Wait"
					endIf
				endif	
			
				if Restore ;----> sets only the Type String
					
					if (akactor == cfgqst.PlayerRef)
					Type = OldTypePlayer
					NewPose = OldPosePlayer 
					
					elseif cfgqst.IsDefeatRunning()
						
						if (Victimcount > 0) && (akactor == Victims[0])
						Type = OldTypeVictims0
						NewPose = OldPoseVictims0
						elseif (Victimcount > 0) && (akactor == Victims[1])
						Type = OldTypeVictims1
						NewPose = OldPoseVictims1 
						endif 	
							
					else 
				
						if folqst.IsWithUs_Follower(0) && (akactor == folqst.NakedFollower[0])
						Type = OldTypeVictims0
						NewPose = OldPoseVictims0
						elseif folqst.IsWithUs_Follower(1) && (akactor == folqst.NakedFollower[1])
						Type = OldTypeVictims1
						NewPose = OldPoseVictims1
						endif 
					
					endif 
				

					
				endif 
	
			;SUPERFLUOUS??? 
			;/
			if Restore ;----> sets only the Pose Number 
				if (Victimcount > 0) && (akactor == Victims[0]) && (OldTypeVictims0 == Type)
				NewPose = OldPoseVictims0
				elseif (Victimcount > 0) && (akactor == Victims[1]) && (OldTypeVictims1 == Type)
				NewPose = OldPoseVictims1 
				elseif (akactor == cfgqst.PlayerRef)
				NewPose = OldPosePlayer 
				endif 
			endif 
			/;

			;WIP!!! 
			if cfgqst.DefeatTypeScenario == "FastTravel"
			type = "Offering"
			endif

			;if we do NOT have DD NG and it is a DD Scenario we dont play poses
			if !cfgqst.ModDDNG && cfgqst.IsDDScenario() ;no posing when DDs are worn "DD" and "DDeEvent"
			; DDNG! 

			else
							
				;STOP IDLING -----> 				
				if Type == "Stop"			
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayerPosing (Stop)")		
					akactor.PlayIdle(cfgqst.IdlesFixHair[0])
					Type = "none"
					LastTypePlayer = "none"	;what is this for? 

				;????			 	
				elseif Type == "Player Down"
					
					if !Restore
					NewPose = Utility.RandomInt(1,5)
					endif

						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[4])	;STANDING, low, on toes, bend knees, Struggling Hard, Hands on Back
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[9])	;STANDING, Upright, Struggling Hard, Hands on Back
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[11])	;STANDING, Bowing Forwards, Struggling Hard, Hands on Back	
						elseif NewPose == 4
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[12])	;Crouched Upright, Feet on Ground, slightly raised,  Wiggle Strong, Hands Bound on Back.
						elseif NewPose == 5
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[16])	;;Crouched on Toes, Wiggle Strong, Legs Closed, Hands Bound on Back.
						endif 

				;DD Removal Wiggling 			 	
				elseif Type == "DD Removal Wiggling"	
					
						if !Restore
						NewPose = Utility.RandomInt(1,7)
						endif

						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])	;STANDING, low, on toes, bend knees, Struggling Hard, Hands on Back
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])	;STANDING, Upright, Struggling Hard, Hands on Back
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])	;STANDING, Bowing Forwards, Struggling Hard, Hands on Back	
						elseif NewPose == 4
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])	;Crouched Upright, Feet on Ground, slightly raised,  Wiggle Strong, Hands Bound on Back.
						elseif NewPose == 5
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])	;;Crouched on Toes, Wiggle Strong, Legs Closed, Hands Bound on Back.
						elseif NewPose == 6
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[9])	;;Crouched on Toes, Wiggle Strong, Legs Closed, Hands Bound on Back.
						elseif NewPose == 7
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[18])	;standing upright, hands on back : STRUGGLING !!! (move to struggle)
						endif 
				
				;DD Removal Resting			 	
				elseif Type == "DD Removal Resting"	
						
						if !Restore
						NewPose = Utility.RandomInt(1,3)
						endif

						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[5])	;standing, legs closed, upright
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[6])	;standing, legs apart, bowing forwards deep
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[7])	;standing, legs together, bowing forwards deep	
						elseif NewPose == 4
						;akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[8])	;standing, thighs pressed together, bending forwards (orgasm after?)
						elseif NewPose == 5
						;akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[9])	;standing, thighs pressed together, bending forwards (orgasm after?)
						endif 
		
		
		
		
		;cfgqst.IdlesDefeatCuffs[18]) 	;standing upright, hands on back : STRUGGLING !!! (move to struggle)
	;cfgqst.IdlesDefeatCuffs[17]) 	;kneeling, legs spread, upright, still
	;cfgqst.IdlesDefeatCuffs[16]) 	;kneeling, legs spread, upright, still
	;cfgqst.IdlesDefeatCuffs[15]) 	;kneeling, slightly leaning forwards, legs a bit spread, upright, still
	;cfgqst.IdlesDefeatCuffs[14]) 	;laying, embryonal, still
	;cfgqst.IdlesDefeatCuffs[13]) 	;laying on side, hip, upper body upright, still

	;cfgqst.IdlesDefeatCuffs[12]) 	;sitting on ass, legs spread, knees retracted, body upright WRONG??? 
	;cfgqst.IdlesDefeatCuffs[11]) 	;sitting on ass, legs spread, knees retracted, body upright <---- confirmed
	;cfgqst.IdlesDefeatCuffs[10]) 	;sitting on ass, legs spread and straight, body upright  <---- confirmed
	;cfgqst.IdlesDefeatCuffs[9]) 	;standing, thighs pressed together, bending forwards (orgasm after?) <---- confirmed
	;cfgqst.IdlesDefeatCuffs[8]) 	;standing, thighs pressed together, bending forwards (orgasm after?) <---- confirmed
	;cfgqst.IdlesDefeatCuffs[7]) 	;standing, legs together, bowing forwards deep <---- confirmed
	;cfgqst.IdlesDefeatCuffs[6]) 	;standing, legs apart, standing upright <---- confirmed
	;cfgqst.IdlesDefeatCuffs[5]) 	;standing, legs closed, upright<---- confirmed
	;cfgqst.IdlesDefeatCuffs[4]) 	;laying flat on belly, legs closed, STRUGGLING!! !
	;cfgqst.IdlesDefeatCuffs[3]) 	;laying flat on side, legs closed, STRUGGLING!! !
	;cfgqst.IdlesDefeatCuffs[2]) 	;laying flat on side, HOGTIED, STRUGGLING!! !
	;cfgqst.IdlesDefeatCuffs[1]) 	;laying flat on belly, knees spread HOGTIED, STRUGGLING!! !
	;cfgqst.IdlesDefeatCuffs[0]) 	;laying flat on belly,feet upwards HOGTIED, STRUGGLING!! !
		
		
		
				;OFFERING -----> For Fast Travel and other Rituals				 	
				elseif Type == "Offering"
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (offering)")	
					
					if !Restore
					NewPose = Utility.RandomInt(1,4)
					endif
					
					if NewPose == 3 ;too much movement, standing arms to the sides
					NewPose = 1
					endif 
					
					if storqst.IsLocalSlave() && PosingActor == "Player"
						if NewPose == 2 ;standing -> 
						;do nothing 
						
						else ;kneeling or on all fourse, remove niinode 
						cfgqst.DisableHeelsEffectOnActor(akactor, 19723)	
						endif 
					endif 
					
					if NewPose < 4
					akactor.PlayIdle(cfgqst.IdlesHumanSurrender[NewPose])		;replace later, human surrender poses
					elseif NewPose == 4
					akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[0])					;on all fours
					endif	
						
							
				;ORGASM 				 	
				elseif Type == "Orgasm"
				
					
					;ORGASM ----- ARMBINDER 
					if 	(cfgqst.DefeatStateBindings == "Armbinder")
						
						if !Restore
						NewPose = Utility.RandomInt(1,3)
						endif 
						
						string [] AnimArray	
						AnimArray = new string[4]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZapArmbHorny01"		
						AnimArray[2] = "ZapArmbHorny02"
						AnimArray[3] = "ZapArmbHorny03"		


						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
					;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Orgasm Armbinder): "+NewPose)
					endif
				;PEE 				 	
				elseif Type == "Pee"
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayerPosing (offering)")	
					
					;PEE ----- ARMBINDER 
					if 	(cfgqst.DefeatStateBindings == "Armbinder")
						NewPose = 1
						if NewPose == 1 
						Debug.SendAnimationEvent(akactor, "ZapArmbHorny03")
						endif
						
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Orgasm Armbinder): "+NewPose)
					endif			
					
					
				;RECEIVING -----> For Golden Shower / Pee --> might be too specialized?			 	
				elseif Type == "Receiving"
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (receiving)")	
				
					if !Restore
					NewPose = Utility.RandomInt(1,3)
					endif 
					
					if NewPose == 1	;set 1 - sitting
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Set 1 - sitting)")	
						int pose = Utility.RandomInt(1,3)
						if pose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[10])
						elseif pose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[11])
						elseif pose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[12])
						endif
					elseif NewPose == 2  ;set 2 - kneeling		
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Set 2 - kneeling)")
						int pose = Utility.RandomInt(1,5)
						if pose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])
						elseif pose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[5])
						elseif pose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[6])
						elseif pose == 4
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[16])
						elseif pose == 5
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[18])	
						endif
					elseif NewPose == 3 ;set 3 - standing
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Set 3 - standing)")
						int pose = Utility.RandomInt(1,3)
						if pose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
						elseif pose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
						elseif pose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
						endif
						
					elseif NewPose == 4 ;set 4 - low standing
					;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Set 4 - low standing)")
						int pose = Utility.RandomInt(1,5)
						if pose == 1
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[19])
						elseif pose == 2
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[3])
						elseif pose == 3
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
						elseif pose == 4
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[7])
						elseif pose == 5
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])
						endif			
						
					endif
							
				;SURRENDER						
				elseif Type == "surrender"																					
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (surrender)")			
					
					;HUMAN SURRENDER
					if !cfgqst.CivilRapeRunning && ((cfgqst.DefeatTypeGeneral == "AreHumans") || (cfgqst.DefeatTypeGeneral == "AreHumanoids"))				
						
						if !Restore
						NewPose = Utility.RandomInt(1,6)
						endif 

						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_01)
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_02)
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_03)	
						elseif NewPose == 4
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_04)
						elseif NewPose == 5
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_05)
						elseif NewPose == 6
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_06)
						endif

					;PUBLIC  SURRENDER					
					elseif cfgqst.CivilRapeRunning && (cfgqst.ProxGuardDetected > 0)
						if !Restore
						NewPose = Utility.RandomInt(1,3)
						endif 
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (public surrender): "+NewPose)
						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_01)
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_02)
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_03)
						endif
							
					;ANIMAL SURRENDER 	
					elseif (cfgqst.DefeatTypeGeneral == "AreAnimals")				
						if !Restore
						NewPose = Utility.RandomInt(0,2)
						endif 
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (animal surrender): "+NewPose)
						akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[NewPose])
					
					;INITIAL SURRENDER VIA HOTKEY (needs IMPROVING cause we dont have detected enemies yet... shit)	#TODO use Funciton GetClosestActor?
					else	
						if !Restore
						NewPose = Utility.RandomInt(1,6)
						endif 
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (hotkey surrender): "+NewPose)

						if NewPose == 1
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_01)
						elseif NewPose == 2
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_02)
						elseif NewPose == 3
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_03)	
						elseif NewPose == 4
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_04)
						elseif NewPose == 5
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_05)
						elseif NewPose == 6
						akactor.PlayIdle(cfgqst.IdlesHumanSurrender_06)
						endif
					endif	
				;------------------------------------------------------------------------------------------------------------		
				;----- STRUGGLE ----------------------------------------------------------------------------------------------
				;------------------------------------------------------------------------------------------------------------
				elseif Type == "struggle"															
				;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (struggle)")
					
					;----- STRUGGLE ----- ARMBINDER ----------------------------------------------------------------------------------------------
					if 	(cfgqst.DefeatStateBindings == "Armbinder")
						
						if !Restore
							if cfgqst.WhipAgain
							NewPose = Utility.RandomInt(1,6)
							else
							NewPose = Utility.RandomInt(1,15)
							endif 
						endif 
		
						string [] AnimArray	
						AnimArray = new string[16]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZapArmbStruggle01"		;whip	;order changed to match whipping purposes
						AnimArray[2] = "ZapArmbStruggle02"		;whip
						AnimArray[3] = "ZapArmbStruggle03"		;whip	
						AnimArray[4] = "ZapArmbStruggle04"		;whip
						AnimArray[5] = "ZapArmbStruggle09"		;whip				
						AnimArray[6] = "ZapArmbStruggle10"		;whip				
						AnimArray[7] = "ZapArmbStruggle07"		
						AnimArray[8] = "ZapArmbStruggle08"
						AnimArray[9] = 	"ZapArmbStruggle05"	
						AnimArray[10] = "ZapArmbStruggle06"
						AnimArray[11] = "ZapArmbStruggle11"
						AnimArray[12] = "ZapArmbStruggle12"
						AnimArray[13] = "ZapArmbStruggle13"
						AnimArray[14] = "ZapArmbStruggle14"
						AnimArray[15] = "ZapArmbStruggle15"	

						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])

					;----- STRUGGLE :: XCROSS ----------------------------------------------------------------------------------------------					
					elseif 	(cfgqst.DefeatStateBindings == "XCross")
					
						NewPose = 1
						Debug.SendAnimationEvent(akactor, "ZapXCrossStruggle01")		;only one struggle pose yet :(
				
					;----- STRUGGLE :: WHEEL ----------------------------------------------------------------------------------------------					
					elseif 	(cfgqst.DefeatStateBindings == "Wheel")
					
						NewPose = 1
						Debug.SendAnimationEvent(akactor, "B_B_TiltWFF_A1_S1")

					;----- STRUGGLE :: STOCKADE ----------------------------------------------------------------------------------------------								
					elseif 	(cfgqst.DefeatStateBindings == "Stockade")
					
						NewPose = 1
						Debug.SendAnimationEvent(akactor, "Anubs_VS_A1_S1")			;no struggle pose :(

					;----- STRUGGLE :: PILLORY ----------------------------------------------------------------------------------------------								
					elseif (cfgqst.DefeatStateBindings == "Pillory")
					
						;REMOVEPOSE: 10 (not enough movement) 
						
						if !Restore
						NewPose = Utility.RandomInt(0,16) ; <<----- CHECK
						endif 				
						akactor.PlayIdle(cfgqst.IdlesDefeatPilloryStruggle[NewPose])	;array lenght 17

					;----- STRUGGLE :: YOKE ----------------------------------------------------------------------------------------------								
					elseif (cfgqst.DefeatStateBindings == "Yoke")
						if !Restore			

							if cfgqst.WhipAgain 
						
								NewPose = Utility.RandomInt(1,5)
								
								if NewPose == 1
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])	;01 - for whip
								elseif NewPose == 2
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])	;02 - for whip
								elseif NewPose == 3
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])	;03 - for whip
								elseif NewPose == 4
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[3])	;04 - for whip
								elseif NewPose == 5
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])	;09 - for whip
								endif 
							else 
							NewPose = Utility.RandomInt(0,16)
							endif 
						endif 	
						akactor.PlayIdle(cfgqst.IdlesDefeatYokeStruggle[NewPose])	;array lenght 17 ;[0] = 01.....
		
						
					;----- STRUGGLE :: CUFFS ----------------------------------------------------------------------------------------------								
					elseif (cfgqst.DefeatStateBindings == "Cuffs") || cfgqst.DefeatStateBindings == "DDs"	
										
						if !Restore
						
							if cfgqst.WhipAgain 
							
								NewPose = Utility.RandomInt(1,6)
								
								if NewPose == 3 
								NewPose = 4
								endif
								
								if NewPose == 1
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])	;for whip
								elseif NewPose == 2
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])	;for whip
								elseif NewPose == 3
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])	;for whip  ;CHECK IF BROKEN -- seems realyl broken
								elseif NewPose == 4
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])	;for whip
								elseif NewPose == 5
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])	;for whip
								elseif NewPose == 6
								akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[9])	;for whip
								endif 
							else 	
							NewPose = Utility.RandomInt(0,9)			;0 and 9 both work... error is elsewhere??? 	;check 3 if working
								if NewPose == 3 
								NewPose = 4
								endif
							endif 
						endif 			
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[NewPose])	;array lenght 10

					;----- STRUGGLE :: UNBOUND ----------------------------------------------------------------------------------------------								
					elseif (cfgqst.DefeatStateBindings == "Unbound")   
						if !Restore
						NewPose = Utility.RandomInt(0,16)
						endif 					
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])		;array lenght 17 	;[0] = 01.....
									
					;STRUGGLE ----- UNBOUND FALLBACK				
					else 
						if !Restore
						NewPose = Utility.RandomInt(0,16)		;[0] = 01.....
						endif 
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor #ERROR, needed Fallback) Pose struggle")					
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])		;array lenght 17
					endif
							
				;----- WAIT ----------------------------------------------------------------------------------------------
				elseif Type == "wait"																		
			;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait)")	
						
					;WAIT ---- ARMBINDER 
					if (cfgqst.DefeatStateBindings == "Armbinder")
						if !Restore
						NewPose = Utility.RandomInt(1,15)
						endif 	
						string [] AnimArray	
						AnimArray = new string[16]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZapArmbPose01"		
						AnimArray[2] = "ZapArmbPose02"
						AnimArray[3] = "ZapArmbPose03"		
						AnimArray[4] = "ZapArmbPose04"
						AnimArray[5] = "ZapArmbPose05"		
						AnimArray[6] = "ZapArmbPose06"
						AnimArray[7] = "ZapArmbPose07"		;
						AnimArray[8] = "ZapArmbPose08"
						AnimArray[9] = "ZapArmbPose09"
						AnimArray[10] = "ZapArmbPose10"
						AnimArray[11] = "ZapArmbPose11"
						AnimArray[12] = "ZapArmbPose12"
						AnimArray[13] = "ZapArmbPose13"
						AnimArray[14] = "ZapArmbPose14"
						AnimArray[15] = "ZapArmbPose15"		

						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait Armbinder): "+NewPose)
					
					
					
					;WAIT ----- WHEEL 		
					elseif 	(cfgqst.DefeatStateBindings == "Wheel")
					
						NewPose = 1
						;test
						Debug.SendAnimationEvent(akactor, "ZazAPCAO263")
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Wait Wheel): "+NewPose)

					;WAIT ----- STOCKADE 		
					elseif 	(cfgqst.DefeatStateBindings == "Stockade")
					
						NewPose = 1
						;no struggle pose :(
						Debug.SendAnimationEvent(akactor, "B_Billyy_StockadeFuckMachine_A1_S1")
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (Wait Stockade): "+NewPose)
						
					;WAIT ---- XCROSS 
					elseif (cfgqst.DefeatStateBindings == "XCross")
						if !Restore
						NewPose = Utility.RandomInt(1,3)
						endif 
						string [] AnimArray	
						AnimArray = new string[4]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZapXCrossPose01"		
						AnimArray[2] = "ZapXCrossPose01b"
						AnimArray[3] = "B_Billyy_XCrossFuck_A1_S1"		


						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait XCross): "+NewPose)	

					;WAIT ---- PILLORY
					elseif (cfgqst.DefeatStateBindings == "Pillory")
						if !Restore
						NewPose = Utility.RandomInt(0,12)
						endif 
						
						;REMOVEPOSES: 4 (wrong pillory)
						
						if akactor.PlayIdle(cfgqst.IdlesDefeatPillory[NewPose])		;array lenght 13
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait pillory): "+NewPose)
						else
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait pillory) #ERROR: "+NewPose)
						endif
					;WAIT ---- YOKE
					elseif (cfgqst.DefeatStateBindings == "Yoke")
													
						if !Restore
						NewPose = Utility.RandomInt(0,14)
						endif 
						
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (wait yoke): "+NewPose)
						akactor.PlayIdle(cfgqst.IdlesDefeatYoke[NewPose])			;array lenght 15
					
					;WAIT ---- CUFFS 					
					elseif (cfgqst.DefeatStateBindings == "Cuffs")	
						if !Restore	
						NewPose = Utility.RandomInt(0,19)		;POSE 0 ALSO BROKEN??? 
						endif 
					
						akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[NewPose])		;array lenght 20
							
					;WAIT ---- UNBOUND (Standardidles)	;CHECK FOR STRUGGLE AND WAIT VARIANTS					
					elseif (cfgqst.DefeatStateBindings == "Unbound")  	
						
						if !Restore
						NewPose = Utility.RandomInt(0,16)
						endif 
										
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])		;array lenght 17			
				
					;WAIT ---- FALLBACK (Standardidles)	;CHECK FOR STRUGGLE AND WAIT VARIANTS				
					else 
						if !Restore
						NewPose = Utility.RandomInt(0,16)
						endif 	
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor #ERROR, needed Fallback) Pose Wait")					
						akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])		;array lenght 17			
					endif		
				;FOLLOWER AUCTION 					
				elseif Type == ("FollowerAuction") 

						if !Restore
							NewPose = Utility.RandomInt(1,6)
						endif 

						string [] AnimArray	
						AnimArray = new string[7]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZazAPCAO307"	;Standing in chains 
						AnimArray[2] = "ZazAPCAO306"	;Standing in chains X
						AnimArray[3] = "ZazAPCAO304"	;Hanging in chains swinging	
						AnimArray[4] = "ZazAPCAO303"	;Hanging in chains static
						AnimArray[5] = "ZazAPCAO301"	;Standing in chains static legs closed
						AnimArray[6] = "ZazAPCAO302"	;Standing in chains static
				
						
						
						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (FollowerAuction): "+NewPose)
				
										
				;FOLLOWER DEVICES 				
				elseif Type == ("FollowerDevices") 	
								
						if cfgqst.PlayerRef.IsInInterior() 
							
						;	if (OldPoseVictims0 > 0) && Restore && (akactor == Victims[0])
						;	NewPose = OldPoseVictims0
						;	elseif (OldPoseVictims1 > 0) && Restore && (akactor == Victims[1])
						;	NewPose = OldPoseVictims1
						;	else 	

						;if NewPose
							if !Restore
							NewPose = Utility.RandomInt(1,37)
							endif 
						;		if (akactor == Victims[0])
						;		OldPoseVictims0 = NewPose
						;		elseif (akactor == Victims[1])
						;		OldPoseVictims1 = NewPose
						;		endif
						;	endif 
						
						string [] AnimArray	
						AnimArray = new string[37]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZazAPCAO309"	;Hanging in chains "laying"
						AnimArray[2] = "ZazAPCAO308"	;Hanging in chains "Upside down"
						AnimArray[3] = "ZazAPCAO307"	;Standing in chains 		
						AnimArray[4] = "ZazAPCAO306"	;Standing in chains X
						AnimArray[5] = "ZazAPCAO305"	;Standing in chains bend over
						AnimArray[6] = "ZazAPCAO304"	;Hanging in chains swinging
						AnimArray[7] = "ZazAPCAO303"	;Hanging in chains static
						AnimArray[8] = "ZazAPCAO302"	;Standing in chains static
						AnimArray[9] = "ZazAPCAO301"	;Standing in chains static legs closed
						AnimArray[10] = "ZazAPCAO007"	;hanging Tight Cage
						AnimArray[11] = "ZazAPCAO006"	;hanging  Cage, laying
						AnimArray[12] = "ZazAPCAO005"	;hanging  Cage, kneeling	
						AnimArray[13] = "ZazAPCAO306"	;doublet - was missing ;Standing in chains X
						AnimArray[14] = "ZazAPCAO205"	;Pole with big U shackles, sitting	
						AnimArray[15] = "ZazAPCAO204"	;Pole with big U shackles, kneeling	
						AnimArray[16] = "ZazAPCAO203"	;Pole with big U shackles, hanging			
						AnimArray[17] = "ZazAPCAO202"	;Pole with big U shackles, standing	
						AnimArray[18] = "ZazAPCAO201"	;Pole with big U shackles, standing, back exposed
						AnimArray[19] = "ZazAPCAO011"	;Exposed in Stocks Standing (static :/) 
						AnimArray[20] = "ZazAPCAO009"	;Big PILLORY
						AnimArray[21] = "ZazAPCAO003"	;Tight Cage with Pole
						AnimArray[22] = "ZazAPCAO002"	;Tight Cage with Pole, laying
						AnimArray[23] = "ZazAPCAO001"	;Tight Cage with Pole, kneeling	
						
						AnimArray[24] = "ZazAPCAO304"	;Hanging in chains swinging
						AnimArray[25] = "ZazAPCAO303"	;Hanging in chains static
						;REPLACED BECAUSE TOO BULKY 
						;AnimArray[24] = "ZazAPCAO211"	;Torture Rack Diagonal, Front exposed	;
						;AnimArray[25] = "ZazAPCAO212"	;Torture Rack Diagonal, Back exposed		;
						AnimArray[26] = "ZazAPCAO261"	;Wheel Medium High
						AnimArray[27] = "ZazAPCAO262"	;Wheel very High
						AnimArray[28] = "ZazAPCAO263"	;Wheel normal (for Scenario!)
						AnimArray[29] = "ZazAPCAO025"	;XCROSS LIGHT STRUGGLE
						AnimArray[30] = "ZazAPCAO024"	;Pony with Yoke
						AnimArray[31] = "ZazAPCAO023"	;Stockade
						AnimArray[32] = "ZazAPCAO016"	;Exposed in Stocks (static :/) 
						AnimArray[33] = "ZazAPCAO015"	;Exposed in Stocks Upside down (static :/) 
						AnimArray[34] = "ZazAPCAO014"	;Exposed in Stocks Standing (static :/) 
						AnimArray[35] = "ZazAPCAO013"	;Exposed in Stocks Standing X (static :/) 
						AnimArray[36] = "ZazAPCAO012"	;Exposed in Stocks Kneeling (static :/) 
						
						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (FollowerDevices Indoor): "+NewPose)

						
						else
						
							if !Restore	
							NewPose = Utility.RandomInt(1,24)
							endif
							
						string [] AnimArray	
						AnimArray = new string[24]	
						AnimArray[0] = "RESET"
						AnimArray[1] = "ZazAPCAO205"	;Pole with big U shackles, sitting	
						AnimArray[2] = "ZazAPCAO204"	;Pole with big U shackles, kneeling	
						AnimArray[3] = "ZazAPCAO203"	;Pole with big U shackles, hanging			
						AnimArray[4] = "ZazAPCAO202"	;Pole with big U shackles, standing	
						AnimArray[5] = "ZazAPCAO201"	;Pole with big U shackles, standing, back exposed
						AnimArray[6] = "ZazAPCAO211"	;Torture Rack Diagonal, Front exposed
						AnimArray[7] = "ZazAPCAO212"	;Torture Rack Diagonal, Back exposed		;
						AnimArray[8] = "ZazAPCAO261"	;Wheel Medium High
						AnimArray[9] = "ZazAPCAO262"	;Wheel very High
						AnimArray[10] = "ZazAPCAO263"	;Wheel normal (for Scenario!)
						AnimArray[11] = "ZazAPCAO025"	;XCROSS LIGHT STRUGGLE
						AnimArray[12] = "ZazAPCAO024"	;Pony with Yoke
						AnimArray[13] = "ZazAPCAO023"	;Stockade
						AnimArray[14] = "ZazAPCAO016"	;Exposed in Stocks (static :/) 
						AnimArray[15] = "ZazAPCAO015"	;Exposed in Stocks Upside down (static :/) 
						AnimArray[16] = "ZazAPCAO014"	;Exposed in Stocks Standing (static :/) 
						AnimArray[17] = "ZazAPCAO013"	;Exposed in Stocks Standing X (static :/) 
						AnimArray[18] = "ZazAPCAO012"	;Exposed in Stocks Kneeling (static :/) 
						AnimArray[19] = "ZazAPCAO011"	;Exposed in Stocks Standing (static :/) 
						AnimArray[20] = "ZazAPCAO009"	;Big PILLORY
						AnimArray[21] = "ZazAPCAO003"	;Tight Cage with Pole
						AnimArray[22] = "ZazAPCAO002"	;Tight Cage with Pole, laying
						AnimArray[23] = "ZazAPCAO001"	;Tight Cage with Pole, kneeling
							
							if Nym()
								if AnimArray[23]	;what for???
								
								else
								Debug.Messagebox("Array NONE") 
								endif 
							endif 
						Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
						;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor (FollowerDevices Outdoor): "+NewPose)

						
						endif
							
						;OUT DOOR
						;"ZazAPCAO262"	;Wheel very High
						
						;FURO
						;ZazAPFSA003	with all the stuff and penetration
						;ZazAPFSA004 with all the stuff and penetration
		
		
						;NAILED TO Cross
						;ZazAPCAO251	;T
						;ZazAPCAO251	;Legs open
						
				endif		
			endif ;DD Stuff	
						
		;	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: PlayPoseOnActor ("+PosingActor+") "+Type+" - Pose:"+NewPose)
			
			;SAVE LAST POSE 	
			;#posa2
			
			
			NymTrace("PlayPoseOnActor("+PosingActor+") - Type: "+type+" - DefeatStateBindings: "+cfgqst.DefeatStateBindings+" - Pose: "+NewPose+" - Restore = "+restore)	
			
			NymTrace("PlayPoseOnActor("+PosingActor+") - OldPoseVictims0: "+OldPoseVictims0+" - OldTypeVictims0: "+OldTypeVictims0)					
		
			if akactor && akactor == folqst.NakedFollower[0]
			OldPoseVictims0 = NewPose
			OldTypeVictims0 = type
			elseif akactor && akactor == folqst.NakedFollower[1]
			OldPoseVictims1 = NewPose
			OldTypeVictims1 = type
			elseif  akactor && akactor == cfgqst.PlayerRef	;PlayerRef 
			OldPosePlayer = NewPose
			OldTypePlayer = type
			else
			NymTrace("#ERROR no valid Actor to save posing info to")
			
			endif 
		
			NymTrace("PlayPoseOnActor("+PosingActor+") - OldPoseVictims0: "+OldPoseVictims0+" - OldTypeVictims0: "+OldTypeVictims0)	
		
		endif ;reset	
	
	endif 
endif 

EndFunction


Function Bridge_MoveUpFurniture()

capqst.MoveUpFurniture()

EndFunction 

Function Bridge_ChangeFurniture()

capqst.ChangeFurniture()

EndFunction 


Function Bridge_RemovePunishmentItems()

capqst.RemovePunishmentItems()

EndFunction 

Function StartSexEffects()

	if GroupTypePlayer == ("DwarvenBallistas") || GroupTypePlayer == ("DwarvenCenturions") || GroupTypePlayer == ("DwarvenSpheres") || GroupTypePlayer == ("DwarvenSpiders") || GroupTypePlayer == ("StormAtronach")
	defqst.SexEffect01 = 2	;shock
	elseif GroupTypePlayer == ("FrostAtronach") || GroupTypePlayer == ("Wisps") || GroupTypePlayer == ("WispMothers")
	defqst.SexEffect01 = 3	;frost
	elseif GroupTypePlayer == ("FlameAtronach") 
	defqst.SexEffect01 = 4	;flames
	endif 
	
	NymTrace("defqst.SexEffect01 = "+defqst.SexEffect01)
	
EndFunction 


Function StopSexEffects()
defqst.SexEffect01 = 0
EndFunction 

;BASE FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

bool Function D100(float chance)	;#diceroll	;#d100

;if we roll equal or below the send "chance" it will return true (so D100(95)) is a 95% of "TRUE")

int i = Utility.RandomInt(1, 100)
int c = chance as int

NymTrace("Chance: "+c+" D100 "+i)

if i <= chance
return true
else
return false
endif
EndFunction

Function DebugTrace(String Text1)			;#DebugTrace
Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg DEBUG) "+Text1)
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
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#trace NYM) "+Text2)
	endif
EndFunction

Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("Calmquest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: BOX (#Box NYM) "+Text2)

EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
	
EndFunction

;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

		
Bool Function CheckRaperGroups()
	if RapersACount > 0
	return true
	elseif RapersBCount > 0
	return true
	elseif RapersCCount > 0
	return true
	else
	return false
	endif
EndFunction

Bool Function CheckCreatureGroups()

	if CreaturesACount > 0
	return true
	elseif CreaturesBCount > 0
	return true
	elseif CreaturesCCount > 0
	return true
	elseif CreaturesDCount > 0
	return true
	elseif CreaturesECount > 0
	return true
	elseif CreaturesFCount > 0
	return true
	else
	return false
	endif
EndFunction


Function UpdateDeadRapers()

	int i = 4
	DebugTrace("UpdateDeadRapers() SelectedGroup: "+SelectedGroup)

		if (SelectedGroup == "none")
		DebugTrace("UpdateDeadRapers #ERROR - SelectedGroup = NONE")
		
		;Debug.Messagebox("SelectedGroup = none")	
		elseif SelectedGroup == "RapersA"
		CheckRapersA()

		endif 

EndFunction


Function BadMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#A52A2A'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT calmquest: (#msg) "+Text3)
EndFunction




Function UpdateRaperGroups()

	;Universal Attempt to FIX the fucking Groups 
	
	


	int i = 4
	DebugTrace("UpdateRaperGroups() SelectedGroup: "+SelectedGroup)

		if (SelectedGroup == "none")
		DebugTrace("#ERROR - SelectedGroup = NONE")
		
		;Debug.Messagebox("SelectedGroup = none")	
		elseif SelectedGroup == "RapersA"
		GroupArray[0] = 0
		
			while i > 0
			i -= 1
				if RapersA[i] && RapersA[i].IsInFaction(cfgqst.NakedGhostFaction)
				RapersA[i].disable()
				RapersA[i].delete()
				endif 
			endwhile 
		
		RapersA[0] = none					
		RapersA[1] = none				
		RapersA[2] = none						
		RapersA[3] = none
		RapersACount = 0
		
		elseif SelectedGroup == "RapersB"
		
			while i > 0
			i -= 1
				if RapersB[i] && RapersB[i].IsInFaction(cfgqst.NakedGhostFaction)
				RapersB[i].disable()
				RapersB[i].delete()
				endif 
			endwhile 
		
		GroupArray[1] = 0	
		RapersB[0] = none					
		RapersB[1] = none					
		RapersB[2] = none					
		RapersB[3] = none	
		RapersBCount = 0
		
		elseif SelectedGroup == "RapersC"
		
			while i > 0
			i -= 1
				if RapersC[i] && RapersC[i].IsInFaction(cfgqst.NakedGhostFaction)
				RapersC[i].disable()
				RapersC[i].delete()
				endif 
			endwhile 
		
		GroupArray[2] = 0
		RapersC[0] = none					
		RapersC[1] = none					
		RapersC[2] = none						
		RapersC[3] = none	
		RapersCCount = 0
		
		elseif SelectedGroup == "CreaturesA"

		while i > 0
			i -= 1
				if CreaturesA[i] && CreaturesA[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesA[i].disable()
				CreaturesA[i].delete()
				endif 
			endwhile 

		GroupArray[3] =	0
		CreaturesA[0] = none					
		CreaturesA[1] = none					
		CreaturesA[2] = none						
		CreaturesA[3] = none	
		CreaturesACount = 0
	
		elseif SelectedGroup == "CreaturesB"
		
			while i > 0
			i -= 1
				if CreaturesB[i] && CreaturesB[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesB[i].disable()
				CreaturesB[i].delete()
				endif 
			endwhile 
			
		GroupArray[4] =	0
		CreaturesB[0] = none					
		CreaturesB[1] = none					
		CreaturesB[2] = none						
		CreaturesB[3] = none	
		CreaturesBCount = 0
			
		elseif SelectedGroup == "CreaturesC"
		
					while i > 0
			i -= 1
				if CreaturesC[i] && CreaturesC[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesC[i].disable()
				CreaturesC[i].delete()
				endif 
			endwhile 
		GroupArray[5] =	0
		CreaturesC[0] = none					
		CreaturesC[1] = none					
		CreaturesC[2] = none						
		CreaturesC[3] = none
		CreaturesCCount = 0
	
	
		elseif SelectedGroup == "CreaturesD"
		
					while i > 0
			i -= 1
				if CreaturesD[i] && CreaturesD[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesD[i].disable()
				CreaturesD[i].delete()
				endif 
			endwhile 
		GroupArray[6] =	0
		CreaturesD[0] = none					
		CreaturesD[1] = none					
		CreaturesD[2] = none						
		CreaturesD[3] = none	
		CreaturesDCount = 0
	
		elseif SelectedGroup == "CreaturesE"
		
			while i > 0
			i -= 1
				if CreaturesE[i] && CreaturesE[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesE[i].disable()
				CreaturesE[i].delete()
				endif 
			endwhile 
		GroupArray[7] =	0
		CreaturesE[0] = none					
		CreaturesE[1] = none					
		CreaturesE[2] = none						
		CreaturesE[3] = none	
		CreaturesECount = 0
	
		elseif SelectedGroup == "CreaturesF"
			while i > 0
			i -= 1
				if CreaturesF[i] && CreaturesF[i].IsInFaction(cfgqst.NakedGhostFaction)
				CreaturesF[i].disable()
				CreaturesF[i].delete()
				endif 
			endwhile 
			
		GroupArray[8] =	0
		CreaturesF[0] = none					
		CreaturesF[1] = none					
		CreaturesF[2] = none						
		CreaturesF[3] = none	
		CreaturesFCount = 0

		endif 


		;ReDefine Scenario
		
		
		if (cfgqst.DefeatTypeGeneral == "AreHumans") && (RapersACount == 0) && (RapersBCount == 0) && (RapersCCount == 0)
			if (CreaturesACount > 0) || (CreaturesBCount > 0) || (CreaturesCCount > 0) || (CreaturesDCount > 0) || (CreaturesECount > 0) || (CreaturesFCount > 0)
			cfgqst.DefeatTypeGeneral = "AreFunny"
			cfgqst.DefeatType = "Humans"
			else 		
			cfgqst.AbortAll = true 		
			endif 
		endif 
;/
	UpdateRapers = new Actor[4]	
	UpdateRapers[0] = none				
	UpdateRapers[1] = none				
	UpdateRapers[2] = none					
	UpdateRapers[3] = none
	UpdateRapersCount = 0	

	if Nym()
		
		UpdateRapersA()

	endif 
	/;

Endfunction


int Property UpdateRapersCount Auto 

Bool Function UpdateSingleRaper(String GroupName, int Count, actor akActor)			;#UpdateSingleRaper
	
	String akActorName
	if Nym()
	akActorName = cfgqst.GetActorName(akActor)
	endif 

	if akActor
	
		if akActor.IsDead()
		NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] REMOVE --> IsDead")
		return false
		
		elseif akActor.IsOnMount()
		NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] REMOVE --> IsMounted")
		return false
		elseif !akActor.Is3DLoaded()
		NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] %NOTE --> no 3DLoaded")
			akActor.MoveTo(cfgqst.PlayerRef)
			Utility.Wait(0.1)
			if !akActor.Is3DLoaded()
			NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] %NOTE --> STILL no 3DLoaded")
			else 
			NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] %NOTE --> MOVED -> 3DLoaded")
			endif 
		return true
		else 
		NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] VALID")
		return true 
		endif 
	else 
	NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] NONE --> noActor")
	return false
		
	endif 

EndFunction 

	
Bool Function UpdateGroup(String GroupName)		;#UpdateGroup
	DebugTrace("UpdateGroup ["+GroupName+"] START")
	;##PRIO 

	String ActorStatus = "Present"
	int iCount = 4
	
	UpdateRapers = new Actor[24]	
	UpdateRapers[0] = None						
	UpdateRapers[1] = None						
	UpdateRapers[2] = None						
	UpdateRapers[3] = None
	
	UpdateRapers[4] = None						
	UpdateRapers[5] = None						
	UpdateRapers[6] = None						
	UpdateRapers[7] = None
	
	UpdateRapers[8] = None						
	UpdateRapers[9] = None						
	UpdateRapers[10] = None						
	UpdateRapers[11] = None
	
	UpdateRapers[12] = None						
	UpdateRapers[13] = None						
	UpdateRapers[14] = None						
	UpdateRapers[15] = None	
	
	UpdateRapers[16] = None						
	UpdateRapers[17] = None						
	UpdateRapers[18] = None						
	UpdateRapers[19] = None
	
	UpdateRapers[20] = None						
	UpdateRapers[21] = None						
	UpdateRapers[22] = None						
	UpdateRapers[23] = None
	UpdateRapersCount = 0

	; --- TRANSFER GROUP > Temp Group --- ;
	
	if GroupName == "Fappers"
	
	DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+RapersACount) 
		
		iCount = 24
		
		while iCount > 0		
		iCount -= 1	
			if Fappers[iCount] && UpdateSingleRaper(GroupName, iCount, Fappers[iCount])
			UpdateRapers[UpdateRapersCount] = Fappers[iCount]	
			UpdateRapersCount += 1		
			endif
			if Fappers[iCount]
			Fappers[iCount] = none	
			endif 
		endwhile	
		FapperCount = 0
	
	elseif GroupName == "RapersA"
	
	DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+RapersACount) 
		
		iCount = 4
		
		while iCount > 0		
		iCount -= 1	
			if RapersA[iCount] && UpdateSingleRaper(GroupName, iCount, RapersA[iCount])
			UpdateRapers[UpdateRapersCount] = RapersA[iCount]	
			UpdateRapersCount += 1		
			endif
			if RapersA[iCount]
			RapersA[iCount] = none	
			endif 
		endwhile	
		RapersACount = 0

	elseif GroupName == "RapersB"
	
	DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+RapersBCount) 
		
		iCount = 4
		
		while iCount > 0		
		iCount -= 1	
			if RapersB[iCount] && UpdateSingleRaper(GroupName, iCount, RapersB[iCount])
			UpdateRapers[UpdateRapersCount] = RapersB[iCount]	
			UpdateRapersCount += 1		
			endif
			if RapersB[iCount]
			RapersB[iCount] = none	
			endif 
		endwhile	
		RapersBCount = 0
		
	elseif GroupName == "RapersC"
	
	DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+RapersCCount) 
		
		iCount = 4
		
		while iCount > 0		
		iCount -= 1	
			if RapersC[iCount] && UpdateSingleRaper(GroupName, iCount, RapersC[iCount])
			UpdateRapers[UpdateRapersCount] = RapersC[iCount]	
			UpdateRapersCount += 1		
			endif
			if RapersC[iCount]
			RapersC[iCount] = none	
			endif 
		endwhile	
		RapersCCount = 0

	elseif GroupName == "CreaturesA"
	
		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesACount) 
		
		iCount = 4
		
		while iCount > 0		
		iCount -= 1	
			if CreaturesA[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesA[iCount])
			UpdateRapers[UpdateRapersCount] = CreaturesA[iCount]	
			UpdateRapersCount += 1		
			endif
			if CreaturesA[iCount]
			CreaturesA[iCount] = none	
			endif 
		endwhile	
		CreaturesACount = 0
		
	elseif GroupName == "CreaturesB"

		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesBCount)

		iCount = 4
		while iCount > 0
			iCount -= 1
			if CreaturesB[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesB[iCount])
				UpdateRapers[UpdateRapersCount] = CreaturesB[iCount]
				UpdateRapersCount += 1
			endif
			if CreaturesB[iCount]
				CreaturesB[iCount] = none
			endif
		endwhile
		CreaturesBCount = 0

	elseif GroupName == "CreaturesC"

		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesCCount)

		iCount = 4
		while iCount > 0
			iCount -= 1
			if CreaturesC[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesC[iCount])
				UpdateRapers[UpdateRapersCount] = CreaturesC[iCount]
				UpdateRapersCount += 1
			endif
			if CreaturesC[iCount]
				CreaturesC[iCount] = none
			endif
		endwhile
		CreaturesCCount = 0

	elseif GroupName == "CreaturesD"

		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesDCount)

		iCount = 4
		while iCount > 0
			iCount -= 1
			if CreaturesD[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesD[iCount])
				UpdateRapers[UpdateRapersCount] = CreaturesD[iCount]
				UpdateRapersCount += 1
			endif
			if CreaturesD[iCount]
				CreaturesD[iCount] = none
			endif
		endwhile
		CreaturesDCount = 0


	elseif GroupName == "CreaturesE"

		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesECount)

		iCount = 4
		while iCount > 0
			iCount -= 1
			if CreaturesE[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesE[iCount])
				UpdateRapers[UpdateRapersCount] = CreaturesE[iCount]
				UpdateRapersCount += 1
			endif
			if CreaturesE[iCount]
				CreaturesE[iCount] = none
			endif
		endwhile
		CreaturesECount = 0


	elseif GroupName == "CreaturesF"

		DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+CreaturesFCount)

		iCount = 4
		while iCount > 0
			iCount -= 1
			if CreaturesF[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesF[iCount])
				UpdateRapers[UpdateRapersCount] = CreaturesF[iCount]
				UpdateRapersCount += 1
			endif
			if CreaturesF[iCount]
				CreaturesF[iCount] = none
			endif
		endwhile
		CreaturesFCount = 0
		
	elseif GroupName == "Aggressors"
	
	DebugTrace("UpdateGroup ["+GroupName+"] AFTER Group Size: "+AggressorCount) 
		
		iCount = 4
		
		while iCount > 0		
		iCount -= 1	
			if Aggressors[iCount] && UpdateSingleRaper(GroupName, iCount, Aggressors[iCount])
			UpdateRapers[UpdateRapersCount] = Aggressors[iCount]	
			UpdateRapersCount += 1		
			endif
			if Aggressors[iCount]
			Aggressors[iCount] = none	
			endif 
		endwhile	
		AggressorCount = 0
		
	endif 
	
	DebugTrace("UpdateGroup ["+GroupName+"] MID UpdateRapersCount: "+UpdateRapersCount) 

	Bool GroupEmpty = false

	if UpdateRapersCount == 0
	DebugTrace("UpdateGroup ["+GroupName+"] Empty - RemoveGroup") 
	GroupEmpty = true
	endif 
	
	DebugTrace("UpdateGroup ["+GroupName+"] MID RapersACount: "+RapersACount) 

	;Transfer Group -> Back To Actual GroUP

	if GroupName == "Fappers"
	
		if GroupEmpty 
		GroupArray[0] = 0
		endif 
		
		while UpdateRapersCount > 0
		UpdateRapersCount -= 1
			if UpdateRapers[iCount] 
			Fappers[FapperCount] = UpdateRapers[UpdateRapersCount]	
			FapperCount += 1	
			endif
		endwhile	
		NymTrace("UpdateRapersCount "+UpdateRapersCount)
		NymTrace("FapperCount "+FapperCount)
	UpdateRapersCount = FapperCount	
	
	
	elseif GroupName == "RapersA"
		
		if GroupEmpty 
		GroupArray[0] = 0
		endif 
		
		while UpdateRapersCount > 0
		UpdateRapersCount -= 1
			if UpdateRapers[iCount] 
			RapersA[RapersACount] = UpdateRapers[UpdateRapersCount]	
			RapersACount += 1	
			endif
		endwhile	
	UpdateRapersCount = RapersACount	
	
	elseif GroupName == "RapersB"
		
		if GroupEmpty 
		GroupArray[1] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				RapersB[RapersBCount] = UpdateRapers[UpdateRapersCount]
				RapersBCount += 1
			endif
		endwhile
		UpdateRapersCount = RapersBCount

	elseif GroupName == "RapersC"
		
		if GroupEmpty 
		GroupArray[2] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				RapersC[RapersCCount] = UpdateRapers[UpdateRapersCount]
				RapersCCount += 1
			endif
		endwhile
		UpdateRapersCount = RapersCCount
			
	elseif GroupName == "CreaturesA"
		
		if GroupEmpty 
		GroupArray[3] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesA[CreaturesACount] = UpdateRapers[UpdateRapersCount]
				CreaturesACount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesACount	
		
	elseif GroupName == "CreaturesB"
		
		if GroupEmpty 
		GroupArray[4] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesB[CreaturesBCount] = UpdateRapers[UpdateRapersCount]
				CreaturesBCount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesBCount

	elseif GroupName == "CreaturesC"
		
		if GroupEmpty 
		GroupArray[5] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesC[CreaturesCCount] = UpdateRapers[UpdateRapersCount]
				CreaturesCCount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesCCount

	elseif GroupName == "CreaturesD"
		
		if GroupEmpty 
		GroupArray[6] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesD[CreaturesDCount] = UpdateRapers[UpdateRapersCount]
				CreaturesDCount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesDCount

	elseif GroupName == "CreaturesE"
		
		if GroupEmpty 
		GroupArray[7] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesE[CreaturesECount] = UpdateRapers[UpdateRapersCount]
				CreaturesECount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesECount

	elseif GroupName == "CreaturesF"
		
		if GroupEmpty 
		GroupArray[8] = 0
		endif 
		
		while UpdateRapersCount > 0
			UpdateRapersCount -= 1
			if UpdateRapers[iCount]
				CreaturesF[CreaturesFCount] = UpdateRapers[UpdateRapersCount]
				CreaturesFCount += 1
			endif
		endwhile
		UpdateRapersCount = CreaturesFCount
		
	elseif GroupName == "Aggressors"
		
		;transer TempRapers back to actual Group		
		while UpdateRapersCount > 0
		UpdateRapersCount -= 1
			if UpdateRapers[iCount] 
			Aggressors[AggressorCount] = UpdateRapers[UpdateRapersCount]	
			;remove aggressors from the Whipping faction for savety
			if Aggressors[AggressorCount].IsInFaction(WhippingFaction)
			Aggressors[AggressorCount].RemoveFromFaction(WhippingFaction)
			endif 
			AggressorCount += 1	

			endif
		endwhile	
		
	UpdateRapersCount = AggressorCount	
	endif 
			
	if UpdateRapersCount == 0
		if Nym()
		Debug.Messagebox("UpdateGroup ["+GroupName+"] FINAL UpdateRapersCount: "+UpdateRapersCount) 
		endif 
	DebugTrace("UpdateGroup ["+GroupName+"] FINAL UpdateRapersCount: "+UpdateRapersCount) 
	return false 
	elseif UpdateRapersCount > 0
	DebugTrace("UpdateGroup ["+GroupName+"] FINAL Group Size: "+UpdateRapersCount) 
	return true 
	endif 

EndFunction 

Bool Function FillAggressorGroup(String GroupName, int GroupCount)		;#FillAggressorGroup
	DebugTrace("FillAggressorGroup ["+GroupName+"]["+GroupCount+"] START")
	;##PRIO 

	int iCount = GroupCount
	
	Aggressors = new Actor[4]
	Aggressors[0] = none				
	Aggressors[1] = none				
	Aggressors[2] = none					
	Aggressors[3] = none
	AggressorCount = 0	
	
	; --- TRANSFERGROUP --- ;
	if GroupName == "RapersA"
	
		while iCount > 0		
		iCount -= 1	
			if RapersA[iCount] && UpdateSingleRaper(GroupName, iCount, RapersA[iCount])
			Aggressors[AggressorCount] = RapersA[iCount]	
			AggressorCount += 1		
			endif
		endwhile	

	elseif GroupName == "RapersB"
	
		while iCount > 0		
		iCount -= 1	
			if RapersB[iCount] && UpdateSingleRaper(GroupName, iCount, RapersB[iCount])
			Aggressors[AggressorCount] = RapersB[iCount]	
			AggressorCount += 1		
			endif
		endwhile	
		
	elseif GroupName == "RapersC"
	
		while iCount > 0		
		iCount -= 1	
			if RapersC[iCount] && UpdateSingleRaper(GroupName, iCount, RapersC[iCount])
			Aggressors[AggressorCount] = RapersC[iCount]	
			AggressorCount += 1		
			endif
		endwhile	

	elseif GroupName == "CreaturesA"

		while iCount > 0		
		iCount -= 1	
			if CreaturesA[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesA[iCount])
			Aggressors[AggressorCount] = CreaturesA[iCount]	
			AggressorCount += 1		
			endif
		endwhile	
		
	elseif GroupName == "CreaturesB"

		while iCount > 0
			iCount -= 1
			if CreaturesB[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesB[iCount])
				Aggressors[AggressorCount] = CreaturesB[iCount]
				AggressorCount += 1
			endif
		endwhile

	elseif GroupName == "CreaturesC"

		while iCount > 0
			iCount -= 1
			if CreaturesC[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesC[iCount])
				Aggressors[AggressorCount] = CreaturesC[iCount]
				AggressorCount += 1
			endif
		endwhile

	elseif GroupName == "CreaturesD"

		while iCount > 0
			iCount -= 1
			if CreaturesD[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesD[iCount])
				Aggressors[AggressorCount] = CreaturesD[iCount]
				AggressorCount += 1
			endif
		endwhile

	elseif GroupName == "CreaturesE"

		while iCount > 0
			iCount -= 1
			if CreaturesE[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesE[iCount])
				Aggressors[AggressorCount] = CreaturesE[iCount]
				AggressorCount += 1
			endif
		endwhile

	elseif GroupName == "CreaturesF"

		while iCount > 0
			iCount -= 1
			if CreaturesF[iCount] && UpdateSingleRaper(GroupName, iCount, CreaturesF[iCount])
				Aggressors[AggressorCount] = CreaturesF[iCount]
				AggressorCount += 1
			endif
		endwhile		
		
	endif 
	
	if AggressorCount == 0
	
		if Nym()
		Debug.Messagebox("FillAggressorGroup ["+GroupName+"] FINAL Group Size !!!NONE!!! - Updating the Group: "+AggressorCount) 
		endif
	DebugTrace("FillAggressorGroup ["+GroupName+"] NO ACTORS! -> Updating the Group")
	UpdateGroup(Groupname)
	
	elseif AggressorCount < GroupCount 
	
	DebugTrace("FillAggressorGroup ["+GroupName+"] ACTORS MISSING -> Updating the Group")
	UpdateGroup(Groupname)
	
		if Nym()
		Debug.Messagebox("FillAggressorGroup ["+GroupName+"] FINAL Group Size REDUCED!: "+AggressorCount) 
		endif
	
	endif 
	
	DebugTrace("FillAggressorGroup ["+GroupName+"] FINAL Group Size: "+AggressorCount) 

EndFunction 

Function CheckRapersA()


	; --- TRANSFERGROUP --- ;
	String ActorStatus = "Present"
	int iCount = 4
	UpdateRapers[0] = none				
	UpdateRapers[1] = none				
	UpdateRapers[2] = none					
	UpdateRapers[3] = none
	UpdateRapersCount = 0	

	NymTrace("UpdateRapersA() RapersACount BEFORE:"+RapersACount)
	
	;Transfer RapersA to UpdateRapers 
	while iCount > 0		
	iCount -= 1	
		if RapersA[iCount] 
		UpdateRapers[UpdateRapersCount] = RapersA[iCount]	
		RapersA[iCount] = none	
		UpdateRapersCount += 1		
		endif
	endwhile	

	iCount = 4
	UpdateRapersCount = 0 ;set to 0 because we now need to count how many we actually have left
	
	; --- FIND DEAD RAPERS --- ;
	while iCount > 0
	
		iCount -= 1 
	
		if !UpdateRapers[iCount]
		ActorStatus = "No Actor"
		;elseif !UpdateRapers[iCount].Is3DLoaded()	;3D not loaded, try move to player
		;ActorStatus = "No 3D"
		elseif UpdateRapers[iCount].IsDead()
		ActorStatus = "Dead"
		endif 
		
		NymTrace("UpdateRapers["+iCount+"] ActorStatus:"+ActorStatus)
		
		;MOVE RAPER 
	;	if ActorStatus == "No 3D"
	;	UpdateRapers[iCount].MoveTo(cfgqst.PlayerRef)
	;	NymTrace("No 3D - move Raper")
	;	Debug.Messagebox("No 3D - move UpdateRapers")
	;	endif

	;	Utility.Wait(0.3)

	;	if !UpdateRapers[iCount].Is3DLoaded()
	;	ActorStatus = "No 3D"
		;Debug.Messagebox("Still No 3D - move UpdateRapers")	
	;	else 
	;	ActorStatus = "Present"
	;	Debug.Messagebox("Moved UpdateRapers")	
	;	endif

	;	NymTrace("UpdateRapers["+iCount+"] ActorStatus AFTER:"+ActorStatus)
		
		if ActorStatus == "Present"
		UpdateRapersCount += 1
		else 
		UpdateRapers[iCount] = none 
		;UpdateRapersCount -= 1
		endif				
			
	endwhile
			
	if UpdateRapersCount == RapersACount
	;all good, do nothing
	else 	
		iCount = 4
		RapersACount = 0
		RapersA[0] = none
		RapersA[1] = none
		RapersA[2] = none
		RapersA[3] = none
		
		;transer TempRapers back to actual Group
		while iCount > 0		
		iCount -= 1	
			if UpdateRapers[iCount] 
			RapersA[RapersACount] = UpdateRapers[UpdateRapersCount]	
			RapersACount += 1	
			endif
		endwhile	
	endif 

	NymTrace("UpdateRapersA() RapersACount AFTER:"+RapersACount)


EndFunction 

Function GoodMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#0AAC00'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: (#msg) "+Text3)
EndFunction

	;There is an animation event called AnimObjectUnequip, which sounds like it might be what you're looking for
	;Try doing Debug.SendAnimationEvent("AnimObjectUnequip", player) and see if it works out 🙂
	;(there are also payloads called AnimObjLoad & AnimObjDraw for doing the opposite)

