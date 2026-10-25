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
String Property RaperRace Auto

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


;sslSystemConfig Property RemoveHeelEffect Auto

Bool Property IsHuman Auto ;remove?
;Bool Property IsHumanoid Auto
Bool Property IsHumanFucker Auto ;remove?

Keyword Property ActorTypeNPC Auto

Keyword Property KWD_nade_Cuffs Auto
Keyword Property KWD_nade_Armbinder Auto
Keyword Property KWD_nade_Yoke Auto
Keyword Property KWD_nade_AnkleCuffs Auto

Key[] Property Keys Auto
FormList Property nade_HumanList Auto
FormList Property nade_HumanoidList Auto
Armor [] Property DefeatBinds Auto		
Armor [] Property DefeatBindsYoke Auto		
Armor [] Property DefeatBindsArmbinder Auto	
Armor [] Property DefeatBindsAnkle Auto		;0 LEATHER, 1 Rope 01, 2 Rope 02, 3 Black, 4 Brown, 5 Gold, 6 Steel

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


bool CHECK_Stage10_running
bool CHECK_RapeSequence_running
bool CHECK_Aftermath_running

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
	elseif storqst.IsLocalSlave() 
			
		if slaveqst.ImmediatePunishment 
		cfgqst.HarderDefeat = true
		return false 
		elseif D100(90) 
		return true 
		else 
		return false 
		endif 
		
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
		elseif slaveqst.ImmediatePunishment	
		Debug.trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: ImmediatePunishment(TRUE)")
		slaveqst.ImmediatePunishment = false
		
		BadMessage("You are punished for your missbehavior")
		return Utility.RandomInt(3,4)	
			
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
		;RapeAgain (later Rape Cyles) have lower Sex Scene Count
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
			;if D100(90)			if Nym()
			
			if Nym()
				if D100(5)
				return 4
				else
				return Utility.RandomInt(2,3) 
				endif 
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
		
Function GetMainSequence()
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetMainSequence() DefeatTypeScenario: " + cfgqst.DefeatTypeScenario, 0)
    if cfgqst.AllowCreatures
        Allow_Creatures = true
    else
        Allow_Creatures = false
    endif
    if cfgqst.DefeatEscapeCrawl > 0
        Allow_EscapeCrawl = true
    endif
    if cfgqst.CivilRapeRunning
        Allow_EscapeCrawl = false
    endif
    if cfgqst.RapeAgain
        Allow_SexScenes = GetSexScenes()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(RapeAgain) " + Allow_SexScenes, 0)
        Allow_Aftermath = "Capture"
        cfgqst.Allow_EscapeDifficulty = "RandomRapeAgain"
        cfgqst.Allow_EscapeGameAftermath = true
        cfgqst.HarderDefeat = false
    elseif cfgqst.DefeatTypeScenario == "FastTravel"
        ResetAllowance()
        Allow_SexScenes = GetSexScenes()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(FastTravel) " + Allow_SexScenes, 0)
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
    elseif cfgqst.DefeatTypeScenario == "Afterlife"
        ResetAllowance()
        if cfgqst.Nym()
            Allow_SexScenes = utility.RandomInt(2, 4)
        else
            Allow_SexScenes = utility.RandomInt(2, 3)
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
    elseif cfgqst.PunishCrimeMajor && !storqst.IsLocalSlave()
        cfgqst.PunishCrimeMajor = false
        cfgqst.PunishCrimeMinor = false
        ScreenMessage("You will be punished for your major crimes")
        cfgqst.PublicExposure = 0
        cfgqst.ShortPunishment = 0
        Allow_FindSpot = true
        Allow_SexScenes = 3
        Allow_Aftermath = "Capture"
        cfgqst.Allow_EscapeDifficulty = "Hardest"
        cfgqst.Allow_EscapeGameAftermath = true
        cfgqst.Allow_Whipping = true
        cfgqst.DefeatType = "Guards"
        Allow_Creatures = false
        Allow_Foreplay = false
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: (01) cfgqst.HarderDefeat = true", 0)
    elseif cfgqst.PunishCrimeMinor && !storqst.IsLocalSlave()
        cfgqst.PunishCrimeMinor = false
        ScreenMessage("You will be punished for your minor crimes")
        cfgqst.PublicExposure = 0
        cfgqst.ShortPunishment = 0
        Allow_FindSpot = true
        Allow_SexScenes = 1
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(IsMinorCrime) " + "1", 0)
        Allow_Aftermath = "Capture"
        cfgqst.Allow_EscapeDifficulty = "Easy"
        cfgqst.Allow_EscapeGameAftermath = true
        cfgqst.Allow_Whipping = false
        cfgqst.DefeatType = "Guards"
        Allow_Creatures = false
        Allow_Foreplay = false
    elseif !Nym() && cfgqst.DefeatTypeGeneral == "AreHumans" && !cfgqst.DefeatViaSlavery && storqst.IsLocalSlave == 0 && D100(cfgqst.DefeatDeathChance)
        ScreenMessage("Your captors have a sinister smile in their faces...")
        ResetAllowance()
        Allow_FindSpot = true
        Allow_SexScenes = 1
        Allow_EscapeCrawl = false
        cfgqst.DefeatTypeScenario = "Execution"
        int y = utility.RandomInt(1, 3)
        if y == 1
            DefeatTypeExecution = "ProxyImpale"
        elseif y == 2
            DefeatTypeExecution = "ProxySoils"
        elseif y == 3
            DefeatTypeExecution = "NymraGallows"
        endif
        Allow_Aftermath = "Afterlife"
    elseif AllowShortDefeat() && !cfgqst.DefeatViaSlavery
        cfgqst.ShortPunishment = GetShortDefeatScenario()
        if cfgqst.ShortPunishment > 1 && D100(33.0)
            cfgqst.ShortPunishment = 1
        endif
        if cfgqst.DefeatSpotAndEscape
            Allow_FindSpot = true
        endif
        if storqst.IsLocalSlave > 0 && cfgqst.ShortPunishment == 4
            cfgqst.ShortPunishment = 3
        endif
        if Nym()
        endif
        if cfgqst.ShortPunishment == 1
            ScreenMessage("This will be over quick, bow down. [SHORT SEX]")
            Allow_SexScenes = 1
            Allow_Aftermath = "None"
            cfgqst.Allow_EscapeGameAftermath = false
            Allow_ForcedBathing = false
            Allow_GoldenShower = false
            Allow_Foreplay = false
        elseif cfgqst.ShortPunishment == 2
            ScreenMessage("Feel the whip! [SHORT WHIPPING]")
            cfgqst.Allow_Whipping = true
            Allow_Aftermath = "Capture"
            cfgqst.Allow_EscapeDifficulty = "Easy"
            cfgqst.Allow_EscapeGameAftermath = false
            Allow_Creatures = false
        elseif cfgqst.ShortPunishment == 3
            ScreenMessage("Lets see how you escape from that! [SHORT CAPTURE]")
            Allow_Aftermath = "Capture"
            cfgqst.Allow_EscapeDifficulty = "Normal"
            cfgqst.Allow_EscapeGameAftermath = false
            Allow_Creatures = false
        elseif cfgqst.ShortPunishment == 4
            ScreenMessage("You have to pay a fine for your misdemeanor! [SHORT FINE]")
            Allow_PayFine = true
            Allow_FindSpot = false
            Allow_Creatures = false
        elseif cfgqst.ShortPunishment == 5
            Allow_Creatures = false
            if D100(cfgqst.DefeatPeeProb)
                ScreenMessage("Like a golden shower you dirty scum? [SHORT PEE]")
                Allow_GoldenShower = true
            else
                ScreenMessage("Get yourself clean. Fast! [SHORT BATHING]")
                Allow_ForcedBathing = true
            endif
            Allow_Aftermath = "None"
            cfgqst.Allow_EscapeGameAftermath = false
        endif
    elseif cfgqst.DefeatTypeScenario == "DD"
        NymTrace("cfgqst.DefeatTypeScenario == DD")
        ResetAllowance()
        Allow_FindSpot = true
        Allow_SexScenes = GetSexScenes()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(DD) " + Allow_SexScenes, 0)
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
    else
        if cfgqst.DefeatSpotAndEscape
            Allow_FindSpot = true
        endif
        if cfgqst.DefeatForeplayChance > 0.0
            Allow_Foreplay = true
        endif
        Allow_SexScenes = GetSexScenes()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(Regular Sequence) " + Allow_SexScenes, 0)
        Allow_Aftermath = "Random"
        cfgqst.Allow_EscapeGameAftermath = true
        if cfgqst.DefeatWhipProb > 0.0
            cfgqst.Allow_Whipping = true
        endif
        cfgqst.Allow_EscapeDifficulty = "Random"
        if cfgqst.DefeatTypeGeneral == "AreHumans" || cfgqst.DefeatType == "Falmers" || cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Draugr"
            if D100(75.0)
                Allow_AddBinds = true
                Allow_AddCollar = true
            elseif D100(75.0)
                Allow_AddCollar = true
            else
                Allow_AddCollar = false
                Allow_AddBinds = false
            endif
        endif
        if cfgqst.DefeatViaSlavery || cfgqst.DefeatEntranceVia == "Sold as Slave" || cfgqst.DefeatEntranceVia == "Sold as Public Slave"
            Allow_FindSpot = true
            Allow_Aftermath = "Capture"
            if cfgqst.RapeAgain
                cfgqst.Allow_EscapeDifficulty = "HardestRapeAgain"
                cfgqst.Allow_EscapeGameAftermath = true
            else
                cfgqst.Allow_EscapeDifficulty = "Hard"
                cfgqst.Allow_EscapeGameAftermath = true
            endif
        endif
        if cfgqst.DefeatTypeGeneral == "AreHumanoids"
            Allow_ForcedBathing = false
        elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
            Allow_ForcedBathing = false
            cfgqst.Allow_Whipping = false
            Allow_Aftermath = "Escape"
        elseif cfgqst.DefeatTypeGeneral == "AreFunny"
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
    if Nym()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: :::::::::::::::::::::: #Sequence STEP 1 ::::::::::::::::::::::", 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: DefeatEntranceVia: " + cfgqst.DefeatEntranceVia, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapeAgain: " + cfgqst.RapeAgain, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: DefeatTypeScenario: " + cfgqst.DefeatTypeScenario, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: DefeatTypeGeneral: " + cfgqst.DefeatTypeGeneral, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: DefeatType: " + cfgqst.DefeatType, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_Creatures: " + Allow_Creatures, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_FindSpot: " + Allow_FindSpot, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_ForcedBathing: " + Allow_ForcedBathing, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_GoldenShower: " + Allow_GoldenShower, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_Foreplay: " + Allow_Foreplay, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_SexScenes: " + Allow_SexScenes, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_Whipping: " + cfgqst.Allow_Whipping, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_Aftermath: " + Allow_Aftermath, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_EscapeCrawl: " + Allow_EscapeCrawl, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_EscapeGameAftermath: " + cfgqst.Allow_EscapeGameAftermath, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_EscapeDifficulty: " + cfgqst.Allow_EscapeDifficulty, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Allow_PayFine: " + Allow_PayFine, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: ShortDefeat: " + cfgqst.ShortPunishment, 0)
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

		if storqst.IsSlotOccupied(cfgqst.PlayerRef, 48)
		cfgqst.Strip(48, cfgqst.PlayerRef)	;Bikini Tops (Dwarven etc.)
		defqst.PlaySoundStripCloth()
		endif

	
;	cfgqst.Strip(48, cfgqst.PlayerRef)		
;	cfgqst.GroupStripMaintenance()
	
		if storqst.IsSlotOccupied(cfgqst.PlayerRef, 32)
		cfgqst.Strip(32, cfgqst.PlayerRef)
		defqst.PlaySoundStripCloth()
		endif
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
	
		if storqst.IsSlotOccupied(cfgqst.PlayerRef, 37)
		defqst.PlaySoundStripCloth()	
		cfgqst.Strip(37, cfgqst.PlayerRef)		;boots
		endif
		
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


Function Fragment_1()
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 1000 ()", 0)
    if Nym()
        if CHECK_Aftermath_running
            NymBox("ERROR CHECK_Aftermath_running")
        endif
        if CHECK_Stage10_running
            NymBox("ERROR CHECK_Stage10_running")
        endif
        if CHECK_RapeSequence_running
            NymBox("ERROR CHECK_RapeSequence_running")
        endif
    endif
    if cfgqst.DefeatTypeGeneral == "Giving Up/Abort"
        cfgqst.AbortAll = true
    endif
    if cfgqst.SlaveAuction
        cfgqst.SlaveAuction = false
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 1000 (SlaveAuction #END)", 0)
        if folqst.Actor_Follower01
            folidle01.StartDoingNothing_01(false)
            cfgqst.ResetIdle(folqst.Actor_Follower01)
        endif
        if folqst.Actor_Follower02
            folidle01.StartDoingNothing_02(false)
            cfgqst.ResetIdle(folqst.Actor_Follower02)
        endif
        folidle01.EndFollowerIdleQuest_01()
        Vehicle("Remove")
        Stop()
    else
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 1000 (Defeat #END)", 0)
        cfgqst.CheckFastTravel()
        if cfgqst.AbortAll
            cfgqst.RapeAgain = false
            cfgqst.DefeatTypeScenario = "None"
            StartSlavery = false
        else
            storqst.NakedExperience(1)
        endif
        RemoveSpawnedRapers()
        if cfgqst.DefeatTypeScenario == "Afterlife" || cfgqst.DefeatTypeScenario == "Execution"
            utility.Wait(5.0)
        else
            cfgqst.FadeToBlack(false)
        endif
        if cfgqst.RapeAgain && Rescued
            cfgqst.RapeAgain = false
            NymBox("Naked Defeat #ERROR 1551 - RapeAgain + Rescued")
        endif
        if cfgqst.RapeAgain
            cfgqst.RapeAgain = false
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 1000 (RAPE AGAIN FALSE)", 0)
            HairChangedOnce = false
            if VictimCount > 0
                folidle01.StartDoingNothing_01(true)
            endif
            if VictimCount > 1
                folidle01.StartDoingNothing_02(true)
                folidle01.StartDoingNothing_02(true)
            endif
            if !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Cuffs") && !(cfgqst.DefeatTypeScenario == "Armbinder")
                RemoveDefeatBinds()
            endif
            Stop()
        else
            RemoveDefeatBinds()
            cfgqst.RemoveChains()
            Vehicle("Remove")
            if NoActors_StartSlavery
                ScreenMessage("They cannot fuck you but they can sell you...")
            elseif cfgqst.AbortAll
                ScreenMessage("NAKED DEFEAT Aborted")
            elseif Rescued && cfgqst.DefeatTypeScenario == "Afterlife"
                cfgqst.DefeatTypeScenario == "None"
                ScreenMessage("You are alive. Again?")
            elseif Rescued
                ScreenMessage("You are miraculously rescued!")
            elseif StartTeleportIntoDanger
                ScreenMessage("Fuck... Something went wrong during the Ritual!")
            elseif StartSlavery
                ScreenMessage("You are blindfolded and carried elsewhere...")
            elseif NoActorsAbort
                ScreenMessage("Nobody there to take advantage of your situation.")
            elseif cfgqst.ShortPunishment > 0
                ScreenMessage("That was over surprisingly quick. They let you go!")
            elseif IsGuardEndDefeat
                ScreenMessage("The guard defeated you...but it seems they wont rape you.")
            elseif OnlyAnimals && !cfgqst.CivilRapeRunning
                ScreenMessage("No humans around to take advantage of your situation.")
                OnlyAnimals = false
                NoActorsAbort = true
            elseif storqst.IsLocalSlave()
            elseif cfgqst.DefeatViaSlavery
                ScreenMessage("Your owners got bored of you and let you go.")
            elseif cfgqst.CivilRapeRunning && !isArrested
                ScreenMessage("You are free to go. Follow the rules in the future!")
            elseif cfgqst.DefeatTypeScenario == "Execution"
                ScreenMessage("You are DEAD")
            elseif cfgqst.DefeatTypeScenario == "Afterlife"
                ScreenMessage("You feel like you are falling...")
                utility.Wait(1.0)
                storqst.BlackFadeLocked = 666
                cfgqst.FadeToBlack(true)
            elseif !isArrested
            endif
            isArrested = false
            SexLab.ThreadSlots.StopAll()
            ResetFollowers()
            cfgqst.FollowerStripUpdate()
            if Allow_EscapeCrawl
                if !StartSlavery && !Rescued && !NoActorsAbort && !cfgqst.AbortAll
                    cfgqst.SlowDownPlayer("Start", false)
                    cfgqst.Immobilize(false)
                    cfgqst.ImmobilizeCrawl(true)
                    Escape()
                    cfgqst.Immobilize(false)
                    cfgqst.SlowDownPlayer("End", false)
                endif
                defqst.UnequipTonguesPlayer("Forced")
                defqst.DrippingPussy(false)
                cfgqst.Crawl(cfgqst.PlayerRef, false)
                if folqst.IsWithUs_Follower(0)
                    utility.Wait(0.5)
                    cfgqst.Crawl(folqst.Actor_Follower01, false)
                endif
                if folqst.IsWithUs_Follower(1)
                    utility.Wait(0.5)
                    cfgqst.Crawl(folqst.Actor_Follower02, false)
                endif
                cfgqst.DefeatQuestRunning = false
            endif
            if cfgqst.HeelsFix
                cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, "DEFEAT END (Stage 1000) Restore Player")
                if folqst.IsWithUs_Follower(0)
                    cfgqst.RestoreHeelsEffectOnActor(folqst.NakedFollower[0], "DEFEAT END (Stage 1000) Restore Follower[0]")
                endif
                if folqst.IsWithUs_Follower(1)
                    cfgqst.RestoreHeelsEffectOnActor(folqst.NakedFollower[1], "DEFEAT END (Stage 1000) Restore Follower[1]")
                endif
                if folqst.IsWithUs_Follower(2)
                    cfgqst.RestoreHeelsEffectOnActor(folqst.NakedFollower[2], "DEFEAT END (Stage 1000) Restore Follower[2]")
                endif
                if folqst.IsWithUs_Follower(3)
                    cfgqst.RestoreHeelsEffectOnActor(folqst.NakedFollower[3], "DEFEAT END (Stage 1000) Restore Follower[3]")
                endif
            endif
            cfgqst.SlowDownPlayer("End", false)
            cfgqst.Crawl(cfgqst.PlayerRef, false)
            cfgqst.Immobilize(false)
            if cfgqst.DefeatEntranceVia == "Orgy" && storqst.IsLocalSlave()
                slaveqst.SexTaskDuration = slaveqst.SexTaskDuration + 1
                slaveqst.CompleteSlaveSexTask()
            endif
            calm(false, 1)
            CalmFollowers(false)
            if spe_actor.IsActorCalmed(cfgqst.PlayerRef)
                spe_actor.SetActorCalmed(cfgqst.PlayerRef, false)
                NymTrace("#CALM OFF Player only")
            endif
            if cfgqst.PlayerRef.IsInFaction(DefeatFaction)
                cfgqst.PlayerRef.RemoveFromFaction(DefeatFaction)
            endif
            ResetValues()
            cfgqst.SexSceneCountPlayer = 0.0
            cfgqst.ResetExpressions()
            if storqst.ModAcheron && !storqst.AcheronBleedoutFix
                if !cfgqst.AcheronEnabled
                    cfgqst.EnableAcheron()
                endif
            endif
            cfgqst.SendModEvents(false)
            cfgqst.PlaceFloor("Remove")
            cfgqst.PlaceLight("Remove")
            cfgqst.AddVictimsToCalmFactions(false)
            if cfgqst.PlayerRef.IsInFaction(cfgqst.ProtectedActorFaction)
                cfgqst.PlayerRef.RemoveFromFaction(cfgqst.ProtectedActorFaction)
            endif
            if storqst.ModAcheron && !storqst.AcheronBleedoutFix
                if acheron.IsDefeated(cfgqst.PlayerRef)
                    acheron.RescueActor(cfgqst.PlayerRef, false)
                    utility.Wait(3.0)
                    acheron.ReleaseActor(cfgqst.PlayerRef)
                elseif acheron.IsPacified(cfgqst.PlayerRef)
                    acheron.ReleaseActor(cfgqst.PlayerRef)
                    debug.SendAnimationEvent(cfgqst.PlayerRef, "IdleForceDefaultState")
                endif
            endif
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #STOP", 0)
            Stop()
            if NoActors_StartSlavery
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: No Actors - SSLV Entry", 0)
                NoActors_StartSlavery = false
                if cfgqst.DefeatRobberyProb > 0.0
                    if storqst.ImmersiveRobbery
                        cfgqst.StartRobberyAtLocation()
                    endif
                endif
                if Nym()
                    message.ResetHelpMessage("SoldIntoSlavery")
                    storqst.MSG_SlaverySold.ShowAsHelpMessage("SoldIntoSlavery", 4.0, 0.0, 1)
                    utility.Wait(1.0)
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
                    message.ResetHelpMessage("SoldIntoSlavery")
                    storqst.MSG_SlaverySold.ShowAsHelpMessage("SoldIntoSlavery", 4.0, 0.0, 1)
                    utility.Wait(1.0)
                endif
                if storqst.ModSS
                    CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
                else
                    debug.Messagebox("Simple Slavery is NOT installed -> you are free")
                endif
            elseif StartAfterlife
                StartAfterlife = false
                if Nym()
                    message.ResetHelpMessage("AfterLifeStart")
                    storqst.MSG_AfterLifeStart.ShowAsHelpMessage("AfterLifeStart", 4.0, 0.0, 1)
                    utility.Wait(1.0)
                endif
                CreateModEvent("NakedDefeatTransition", "Afterlife")
            endif
            cfgqst.AbortAll = false
            IsEndOfDefeat = false
            debug.trace(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 1000 ::::::::::::::::::::::: ##Shutdow##:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
            debug.trace(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
        endif
    endif
EndFunction


Function CreateModEvent(String sEventName, String sEventType)	;#CreateModEvent
NymTrace("CreateModEvent - Name: "+sEventName+" Type: "+sEventType)
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
	CHECK_Aftermath_running = true
	NymTrace("Allow_Aftermath = "+Allow_Aftermath)	
	Bool isRescued = false	
		
	while cfgqst.SexFinished && cfgqst.ModEnabled && (!cfgqst.AbortAll)
	Utility.Wait(0.5)
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
		CHECK_Aftermath_running = false
		StartPlayerFree()
		else
		ScreenMessage("The evil bastards betrayed you!")
		cfgqst.DefeatTypeScenario == "none"
		cfgqst.Allow_EscapeDifficulty = "Hard"
		StartPlayerRobbed()
		CHECK_Aftermath_running = false
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
		CHECK_Aftermath_running = false
		StartResurrection = true 
		SetStage(1000)	
		
	; --- "Special: Execution" --- ;	
	; we are executed/dead and send to the Afterlife 
	elseif cfgqst.DefeatTypeScenario == "Execution"		
		
		;ScreenMessage("Welcome in Hell!")			
	;	StartAfterlife = true
		;cfgqst.DefeatTransition = "Send To Execution"
		CHECK_Aftermath_running = false
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
			storqst.FastTravelStatus = 1 ;Save Travels
			cfgqst.RemoveAllDDevices()	
			else
			ScreenMessage("Fuck... Something went wrong during the Ritual!")
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
					if storqst.ImmersiveRobbery
					cfgqst.StartRobberyAtLocation()
					endif 
				endif 
				CHECK_Aftermath_running = false
				StartTeleportIntoDanger = true		;Stage 1000 will MOVE us via cfgqst.LocationEvent -> the event will wait for CalmQuest to end
				SetStage(1000)	
			endif
			
		;Save Ritual Outcome 	
		else
			Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: FastTravel Aftermath") 
			if D100(95)		;90 Chance of Fast Travel to suceed
			
			cfgqst.RemoveAllDDevices()
			CHECK_Aftermath_running = false
			StartPlayerFree()
			cfgqst.FastTravel("Enabled", true)	
			storqst.FastTravelStatus = 1 ;Save Travels
			else
		
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
					if storqst.ImmersiveRobbery
					cfgqst.StartRobberyAtLocation()
					endif 
				endif 
				CHECK_Aftermath_running = false
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
		CHECK_Aftermath_running = false
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
		CHECK_Aftermath_running = false
		SendModEvent("EndofDefeat")	
							
	; --- "Capture" --- ; 
	elseif Allow_Aftermath == "Capture"
	CHECK_Aftermath_running = false
	StartPlayerCaptured()
	; --- "Free / Escape" --- ;
	elseif Allow_Aftermath == "Escape"
	CHECK_Aftermath_running = false
	StartPlayerFree()
	
	;>>>>>>>> AFTERMATH FREE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	
	
	; --- "None" --- ; 			
	elseif Allow_Aftermath == "None"	
	CHECK_Aftermath_running = false	
	StartPlayerFree()	
	else 
	CHECK_Aftermath_running = false
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
	;FactionScans!
	return true
	elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
	return false
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
		
		if (cfgqst.DefeatType == "Trolls") || (cfgqst.DefeatType == "Giants") || (cfgqst.DefeatType == "Gargoyles") ||  (cfgqst.DefeatType == "Draugr") || (cfgqst.DefeatType == "Falmers") || (cfgqst.DefeatType == "Undead") || (cfgqst.DefeatType == "Funny")
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

String Function FillDefeatTypeFaction()
	
	NymTrace("FillDefeatTypeFaction(START)")
	
	String ReturnString = "Humans"

	if (RapersACount > 0) && RapersA[0] 
	ReturnString = storqst.GetDefeatTypeFaction(RapersA[0])
	elseif (RapersBCount > 0) && RapersB[0]
	ReturnString = storqst.GetDefeatTypeFaction(RapersB[0])
	elseif (RapersCCount > 0) && RapersC[0]
	ReturnString = storqst.GetDefeatTypeFaction(RapersC[0])
	endif 
	
	NymTrace("FillDefeatTypeFaction("+ReturnString+")")
	
	return ReturnString
		
EndFunction 


Function StartRandomAftermath()
    NymTrace("StartRandomAftermath()")
    bool Bandits = false
    if cfgqst.DefeatTypeGeneral == "AreHumans"
        cfgqst.DefeatType = FillDefeatTypeFaction()
        if cfgqst.DefeatType == "Bandits"
            Bandits = true
        endif
    endif
    if storqst.AllowSellingToSS()
        noSlavery = false
    else
        noSlavery = true
    endif
    if Bandits
        NymTrace("StartRandomAftermath(Bandits)")
    endif
    if !cfgqst.HarderDefeat && !isSlave && noGuards && D100(cfgqst.DefeatRescueProb)
        if Nym() && D100(33.0)
            StartPlayerRobbed()
            utility.Wait(1.0)
        endif
        if D100(50.0)
            cfgqst.RemoveAllDDevices(false, "", "", "", "", "")
        endif
        Rescued = true
        CHECK_Aftermath_running = false
        StartRescued = true
        SetStage(1000)
    elseif !cfgqst.DefeatViaSlavery && noGuards && noGhosts && noAnimals && noTrolls && !cfgqst.CivilRapeRunning && storqst.IsLocalSlave == 0
        if storqst.NymDarkWorld && Bandits
            BadMessage("Nymra's Dark World: Robbers being Robbers")
            StartPlayerRobbed()
            if !cfgqst.IsRobberyWorthIt
                ScreenMessage("They sell you because your body is only thing valuable that you brought with you")
                StartSlavery = true
                CHECK_Aftermath_running = false
                SetStage(1000)
            endif
        elseif cfgqst.NymBeta && Bandits && cfgqst.DefeatRobberyProb > 0.0
            float tempRobchance = cfgqst.DefeatRobberyProb + cfgqst.DefeatRobberyProb
            if D100(tempRobchance)
                InfoMessage("Bandits have a x2 the MCM-robberychance to rob you. BanditsRobChance: " + tempRobchance)
                StartPlayerRobbed()
            endif
            StartPlayerRobbed()
        elseif D100(cfgqst.DefeatRobberyProb)
            StartPlayerRobbed()
        endif
    endif
    if !Rescued
        if cfgqst.ModPOP && cfgqst.CivilRapeRunning && D100(cfgqst.DefeatArrestProb)
            CHECK_Aftermath_running = false
            StartPlayerPrisonerPOP()
        elseif !noCaptivity && !noSlavery && !cfgqst.HarderDefeat && !isSlave && noGuards && noGhosts && D100(cfgqst.DefeatSlaveryProb)
            if D100(cfgqst.DefeatSDweight)
                CHECK_Aftermath_running = false
                StartPlayerSlaverySD()
            elseif noAnimals && noTrolls
                if cfgqst.DefeatRobberyProb > 0.0
                    ScreenMessage("They take all your stuff before selling you as a slave")
                    StartPlayerRobbed()
                    utility.Wait(1.0)
                endif
                CHECK_Aftermath_running = false
                StartSlavery = true
                SetStage(1000)
            else
                CHECK_Aftermath_running = false
                StartPlayerFree()
            endif
        elseif !noCaptivity && !ShortDefeat && noAnimals && noTrolls && (D100(cfgqst.DefeatCaptivityProb) || cfgqst.HarderDefeat)
            CHECK_Aftermath_running = false
            StartPlayerCaptured()
        else
            CHECK_Aftermath_running = false
            StartPlayerFree()
        endif
    endif
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


Bool Function CheckRobber(actor akactor)			;NO LONGER GOOD -- needs to be more elaborate than this :(			;#CheckRobber

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

	CHECK_RapeSequence_running = false

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

Function RegisterForModEvents()
    NymTrace("RegisterForModEvents()")
    RegisterForModEvent("Bis_BatheEvent", "OnBis_BatheEvent")
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
    RegisterForModEvent("ForceStageProgression", "OnStartForceStageProgression")
    RegisterForModEvent("StartForceOpenMouth", "OnStartForceOpenMouth")
    RegisterForModEvent("StartSpawnRapers", "OnStartSpawnRapers")
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

Function InitialMaintenance()
    float fRemoveDDChanceTemp
    NymTrace("InitialMaintenance() ::::::::::::::::::::::::::::::::::::::::::::::::::::")
    if !spe_actor.IsActorCalmed(cfgqst.PlayerRef)
        NymTrace("InitialMaintenance() Actor was NOT calmed")
        spe_actor.SetActorCalmed(cfgqst.PlayerRef, true)
    endif
    cfgqst.FixExpressions()
    cfgqst.PublicExposure = 0
    cfgqst.StopHeartBeat()
    RegisterForModEvents()
    cfgqst.PlayerDownAlready = false
    CreateGroups()
    if cfgqst.ModDDframework
        if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
            DebugTrace("InitialMaintenance() Wearing Lockable DD")
            WearingDDs = true
        endif
        if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
            WearingDDs_HeavyBondage = true
            DebugTrace("InitialMaintenance() Wearing HeavyBondage DD")
        endif
        if WearingDDs && !storqst.IsLocalSlave()
            if cfgqst.DefeatEntranceVia == "Surrendered in Combat" && D100(cfgqst.CooperativeSurrenderChance)
                fRemoveDDChanceTemp = cfgqst.RemoveDDChance + cfgqst.RemoveDDChance
            else
                fRemoveDDChanceTemp = cfgqst.RemoveDDChance
            endif
            if cfgqst.DefeatEntranceVia == "Send to Afterlife"
                cfgqst.RemoveAllDDevices(true, "empty01", "empty02", "empty03", "empty04", "empty05")
                cfgqst.DefeatTypeScenario = "Afterlife"
                cfgqst.DefeatStateBindings = "Unbound"
                NymTrace("InitialMaintenance() - RemoveAllDDevices(Afterlife)")
            elseif D100(fRemoveDDChanceTemp)
                cfgqst.RemoveAllDDevices(true, "Piercing Nipples", "empty02", "empty03", "empty04", "empty05")
                cfgqst.DefeatTypeScenario = "None"
                cfgqst.DefeatStateBindings = "Unbound"
                NymTrace("InitialMaintenance() - RemoveAllDDevices()")
            endif
        endif
        if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
            NymTrace("InitialMaintenance() IsWearingDDs (Heavy Bondage KWD)")
            WearingDDsBlockingSex = true
            cfgqst.DefeatTypeScenario = "DD"
        else
            WearingDDsBlockingSex = false
        endif
    endif
    if cfgqst.CheckDurationSpell("Stamina", false)
        cfgqst.RemoveDurationSpell("Stamina")
    endif
    if cfgqst.CheckDurationSpell("Health", false)
        cfgqst.RemoveDurationSpell("Health")
    endif
    if cfgqst.RapeAgain
        AddDefeatBinds()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: cfgqst.RapeAgain = TRUE", 0)
    else
        cfgqst.GracePeriod = 0
    endif
    if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 (SexLabForbiddenActors)", 0)
        cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)
    endif
    if cfgqst.CivilRapeRunning
        cfgqst.DefeatTypeGeneral = "AreHumans"
        cfgqst.DefeatType = "Humans"
    endif
    if cfgqst.ModDEM
        DemonicCreature = (game.GetFormFromFile(8517504, "DemonicCreatures.esp") as keyword)
    endif
    if cfgqst.DefeatViaSlavery || cfgqst.DefeatTypeScenario == "Afterlife"
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: cfgqst.DefeatViaSlavery", 0)
        Distance = 10000.0
    elseif cfgqst.PlayerRef.IsInInterior()
        Distance = cfgqst.SearchRadiusInterior
    else
        Distance = cfgqst.SearchRadius
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SearchRadius: " + Distance, 0)
    if Distance < 5000.0
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR SearchRadius is very low. Distance: " + Distance, 0)
    endif
    AllowPlaceFloor = true
    cfgqst.SexState = 0
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
	NymTrace("GetDDScenario()")
	
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

Function Fragment_3()
    debug.trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 ::::::::::::::::::::::::: ##START## :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
    debug.trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::", 0)
    CHECK_Stage10_running = true
    if storqst.IsLocalSlave() && Nym()
        ScreenMessage("Your sex slave duties are calling!")
        message.ResetHelpMessage("Sneak")
        utility.Wait(0.1)
        storqst.MSG_SexSlaveDutiesStart.ShowAsHelpMessage("Sneak", 4.0, 0.0, 1)
        message.ResetHelpMessage("empty")
        storqst.MSG_TutorialEmptyMSG.ShowAsHelpMessage("empty", 1.0, 0.0, 1)
    endif
    storqst.IsBlockedAttack = false
    storqst.Defeat_ID = storqst.Defeat_ID + 1
    bool Test = false
    DebugTrace("MODVERSION: " + cfgqst.NakedDefeat_ModVersion)
    DebugTrace("stage 10 #Start#: DefeatTypeGeneral: " + cfgqst.DefeatTypeGeneral)
    DebugTrace("stage 10 #Start#: DefeatType: " + cfgqst.DefeatType)
    DebugTrace("stage 10 #Start#: DefeatTypeScenario: " + cfgqst.DefeatTypeScenario)
    if cfgqst.RapeAgain
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 #Start#: DefeatEntranceVia (RapeAgain): " + cfgqst.DefeatEntranceVia, 0)
    else
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 #Start#: DefeatEntranceVia: " + cfgqst.DefeatEntranceVia, 0)
    endif
    DebugTrace("----------------------------------------------------------------------------------------------------------")
    DebugTrace("stage 10 #Start#: Defeat Location: " + defqst.GetCurrentLocationName())
    DebugTrace("stage 10 #Start#: DefeatStateBindings: " + cfgqst.DefeatStateBindings)
    DebugTrace("stage 10 #Start#: Chapter: " + cfgqst.DefeatStateChapter)
    if Nym()
        DebugTrace("stage 10 #Start#: DEBUG STATUS: Nym() " + Nym() + " DebugPunishmentType: " + cfgqst.DebugPunishmentType)
        DebugTrace("stage 10 #Start#: WaitTime Current " + storqst.WaitTimeTest / 2 + "seconds")
    endif
    DebugTrace("----------------------------------------------------------------------------------------------------------")
    if !cfgqst.AbortAll
        cfgqst.DefeatStatePlayer = "StartofDefeat"
        cfgqst.Immobilize(true)
    endif
    if !cfgqst.AbortAll
        InitialMaintenance()
        InitialMaintenance_Followers()
    endif
    if cfgqst.DefeatTypeScenario == "Afterlife" && !cfgqst.AbortAll
        NymTrace("!Vehicle Early Setup for Afterlife")
        Vehicle("SetupForAfterlife")
        utility.Wait(0.1)
        SendModEvent("StartSpawnRapers", "", 0.0)
    endif
    if cfgqst.DefeatViaSlavery
        if folqst.Actor_Follower01
            folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -160.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 90.0), -160.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 90.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
        endif
        if folqst.Actor_Follower02
            folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, 160.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 90.0), 160.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 90.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
        endif
    endif
    cfgqst.Immobilize(true)
    cfgqst.AddVictimsToCalmFactions(true)
    if cfgqst.CivilRapeRunning && !cfgqst.DefeatViaSlavery
        cfgqst.ProcessCrimeGold()
        cfgqst.CheckCrimePunishment()
    endif
    cfgqst.DefeatStateChapter = "Arrival Scene"
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 :::::: Arrival Scene ::::::", 0)
    if cfgqst.DefeatEntranceVia == "Prostitution"
        PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
        PlayPoseOnActor(Victims[0], "Offering", false)
        PlayPoseOnActor(Victims[1], "Offering", false)
    elseif cfgqst.DefeatViaSlavery && !(cfgqst.DefeatTypeScenario == "Afterlife") && !cfgqst.RapeAgain && !cfgqst.AbortAll
        PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        PlayPoseOnActor(Victims[0], "Wait", false)
        PlayPoseOnActor(Victims[1], "Wait", false)
    elseif cfgqst.DefeatTypeScenario == "Afterlife"
        NymTrace("!Vehicle LATE Setup for Afterlife")
        Vehicle("SetupForAfterlife")
        PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        PlayPoseOnActor(Victims[0], "Wait", false)
        PlayPoseOnActor(Victims[1], "Wait", false)
        NymTrace("cfgqst.DefeatViaSlavery = false")
        cfgqst.DefeatViaSlavery = false
        cfgqst.DefeatType = "Hell"
        cfgqst.DefeatTypeGeneral = "AreHumanoids"
        cfgqst.Dead = 0
        utility.Wait(2.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 4
        if storqst.BlackFadeLocked == 666
            storqst.BlackFadeLocked = 0
        endif
        if cfgqst.BlackFadeStatus == 1
            cfgqst.FadeToBlack(false)
        endif
    endif
    int waitloops = 0
    if cfgqst.DefeatTypeScenario == "None"
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 (Waiting Loop)", 0)
        while cfgqst.DefeatTypeGeneral == "None" && waitloops < 5 && !cfgqst.AbortAll && cfgqst.ModEnabled
            utility.Wait(1.0)
            storqst.WaitTimeTest = storqst.WaitTimeTest + 2
            waitloops = waitloops + 1
        endwhile
        if waitloops == 5 && cfgqst.DefeatTypeGeneral == "None"
            cfgqst.DefeatType = "Funny"
            cfgqst.DefeatTypeGeneral = "AreFunny"
        endif
        waitloops = 0
    endif
    if !cfgqst.AbortAll
        GetMainSequence()
    endif
    if cfgqst.DefeatTypeScenario == "FastTravel" || cfgqst.DefeatEntranceVia == "Prostitution"
        NymMessage("OfferingPose and Vehicle Setup for FastTravel")
        Vehicle("setup")
        PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
        PlayPoseOnActor(Victims[0], "Offering", false)
        PlayPoseOnActor(Victims[1], "Offering", false)
    elseif cfgqst.DefeatTypeScenario == "Afterlife"
        PlayPoseOnActor(cfgqst.PlayerRef, "Wait", true)
        PlayPoseOnActor(Victims[0], "Wait", false)
        PlayPoseOnActor(Victims[1], "Wait", false)
    elseif cfgqst.RapeAgain
    endif
    SendModEvent("Moan", "", 0.0)
    if !cfgqst.AbortAll
        calm(true, 1)
    endif
    NymTrace("cfgqst.DefeatTypeScenario #TEST: " + cfgqst.DefeatTypeScenario)
    if cfgqst.DefeatTypeScenario == "Afterlife" || cfgqst.DefeatTypeScenario == "FastTravel" || cfgqst.DefeatEntranceVia == "Ambush"
        NymTrace("TEST why not here?")
    elseif AllRapersTooFarAway
        AllRapersTooFarAway = false
        ScreenMessage("No Rapers in Range, temporarily increasing Search Radius")
        IncreasedDistance = 8000.0
    else
        IncreasedDistance = 0.0
    endif
    if cfgqst.DefeatWhipProb > 0.0 && Nym()
        LastHitterAsWhipper()
        storqst.StartWhipping_00(8.0)
    endif
    NeedCreaturesForSex = false
    if cfgqst.DefeatTypeScenario == "Afterlife" || cfgqst.DefeatTypeScenario == "FastTravel" || cfgqst.DefeatEntranceVia == "Ambush"
    elseif cfgqst.DefeatViaSlavery
        NymTrace("Check for Rapers for Slavery: RapersMale = " + RapersMale + " RapersFemale = " + RapersFemale)
        if RapersMale == 0
            NeedRapersForSlavery = true
        endif
        if RapersCreatures == 0 && cfgqst.NymSpawning
            NeedCreaturesForSlavery = true
        endif
    elseif cfgqst.DefeatTypeGeneral == "AreHumans"
        if RapersMale == 0 && !cfgqst.FemalesAllowed
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NoActorsAbort(RapersMale == 0)", 0)
            if RapersCreatures == 0
                ScreenMessage("No male humnans around (females not allowed). You are lucky!")
                NoActorsAbort = true
            else
                ScreenMessage("No male humans around (females not allowed). Creatures will take care of you.")
                NoActorsAbort = false
                cfgqst.DefeatTypeGeneral == "AreFunny"
                cfgqst.DefeatTypeGeneral == "Funny"
            endif
        elseif RapersMale == 0 && RapersFemale == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NoActorsAbort(RapersMale&Female == 0)", 0)
            if RapersCreatures == 0
                ScreenMessage("No humans around to fuck you. You are lucky!")
                NoActorsAbort = true
            else
                ScreenMessage("No humans around to fuck you. But Creatures will take care of you.")
                NoActorsAbort = false
                cfgqst.DefeatTypeGeneral == "AreFunny"
                cfgqst.DefeatTypeGeneral == "Funny"
            endif
        endif
        if !NoActorsAbort && RapersCreatures == 0 && cfgqst.NymSpawning
            NeedCreaturesForSex = true
        endif
    elseif cfgqst.DefeatTypeGeneral == "AreHumanoids" || cfgqst.DefeatTypeGeneral == "AreAnimals"
        if RapersCreatures == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NoActorsAbort(RapersCreatures == 0)", 0)
            ScreenMessage("No creatures nearby to fuck you. You are lucky!")
            NoActorsAbort = true
        endif
    else
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
    if !NoActorsAbort && !cfgqst.AbortAll
        SortActors()
        if cfgqst.DefeatTypeGeneral == "AreHumans"
            cfgqst.DefeatType = FillDefeatTypeFaction()
        endif
        SendModEvent("StartRaperExpressions", "", 0.0)
    endif
    if cfgqst.DefeatTypeGeneral == "AreHumans" || cfgqst.DefeatTypeGeneral == "AreFunny"
        if RapersACount == 0 && RapersBCount == 0 && RapersCCount == 0
            if storqst.GetAreOnlyAnimals(CreaturesARace, CreaturesBRace, CreaturesCRace, CreaturesDRace, CreaturesERace, CreaturesFRace)
                cfgqst.DefeatTypeGeneral = "AreAnimals"
                cfgqst.DefeatType = "Funny"
            else
                cfgqst.DefeatTypeGeneral = "AreHumanoids"
                cfgqst.DefeatType = "Funny"
            endif
        endif
    endif
    if cfgqst.DefeatTypeScenario == "FastTravel" || cfgqst.DefeatTypeScenario == "Afterlife"
    else
        if RapersACount == 0 && RapersBCount == 0 && RapersCCount == 0 && CreaturesACount == 0 && CreaturesBCount == 0 && CreaturesCCount == 0 && (CreaturesDCount == 0 && CreaturesECount == 0 && CreaturesFCount == 0)
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT No Humans or Creatures found!", 0)
            NoActorsAbort = true
        elseif cfgqst.DefeatTypeGeneral == "AreHumans" && (RapersACount == 0 && RapersBCount == 0 && RapersCCount == 0)
            NoActorsAbort = true
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT - AreHumans but no Humans found", 0)
            if CreaturesACount == 0 && CreaturesBCount == 0 && CreaturesCCount == 0 && (CreaturesDCount == 0 && CreaturesECount == 0 && CreaturesFCount == 0)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT - AreHumans but no Humans and No Creatures available", 0)
                NoActorsAbort = true
            else
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT - AreHumans > no Humans but there are Creatures available", 0)
                cfgqst.DefeatTypeGeneral == "AreCreatures"
                if cfgqst.DefeatTypeScenario == "DD"
                else
                    cfgqst.DefeatTypeScenario == "None"
                    Allow_Foreplay = false
                    Allow_GoldenShower = false
                endif
                NoActorsAbort = false
            endif
        elseif cfgqst.DefeatTypeGeneral == "AreHumanoids" && (CreaturesACount == 0 && CreaturesBCount == 0 && CreaturesCCount == 0) && (CreaturesDCount == 0 && CreaturesECount == 0 && CreaturesFCount == 0)
            NoActorsAbort = true
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT - AreHumanoids but no Creatures found", 0)
        elseif cfgqst.DefeatTypeGeneral == "AreAnimals" && (CreaturesACount == 0 && CreaturesBCount == 0 && CreaturesCCount == 0) && (CreaturesDCount == 0 && CreaturesECount == 0 && CreaturesFCount == 0)
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ABORT - AreAnimals but no Creatures found", 0)
            NoActorsAbort = true
        endif
        if NoActorsAbort && cfgqst.DefeatViaSlavery
        endif
        if NoActorsAbort && cfgqst.DefeatTypeScenario == "Afterlife"
            NymBox("#ERRROR NoactorsAbort HERE!!!!")
            NoActorsAbort = false
        endif
        if NoActorsAbort
            cfgqst.AbortAll = true
            ResetAllowance()
        endif
        if game.IsMovementControlsEnabled() && !cfgqst.AbortAll
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR Player can move! Immobilize now!", 0)
            cfgqst.Immobilize(true)
        endif
        if cfgqst.CivilRapeRunning && cfgqst.DefeatType == "Guards" && !cfgqst.AbortAll
            if !cfgqst.DefeatViaSlavery && !storqst.IsLocalSlave()
                cfgqst.CheckCrimePunishment()
            endif
            cfgqst.PlayerSheatheWeapon()
        endif
        if OnlyAnimals
            AbortDefeat()
            cfgqst.AbortAll = true
            ResetAllowance()
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: skipping because no humans and creatures not allowed", 0)
        endif
    endif
    if cfgqst.PlayerRef.IsSwimming() && !cfgqst.AbortAll
        cfgqst.Immobilize(false)
        ScreenMessage("You lost the fight, get out of the water you coward!")
        while cfgqst.PlayerRef.IsSwimming() && cfgqst.ModEnabled
            utility.Wait(1.0)
            storqst.WaitTimeTest = storqst.WaitTimeTest + 2
        endwhile
    endif
    cfgqst.Immobilize(true)
    if Nym() && !cfgqst.AbortAll
    endif
    if cfgqst.HeelsFix
        cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, "114575")
        if folqst.IsWithUs_Follower(0)
            cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[0], "114575")
        endif
        if folqst.IsWithUs_Follower(1)
            cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[1], "114576")
        endif
        if folqst.IsWithUs_Follower(2)
            cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[2], "114577")
        endif
        if folqst.IsWithUs_Follower(3)
            cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[3], "114578")
        endif
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 :::::::::::: Find Spot ::::::::::::", 0)
    cfgqst.Crawl(cfgqst.PlayerRef, true)
    cfgqst.DefeatStateChapter = "Find Spot"
    if Allow_FindSpot && !cfgqst.RapeAgain && !cfgqst.AbortAll
        cfgqst.PlayerSheatheWeapon()
        cfgqst.StripWeapons()
        cfgqst.SlowDownPlayer("Start", false)
        storqst.PlayerPosingVehicle(false)
        if !cfgqst.AbortAll
            utility.Wait(1.0)
        endif
        storqst.WaitTimeTest = storqst.WaitTimeTest + 2
        cfgqst.Immobilize(false)
        utility.Wait(0.1)
        cfgqst.ImmobilizeCrawl(true)
        cfgqst.FadeToBlack(false)
        if !cfgqst.AbortAll
            FindSpot()
        endif
        cfgqst.ImmobilizeCrawl(false)
        utility.Wait(0.1)
        cfgqst.Immobilize(true)
        cfgqst.SlowDownPlayer("End", false)
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 :::::::::::: Starting Scene ::::::::::::", 0)
    cfgqst.DefeatStateChapter = "Starting Scene"
    if (cfgqst.DefeatViaSlavery || cfgqst.RapeAgain) && !cfgqst.AbortAll
        PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        PlayPoseOnActor(Victims[0], "Wait", false)
        PlayPoseOnActor(Victims[1], "Wait", false)
    elseif !cfgqst.AbortAll
        PlayPoseOnActor(cfgqst.PlayerRef, "surrender", false)
        PlayPoseOnActor(Victims[0], "surrender", false)
        PlayPoseOnActor(Victims[1], "surrender", false)
    endif
    if !cfgqst.AbortAll && (cfgqst.ShortPunishment < 2 || cfgqst.ShortPunishment > 3)
        utility.Wait(4.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 8
    endif
    SendModEvent("Moan", "", 0.0)
    cfgqst.FadeToBlack(true)
    playscr.TogglePlayerLight()
    if !cfgqst.AbortAll
        Vehicle("setup")
    endif
    cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, false)
    if cfgqst.DefeatType == "Guards" && !cfgqst.AbortAll
        PayCrimeGold()
    endif
    if VictimCount > 0 && !cfgqst.AbortAll
        if Victims[0]
            StripFollower(0)
            folidle01.StartDoingNothing_01(true)
            Vehicle_Follower_01("setup")
        endif
        if Victims[1]
            StripFollower(1)
            folidle01.StartDoingNothing_02(true)
            Vehicle_Follower_02("setup")
        endif
        if Victims[2]
            StripFollower(2)
            folidle01.StartDoingNothing_03(true)
        endif
        if Victims[3]
            StripFollower(3)
            folidle01.StartDoingNothing_04(true)
        endif
    endif
    FollowersOnSpot = true
    int StrippingScene = 0
    if !cfgqst.AbortAll
        bool AllowStripScene = false
        if cfgqst.ShortPunishment == 0 && CountWornSlots() > 2 && cfgqst.DefeatTypeGeneral == "AreHumans"
            AllowStripScene = true
        endif
        if AllowStripScene && D100(cfgqst.DefeatWhipProb)
            NymTrace("Stripping > Stripping Scene")
            ScreenMessage("They whip your clothes off your body")
            StrippingScene = 1
        else
            if cfgqst.NymStripping
                if storqst.IsSlotOccupied(cfgqst.PlayerRef, 52)
                    cfgqst.Strip(52, cfgqst.PlayerRef)
                    defqst.PlaySoundStripCloth()
                endif
            endif
            if cfgqst.NymStripping && D100(95.0)
                if cfgqst.BlackFadeStatus == 0
                    cfgqst.FadeToBlack(true)
                endif
                if D100(50.0)
                    NymTrace("Stripping > StripPlayer()")
                    StripPlayer()
                elseif storqst.IsLocalSlave()
                    NymTrace("Stripping9 > PlayerStripCompletely(37,45,0,0,0)")
                    cfgqst.PlayerStripCompletely(37, 45, 0, 0, 0)
                elseif Nym()
                    NymTrace("Stripping > PlayerStripCompletely(37,0,0,0,0)")
                    cfgqst.PlayerStripCompletely(37, 0, 0, 0, 0)
                else
                    NymTrace("Stripping > PlayerStripCompletely(0,0,0,0,0)")
                    cfgqst.PlayerStripCompletely(0, 0, 0, 0, 0)
                endif
            endif
        endif
        cfgqst.GroupStripMaintenance()
    endif
    if cfgqst.NymBeta
        defqst.RemoveBrutalPlugs()
    endif
    if StrippingScene == 0 && !cfgqst.AbortAll && (cfgqst.ShortPunishment < 2 || cfgqst.ShortPunishment > 3)
        if D100(cfgqst.BondageHaircutProb) && !HairChangedOnce
            if cfgqst.BlackFadeStatus == 0
                cfgqst.FadeToBlack(true)
            endif
            HairChangedOnce = true
            cfgqst.ChangeHairStyle("Standard")
        endif
    endif
    if cfgqst.DefeatEntranceVia == "Prostitution" || cfgqst.DebugPunishmentType > 0.0
        if cfgqst.DebugPunishmentType > 0.0
            debug.Messagebox("cfgqst.DebugPunishmentType: " + cfgqst.DebugPunishmentType)
        endif
        GetDefeatScenario()
    elseif cfgqst.DefeatType == "Guards" && Allow_SexScenes > 0 && !cfgqst.SkipSex && !cfgqst.AbortAll
        if cfgqst.DefeatDDChance > 0.0 && D100(50.0)
            GetDDScenario()
        else
            GetDefeatScenario()
        endif
    elseif cfgqst.ShortPunishment == 0 && !cfgqst.RapeAgain && cfgqst.DefeatTypeGeneral == "AreHumans" && cfgqst.DefeatTypeScenario == "None" && Allow_SexScenes > 0 && !cfgqst.SkipSex && !cfgqst.AbortAll
        if CheckHumanGroupsAvailable()
            if D100(cfgqst.ScenarioChance)
                GetDefeatScenario()
            endif
        endif
    endif
    GetDDScenario()
    if !cfgqst.AbortAll
        GetMainSequenceLastSteps()
    endif
    if cfgqst.DefeatTypeGeneral == "AreHumans" && cfgqst.ShortPunishment == 0
        AggressorsReDressed = false
        StripAllAggressors()
    endif
    if cfgqst.RapeAgain && cfgqst.DefeatTypeScenario == "Furniture" && !cfgqst.AbortAll
        cfgqst.DefeatTypeScenario = "None"
        Allow_SexScenes = GetSexScenes()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GetSexScenes(RapeAgain B) " + Allow_SexScenes, 0)
        Allow_Aftermath = "Capture"
        cfgqst.Allow_EscapeDifficulty = "Random"
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: DefeatTypeScenario: " + cfgqst.DefeatTypeScenario, 0)
    if cfgqst.ShortPunishment < 2 || cfgqst.ShortPunishment > 3
        if !cfgqst.AbortAll
            if Allow_AddCollar
                cfgqst.AddDefeatCollar("Random")
            endif
            utility.Wait(1.0)
            storqst.WaitTimeTest = storqst.WaitTimeTest + 2
            AddDefeatBinds()
        endif
        if VictimCount > 0 && !cfgqst.RapeAgain && !cfgqst.AbortAll
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
        if cfgqst.DefeatTypeScenario == "Execution" && !cfgqst.AbortAll
            if cfgqst.DefeatRobberyProb > 0.0
                StartPlayerRobbed()
            endif
        endif
    endif
    if !cfgqst.AbortAll
        PlayPoseOnActor(cfgqst.PlayerRef, "struggle", false)
        PlayPoseOnActor(Victims[0], "struggle", false)
        PlayPoseOnActor(Victims[1], "struggle", false)
        utility.Wait(1.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 2
        cfgqst.FadeToBlack(false)
        utility.Wait(3.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 6
    endif
    if cfgqst.RapeAgain
        debug.trace("NAKED DEFEAT calmquest RapeAgain: LastAddedDevice", 0)
        cfgqst.LastAddedDevice.DisableNoWait(false)
        cfgqst.LastAddedDevice.Delete()
        cfgqst.LastAddedDevice = None
    endif
    if !cfgqst.AbortAll
        utility.Wait(1.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 2
    endif
    SexLab.ThreadSlots.StopAll()
    SolosRunning = 0
    if !cfgqst.AbortAll
        utility.Wait(1.0)
        storqst.WaitTimeTest = storqst.WaitTimeTest + 2
    endif
    if StrippingScene == 1
        WhipStripScene()
        cfgqst.GroupStripMaintenance()
    elseif StrippingScene == 2
        if Allow_Foreplay && cfgqst.DefeatTypeGeneral == "AreHumans" && D100(cfgqst.DefeatForeplayChance)
            ForePlayStripping = true
        endif
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 :::::: Bathing Scene ::::::", 0)
    cfgqst.DefeatStateChapter = "Bathing Scene"
    if Allow_ForcedBathing && !cfgqst.AbortAll
        SceneForcedBathing("ForcedBathing")
    elseif Allow_GoldenShower && !cfgqst.AbortAll
        SceneForcedBathing("GoldenShower")
    endif
    while (Peeing || IsBathing) && cfgqst.ModEnabled && !cfgqst.AbortAll
        if !cfgqst.AbortAll
            utility.Wait(3.0)
        endif
    endwhile
    cfgqst.DefeatStateChapter = "Sex Start"
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: stage 10 :::::: Sex Scenes ::::::", 0)
    if cfgqst.DefeatViaSlavery && (cfgqst.DefeatTypeGeneral == "AreHumans" && !CheckRaperGroups()) && !cfgqst.AbortAll
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NoActorsRestartSlavery ##RESTART##", 0)
        debug.Messagebox("Naked Defeat #ERROR Code 5500 - report to forum plz")
        CHECK_Stage10_running = false
        SetStage(1000)
    elseif (CheckRaperGroups() || CheckCreatureGroups()) && !cfgqst.AbortAll
        CHECK_Stage10_running = false
        if Allow_SexScenes == 0
            SetStage(14)
        elseif Allow_SexScenes > 0
            FuckingRound = 1
            StartRapeSequence(10)
        endif
    else
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NoActorsAbort (B)", 0)
        NoActorsAbort = true
        CHECK_Stage10_running = false
        SetStage(1000)
    endif
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
				
				bool bSecondaryStrip = false
				
				if !Nym()
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 37)
					cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
					defqst.PlaySoundStripCloth()
					Utility.Wait(0.5)
					endif 
				endif 
			
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 31)
				cfgqst.Strip(31, cfgqst.PlayerRef)	;Head
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				endif 
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 33)
				cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				endif 
	
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 32)
				cfgqst.Strip(32, cfgqst.PlayerRef)	;body
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				endif 
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 52)
				cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom	-> dont use (why not?) --> SexlabNoStrip Keyword should solve this
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				Endif
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 49)
				cfgqst.Strip(49, cfgqst.PlayerRef)	;savage bikini thong
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				Endif				

	
			;	cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
			;	cfgqst.Strip(32, cfgqst.PlayerRef)	;body 
			
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 57)
				cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
				bSecondaryStrip = true
				endif 
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 53)
				cfgqst.Strip(53, cfgqst.PlayerRef) 	;steel thigh armor	-> dont use (why not?)	--> SexlabNoStrip Keyword should solve this
				bSecondaryStrip = true
				endif 
				if Nym() && D100(50)
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 42)
					cfgqst.Strip(42, cfgqst.PlayerRef) 	;circlet
					bSecondaryStrip = true
					endif 
				endif 
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 46)
				cfgqst.Strip(46, cfgqst.PlayerRef) 	;harness
				bSecondaryStrip = true
				endif 

				if bSecondaryStrip
				defqst.PlaySoundStripCloth()
				endif 
			;	cfgqst.Strip(53, cfgqst.PlayerRef)	;steel thigh armor	-> dont use (why not?)	--> SexlabNoStrip Keyword should solve this
			;	cfgqst.Strip(35, cfgqst.PlayerRef)	;amulett
			;	cfgqst.Strip(42, cfgqst.PlayerRef)	;circlet	
			;	cfgqst.Strip(46, cfgqst.PlayerRef)	;harness

				
				
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
    NymTrace("CalmSpawnedActor: " + ActorToCalm)
    if ActorToCalm
        spe_actor.SetActorCalmed(ActorToCalm, true)
        ActorToCalm.EvaluatePackage()
        ActorToCalm.StopCombat()
        ActorToCalm.StopCombatAlarm()
        ActorToCalm.RemoveFromAllFactions()
        ActorToCalm.AddToFaction(CalmFaction)
        ActorToCalm.AddToFaction(AllegianceFaction)
        ActorToCalm.AddToFaction(DefeatFaction)
        ActorToCalm.AddToFaction(NakedGhostFaction)
        ActorToCalm.RemoveAllItems(None, false, true)
        if ActorToCalm.IsAlerted()
            ActorToCalm.SetAlert(false)
        endif
        ActorToCalm.StopCombat()
        ActorToCalm.StopCombatAlarm()
    else
        NymTrace("CalmSpawnedActor: #ERROR 5009 - No ACtor to calm?!")
    endif
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

	Bool Enable = false

	if Nym() && Enable
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
	
	Bool Enable = false

	if Nym() && Enable
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
								a.Addtofaction(storqst.NakedRaperFaction)
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
				
				if a.IsInFaction(storqst.NakedRaperFaction)
				a.RemoveFromFaction(storqst.NakedRaperFaction)
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
				
				storqst.ProtectActor(a, false)
				
				;------- clean up ghosts -------------- ;maybe do NOT remove non-ghost actors later (test more)
				if a.IsInFaction(NakedGhostFaction)	
				a.DisableNowait()
				a.Delete()
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
		NymTrace("RemoveSpawnedRapers()")

	;I Need this because in Calm Function the actors (a) are from the game world. The Spawned Actors are NOT detected/recognized by the Calm Function!!!!9
		
			if Nym()
			NymTrace("RemoveSpawnedRapers(Duplo_CleanUpActors)")
			defqst.Duplo_CleanUpActors("Ambushers")
			endif 
			
			int i = 4	
	        while i > 0
            i -= 1
                if RapersA[i] && RapersA[i].IsInFaction(cfgqst.NakedGhostFaction)
                RapersA[i].DisableNoWait()
                RapersA[i].delete()
				RapersA[i] = none
                endif 
            endwhile 
			
			i = 4	
            while i > 0
            i -= 1
                if RapersB[i] && RapersB[i].IsInFaction(cfgqst.NakedGhostFaction)
                RapersB[i].DisableNoWait()
                RapersB[i].delete()
				RapersB[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
            i -= 1
                if RapersC[i] && RapersC[i].IsInFaction(cfgqst.NakedGhostFaction)
                RapersC[i].DisableNoWait()
                RapersC[i].delete()
				RapersC[i] = none
                endif 
            endwhile 
			
			i = 4
			while i > 0
                i -= 1
                if CreaturesA[i] && CreaturesA[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesA[i].DisableNoWait()
                    CreaturesA[i].delete()
                    CreaturesA[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
                i -= 1
                if CreaturesB[i] && CreaturesB[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesB[i].DisableNoWait()
                    CreaturesB[i].delete()
                    CreaturesB[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
                i -= 1
                if CreaturesC[i] && CreaturesC[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesC[i].DisableNoWait()
                    CreaturesC[i].delete()
                    CreaturesC[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
                i -= 1
                if CreaturesD[i] && CreaturesD[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesD[i].DisableNoWait()
                    CreaturesD[i].delete()
                    CreaturesD[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
                i -= 1
                if CreaturesE[i] && CreaturesE[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesE[i].DisableNoWait()
                    CreaturesE[i].delete()
                    CreaturesE[i] = none
                endif 
            endwhile 
			
			i = 4
            while i > 0
                i -= 1
                if CreaturesF[i] && CreaturesF[i].IsInFaction(cfgqst.NakedGhostFaction)
                    CreaturesF[i].DisableNoWait()
                    CreaturesF[i].delete()
                    CreaturesF[i] = none
                endif 
            endwhile
			
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

	return storqst.GetRaceKeyFast(akActor)
	
	;tempraceID = MiscUtil.GetActorRaceEditorID(akActor) 
	;return sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)
	;tempraceID = "empty"
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


Function HarmonizeSpawnedActorGroup(string sType)
    if SpawnedActor[0]
        SpawnedActor[0].AddToFaction(cfgqst.NakedDuplicantFaction)
        SpawnedActor[0].AddToFaction(storqst.NakedRaperFaction)
        if sType == "Canines"
            SpawnedActor[0].AddToFaction(cfgqst.BanditFaction)
            if SpawnedActor[0].GetAV("Aggression") < 2.0
                SpawnedActor[0].SetAV("Aggression", 1.0)
                SpawnedActor[0].SetAV("Aggression", 2.0)
            endif
        endif
        zOffset = SpawnedActor[0].GetHeadingAngle(cfgqst.PlayerRef)
        SpawnedActor[0].SetAngle(0.0, 0.0, SpawnedActor[0].GetAngleZ() + zOffset)
        defqst.AmbushersA[0] = SpawnedActor[0]
        defqst.AmbushersACount = defqst.AmbushersACount + 1
        NymTrace("AMBUSH: Actor 0 (" + cfgqst.GetActorName(SpawnedActor[0]) + ") added to NakedDuplicantFaction")
    endif
    if SpawnedActor[1]
        SpawnedActor[1].AddToFaction(cfgqst.NakedDuplicantFaction)
        SpawnedActor[1].AddToFaction(storqst.NakedRaperFaction)
        if sType == "Canines"
            SpawnedActor[1].AddToFaction(cfgqst.BanditFaction)
            if SpawnedActor[1].GetAV("Aggression") < 2.0
                SpawnedActor[1].SetAV("Aggression", 1.0)
                SpawnedActor[1].SetAV("Aggression", 2.0)
            endif
        endif
        NymTrace("AMBUSH: Actor 1 (" + cfgqst.GetActorName(SpawnedActor[1]) + ") added to NakedDuplicantFaction")
        zOffset = SpawnedActor[1].GetHeadingAngle(cfgqst.PlayerRef)
        SpawnedActor[1].SetAngle(0.0, 0.0, SpawnedActor[1].GetAngleZ() + zOffset)
        defqst.AmbushersA[1] = SpawnedActor[1]
        defqst.AmbushersACount = defqst.AmbushersACount + 1
    endif
    if SpawnedActor[2]
        SpawnedActor[2].AddToFaction(cfgqst.NakedDuplicantFaction)
        SpawnedActor[2].AddToFaction(storqst.NakedRaperFaction)
        if sType == "Canines"
            SpawnedActor[2].AddToFaction(cfgqst.BanditFaction)
            if SpawnedActor[2].GetAV("Aggression") < 2.0
                SpawnedActor[2].SetAV("Aggression", 1.0)
                SpawnedActor[2].SetAV("Aggression", 2.0)
            endif
        endif
        NymTrace("AMBUSH: Actor 2 (" + cfgqst.GetActorName(SpawnedActor[2]) + ") added to NakedDuplicantFaction")
        zOffset = SpawnedActor[2].GetHeadingAngle(cfgqst.PlayerRef)
        SpawnedActor[2].SetAngle(0.0, 0.0, SpawnedActor[2].GetAngleZ() + zOffset)
        defqst.AmbushersA[2] = SpawnedActor[2]
        defqst.AmbushersACount = defqst.AmbushersACount + 1
    endif
    if SpawnedActor[3]
        SpawnedActor[3].AddToFaction(cfgqst.NakedDuplicantFaction)
        SpawnedActor[3].AddToFaction(storqst.NakedRaperFaction)
        if sType == "Canines"
            SpawnedActor[3].AddToFaction(cfgqst.BanditFaction)
            if SpawnedActor[3].GetAV("Aggression") < 2.0
                SpawnedActor[3].SetAV("Aggression", 1.0)
                SpawnedActor[3].SetAV("Aggression", 2.0)
            endif
        endif
        zOffset = SpawnedActor[3].GetHeadingAngle(cfgqst.PlayerRef)
        SpawnedActor[3].SetAngle(0.0, 0.0, SpawnedActor[3].GetAngleZ() + zOffset)
        NymTrace("AMBUSH: Actor 3 (" + cfgqst.GetActorName(SpawnedActor[3]) + ") added to NakedDuplicantFaction")
        defqst.AmbushersA[3] = SpawnedActor[3]
        defqst.AmbushersACount = defqst.AmbushersACount + 1
        SpawnedActor[0] = None
        SpawnedActor[1] = None
        SpawnedActor[2] = None
        SpawnedActor[3] = None
        SpawnedGender = 0
    endif
EndFunction

Function CalmSpawnedActorGroup()  ;#CalmSpawnedActorGroup
armor TempArmor
int VerifiedSpawnCount = 0

; calm the freshly spawned group before filling them into RapersX or CreaturesX group
if (SpawnedActor[0])
NymTrace("CalmSpawnedActorGroup[0]") 
CalmSpawnedActor(SpawnedActor[0])
(SpawnedActor[0]).AddToFaction(storqst.NakedRaperFaction)
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
(SpawnedActor[1]).AddToFaction(storqst.NakedRaperFaction)
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
(SpawnedActor[2]).AddToFaction(storqst.NakedRaperFaction)
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
(SpawnedActor[3]).AddToFaction(storqst.NakedRaperFaction)
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
CreaturesARace = storqst.GetRaceKeyFast(SpawnedActor[0])

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
CreaturesBRace = storqst.GetRaceKeyFast(SpawnedActor[0])

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
CreaturesCRace = storqst.GetRaceKeyFast(SpawnedActor[0])

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
CreaturesDRace = storqst.GetRaceKeyFast(SpawnedActor[0])

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
CreaturesERace = storqst.GetRaceKeyFast(SpawnedActor[0])

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
CreaturesFRace = storqst.GetRaceKeyFast(SpawnedActor[0])

SpawnedActor[0]

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
	Summonshader.Play(akactor, Utility.RandomFloat(2.0, 3.5))	

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
Function SpawnActorGroups(string sScenario)
    int iTempDistance
    SpawningActorsActive = true
    NymTrace("SpawnActorGroups")
    int GroupCount = 1
    SpawnedActor = new actor[4]
    SpawnedActor[0] = None
    SpawnedActor[1] = None
    SpawnedActor[2] = None
    SpawnedActor[3] = None
    if sScenario == "FastTravel"
        cfgqst.StartPunishmentEffect("Shock")
        iTempDistance = 300
        GroupCount = 3
        storqst.SOUND_RitualStart.Play(cfgqst.PlayerRef)
        defqst.PlaceExplosion(cfgqst.PlayerRef, "Ritual Summoning 1")
        if GroupCount > 0
            GetRandomMonsterType(false)
            SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
            cfgqst.StartPunishmentEffect("Shock")
            if SpawnedGender < 2
                FillRapersA()
            elseif SpawnedGender == 2
                FillCreaturesA()
            endif
        endif
        if GroupCount > 1
            GetRandomMonsterType(false)
            SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
            cfgqst.StartPunishmentEffect("Shock")
            if SpawnedGender < 2
                FillRapersB()
            elseif SpawnedGender == 2
                FillCreaturesB()
            endif
        endif
        if GroupCount > 2
            GetRandomMonsterType(false)
            SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
            cfgqst.StartPunishmentEffect("Shock")
            if SpawnedGender < 2
                FillRapersC()
            elseif SpawnedGender == 2
                FillCreaturesC()
            endif
        endif
        PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
    elseif sScenario == "Afterlife"
        if AfterLifeStairsLocation
            iTempDistance = -300
        else
            iTempDistance = -800
        endif
        SpawnActors("Human Ghosts", 4, iTempDistance)
        FillRapersA()
        utility.Wait(1.0)
        SpawnActors("Human Ghosts", 4, iTempDistance)
        FillRapersB()
        utility.Wait(1.0)
        SpawnActors("Dremora", 4, iTempDistance)
        FillRapersC()
        if cfgqst.AllowCreatures
            GroupCount = 3
            if GroupCount > 0
                GetRandomMonsterType(true)
                SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
                FillCreaturesA()
            endif
            utility.Wait(1.0)
            if GroupCount > 1
                GetRandomMonsterType(true)
                SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
                FillCreaturesB()
            endif
            utility.Wait(1.0)
            if GroupCount > 2
                GetRandomMonsterType(true)
                SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
                FillCreaturesC()
            endif
        endif
    elseif sScenario == "Ambush"
        GetAmbushType()
        SpawnActors(RandomSpawnType, 4, -250)
        FillCreaturesA()
        SpawnActors(RandomSpawnType02, 2, -250)
        FillCreaturesB()
        SpawnActors(RandomSpawnType03, 1, -250)
        FillCreaturesC()
    elseif sScenario == "Slave Owners"
        GroupCount = GroupCount + VictimCount
        GetSlaveOwnerType()
        if GroupCount > 0
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 4), 250)
            FillRapersA()
        endif
        if GroupCount > 1
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 4), 250)
            FillRapersB()
        endif
        if GroupCount > 2
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 4), 250)
            FillRapersB()
        endif
        GetRandom_Animal_Rape_Type()
        SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
        FillCreaturesA()
    elseif sScenario == "Extra Animals"
        GetRandom_Animal_Rape_Type()
        SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
        FillCreaturesA()
    elseif sScenario == "Extra Wild Animals"
        GetRandom_Animal_Wild_Type()
        SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
        FillCreaturesF()
    elseif sScenario == "Extra Rapers"
        GetRandomExtraRaperType()
        bool RunTest = false
        if RunTest
            RandomSpawnType = "Test"
            RandomSpawnCount = 4
            NymTrace("sType: " + RandomSpawnType + " Count: " + RandomSpawnCount)
            SpawnActors(RandomSpawnType, RandomSpawnCount, 125)
            FillRapersC()
        else
            SpawnActors(RandomSpawnType, RandomSpawnCount, 250)
            FillRapersC()
        endif
    elseif sScenario == "Extra Hagravens"
        RandomSpawnType = "Forsworn"
        SpawnActors(RandomSpawnType, utility.RandomInt(1, 4), 250)
        FillRapersC()
        RandomSpawnType = "Spriggan Burnt"
        SpawnActors(RandomSpawnType, 1, 250)
        FillCreaturesF()
    elseif sScenario == "Extra Undead"
        int i = utility.RandomInt(1, 8)
        if i < 3
            RandomSpawnType = "Skeletons"
            SpawnActors(RandomSpawnType, utility.RandomInt(2, 4), 250)
            FillCreaturesF()
        elseif i == 3
            RandomSpawnType = "Gargoyles"
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 2), 250)
            FillCreaturesF()
        elseif i == 4
            RandomSpawnType = "DragonPriests"
            SpawnActors(RandomSpawnType, 1, 250)
            FillCreaturesF()
        elseif i == 5
            RandomSpawnType = "CorruptedShadeSkeletons"
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 2), 250)
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
    elseif sScenario == "Extra Giants"
        RandomSpawnType = "Giants Male"
        SpawnActors(RandomSpawnType, utility.RandomInt(2, 100), 250)
        FillCreaturesE()
        RandomSpawnType = "Giants Male"
        SpawnActors(RandomSpawnType, 2, 250)
        FillCreaturesF()
    elseif sScenario == "Extra Falmers"
        if D100(50.0)
            RandomSpawnType = "Chaurus"
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 2), 250)
            FillCreaturesF()
        else
            RandomSpawnType = "Chaurus Reapers"
            SpawnActors(RandomSpawnType, utility.RandomInt(1, 2), 250)
            FillCreaturesF()
        endif
    endif
    SpawningActorsActive = false
EndFunction




	
bool spawned_END = false	


;ActorBase function GetActorBase()
;	return GetBaseObject() as ActorBase
;EndFunction
	
Function SpawnActors(string sType, int iRaperCount, int iDistanceBase)
    float zOffsetB
    int iDistance = iDistanceBase
    NymTrace("SpawnActors: " + sType)
    if sType == "Human Ghosts"
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(728982, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(728983, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(728984, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(728985, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Miners"
    elseif sType == "Chaurus"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 3)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(129576, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(129576, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(129576, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Chaurus Reapers"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 3)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146063, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146063, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146063, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Sabrecats"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(250488, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(250488, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Spriggan Burnt"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67329646, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Bears"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(270949, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124836, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Deer"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(704224, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(704224, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Rieklings"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33666640, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33666641, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33666642, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33666646, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Rieklings Mounted"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67264024, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67264017, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Ashhoppers"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276425, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276425, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276425, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276425, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Boars"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33701947, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33701947, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33701947, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33701947, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Werewolves"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124876, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124876, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124876, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124876, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Wolves"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(754625, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(754625, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(754625, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(754625, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Skeletons"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(337219, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(337219, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(337219, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(337219, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Gargoyles"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 2)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33596108, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33596108, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33596108, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33596108, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "DragonPriests"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(565704, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(565705, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(580670, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(580670, "Skyrim.esm"), 1, false, false)
            SpawnedActor[31] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "CorruptedShadeSkeletons"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(27376, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(27377, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(27376, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(27377, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Ashspawn"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67314364, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67314366, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67314364, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67314366, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "DeathHounds"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33652418, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33652418, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33652418, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(33652418, "Dawnguard.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Atronach Frost"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146087, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Atronach Storm"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146088, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146088, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146088, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146088, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Seekers"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276424, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276424, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276424, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67276424, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Lurkers"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67285226, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67285226, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67285226, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(67285226, "Dragonborn.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Dremora"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124847, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1101034, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(124847, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1101034, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Orcs"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(889927, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(889927, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(401704, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(401704, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Forsworn"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(279306, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(277486, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(279139, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(279175, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Couriers"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(237443, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1074670, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1074671, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1074656, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Farmers"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(776030, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062116, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1075809, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1075809, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Nobles"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1060194, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(370989, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(370992, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1060194, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Redguards"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(811030, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(475072, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(370991, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(475072, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Bandits"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(110455, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(110805, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(89061, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(110780, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Khajiits"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1070419, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1088127, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1070417, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062165, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Argonians"
        if !iRaperCount
            iRaperCount = utility.RandomInt(1, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1070420, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1070433, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1073453, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1070418, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Canines"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146066, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146066, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146066, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(146066, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Thiefs"
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062119, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062119, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062119, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1062119, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Skeevers"
        if !iRaperCount
            iRaperCount = utility.RandomInt(2, 4)
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(299250, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(299250, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(299250, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(299250, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Goat"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(275868, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Horse"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(429425, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(429425, "Skyrim.esm"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 2
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(429425, "Skyrim.esm"), 1, false, false)
            SpawnedActor[2] = (TempAnActor as actor)
            SpawnedActor[2].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 3
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(429425, "Skyrim.esm"), 1, false, false)
            SpawnedActor[3] = (TempAnActor as actor)
            SpawnedActor[3].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Magic Anomaly"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(749460, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Atronach Flame"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(652094, "Skyrim.esm"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Giants Male"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(2119, "CreatureSummoner.esp"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(2120, "CreatureSummoner.esp"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    elseif sType == "Giants Female"
        if !iRaperCount
            iRaperCount = 1
        endif
        if iRaperCount > 0
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(2122, "CreatureSummoner.esp"), 1, false, false)
            SpawnedActor[0] = (TempAnActor as actor)
            SpawnedActor[0].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
        if iRaperCount > 1
            TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(2122, "CreatureSummoner.esp"), 1, false, false)
            SpawnedActor[1] = (TempAnActor as actor)
            SpawnedActor[1].MoveTo(cfgqst.PlayerRef, iDistance * math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - storqst.GlobalSpawnHeight, false)
        endif
    endif
    if !IsAmbush
        if SpawnedActor[0]
            while !SpawnedActor[0].Is3DLoaded() && cfgqst.ModEnabled
                NymTrace("This is Happening(A)")
                utility.Wait(0.1)
            endwhile
            zOffsetB = SpawnedActor[0].GetHeadingAngle(cfgqst.PlayerRef)
            SpawnedActor[0].SetAngle(0.0, 0.0, SpawnedActor[0].GetAngleZ() + zOffsetB)
            PlaySummonEffect(SpawnedActor[0])
        endif
        if SpawnedActor[1]
            while !SpawnedActor[1].Is3DLoaded() && cfgqst.ModEnabled
                NymTrace("This is Happening(B)")
                utility.Wait(0.1)
            endwhile
            zOffsetB = SpawnedActor[1].GetHeadingAngle(cfgqst.PlayerRef)
            SpawnedActor[1].SetAngle(0.0, 0.0, SpawnedActor[1].GetAngleZ() + zOffsetB)
            PlaySummonEffect(SpawnedActor[1])
        endif
        if SpawnedActor[2]
            while !SpawnedActor[2].Is3DLoaded() && cfgqst.ModEnabled
                NymTrace("This is Happening(C)")
                utility.Wait(0.1)
            endwhile
            zOffsetB = SpawnedActor[2].GetHeadingAngle(cfgqst.PlayerRef)
            SpawnedActor[2].SetAngle(0.0, 0.0, SpawnedActor[2].GetAngleZ() + zOffsetB)
            PlaySummonEffect(SpawnedActor[2])
        endif
        if SpawnedActor[3]
            while !SpawnedActor[3].Is3DLoaded() && cfgqst.ModEnabled
                NymTrace("This is Happening(D)")
                utility.Wait(0.1)
            endwhile
            zOffsetB = SpawnedActor[3].GetHeadingAngle(cfgqst.PlayerRef)
            SpawnedActor[3].SetAngle(0.0, 0.0, SpawnedActor[3].GetAngleZ() + zOffsetB)
            PlaySummonEffect(SpawnedActor[3])
        endif
    endif
    if IsAmbush
        NymTrace("AMBUSH: is Ambush")
        HarmonizeSpawnedActorGroup(sType)
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


Function CreateGroups()
	DebugTrace("CreateGroups()")

	if RapersACount > 0
	NymBox("RapersACount > 0")
	endif 
	if RapersBCount > 0
	NymTrace("RapersBCount > 0")
	endif 
	if RapersCCount > 0
	NymTrace("RapersCCount > 0")
	endif 

	if CreaturesACount > 0
	NymBox("CreaturesACount > 0")
	endif 
	if CreaturesBCount > 0
	NymTrace("CreaturesBCount > 0")
	endif 
	if CreaturesCCount > 0
	NymTrace("CreaturesCCount > 0")
	endif 
	if CreaturesDCount > 0
	NymTrace("CreaturesDCount > 0")
	endif 
	if CreaturesECount > 0
	NymTrace("CreaturesECount > 0")
	endif 
	if CreaturesFCount > 0
	NymBox("CreaturesFCount > 0")
	endif 
	
	RapersA = new Actor[4]					
	RapersA[0] = None						 
	RapersA[1] = None						 
	RapersA[2] = None						 
	RapersA[3] = None	
	RapersACount = 0
			
	RapersB = new Actor[4]					
	RapersB[0] = None						 
	RapersB[1] = None						 
	RapersB[2] = None						 
	RapersB[3] = None	
	RapersBCount = 0
	
	RapersC = new Actor[4]					
	RapersC[0] = None						 
	RapersC[1] = None						 
	RapersC[2] = None						 
	RapersC[3] = None	
	RapersCCount = 0

	CreaturesA = new Actor[4]					
	CreaturesA[0] = None						 
	CreaturesA[1] = None						 
	CreaturesA[2] = None						 
	CreaturesA[3] = None	
	CreaturesACount = 0

	CreaturesB = new Actor[4]					
	CreaturesB[0] = None						
	CreaturesB[1] = None						
	CreaturesB[2] = None						
	CreaturesB[3] = None	
	CreaturesBCount = 0

	CreaturesC = new Actor[4]					
	CreaturesC[0] = None						 
	CreaturesC[1] = None						 
	CreaturesC[2] = None						 
	CreaturesC[3] = None	
	CreaturesCCount = 0

	CreaturesD = new Actor[4]					
	CreaturesD[0] = None						 
	CreaturesD[1] = None						 
	CreaturesD[2] = None						 
	CreaturesD[3] = None	
	CreaturesDCount = 0

	CreaturesE = new Actor[4]					
	CreaturesE[0] = None						 
	CreaturesE[1] = None						 
	CreaturesE[2] = None						 
	CreaturesE[3] = None	
	CreaturesECount = 0
	
	CreaturesF = new Actor[4]					
	CreaturesF[0] = None						 
	CreaturesF[1] = None						 
	CreaturesF[2] = None						 
	CreaturesF[3] = None	
	CreaturesFCount = 0

	SpawnedActor = new Actor[4]					
	SpawnedActor[0] = None						 
	SpawnedActor[1] = None						 
	SpawnedActor[2] = None						 
	SpawnedActor[3] = None	
		
	cfgqst.SpawnedGroups[0] = 0
	cfgqst.SpawnedGroups[1] = 0
	cfgqst.SpawnedGroups[2] = 0
	cfgqst.SpawnedGroups[3] = 0
	cfgqst.SpawnedGroups[4] = 0
	cfgqst.SpawnedGroups[5] = 0
	cfgqst.SpawnedGroups[6] = 0
	cfgqst.SpawnedGroups[7] = 0
	cfgqst.SpawnedGroups[8] = 0
	cfgqst.SpawnedGroups[9] = 0
	cfgqst.SpawnedGroups[10] = 0
	cfgqst.SpawnedGroups[11] = 0

EndFunction 


;---------------- SortActors Function ------------------------------

Function SortActors()
    string aName
    int aGender
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SortActors(START)", 0)
    InfoMessage("If this takes too long, try enabling LagFix in MCM or open console for some seconds")
    bool RapersAareGuards = false
    if cfgqst.CivilRapeRunning
        while CalmRunning && cfgqst.ModEnabled
            utility.Wait(2.0)
        endwhile
    endif
    if ActorsSpawned
    else
        if cfgqst.SpawnedGroups[0] == 0
            if cfgqst.CivilRapeRunning && RapersACount == 0
                RapersA = new actor[4]
                RapersA[0] = None
                RapersA[1] = None
                RapersA[2] = None
                RapersA[3] = None
                RapersACount = 0
            elseif cfgqst.CivilRapeRunning && RapersACount > 0
                RapersAareGuards = true
            else
                RapersA = new actor[4]
                RapersA[0] = None
                RapersA[1] = None
                RapersA[2] = None
                RapersA[3] = None
                RapersACount = 0
            endif
        endif
        if cfgqst.SpawnedGroups[1] == 0
            RapersB = new actor[4]
            RapersB[0] = None
            RapersB[1] = None
            RapersB[2] = None
            RapersB[3] = None
            RapersBCount = 0
        endif
        if cfgqst.SpawnedGroups[2] == 0
            RapersC = new actor[4]
            RapersC[0] = None
            RapersC[1] = None
            RapersC[2] = None
            RapersC[3] = None
            RapersCCount = 0
        endif
        if cfgqst.SpawnedGroups[3] == 0
            CreaturesA = new actor[4]
            CreaturesA[0] = None
            CreaturesA[1] = None
            CreaturesA[2] = None
            CreaturesA[3] = None
            CreaturesACount = 0
        endif
        if cfgqst.SpawnedGroups[4] == 0
            CreaturesB = new actor[4]
            CreaturesB[0] = None
            CreaturesB[1] = None
            CreaturesB[2] = None
            CreaturesB[3] = None
            CreaturesBCount = 0
        endif
        if cfgqst.SpawnedGroups[5] == 0
            CreaturesC = new actor[4]
            CreaturesC[0] = None
            CreaturesC[1] = None
            CreaturesC[2] = None
            CreaturesC[3] = None
            CreaturesCCount = 0
        endif
        if cfgqst.SpawnedGroups[6] == 0
            CreaturesD = new actor[4]
            CreaturesD[0] = None
            CreaturesD[1] = None
            CreaturesD[2] = None
            CreaturesD[3] = None
            CreaturesDCount = 0
        endif
        if cfgqst.SpawnedGroups[7] == 0
            CreaturesE = new actor[4]
            CreaturesE[0] = None
            CreaturesE[1] = None
            CreaturesE[2] = None
            CreaturesE[3] = None
            CreaturesECount = 0
        endif
        if cfgqst.SpawnedGroups[8] == 0
            CreaturesF = new actor[4]
            CreaturesF[0] = None
            CreaturesF[1] = None
            CreaturesF[2] = None
            CreaturesF[3] = None
            CreaturesFCount = 0
        endif
        if cfgqst.SpawnedGroups[9] == 0
            SpawnedActor = new actor[4]
            SpawnedActor[0] = None
            SpawnedActor[1] = None
            SpawnedActor[2] = None
            SpawnedActor[3] = None
        endif
    endif
    bool NewSpawnSystem = false
    NewSpawnSystem = true
    if NewSpawnSystem
        NymTrace("NeedRapersForSlavery: " + NeedRapersForSlavery + " cfgqst.RapeAgain = " + cfgqst.RapeAgain)
        if cfgqst.RapeAgain
            NymTrace("RapeAgain")
        elseif cfgqst.DefeatTypeScenario == "Afterlife"
            while SpawningActorsActive && !cfgqst.AbortAll
                NymTrace("SpawningActorsActive WAIT LOOP")
                utility.Wait(1.0)
            endwhile
            ActorsSpawned = true
        elseif cfgqst.DefeatTypeScenario == "FastTravel"
            SpawnActorGroups("FastTravel")
            ActorsSpawned = true
        elseif cfgqst.DefeatEntranceVia == "Ambush"
            NymTrace("Spawn Ambush")
            SpawnActorGroups("Ambush")
            ActorsSpawned = true
        elseif cfgqst.DefeatTypeGeneral == "AreHumans" && !(cfgqst.DefeatType == "Undead") && !(cfgqst.DefeatType == "Vampires") && !(cfgqst.DefeatType == "Necromancers")
            if NeedRapersForSlavery
                NymMessage("Spawn Slave Owners")
                SpawnActorGroups("Slave Owners")
                ActorsSpawned = true
            elseif cfgqst.NymSpawning
                if NeedCreaturesForSex
                    SpawnActorGroups("Extra Animals")
                    ActorsSpawned = true
                endif
                utility.Wait(1.0)
                if RapersMale < 3 && D100(25.0)
                    SpawnActorGroups("Extra Rapers")
                    ActorsSpawned = true
                endif
            endif
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
        elseif cfgqst.DefeatType == "Falmers" && cfgqst.NymSpawning
            NymMessage("Spawn Extra Rapers for Falmers")
            SpawnActorGroups("Extra Falmers")
            ActorsSpawned = true
        elseif NeedRapersForSlavery
            SpawnActorGroups("Slave Owners")
            ActorsSpawned = true
        endif
    endif
    int i = ActorArray.Length
    bool aIsValid = false
    bool NewWhile = true
    if !(cfgqst.DefeatTypeScenario == "Afterlife") && !(cfgqst.DefeatTypeScenario == "FastTravel")
        if NewWhile
            while i
                i = i - 1
                actor a = (ActorArray[i].GetReference() as actor)
                aIsValid = false
                bool ThisWomanIsWhipper = false
                if a
                    aGender = storqst.GetGender(a)
                    NymTrace("MyGender: " + aGender + " SexlabGender: " + SexLab.GetGender(a))
                else
                    aGender = 404
                    NymTrace("MyGender: 404 - Actor gone missing")
                endif
                if aGender == 2
                    aName = cfgqst.GetLeveledActorBaseName(a)
                elseif aGender < 2
                    aName = a.GetBaseObject().GetName()
                endif
                if folqst.IsPresentFollower(a)
                    if a.IsInFaction(WhippingFaction)
                        a.RemoveFromFaction(WhippingFaction)
                    endif
                elseif !WhipperFound && !storqst.NeedAwhipper && aGender == 1 && !folqst.IsPresentFollower(a) && cfgqst.DefeatWhipProb > 0.0
                endif
                if aGender == 1 && cfgqst.FemalesAllowed && !ThisWomanIsWhipper
                    if a && cfgqst.AllowActor(a, 1, aName)
                        a.AddToFaction(storqst.NakedRaperFaction)
                        if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
                            RapersB[RapersBCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper Female RapersB #" + RapersBCount + ": " + cfgqst.GetActorInfo(RapersB[RapersBCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper Female RapersB #" + RapersBCount + ": " + aName, 0)
                            endif
                            RapersBCount = RapersBCount + 1
                            RapersBFemaleCount = RapersBFemaleCount + 1
                            NeedARaper = false
                        elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersCBlocked
                            RapersC[RapersCCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female NeedARaper RapersC #" + RapersCCount + ": " + cfgqst.GetActorInfo(RapersC[RapersCCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female NeedARaper RapersC #" + RapersCCount + ": " + aName, 0)
                            endif
                            RapersCCount = RapersCCount + 1
                            RapersCFemaleCount = RapersCFemaleCount + 1
                            NeedAnotherRaper = false
                        elseif RapersACount < 4 && !RapersABlocked
                            RapersA[RapersACount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersA #" + RapersACount + ": " + cfgqst.GetActorInfo(RapersA[RapersACount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersA #" + RapersACount + ": " + aName, 0)
                            endif
                            RapersACount = RapersACount + 1
                            RapersAFemaleCount = RapersAFemaleCount + 1
                        elseif RapersBCount < 4 && !RapersBBlocked
                            RapersB[RapersBCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersB #" + RapersBCount + ": " + cfgqst.GetActorInfo(RapersB[RapersBCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersB #" + RapersBCount + ": " + aName, 0)
                            endif
                            RapersBCount = RapersBCount + 1
                            RapersBFemaleCount = RapersBFemaleCount + 1
                        elseif RapersCCount < 4 && !RapersCBlocked
                            RapersC[RapersCCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersC #" + RapersCCount + ": " + cfgqst.GetActorInfo(RapersC[RapersCCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Female RapersC #" + RapersCCount + ": " + aName, 0)
                            endif
                            RapersCCount = RapersCCount + 1
                            RapersCFemaleCount = RapersCFemaleCount + 1
                        endif
                    endif
                elseif aGender == 0
                    if a && cfgqst.AllowActor(a, 1, aName)
                        a.AddToFaction(storqst.NakedRaperFaction)
                        if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
                            RapersB[RapersBCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male NeedARaper RapersB #" + RapersBCount + ": " + cfgqst.GetActorInfo(RapersB[RapersBCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male NeedARaper RapersB #" + RapersBCount + ": " + aName, 0)
                            endif
                            RapersBCount = RapersBCount + 1
                            NeedARaper = false
                        elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersBBlocked
                            RapersC[RapersCCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male NeedARaper RapersC #" + RapersCCount + ": " + cfgqst.GetActorInfo(RapersC[RapersCCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male NeedARaper RapersC #" + RapersCCount + ": " + aName, 0)
                            endif
                            RapersCCount = RapersCCount + 1
                            NeedAnotherRaper = false
                        elseif !RapersAareGuards && RapersACount < 4 && !RapersABlocked
                            RapersA[RapersACount] = a
                            a.AddToFaction(storqst.NakedRaperFaction)
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersA #" + RapersACount + ": " + cfgqst.GetActorInfo(RapersA[RapersACount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersA #" + RapersACount + ": " + aName, 0)
                            endif
                            RapersACount = RapersACount + 1
                        elseif RapersBCount < 4 && !RapersBBlocked
                            RapersB[RapersBCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersB #" + RapersBCount + ": " + cfgqst.GetActorInfo(RapersB[RapersBCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersB #" + RapersBCount + ": " + aName, 0)
                            endif
                            RapersBCount = RapersBCount + 1
                        elseif RapersCCount < 4 && !RapersCBlocked
                            RapersC[RapersCCount] = a
                            if cfgqst.ShowDebugMessages
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersC #" + RapersCCount + ": " + cfgqst.GetActorInfo(RapersC[RapersCCount]), 0)
                            else
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Male RapersC #" + RapersCCount + ": " + aName, 0)
                            endif
                            RapersCCount = RapersCCount + 1
                        endif
                    endif
                elseif aGender == 2 && cfgqst.AllowCreatures
                    if !a.IsInFaction(PlayerFaction)
                        if a && cfgqst.AllowActor(a, 2, aName)
                            a.AddToFaction(storqst.NakedRaperFaction)
                            if CreaturesARace == "empty"
                                CreaturesARace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesARace #" + CreaturesARace, 0)
                            elseif CreaturesBRace == "empty" && !(CreaturesARace == GetRaceKey(a))
                                CreaturesBRace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesBRace #" + CreaturesBRace, 0)
                            elseif CreaturesCRace == "empty" && !(CreaturesARace == GetRaceKey(a)) && !(CreaturesBRace == GetRaceKey(a))
                                CreaturesCRace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesCRace #" + CreaturesCRace, 0)
                            elseif CreaturesDRace == "empty" && !(CreaturesARace == GetRaceKey(a)) && !(CreaturesBRace == GetRaceKey(a)) && !(CreaturesCRace == GetRaceKey(a))
                                CreaturesDRace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesDRace #" + CreaturesDRace, 0)
                            elseif CreaturesERace == "empty" && !(CreaturesARace == GetRaceKey(a)) && !(CreaturesBRace == GetRaceKey(a)) && !(CreaturesCRace == GetRaceKey(a)) && !(CreaturesDRace == GetRaceKey(a))
                                CreaturesERace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesERace #" + CreaturesERace, 0)
                            elseif CreaturesFRace == "empty" && !(CreaturesARace == GetRaceKey(a)) && !(CreaturesBRace == GetRaceKey(a)) && !(CreaturesCRace == GetRaceKey(a)) && !(CreaturesDRace == GetRaceKey(a)) && !(CreaturesERace == GetRaceKey(a))
                                CreaturesFRace = GetRaceKey(a)
                                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesFRace #" + CreaturesFRace, 0)
                            endif
                            if NeedARaper && CreaturesACount > 0
                                CreaturesB[CreaturesBCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper CreaturesB #" + CreaturesBCount + ": " + cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper CreaturesB #" + CreaturesBCount + ": " + aName, 0)
                                endif
                                CreaturesBCount = CreaturesBCount + 1
                                NeedARaper = false
                                CreaturesBRace = GetRaceKey(a)
                            elseif NeedAnotherRaper && CreaturesBCount > 0
                                CreaturesC[CreaturesCCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper CreaturesC #" + CreaturesCCount + ": " + cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: NeedARaper CreaturesC #" + CreaturesCCount + ": " + aName, 0)
                                endif
                                CreaturesCCount = CreaturesCCount + 1
                                NeedAnotherRaper = false
                                CreaturesCRace = GetRaceKey(a)
                            elseif GetRaceKey(a) == CreaturesARace && CreaturesACount < 4
                                CreaturesA[CreaturesACount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesA #" + CreaturesACount + ": " + cfgqst.GetActorInfo(CreaturesA[CreaturesACount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesA #" + CreaturesACount + ": " + aName, 0)
                                endif
                                CreaturesACount = CreaturesACount + 1
                            elseif GetRaceKey(a) == CreaturesBRace && CreaturesBCount < 4
                                CreaturesB[CreaturesBCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesB #" + CreaturesBCount + ": " + cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesB #" + CreaturesBCount + ": " + aName, 0)
                                endif
                                CreaturesBCount = CreaturesBCount + 1
                            elseif GetRaceKey(a) == CreaturesCRace && CreaturesCCount < 4
                                CreaturesC[CreaturesCCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesC #" + CreaturesCCount + ": " + cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesC #" + CreaturesCCount + ": " + aName, 0)
                                endif
                                CreaturesCCount = CreaturesCCount + 1
                            elseif GetRaceKey(a) == CreaturesDRace && CreaturesDCount < 4
                                CreaturesD[CreaturesDCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesD #" + CreaturesDCount + ": " + cfgqst.GetActorInfo(CreaturesD[CreaturesDCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesD #" + CreaturesDCount + ": " + aName, 0)
                                endif
                                CreaturesDCount = CreaturesDCount + 1
                            elseif GetRaceKey(a) == CreaturesERace && CreaturesECount < 4
                                CreaturesE[CreaturesECount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesE #" + CreaturesECount + ": " + cfgqst.GetActorInfo(CreaturesE[CreaturesECount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesE #" + CreaturesECount + ": " + aName, 0)
                                endif
                                CreaturesECount = CreaturesECount + 1
                            elseif GetRaceKey(a) == CreaturesFRace && CreaturesFCount < 4
                                CreaturesF[CreaturesFCount] = a
                                if cfgqst.ShowDebugMessages
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesF #" + CreaturesFCount + ": " + cfgqst.GetActorInfo(CreaturesF[CreaturesFCount]), 0)
                                else
                                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesF #" + CreaturesFCount + ": " + aName, 0)
                                endif
                                CreaturesFCount = CreaturesFCount + 1
                            endif
                        endif
                    endif
                endif
            endwhile
        endif
    endif
    if cfgqst.CivilRapeRunning && RapersACount == 0
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR - no RapersA!", 0)
        ScreenMessage("#ERROR - no RapersA!")
    endif
    GroupArray = new int[9]
    GroupArray[0] = 0
    GroupArray[1] = 0
    GroupArray[2] = 0
    GroupArray[3] = 0
    GroupArray[4] = 0
    GroupArray[5] = 0
    GroupArray[6] = 0
    GroupArray[7] = 0
    GroupArray[8] = 0
    HumanGroupsAvailable = 0
    CreatureGroupsAvailable = 0
    if !(cfgqst.DefeatTypeScenario == "Afterlife") && !(cfgqst.DefeatTypeScenario == "FastTravel")
        if CreaturesACount > 0 && CreaturesARace == "empty" && cfgqst.SpawnedGroups[3] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesA empty race - remove", 0)
            CreaturesACount = 0
        endif
        if CreaturesBCount > 0 && CreaturesBRace == "empty" && cfgqst.SpawnedGroups[4] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesB empty race - remove", 0)
            CreaturesBCount = 0
        endif
        if CreaturesCCount > 0 && CreaturesCRace == "empty" && cfgqst.SpawnedGroups[5] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesC empty race - remove", 0)
            CreaturesCCount = 0
        endif
        if CreaturesDCount > 0 && CreaturesDRace == "empty" && cfgqst.SpawnedGroups[6] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesD empty race - remove", 0)
            CreaturesDCount = 0
        endif
        if CreaturesECount > 0 && CreaturesERace == "empty" && cfgqst.SpawnedGroups[7] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesE empty race - remove", 0)
            CreaturesECount = 0
        endif
        if CreaturesFCount > 0 && CreaturesFRace == "empty" && cfgqst.SpawnedGroups[8] == 0
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR-CreaturesF empty race - remove", 0)
            CreaturesFCount = 0
        endif
    endif
    if RapersACount > 0
        GroupArray[0] = 1
        HumanGroupsAvailable = HumanGroupsAvailable + 1
    endif
    if RapersBCount > 0
        GroupArray[1] = 1
        HumanGroupsAvailable = HumanGroupsAvailable + 1
    endif
    if RapersCCount > 0
        GroupArray[2] = 1
        HumanGroupsAvailable = HumanGroupsAvailable + 1
    endif
    if CreaturesACount > 0
        GroupArray[3] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if CreaturesBCount > 0
        GroupArray[4] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if CreaturesCCount > 0
        GroupArray[5] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if CreaturesDCount > 0
        GroupArray[6] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if CreaturesECount > 0
        GroupArray[7] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if CreaturesFCount > 0
        GroupArray[8] = 1
        CreatureGroupsAvailable = CreatureGroupsAvailable + 1
    endif
    if RapersAareGuards
        RapersAareGuards = false
    endif
    string RapersA_0_Name = "NoName"
    string RapersA_1_Name = "NoName"
    string RapersA_2_Name = "NoName"
    string RapersA_3_Name = "NoName"
    string RapersB_0_Name = "NoName"
    string RapersB_1_Name = "NoName"
    string RapersB_2_Name = "NoName"
    string RapersB_3_Name = "NoName"
    string RapersC_0_Name = "NoName"
    string RapersC_1_Name = "NoName"
    string RapersC_2_Name = "NoName"
    string RapersC_3_Name = "NoName"
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
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: :::::::::::::::::::::: ##RAPERS ::::::::::::::::::::::", 0)
    if Nym()
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersACount:" + RapersACount + " [0]:" + RapersA_0_Name + " [1]:" + RapersA_1_Name + " [2]:" + RapersA_2_Name + " [3]:" + RapersA_3_Name, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersBCount:" + RapersBCount + " [0]:" + RapersB_0_Name + " [1]:" + RapersB_1_Name + " [2]:" + RapersB_2_Name + " [3]:" + RapersB_3_Name, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersCCount:" + RapersCCount + " [0]:" + RapersC_0_Name + " [1]:" + RapersC_1_Name + " [2]:" + RapersC_2_Name + " [3]:" + RapersC_3_Name, 0)
    else
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersACount:" + RapersACount, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersBCount:" + RapersBCount, 0)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: RapersCCount:" + RapersCCount, 0)
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesACount:" + CreaturesACount + " CreaturesARace: " + CreaturesARace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesBCount:" + CreaturesBCount + " CreaturesBRace: " + CreaturesBRace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesCCount:" + CreaturesCCount + " CreaturesCRace: " + CreaturesCRace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesDCount:" + CreaturesDCount + " CreaturesDRace: " + CreaturesDRace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesECount:" + CreaturesECount + " CreaturesERace: " + CreaturesERace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreaturesFCount:" + CreaturesFCount + " CreaturesFRace: " + CreaturesFRace, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: VictimCount:" + VictimCount, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: HumanGroupsAvailable:" + HumanGroupsAvailable, 0)
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: CreatureGroupsAvailable:" + CreatureGroupsAvailable, 0)
    note = false
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
		
Function SelectAggressor(int iFuckingRound, int VictimNumber)
    string ActorName
    int z
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SelectAggressor START [Round: " + iFuckingRound + "/" + Allow_SexScenes + "] PlayerHadCreatures:" + PlayerHadCreatures, 0)
    SelectedGroup = "None"
    string CreatureGroupRace = "empty"
    int y = 0
    if Nym() && iFuckingRound > 1 && !(ForePlayGroup == "None")
        NymMessage("#ERROR- Foreplaygroup should be none")
    endif
    if VictimNumber == 0
        ActorName = "Player"
    elseif VictimNumber == 1
        ActorName = folqst.Name_Follower01
    elseif VictimNumber == 2
        ActorName = folqst.Name_Follower02
    endif
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SelectAggressor[" + ActorName + "][Round: " + iFuckingRound + "/" + Allow_SexScenes + "]", 0)
    creaturegroup = false
    humangroup = false
    group = false
    if WasForeplay
        SelectedGroup = LastGroupPlayer
    else
        NymraCountsFunctions = NymraCountsFunctions + 1
        string[] RandomGroupArray = new string[9]
        RandomGroupArray[0] = "None"
        RandomGroupArray[1] = "None"
        RandomGroupArray[2] = "None"
        RandomGroupArray[3] = "None"
        RandomGroupArray[4] = "None"
        RandomGroupArray[5] = "None"
        RandomGroupArray[6] = "None"
        RandomGroupArray[7] = "None"
        RandomGroupArray[8] = "None"
        int x = 0
        int w = 0
        bool GroupFound = false
        bool UsePreselectedGroups = false
        bool AllowHumanGroups = false
        bool AllowCreatureGroups = false
        if VictimNumber == 0 && HasForeplay
            NymTrace("SelectAggressor([Round: " + iFuckingRound + "/" + Allow_SexScenes + "]) #ForePlayGroup - Pick Group for ForePlay")
            w = 3
        elseif VictimNumber == 0 && WasForeplay
            w = 3
            NymTrace("SelectAggressor([Round: " + iFuckingRound + "/" + Allow_SexScenes + "])  #ForePlayGroup (same Group for Rape 1)")
        else
            NymTrace("SelectAggressor([Round: " + iFuckingRound + "/" + Allow_SexScenes + "])")
            w = 9
        endif
        if cfgqst.DefeatTypeGeneral == "AreAnimals" || cfgqst.DefeatTypeGeneral == "AreHumanoids"
            if VictimNumber == 0 && (iFuckingRound < 2 || iFuckingRound == 2 && D100(50.0))
                if CreaturesARace == cfgqst.DefeatType || CreaturesBRace == cfgqst.DefeatType || CreaturesCRace == cfgqst.DefeatType || CreaturesDRace == cfgqst.DefeatType || CreaturesERace == cfgqst.DefeatType || CreaturesFRace == cfgqst.DefeatType
                    UsePreselectedGroups = true
                    NymTrace("SelectAggressor([Round: " + iFuckingRound + "/" + Allow_SexScenes + "]) #Creatures Types (" + cfgqst.DefeatType + " Presorting")
                    if CreaturesARace == cfgqst.DefeatType && GroupArray[3] == 1
                        GroupArray[3] = 3
                    endif
                    if CreaturesBRace == cfgqst.DefeatType && GroupArray[4] == 1
                        GroupArray[4] = 3
                    endif
                    if CreaturesCRace == cfgqst.DefeatType && GroupArray[5] == 1
                        GroupArray[5] = 3
                    endif
                    if CreaturesDRace == cfgqst.DefeatType && GroupArray[6] == 1
                        GroupArray[6] = 3
                    endif
                    if CreaturesERace == cfgqst.DefeatType && GroupArray[7] == 1
                        GroupArray[7] = 3
                    endif
                    if CreaturesFRace == cfgqst.DefeatType && GroupArray[8] == 1
                        GroupArray[8] = 3
                    endif
                endif
            endif
        endif
        if VictimNumber == 0 && Allow_Creatures
            NymTrace("SelectAggressor(A) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
            if cfgqst.DefeatTypeGeneral == "AreHumans"
                AllowHumanGroups = true
                if iFuckingRound == 1
                    NymTrace("SelectAggressor(E) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
                    AllowCreatureGroups = false
                elseif iFuckingRound == 2 && !PlayerHadCreatures
                    AllowCreatureGroups = true
                    if cfgqst.NymSpawning && CheckCreatureGroups() && cfgqst.AllowCreatures && !PlayerHadCreatures
                        NymTrace("SelectAggressor(EE) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
                        if Allow_SexScenes < 3
                            AllowHumanGroups = false
                        elseif D100(50.0)
                            AllowHumanGroups = false
                        endif
                    endif
                elseif iFuckingRound > 2 && CheckCreatureGroups() && cfgqst.AllowCreatures
                    NymTrace("SelectAggressor(EEE) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
                    if PlayerHadCreatures
                        if Allow_SexScenes < 4
                            AllowHumanGroups = true
                            AllowCreatureGroups = false
                        elseif D100(25.0)
                            AllowHumanGroups = true
                            AllowCreatureGroups = true
                        else
                            AllowHumanGroups = true
                            AllowCreatureGroups = false
                        endif
                    elseif cfgqst.NymSpawning
                        AllowHumanGroups = false
                        AllowCreatureGroups = true
                    endif
                endif
            elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
                AllowCreatureGroups = true
                if iFuckingRound == 1
                    AllowHumanGroups = false
                elseif iFuckingRound == 2 && RapersACount > 0
                    AllowHumanGroups = true
                elseif iFuckingRound == 2 && D100(25.0)
                    AllowHumanGroups = true
                endif
            elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
                AllowCreatureGroups = true
                if iFuckingRound == 1
                    AllowHumanGroups = false
                elseif iFuckingRound == 2 && D100(10.0)
                    NymTrace("SelectAggressor(K) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
                endif
            else
                NymTrace("SelectAggressor(L) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
                AllowCreatureGroups = true
                AllowHumanGroups = true
            endif
        else
            NymTrace("SelectAggressor(M) [Round: " + iFuckingRound + "/" + Allow_SexScenes + "]")
            AllowCreatureGroups = true
            AllowHumanGroups = true
        endif
        NymTrace("SelectAggressor() [Round: " + iFuckingRound + "/" + Allow_SexScenes + "] AllowHumanGroups: " + AllowHumanGroups + " // AllowCreatureGroups: " + AllowCreatureGroups)
        if UsePreselectedGroups
            while x < w
                if GroupArray[x] == 3
                    GroupArray[x] = 1
                    if x == 0 && AllowHumanGroups && UpdateGroup("RapersA")
                        RandomGroupArray[y] = "RapersA"
                        y = y + 1
                    elseif x == 1 && AllowHumanGroups && UpdateGroup("RapersB")
                        RandomGroupArray[y] = "RapersB"
                        y = y + 1
                    elseif x == 2 && AllowHumanGroups && UpdateGroup("RapersC")
                        RandomGroupArray[y] = "RapersC"
                        y = y + 1
                    elseif x == 3 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesA")
                        RandomGroupArray[y] = "CreaturesA"
                        y = y + 1
                    elseif x == 4 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesB")
                        RandomGroupArray[y] = "CreaturesB"
                        y = y + 1
                    elseif x == 5 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesC")
                        RandomGroupArray[y] = "CreaturesC"
                        y = y + 1
                    elseif x == 6 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesD")
                        RandomGroupArray[y] = "CreaturesD"
                        y = y + 1
                    elseif x == 7 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesE")
                        RandomGroupArray[y] = "CreaturesE"
                        y = y + 1
                    elseif x == 8 && AllowCreatureGroups && Allow_Creatures && UpdateGroup("CreaturesE")
                        RandomGroupArray[y] = "CreaturesF"
                        y = y + 1
                    endif
                endif
                x = x + 1
            endwhile
        else
            while x < w
                if GroupArray[x] == 1
                    if x == 0 && AllowHumanGroups
                        RandomGroupArray[y] = "RapersA"
                        y = y + 1
                    elseif x == 1 && AllowHumanGroups
                        RandomGroupArray[y] = "RapersB"
                        y = y + 1
                    elseif x == 2 && AllowHumanGroups
                        RandomGroupArray[y] = "RapersC"
                        y = y + 1
                    elseif x == 3 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesA"
                        y = y + 1
                    elseif x == 4 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesB"
                        y = y + 1
                    elseif x == 5 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesC"
                        y = y + 1
                    elseif x == 6 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesD"
                        y = y + 1
                    elseif x == 7 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesE"
                        y = y + 1
                    elseif x == 8 && AllowCreatureGroups && Allow_Creatures
                        RandomGroupArray[y] = "CreaturesF"
                        y = y + 1
                    endif
                endif
                x = x + 1
            endwhile
        endif
        y = y - 1
        if Nym()
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[0]: " + RandomGroupArray[0])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[1]: " + RandomGroupArray[1])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[2]: " + RandomGroupArray[2])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[3]: " + RandomGroupArray[3])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[4]: " + RandomGroupArray[4])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[5]: " + RandomGroupArray[5])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[6]: " + RandomGroupArray[6])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[7]: " + RandomGroupArray[7])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - RandomGroupArray[8]: " + RandomGroupArray[8])
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] - y =: " + y)
        endif
        if y == 0
            z = 0
        else
            z = utility.RandomInt(0, y)
        endif
        SelectedGroup = RandomGroupArray[z]
        if VictimNumber == 0
            ActiveGroup_Player = RandomGroupArray[z]
            LastGroupPlayer = RandomGroupArray[z]
        endif
    endif
    DebugTrace("SelectAggressor[" + ActorName + "][Round: " + iFuckingRound + "/" + Allow_SexScenes + "] - Selected Group: " + SelectedGroup)
    NymTrace("DEBUG [Round: " + iFuckingRound + "/" + Allow_SexScenes + "] SelectedGroup : " + SelectedGroup)
    NymTrace("DEBUG [Round: " + iFuckingRound + "/" + Allow_SexScenes + "] RapersACount: " + RapersACount)
    RaperRace = "NoRace"
    if y == -1 || SelectedGroup == "None"
        DebugTrace("#ERROR - no Group available")
        Aggressor02Count = 0
    elseif SelectedGroup == "RapersA"
        GroupArray[0] = 2
        FillAggressorGroup(SelectedGroup, RapersACount)
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
        GroupArray[3] = 2
        FillAggressorGroup(SelectedGroup, CreaturesACount)
        creaturegroup = true
        CreatureGroupRace = CreaturesARace
        RaperRace = CreatureGroupRace
    elseif SelectedGroup == "CreaturesB"
        GroupArray[4] = 2
        FillAggressorGroup(SelectedGroup, CreaturesBCount)
        creaturegroup = true
        CreatureGroupRace = CreaturesBRace
        RaperRace = CreatureGroupRace
    elseif SelectedGroup == "CreaturesC"
        GroupArray[5] = 2
        FillAggressorGroup(SelectedGroup, CreaturesCCount)
        creaturegroup = true
        CreatureGroupRace = CreaturesCRace
        RaperRace = CreatureGroupRace
    elseif SelectedGroup == "CreaturesD"
        GroupArray[6] = 2
        FillAggressorGroup(SelectedGroup, CreaturesDCount)
        creaturegroup = true
        CreatureGroupRace = CreaturesDRace
        RaperRace = CreatureGroupRace
    elseif SelectedGroup == "CreaturesE"
        GroupArray[7] = 2
        FillAggressorGroup(SelectedGroup, CreaturesECount)
        creaturegroup = true
        CreatureGroupRace = CreaturesERace
        RaperRace = CreatureGroupRace
    elseif SelectedGroup == "CreaturesF"
        GroupArray[8] = 2
        FillAggressorGroup(SelectedGroup, CreaturesFCount)
        creaturegroup = true
        CreatureGroupRace = CreaturesFRace
        RaperRace = CreatureGroupRace
    endif
    if creaturegroup
        PlayerHadCreatures = true
        NymTrace("PlayerHadCreatures [Round: " + iFuckingRound + "/" + Allow_SexScenes + "] -> is now gettig Fucked by [" + CreatureGroupRace + "] Creatures")
    endif
    if AggressorCount == 0
        DebugTrace("SelectAggressor - AggressorCount == 0 --> Restart")
        NymBox("SelectAggressor - AggressorCount == 0 --> Restart")
    endif
    if AggressorCount == 4
        if D100(cfgqst.Group5Pchance)
            NymTrace("5P by chance")
        elseif D100(cfgqst.Group4Pchance)
            NymTrace("4P by chance")
            Aggressors[3] = None
            AggressorCount = 3
        elseif D100(cfgqst.Group3Pchance)
            NymTrace("3P by chance")
            Aggressors[3] = None
            Aggressors[2] = None
            AggressorCount = 2
        else
            NymTrace("2P by chance")
            Aggressors[3] = None
            Aggressors[2] = None
            Aggressors[1] = None
            AggressorCount = 1
        endif
    elseif AggressorCount == 3
        if D100(cfgqst.Group4Pchance)
            NymTrace("4P by chance")
        elseif D100(cfgqst.Group3Pchance)
            NymTrace("3P by chance")
            Aggressors[2] = None
            AggressorCount = 2
        else
            NymTrace("2P by chance")
            Aggressors[2] = None
            Aggressors[1] = None
            AggressorCount = 1
        endif
    elseif AggressorCount == 2
        if D100(cfgqst.Group3Pchance)
            NymTrace("3P by chance")
        else
            NymTrace("2P by chance")
            Aggressors[1] = None
            AggressorCount = 1
        endif
    endif
    if VictimNumber == 0
        if HasForeplay
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] PLAYER Group with Foreplay")
        else
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] PLAYER Group")
        endif
        if creaturegroup
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] creaturegroup [Race " + CreatureGroupRace + "] ")
            string raceKey = CreatureGroupRace
            if CreatureGroupRace == "Wolves" || CreatureGroupRace == "Dogs"
                NymMessage("CreatureGroupRace was Wolves/Dogs - raceKey changed to Canines")
                raceKey = "Canines"
            endif
            GetCreatureTags(raceKey)
            GroupTypePlayer = raceKey
            if AggressorCount == 4
                Animations4 = SexLab.GetCreatureAnimationsByRaceKeyTags(5, raceKey, CreatureTagsWanted, CreatureTagsSuppressed, false)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 5P creature animations found (" + ActorName + "): " + Animations4.Length)
                if Animations4.Length < 1
                    AggressorCount = 3
                    Aggressors[3] = None
                endif
            endif
            if AggressorCount == 3
                Animations3 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, raceKey, CreatureTagsWanted, CreatureTagsSuppressed, false)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 4P creature animations found (" + ActorName + "): " + Animations3.Length)
                if Animations3.Length < 1
                    AggressorCount = 2
                    Aggressors[2] = None
                endif
            endif
            if AggressorCount == 2
                Animations2 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, raceKey, CreatureTagsWanted, CreatureTagsSuppressed, false)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 3P creature animations found (" + ActorName + "): " + Animations2.Length)
                if Animations2.Length < 1
                    AggressorCount = 1
                    Aggressors[1] = None
                endif
            endif
            if AggressorCount == 1
                Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, raceKey, CreatureTagsWanted, CreatureTagsSuppressed, false)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 2P creature animations found (" + ActorName + "): " + Animations1.Length)
                if Animations1.Length < 1
                    AggressorCount = 0
                    Aggressors[0] = None
                    debug.Messagebox("Naked Defeat #ERROR no suitable Creature Sex Animations Found for " + raceKey + " Check your SLAL packs and SexLab Registration.")
                    DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] #ERROR no suitable Creature Animations Found for " + raceKey)
                endif
            endif
        endif
        if humangroup
            if AggressorCount == 0 && cfgqst.DefeatStateChapter == "Foreplay Scene"
                NymBox("Naked Defeat #ERROR 313 - no Rapers in Group - Skipping Scene.")
            elseif AggressorCount > 1
                PlayerHadGroup = true
            endif
            DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] humangroup")
            GetSexTags(VictimNumber)
            if cfgqst.DefeatStateChapter == "Foreplay Scene"
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] Group Tags FINAL FOREPLAY (Player): " + TagsWanted)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] Supressed Tags FINAL FOREPLAY (Player): " + TagsSuppressed)
            else
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] Group Tags FINAL (Player): " + TagsWanted)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] Supressed Tags FINAL (Player): " + TagsSuppressed)
            endif
            if AggressorCount == 4
                Animations4 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, true)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 5P Animations Found: " + Animations4.Length)
                if Animations4.Length < 1
                    AggressorCount = 3
                    Aggressors[3] = None
                    GetSexTags(VictimNumber)
                endif
            endif
            if AggressorCount == 3
                Animations3 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, true)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 4P Animations Found: " + Animations3.Length)
                if Animations3.Length < 1
                    AggressorCount = 2
                    Aggressors[2] = None
                    GetSexTags(VictimNumber)
                endif
            endif
            if AggressorCount == 2
                Animations2 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, true)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 3P Animations Found: " + Animations2.Length)
                if Animations2.Length < 1
                    AggressorCount = 1
                    Aggressors[1] = None
                    GetSexTags(VictimNumber)
                endif
            endif
            if AggressorCount == 1
                Animations1 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, true)
                DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] 2P Animations Found: " + Animations1.Length)
                if Animations1.Length < 1
                    AggressorCount = 0
                    Aggressors[0] = None
                    DebugTrace("SelectAggressor[" + ActorName + "][Round " + iFuckingRound + "] #ERROR - no suitable Animations found")
                    debug.Messagebox("Naked Defeat #ERROR 103 no suitable Human Sex Animations Found with the required Tags: " + TagsWanted + ". Check your SLAL packs and SexLab Registration.")
                endif
            endif
        endif
        if AggressorCount == 0 && cfgqst.DefeatStateChapter == "Foreplay Scene"
            NymTrace("Naked Defeat #ERROR - no Foreplay Animations found. Import SLATE Nymra Action pack and run it in SLATE.")
            debug.Messagebox("Naked Defeat #ERROR - no Foreplay Animations found. Import SLATE Nymra Action pack and run it in SLATE.")
        elseif AggressorCount > 1
            PlayerHadGroup = true
        endif
    elseif VictimNumber > 0
        if creaturegroup
            string raceID = miscutil.GetActorRaceEditorID(Aggressors[0])
            string mangled_racekey_2 = sslcreatureanimationslots.GetRaceKeyByID(raceID)
            string CreatureTags = "Creature"
            string CreatureTagsSuppress = "InvisFurn, InvFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, "
            if AggressorCount == 4
                Animations4_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(5, mangled_racekey_2, CreatureTags, CreatureTagsSuppress, false)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 5P creature animations found (" + ActorName + "): " + Animations4_Follower01.Length, 0)
                if Animations4_Follower01.Length < 1
                    AggressorCount = 3
                    Aggressors[3] = None
                endif
            endif
            if AggressorCount == 3
                Animations3_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, mangled_racekey_2, CreatureTags, CreatureTagsSuppress, false)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 4P creature animations found (" + ActorName + "): " + Animations3_Follower01.Length, 0)
                if Animations3_Follower01.Length < 1
                    AggressorCount = 2
                    Aggressors[2] = None
                endif
            endif
            if AggressorCount == 2
                Animations2_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, mangled_racekey_2, CreatureTags, CreatureTagsSuppress, false)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 3P creature animations found (" + ActorName + "): " + Animations2_Follower01.Length, 0)
                if Animations2_Follower01.Length < 1
                    AggressorCount = 1
                    Aggressors[1] = None
                endif
            endif
            if AggressorCount == 1
                Animations1_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, mangled_racekey_2, CreatureTags, CreatureTagsSuppress, false)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 2P creature animations found (" + ActorName + "): " + Animations1_Follower01.Length, 0)
                if Animations1_Follower01.Length < 1
                    AggressorCount = 0
                    Aggressors[0] = None
                endif
            endif
        endif
        if humangroup
            if AggressorCount == 4
                GetSexTags(VictimNumber)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GroupTags Follower (" + ActorName + "): " + TagsWanted, 0)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Supressed Tags Follower (" + ActorName + "): " + TagsSuppressed, 0)
                Animations4_Follower01 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, true)
                if cfgqst.ShowDebugMessages
                    debug.Notification("NAKED DEFEAT: 5-person animations found (" + ActorName + "): " + Animations4_Follower01.Length)
                endif
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 5-person animations found (" + ActorName + "): " + Animations4_Follower01.Length, 0)
                if Animations4_Follower01.Length < 1
                    AggressorCount = 3
                    Aggressors[3] = None
                else
                    FollowerHadGroup = true
                endif
            endif
            if AggressorCount == 3
                GetSexTags(VictimNumber)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GroupTags Follower (" + ActorName + "): " + TagsWanted, 0)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Supressed Tags Follower (" + ActorName + "): " + TagsSuppressed, 0)
                Animations3_Follower01 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, true)
                if cfgqst.ShowDebugMessages
                    debug.Notification("NAKED DEFEAT: 4-person animations found (" + ActorName + "): " + Animations3_Follower01.Length)
                endif
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 4-person animations found (" + ActorName + "): " + Animations3_Follower01.Length, 0)
                if Animations3_Follower01.Length < 1
                    AggressorCount = 2
                    Aggressors[2] = None
                else
                    FollowerHadGroup = true
                endif
            endif
            if AggressorCount == 2
                GetSexTags(VictimNumber)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GroupTags Follower (" + ActorName + "): " + TagsWanted, 0)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Supressed Tags Follower (" + ActorName + "): " + TagsSuppressed, 0)
                Animations2_Follower01 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, true)
                if cfgqst.ShowDebugMessages
                    debug.Notification("NAKED DEFEAT: 3-person animations found (" + ActorName + "): " + Animations2_Follower01.Length)
                endif
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 3-person animations found (" + ActorName + "): " + Animations2_Follower01.Length, 0)
                if Animations2_Follower01.Length < 1
                    AggressorCount = 1
                    Aggressors[1] = None
                else
                    FollowerHadGroup = true
                endif
            endif
            if AggressorCount == 1
                GetSexTags(VictimNumber)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: GroupTags Follower (" + ActorName + "): " + TagsWanted, 0)
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Supressed Tags Follower (" + ActorName + "): " + TagsSuppressed, 0)
                Animations1_Follower01 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, true)
                if cfgqst.ShowDebugMessages
                    debug.Notification("NAKED DEFEAT: 2-person animations found (" + ActorName + "): " + Animations1_Follower01.Length)
                endif
                debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: 2-person animations found (" + ActorName + "): " + Animations1_Follower01.Length, 0)
                if Animations1_Follower01.Length < 1
                    AggressorCount = 0
                    Aggressors[0] = None
                endif
            endif
        endif
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
	sTags_supFURN_Temp = "Furniture, XCross, Wall, InvisFurn, InvFurn,  Bed, Stockade, Wheel, Pillory, BedOnly, Bench, Throne, WallHole " 		;#tags "Table" AND "Chair" ALLOWED FOR NOW
	sTags_supBINDS_Temp = "Yoke, Armbinder " 
		
	sTags_supALL_Temp = sTags_supBASE_Temp + sTags_supFURN_Temp + sTags_supBINDS_Temp
	return sTags_supALL_Temp
	
	;CreatureSub		
EndFunction 	

;:::::::::::::::::::::: FOREPLAY FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


Function SchlongifyRapers()

	NymTrace("SchlongifyRapers()")
		CreatureFramework CFqst = Quest.GetQuest("CFQuestFramework") as CreatureFramework
         ;   MilkQUEST MilkQ = Quest.GetQuest("MME_MilkQUEST") as MilkQUEST
         ;   MilkQ.AssignSlot(PlayerRef)

		;where 'milkquest' is the script name attached to the quest 'MME_MilkQuest' and 'assignslot' the function to call from said script

	if Rapers[0]
	NymTrace("SchlongifyRapers(Rapers[0])")
	CFqst.ActivateActorA(Rapers[0], true)
	endif 
	if Rapers[1]
	NymTrace("SchlongifyRapers(Rapers[1])")
	CFqst.ActivateActorA(Rapers[1], true)
	endif 
	if Rapers[2]
	NymTrace("SchlongifyRapers(Rapers[2])")
	CFqst.ActivateActorA(Rapers[2], true)
	endif 
	if Rapers[3]
	NymTrace("SchlongifyRapers(Rapers[3])")
	CFqst.ActivateActorA(Rapers[3], true)
	endif 
	
EndFunction 
	
;/
Function ForceSchlongOnCreature(actor akActor)
	NymTrace("ForceSchlongOnCreature()")

; Change the actor's arousal state, used in almost everything.
; SexLabState: 0=not active, 1=playing animation.
; Flags: 0=Creature not aroused, 1=Creature is aroused.
;function ChangeArousal(Int CreatureI, Int SexLabState, Bool ForceChange)


		string activeMod = JMap.GetStr(ACreaturesMaps[CreatureI], "activeMod")
		if activeMod
		NymTrace("ForceSchlongOnCreature(activeMod)")
			int creatureModMap = JMap.GetObj(JMap.GetObj(ACreaturesMaps[CreatureI], "mods"), activeMod)
			int creatureModType = JMap.GetInt(creatureModMap, "type")
			int jRestrictedSlots = JMap.GetObj(creatureModMap, "restrictedSlots")
			bool stripArmor = JMap.GetInt(creatureModMap, "stripArmor") as bool
			bool stripWeapons = JMap.GetInt(creatureModMap, "stripWeapons") as bool
			; Ensure the restricted slots are empty if necessary
		;	if !(SexLabState && stripArmor) && CreatureFrameworkUtil.ActorHasAnyEquippedSlot(thisCreature, jRestrictedSlots)
		;		AFlags[CreatureI] = NewFlag
		;		rcGuard = false
		;		return
		;	endIf
			; Strip/restore armour if we came from sex
		;	if SexLabState
		;		if IsCreature(thisCreature)
		;			if SexLabState == 1 && NewFlag == 1
		;				StripA(thisCreature, creatureModMap, stripArmor, stripWeapons)
		;			else
		;				EquipA(thisCreature, stripArmor, stripWeapons)
		;			endif
		;		else
		;			SexLabState = 0
		;		endif
		;	endif
		
			; Handle the armour swap
			if creatureModType == 1
			NymTrace("ForceSchlongOnCreature(creatureModType == 1)")
				;if true  ;MadMansGun: BadDog changed it to "true" from "ForceChange || !OldFlag || !NewFlag" but i'm unsure about this.
					Armor normalArmor
					Armor arousedArmor
					
					normalArmor = JMap.GetForm(creatureModMap, "normalArmor") as Armor
					arousedArmor = JMap.GetForm(creatureModMap, "arousedArmor") as Armor
		

					RemoveArmors(akActor)
					
					Utility.Wait(0.05)
				;	if NewFlag
					CreatureFrameworkUtil.AddAndEquipArmor(akActor, arousedArmor)
				;	else
					;		if normalArmor
					;			CreatureFrameworkUtil.AddAndEquipArmor(akActor, normalArmor)
					;		endIf
					;	endif

				;endif
			endif
	endif 

EndFunction 

/;

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


Function FixRaperHardness()
	
	NymTrace("FixRaperHardness()")

	if Nym()
		if (Rapers[0])
		storqst.FixCreatureSkin_HARD(Rapers[0])
		endif  
		if (Rapers[1])
		storqst.FixCreatureSkin_HARD(Rapers[1])
		endif 
		if (Rapers[2])
		storqst.FixCreatureSkin_HARD(Rapers[2])
		endif 
		if (Rapers[3])
		storqst.FixCreatureSkin_HARD(Rapers[3])
		endif 
	endif 


EndFunction 


Function MoveActorsAway()

	


EndFunction 

Function OnAnimationStart(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationStart("+EventName+")")
		
	;2nd Event
	;IMPORTANT NOTE: THIS EVENT FIRES SECOND (after AnimationStarting)
		
	if EventName == "AnimationStart_NadeRape"	;#FIXFADE
	;Utility.Wait(8.0)
	Utility.Wait(4.0)		;6 was too short... Try 10	 ;BACK to 6 due to BUG causing this
		if storqst.IsHeelsEffectOn(cfgqst.PlayerRef)
		NymMessage("HEELS EFFECT ON")
		endif 
	Utility.Wait(1.0)	

	cfgqst.FadeToBlack(false)
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	GetIsMouthAvailable()

	UnregisterForModEvent("AnimationStart_NadeRape")
	
	elseif EventName == "AnimationStart_NadeForeplay"
	
	NymTrace("FadeBlack CHECK 111 A")
	Utility.Wait(6.0)
	cfgqst.FadeToBlack(false)
	NymTrace("FadeBlack CHECK 111 B")
	;OOOOOOOOOOOOOoooooooooooooooo............	FADE IN ...............................................................................................
	UnregisterForModEvent("AnimationStart_NadeForeplay")
	endif

	
EndFunction	

Function OnAnimationStarting(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationStarting("+EventName+")")

	;1st Event 
	
	;IMPORTANT NOTE: THIS EVENT FIRES FIRST (before AnimationStart)
	if EventName == "AnimationStarting_NadeRape"
	
	if Nym()	;#FIXFADE
	;do nothing 
	else 
	NymTrace("FadeBlack CHECK 333 A")
	Utility.Wait(8.0) ;make External JSON #external
	cfgqst.FadeToBlack(false)
	NymTrace("FadeBlack CHECK 333 B")
	endif 
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
;Bool DisableHeelsForSex = false
int SexRound = 0
;Bool DoubleStart = False 	

int SexSceneStatus = 0

Actor TrackedRaper
	
Function StartRape(Actor akAggressor)		;#StartRape	;akAgressor	;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	##Rape ##Sex
DebugTrace("::::::::::: StartRape (Player, [#SexRound: "+SexRound+"] cfgqst.DefeatStateChapter: ("+cfgqst.DefeatStateChapter+"):::::::::::::::::::::::::::::::::")
NymTrace("::::::::::: StartRape (Player, [#SexRound: "+SexRound+"] ForePlayStages: ("+ForePlayStages+"):::::::::::::::::::::::::::::::::")		
		Bool StartSex = true
		SexSceneStatus = 1 ;starting

		if Nym()
		
			if CHECK_Aftermath_running
			NymBox("ERROR - Start Rape but CHECK_Aftermath_running")
			endif 
			
			if !CHECK_RapeSequence_running
			NymBox("ERROR - Start Rape but CHECK_RapeSequence_running = FALSE!!!")
			endif 
			
			if IsEndOfDefeat
			NymBox("ERROR - Start Rape but IsEndOfDefeat = TRUE!!!")
			endif 

			if (cfgqst.DefeatStateChapter == "EscapeGame") || (cfgqst.DefeatStatePlayer == "Punished in Furniture")
			NymBox("ERROR - Start Rape but Captured already "+cfgqst.DefeatStateChapter+" "+cfgqst.DefeatStatePlayer)
			endif
			
		;do FUCKING nothing
		
		elseif cfgqst.HeelsFix 
		
		;	if Nym()
			;we currently disABLED Heels Effect restoration. We do NOT allow Sexlab to handle this and instead handle it all ourselves
			;Hence the Removed Heels effect remains removed during these Scenes (check for other scenes too)
		;	else
			cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, "StartRape() Restore for SexLab compatibility")	;put HeelsEffect back on so Sexlab can do its thing
		;	Utility.Wait(1.0)
		;	endif	
		
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
				storqst.SexFuckingPartners += 1
				;defqst.SexDuration = 0
				;cfgqst.SexScene = true
				;cfgqst.SexState = 2	;SEX 
				;SendModEvent("StartNakedSexExpressions") 
		
				;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
				int i = 1
					if (RaperCount > 1) && Rapers[1] && (Thread.AddActor(Rapers[1], false) >= 0) ;2 or more aggressors ;if count is 2 and aggressor[1] is there and its not in the thread, count +1
						i += 1
						storqst.SexFuckingPartners += 1
						;i = 2
						if (RaperCount > 2) && Rapers[2] && (Thread.AddActor(Rapers[2], false) >= 0) ;3 or more aggressors ;if count is 3 and aggressor[2] is there and its not in the thread, count +1
							i += 1
							storqst.SexFuckingPartners += 1
							;i = 3	
							if (RaperCount > 3) && Rapers[3] && (Thread.AddActor(Rapers[3], false) >= 0) ;4 aggressors	;if count is 4 and aggressor[3] is there and its not in the thread, count +1
								i += 1
								storqst.SexFuckingPartners += 1
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
					
					if !VehiclePlayer
					NymBox("WARNING - NO VEHICLE")
					endif 
					
				;	if Nym()
					;SEXLAB UTIL BROKEN!!!!
				;	else 
					Nymtrace("#SEXLAB CHECKUP 11878")
					Thread.CenterOnObject(VehiclePlayer)	
				;	endif 
					
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
			
			
			if Nym()
			
			;do NOTHING
			
			elseif cfgqst.HeelsFix
			
			;	if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
				;do nothing - we take over from Sexlab
			;	else 
				cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, "StartGropeStripFast() Restore for SexLab compatibility")	;put HeelsEffect back on so Sexlab can do its thing
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
			
			if Nym()
			
				if storqst.IsHeelsEffectOn(Rapers[0])
				cfgqst.DisableHeelsEffectOnActor(Rapers[0], "StartSexFast() Rapers[0] disable HeelsEffect")
				endif 
				
			elseif cfgqst.HeelsFix
			
			;	if Nym()		;DISABLED 09-2026 - HeelsCheckup
			;	
			;	endif 
			
			;	if Nym() && !IsHumanFucker ; HeelsFix_Sexlab	;DISABLED 09-2026 - HeelsCheckup
				;do nothing - we take over from Sexlab
						;put HeelsEffect back on so Sexlab can do its thing
					;Utility.Wait(0.5)
				
			;	else 	;DISABLED 09-2026 - HeelsCheckup
				cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, "StartSexFast() for Sexlab compatibility")	;put HeelsEffect back on so Sexlab can do its thing
				Utility.Wait(0.5)
			;	endif 
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
						
						if FastSexSubType == "Eat Carrot"
						;Animations1 = SexLab.GetCreatureAnimationByName("Billyy (Horse) Doggy 2")
						
						;	sslBaseAnimation[] AnimationsCheck
						;	AnimationsCheck = SexLab.GetAnimationsByTags(2, "NymCarrot, ", "", true)

							
						;	if AnimationsCheck.Length > 0
						;	Animations1 = SexLab.GetAnimationsByTags(2, "NymCarrot", "" , True)
							
							;Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, "NymCarrot", "Horse", "", false)
							Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, "Horses", "NymCarrot", "", True)
							;sslBaseAnimation[] function GetCreatureAnimationsByRaceKeyTags(int ActorCount, string RaceKey, string Tags, string TagSuppress = "", bool RequireAll = true)
							
							
							NymTrace("Animations1.Length: "+Animations1.Length)
							
					;	if Animations1.Length == 0
					;	Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, "Horse", "Creature", CageSuppressedTags, false)
					;	endif
							
						;	else
						;	Animations1 = SexLab.GetAnimationsByTags(2, "Horse", CageSuppressedTags , True)
						;	endif 
							
						elseif FastSexSubType == "Human" 
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
	;cfgqst.Pee(Rapers[0], false)
	RemovePee(Rapers[0], 0)
	storqst.ProtectActor(Rapers[0], false)
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
	;cfgqst.Pee(Rapers[1], false)
	RemovePee(Rapers[1], 1)
	storqst.ProtectActor(Rapers[1], false)
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
	;cfgqst.Pee(Rapers[2], false)
	RemovePee(Rapers[2], 2)
	storqst.ProtectActor(Rapers[2], false)
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


Function EquipPee(actor akactor, int Count)
    NymTrace("EquipPee(" + Count + ")")
    Armor PeeMale = (game.GetFormFromFile(159081, "ZazAnimationpack.esm") as Armor)
    akactor.AddItem(PeeMale, 1, true)
    akactor.EquipItem(PeeMale, true, true)
    utility.Wait(0.2)
    cfgqst.Strip(32, akactor)
    cfgqst.Strip(33, akactor)
    if D100(50.0)
        cfgqst.Strip(31, akactor)
    endif
    if D100(25.0)
        cfgqst.Strip(37, akactor)
    endif
EndFunction


Function RemovePee(actor akActor, int Count)
	
	NymTrace("RemovePee("+Count+")")
	
	Armor PeeMale = Game.GetFormFromFile(0x00026D69 , "ZazAnimationpack.esm") as armor 	;ZaZ F2 Pee II
	akActor.RemoveItem(PeeMale, 10, true, None)	

EndFunction 

Function EquipPeeToGroup()

	NymTrace("EquipPeeToGroup()")
	if FapperCount > 0
		if Fappers[0]
		EquipPee(Fappers[0], 404)
		endif 
		if Fappers[1]
		EquipPee(Fappers[1], 414)
		endif 
		if Fappers[2]
		EquipPee(Fappers[2], 424)
		endif 
		if Fappers[3]
		EquipPee(Fappers[3], 434)
		endif 	
		
	else

	NymBox("No Fappers!")
	
	endif 

EndFunction 

Function OnAnimationEndingSolo4(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEndingSolo4: [SolosRunningRunning: "+SolosRunning+"] [DefeatStateChapter: "+cfgqst.DefeatStateChapter+"]")
;SolosRunning -= 1
SolosRunning -= 1


	if cfgqst.DefeatStateChapter == "Golden Shower"			
	;cfgqst.Pee(Rapers[3], false)
	RemovePee(Rapers[3], 3)
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
	
	storqst.ProtectActor(Rapers[3], false)

UnregisterForModEvent("AnimationEnding_NadeSolo4") 
;UnregisterForModEvent("AnimationEnd_NadeSolo4") 
UnregisterForModEvent("OrgasmStart_NadeSolo4") 

EndFunction

Function OnOrgasmStart(String EventName, String ArgString, Float ArgNum, Form Sender)	 ;#OnOrgasmStart
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnOrgasmStart()")

if (EventName == "OrgasmStart_NadeRape")
defqst.MouthOpening = 100
defqst.OpenMouthMaintenance()
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

Function StartSoloAggressor(actor akactor)
    SolosRunning = SolosRunning + 1
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: StartAggressorSolo(" + SolosRunning + ")(DefeatStateChapter: " + cfgqst.DefeatStateChapter + ")", 0)
    if akactor && SexLab.GetGender(akactor) == 0
        NymTrace("No Solo Females allowed currently")
    elseif akactor
        cfgqst.SexSceneBukkake = true
        if akactor.IsOnMount()
            akactor.Dismount()
        endif
        if SexLab.GetGender(akactor) == 0
            if cfgqst.DefeatStateChapter == "Golden Shower"
                AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, M, Standing", "F, FapAndTouch, Furniture, InvisFurn , InvFurn, Funnybiz", true)
            else
                AnimationsSolo = SexLab.GetAnimationsByTags(1, "Solo, M, Standing", "F, Furniture, InvisFurn, InvFurn, Funnybiz", true)
            endif
        endif
        cfgqst.Strip(32, akactor)
        cfgqst.Strip(33, akactor)
        if D100(50.0)
            cfgqst.Strip(31, akactor)
        endif
        if D100(25.0)
            cfgqst.Strip(37, akactor)
        endif
        sslthreadmodel Thread = SexLab.NewThread(30.0)
        if Thread && Thread.AddActor(akactor, true, None, false) >= 0
            NymTrace("StartAggressorSolo(" + SolosRunning + ") A")
            storqst.ProtectActor(akactor, true)
            Thread.SetAnimations(AnimationsSolo)
            if SolosRunning == 1
                NymTrace("StartAggressorSolo(" + SolosRunning + ") B")
                if Nym()
                    Thread.CenterOnObject(storqst.WatcherXMarkers[0], true)
                else
                    Thread.CenterOnObject(xMarkerHeading_00, true)
                endif
            elseif SolosRunning == 2
                NymTrace("StartAggressorSolo(" + SolosRunning + ") B")
                if Nym()
                    Thread.CenterOnObject(storqst.WatcherXMarkers[1], true)
                else
                    Thread.CenterOnObject(xMarkerHeading_01, true)
                endif
            elseif SolosRunning == 3
                NymTrace("StartAggressorSolo(" + SolosRunning + ") B")
                if Nym()
                    Thread.CenterOnObject(storqst.WatcherXMarkers[2], true)
                else
                    Thread.CenterOnObject(xMarkerHeading_02, true)
                endif
            elseif SolosRunning == 4
                NymTrace("StartAggressorSolo(" + SolosRunning + ") B")
                if Nym()
                    Thread.CenterOnObject(storqst.WatcherXMarkers[3], true)
                else
                    Thread.CenterOnObject(xMarkerHeading_03, true)
                endif
            endif
            Thread.DisableBedUse(true)
            Thread.DisableLeadIn(true)
            if cfgqst.DefeatStateChapter == "Golden Shower"
                NymTrace("StartAggressorSolo(" + SolosRunning + ") Pee Equipped")
                EquipPee(akactor, SolosRunning)
                Thread.DisableAllOrgasms(true)
            elseif cfgqst.DefeatStateChapter == "Bukkake"
                Thread.DisableAllOrgasms(false)
            elseif cfgqst.DefeatStateChapter == "Voyeurs" || cfgqst.DefeatStateChapter == "Forced Bathing"
                Thread.DisableAllOrgasms(false)
            endif
            if SolosRunning == 1
                RegisterForModEvent("AnimationEnding_NadeSolo1", "OnAnimationEndingSolo1")
                RegisterForModEvent("OrgasmStart_NadeSolo1", "OnOrgasmStartSolo")
                Thread.SetHook("NadeSolo1")
            elseif SolosRunning == 2
                RegisterForModEvent("AnimationEnding_NadeSolo2", "OnAnimationEndingSolo2")
                RegisterForModEvent("OrgasmStart_NadeSolo2", "OnOrgasmStartSolo")
                Thread.SetHook("NadeSolo2")
            elseif SolosRunning == 3
                RegisterForModEvent("AnimationEnding_NadeSolo3", "OnAnimationEndingSolo3")
                RegisterForModEvent("OrgasmStart_NadeSolo3", "OnOrgasmStartSolo")
                Thread.SetHook("NadeSolo3")
            elseif SolosRunning == 4
                RegisterForModEvent("AnimationEnding_NadeSolo4", "OnAnimationEndingSolo4")
                RegisterForModEvent("OrgasmStart_NadeSolo4", "OnOrgasmStartSolo")
                Thread.SetHook("NadeSolo4")
            endif
            if !Thread.StartThread()
                cfgqst.SexSceneBukkake = false
                debug.Notification("NAKED DEFEAT: #ERROR starting SOLO: " + SolosRunning)
                SolosRunning = SolosRunning - 1
            endif
        endif
    else
        cfgqst.SexSceneBukkake = false
        debug.Notification("NAKED DEFEAT: #ERROR starting SOLO: " + SolosRunning)
        SolosRunning = SolosRunning - 1
    endif
EndFunction

Function StartMasturbation()			;#masturbation
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: StartRape (Player) START")
		
	;	ForcePosing_2 = false
		
		Animations1 = SexLab.GetAnimationsByTags(1, "Solo, F", "Tentacles, M, InvisFurn, InvFurn, ", True)
		
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

Function StartEstrusScene(string sMode, bool bFuckFollowers, bool Standalone)
    DebugTrace("StartEstrusScene(" + sMode + ")")
    if Standalone
        if !spe_actor.IsActorCalmed(cfgqst.PlayerRef)
            spe_actor.SetActorCalmed(cfgqst.PlayerRef, true)
            NymTrace("##CALM ON Player Estrus Trap")
        endif
        cfgqst.Crawl(cfgqst.PlayerRef, true)
        cfgqst.Immobilize(true)
    endif
    defqst.PlaceExplosion(cfgqst.PlayerRef, "Dust Medium")
    utility.Wait(0.5)
    defqst.PlaceExplosion(cfgqst.PlayerRef, "Shockwave 1")
    utility.Wait(0.5)
    if D100(10.0)
        StripPlayer()
    endif
    storqst.SexStartMaintenance(2)
    defqst.PlaceExplosion(cfgqst.PlayerRef, "Estrus Start")
    defqst.PlaceExplosion(cfgqst.PlayerRef, "Dust Medium")
    int EstrusTraptype = utility.RandomInt(0, 3)
    int ECTrap = modevent.Create("ECStartAnimation")
    modevent.PushForm(ECTrap, cfgqst.PlayerRef)
    modevent.PushForm(ECTrap, cfgqst.PlayerRef)
    modevent.PushInt(ECTrap, EstrusTraptype)
    modevent.PushBool(ECTrap, false)
    modevent.PushInt(ECTrap, 1000)
    modevent.PushBool(ECTrap, true)
    modevent.Send(ECTrap)
    if bFuckFollowers
        if folqst.IsWithUs_Follower(0)
            NymTrace("StartEstrusScene(MOVE FOLLOWER [0]")
            folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -2000.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 45.0), -2000.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 45.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
            utility.Wait(0.5)
            defqst.PlaceExplosion(folqst.Actor_Follower01, "Dust Medium")
            EstrusTraptype = utility.RandomInt(0, 3)
            int ECFTrap1 = modevent.Create("ECStartAnimation")
            modevent.PushForm(ECFTrap1, folqst.Actor_Follower01)
            modevent.PushForm(ECFTrap1, folqst.Actor_Follower01)
            modevent.PushInt(ECFTrap1, EstrusTraptype)
            modevent.PushBool(ECFTrap1, false)
            modevent.PushInt(ECFTrap1, 1000)
            modevent.PushBool(ECFTrap1, true)
            modevent.Send(ECFTrap1)
        endif
        if folqst.IsWithUs_Follower(1)
            folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -2000.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 135.0), -2000.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 135.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
            utility.Wait(0.5)
            defqst.PlaceExplosion(folqst.Actor_Follower02, "Dust Medium")
            EstrusTraptype = utility.RandomInt(0, 3)
            int ECFTrap2 = modevent.Create("ECStartAnimation")
            modevent.PushForm(ECFTrap2, folqst.Actor_Follower02)
            modevent.PushForm(ECFTrap2, folqst.Actor_Follower02)
            modevent.PushInt(ECFTrap2, EstrusTraptype)
            modevent.PushBool(ECFTrap2, false)
            modevent.PushInt(ECFTrap2, 1000)
            modevent.PushBool(ECFTrap2, true)
            modevent.Send(ECFTrap2)
        endif
    endif
    int iCycle = 0
    int iProgress = 0
    while !cfgqst.IsFucking(cfgqst.PlayerRef)
        NymTrace("#ESTRUS Wait for Estrus Start LOOP")
        utility.Wait(1.0)
    endwhile
    while cfgqst.IsFucking(cfgqst.PlayerRef) && cfgqst.ModEnabled
        NymTrace("#ESTRUS  PlayerStillFucked LOOP")
        iCycle = iCycle + 1
        utility.Wait(1.0)
        if iCycle == 3
            cfgqst.StartPunishmentEffect("Shock")
        endif
        if iCycle == 5
            iCycle = 0
            iProgress = iProgress + 1
            StripDuringSex(iProgress)
            if D100(90.0)
                if D100(50.0)
                    cfgqst.StartPunishmentEffect("Shock")
                else
                    cfgqst.StartPunishmentEffect("Pain")
                endif
            endif
        endif
    endwhile
    storqst.SexEndMaintenance()
    if bFuckFollowers
        bool FollowersStillFucked = true
        while FollowersStillFucked && cfgqst.ModEnabled
            NymTrace("#ESTRUS  FollowersStillFucked LOOP")
            if folqst.IsWithUs_Follower(0) && cfgqst.IsFucking(folqst.NakedFollower[0])
                FollowersStillFucked = true
            else
                FollowersStillFucked = false
            endif
            if !FollowersStillFucked
                if folqst.IsWithUs_Follower(1) && cfgqst.IsFucking(folqst.NakedFollower[1])
                    FollowersStillFucked = true
                else
                    FollowersStillFucked = false
                endif
            endif
            utility.Wait(1.0)
        endwhile
    endif
    if Standalone
        if cfgqst.RapersNearby()
            cfgqst.Immobilize(true)
            utility.Wait(2.0)
            cfgqst.ProximityQuestStart("DefeatScenarioScan")
            cfgqst.DefeatQuestRunning = true
            cfgqst.DefeatEntranceVia = "Trap Trigger"
            cfgqst.StartDefeat()
        else
            if spe_actor.IsActorCalmed(cfgqst.PlayerRef)
                spe_actor.SetActorCalmed(cfgqst.PlayerRef, false)
                NymTrace("##CALM OFF Player Estrus Trap")
            endif
            cfgqst.Crawl(cfgqst.PlayerRef, false)
            cfgqst.Immobilize(false)
        endif
    endif
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
		
		if Nym()
		
		;do NOTHING
			if storqst.IsHeelsEffectOn(Aggressors[0])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[0], "StartRapeFollower01() Aggressors[0] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[1])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[1], "StartRapeFollower01() Aggressors[1] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[2])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[2], "StartRapeFollower01() Aggressors[2] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[3])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[3], "StartRapeFollower01() Aggressors[3] disable HeelsEffect")
			endif 
		
		elseif cfgqst.HeelsFix
		
		;	if Nym() && !IsHumanFucker ; HeelsFix_Sexlab
			;do nothing - we take over from Sexlab
		;	else 
			cfgqst.RestoreHeelsEffectOnActor(Victims[0], "StartRapeFollower01() Victims[0] RESTORE HeelsEffect")	;put HeelsEffect back on so Sexlab can do its thing
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
		
		if Nym()
			if storqst.IsHeelsEffectOn(Aggressors[0])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[0], "StartRapeFollower01() Aggressors[0] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[1])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[1], "StartRapeFollower01() Aggressors[1] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[2])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[2], "StartRapeFollower01() Aggressors[2] disable HeelsEffect")
			endif 
			if storqst.IsHeelsEffectOn(Aggressors[3])
			cfgqst.DisableHeelsEffectOnActor(Aggressors[3], "StartRapeFollower01() Aggressors[3] disable HeelsEffect")
			endif 
		
		elseif cfgqst.HeelsFix
		
		;	if Nym()&& !IsHumanFucker ; HeelsFix_Sexlab
			;do nothing - we take over from Sexlab
		;	else 
			cfgqst.RestoreHeelsEffectOnActor(Victims[1], "StartRapeFollower01() Victims[1] disable HeelsEffect for Sexlab")	;put HeelsEffect back on so Sexlab can do its thing
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
	
	if Rapers[0]		;NOTE, later we want to have 8 Pee guys... 
	RemovePee(Rapers[0], 10)
	endif 
	
	if Rapers[1]
	RemovePee(Rapers[1], 11)
	endif 	

	if Rapers[2]
	RemovePee(Rapers[2], 12)
	endif 
	
	if Rapers[3]
	RemovePee(Rapers[3], 13)
	endif 
	
	if Fappers[0]		;NOTE, later we want to have 8 Pee guys... 
	RemovePee(Fappers[0], 100)
	endif 
	
	if Fappers[1]
	RemovePee(Fappers[1], 110)
	endif 	

	if Fappers[2]
	RemovePee(Fappers[2], 120)
	endif 
	
	if Fappers[3]
	RemovePee(Fappers[3], 130)
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

Event OnStartSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	;	;#OnStartSolo		#events #bukkake
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
;/
Event OnStartAddRapeHands(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartAddRapeHands()")
	cfgqst.AddRapeHands()
EndEvent
/;

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
;/
Event OnStartAddRapeTears(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStartAddRapeTears()")	
	cfgqst.AddRapeTears()
EndEvent
/;
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
					
						if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].IsInFaction(cfgqst.CrawlFaction)
						
						NymTrace("#ERROR - Follower[0] not in CrawlFaction -> FIX")
						folqst.NakedFollower[0].Addtofaction(cfgqst.CrawlFaction)
						endif 
						
						if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].IsInFaction(cfgqst.CrawlFaction)
					
						NymTrace("#ERROR - Follower[0] not in CrawlFaction -> FIX")
						folqst.NakedFollower[1].Addtofaction(cfgqst.CrawlFaction)
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




Function GetIsMouthAvailable()				;#GetIsMouthAvailable()
	
	NymTrace("GetIsMouthAvailable(START)")
	
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
NymTrace("OnStartForceStageProgression()")
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
	NymTrace("OnStartForceStageProgression(Stage: "+CurrentStage+") FuckingRound:"+FuckingRound)
	NymMessage("!!! FORCED Stage Progression:" +MonitoredStage)
	thread.AdvanceStage(false)
	else 
	NymMessage("Monitoring ended Stage: "+MonitoredStage)
	endif 
	
endif 

EndFunction 

Event OnStartSpawnRapers(string EventName, string ArgString, float ArgNum, form Sender)
    NymTrace("OnStartSpawnRapers (for Afterlife) START")
    SpawnActorGroups("Afterlife")
EndEvent

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



Bool Function IsFuckedByMonsters()
	
	if (RaperRace == "NoRace")
	return false
	elseif (RaperRace == "Trolls") || (RaperRace == "Giants") || (RaperRace == "Werewolves") || (RaperRace == "Gargoyles") || (RaperRace == "Horses") || (RaperRace == "Bears") || (RaperRace == "Trolls")
	return true 
	else 
	return false
	endif 

EndFunction 

;/
	
Quest Property SexlabQuest Auto  

Function ToggleHeelEffect(bool bDisable)

	SexLabFramework.RemoveHeelEffect = false

    ; Cast the quest to the SexLab script type
   ; sslSystemConfig config = SexLabQuestInstance as sslSystemConfig
   ; sslSystemLibrary config = SexLabQuestInstance as sslSystemLibrary
   sslSystemLibrary config = SexLabFramework as sslSystemLibrary

    ;if config
    ;    config.RemoveHeelEffect = bDisable
       NymBox("Heel effect setting changed successfully to: "+bDisable+"!")
  ;  else
        NymBox("ERROR: Could not cast to sslSystemConfig.")
  ;  endif
EndFunction

/;

;/

Function SexlabToggle_MCM(string sToggle)

	NymTrace("SexlabToggle_MCM TestBool A: RemoveHeelEffect "+RemoveHeelEffect)
	
	sslSystemConfig RemoveHeelEffect = false
	
	
	if RemoveHeelEffect == 1 
	RemoveHeelEffect = 0
	else 
	RemoveHeelEffect = 1 
	endif 
	;RemoveHeelEffect = FalseBool
	;TestBool = RemoveHeelEffect
	NymTrace("SexlabToggle_MCM TestBool B: RemoveHeelEffect "+RemoveHeelEffect)
	
EndFunction 

/;



Int CurrentStage
Bool DroolApplied = false

Function OnStageStart(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback ;#OnStageStart ;#StageStart
	

	;NOTE: it seems "OnStageStart does not play on every Sex Scene (or not reliably).

	GetIsMouthAvailable()

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	Int SceneStage = thread.Stage
	storqst.SexSceneStage = SceneStage
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStageStart(Stage "+SceneStage+") FuckingRound: "+FuckingRound+" DefeatStateChapter:"+cfgqst.DefeatStateChapter)
	;Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnStageStart(Stage "+SceneStage+") Mouth: "+cfgqst.IsMouthAvailable)

	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation	
	
	SendModEvent("ForceStageProgression")

	NymMessage("Current SexStage: "+storqst.SexSceneStage)
	
	if (storqst.SexSceneStage > 1) && (ForeplayStages == 1)

		UnRegisterForModEvent("StageEnd_NadeForeplay")
		ForePlayStages = 0
		NymTrace("OnStageStart- DEBUG Foreplay, Force End After 1 Stage")
		thread.EndAnimation(true)
		
	else 	

		; >>> GetSexStageSound() ---------------
		if Nym()
		
			Sound CurrentlyPlayingSound = thread.SoundFX
			Sound CurrentlyPlayingSoundTEST = Controller.Animation.GetSoundFX(SceneStage)
			
			Sound SLFX_Squishing
			Sound SLFX_Sucking
			Sound SLFX_MixedFX 
			
			SLFX_Squishing = (Game.GetFormFromFile(0x01065A31, "SexLab.esm") as Sound)
			SLFX_Sucking = (Game.GetFormFromFile(0x01065A32, "SexLab.esm") as Sound)
			SLFX_MixedFX = (Game.GetFormFromFile(0x01065A33, "SexLab.esm") as Sound)
			
			if CurrentlyPlayingSound
				
				if (CurrentlyPlayingSound == SLFX_Squishing)
					if IsFuckedByMonsters()
					storqst.SexFuckingSound = 20	
					else 
					storqst.SexFuckingSound = 10
					endif 
				NymTrace("OnStageStart() -  Sound Playing: SQUISHING") 
				elseif CurrentlyPlayingSound == SLFX_Sucking
				NymTrace("OnStageStart() -  Sound Playing: SUCKING") 
				elseif CurrentlyPlayingSound == SLFX_MixedFX
					if IsFuckedByMonsters()
					storqst.SexFuckingSound = 20	
					else 
					storqst.SexFuckingSound = 10
					endif 
				NymTrace("OnStageStart() -  Sound Playing: MIXED") 
				else 
				NymTrace("OnStageStart() -  Sound Playing: playing but not found") 
				endif 
			else 
			NymTrace("OnStageStart() -  Sound Playing: NO SOUND")
			endif 
		endif 
		
		
		if storqst.SummonedHorses 
		
			if SceneStage == 2	
			;Horse eats the carrot
			previousAnim.HasTag("NymCarrot")
			Utility.Wait(3.0)
				
		;--------------------------------
			
				if cfgqst.ModPLUGS
				Armor CarrotPlug = (Game.GetFormFromFile(0x00000D63, "pchsImmersivePlugs.esp") As Armor)
				cfgqst.PlayerRef.RemoveItem(CarrotPlug, 1, true, None)
				storqst.DeleteCarrot()
				endif 
			ForePlayStages = 2
			endif 
		endif 
		

		if Nym() 		
			if SceneStage == 1
			cfgqst.FixExpressions()	
			endif 
			
			bool StartKissing = false
			
			if SceneStage == 1 
				if previousAnim.HasTag("NymKissing2")
				StartKissing = true
				endif 
			elseif SceneStage == 2 
				if previousAnim.HasTag("NymKissing2")
				StartKissing = true
				endif 
			elseif SceneStage == 3
				if previousAnim.HasTag("NymKissing3")
				StartKissing = true
				endif 
			elseif SceneStage == 4
				if previousAnim.HasTag("NymKissing4")
				StartKissing = true
				endif 
			elseif SceneStage == 5
				if previousAnim.HasTag("NymKissing5")
				StartKissing = true
				endif 
			elseif SceneStage == 6
				if previousAnim.HasTag("NymKissing6")
				StartKissing = true
				endif 
			endif 
			
			if StartKissing
			defqst.EquipTonguesPlayer()
			storqst.ForceOpen = 22 ;Kissing
			elseif storqst.ForceOpen == 22 
			storqst.ForceOpen = 0 ;reset, we no longer kiss
			defqst.UnequipTonguesPlayer("forced")
			endif 
			
			if previousAnim.HasTag("Cowgirl")
			storqst.Riding = true
			NymTrace("OnStageStart(Stage "+SceneStage+") FuckingRound: "+FuckingRound+" storqst.Riding = true")
			endif 		
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
			NymTrace("OnStageStart(Stage "+SceneStage+") FuckingRound: "+FuckingRound+" ForeplayStages: "+ForePlayStages)
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
	endif 
EndFunction

; THIS FUNCTION IS CALLED ON registered EVENT from SEXLAB 
Function OnStageEnd(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback ;#OnStageEnd	#StageEnd
Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd(Stage: "+CurrentStage+")")

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	sslThreadModel ThreadLib = SexLab.GetController(threadID)

	Int SceneStage = ThreadLib.Stage
	
	CurrentStage = SceneStage
	
	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation
	
	;MOVED TO STAGE START obviously
	;/
	; >>> GetSexStageSound() ---------------
	if Nym()
	
		Sound CurrentlyPlayingSound = thread.SoundFX
		Sound CurrentlyPlayingSoundTEST = Controller.Animation.GetSoundFX(SceneStage)
		
		Sound SLFX_Squishing
		Sound SLFX_Sucking
		Sound SLFX_MixedFX 
		
		SLFX_Squishing = (Game.GetFormFromFile(0x01065A31, "SexLab.esm") as Sound)
		SLFX_Sucking = (Game.GetFormFromFile(0x01065A32, "SexLab.esm") as Sound)
		SLFX_MixedFX = (Game.GetFormFromFile(0x01065A33, "SexLab.esm") as Sound)
		
		if CurrentlyPlayingSound
			
			if CurrentlyPlayingSound == SLFX_Squishing
			storqst.SexFuckingSound = 1
			NymTrace("OnStageEnd() -  Sound Playing: SQUISHING") 
			elseif CurrentlyPlayingSound == SLFX_Sucking
			NymTrace("OnStageEnd() -  Sound Playing: SUCKING") 
			elseif CurrentlyPlayingSound == SLFX_MixedFX
			storqst.SexFuckingSound = 2
			NymTrace("OnStageEnd() -  Sound Playing: MIXED") 
			else 
			NymTrace("OnStageEnd() -  Sound Playing: playing but not found") 
			endif 
		else 
		NymTrace("OnStageEnd() -  Sound Playing: NO SOUND")
		endif 
	endif 
	
	/; 
	

; ------------------------------------------------------- ;
; --- Tagging System                                  --- ;
; ------------------------------------------------------- ;

;bool function HasTag(string Tag) ;sslThreadModel
;	return Tag != "" && Tags.Find(Tag) != -1
;endFunction

	
	

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
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd() #Stage: "+SceneStage)

	;DebugNotification("NAKED DEFEAT: End of Stage: "+SceneStage)
	
	If Nym()
	InfoMessage("End of Stage: "+SceneStage+" of Round: "+FuckingRound+"/"+Allow_SexScenes)
	endif
	
	
	;--- FOREPLAY HANDLING -----------------------------------------------------------------------------------------
	
	if storqst.SummonedHorses && ForePlayStages == 2 && SceneStage == 2 && D100(80)
	 ;this is part of the "foreplay" scene of the horse summoning ritual, eating the carrot out of the player ass
	 ;the scene has a 20% chance to play in full. regardless of that, there can be a second scene afterwards.
		UnRegisterForModEvent("StageEnd_NadeRape")
		ForePlayStages = 0
		NymTrace("["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd(Stage: "+CurrentStage+") - Carrot Eating End After 2 Stage")
		thread.EndAnimation(true)	
	
	elseif cfgqst.DefeatStateChapter == "Foreplay Scene"
	
		if ForePlayStages == 1 
			if SceneStage == 1
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			
			ForePlayStages = 0
			NymTrace("["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd(Stage: "+CurrentStage+") - Foreplay End After 1 Stage")
			thread.EndAnimation(true)
			endIf
		elseif ForePlayStages == 2
			if SceneStage == 2
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			ForePlayStages = 0
			NymTrace("["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd(Stage: "+CurrentStage+") - Foreplay End After 2 Stages")
			thread.EndAnimation(true)
			endIf
		elseif ForePlayStages == 3
			if SceneStage == 3
			UnRegisterForModEvent("StageEnd_NadeForeplay")
			ForePlayStages = 0
			NymTrace("["+storqst.Defeat_ID+"][Round: "+FuckingRound+"/"+Allow_SexScenes+"]: OnStageEnd(Stage: "+CurrentStage+") - Foreplay End After 3 Stages")
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
			Rapers[0].AddSpell(FaceLightSpell, false)
			
			if Rapers[1] && !Rapers[1].HasSpell(FaceLightSpell)
			Rapers[1].AddSpell(FaceLightSpell, false)
			endif 
			
			if Rapers[2] && !Rapers[2].HasSpell(FaceLightSpell)
			Rapers[2].AddSpell(FaceLightSpell, false)
			endif 
			
			if Rapers[3] && !Rapers[3].HasSpell(FaceLightSpell)
			Rapers[3].AddSpell(FaceLightSpell, false)
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

;EARLY event 	PLAYER MAIN  
Function OnAnimationEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE					;#OnAnimationEnding()	
	
	;1st Event
	;EARLY EVENT: This fires FIRST
	
	if storqst.FastSex > 0 ;cfgqst.DefeatStateChapter == "Cage Escape" || cfgqst.DefeatStateChapter == "Escaping the Cage" || cfgqst.DefeatStateChapter == "Fast Slave Sex"
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding(FastSex)")
	; do nothng 
	;if !Nym()	;#FIXFADE
	cfgqst.FadeToBlack(true)
	;endif 
	elseif cfgqst.DefeatStateChapter == "Free"
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding(Free)")
		;if !Nym()	;#FIXFADE
	cfgqst.FadeToBlack(false)
		;endif
	else
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: OnAnimationEnding()")
	
	;	if !Nym()	;#FIXFADE
	cfgqst.FadeToBlack(true)
	;	endif 
	cfgqst.Immobilize(true)
	Vehicle("restore") 	;double check
	
	;if !cfgqst.SexFinished && !IsBathing
	SexFinished(13995)
	
	endif


EndFunction
	
;----------------------------------------------------------------------------------------------------------------------	
	
;late Event	
Function OnAnimationEnd(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE						;#OnAnimationEnd
	
	;LATE EVENT, this firest second/later. 
	
	NymTrace("SexDuration: "+defqst.SexDuration)	;#fast2
	
	int SexTimerTEMP = storqst.SexTimerSlave as int
	
	;["+defqst.SexDuration+"/"+SexTimerTEMP+"]
	
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


	;#FIXFADE do we have a fade out here at all?
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
	
		if (defqst.SexDuration) == 0
		NymBox("Sex Duration = 0 #ERROR")
		endif 
	
		if (defqst.SexDuration) > 0 && ((defqst.SexDuration) < SexTimerTEMP)
		ScreenMessage("You did not fuck long enough for a reward ["+defqst.SexDuration+"/"+SexTimerTEMP+"]")
		defqst.SexDuration = 0
		elseif defqst.SexDuration > SexTimerTEMP 
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
	
	
Function SexFinished(int iSender)
    if cfgqst.SexFinished
        NymBox("#ERROR SexFinished DoubleStart")
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SexFinished(#DOUBLESTART Sender: " + iSender + ") :::::::::::::::::::::: #Rape Round " + FuckingRound + " (Player) END ::::::::::::::::::::::", 0)
    else
        cfgqst.SexFinished = true
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SexFinished(Sender: " + iSender + ") :::::::::::::::::::::: #Rape Round " + FuckingRound + " (Player) END ::::::::::::::::::::::", 0)
        Vehicle("restore")
        storqst.ForceOpen = 0
        cfgqst.FixExpressions()
        storqst.WhippingDuration = 0
        if Nym()
            defqst.ToggleDroolPlayer(false)
        endif
        cfgqst.DefeatStateChapter = "Waiting"
        ToggleRaperFaceLight(false)
        StopSexEffects()
        if VictimCount > 0 && SexFailed
            SexFailed = false
            debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: SexFinished() SexFailed, now we wait", 0)
        endif
        storqst.SexEndMaintenance()
        utility.Wait(1.0)
        if storqst.IsLocalSlave()
            int SexTimerTEMP = (storqst.SexTimerSlave as int)
            if cfgqst.DefeatEntranceVia == "Orgy"
                if defqst.SexDuration == 0
                    NymBox("Sex Duration = 0 #ERROR 14863")
                endif
                if defqst.SexDuration > 0 && defqst.SexDuration < SexTimerTEMP
                    ScreenMessage("You did not fuck long enough, lazy Cunt! [" + defqst.SexDuration + "/" + SexTimerTEMP + "]")
                    defqst.SexDuration = 0
                    NymTrace("ServicesCompleted: " + slaveqst.ServicesCompleted)
                else
                    GoodMessage("Good work, slave [" + defqst.SexDuration + "/" + SexTimerTEMP + "]")
                    defqst.SexDuration = 0
                    slaveqst.SexTaskDuration = slaveqst.SexTaskDuration + 1
                    slaveqst.ServicesCompleted = slaveqst.ServicesCompleted + 1
                    NymTrace("ServicesCompleted: " + slaveqst.ServicesCompleted)
                endif
            elseif cfgqst.DefeatEntranceVia == "Service"
            endif
        endif
        NymTrace("cfgqst.IsMouthAvailable - calm 14681 :" + cfgqst.IsMouthAvailable)
        cfgqst.IsMouthAvailable = 1
        NymTrace("cfgqst.IsMouthAvailable - calm 14683 :" + cfgqst.IsMouthAvailable)
        cfgqst.Immobilize(true)
        ResetGroupsForNextRound()
        PushRapersAway()
        MoveRapersAway()
        SendModEvent("StartAddRapeCount", "", 0.0)
        SendModEvent("Moan", "", 0.0)
        if Nym() && cfgqst.PlayerRef.IsAIEnabled() && !cfgqst.AbortAll
            cfgqst.PlayerRef.EnableAI(true)
        endif
        if cfgqst.DefeatTypeScenario == "FastTravel"
            PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
            if !SexFollower01Running && !SexFollower02Running
                PlayPoseOnActor(Victims[0], "Offering", false)
                PlayPoseOnActor(Victims[1], "Offering", false)
            endif
        else
            PlayPoseOnActor(cfgqst.PlayerRef, "Random", false)
            if !SexFollower01Running && !SexFollower02Running
                PlayPoseOnActor(Victims[0], "Random", false)
                PlayPoseOnActor(Victims[1], "Random", false)
            endif
        endif
        if !cfgqst.AbortAll && cfgqst.Dead == 0
            utility.Wait(1.0)
        endif
        if cfgqst.DefeatTypeScenario == "FastTravel"
            PlayPoseOnActor(cfgqst.PlayerRef, "Offering", true)
            if !SexFollower01Running && !SexFollower02Running
                PlayPoseOnActor(Victims[0], "Offering", true)
                PlayPoseOnActor(Victims[1], "Offering", true)
            endif
        else
            PlayPoseOnActor(cfgqst.PlayerRef, "Random", true)
            if !SexFollower01Running && !SexFollower02Running
                PlayPoseOnActor(Victims[0], "Random", true)
                PlayPoseOnActor(Victims[1], "Random", true)
            endif
        endif
        if !cfgqst.AbortAll && cfgqst.Dead == 0
        endif
        if Nym()
        elseif cfgqst.HeelsFix
            cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, "14450")
        endif
        if cfgqst.BlackFadeStatus == 1
            cfgqst.FadeToBlack(false)
        endif
        if cfgqst.FollowerCount == 0 || !cfgqst.AbortAll
        endif
        while (SexFollower01Running || SexFollower02Running || SolosRunning > 0) && cfgqst.ModEnabled && !cfgqst.AbortAll
            utility.Wait(1.0)
        endwhile
        PushFollowerRapersAway()
        SendModEvent("Moan", "", 0.0)
        if !cfgqst.AbortAll
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
        float IdleWaitTime = 0.0
        IdleWaitTime = cfgqst.DefeatIdleTime
        NymTrace("#SEXFINSIHED cfgqst.DefeatIdleTime: " + cfgqst.DefeatIdleTime)
        while IdleWaitTime > 0.0 && cfgqst.ModEnabled && !cfgqst.AbortAll
            NymTrace("#SEXFINSIHED IdleWaitTime: " + IdleWaitTime)
            IdleWaitTime = IdleWaitTime - 4.0
            SendModEvent("Moan", "", 0.0)
            utility.Wait(4.0)
        endwhile
        Vehicle("restore")
        SendModEvent("Moan", "", 0.0)
        UnregisterForModEvent("AnimationEnd_NadeRape")
        UnregisterForModEvent("AnimationEnding_NadeRape")
        UnregisterForModEvent("StageEnd_NadeRape")
        UnregisterForModEvent("StageStart_NadeRape")
        UnregisterForModEvent("OrgasmStart_NadeRape")
        UnregisterForModEvent("OrgasmEnd_NadeRape")
        UnregisterForModEvent("StageEnd_NadeForeplay")
        UnregisterForModEvent("StageStart_NadeForeplay")
        GoBack = false
        SexScenesDone = SexScenesDone + 1
        if !cfgqst.AbortAll
            if SexScenesDone == 0
                if D100(30.0)
                    SendModEvent("StartAddRapeTears", "", 0.0)
                endif
            elseif SexScenesDone == 1
                if D100(60.0)
                    SendModEvent("StartAddRapeTears", "", 0.0)
                endif
            elseif SexScenesDone > 1
                SendModEvent("StartAddRapeTears", "", 0.0)
            endif
        endif
        if !cfgqst.AbortAll
            Allow_SexScenes == 0
        endif
        NymTrace("cfgqst.IsMouthAvailable - calm 14827 :" + cfgqst.IsMouthAvailable)
        cfgqst.SexFinished = false
        if cfgqst.IsDefeatRunning() && Allow_SexScenes == 0
            SetStage(14)
            SexScenesDone = 0
        elseif cfgqst.IsDefeatRunning()
            if SexScenesDone == 1
                if Allow_SexScenes == 1
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 1/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                elseif Allow_SexScenes > 1
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: chainrape round 1/" + Allow_SexScenes + " done: send to round 2", 0)
                    LastSceneOrdered = 2
                    SetStage(11)
                endif
            elseif SexScenesDone == 2
                if Allow_SexScenes == 2
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 2/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                elseif Allow_SexScenes > 2
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: chainrape round 2/" + Allow_SexScenes + " done: send to round 3", 0)
                    LastSceneOrdered = 3
                    SetStage(12)
                endif
            elseif SexScenesDone == 3
                if Allow_SexScenes == 3
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 3/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                elseif Allow_SexScenes > 3
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: chainrape round 3/" + Allow_SexScenes + " done: send to round 4", 0)
                    LastSceneOrdered = 4
                    SetStage(11)
                endif
            elseif SexScenesDone == 4
                if Allow_SexScenes == 4
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 4/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                elseif Allow_SexScenes > 4
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: chainrape round 4/" + Allow_SexScenes + " done: send to round 5", 0)
                    LastSceneOrdered = 5
                    SetStage(12)
                endif
            elseif SexScenesDone == 5
                if Allow_SexScenes == 5
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 5/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                elseif Allow_SexScenes > 5
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: chainrape round 5/" + Allow_SexScenes + " done: send to round 6", 0)
                    LastSceneOrdered = 6
                    SetStage(11)
                endif
            elseif SexScenesDone == 6
                if Allow_SexScenes == 6
                    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: round 6/" + Allow_SexScenes + " done, send to end of rape", 0)
                    SetStage(14)
                endif
            elseif cfgqst.IsDefeatRunning()
                ScreenMessage("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR - why are we here?")
            else
                ScreenMessage("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: #ERROR - ABORT END OF DEFEAT")
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

Event OnUpdate()
    debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: onupdate()", 0)
    if Nym() && !cfgqst.SexScene && cfgqst.PlayerRef.GetDistance(VehiclePlayer) > 25.0
        if cfgqst.DefeatStatePlayer == "Escaping"
        else
            Vehicle("restore")
            NymMessage("!!!Calmquest OnUpdate Vehicle Restored!!!")
            RegisterForSingleUpdate(1.0)
        endif
    endif
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Function GetActorHuman(Actor akActor = None)					;update this With Sexlab Gendercheck???
	cfgqst.IsHuman(akActor)					
	Debug.Notification("NAKED DEFEAT: AggressorIsHuman" +cfgqst.IsHuman(akActor))		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

String TagsSuppressed
String TagsWanted	
String CreatureTagsSuppressed
String CreatureTagsWanted	

String Function GetCurrentBoundScenario()


	if (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Armbinder") || (cfgqst.DefeatTypeScenario == "Wheel") || (cfgqst.DefeatTypeScenario == "XCross") || (cfgqst.DefeatTypeScenario == "Stockade") || (cfgqst.DefeatTypeScenario == "Cuffs")
	return cfgqst.DefeatTypeScenario
	else
	return "" 
	endif 

EndFunction 

Function GetCreatureTags(String RaceKey)	

		DebugTrace("GetCreatureTags("+RaceKey+")")
		
		Bool AnimalGroup = storqst.CheckGroupRace(RaceKey)
		Bool AnimalScenario = false
		
		if cfgqst.DefeatTypeGeneral == "AreAnimals"
		AnimalScenario = true
		endif 
		
		if AnimalGroup && AnimalScenario
		CreatureTagsWanted = "Creature, "
		CreatureTagsSuppressed = "InvisFurn, InvFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, Furniture, Bound, Armbinder, Yoke, Pillory, "	
		
			if Nym()
				if D100(50) ;Doggy Chance
				CreatureTagsWanted = "Creature, Doggy, "
					if D100(25)
					CreatureTagsWanted = "Creature, Doggy, Aggressive, "
					endif 
				elseif D100(25)
				CreatureTagsWanted = "Creature, Aggressive, "
				endif 
			endif
		else 
		CreatureTagsWanted = "Creature, "
		CreatureTagsSuppressed = "InvisFurn, InvFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, "
		endif 

EndFunction 


Function GetSexTags(int VictimNumber)			;#tags   #GetSexTags(VictimNumber)
	
	Debug.Trace("NAKED DEFEAT calmquest["+storqst.Defeat_ID+"]: GetSexTags(START - Actor: "+VictimNumber+")")
	
	String TagsSuppressedTemp = ""	
	String TagsWantedTemp = ""	
	String TagsWantedForeplayTemp = ""
	
	;String TagsSuppressedTemp_supFOREPLAY
	
	String TagsSuppressedTemp_supNYMRA = "gone, Futa, Femdom, 3jiou, Loving, "
	
	if !cfgqst.IsPoseScenario() ;&& D100(50)
	NymTrace("FunnyBiz suppressed")
	TagsSuppressedTemp_supNYMRA = "gone, Futa, Femdom, 3jiou, FunnyBiz, Loving, "
	endif 
	
	String TagsSuppressedTemp_supBASE = "LeadIn, GoldenShower, Necro, Guro, Molag, MM, Gay, Femdom, " 		;#tags
	String TagsSuppressedTemp_supFURN = "Furniture, XCross, Wall, InvisFurn, InvFurn, Bed, Stockade, Wheel, Pillory, BedOnly, Bench, Throne, WallHole, " 		;#tags "Table" AND "Chair" ALLOWED FOR NOW
	String TagsSuppressedTemp_supBINDS = "Yoke, Armbinder, Cuffs, " 		
	String TagsSuppressedTemp_supPOSEScenarios = "GoldenShower, LeadIn, " 	
	String TagsSuppressedTemp_supNYMForeplay = "NymForeplayPack, " 
	String TagsSuppressedTemp_supGAG = "Blowjob, " 
	
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
		
		TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supFURN + TagsSuppressedTemp_supPOSEScenarios + TagsSuppressedTemp_supNYMRA + GroupComposition()
		
		endif 
			
		TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supFURN + TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
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
		storqst.Riding = true	;when will it get FALSE
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
	
		sslBaseAnimation[] AnimationsCheck
		AnimationsCheck = SexLab.GetAnimationsByTags(2, "Loving, ", "", true)

	;	int AnimCountCheck		;sslAnimationSlots
	;	AnimCountCheck = Sexlab.CountTagUsage("NymLogVersion020, ", true)
		
		DebugTrace("AnimCountCheck: "+AnimationsCheck.Length)
		
		if AnimationsCheck.Length > 3
		TagsWantedTemp = "Loving"
		endif
	
	
		
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

	if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
	TagsSuppressed = TagsSuppressed + "Handjob"
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
	
		if cfgqst.Gagged || cfgqst.IsPlayerGagged()
		
			if TagsWantedTemp == "Blowjob"
			TagsWantedTemp = "Aggressive"
			endif 
			
		TagsSuppressed = TagsSuppressedTemp + TagsSuppressedTemp_supNYMForeplay + TagsSuppressedTemp_supGAG
		else 
		TagsSuppressed = TagsSuppressedTemp + TagsSuppressedTemp_supNYMForeplay ;block my own SLAL...
		endif 
	
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
	
	if !nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
		if cfgqst.DefeatStateBindings == "DDs"
		NymBox("calmquest #15822 - No DDs, FIXED -> Unbound!")
		cfgqst.DefeatStateBindings == "Unbound"
		endif 
	endif 
							
	if cfgqst.ModDDframework && cfgqst.DefeatTypeScenario == "DD"		;#DD
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
					
					if cfgqst.DefeatType == "Trolls"
					x = 0 
					endif
					
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

Function RemoveDefeatBinds()
    NymTrace("RemoveDefeatBinds(non DD!)")
    Form[] CuffsList = new Form[4]
    keyword[] KWDList = new keyword[4]
    KWDList[0] = KWD_nade_Cuffs
    KWDList[1] = KWD_nade_Armbinder
    KWDList[2] = KWD_nade_Yoke
    KWDList[3] = KWD_nade_AnkleCuffs
    CuffsList = spe_objectref.GetItemsByKeyword(cfgqst.PlayerRef, KWDList, false)
    int TTestInt = spe_objectref.RemoveItems(cfgqst.PlayerRef, CuffsList, None)
    NymTrace("Items Removed = " + TTestInt)
    cfgqst.DefeatBindsEquipped = "None"
    cfgqst.DefeatStateBindings = "Unbound"
EndFunction


Function AddDefeatCuffs(String sMode)		;#AddDefeatCuffs()
		
		NymTrace("AddDefeatCuffs()")
		
		;TO DO: we need ANKLE Cuffs for advanced style of Heavy Bondage that only uses wrists
		
		String EquipMode = sMode


		if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage") || cfgqst.PlayerRef.WornHasKeyword(KWD_nade_Armbinder) || cfgqst.PlayerRef.WornHasKeyword(KWD_nade_Yoke)
		EquipMode = "Random Ankle"
		endif 

	;	if AllowEquip

			int x
			
			if EquipMode == "Random"
			x = Utility.RandomInt (0, 3)
			elseif EquipMode == "Rope"
			x = 3
			elseif EquipMode == "Metal"
			x = Utility.RandomInt (1, 2)
			elseif EquipMode == "Random Ankle"
			x = Utility.RandomInt (4, 7)
			endif 
			
			;NEED ANKLE ONLY!!
			
			NymTrace("AddDefeatCuffs() [EquipMode: "+EquipMode+"]")
		;	if cfgqst.DefeatType == "Trolls"
		;	x = 0 
		;	endif
			
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
			
			
			;ANKLE CUFFS (organize better)
			elseif x == 4
			cfgqst.PlayCuffsSoundRope()
			cfgqst.PlayerRef.AddItem(DefeatBindsAnkle[0], 1, true)			;leather
			cfgqst.PlayerRef.EquipItem(DefeatBindsAnkle[0], false, true)
			cfgqst.DefeatBindsEquipped = "AnkleLeather"
			
			elseif x == 5
			cfgqst.PlayCuffsSoundRope()
			cfgqst.PlayerRef.AddItem(DefeatBindsAnkle[1], 1, true)			;rope 01
			cfgqst.PlayerRef.EquipItem(DefeatBindsAnkle[1], false, true)
			cfgqst.DefeatBindsEquipped = "AnkleRope"			
			
			elseif x == 6
			cfgqst.PlayCuffsSoundMetal()
			cfgqst.PlayerRef.AddItem(DefeatBindsAnkle[3], 1, true)			;black steel
			cfgqst.PlayerRef.EquipItem(DefeatBindsAnkle[3], false, true)
			cfgqst.DefeatBindsEquipped = "Leather"

			elseif x == 7
			cfgqst.PlayCuffsSoundMetal()
			cfgqst.PlayerRef.AddItem(DefeatBindsAnkle[4], 1, true)			;black steel
			cfgqst.PlayerRef.EquipItem(DefeatBindsAnkle[4], false, true)
			cfgqst.DefeatBindsEquipped = "Leather"			
			
			endif
	;	endif 

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


Function CleanUpSpawns()
NakedGhostFaction

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
		int j = 10
	
		Utility.Wait(iWaitTime)
		
		while !StrippedCompletely
		
			PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
			cfgqst.WhipAgain = true
			NymTrace("WhipStripScene -> cfgqst.WhipAgain = true")

			if storqst.WhippingDuration == 0 ;restart WhipQuest if needed
			storqst.StartWhipping_00(600)
			endif 
			
			while storqst.WhipHitCount < 5 && cfgqst.ModEnabled && j > 0
			NymTrace("WhipStripScene(WhipHitCount: "+storqst.WhipHitCount+")")
			j -= 1
			Utility.Wait(1.0)
			endwhile 

			NymTrace("WhipStripScene(Round "+i+")")
			if i == 0 
				i += 1
				if storqst.GetSlotItem(33, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
				defqst.PlaySoundStripWhipCloth()
			;	cfgqst.PlayCombatStrippingSound()
				Utility.Wait(iWaitTime)
				endif 
			elseif i == 1 				
				i += 1
				if storqst.GetSlotItem(42, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(42, cfgqst.PlayerRef)	;circlet
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 
			elseif i == 2 				
				i += 1
				if storqst.GetSlotItem(57, cfgqst.PlayerRef) ;returns a Form or NONE 
					if Nym() && D100(50)
					;do nothing 
					else 
					cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
					;cfgqst.PlayCombatStrippingSound()
					defqst.PlaySoundStripWhipCloth()
					Utility.Wait(iWaitTime)
					endif 
				endif 	

			elseif i == 3 				
				i += 1
				if storqst.GetSlotItem(53, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(53, cfgqst.PlayerRef)	;steel thigh armor
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 4 				
				i += 1
				if storqst.GetSlotItem(46, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(46, cfgqst.PlayerRef)	;harness
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 5 				
				i += 1
				if storqst.GetSlotItem(32, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(32, cfgqst.PlayerRef)	;body 
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 6 				
				i += 1
				if storqst.GetSlotItem(52, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 7				
				i += 1
				if storqst.GetSlotItem(49, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(49, cfgqst.PlayerRef)	;savage bikini thong
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
			elseif i == 8 				
				i += 1
				if storqst.GetSlotItem(35, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(35, cfgqst.PlayerRef)	;amulett
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 9 				
				i += 1
				if storqst.GetSlotItem(37, cfgqst.PlayerRef) ;returns a Form or NONE 
				
					if Nym() && D100(50)
					;do nothing 
					else 
					cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
					;cfgqst.PlayCombatStrippingSound()
					defqst.PlaySoundStripWhipCloth()
					Utility.Wait(iWaitTime)
					endif 
					
				endif 	
				
			elseif i == 10
				i += 1
				if storqst.GetSlotItem(48, cfgqst.PlayerRef) ;returns a Form or NONE 
				cfgqst.Strip(48, cfgqst.PlayerRef)	;bikini top
				;cfgqst.PlayCombatStrippingSound()
				defqst.PlaySoundStripWhipCloth()
				Utility.Wait(iWaitTime)
				endif 	
				
			elseif i == 11
				i += 1
				if cfgqst.BondageHaircutProb > 0
					if Nym() && D100(50)
					;do nothing 
					else 
					HairChangedOnce = true
					cfgqst.ChangeHairStyle("Standard")	;whip hair into shape!!!
					cfgqst.PlayCombatStrippingSound()
					SendModEvent("Moan")
					Utility.Wait(iWaitTime)
					endif 
				endif			
					
			elseif i == 12 ;always ends here 
			StrippedCompletely = true
			endif 

		endwhile 	

		storqst.WhippingDuration = 0 ;ends whipping
		DebugTrace("WhipStripScene(END)")
		

EndFunction 

Function StripDuringSex(int iProgress)
    DebugTrace("StripDuringSex(START)")
    int i = 0
    if iProgress == 1 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 48)
        if storqst.GetSlotItem(48, cfgqst.PlayerRef)
            cfgqst.Strip(48, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 2 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 52)
        if storqst.GetSlotItem(52, cfgqst.PlayerRef)
            cfgqst.Strip(52, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 3 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 32)
        if storqst.GetSlotItem(32, cfgqst.PlayerRef)
            cfgqst.Strip(32, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 4 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 33)
        if storqst.GetSlotItem(33, cfgqst.PlayerRef)
            cfgqst.Strip(33, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 5 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 42)
        if storqst.GetSlotItem(42, cfgqst.PlayerRef)
            cfgqst.Strip(42, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 6 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 57) && D100(50.0)
        if storqst.GetSlotItem(57, cfgqst.PlayerRef)
            cfgqst.Strip(57, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 7 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 57) && D100(50.0)
        if storqst.GetSlotItem(53, cfgqst.PlayerRef)
            cfgqst.Strip(53, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 8 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 46)
        if storqst.GetSlotItem(46, cfgqst.PlayerRef)
            cfgqst.Strip(46, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 9 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 49)
        if storqst.GetSlotItem(49, cfgqst.PlayerRef)
            cfgqst.Strip(49, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 10 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 35)
        if storqst.GetSlotItem(35, cfgqst.PlayerRef)
            cfgqst.Strip(35, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    elseif iProgress == 11 && storqst.IsSlotOccupied(cfgqst.PlayerRef, 37) && D100(50.0)
        if storqst.GetSlotItem(37, cfgqst.PlayerRef)
            cfgqst.Strip(37, cfgqst.PlayerRef)
            defqst.PlaySoundStripWhipCloth()
        endif
    endif
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

Function PlaceSafetyPlatform(bool bPlace)
    if cfgqst.NymBeta
        if bPlace
            SafetyPlatform = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor, 1, false, false)
            SafetyPlatform.MoveTo(cfgqst.PlayerRef, 0.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ()), 0.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 155.0, false)
            SafetyPlatform.SetAngle(0.0, 0.0, 0.0)
        else
            SafetyPlatform.DisableNoWait(false)
            SafetyPlatform.Delete()
            SafetyPlatform = None
        endif
    endif
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


Function Vehicle(string type)
    float fFollowerDistance
    NymTrace("Vehicle START: " + type + " - AlreadyPlaced?: " + VehiclePlaced)
    bool NewVehiclePlacement = true
    if !VehiclePlayer && VehiclePlaced
        NymBox("NO VEHICLE - VehiclePlaced Bool was Stuck")
    endif
    storqst.PlayerPosingVehicle(false)
    if type == "SetupForSlavery" && !VehiclePlaced
        VehiclePlaced = true
        PlaceSafetyPlatform(true)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (" + type + ") PLACED", 0)
        VehiclePlayer = Alias_Vehicle.GetReference()
        VehiclePlayer.MoveTo(cfgqst.PlayerRef, 0.0, 0.0, 0.0, true)
        PlayerSetVehicle(true)
        if folqst.Actor_Follower01
            SetVehicleToActor(folqst.Actor_Follower01, "FRONT LEFT 45°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 160.0, 45.0)
        endif
        if folqst.Actor_Follower02
            SetVehicleToActor(folqst.Actor_Follower02, "FRONT RIGHT 45°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 160.0, 320.0)
        endif
        if Nym()
            PlaceWatcherXMarkers()
        else
            PlaceWatchMarkers()
        endif
        RegisterForSingleUpdate(1.0)
    elseif type == "SetupForAfterlife" && !VehiclePlaced
        VehiclePlaced = true
        PlaceSafetyPlatform(true)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (" + type + ") PLACED", 0)
        bool NewVehicle = true
        Afterlife_Table_Center = (game.GetFormFromFile(23315, "Naked Defeat.esp") as objectreference)
        Afterlife_Table_Front = (game.GetFormFromFile(23316, "Naked Defeat.esp") as objectreference)
        Afterlife_Table_Back = (game.GetFormFromFile(23317, "Naked Defeat.esp") as objectreference)
        Afterlife_Stairs_Center = (game.GetFormFromFile(23319, "Naked Defeat.esp") as objectreference)
        Afterlife_Stairs_Right = (game.GetFormFromFile(23320, "Naked Defeat.esp") as objectreference)
        Afterlife_Stairs_Left = (game.GetFormFromFile(23318, "Naked Defeat.esp") as objectreference)
        if NewVehicle
            if D100(33.0)
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
            cfgqst.PlayerRef.MoveTo(VehiclePlayer, 0.0, 0.0, 0.0, true)
            TillTouchdown(cfgqst.PlayerRef)
            PlayerSetVehicle(true)
        endif
        PlaceWatcherXMarkers()
        folidle01.StartFollowerIdleQuest_01("None")
        if folqst.Actor_Follower01
            folidle01.StartDoingNothing_01(true)
            folqst.Actor_Follower01.EvaluatePackage()
        endif
        if folqst.Actor_Follower02
            folidle01.StartDoingNothing_02(true)
            folqst.Actor_Follower02.EvaluatePackage()
        endif
        cfgqst.FollowersStripCompletely()
        if NewVehicle
            if NewVehicle
                if folqst.IsWithUs_Follower(0)
                    NymTrace("folqst.IsWithUs_Follower(0)for VEHICLE")
                    folqst.Actor_Follower01.MoveTo(Vehicle_Victims0, 0.0, 0.0, 0.0, true)
                    TillTouchdown(folqst.Actor_Follower01)
                    folqst.Actor_Follower01.SetVehicle(Vehicle_Victims0)
                endif
                if folqst.IsWithUs_Follower(1)
                    NymTrace("folqst.IsWithUs_Follower10)for VEHICLE")
                    folqst.Actor_Follower02.MoveTo(Vehicle_Victims1, 0.0, 0.0, 0.0, true)
                    TillTouchdown(folqst.Actor_Follower02)
                    folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)
                endif
            endif
        endif
        RegisterForSingleUpdate(1.0)
    elseif type == "SetupForAuction"
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (" + type + ") PLACED", 0)
        if folqst.IsWithUs_Follower(0) || folqst.IsWithUs_Follower(1)
            folidle01.StartFollowerIdleQuest_01("None")
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
            folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, -110.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 90.0), -110.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 90.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
            zOffset = folqst.Actor_Follower02.GetHeadingAngle(cfgqst.PlayerRef)
            folqst.Actor_Follower02.SetAngle(folqst.Actor_Follower02.GetAngleX(), folqst.Actor_Follower02.GetAngleY(), folqst.Actor_Follower02.GetAngleZ() + zOffset)
            cfgqst.RotateObject(folqst.Actor_Follower02, 270.0)
            folqst.Actor_Follower02.MoveTo(folqst.Actor_Follower02, 0.0, 0.0, 0.0, true)
            TillTouchdown(folqst.Actor_Follower02)
            PlayPoseOnActor(folqst.Actor_Follower02, "FollowerAuction", false)
        endif
        if folqst.IsWithUs_Follower(0)
            folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -180.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 90.0), -180.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 90.0), cfgqst.PlayerRef.GetHeight() - 125.0, true)
            zOffset = folqst.Actor_Follower01.GetHeadingAngle(cfgqst.PlayerRef)
            folqst.Actor_Follower01.SetAngle(folqst.Actor_Follower01.GetAngleX(), folqst.Actor_Follower01.GetAngleY(), folqst.Actor_Follower01.GetAngleZ() + zOffset)
            cfgqst.RotateObject(folqst.Actor_Follower01, 270.0)
            folqst.Actor_Follower01.MoveTo(folqst.Actor_Follower01, 0.0, 0.0, 0.0, true)
            TillTouchdown(folqst.Actor_Follower01)
            PlayPoseOnActor(folqst.Actor_Follower01, "FollowerAuction", false)
        endif
    elseif (type == "setup" || type == "Setup Early") && !VehiclePlaced
        VehiclePlaced = true
        PlaceSafetyPlatform(true)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (" + type + ") PLACED V02", 0)
        VehiclePlayer = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked, 1, false, false)
        Vehicle_Victims0 = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked, 1, false, false)
        Vehicle_Victims1 = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Naked, 1, false, false)
        VehiclePlayer.MoveTo(cfgqst.PlayerRef, 0.0, 0.0, 0.0, true)
        VehiclePlayer.SetAngle(0.0, 0.0, cfgqst.PlayerRef.GetAngleZ())
        if Nym()
        endif
        if Nym()
            fFollowerDistance = 120.0
        else
            fFollowerDistance = 160.0
        endif
        PlayerSetVehicle(true)
        if folqst.Actor_Follower01
            SetVehicleToActor(folqst.Actor_Follower01, "FRONT LEFT 45°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, fFollowerDistance, 45.0)
        endif
        if folqst.Actor_Follower02
            SetVehicleToActor(folqst.Actor_Follower02, "FRONT RIGHT 45°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, fFollowerDistance, 320.0)
        endif
        PlaceWatcherXMarkers()
        RegisterForSingleUpdate(1.0)
    elseif type == "restore"
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (restored)", 0)
        if !VehiclePlayer
            NymBox("#ERROR NO VEHICLE")
        endif
        float VehicleDistance = cfgqst.PlayerRef.GetDistance(VehiclePlayer)
        NymTrace("VehicleDistance: " + (VehicleDistance as int))
        cfgqst.PlayerRef.MoveTo(VehiclePlayer, 0.0, 0.0, 0.0, true)
        float cZ = 0.0
        float second = 0.0
        while !(cZ == cfgqst.PlayerRef.z) && second < 2.0
            cZ = cfgqst.PlayerRef.z
            utility.Wait(0.1)
            second = second + 0.1
        endwhile
        PlayerSetVehicle(true)
    elseif type == "Remove"
        VehiclePlaced = false
        PlayerSetVehicle(false)
        debug.trace("NAKED DEFEAT calmquest[" + storqst.Defeat_ID + "]: Vehicle (removed)", 0)
        PlaceSafetyPlatform(false)
        if VehiclePlayer
            VehiclePlayer.DisableNoWait(false)
            VehiclePlayer.Delete()
            VehiclePlayer = None
            Alias_Vehicle.Clear()
        endif
        if Vehicle_Victims0
            Vehicle_Victims0.DisableNoWait(false)
            Vehicle_Victims0.Delete()
            Vehicle_Victims0 = None
            Alias_Vehicle_Follower_03.Clear()
        endif
        if Vehicle_Victims1
            Vehicle_Victims1.DisableNoWait(false)
            Vehicle_Victims1.Delete()
            Vehicle_Victims1 = None
            Alias_Vehicle_Follower_02.Clear()
        endif
        if xMarkerHeading_00
            xMarkerHeading_00.DisableNoWait(false)
            xMarkerHeading_00.Delete()
        endif
        Alias_XMarkerHeading_00.Clear()
        if xMarkerHeading_01
            xMarkerHeading_01.DisableNoWait(false)
            xMarkerHeading_01.Delete()
        endif
        Alias_XMarkerHeading_01.Clear()
        if xMarkerHeading_02
            xMarkerHeading_02.DisableNoWait(false)
            xMarkerHeading_02.Delete()
        endif
        Alias_XMarkerHeading_02.Clear()
        if xMarkerHeading_03
            xMarkerHeading_03.DisableNoWait(false)
            xMarkerHeading_03.Delete()
        endif
        Alias_XMarkerHeading_03.Clear()
        if Nym()
            int iMarkers = 24
            int iDeleted = 0
            while iMarkers > 0
                iMarkers = iMarkers - 1
                iDeleted = iDeleted + 1
                if storqst.WatcherXMarkers[iMarkers]
                    storqst.WatcherXMarkers[iMarkers].DisableNoWait(false)
                    storqst.WatcherXMarkers[iMarkers].Delete()
                    storqst.WatcherXMarkers[iMarkers] = None
                endif
            endwhile
            NymTrace("Markers Deleted: " + iDeleted)
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

Function TestDeviceUnequipAnimObj()

	NymBox("Try DEVICE Unequip Objects")
	
	Debug.SendAnimationEvent(capqst.Device, "AnimObjectUnequip")
	
EndFunction 



Function ResetValues()
    NymTrace("ResetValues()")
    OldPoseVictims0 = 404
    OldPoseVictims1 = 404
    OldPosePlayer = 404
    OldTypeVictims0 = "empty"
    OldTypeVictims1 = "empty"
    OldTypePlayer = "empty"
    PlayerHadCreatures = false
    cfgqst.PlayerRef.ClearExpressionOverride()
    defqst.ResetModifier_FACE(cfgqst.PlayerRef, 0.1)
    cfgqst.ShortPunishment = 0
    cfgqst.PublicExposure = 0
    cfgqst.IsMouthAvailable = 1
    VehiclePlaced = false
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
    noCaptivity = false
    NeedRapersForSlavery = false
    NeedCreaturesForSlavery = false
    Rescued = false
    UnRegisterForUpdate()
    UnregisterForModEvent("Bis_BatheEvent")
    UnregisterForModEvent("StartForceExpression")
    UnregisterForModEvent("StartCombatScanner")
    UnregisterForModEvent("StartAddRapeHands")
    UnregisterForModEvent("StartAddRapeTears")
    UnregisterForModEvent("StartAddRapeCount")
    UnregisterForModEvent("StartForceImmobilize")
    UnregisterForModEvent("EndofDefeat")
    UnregisterForModEvent("EndofDefeat_Slavery")
    UnregisterForModEvent("EndofDefeat_Afterlife")
    UnregisterForModEvent("HookStageStart")
    UnregisterForModEvent("StartEscape")
    UnregisterForModEvent("StartCallMolesters")
    UnregisterForModEvent("StartPlayerRescued")
    UnregisterForModEvent("StartVoyeurs")
    UnregisterForModEvent("StartNakedSexExpressions")
    UnregisterForModEvent("StartForceOpenMouth")
    UnregisterForModEvent("StartSpawnRapers")
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
	
Bool ForePlayStripping	
	
Function StartRapeSequence(int Stage)			;#StartRapeSequence()
;GUIDE: this starts all the rape scenes for player AND followers
;it starts for Every Round (so 3 times in total, more for chain rape?)

if !CHECK_RapeSequence_running
CHECK_RapeSequence_running = true 
endif 

DebugTrace("StartRapeSequence() [Round:"+FuckingRound+"][Sent From Stage: "+Stage+"][Last Scene Ordered: "+LastSceneOrdered+"]")
;FuckingRound 1 - can have foreplay etc. -- sent from Stage 10
;FuckingRound 2 - can have foreplay etc. -- sent from Stage 11
;FuckingRound 3 - can have foreplay etc. -- sent from Stage 12



bool StartFollowerScenes = true
	;; PLAYER ;; ;>>>>>>>>>>>>>>>>>> Roll for Foreplay Yes/No >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>						
						
	if Allow_Foreplay && (cfgqst.DefeatTypeGeneral == "AreHumans") && (ForePlayStripping || D100(cfgqst.DefeatForeplayChance))
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

		if Nym() && SexSceneStatus == 3
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
					
		;--- Sex Scene Failed - Retry Once ---; ;this not good. REWORK
		;/
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
		/;

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
									
	;defqst.PlaySoundStripCloth()										
									
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
    RapersTemp = new actor[12]
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
    Rapers = new actor[4]
    Rapers[0] = None
    Rapers[1] = None
    Rapers[2] = None
    Rapers[3] = None
    RaperCount = 0
    while i > 0
        i = i - 1
        if RapersTemp[i] && !RapersTemp[i].IsInFaction(SexLabAnimatingFaction) && !RapersTemp[i].IsInFaction(BusyFaction) && storqst.GetGender(RapersTemp[i]) == 0
            if RapersTemp[i] && SexLab.GetGender(RapersTemp[i]) == 0 && j < 4
                Rapers[j] = RapersTemp[i]
                j = j + 1
            endif
        endif
    endwhile
    RaperCount = j
    NymTrace("RaperCount: " + j)
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
					
					if Nym() && i == 6 
					cfgqst.ChangeHairStyle("Standard")
					endif 
					
					if i == 7 						
					cfgqst.BathingRemoveBlood()					
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

		;AddTag,Anubs  MMF Rape last stage has sitting pose unbound (Nice) - stage 1 has knife groper, also nice for furnitures
		;FUnnyBiz PornStar Dog (nice kneeling pose with struggle and exhaustion. For DD stuff?)

Function PlayPoseOnActor(actor akactor, string type, bool restore)
    int NewPose
    int pose
    string PosingActor = "empty"
    if akactor == cfgqst.PlayerRef
        PosingActor = "Player"
        NymTrace("PlayPoseOnActor: " + type)
    elseif akactor && akactor == folqst.NakedFollower[0]
        PosingActor = folqst.Name_Follower01
    elseif akactor && akactor == folqst.NakedFollower[1]
        PosingActor = folqst.Name_Follower02
    else
        PosingActor = "NOT FOUND"
    endif
    NymTrace("PlayPoseOnActor START: " + PosingActor + " Type: " + type + " Restore: " + restore)
    if PosingActor == "NOT FOUND"
        NymTrace("PlayPoseOnActor(" + PosingActor + ") - EMPTY CALL - Abort")
    elseif type == "reset"
        NymTrace("PlayPoseOnActor(" + PosingActor + ") - Type: " + type)
        OldPoseVictims0 = 404
        OldPoseVictims1 = 404
        OldPosePlayer = 404
        OldTypeVictims0 = "empty"
        OldTypeVictims1 = "empty"
        OldTypePlayer = "empty"
    else
        if type == "Random" && !restore
            if D100(50.0)
                type = "struggle"
            else
                type = "Wait"
            endif
        endif
        if restore
            if akactor == cfgqst.PlayerRef
                type = OldTypePlayer
                NewPose = OldPosePlayer
            elseif cfgqst.IsDefeatRunning()
                if VictimCount > 0 && akactor == Victims[0]
                    type = OldTypeVictims0
                    NewPose = OldPoseVictims0
                elseif VictimCount > 0 && akactor == Victims[1]
                    type = OldTypeVictims1
                    NewPose = OldPoseVictims1
                endif
            elseif folqst.IsWithUs_Follower(0) && akactor == folqst.NakedFollower[0]
                type = OldTypeVictims0
                NewPose = OldPoseVictims0
            elseif folqst.IsWithUs_Follower(1) && akactor == folqst.NakedFollower[1]
                type = OldTypeVictims1
                NewPose = OldPoseVictims1
            endif
        endif
        if cfgqst.DefeatTypeScenario == "FastTravel"
            type = "Offering"
        endif
        if !cfgqst.ModDDNG && cfgqst.IsDDScenario()
        elseif type == "Stop"
            akactor.PlayIdle(cfgqst.IdlesFixHair[0])
            type = "None"
            LastTypePlayer = "None"
        elseif type == "Player Down"
            if !restore
                NewPose = utility.RandomInt(1, 5)
            endif
            if NewPose == 1
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[4])
            elseif NewPose == 2
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[9])
            elseif NewPose == 3
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[11])
            elseif NewPose == 4
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[12])
            elseif NewPose == 5
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[16])
            endif
        elseif type == "DD Removal Wiggling"
            if !restore
                NewPose = utility.RandomInt(1, 7)
            endif
            if NewPose == 1
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
            elseif NewPose == 2
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
            elseif NewPose == 3
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
            elseif NewPose == 4
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])
            elseif NewPose == 5
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])
            elseif NewPose == 6
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[9])
            elseif NewPose == 7
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[18])
            endif
        elseif type == "DD Removal Resting"
            if !restore
                NewPose = utility.RandomInt(1, 3)
            endif
            if NewPose == 1
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[5])
            elseif NewPose == 2
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[6])
            elseif NewPose == 3
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[7])
            elseif NewPose == 4
            elseif NewPose == 5
            endif
        elseif type == "Offering"
            if !restore
                NewPose = utility.RandomInt(1, 4)
            endif
            if NewPose == 3
                NewPose = 1
            endif
            if storqst.IsLocalSlave() && PosingActor == "Player"
                if NewPose == 2
                else
                    cfgqst.DisableHeelsEffectOnActor(akactor, "19723")
                endif
            endif
            if NewPose < 4
                akactor.PlayIdle(cfgqst.IdlesHumanSurrender[NewPose])
            elseif NewPose == 4
                akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[0])
            endif
        elseif type == "Orgasm"
            if cfgqst.DefeatStateBindings == "Armbinder"
                if !restore
                    NewPose = utility.RandomInt(1, 3)
                endif
                string[] AnimArray = new string[4]
                AnimArray[0] = "reset"
                AnimArray[1] = "ZapArmbHorny01"
                AnimArray[2] = "ZapArmbHorny02"
                AnimArray[3] = "ZapArmbHorny03"
                debug.SendAnimationEvent(akactor, AnimArray[NewPose])
            endif
        elseif type == "Pee"
            if cfgqst.DefeatStateBindings == "Armbinder"
                NewPose = 1
                if NewPose == 1
                    debug.SendAnimationEvent(akactor, "ZapArmbHorny03")
                endif
            endif
        elseif type == "receiving"
            if !restore
                NewPose = utility.RandomInt(1, 3)
            endif
            if NewPose == 1
                pose = utility.RandomInt(1, 3)
                if pose == 1
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[10])
                elseif pose == 2
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[11])
                elseif pose == 3
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[12])
                endif
            elseif NewPose == 2
                int mangled_pose_9 = utility.RandomInt(1, 5)
                if mangled_pose_9 == 1
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])
                elseif mangled_pose_9 == 2
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[5])
                elseif mangled_pose_9 == 3
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[6])
                elseif mangled_pose_9 == 4
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[16])
                elseif mangled_pose_9 == 5
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[18])
                endif
            elseif NewPose == 3
                int mangled_pose_10 = utility.RandomInt(1, 3)
                if mangled_pose_10 == 1
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
                elseif mangled_pose_10 == 2
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
                elseif mangled_pose_10 == 3
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
                endif
            elseif NewPose == 4
                int mangled_pose_11 = utility.RandomInt(1, 5)
                if mangled_pose_11 == 1
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[19])
                elseif mangled_pose_11 == 2
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[3])
                elseif mangled_pose_11 == 3
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
                elseif mangled_pose_11 == 4
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[7])
                elseif mangled_pose_11 == 5
                    akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])
                endif
            endif
        elseif type == "surrender"
            if !cfgqst.CivilRapeRunning && (cfgqst.DefeatTypeGeneral == "AreHumans" || cfgqst.DefeatTypeGeneral == "AreHumanoids")
                if !restore
                    NewPose = utility.RandomInt(1, 6)
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
            elseif cfgqst.CivilRapeRunning && cfgqst.ProxGuardDetected > 0.0
                if !restore
                    NewPose = utility.RandomInt(1, 3)
                endif
                if NewPose == 1
                    akactor.PlayIdle(cfgqst.IdlesHumanSurrender_01)
                elseif NewPose == 2
                    akactor.PlayIdle(cfgqst.IdlesHumanSurrender_02)
                elseif NewPose == 3
                    akactor.PlayIdle(cfgqst.IdlesHumanSurrender_03)
                endif
            elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
                if !restore
                    NewPose = utility.RandomInt(0, 2)
                endif
                akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[NewPose])
            else
                if !restore
                    NewPose = utility.RandomInt(1, 6)
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
            endif
        elseif type == "struggle"
            if cfgqst.DefeatStateBindings == "Armbinder"
                if !restore
                    if storqst.WhippingDuration > 0
                        NewPose = utility.RandomInt(1, 6)
                    else
                        NewPose = utility.RandomInt(1, 15)
                    endif
                endif
                string[] mangled_animarray_12 = new string[16]
                mangled_animarray_12[0] = "reset"
                mangled_animarray_12[1] = "ZapArmbStruggle01"
                mangled_animarray_12[2] = "ZapArmbStruggle02"
                mangled_animarray_12[3] = "ZapArmbStruggle03"
                mangled_animarray_12[4] = "ZapArmbStruggle04"
                mangled_animarray_12[5] = "ZapArmbStruggle09"
                mangled_animarray_12[6] = "ZapArmbStruggle10"
                mangled_animarray_12[7] = "ZapArmbStruggle07"
                mangled_animarray_12[8] = "ZapArmbStruggle08"
                mangled_animarray_12[9] = "ZapArmbStruggle05"
                mangled_animarray_12[10] = "ZapArmbStruggle06"
                mangled_animarray_12[11] = "ZapArmbStruggle11"
                mangled_animarray_12[12] = "ZapArmbStruggle12"
                mangled_animarray_12[13] = "ZapArmbStruggle13"
                mangled_animarray_12[14] = "ZapArmbStruggle14"
                mangled_animarray_12[15] = "ZapArmbStruggle15"
                debug.SendAnimationEvent(akactor, mangled_animarray_12[NewPose])
            elseif cfgqst.DefeatStateBindings == "XCross"
                NewPose = 1
                debug.SendAnimationEvent(akactor, "ZapXCrossStruggle01")
            elseif cfgqst.DefeatStateBindings == "Wheel"
                NewPose = 1
                debug.SendAnimationEvent(akactor, "B_B_TiltWFF_A1_S1")
            elseif cfgqst.DefeatStateBindings == "Stockade"
                NewPose = 1
                debug.SendAnimationEvent(akactor, "Anubs_VS_A1_S1")
            elseif cfgqst.DefeatStateBindings == "Pillory"
                if !restore
                    NewPose = utility.RandomInt(0, 16)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatPilloryStruggle[NewPose])
            elseif cfgqst.DefeatStateBindings == "Yoke"
                if !restore
                    if storqst.WhippingDuration > 0
                        NewPose = utility.RandomInt(1, 5)
                        if NewPose == 1
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
                        elseif NewPose == 2
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
                        elseif NewPose == 3
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
                        elseif NewPose == 4
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[3])
                        elseif NewPose == 5
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])
                        endif
                    else
                        NewPose = utility.RandomInt(0, 16)
                    endif
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatYokeStruggle[NewPose])
            elseif cfgqst.DefeatStateBindings == "Cuffs" || cfgqst.DefeatStateBindings == "DDs"
                if !restore
                    if storqst.WhippingDuration > 0
                        NewPose = utility.RandomInt(1, 6)
                        if NewPose == 3
                            NewPose = 4
                        endif
                        if NewPose == 1
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
                        elseif NewPose == 2
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
                        elseif NewPose == 3
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
                        elseif NewPose == 4
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])
                        elseif NewPose == 5
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])
                        elseif NewPose == 6
                            akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[9])
                        endif
                    else
                        NewPose = utility.RandomInt(0, 9)
                        if NewPose == 3
                            NewPose = 4
                        endif
                    endif
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[NewPose])
            elseif cfgqst.DefeatStateBindings == "Unbound"
                if !restore
                    NewPose = utility.RandomInt(0, 16)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])
            else
                if !restore
                    NewPose = utility.RandomInt(0, 16)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])
            endif
        elseif type == "Wait"
            if cfgqst.DefeatStateBindings == "Armbinder"
                if !restore
                    NewPose = utility.RandomInt(1, 15)
                endif
                string[] mangled_animarray_13 = new string[16]
                mangled_animarray_13[0] = "reset"
                mangled_animarray_13[1] = "ZapArmbPose01"
                mangled_animarray_13[2] = "ZapArmbPose02"
                mangled_animarray_13[3] = "ZapArmbPose03"
                mangled_animarray_13[4] = "ZapArmbPose04"
                mangled_animarray_13[5] = "ZapArmbPose05"
                mangled_animarray_13[6] = "ZapArmbPose06"
                mangled_animarray_13[7] = "ZapArmbPose07"
                mangled_animarray_13[8] = "ZapArmbPose08"
                mangled_animarray_13[9] = "ZapArmbPose09"
                mangled_animarray_13[10] = "ZapArmbPose10"
                mangled_animarray_13[11] = "ZapArmbPose11"
                mangled_animarray_13[12] = "ZapArmbPose12"
                mangled_animarray_13[13] = "ZapArmbPose13"
                mangled_animarray_13[14] = "ZapArmbPose14"
                mangled_animarray_13[15] = "ZapArmbPose15"
                debug.SendAnimationEvent(akactor, mangled_animarray_13[NewPose])
            elseif cfgqst.DefeatStateBindings == "Wheel"
                NewPose = 1
                debug.SendAnimationEvent(akactor, "ZazAPCAO263")
            elseif cfgqst.DefeatStateBindings == "Stockade"
                NewPose = 1
                debug.SendAnimationEvent(akactor, "B_Billyy_StockadeFuckMachine_A1_S1")
            elseif cfgqst.DefeatStateBindings == "XCross"
                if !restore
                    NewPose = utility.RandomInt(1, 3)
                endif
                string[] mangled_animarray_14 = new string[4]
                mangled_animarray_14[0] = "reset"
                mangled_animarray_14[1] = "ZapXCrossPose01"
                mangled_animarray_14[2] = "ZapXCrossPose01b"
                mangled_animarray_14[3] = "B_Billyy_XCrossFuck_A1_S1"
                debug.SendAnimationEvent(akactor, mangled_animarray_14[NewPose])
            elseif cfgqst.DefeatStateBindings == "Pillory"
                if !restore
                    NewPose = utility.RandomInt(0, 12)
                endif
                if akactor.PlayIdle(cfgqst.IdlesDefeatPillory[NewPose])
                endif
            elseif cfgqst.DefeatStateBindings == "Yoke"
                if !restore
                    NewPose = utility.RandomInt(0, 14)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatYoke[NewPose])
            elseif cfgqst.DefeatStateBindings == "Cuffs"
                if !restore
                    NewPose = utility.RandomInt(0, 19)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[NewPose])
            elseif cfgqst.DefeatStateBindings == "Unbound"
                if !restore
                    NewPose = utility.RandomInt(0, 16)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])
            else
                if !restore
                    NewPose = utility.RandomInt(0, 16)
                endif
                akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])
            endif
        elseif type == "FollowerAuction"
            if !restore
                NewPose = utility.RandomInt(1, 6)
            endif
            string[] mangled_animarray_15 = new string[7]
            mangled_animarray_15[0] = "reset"
            mangled_animarray_15[1] = "ZazAPCAO307"
            mangled_animarray_15[2] = "ZazAPCAO306"
            mangled_animarray_15[3] = "ZazAPCAO304"
            mangled_animarray_15[4] = "ZazAPCAO303"
            mangled_animarray_15[5] = "ZazAPCAO301"
            mangled_animarray_15[6] = "ZazAPCAO302"
            debug.SendAnimationEvent(akactor, mangled_animarray_15[NewPose])
        elseif type == "FollowerDevices"
            if cfgqst.PlayerRef.IsInInterior()
                if !restore
                    NewPose = utility.RandomInt(1, 37)
                endif
                string[] mangled_animarray_16 = new string[37]
                mangled_animarray_16[0] = "reset"
                mangled_animarray_16[1] = "ZazAPCAO309"
                mangled_animarray_16[2] = "ZazAPCAO308"
                mangled_animarray_16[3] = "ZazAPCAO307"
                mangled_animarray_16[4] = "ZazAPCAO306"
                mangled_animarray_16[5] = "ZazAPCAO305"
                mangled_animarray_16[6] = "ZazAPCAO304"
                mangled_animarray_16[7] = "ZazAPCAO303"
                mangled_animarray_16[8] = "ZazAPCAO302"
                mangled_animarray_16[9] = "ZazAPCAO301"
                mangled_animarray_16[10] = "ZazAPCAO007"
                mangled_animarray_16[11] = "ZazAPCAO006"
                mangled_animarray_16[12] = "ZazAPCAO005"
                mangled_animarray_16[13] = "ZazAPCAO306"
                mangled_animarray_16[14] = "ZazAPCAO205"
                mangled_animarray_16[15] = "ZazAPCAO204"
                mangled_animarray_16[16] = "ZazAPCAO203"
                mangled_animarray_16[17] = "ZazAPCAO202"
                mangled_animarray_16[18] = "ZazAPCAO201"
                mangled_animarray_16[19] = "ZazAPCAO011"
                mangled_animarray_16[20] = "ZazAPCAO009"
                mangled_animarray_16[21] = "ZazAPCAO003"
                mangled_animarray_16[22] = "ZazAPCAO002"
                mangled_animarray_16[23] = "ZazAPCAO001"
                mangled_animarray_16[24] = "ZazAPCAO304"
                mangled_animarray_16[25] = "ZazAPCAO303"
                mangled_animarray_16[26] = "ZazAPCAO261"
                mangled_animarray_16[27] = "ZazAPCAO262"
                mangled_animarray_16[28] = "ZazAPCAO263"
                mangled_animarray_16[29] = "ZazAPCAO025"
                mangled_animarray_16[30] = "ZazAPCAO024"
                mangled_animarray_16[31] = "ZazAPCAO023"
                mangled_animarray_16[32] = "ZazAPCAO016"
                mangled_animarray_16[33] = "ZazAPCAO015"
                mangled_animarray_16[34] = "ZazAPCAO014"
                mangled_animarray_16[35] = "ZazAPCAO013"
                mangled_animarray_16[36] = "ZazAPCAO012"
                debug.SendAnimationEvent(akactor, mangled_animarray_16[NewPose])
            else
                if !restore
                    NewPose = utility.RandomInt(1, 24)
                endif
                string[] mangled_animarray_17 = new string[24]
                mangled_animarray_17[0] = "reset"
                mangled_animarray_17[1] = "ZazAPCAO205"
                mangled_animarray_17[2] = "ZazAPCAO204"
                mangled_animarray_17[3] = "ZazAPCAO203"
                mangled_animarray_17[4] = "ZazAPCAO202"
                mangled_animarray_17[5] = "ZazAPCAO201"
                mangled_animarray_17[6] = "ZazAPCAO211"
                mangled_animarray_17[7] = "ZazAPCAO212"
                mangled_animarray_17[8] = "ZazAPCAO261"
                mangled_animarray_17[9] = "ZazAPCAO262"
                mangled_animarray_17[10] = "ZazAPCAO263"
                mangled_animarray_17[11] = "ZazAPCAO025"
                mangled_animarray_17[12] = "ZazAPCAO024"
                mangled_animarray_17[13] = "ZazAPCAO023"
                mangled_animarray_17[14] = "ZazAPCAO016"
                mangled_animarray_17[15] = "ZazAPCAO015"
                mangled_animarray_17[16] = "ZazAPCAO014"
                mangled_animarray_17[17] = "ZazAPCAO013"
                mangled_animarray_17[18] = "ZazAPCAO012"
                mangled_animarray_17[19] = "ZazAPCAO011"
                mangled_animarray_17[20] = "ZazAPCAO009"
                mangled_animarray_17[21] = "ZazAPCAO003"
                mangled_animarray_17[22] = "ZazAPCAO002"
                mangled_animarray_17[23] = "ZazAPCAO001"
                if Nym()
                    if mangled_animarray_17[23]
                    else
                        debug.Messagebox("Array NONE")
                    endif
                endif
                debug.SendAnimationEvent(akactor, mangled_animarray_17[NewPose])
            endif
        endif
        NymTrace("PlayPoseOnActor(" + PosingActor + ") - Type: " + type + " - DefeatStateBindings: " + cfgqst.DefeatStateBindings + " - Pose: " + NewPose + " - Restore = " + restore)
        NymTrace("PlayPoseOnActor(" + PosingActor + ") - OldPoseVictims0: " + OldPoseVictims0 + " - OldTypeVictims0: " + OldTypeVictims0)
        if akactor && akactor == folqst.NakedFollower[0]
            OldPoseVictims0 = NewPose
            OldTypeVictims0 = type
        elseif akactor && akactor == folqst.NakedFollower[1]
            OldPoseVictims1 = NewPose
            OldTypeVictims1 = type
        elseif akactor && akactor == cfgqst.PlayerRef
            OldPosePlayer = NewPose
            OldTypePlayer = type
        else
            NymTrace("#ERROR no valid Actor to save posing info to")
        endif
        NymTrace("PlayPoseOnActor(" + PosingActor + ") - OldPoseVictims0: " + OldPoseVictims0 + " - OldTypeVictims0: " + OldTypeVictims0)
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
    if cfgqst.ModDEM && storqst.IsDemonicCreature(Rapers[0], "Rapers[0]")
        if Rapers[0].IsInFaction(cfgqst.FactionsHumanoid[12])
            defqst.SexEffect01 = 6
        endif
    elseif GroupTypePlayer == "DwarvenBallistas" || GroupTypePlayer == "DwarvenCenturions" || GroupTypePlayer == "DwarvenSpheres" || GroupTypePlayer == "DwarvenSpiders"
        defqst.SexEffect01 = 6
    elseif GroupTypePlayer == "StormAtronach"
        defqst.SexEffect01 = 2
    elseif GroupTypePlayer == "FrostAtronach" || GroupTypePlayer == "Wisps" || GroupTypePlayer == "WispMothers"
        defqst.SexEffect01 = 3
    elseif GroupTypePlayer == "FlameAtronach"
        defqst.SexEffect01 = 4
    elseif GroupTypePlayer == "Chaurus" || GroupTypePlayer == "ChaurusHunters" || GroupTypePlayer == "ChaurusReapers" || GroupTypePlayer == "Spiders" || GroupTypePlayer == "LargeSpiders"
        defqst.SexEffect01 = 5
    endif
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

	;THIS NO LONGER IN USE!!!!
	
	NymBox("THIS FIRED (UPDATE RAPER GROUPS()")
	
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
				RapersA[i].DisableNowait()
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
				RapersB[i].DisableNowait()
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
				RapersC[i].DisableNowait()
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
				CreaturesA[i].DisableNowait()
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
				CreaturesB[i].DisableNowait()
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
				CreaturesC[i].DisableNowait()
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
				CreaturesD[i].DisableNowait()
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
				CreaturesE[i].DisableNowait()
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
				CreaturesF[i].DisableNowait()
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
			cfgqst.DefeatType = "Funny"
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

Function StartEstrusSex(string sMode, bool bFuckFollowers)
	
		DebugTrace("StartEstrusSex("+sMode+")")
		
		 Utility.Wait(2.0)	;time to find spot
			cfgqst.FadeToBlack(true)
		 Utility.Wait(1.0)
		 
			;	if D100(5)
			;	StripPlayer()	;stuff destroyed? --> since its gamey now... YES please
				;#ESTRUS. does this work?
					
				int EstrusTraptype = Utility.RandomInt(0,3)	
				int ECTrap = ModEvent.Create("ECStartAnimation"); Int 			Int does not have to be named "ECTrap" any name would do
				;if (ECTrap)
				ModEvent.PushForm(ECTrap, cfgqst.PlayerRef)             	; Form			Pass the calling form to the event
				ModEvent.PushForm(ECTrap, cfgqst.PlayerRef) 				; Form	 		The animation target
				ModEvent.PushInt(ECTrap, EstrusTraptype)    	; Int			The animation required   -1 = Impregnation only with No Amimation ,  0 = Tentacles, 1 = Machines 2 = Slime 3 = Ooze
				ModEvent.PushBool(ECTrap, false)             	; Bool			Apply the linked EC effect (Ovipostion for Tentacles, Slime & Ooze, Exhaustion for Machine) 
				ModEvent.Pushint(ECTrap, 1000)               	; Int			Alarm radius in units (0 to disable) 
				ModEvent.PushBool(ECTrap, true)             	; Bool			Use EC (basic) crowd control on hostiles if the Player is trapped
				ModEvent.Send(ECtrap)	
				
				Utility.Wait(1.0)
	
				if bFuckFollowers
					if folqst.IsWithus_Follower(0)
					EstrusTraptype = Utility.RandomInt(0,3)
					int ECFTrap1 = ModEvent.Create("ECStartAnimation")
					ModEvent.PushForm(ECFTrap1, folqst.NakedFollower[0])             	; Form			Pass the calling form to the event
					ModEvent.PushForm(ECFTrap1, folqst.NakedFollower[0]) 				; Form	 		The animation target
					ModEvent.PushInt(ECFTrap1, EstrusTraptype)    	; Int			The animation required   -1 = Impregnation only with No Amimation ,  0 = Tentacles, 1 = Machines 2 = Slime 3 = Ooze
					ModEvent.PushBool(ECFTrap1, false)             	; Bool			Apply the linked EC effect (Ovipostion for Tentacles, Slime & Ooze, Exhaustion for Machine) 
					ModEvent.Pushint(ECFTrap1, 1000)               	; Int			Alarm radius in units (0 to disable) 
					ModEvent.PushBool(ECFTrap1, true)             	; Bool			Use EC (basic) crowd control on hostiles if the Player is trapped
					ModEvent.Send(ECFTrap1)
					endif
					
				Utility.Wait(1.0)	
				
					if folqst.IsWithus_Follower(1)
					EstrusTraptype = Utility.RandomInt(0,3)	
					int ECFTrap2 = ModEvent.Create("ECStartAnimation")
					ModEvent.PushForm(ECFTrap2, folqst.NakedFollower[1])             	; Form			Pass the calling form to the event
					ModEvent.PushForm(ECFTrap2, folqst.NakedFollower[1]) 				; Form	 		The animation target
					ModEvent.PushInt(ECFTrap2, EstrusTraptype)    	; Int			The animation required   -1 = Impregnation only with No Amimation ,  0 = Tentacles, 1 = Machines 2 = Slime 3 = Ooze
					ModEvent.PushBool(ECFTrap2, false)             	; Bool			Apply the linked EC effect (Ovipostion for Tentacles, Slime & Ooze, Exhaustion for Machine) 
					ModEvent.Pushint(ECFTrap2, 1000)               	; Int			Alarm radius in units (0 to disable) 
					ModEvent.PushBool(ECFTrap2, true)             	; Bool			Use EC (basic) crowd control on hostiles if the Player is trapped
					ModEvent.Send(ECFTrap2)
					endif
				endif 
				Utility.Wait(2.0)	
				cfgqst.FadeToBlack(false)

				;----- Stripping Player during Estrus Animation
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 31)
				cfgqst.Strip(31, cfgqst.PlayerRef)	;Head
				defqst.PlaySoundStripCloth()
				endif 
				
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(6.0)
				endif 

				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 52)
				cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom	-> dont use (why not?) --> SexlabNoStrip Keyword should solve this
				defqst.PlaySoundStripCloth()
				Utility.Wait(0.5)
				Endif
				
				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 49)
				cfgqst.Strip(49, cfgqst.PlayerRef)	;savage bikini thong
				defqst.PlaySoundStripCloth()
				Endif	
				
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(6.0)
				endif 

				if storqst.IsSlotOccupied(cfgqst.PlayerRef, 32)
				cfgqst.Strip(32, cfgqst.PlayerRef)	;body
				defqst.PlaySoundStripCloth()
				endif 
				
				
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(10.0)
				endif 
				
				if D100(60)
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 33)
					cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
					defqst.PlaySoundStripCloth()
					Utility.Wait(0.5)
					endif 
				endif 


				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(15.0)
				endif 
				
				if D100(50)
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 37)
					cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
					defqst.PlaySoundStripCloth()
					endif 
				endif
			
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(4.0)
					
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 57)
					cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
					defqst.PlaySoundStripCloth()
					endif 
				
				endif 
				
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(3.0)

					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 53)
					cfgqst.Strip(53, cfgqst.PlayerRef) 	;steel thigh armor	-> dont use (why not?)	--> SexlabNoStrip Keyword should solve this
					endif 
				endif 
				
				if Nym() && D100(50)
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 42)
					cfgqst.Strip(42, cfgqst.PlayerRef) 	;circlet
					endif 
				endif 
				
				if cfgqst.IsFucking(cfgqst.PlayerRef)
				Utility.Wait(3.0)	
					if storqst.IsSlotOccupied(cfgqst.PlayerRef, 46)
					cfgqst.Strip(46, cfgqst.PlayerRef) 	;harness
					endif 
				endif 
				
				
				
EndFunction 


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
			Utility.Wait(0.2)
			
			if Nym()
			Utility.Wait(0.5)
			akActor.Enable()
			akActor.EvaluatePackage()
			Utility.Wait(0.5)
			endif 
			
			if !akActor.Is3DLoaded()
			NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] %NOTE --> STILL no 3DLoaded")
			return false
			else 
			NymTrace("UpdateSingleRaper ["+GroupName+"]["+Count+"]["+akActorName+"] %NOTE --> MOVED -> 3DLoaded")
			return true
			endif 
		
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

;/
[02/20/2026 - 01:41:51AM] NAKED DEFEAT calmquest[1001]: (#msg DEBUG) FillAggressorGroup [CreaturesA][2] START
[02/20/2026 - 01:41:51AM] error: Cannot access an element of a None array
stack:
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.FillAggressorGroup() - "-------------------------" Line 21315
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.SelectAggressor() - "-------------------------" Line 10073
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.StartRapeSequence() - "-------------------------" Line 18358
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.Fragment_3() - "-------------------------" Line 4985
[02/20/2026 - 01:41:51AM] error: Cannot access an element of a None array
stack:
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.FillAggressorGroup() - "-------------------------" Line 21315
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.SelectAggressor() - "-------------------------" Line 10073
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.StartRapeSequence() - "-------------------------" Line 18358
	[nade_CalmQuest (5F0B7967)].nade_calmquest_qf_scr.Fragment_3() - "-------------------------" Line 4985
[02/20/2026 - 01:41:51AM] NAKED DEFEAT calmquest[1001]: (#msg DEBUG) FillAggressorGroup [CreaturesA] NO ACTORS! -> Updating the Group
[02/20/2026 - 01:41:51AM] NAKED DEFEAT calmquest[1001]: (#msg DEBUG) UpdateGroup [CreaturesA] START
[02/20/2026 - 01:41:51AM] NAKED DEFEAT calmquest[1001]: (#msg DEBUG) UpdateGroup [CreaturesA] AFTER Group Size: 2
[02/20/2026 - 01:41:51AM] error: Cannot access an element of a None array

/;

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

;/
00Continue
00NextClip
00PreviousClip
00ResetClip
00TransClip
0.5secondBlend
1HM_CameraNoTurn_to_1HM_CameraTurnLeft
1HM_CameraNoTurn_to_1HM_CameraTurnRight
1HM_CameraTurnLeft_to_1HM_CameraNoTurn
1HM_CameraTurnLeft_to_1HM_CameraTurnRight
1HM_CameraTurnRight_to_1HM_CameraNoTurn
1HM_CameraTurnRight_to_1HM_CameraTurnLeft
1HM_Shield_Equip_Out
1HM_Shield_Equip_OutMoving
1HM_Unequip
2_CameraOverrideStart
2_CameraOverrideStop
2_CamHit
2_DeathEmote
2_deathStop
2_Decapitate
2_FootScuffLeft
2_FootScuffRight
2_HitFrame
2HM_Equip
2HM_Unequip
2HWKillMoveA
2_KillActor
2_KillMoveEnd
2_KillMoveStart
2_pairedStop
2_PairEnd
2_SoundPlay
2_SoundPlay.NPCKill1HMBandit
2_SoundPlay.NPCKill1HMD
2_SoundPlay.NPCKill1HMDualWieldA
2_SoundPlay.NPCKillS1OASD
2_SoundPlay.PHYGenericDirtMediumH
2_SoundPlay.WPNSwingBladeMedium
2_SpellRelease
2_SpellStart
3rdPersonState_to_1stPersonState
Activate01
ActivationDone
AddCharacterControllerToWorld
AddRagdollToWorld
AddToInventory
AlchemyStir
AnimateToRagdoll to Fully Ragdoll
AnimObjDraw
AnimObjDraw.AnimObjectSkeletonKey
AnimObjDraw.DecapitationHeadGore
AnimObjDraw.DecapitationNeckGore
AnimObjectEquip
AnimObjectIdleStop
AnimObjectStop
AnimObjectUnequip
AnimObjLoad
AnimObjLoad.AnimObjectSkeletonKey
AnimObjLoad.DecapitationHeadGore
AnimObjLoad.DecapitationNeckGore
AOBarTableMugDrink.hkx_to_RandomTableMug
AOBarTablePassOut.hkx_to_AOBarTablePassOutIdle.hkx
AOBarTablePassOutIdle.hkx_to_RandomDrinkOrPassOut
AOBarTablePassOutWake.hkx00_to_AOBarTableMugDrink.hkx00
ArmsCrossedIdle
arrowAttach
arrowDetach
arrowRelease
attackAnticipateReady
AttackPower2HMForwardSprint
AttackPower2HWForwardSprint
AttackPowerBackward_FXstart
AttackPowerDirectionalStart
AttackPowerForward_FXstart
AttackPowerLeft_FXstart
attackPowerRight_FXstart
AttackPowerStanding_FXstart
attackPowerStart_2HMSprint
attackPowerStart_2HWSprint
attackPowerStartBackLeftHand
attackPowerStartBackward
attackPowerStartDualWield
attackPowerStartForward
attackPowerStartForwardH2HLeftHand
attackPowerStartForwardH2HRightHand
attackPowerStartForwardLeftHand
attackPowerStartH2HCombo
attackPowerStartInPlace
attackPowerStartInPlaceLeftHand
attackPowerStartLeft
attackPowerStartLeftHand
attackPowerStartLeftLeftHand
attackPowerStart_MC_1HMLeft
attackPowerStart_MC_1HMRight
attackPowerStartRight
attackPowerStartRightLeftHand
attackPowerStart_Sprint
attackPowerStart_SprintLeftHand
attackRelease
attackReleaseDwarven
attackReleaseL
attackStart
attackStart_Attack1
attackStart_Attack2
attackStartBite
attackStartBiteLeft
attackStartBiteRight
attackStartDualWield
AttackStartH2HLeft
AttackStartH2HRight
attackStartLeftHand
attackStart_MC
attackStart_MC_1HMLeft
attackStart_MC_1HMRight
attackStartSprint
attackStartSprintLeftHand
AttackState to RecoilState
attackStop
AttackWinEnd
AttackWinEndLeft
AttackWinMid
AttackWinStart
AttackWinStartLeft
Axe_Equip
Axe_Unequip
BarDrinkingStart
bashExit
bashFail
bashPowerStart
bashRelease
bashStart
bashStop
BeginAttackOutro
BeginCast
BeginCastLeft
BeginCastRight
BeginCastVoice
BeginWeaponDraw
BeginWeaponSheathe
Bellows
biteStop
BlackSmith_Enter_Out
BlacksmithForgeRestart
BlacksmithSharpeningWheelIdle
BlacksmithSharpeningWheelSpin
bleedOutEnterOut
bleedOutMagicReadyStart
BleedOut_MRhSelfPreCharge_to_BleedOutMRh_SelfChargeState
bleedOutStart
bleedOutStop
bleedOut_TransInEnd
bleedOut_TransOutEnd
bleedOutWeaponOutStart
blockAnticipateStart
blockAnticipateStop
BlockBashSprint
blockHitStart
blockHitStop
blockStart
blockStartOut
blockStop
blockStopInstant
blockStopOut
BoatRideFadeOut
BoundStandingCut
BoundStandingCutNPC
BoundWeap_Unequip
bowAttackStart
BowDraw
bowDrawn
bowDrawStart
bowEnd
Bow_Equip
Bow_EquipOut
BowRelease
BowReleaseFast
bowReset
Bow_Unequip
bowZoomStart
bowZoomStop
BrakeStart
BrakeStop
CameraNoTurn
CameraOverrideStart
CameraOverrideStop
CameraTurnLeft
CameraTurnRight
CamHit
cannedTurnLeft180
cannedTurnLeft90
cannedTurnRight180
cannedTurnRight90
cannedTurnStart
cannedTurnStop
cannedTurnStrafeLeft90
cannedTurnStrafeRight90
CaptainTalk
CartExit
CastOKStart
CastOKStop
CastStop
ChairBaseVar1ToBaseVar1
ChairBaseVar2Instant
ChairBaseVar2ToBaseVar1
ChairCrossedVar1Instant
ChairCrossedVar1ToBaseVar1
ChairCrossedVar2Instant
ChairCrossedVar2ToBaseVar1
ChairDrinkingStart
ChairEatingSoupStart
ChairEatingStart
ChairEatingStart_VampireMeat
ChairEatingStop
ChairEnterState_to_FrontSitState
ChairIdle
Chair_IdleArmsCrossedVar2Random
ChairIdleState_to_TableDrinkState
ChairIdleState_to_TablePassOutState
ChairLeftBaseVar2Instant
ChairLeftCrossedVar1Instant
ChairLeftCrossedVar2Instant
ChairLeftLookDownEnterInstant
ChairLookDownEnterInstant
ChairLookDownEnterInstantLeft
ChairLookDownToBaseVar1
ChairNextClip
ChairRandomSelect
ChairReadingIdles
ChairReadingStart
ChairRightBaseVar2Instant
ChairRightCrossedVar1Instant
ChairRightCrossedVar2Instant
ChairRightLookDownEnterInstant
ChairVampireEatingStart
Close
CombatReady_BreathExhaleLong
CombatReady_BreathExhaleShort
CombatReady_ShoutExhaleMedium
combatStanceStart
combatStanceStop
CountDownTick
CounterArmToRight
CounterLeftToRight
CounterRight
CounterRightToArm
CounterRightToLeft
crossbowAttackStart
crossbowDwarvenAttackStart
CyclicCrossBlend
CyclicFreeze
Dag_Equip
Dag_Unequip
DeathAnim
DeathEmote
deathStop
Decapitate
DefaultSprintSyncBlend
DefaultSyncSprintBlend
DialogueAngry
DialogueGeneric
DialogueHappy
DialogueNeutral
DisableBumper
Discard
Dismount_ATR
DismountEnd
DLC01CoffinEnterInstant
DLC01WalkForward
DLC1SeranaHoldsVyrthur
DLC1WayShrinePour
DLC1WayShrineScoop
DodgeBack
DodgeLeft
DodgeRight
DragonMountEnter
DragonMountEnterInstant
DragonMountExit
DragonMountExitOut
DrinkBloodChaliceStart
DrunkStart
DrunkStop
DualMagic_DeflectWardStart
DualMagic_PreAimConChargeState_to_DualMagic_ChargeLoopState
DualMagic_PreSelfCharge_to_DualMagic_SelfChargeLoop
DualMagic_SpellAimedConcentrationStart
DualMagic_SpellAimedStart
DualMagic_SpellSelfConcentrationStart
DualMagic_SpellSelfStart
DualMagic_WardStart
EnableBumper
end
EndAnimatedCamera
EndAnimatedCameraDelta
Event00
Event01
Event05
Event21
EventCounter
EventForStreamingInspectionOnly
ExecutionNextClip
ExitCartBegin
ExitCartEnd
fallBegin
fallStart
Fall to Land
FireSpitCookingIdle
FireSpitCookingSpin
FireSpitCookingStir
FlinchStart
FootBack
FootFront
FootLeft
FootLeft2
FootLeft3
FootRight
FootRight2
FootRight3
FootScuffLeft
FootScuffRight
FootSprintLeft
FootSprintRight
forwardFallFromJump
forwardFallStart
forwardJumpStart
forwardLandEnd
FreeCaptive
furnitureEnterInstant
Getup
GetUpBegin
GetUpEnd
GetUpExit
GetUpInWater
GetUpStart
globalWeapOutLeftReplaceForceEquip
globalWeapOutRightReplaceForceEquip
Ground_Dismount_Dragon
Hammer
HeadStart
HeadTrackingOff
HeadTrackingOn
HitFrame
HorseDeath
HorseDismount
HorseEnter
HorseEnterInstant
HorseEnterOut
HorseEnterSwim
HorseExit
HorseExitOut
HorseExitSwim
HorseIdle
HorseLocomotion
HorseSprint
HugA
Idle
Idle_1stPersonWoozyGetUpFromBed
Idle_A_baseTrans
IdleActivateCoffinPuzzle
IdleActivateDoor
IdleActivatePickUp
IdleActivatePickUpLow
idle_A_DialogueAngry
IdleAlchemyEnter
IdleAlchemyEnterInstant
idle_A_left_longTrans
idle_A_leg_shift
IdleAltarEnter		;WORKS., FLOATING in coffing
IdleAltarEnterInstant
IdleAltarExit
IdleAltStart
IdleAngry
IdleAngryLeft
IdleAngryNeutralHD
IdleAngryNeutralHDLeft
IdleApplaud2
IdleApplaud3
IdleApplaud4
IdleApplaud5
IdleApplaudSarcastic
idle_A_pull_pants
IdleArmsCrossed
idle_A_scratch_back
idle_A_shakeout
idle_A_shoulders
idle_A_shouldersVar1
idle_A_sigh_var1Trans
idle_A_sigh_var2Trans
idle_A_soft_rightTrans
IdleAstridEnter				;WORKS , NICE FLAT ON GROUND X---- Y USE
idle_A_swat_flies
idle_A_sway_fastTrans
IdleBarCounterEnter
IdleBarCounterEnterInstant
IdleBarCounterWipe
IdleBarDrinkingStart
idle_B_baseTrans
IdleBedEnterInstant
IdleBedEnterStart
IdleBedEnterToSleep
IdleBedExitStart
IdleBedExitToStand
IdleBedGetUp
IdleBedLeftEnterInstant
IdleBedLeftEnterStart
IdleBedLeftExitStart
IdleBedQuickExitStart
IdleBedRightEnterInstant
IdleBedRightEnterStart
IdleBedRightExitStart
IdleBedRightQuickExitStart
IdleBedRollFrontEnterInstant
IdleBedRollFrontEnterStart		;WORKS
IdleBedRollFrontExitStart
IdleBedRollLeftEnterInstant
IdleBedRollLeftEnterStart
IdleBedRollLeftExitStart
IdleBedRollRightEnterInstant
IdleBedRollRightEnterStart
IdleBedRollRightExitStart
IdleBedSleeping
IdleBeggar			;#CHECKTHIS
IdleBeggar_Exit
IdleBlackSmithEnterInstant
IdleBlacksmithForgeEnter
IdleBlackSmithingEnterStart
IdleBlessingKneelEnter
IdleBlessingKneelEnterInstant
idle_B_long_leftTrans
IdleBloodPortalActivate
IdleBlowHornImperial
IdleBlowHornStormcloak
IdleBook_OnePage
IdleBook_PageTurn
IdleBook_Read				;WORKS!!! where to use?
IdleBook_ReadTG06
IdleBoundKneesEnterInstant
IdleBoundKneesStart
IdleBoyRitual
IdleBoyRitual_Exit
IdleBoyRitualStand
IdleBracedPain			;WORKS, GREET with light bowing
idle_B_sighTrans
idle_B_sway_rightTrans
IdleCannibalFeedCrouching
IdleCannibalFeedStanding
IdleCarryBucketFillEnter
IdleCarryBucketPourEnter
IdleCartBenchEnter
IdleCartBenchEnterInstant
IdleCartDriverExit
IdleCartDriverIdle
IdleCartDriverIdleStill
IdleCartDriverSway
IdleCartExitInstant
IdleCartPlayerExit
IdleCartPlayerIdle
IdleCartPrisonerAExit
IdleCartPrisonerAIdle
IdleCartPrisonerASway
IdleCartPrisonerBExit
IdleCartPrisonerBIdle
IdleCartPrisonerBSway
IdleCartPrisonerCExit
IdleCartPrisonerCIdle
IdleCartPrisonerCSway
IdleCartPrisonerDExit
IdleCartPrisonerDIdle
IdleCartPrisonerDSway
IdleCartPrisonerFloorExit
IdleCartPrisonerFloorIdle
IdleCartTravelDriverEnter
IdleCartTravelDriverEnterInstant
IdleCartTravelPlayerEnter
IdleCartTravelPlayerEnterInstant
idleChairArmsCrossedVar1
idleChairArmsCrossedVar2
IdleChairBook_OnePage
IdleChairCHILDEnterInstant
IdleChairCHILDFrontEnter
IdleChairCHILDFrontExit
IdleChairCHILDLeftEnter
IdleChairCHILDLeftExit
IdleChairCHILDRightEnter
IdleChairCHILDRightExit
IdleChairEnterInstant
IdleChairEnterStart
IdleChairEnterStop
IdleChairEnterToSit
IdleChairExitStart
IdleChairExitToStand
IdleChairFrontEnter
IdleChairFrontExit
IdleChairFrontQuickExit
IdleChairGetUp
IdleChairGive
IdleChairLeftEnter
idleChairLeftExit
IdleChairLeftQuickExit
idleChairLookDown
IdleChairRightEnter
idleChairRightExit
IdleChairRightQuickExit
idleChairShoulderFlex
IdleChairSitting
IdleChairVar1
idleChairVar2
IdleChairWrite
IdleChildApologize
IdleChildCryingEnd
IdleChildCryingStart
IdleChildFidget
IdleChildLayOnFloor
IdleChildLayOnFloorInstant
IdleChildLegsOutStart
IdleChildPlayDirt
IdleChildPlayDoll
IdleChildShy
IdleChildSitOnKnees
IdleChildSitOnKneesInstant
IdleChildTaunt1
IdleChildTaunt2
IdleChildTaunt3
IdleChildTaunt4
IdleChildWhineKick
IdleChildWhineStompFeet
IdleChiselKneelingEnter			;WORKS. NAGELN - CRUFICITATION!!!
IdleChiselKneelingEnterInstant
IdleChiselStandingEnter			;WORKS. NAGELN
IdleChiselStandingEnterInstant
IdleChiselWiggle
IdleCiceroAgitated
IdleCiceroDance1
IdleCiceroDance2
IdleCiceroDance3
IdleCiceroHappy
IdleCivilWarCheer
IdleCleanSword
IdleClimbLedge
IdleCO2Ceremony1Welcome
IdleCO2Ceremony2Blessing
IdleCO2Ceremony3Chest
IdleCoffinEnter
IdleCoffinEnterInstant
IdleCoffinExit
IdleCoffinHorzEnter
IdleCoffinHorzEnterInstant
IdleCoffinVertEnter
IdleCoffinVertEnterInstant
IdleCombatLookingAroundStart
IdleCombatShieldStart
IdleCombatSpecialStart
IdleCombatStart
IdleCombatStretchingStart
IdleCombatWeaponCheckStart
IdleComeThisWay
IdleCookingPotEnter
IdleCookingPotEnterInstant
IdleCookingSpitEnter
IdleCookingSpitEnterInstant
IdleCount
IdleCounterEnterInstant
IdleCounterStart
IdleCowerEnter
IdleCowerEnterInstant
IdleCowering			;MWROKS
IdleCoweringEnterInstant
IdleCraftingCookingPotAddIngredient
IdleCraftingCookingPotTalkA
IdleCraftingCookingPotTalkB
IdleDA02BoethiahPostEnter
IdleDA02BoethiahPostEnterInstant
IdleDefaultStart
IdleDialogueAngryStart				;WORKS
IdleDialogueDefensiveHandGesture	;WORKS
IdleDialogueExpressiveStart
IdleDialogueHandOnChinGesture
IdleDialogueHappyStart
IdleDialogueLock
IdleDialogueMovingTalkA
IdleDialogueMovingTalkB
IdleDialogueMovingTalkC
IdleDialogueMovingTalkD
IdleDialogueStart
IdleDialogueUnlock
IdleDialogueWelcomeHandGesture
idleDisbelief01Exit
idleDisbelief01Start
idleDisbelief02Exit
idleDisbelief02Start
idleDisbeliefEnd
idleDisbeliefStart
IdleDLC02BoatRide
IdleDLC02FallOnKnees
IdleDLC02MiraakDeath
IdleDLC02MiraakDeathFinish
IdleDLC02TentacleWordBurnBegin
IdleDLC02TentacleWordBurnEnd
IdleDLC02TentacleWordBurnStart
IdleDLC1BossExplosion1stP
IdleDLC2PickaxeEnter
IdleDLC2PickaxeEnterInstant
IdleDLC2PickaxeFloorEnter
IdleDLC2PickaxeFloorEnterInstant
IdleDLC2PickaxeTableEnter
IdleDLC2PickaxeTableEnterInstant
IdleDLC2TentacleWarpBook
IdleDrink				;WORKS, DRINK FROM CUP
IdleDrinkFromFountain
idleDrinkingStandingStart
IdleDrinkPotion			;WORKS. use for ALCHEMY job
IdleDrumStart
IdleDrunk_TurnL
IdleDrunk_TurnR
IdleDrunk_Walk
IdleDwemerExtractorEnter
idleEatingStandingStart			;EAT BREAD
idleEatingStandingStart_DLC1Vampire
IdleEatSoup
IdleEnchanting
IdleEnchantingCraft
IdleEnchantingEnter
IdleEnchantingEnterInstant
IdleEnchantingGem
IdleExamine
IdleExecutioneeChop
IdleExecutioneeIdle
IdleExecutioneeIdleEnterInstant
IdleExecutionerAlduinReaction
IdleExecutionerAlduinReactionDeath
IdleExecutionerChop
IdleExecutionerChop_Player
IdleExecutionerIdle
IdleExecutionerIdleEnterInstant
IdleExecutionGuardIdle
IdleExecutionGuardIdleEnterInstant
idleExit
IdleFeedChicken			;WORKS, basket and then thors stuff. WORKS
IdleFluteStart
IdleForceDefaultState
IdleFreaDisbelief2LoopStop
idleFreaDisbeliefEnd
idleFreaDisbeliefLoopStop
IdleFreaReaction2Start
idleFreaReactionStart
idleFreaSorrowExit
idleFreaSorrowLoopEnter
IdleFreaSorrowLoopEnter
IdleFreaSorrowLoopEnterInstant
IdleFurnitureExit
IdleFurnitureExitSlow
IdleFurnitureExitTriggered
IdleFurnitureStart
IdleGetAttention			;WORKS, WINK LOL
IdleGive
IdleGiveMQ105Horn
IdleGrainMillEnter
IdleGrainMillEnterInstant	
IdleGrave_01					;#CHECKTHIS	
IdleGrave_02					;#CHECKTHIS
idleGrazing
IdleGreybeardMeditateEnter
IdleGreybeardMeditateEnterInstant
IdleGreybeardWordTeach
IdleHammerCarpenterTableEnter		;NOT WORKING
IdleHammerCarpenterTableEnterInstant	NOT WORKING
IdleHammer_Table			;#CHECKTHIS
IdleHammerTableEnter	NOT WORKING
IdleHammerTableEnterInstant
IdleHammer_Wall			;#NOT WORKING
IdleHammerWallEnter		;#>>>>>>>>>>>>>>>>>>>>>>> WORKS!!!
IdleHammerWallEnterInstant
IdleHandCut						NICE - kneeling down, play whole scene (for Travel Ritual?)
IdleHandCutStandingStart		NICE - no fixed camera, use for Ritual???
IdleHandsBehindBack
IdleHandsBehindBackEnterInstant
IdleHandsBehindBackExit
IdleHandsHipsBehavior
IdleHDLeft
IdleHDLeftAngry
IdleHDRight
IdleHDRightAngry
idleHeadshake
IdleHHLeft
IdleHHRight
IdleHideLEnter
IdleHideLEnterInstant
IdleHideREnter
IdleHideREnterInstant
IdleHoe
Idle_In
IdleInjured
IdleJarlChairEnter
IdleJarlChairEnterInstant
IdleKneeling 	;#WORKS; kneel down, reach with hand
IdleKneelingEnter
IdleKneelingEnterInstant
IdleLadderEnter
IdleLadderEnterInstant
IdleLaugh
IdleLaydown
IdleLayDownEnter
IdleLaydown_Enter
IdleLayDownEnterInstant
IdleLaydown_Exit
IdleLeanTable
IdleLeanTableEnter
IdleLeanTableEnterInstant
IdleLeftChairEnterStart
IdleLeverFloorPull
IdleLeverPushEnterInstant
IdleLeverPushStart
IdleLightSconce
IdleListenStart
IdleListenStartAngry
IdleLockPick
IdleLookFar
idleLooseSweepingStart
IdleLounge
IdleLounge_Exit
IdleLuteStart
IdleMagic_01
IdleMesmerize			;WORKS, torkeln
IdleMesmerizeStop
IdleMillLoadEnterInstant
IdleMillLoadStart
IdleMQ201Drink
IdleMQ201HoldingDrinkTray
IdleMQ201ToastStart
IdleMQ203EsbernBookEnter
IdleMQ203EsbernBookEnterInstant
IdleMQ206FelldirRitualEnter
IdleMQ206FelldirRitualEnterInstant
IdleMQ206FelldirShowScroll
IdleMT_DoorBang
IdleNervous			;WORKS, use for PublishPUNISH?
IdleNeutral
IdleNeutralHD
IdleNeutralHDLeft
IdleNeutralLeft
IdleNeutralRight
IdleNocturnalEnter
IdleNocturnal_Exit
IdleNocturnal_IdleA
IdleNocturnal_IdleAMirror
IdleNocturnal_IdleB
IdleNocturnal_LookLeft
IdleNocturnal_LookRight
IdleNocturnal_Rise
IdleNoteRead
IdleOffsetCarryPotServe
IdleOffsetStop
IdleOut
Idle_Out
IdleOvenEnter				;WORKS; BAKERY WHERE?
IdleOvenEnterInstant
idlePawing
idlePet
IdlePickaxeEnter
IdlePickaxeEnterInstant
IdlePickaxeFloorEnter
IdlePickaxeFloorEnterInstant
IdlePickaxe_Table
IdlePickaxeTableEnter
IdlePickaxeTableEnterInstant
IdlePickaxe_Wall
IdlePickup_Ground			;WORKS
IdlePlayer
IdlePointClose
IdlePointFar_01
IdlePointFar_02
IdlePray						;WORKS, (Worship/BEG)
IdlePrayCrouchedEnter			;WORKS,	(Worship/BEG)
IdlePrayCrouchedEnterInstant
IdlePresentSkeletonKey
IdlePrisonerBeat			;;WORKS, - FIST FACE ---> USE
IdlePullChain
9
IdleQuickStop
IdleRailLeanEnter
IdleRailLeanEnterInstant
IdleRailLeanExit
idleRandomStart
IdleReadElderScroll
IdleReadElderScroll3rdP
IdleReadElderScrollEnd
IdleReadElderScrollLonger
IdleReady
idleRearUp
IdleRFPickUpScroll
IdleRightChairEnterStart
IdleRitualSkull1
IdleRitualSkull2
IdleRitualSkull3
IdleRitualSpellRelease
IdleRitualSpellStart
IdleRitualStart
IdleSalute				;WORKS,
idlesAToIdlesBTransEnd
idlesAToIdlesBTransStart
idlesBToIdlesATransEnd
idlesBToIdlesATransStart
IdleScrapeTreeBark					;WORKS,
IdleSearchChestEnter			;WORKS,
IdleSearchChestEnterInstant
IdleSearchingChest
IdleSearchingTable		;WORKS,
IdleSearchTableEnter
IdleSearchTableEnterInstant
IdleSell				;WORKS, OFFER POTION
IdleShackled_01
IdleShackled_01_exit
IdleShackled_02
IdleShackleWallEnterInstant
IdleSharpeningWheelEnterInstant
IdleSharpeningWheelStart
IdleSilentBow
IdleSit_CrossLegged
IdleSitCrossLeggedEnter
IdleSitCrossLeggedEnterInstant
IdleSitLedge
IdleSitLedgeEnter
IdleSitLedge_Enter
IdleSitLedgeEnterInstant
IdleSitLedge_Exit
IdleSleepNod
IdleSmelterEnter				;WORKS, shoveling!
IdleSmelterEnterInstant			;WORKS, shoveling!
IdleSmelterEnterPlayer
IdleSnapToAttention						;WORKS, WOW!
IdleSnowElfPrinceAscensionBurning
IdleSnowElfPrinceBigSpell
IdleSnowElfPrinceBigSpellRelease
IdleSnowElfPrinceChairDialogue
IdleSnowElfPrinceChairEnter
IdleSnowElfPrinceChairEnterInstant
IdleSnowElfPrinceFireAndForget
IdleSoupDeath
IdleStaticPoseAStart
IdleStaticPoseBStart
IdleStaticPoseCStart
IdleStonePickUpEnter
IdleStonePickUpEnterInstant
IdleStonePutDownEnter
IdleStoolBackExit
IdleStoolEnter
IdleStoolEnterInstant
IdleStoolEnterPlayer
IdleStop
IdleStopInstant
IdleStudy
IdleSurrender					;WORKS
IdleT02AscendFemale				;WORKS !!! NICE, getting lifted up (for floating mage stuff)
IdleT02AscendMale
IdleTableBackExit
IdleTableDrinkAndMugEnter
IdleTableDrinkEnter
IdleTableEnter
IdleTableEnterInstant
IdleTableEnterPlayer
IdleTableLeanPoint
IdleTableMugEnter
IdleTablePassOutEnter
IdleTake
IdleTalkAndUseItem
IdleTanningEnter
IdleTanningEnterInstant
IdleTauntA
IdleTauntB
IdleTelvanniTowerFloatDown
IdleTelvanniTowerFloatUp
IdleTG03UseMeadBarrel
IdleTG03UseMeadBarrelEnterInstant
IdleTG06FlipPage
IdleTG06TranslationEnter
IdleTG06TranslationEnterInstant
IdleTG08_Phase1
IdleTG08_Phase1_EnterInstant
IdleTG08_Phase2
IdleTG08_Phase3
IdleTG08_Phase4
IdleTG08_Phase5
IdleTGFalmerStatueEnter
IdleTGStatueEnterInstant
IdleUncontrollableCough
IdleValericaWalkForward			;WORKS, WoW, we can focewalk forwards
IdleVampireFeastVictim			;WORKS, laying floating in AIr
IdleVampireLordTransformation
IdleVar1Start
IdleWalkingCameraEnd
IdleWalkingCameraStart
IdleWalkThroughWallEnter
IdleWalkThroughWallEnterInstant
IdleWallCornerPeekLEnter
IdleWallCornerPeekLEnterInstant
IdleWallCornerPeekREnter
IdleWallCornerPeekREnterInstant
IdleWallLeanEnterInstant
IdleWallLeanStart
IdleWallSoldierEnter
IdleWallSoldierEnterInstant
IdleWallSoldierExit
IdleWarmArms
IdleWarmHands
IdleWarmHandsCrouched			;WORKS
IdleWarmHands_Crouched_Details
IdleWarmHands_Crouched_Details_exit
IdleWarmHands_Crouched_Pot_Details
IdleWarmHands_Crouched_Pot_Details_exit
IdleWarmHands_Details
IdleWarmHands_Details_exit
IdleWarmHandsStanding		;WORKS
IdleWave
IdleWayShrineWaterPourEnter
IdleWayShrineWaterScoopEnter
IdleWebAlert
IdleWebAlertOut
IdleWebEnterInstant
IdleWebExit
IdleWebExitQuickTurn
IdleWebThrashShort
IdleWebThrashShort2
IdleWerewolfTransformation
IdleWipeBrow
IdleWoodChopEnterInstant
IdleWoodChopStart
IdleWoodChopStop
IdleWoodPickUpEnter
IdleWoodPickUpEnterInstant
IdleWoodPutDownEnter
IdleWoodPutDownStart
IdleWounded_01
IdleWounded_02
IdleWounded_03
IdleWriteLedgerChargenEnter
IdleWriteLedgerEnter
IdleWriteLedgerEnterInstant
IdleWriteLedgerWrite
IdleWriteTableChairEnterInstant
IdleWriteTableChairLeftEnter
IdleWriteTableChairLeftExit
IdleWriteTableChairRightEnter
IdleWriteTableChairRightExit
IdleWriteTableStandingEnter
IdleWriteTableStandingEnterInstant
Initiate
InitiateEnd
InitiateStart
InitiateWinBegin
InitiateWinEnd
InterruptCast
Intialize
jumpBegin
JumpDirectionalStart
JumpDown
JumpFall
jumpFallBegin
JumpFallDirectional
JumpFastEnd
JumpFastLeft
JumpFastRight
JumpForwardEnd
JumpForwardStart
JumpLand
JumpLandDirectional
JumpLandEnd
JumpLandFailSafe
JumpLandFast
JumpLandSoft
JumpSoftEnd
JumpStandingStart
JumpUp
KillActor
KillingBlow
KillMove
KillMove1HMBackStab
KillMove1HMDecap
KillMove1HMDecapBleedOut
KillMove1HMDecapKnife
KillMove1HMGrappleStab
KillMove1HMRepeatStabDown
KillMove1HMStabDownChest
KillMove1HMStabUpFace
KillMove2HM3Slash
KillMove2HMDecap
KillMove2HMDecapBleedOut
KillMove2HMSlash
KillMove2HMStabA
KillMove2HMStabFromBehind
KillMove2HMUnderSwingLeg
KillMove2HWA
KillMove2HWB
KillMove2HWChopKick
KillMove2HWDecapBleedOut
KillMove2HWHackFromBehind
KillMove2HWHeadButt
KillMoveB
KillMoveC
KillMoveD
KillMoveDLC02RipHeartOut
KillMoveDLC1SeranaHoldsVyrthur
KillMoveDualWieldA
KillMoveDWDecap
KillMoveDWDualSlash
KillMoveDWXSlash
KillMoveE
KillMoveEnd
KillMoveF
KillMoveG
KillMove_Ground_Bite_Grapple
KillMoveH
KillMoveH2HBodySlam
KillMoveH2HComboA
KillMoveH2HKneeThrow
KillMoveH2HSlamA
KillMoveH2HSneakNeckBreak
KillMoveH2HSneakSleeper
KillMoveH2HSuplex
KillMoveI
KillMoveJ
KillMoveK
KillMoveL
KillMoveM
KillMoveSabreCat
KillMoveShieldBashSlash
KillMoveShortA
KillMoveShortB
KillMoveShortC
KillMoveShortD
KillMoveSneakBackA
KillMoveStart
KillMoveVampireLordFeedBack
KillMoveVampireLordFeedFront
KillWerewolfPairedFeedingWithHuman
KillWerewolfPairedHeadSmash
KillWerewolfPairedHeadThrow
KillWerewolfPairedMaulingWithHuman
landEnd
landForwardStart
landStart
landStart_FromClip
LandTest to DefaultState
LeftDirectionSwitch
LeftMagicSneakStop
Lever_PlayerPush
LeverPushStart
LooseDialogueResponseNegative
LooseDialogueResponsePositive
M2h_Ready
Mac_Equip
Mac_Unequip
MagicCastStop
Magic_Equip
Magic_Equip_Out
Magic_Equip_OutMoving
MagicEventOut
MagicForceEquip
MagicForceEquipLeft
MagicForceEquipRight
Magic_Shield_Equip
Magic_Solo_Equip
Magic_Torch_IdleLocomotion_to_Magic_Torch_Sprint
Magic_Torch_Sprint_to_Magic_Torch_IdleLocomotion
Magic_Unequip_Out
Magic_Unequip_OutMoving
MagicWeap_ForceEquip
MC 1HM AttackRight01 to MC 1HM AttackRight02
MC 1HM AttackRight02 to MC 1HM AttackRight01
MC 1HM AttackRight Anticipation to MC 1HM PowerAttackRight.hkx
MC 1HM AttackRight to PowerAttackState
MC_1HM_PowerAttack_Release
MC 1HM PowerAttackRight.hkx to MC 1HM PowerAttackRight.hkx00
MC 1HM PowerAttackRight Release to MC 1HM PowerAttackRight.hkx
MC 1HM RaiseWeapon to MC 1HM PowerAttackRight.hkx
MC_shoutStart
MC_WeapOutRightReplaceForceEquip
MillLogPileLoadStart
MLh_1HM_Equip_Out
MLh_1hm_Equip_OutMoving
MLH_BeginCast_Event_end
MLh_Behavior_State_to_MRh_Behavior_State
MLhBehavior_to_BothHands
MLh_BleedOut_TransOutEnd
MLh_DeflectWardPreChargeState_to_MLh_DeflectWardChargeLoopState
MLh_DeflectWardStart
MLh_DeflectWardStart_end
MLh_Equipped_Event
MLh_Equipped_Event_end
MLh_PreAimedConcentrationOut
MLh_PreAimedConState_to_MLh_AimedConcentrationState
MLh_PreAimedOut
MLh_PreChargeOut
MLh_PreChargeState_to_MLh_ChargeLoopState
MLh_PreReadyState_to_MLh_ReadyLoopState
MLh_PreSelfConOut
MLh_PreSelfConState_to_MLh_SelfConcentrationState
MLh_PreWardChargeState_to_MLh_WardChargeState
MLh_PreWardLoopOut
MLh_PreWardLoopState_to_MLh_WardLoopState
MLh_Ready
MLh_SpellAimedConcentrationStart
MLh_SpellAimedConcentrationStart_end
MLh_SpellAimedStart
MLh_SpellAimedStart_end
MLh_SpellCastStart_EnterNotify
MLh_SpellCastStart_ExitNotify
MLh_SpellCharge_EnterNotify
MLh_SpellEquipped_EnterNotify
MLh_SpellFire_Event
MLh_SpellReady_EnterNotify
MLh_SpellReady_Event
MLh_SpellReady_Event_end
MLh_SpellRelease_Event
MLh_SpellRelease_Event_end
MLh_SpellReleaseState_to_MLh_SpellChargeState
MLh_SpellReleaseState_to_State04
MLh_SpellSelfConcentrationStart
MLh_SpellSelfConcentrationStart_end
MLh_SpellSelfStart
MLh_SpellSelfStart_end
MLh_SpellTelekinesisStart
MLh_WardStart
MLh_WardStart_end
MLh_Weap_attackStart_end
MLh_WinEnd
MLh_WinStart
MotionDrivenDialogueAngry
MotionDrivenDialogueGeneric
MotionDrivenDialogueNextClip
MotionDrivenIdle
MotionDrivenIdle1
MountedStaggerStart
MountedSwimStart
MountedSwimStop
MountEnd
moveBackward
moveDefault
moveForward
moveSlow
moveStart
moveStartAlt
moveStartAltOut
moveStop
MRh_AimedConcentrationState_to_State02
MRh_And_MLh_to_MRh_Shield
MRh_And_MLh_to_MRh_Solo
MRh_BeginCast_Event_end
MRh_bleedOut_TransOutEnd
MRh_Cast_State_to_MRh_Readied_State
MRh_DeflectWardPreChargeState_to_MRh_DeflectWardChargeLoopState
MRh_DeflectWardStart
MRh_DeflectWardStart_End
MRh_Equipped_Event
MRh_Equipped_Event_end
MRhIdle_end
MRh_PreAimedConcentrationOut
MRh_PreAimedConcentration_to_MRh_AimedConcentration
MRh_PreAimedCon_to_MRh_AimedCon
MRh_PreChargeOut
MRh_PreChargeState_to_MRh_ChargeLoopState
MRh_PreCharge_to_MRh_ChargeLoop
MRh_PreSelfConcentrationState_to_MRh_SelfConcentration
MRh_PreSelfConOut
MRh_PreSelfConState_to_MRh_SelfConcentration
MRh_PreWardChargeState_to_MRh_WardCharge_State
MRh_PreWardLoopOut
MRh_PreWardLoopState_to_MRh_WardLoopState
MRh_Ready
MRh_SelfPreChargeState_to_MRh_SelfChargeLoopState
MRhShield_Equip_Out
MRh_Shield_to_MRh_And_MLh
MRh_Shield_to_MRh_Solo
MRh_Solo_to_MRh_And_MLh
MRh_Solo_to_MRh_Shield
MRh_SpellAimedConcentrationStart
MRh_SpellAimedConcentrationStart_end
MRh_SpellAimedStart
MRh_SpellAimedStart_end
MRh_SpellCastStart_EnterNotify
MRh_SpellCastStart_ExitNotify
MRh_SpellCharge_EnterNotify
MRh_SpellEquipped_EnterNotify
MRh_SpellFire_Event
MRh_SpellReady_EnterNotify
MRh_SpellReady_Event
MRh_SpellReady_Event_end
MRh_SpellRelease_Event
MRh_SpellRelease_Event_end
MRh_SpellSelfConcentrationStart
MRh_SpellSelfConcentrationStart_end
MRh_SpellSelfStart
MRh_SpellSelfStart_end
MRh_SpellTelekinesisStart
MRh_Standing_Cast_State_to_MRh_Moving_Cast_State
MRh_Unequip_Out
MRh_WardCharge_State_to_MRh_WardLoop_State
MRh_WardStart
MRh_WardStart_end
MRh_WinEnd
MRh_WinStart
MS12BedDeath
MT_BeggarIdle
MT_BeggarSit
MT_BeggarStand
MT_Behavior_State_to_1HM_Equip_State00
MT_Behavior_State_to_MLh_Equip_State
MT_bleedOut_TransOutEnd
MT_BreathExhaleLong
MT_BreathExhaleMedium
MT_BreathExhaleShort
MT Drinking_to_AnimObjectDrinkingIdleStop.hkx
MT Eating_to_AnimObjectEatingIdleStop.hkx
MT_HandCut
MT_idle_A_to_B_trans_to_MT_IdlesB
MT_idle_B_to_A_trans_to_MT_IdlesA
MT_IdlesA_to_MT_idle_A_to_B_trans
MT_IdlesB_to_MT_idle_B_to_A_trans
MT_Standing_State_to_NPC_Turns_State
MT_Standing_State_to_NPC_Turns_State00
MT_Standing_State_to_NPC_Turns_State01
MT_Standing_State_to_NPC_Turns_State02
MT_Standing_State_to_NPC_Turns_State03
MT_Standing_State_to_NPC_Turns_State04
MT_Standing_State_to_NPC_Turns_State05
MT_Standing_State_to_NPC_Turns_State06
MTState
MT_Torch_IdleLocomotion_to_MT_Torch_Sprint
MT_Torch_Sprint_to_MT_Torch_IdleLocomotion
na_DualMagic_BeginCast_Event
na_MLH_BeginCast_Event
na_MLh_Weap_attackStart
na_MRh_BeginCast_Event
na_PowerAttack_Start
NextClip
NoOpEventForStreamingOnly
NPCAddRagdollToWorld
NPCAnimObjDraw
NPCAttach
NPC_BumpedFromBack
NPC_BumpedFromLeft
NPC_BumpedFromRight
NPC_BumpEnd
NPC_BumpFromFront
NPCCamHit
NPCDecapitate
NPCDetach
NPCDragonMountExitOut
NPCFootLeft
NPCFootScuffLeft
NPCFootScuffRight
NPCHitFrame
NPCHorseDeathOut
NPCHorseExit
NPCHorseExitOut
NPCHumanEat
NPCHumanSweepA
NPCHumanSweepB
NPCKill1HMD
NPCKillActor
NPCKillDLC2HeartStone
NPCKillMoveEnd
NPCKillMoveStart
NPCpairedStop
NPCPairEnd
NPCPlayFXLeft
NPCPlayFXRight
NPCshoutStart
NPCSoundPlay.NPCHorseDismount
NPCSoundPlay.NPCHorseMount
NPCSoundPlay.NPCKill1HMD
NPCSoundPlay.NPCKill1HMKillMoveDragonRodeoStab
NPCSoundPlay.NPCKillBodyfall
NPCSoundPlay.NPCKillChop
NPCSoundPlay.NPCKillDLC2HeartStone
NPCSoundPlay.NPCKillGore
NPCSoundPlay.NPCKillMelee
NPCSoundPlay.NPCKillMeleeB
NPCSoundPlay.NPCKillShove
NPCSoundPlay.NPCKillSlash
NPCSoundPlay.NPCKillSmash
NPCSoundPlay.NPCKillStabIn
NPCSoundPlay.NPCKillStabOut
NPCSoundPlay.NPCKillStruggle
NPCSoundPlay.NPCKillSwordSpin
NPCSoundPlay.NPCVampireLordFeed
NPCSoundPlay.NPCWolfAttackPower
NPCSoundPlay.NPCWolfDeath
NPCSoundPlay.QSTSeranaVyrthurMagicEscape
NPCSoundPlay.WPNBashShieldHSD
NPCSoundPlay.WPNBashShieldLSD
NPCSoundPlay.WPNBlockBlade2HandVsOtherSD
NPCStopHorseCamera
NPCtailHorseDismount
NPCtailHorseMount
NPCTFXManBreath
NPCTFXSwordBlood
NPCTFXVoicePush
NPC_TurnLeft180
NPC_TurnLeft90
NPC_TurnRight180
NPC_TurnRight90
NPC_TurnToWalkLeft180
NPC_TurnToWalkLeft90
NPC_TurnToWalkRight180
NPC_TurnToWalkRight90
NPCVampireFeedEnd
NPCweaponSwing
OffsetArmsCrossedStart
OffsetBoundStandingCartStart
OffsetBoundStandingCut
OffsetBoundStandingPlayerInstant
OffsetBoundStandingStart				;WORKS
OffsetCarryBasketStart				;No Item
OffsetCarryBucketStart					;No Item
OffsetCarryFlowerBasketPickStart			;WORKS
OffsetCarryLogStart								;No Item
OffsetCarryMQ201DrinkR		
OffsetCarryMQ201DrinkTray				;WORKS
OffsetCarryPotStart						;WORKS!!!
OffsetFlowerBasketStart					;WORKS!!!
OffsetStop
OffsetWoodStart		;No Item
Open
pa_2HWKillMoveA
pa_DLC1SeranaHoldsVyrthur
pa_EndAnimatedCamera
pa_ExtractWerewolfSpirit
pa_Ground_Mount_Dragon
pa_HorseDeath
pa_HorseDismount
pa_HorseEnter
pa_HorseEnterSwim
pa_HorseExit
pa_HorseExitSwim
pa_HugA
PairedKillTarget
pairedStop
PairEnd
PairEndSwim
pa_KillingBlow
pa_KillMove
pa_KillMove1HMBackStab
pa_KillMove1HMBearB
pa_KillMove1HMBenthicLurkerSlash
pa_KillMove1HMBoarSmash
pa_KillMove1HMBoarStab
pa_KillMove1HMChaurusFlyerKick
pa_KillMove1HMChaurusFlyerStomp
pa_KillMove1HMDecap
pa_KillMove1HMDecapBleedOut
pa_KillMove1HMDecapKnife
pa_KillMove1HMDragonRodeoSlash
pa_KillMove1HMDragonRodeoStab
pa_KillMove1HMDragonRodeoStabShort
pa_KillMove1HMDwarvenBallistaSlash
pa_KillMove1HMFalmerA
pa_KillMove1HMFalmerB
pa_KillMove1HMFalmerC
pa_KillMove1HMGiantB
pa_KillMove1HMGiantBleedOutA
pa_KillMove1HMGrappleStab
pa_KillMove1HMHagravenA
pa_KillMove1HMHagravenB
pa_KillMove1HMRepeatStabDown
pa_KillMove1HMRieklingFaceStab
pa_KillMove1HMRieklingSlash
pa_KillMove1HMScribSlash
pa_KillMove1HMScribStab
pa_KillMove1HMSpiderSmashA
pa_KillMove1HMSpiderStabA
pa_KillMove1HMSprigganA
pa_KillMove1HMSprigganB
pa_KillMove1HMStabDownChest
pa_KillMove1HMStabUpFace
pa_KillMove1HMSteamCenturionA
pa_KillMove1HMSteamCenturionB
pa_KillMove1HMTrollB
pa_KillMove1HMVBSlowBackStab
pa_KillMove1HMVBSoccerKick
pa_KillMove1HMWolfA
pa_KillMove1HMWolfB
pa_KillMove1HMWWGrabHeadStabSlash
pa_KillMove1HMWWKidneyStab
pa_KillMove1HMWWKneeSlashFaceStab
pa_KillMove2HM3Slash
pa_KillMove2HMBearA
pa_KillMove2HMBearB
pa_KillMove2HMBenthicLurkerStab
pa_KillMove2HMBoarSlash
pa_KillMove2HMChaurusFlyerStabDown
pa_KillMove2HMDecap
pa_KillMove2HMDecapBleedOut
pa_KillMove2HMDragonSlash
pa_KillMove2HMDraugrA
pa_KillMove2HMDwarvenBallistaSlash
pa_KillMove2HMFalmerA
pa_KillMove2HMFalmerB
pa_KillMove2HMGiantA
pa_KillMove2HMHagravenA
pa_KillMove2HMRieklingSlash
pa_KillMove2HMSabreCatA
pa_KillMove2HMSabreCatB
pa_KillMove2HMScribSlash
pa_KillMove2HMSlash
pa_KillMove2HMSpiderSlamA
pa_KillMove2HMSprigganA
pa_KillMove2HMStabA
pa_KillMove2HMStabFromBehind
pa_KillMove2HMSteamCenturionA
pa_KillMove2HMTrollA
pa_KillMove2HMTrollB
pa_KillMove2HMUnderSwingLeg
pa_KillMove2HMVBBlockAndSlash
pa_KillMove2HMWolfA
pa_KillMove2HMWolfB
pa_KillMove2HMWWGutStab
pa_KillMove2HWA
pa_KillMove2HWB
pa_KillMove2HWBearA
pa_KillMove2HWBenthicLurkerSlash
pa_KillMove2HWBoarSmash
pa_KillMove2HWChaurusFlyerPullDownSlash
pa_KillMove2HWChopKick
pa_KillMove2HWDecapBleedOut
pa_KillMove2HWDragonRodeoSlash
pa_KillMove2HWDragonSlash
pa_KillMove2HWDraugrA
pa_KillMove2HWDwarvenBallistaSlash
pa_KillMove2HWFalmerA
pa_KillMove2HWGiantA
pa_KillMove2HWHackFromBehind
pa_KillMove2HWHagravenA
pa_KillMove2HWHeadButt
pa_KillMove2HWRieklingSmash
pa_KillMove2HWSabreCatA
pa_KillMove2HWScribSmash
pa_KillMove2HWSpiderSlamA
pa_KillMove2HWSprigganA
pa_KillMove2HWSteamCenturionA
pa_KillMove2HWTrollA
pa_KillMove2HWVBBackBreaker
pa_KillMove2HWWolfA
pa_KillMove2HWWWEvadeSlash
pa_KillMoveB
pa_KillMoveBearA
pa_KillMoveC
pa_KillMoveD
pa_KillMoveDLC02RipHeartOut
pa_KillMoveDLC1SeranaHoldsVyrthur
pa_KillMoveDragonA
pa_KillMoveDragonB
pa_KillMoveDraugr
pa_KillMoveDraugrB
pa_KillMoveDraugrShortA
pa_KillMoveDraugrShortB
pa_KillMoveDualWieldA
pa_KillMoveDWDecap
pa_KillMoveDWDualSlash
pa_KillMoveDWXSlash
pa_KillMoveE
pa_KillMoveF
pa_KillMoveG
pa_KillMoveGiantA
pa_KillMove_Ground_Bite_Grapple
pa_KillMoveH
pa_KillMoveH2HBodySlam
pa_KillMoveH2HComboA
pa_KillMoveH2HKneeThrow
pa_KillMoveH2HNeckBreak
pa_KillMoveH2HSlamA
pa_KillMoveH2HSneakNeckBreak
pa_KillMoveH2HSneakSleeper
pa_KillMoveH2HSuplex
pa_KillMoveI
pa_KillMoveJ
pa_KillMoveK
pa_KillMoveL
pa_KillMoveM
pa_KillMoveSabreCat
pa_KillMoveSabreCatShortA
pa_KillMoveSabreCatShortB
pa_KillMoveShieldBashSlash
pa_KillMoveShortA
pa_KillMoveShortB
pa_KillMoveShortC			;LOL WOW EXPLORE THIS (I died)
pa_KillMoveShortD
pa_KillMoveSneakBackA
pa_KillMoveTrollA
pa_OffsetBoundStandingCut
PassOutContinue				;TEST
PassOutStart
PassOutStop
PassoutToTableDrink	
PassOutToTableMug	
pa_StartAnimatedCamera	;TEST
PathTweenerEnd
pa_TrailerSh12
pa_TrailerSh16
pa_TrailerSh19
pa_TrailerSh20
pa_TrailerSh22
pa_TrailerSh23
pa_TrailerSh24
pa_TrailerSh25
pa_TrailerSh27
pa_VampireFeedStanding_Back
pa_VampireFeedStanding_Front
pa_WerewolfPairedFeedingWithHuman
pa_WW_CutWrist
PickNewHead
PickNewIdle
PickNewTail
PickUp
PitchChaseStart
PitchChaseStop
PitchOverrideEnd
PitchOverrideStart
PlayerOnBlock
PlayFXLeft
PlayFXRight
PlayImod
Pour
PowerAttack_Start_end
PowerAttackStop
preHitFrame
PreOut
Pull
QSTDLC2BoatArrivalBells01
QSTDLC2BoatArrivalBells02
QSTDLC2BoatArrivalCreakA01
QSTDLC2BoatArrivalCreakA02
QSTDLC2BoatArrivalCreakA03
QSTDLC2BoatArrivalCreakB01
QSTDLC2BoatArrivalCreakB02
QSTDLC2BoatArrivalCreakB03
QSTDLC2BoatArrivalCreakB04
QSTDLC2BoatArrivalCreakC01
QSTDLC2BoatArrivalSD
QSTDLC2BoatArrivalWaves
QSTStornDeathExit
QSTStornDeathIntro
QSTStornDeathLP
Ragdoll
RagdollInstant
RandomDrinkOrPassOut_to_AOBarTablePassOut.hkx
RandomReset
RandomTableDrink_to_RandomTableIdle
RandomTableIdle_to_RandomTableDrink
RandomTableMug_to_AOBarTableMugDrink.hkx
Reanimated
ReanimateExit
ReanimateStart
rearUpEnd
recoilLargeStart
recoilStart
recoilStop
Reload
ReloadFast
reloadStart
reloadStop
RemoveCharacterControllerFromWorld
RemoveFromInventory
Reset
returnToDefault
reverseDirection
RF_GuardedDismissive_In
RF_GuardedInterested_In
RF_GuardedPleading_In
RF_GuardedStart
RF_GuardedThrowHands_In
RF_Idle_In
RF_Idle_Out
RF_MoodChangeGuarded
RF_MoodChangeOpen
RF_MoodChange_Out
RF_MoodChangePlayful
RF_MoodChangeSerious
RF_NextClip
RF_OpenDismissive_In
RF_OpenInterested_In
RF_OpenPleading_In
RF_OpenStart
RF_OpenThrowHands_In
RF_PlayfulDismissive_In
RF_PlayfulInterested_In
RF_PlayfulPleading_In
RF_PlayfulStart
RF_PlayfulThrowHands_In
RF_Reaction_Out
RF_SeriousDismissive_In
RF_SeriousInterested_In
RF_SeriousPleading_In
RF_SeriousStart
RF_SeriousThrowHands_In
RF_Shock01
RF_Shock02
RF_Shock03
RF_Shock_Guarded
RF_Shock_Open
RF_Shock_Playful
RF_Shock_Serious
RF_Talk_In
RF_Talk_Out
RightDirectionSwitch
RightMagicSneakStop
RitualSpellAimConcentrationStart
RitualSpellOut
RitualSpell_PreChargeOut
RitualSpellStart
Root_Default_State_to_State01
Root_Torch_State_to_Root_Default_State
selfTransEvent
SetRace
ShackleOpen
ShdEquip
shoutLoopingRelease
shoutRelease
shoutReleaseSlowTime
ShoutSprintLongestStart
ShoutSprintLongStart
ShoutSprintMediumStart
ShoutSprintShortStart
shoutStart
shoutStop
SlaveIdle
SlavePull
SlavePush
SlaveWoodChop
SlaveWoodChopIdle
slowdownStart
SneakSprintStartRoll
SneakStart
SneakStop
Sound
SoundPlay
SoundPlay.FSTSwimSwim
SoundPlay.FSTSwimTread
SoundPlay.MUSBardDrum01
SoundPlay.MUSBardDrum02
SoundPlay.MUSBardDrum03
SoundPlay.MUSBardFlute01
SoundPlay.MUSBardFlute01LPM
SoundPlay.NPCHorseDismount
SoundPlay.NPCHorseMount
SoundPlay.NPCHumanAlchemyPound
SoundPlay.NPCHumanAlchemyStir
SoundPlay.NPCHumanAlchemyTap
SoundPlay.NPCHumanAventusStabHard
SoundPlay.NPCHumanAventusStabSoft
SoundPlay.NPCHumanBartenderWipe
SoundPlay.NPCHumanBasteMeat
SoundPlay.NPCHumanBlacksmithForgeQuench
soundPlay.NPCHumanBlacksmithForgeQuenchDrop
SoundPlay.NPCHumanBlacksmithForgeTake
SoundPlay.NPCHumanBlacksmithHammer
SoundPlay.NPCHumanBlacksmithHammerDistant
SoundPlay.NPCHumanBlacksmithRepairHammer
SoundPlay.NPCHumanBlacksmithRepairHammerDistant
SoundPlay.NPCHumanBladeGrindLPM
SoundPlay.NPCHumanBladeGrindPedalLPM
SoundPlay.NPCHumanBookPageTurn
SoundPlay.NPCHumanBucketFill
SoundPlay.NPCHumanBucketPour
SoundPlay.NPCHumanCartExitA
SoundPlay.NPCHumanCartExitB01
SoundPlay.NPCHumanCartExitB02
SoundPlay.NPCHumanCartExitB03
SoundPlay.NPCHumanCartExitB04
SoundPlay.NPCHumanCartExitC01
SoundPlay.NPCHumanCartExitC02
SoundPlay.NPCHumanCartExitC03
SoundPlay.NPCHumanCartExitC04
SoundPlay.NPCHumanChiselHammer
SoundPlay.NPCHumanChiselHammerDistant
SoundPlay.NPCHumanClap
SoundPlay.NPCHumanCombatIdleA
SoundPlay.NPCHumanCombatIdleB
SoundPlay.NPCHumanCombatIdleC
SoundPlay.NPCHumanCombatIdleShieldHit
SoundPlay.NPCHumanCombatShieldBash
SoundPlay.NPCHumanCombatShieldBashPower
SoundPlay.NPCHumanCombatShieldBashSD
SoundPlay.NPCHumanCombatShieldBlock
SoundPlay.NPCHumanCombatShieldBlockRelease
SoundPlay.NPCHumanCombatShieldRelease
SoundPlay.NPCHumanCombatTorchBash
SoundPlay.NPCHumanCombatTorchBashPower
SoundPlay.NPCHumanEat
SoundPlay.NPCHumanEatSoupSlurp
SoundPlay.NPCHumanEatSoupSpoon
SoundPlay.NPCHumanExecutionerChopA
SoundPlay.NPCHumanExecutionerChopB
SoundPlay.NPCHumanExecutionerPushA
SoundPlay.NPCHumanExecutionerPushB
SoundPlay.NPCHumanExecutionerPushPlayer
SoundPlay.NPCHumanHoeA
SoundPlay.NPCHumanHoeB
SoundPlay.NPCHumanHoeC
SoundPlay.NPCHumanHornImperial
SoundPlay.NPCHumanHornImperialDistant
SoundPlay.NPCHumanHornStormcloak
SoundPlay.NPCHumanHornStormcloakDistant
SoundPlay.NPCHumanLeatherScrape
SoundPlay.NPCHumanPickAxe
SoundPlay.NPCHumanPickAxeDistant
SoundPlay.NPCHumanScrapeBark
SoundPlay.NPCHumanShovel
SoundPlay.NPCHumanShovelDump
SoundPlay.NPCHumanSpoonPotTap
SoundPlay.NPCHumanStirPot
SoundPlay.NPCHumanSweepA
SoundPlay.NPCHumanSweepB
SoundPlay.NPCHumanVampireFeedTableA
SoundPlay.NPCHumanVampireFeedTableB
SoundPlay.NPCHumanWoodChop
SoundPlay.NPCHumanWoodChopDistant
SoundPlay.NPCHumanWoodDrop
SoundPlay.NPCHumanWoodPickup
SoundPlay.NPCHumanWoodPlace
SoundPlay.NPCHumanWorkbenchHammer
SoundPlay.NPCHumanWorkbenchHammerDistant
SoundPlay.NPCKill1HMBandit
SoundPlay.NPCKill1HMD
SoundPlay.NPCKill1HMDualWieldA
SoundPlay.NPCKill1HMKillMoveDragonRodeoStab
SoundPlay.NPCKillBodyfall
SoundPlay.NPCKillChop
SoundPlay.NPCKillDLC2HeartStone
SoundPlay.NPCKillGore
SoundPlay.NPCKillMelee
SoundPlay.NPCKillMeleeB
SoundPlay.NPCKillShove
SoundPlay.NPCKillSlash
SoundPlay.NPCKillSmash
SoundPlay.NPCKillStabIn
SoundPlay.NPCKillStabOut
SoundPlay.NPCKillStruggle
SoundPlay.NPCKillSwordSpin
SoundPlay.NPCVampireLordFeed
SoundPlay.NPCWerewolfTransformation
SoundPlay.NPCWolfAttackPower
SoundPlay.NPCWolfDeath
SoundPlay.OBJBlacksmithForge
SoundPlay.OBJLeverNordic01PullSD
SoundPlay.OBJLeverNordic01ReturnSD
SoundPlay.OBJMetalRotateRack
SoundPlay.PHYGenericDirtMediumH
SoundPlay.QSTDLC2BoatArrivalBells01
SoundPlay.QSTDLC2BoatArrivalBells02
SoundPlay.QSTDLC2BoatArrivalCreakA01
SoundPlay.QSTDLC2BoatArrivalCreakA02
SoundPlay.QSTDLC2BoatArrivalCreakA03
SoundPlay.QSTDLC2BoatArrivalCreakB01
SoundPlay.QSTDLC2BoatArrivalCreakB02
SoundPlay.QSTDLC2BoatArrivalCreakB03
SoundPlay.QSTDLC2BoatArrivalCreakB04
SoundPlay.QSTDLC2BoatArrivalCreakC01
SoundPlay.QSTDLC2BoatArrivalWaves
SoundPlay.QSTSeranaVyrthurMagicEscape
SoundPlay.QSTStornDeathExit
SoundPlay.QSTStornDeathIntro
SoundPlay.QSTStornDeathLP
SoundPlay.QSTTG09PresentKey
SoundPlay.WPNAxe1HandDraw
SoundPlay.WPNAxe1HandSheathe
SoundPlay.WPNBashShieldHSD
SoundPlay.WPNBashShieldLSD
SoundPlay.WPNBlade1HandSmallDraw
SoundPlay.WPNBlade1HandSmallSheathe
SoundPlay.WPNBlockBlade2HandVsOtherSD
SoundPlay.WPNBowFire
SoundPlay.WPNBowNock
SoundPlay.WPNBowNockSD
SoundPlay.WPNBowPullLPM
SoundPlay.WPNBowSheathe
SoundPlay.WPNBowZoomIn
SoundPlay.WPNBowZoomOut
SoundPlay.WPNCrossbowAim
SoundPlay.WPNCrossbowReload
SoundPlay.WPNCrossbowReloadQuickShotPerk
SoundPlay.WPNLeftHandDraw
SoundPlay.WPNLeftHandSheathe
SoundPlay.WPNMace1HandDraw
SoundPlay.WPNMace1HandSheathe
SoundPlay.WPNStaffHandDraw
SoundPlay.WPNStaffHandSheathe
SoundPlay.WPNSwingBladeMedium
SoundPlay.WPNSwingUnarmed
SoundPlay.WPNUnarmedDraw
SoundPlay.WPNUnarmedSheathe
SoundStop
SoundStop.MUSBardDrum01
SoundStop.MUSBardDrum02
SoundStop.MUSBardDrum03
SoundStop.MUSBardFlute01LPM
SoundStop.NPCHumanBladeGrindLPM
SoundStop.NPCHumanBladeGrindPedalLPM
SoundStop.QSTStornDeathLP
SoundStop.WPNBowPullLPM
SpectatorCheer
SpectatorClap
SpectatorGawk
SpectatorTalking
SpeedSample_MagicCastLocomotion
SpeedSample_MagicLocomotion
SpellRelease
SpellReleaseState_to_SpellChargeState
SpellReleaseState_to_State00
SpellStart
SprintStart
SprintStop
StaffBashExit
StaffBashRelease
StaffBashStart
staggerIdleStart
StaggerPlayer
StaggerPlayerBow
staggerStart
staggerStop
standingJumpStart
standingRearUp
StartAnimatedCamera
StartAnimatedCameraDelta
StartIdleAnimationDriven
State02_to_MRh_AimedConcentrationChargeState
Stf_Equip
StfMagic_PreChargeOut
Stf_Unequip
StopHorseCamera
StrafeBackLeft
StrafeBackRight
StrafeOut
StrafeReturn
StrafeReverseLeft
StrafeReverseRight
StrafeStartLeft
StrafeStartRight
StrafeStartRunLeft
StrafeStartRunRight
StrafeStartTrotLeft
StrafeStartTrotRight
StrafeStartWalkLeft
StrafeStartWalkRight
StrafeStopLeft
StrafeStopRight
StrafeStopRunLeft
StrafeStopRunRight
StrafeWalkLeft
streamingQuery
streamingQuery_attackStart
streamingQuery_attackStartLeft
StreamingTest
swimForceEquip
SwimStart
SwimStartFromRagdoll
SwimStop
SyncLeft
syncPoint
SyncRight
T02Ascend
TableDrinkAndMugEnter
TableDrinkEnter
TableDrinkStart
TableDrinkState_to_ChairIdleState
TableDrinkState_to_TableMugState
TableDrinkState_to_TablePassOutState
TableDrinkStop
TableMugEnter
TableMugStart
TableMugState_to_TableDrinkState
TableMugState_to_TableDrinkState00
TableMugState_to_TablePassOutState
TableMugStop
TablePassOutEnter
TablePassOutState_to_ChairIdleState
TablePassOutState_to_TableDrinkState
TablePassOutState_to_TableDrinkState00
TablePassOutState_to_TableDrinkState01
TablePassOutState_to_TableMugState
TablePassOutState_to_TableMugState00
TablePassOutState_to_TableMugState01
tailBarTableIdle
tailBedLeftIdle
tailBedRightIdle
tailBedrollFrontIdle
tailBedrollLeftIdle
tailBedrollRightIdle
tailChairIdle
tailCombatIdle
tailCombatLocomotion
tailCombatState
tailCrouch
tailEquip
tailHorseDismount
tailHorseMount
tailKneel
tailKneelEnter
tailKneelExit
tailLayDown
tailLayDownEnter
tailLayDownExit
tailMTIdle
tailMTLocomotion
tailMTState
tailSharpeningWheel
tailSharpeningWheelEnter
tailSharpeningWheelExit
tailSitCrossLegged
tailSitCrossLeggedEnter
tailSitCrossLeggedExit
tailSitLedge
tailSitLedgeEnter
tailSitLedgeExit
tailSneakIdle
tailSneakLocomotion
tailSprint
TailStart
tailStoolIdle
tailUnequip
Temper
testDialogueIdleBStart
testEffectStart
testEffectStop
testIdleLoop
testIdleStart
testMagic
TestSit_EnterBed
TestSit_EnterChair
TestSit_GetUp
TestSit_StartLoop
TestSit_Stop
TFXManBreath
TFXSwordBlood
TFXVoicePush
TG05_GetUp
TG05_KnockOut
TG05_StabPlayer
to_1HM_AttackRightDefault_State
to_ChairBaseVar1Shoulders
to_Chair_IdleBaseVar1
to_DialogueAngryBase
to_DialogueResponseNegative
to_DialogueResponsePositive
to_FurnitureState
to_MT_Default_State
to_MT_idle_A_base
to_MT_idle_A_left_long
to_MT_idle_A_sigh_var1
to_MT_idle_A_sigh_var2
to_MT_idle_A_soft_right
to_MT_idle_A_sway_fast
to_MT_idle_B_base
to_MT_idle_B_long_left
to_MT_idle_B_sigh
to_MT_idle_B_sway_right
Tor_1stP_Locomotion_to_Torch_Standing
torchEquip
torchEquip_1hm
torchForceEquip
Torch_Standing_to_Tor_1stP_Locomotion
torchUnequip
torchUnequip_1hm
ToTableDrinkState
TPlay01
TPlay02
TrailerSh07
TrailerSh08
TrailerSh09
TrailerSh11
TrailerSh12
TrailerSh13
TrailerSh15
TrailerSh16
TrailerSh19
TrailerSh20
TrailerSh22
TrailerSh23
Trailer_Sh24
TrailerSh25
TrailerSh27
TransitionOut
trigger04
turnDefault
turnFast
TurnInPlaceEnd
turnLeft
turnLeftFast
turnLeftSlow
turnRight
turnRightFast
turnRightSlow
turnSlow
turnStart
turnStop
TurnToWalkEnd
Unequip
UnequipNoAnim
Unequip_Out
Unequip_OutMoving
VampireFeedEnd
VampireFeedingBedLeft
VampireFeedingBedRight
VampireFeedingBedRollLeft
VampireFeedingBedRollRight
VampireFeedStanding_Back
VampireFeedStanding_Front
VampireLordChangePlayer
VehicleExit
Voice_SpellFire_Event
WallLeanEnterInstant
wardAbsorb
WardBreak
WardFXRecoilEnd
WeapEquip
WeapEquip_Out
WeapEquip_OutMoving
Weap_Equip_State_to_Magic_Equip_State
WeapForceEquip
weaponDraw
weaponLeftSwing
weaponSheathe
weaponSwing
WeapOutLeftReplaceForceEquip
WeapOutRightReplaceForceEquip
WeapSneakStop
WeapSoloEquip
Weap_Unequip_State_to_Magic_Equip_State
Weap_Unequip_State_to_MT_Behavior_State
Weap_Unequip_State_to_MT_Behavior_State00
WerewolfTransformation
WindowEnd
WindowStart
ZeroOutCameraPitch

 


/;

; ---- added in Naked Defeat 6.51 ----
bool SpawningActorsActive
bool VehiclePlaced = false
objectreference Property SafetyPlatform Auto
