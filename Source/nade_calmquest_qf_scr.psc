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

nade_followerquest_qf_scr Property folqst Auto
nade_configquest_scr Property cfgqst Auto
nade_capturequest_qf_scr Property capqst Auto
SexLabFramework Property SexLab Auto
slaFrameworkScr Property sla Auto		;aroused

Idle[] Property KnockdownIdles Auto
Idle[] Property Poses Auto					;NYMRA reimplement poses

Actor[] Property Aggressors02 Auto
Actor[] Property Aggressors Auto
Actor[] Property Victims Auto
Actor[] Property Rapers Auto

Actor[] Property VoyeursA Auto

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

	if (cfgqst.DefeatTypeGeneral == "AreAnimals") && cfgqst.SkipSex
	return false
	else
		;if we surrender and cooperation is on
		if cfgqst.DefeatViaSurrender && D100(cfgqst.CooperativeSurrenderChance)
		return true
		;if its civil rape and we are prostitute (#TODO) improve this
		;elseif cfgqst.CivilRapeRunning && cfgqst.IsRadiantProstitute()		
		;return true
		;if its Defeat and chances are met
		elseif cfgqst.DefeatQuestRunning && D100(cfgqst.DefeatShortProb)
		return true
		;if its civilrape and chances are met
		elseif cfgqst.CivilRapeRunning && D100(cfgqst.PunishShortProb)
		Debug.trace("NAKED DEFEAT calmquest: cfgqst.PunishShortProb: "+cfgqst.PunishShortProb)
		return true
		else
		return false
		endif 
	endif
EndFunction	


;ADD STRIPPING LATER (animated scene etc.)
;FULL STRIP ha
	;	if D100(25)
	;	Allow_FullStrip = true
	;	endif
	
Function GetMainSequenceLastSteps()		;#LastSteps

	String sHelpMessageTest = "mESSAGE HERE"	
		
		;MCM ---> Skip Sex 	
		if cfgqst.SkipSex
		Debug.trace("NAKED DEFEAT calmquest: #MCM SkipSex")
		Allow_SexScenes = 0
		endif 
		;MCM ---> No Creatures 	
		if !cfgqst.AllowCreatures
		Debug.trace("NAKED DEFEAT calmquest: #MCM allowes No Creatures")
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
		endif

		if cfgqst.DefeatEscapeCrawl == 0
		Allow_EscapeCrawl = false 
		endif 

		if cfgqst.Allow_Whipping && !WhipperFound
		cfgqst.Allow_Whipping = false
		endif 
		
		;MCM and Diceroll ---> BATHING / GOLDEN SHOWER
		
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
	Debug.trace("NAKED DEFEAT calmquest: :::::::::::::::::::::: #Sequence FINAL ::::::::::::::::::::::")		
	Debug.trace("NAKED DEFEAT calmquest: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
	Debug.trace("NAKED DEFEAT calmquest: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)
	Debug.trace("NAKED DEFEAT calmquest: DefeatType: "+cfgqst.DefeatType)
	Debug.trace("NAKED DEFEAT calmquest: Allow_Creatures: "+Allow_Creatures)
	Debug.trace("NAKED DEFEAT calmquest: Allow_FindSpot: "+Allow_FindSpot)
	Debug.trace("NAKED DEFEAT calmquest: Allow_ForcedBathing: "+Allow_ForcedBathing)
	Debug.trace("NAKED DEFEAT calmquest: Allow_GoldenShower: "+Allow_GoldenShower)
	Debug.trace("NAKED DEFEAT calmquest: Allow_Foreplay: "+Allow_Foreplay)
	Debug.trace("NAKED DEFEAT calmquest: Allow_SexScenes: "+Allow_SexScenes)
	Debug.trace("NAKED DEFEAT calmquest: Allow_Whipping: "+cfgqst.Allow_Whipping)
	Debug.trace("NAKED DEFEAT calmquest: Allow_Aftermath: "+Allow_Aftermath)
	Debug.trace("NAKED DEFEAT calmquest: Allow_EscapeCrawl: "+Allow_EscapeCrawl)
	;minor Bools
	Debug.trace("NAKED DEFEAT calmquest: Allow_EscapeGameAftermath: "+cfgqst.Allow_EscapeGameAftermath)
	Debug.trace("NAKED DEFEAT calmquest: Allow_EscapeDifficulty: "+cfgqst.Allow_EscapeDifficulty)
	Debug.trace("NAKED DEFEAT calmquest: Allow_PayFine: "+Allow_PayFine)
	Debug.trace("NAKED DEFEAT calmquest: ShortDefeat: "+cfgqst.ShortPunishment)
	
	;NOTHING IS CHANGED AFTER THIS DAMNIT 
		
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

	
	Debug.trace("NAKED DEFEAT calmquest: GroupCount "+GroupCount)
	
	return GroupCount
	
EndFunction 

String DefeatTypeExecution = "none"
		
Int Function GetSexScenes()			;#GetSexScenes()
Debug.trace("NAKED DEFEAT calmquest: GetSexScenes()")
		;group or not is determined in the functions, not here	
				
		if cfgqst.SkipSex		
			NymMessage("SkipSex...") 
			return 0			;#IMPORTANT - we need to make sure the mod processes correctly RAPEAGAIN should not happen when SkipSex	
		elseif cfgqst.DefeatViaSlavery && !cfgqst.RapeAgain && (cfgqst.DefeatChainProb > 0)	
		Debug.trace("NAKED DEFEAT calmquest: DefeatViaSlavery()")
		return 3	
		
		;is this superfluous?
		elseif cfgqst.RapeAgain && D100(cfgqst.DefeatChainProb) 
		Debug.trace("NAKED DEFEAT calmquest: RapeAgain()")
			if D100(50)
			return Utility.RandomInt(1,2)
			else
			return Utility.RandomInt(1,3)
			endif
		elseif cfgqst.DefeatTypeScenario == "FastTravel"
		Debug.trace("NAKED DEFEAT calmquest: FastTravel()")
		
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
		Debug.trace("NAKED DEFEAT calmquest: IsNymrasGame()")
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
		Debug.trace("NAKED DEFEAT calmquest: Harder()")
			;	if cfgqst.HarderDefeat
			;	ScreenMessage("You will be chainraped for missbehaving") 
			;	endif
			return 6
		
		;-- Regular Scenario based on MCM alone --;
		elseif D100(cfgqst.DefeatChainProb)
			Debug.trace("NAKED DEFEAT calmquest: IsNymrasGame()")
			;if D100(90)
			return Utility.RandomInt(2,3) 
			;else
			;return 0		;10% chance of NO Sex Scene playing (directly to furniture game)
			;endif

		else
			Debug.trace("NAKED DEFEAT calmquest: else 1 Scene()")
			;if D100(80)
			return 1
			;else
			;return 0		;20% chance of NO Sex Scene playing (directly to furniture game)
			;endif	
		endif
EndFunction

Int Function CountActorsSmart()
Debug.trace("NAKED DEFEAT calmquest: CountActorsSmart()")


EndFunction


Int Function GetSexScenesSmart() ;WIP
Debug.trace("NAKED DEFEAT calmquest: GetSexScenesSmart()")

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
		
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
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
	return 0
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
	Debug.trace("NAKED DEFEAT calmquest: GetMainSequence()")
	
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
	
	;StartTest()
	
	;>>>>> HANDLE SCENARIOS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;we want to be able to send a specified scenario later
	
	
	;>>>>> RAPE AGAIN SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;DefeatViaSlavery does not trigger here since this is not the "Regular Sequence"

	if cfgqst.RapeAgain
	;ResetAllowance() dont need this here. we only make sure we get back into furniture
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(RapeAgain) "+Allow_SexScenes)
	Allow_Aftermath = "Capture"
	;cfgqst.Allow_EscapeChance = "Random"
	cfgqst.Allow_EscapeDifficulty = "RandomRapeAgain"
	cfgqst.Allow_EscapeGameAftermath = true
	cfgqst.HarderDefeat = false
	;Allow_EscapeCrawl = true
		if cfgqst.DefeatViaSlavery	
		cfgqst.Allow_EscapeDifficulty = "Hard"
		cfgqst.Allow_EscapeGameAftermath = true
			;if cfgqst.CivilRapeRunning
			;Allow_EscapeCrawl = false
			;else
			;Allow_EscapeCrawl = true
			;endif
		endif
	
	;>>>>> FAST TRAVEL SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;for now its simply a fucking event without much else. Add additional checks (naked/dirt) and risks later.
	;needs to be before Short Defeat Chance because that should not trigger here	
	elseif (cfgqst.DefeatTypeScenario == "FastTravel")
		
		ResetAllowance()
		Allow_SexScenes = GetSexScenes()
		Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(FastTravel) "+Allow_SexScenes)
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
	
		if cfgqst.IsNymrasGame()
		Allow_SexScenes = 3
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
;	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(Execution) "+1)
;	Allow_Aftermath = "Execution"
	

	;>>>>> PRISON SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<		#crime
	;VIOLENT CRIME
	elseif cfgqst.PunishCrimeMajor	
	
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
	;Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(IsMajorCrime) "+3)
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Hardest"
	cfgqst.Allow_EscapeGameAftermath = true
	;Allow_EscapeCrawl = true
	cfgqst.Allow_Whipping = true
	cfgqst.DefeatType = "Guards"
	
	
	Allow_Creatures = false
	Allow_Foreplay = false	
		
		
	;cfgqst.HarderDefeat = true
	Debug.trace("NAKED DEFEAT calmquest: (01) cfgqst.HarderDefeat = true")
	
	elseif cfgqst.PunishCrimeMinor
	cfgqst.PunishCrimeMinor = false 
	ScreenMessage("You will be punished for your minor crimes")
	cfgqst.PublicExposure = 0
	cfgqst.ShortPunishment = 0			;<---- why not Short? 
	Allow_FindSpot = true
	Allow_SexScenes = 1
	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(IsMinorCrime) "+1)
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Easy"
	cfgqst.Allow_EscapeGameAftermath = true
	;Allow_EscapeCrawl = true
	cfgqst.Allow_Whipping = false
	cfgqst.DefeatType = "Guards"
	
	Allow_Creatures = false
	Allow_Foreplay = false	
		
	;cfgqst.HarderDefeat = true

	;>>>>> EXECUTE ON THE SPOT SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	;will start with Execution Animation directly after finding a spot
	;elseif (cfgqst.DefeatTypeGeneral == "AreHumans") && (cfgqst.DefeatDeathChance > 0) && !cfgqst.DefeatViaSlavery
	elseif (cfgqst.DefeatTypeGeneral == "AreHumans") && !cfgqst.DefeatViaSlavery && D100(cfgqst.DefeatDeathChance) ;&& D100(33)	
	
			ScreenMessage("Your captors have a sinister smile in their faces...")
			ResetAllowance()
			Allow_FindSpot = true

			Allow_SexScenes = 1
			Allow_EscapeCrawl = false
			cfgqst.DefeatTypeScenario = "Execution"
			
				int y = Utility.RandomInt(1,2)
				;int y = 1
				
				if y == 1
				DefeatTypeExecution = "ProxyImpale"
				elseif y == 2
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
	
	
	;>>>>> DD Sequence <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	
	
	elseif cfgqst.DefeatTypeScenario == "DD"
	;we are equipped with DDs during Naked Defeat
	ResetAllowance()
	Allow_FindSpot = true
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(DD) "+Allow_SexScenes)
	
	Allow_Foreplay = true 
	if cfgqst.ModDDNG
	Allow_Creatures = true
	else
	Allow_Creatures = false
	endif 
	Allow_ForcedBathing = false
	cfgqst.Allow_Whipping = true
	Allow_Aftermath = "DDhandling"
	cfgqst.Allow_EscapeGameAftermath = true

	;Allow_AddBinds = false
	
	;>>>>> SHORT DEFEAT SEQUENCE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	##Short
	elseif AllowShortDefeat() && !cfgqst.DefeatViaSlavery 
	
		cfgqst.ShortPunishment = GetShortDefeatScenario()
		
		String TempMessageShort
		
		if cfgqst.DefeatSpotAndEscape	;move to general?
		Allow_FindSpot = true
		endif
		
		;-- SHORT SEX --;
		if cfgqst.ShortPunishment == 1 
		ScreenMessage("This will be over quick, bow down. [SHORT SEX]")		
		Allow_SexScenes = 1			;scenarios are allowed, careful, need second check for this
		
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
		endif

		WasShortPunishment = true

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
		Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(Regular Sequence) "+Allow_SexScenes)
			
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
		
		if cfgqst.DefeatViaSlavery 	
		Allow_FindSpot = True	
			if cfgqst.RapeAgain	;WE NEVER GET HERE!
			cfgqst.Allow_EscapeDifficulty = "Hard"
			cfgqst.Allow_EscapeGameAftermath = true
			else
			cfgqst.Allow_EscapeDifficulty = "HardestRapeAgain"	;1% but gets 1-5% easier	OK
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
	
	EndFunction	

	
	;DO NOT END CALMQUEST!!!
	;Just SetStage 10 again
	;Stage 1000 is ShutDownQuest for EVERYTHING
	;move Stage 1000 stuff to Function or other Stage (we have some left)
	
	


Function Fragment_17()	;Sex Round #2						;############ STAGE 11 ############							
		
Debug.trace("NAKED DEFEAT calmquest: Stage 11")
	
	if (cfgqst.AbortAll)
	Allow_SexScenes = 0
	SetStage(1000)
	endif 
	
	if cfgqst.NymStripping && (!cfgqst.AbortAll)
	;cfgqst.PlayerRef.UnequipItemSlot(32)	;body 		
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
	StartRapeSequence()
	endif 
	
EndFunction			

Function Fragment_19()				;Sex Round #3		;############ STAGE 12 ############	
		
Debug.trace("NAKED DEFEAT calmquest: Stage 12")	
	
	if (cfgqst.AbortAll)
	Allow_SexScenes = 0
	SetStage(1000)
	endif 
	
	if cfgqst.NymStripping&& (!cfgqst.AbortAll)			
	cfgqst.Strip(37, cfgqst.PlayerRef)		;boots
	endif	
	
	if cfgqst.IsDefeatRunning() && (!cfgqst.AbortAll)
	cfgqst.FadeToBlack(true)
	FuckingRound = 3
	StartRapeSequence()
	endif 
	
EndFunction


Function SS_PlatformExit() 
Debug.trace("NAKED DEFEAT calmquest: SS_PlatformExit() ")		
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

bool WasShortPunishment = false

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
Debug.trace("NAKED DEFEAT calmquest: stage 1000 (ResetFollowers())")	
		if folqst.IsFollowerPresent()
			
			int i = 5
			folidle01.EndFollowerIdleQuest_01()		;ends 	folidle01.StartDoingNothing_01(false)

			while i > 0
			i -= 1

				if folqst.IsWithUs_Follower(i)
			
				cfgqst.ResetIdle(folqst.NakedFollower[i])
				folqst.NakedFollower[i].PushActorAway(folqst.NakedFollower[i], 1)
				AddDefeatBindsToActor(folqst.NakedFollower[i], "remove")
				folqst.NakedFollower[i].ClearExpressionOverride()
				MfgConsoleFunc.ResetPhonemeModifier(folqst.NakedFollower[i])
				endif
			
			endwhile
		endif 	

FollowersAreBound = false

EndFunction 

Function CalmFollowers(bool calm)
Debug.trace("NAKED DEFEAT calmquest: CalmFollowers("+calm+"))")	

		if folqst.IsFollowerPresent()
			
			int i = 5
	
			while i > 0
			i -= 1
				if folqst.IsWithUs_Follower(i)
				SPE_actor.SetActorCalmed(folqst.NakedFollower[i], calm)
				endif
			endwhile
		endif 	

FollowersAreBound = false

EndFunction 


Bool StartRescued = false
Bool StartWakeUpInWilderness = false


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>############ STAGE 1000 ###########>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Function Fragment_1()						;ENDofDEFEAT			;1000	;#run	##end1	##1000##

Debug.trace("NAKED DEFEAT calmquest: stage 1000 ()")	

if cfgqst.SlaveAuction
cfgqst.SlaveAuction = false 
Debug.trace("NAKED DEFEAT calmquest: stage 1000 (SlaveAuction #END)")		

	
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

;do nothing, jump to end Directly.

else

Debug.trace("NAKED DEFEAT calmquest: stage 1000 (Defeat #END)")	
	cfgqst.CheckFastTravel()

	if cfgqst.AbortAll
	cfgqst.RapeAgain = false
	cfgqst.DefeatTypeScenario = "none"
	StartSlavery = false
	endif 
	;SendModevent("nade_FuckStates")
	;SendModevent("nade_FuckStates")

	;NYMspawning REMOVE LATER -> removed in Calm(off) 
	
	;if cfgqst.AreActorsSpawned()
	RemoveSpawnedRapers()	;DOES NOT WORKK!KKK!K!!
	;endif

	if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "Execution")
	Utility.Wait(5.0)
	;do nothing. with afterlife we keep the Fade
	else
	cfgqst.FadeToBlack(false) ; FADE IN
	endif

	if cfgqst.RapeAgain && Rescued
	cfgqst.RapeAgain = false
		if cfgqst.IsNymrasGame() 
		Debug.MessageBox("Naked Defeat #ERROR - RapeAgain + Rescued")
		endif
	endif

	;NYMspawning REMOVE LATER (no longer required)
	;if NoActorsRestartSlavery && Rescued
	;NoActorsRestartSlavery = false
	;	if cfgqst.IsNymrasGame() 
	;	Debug.MessageBox("Naked Defeat #ERROR - NoActorsRestartSlavery + Rescued")
	;	endif
	;endif

	;>>>>>>>>>> RAPE AGAIN Ending >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	if cfgqst.RapeAgain

	cfgqst.RapeAgain = false
	Debug.trace("NAKED DEFEAT calmquest: stage 1000 (RAPE AGAIN FALSE)")
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

	;>>>>>>>>>> Regular Ending >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	else

		;>>>>>>>>>> Remove Binds & Chains >>>>>>>>>>>>>>>>>>>>>>>
		RemoveDefeatBinds()
		cfgqst.RemoveChains()
		;--------------------------------------------------------

		Vehicle("Remove") 		
			
			;>>>>>>>> MESSAGES >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
				
			if NoActors_StartSlavery
			ScreenMessage("They cannot fuck you but they can sell you...") 
			elseif cfgqst.AbortAll && !NoActors_StartSlavery
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
				
			;>>>>>>>>>>>>>>>>>> GodMode Option >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			;if cfgqst.GodMode
		;	Debug.SetGodMode(false)
		;	Debug.trace("NAKED DEFEAT GodModeFalse")
			;endif
			;-------------------------------------------------------------------------
			;>>>>>>>>>>>>>>>>>> HealthBoost Option >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			if cfgqst.HealthBoost && (cfgqst.PlayerRef.GetActorValue("health") > 100000)
			cfgqst.PlayerRef.ModActorValue("health", -100000.0)	
			endif
			;-------------------------------------------------------------------------
			;>>>>>>>>>>>>>>>>>> DAR compatibility >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ????
			if cfgqst.PlayerRef.IsInFaction(DefeatFaction)
			cfgqst.PlayerRef.RemoveFromFaction(DefeatFaction)
			endif
			;-------------------------------------------------------------------------

			;>>>>>>>>>>>>>>>>>> Followers Reset (move to function) >>>>>>>>>>>>>>>>>>>>>
			
			ResetFollowers()
			cfgqst.FollowerStripUpdate()

			;ResetFollowersEndOfDefeat() OLD OLD 
			
			;-------------------------------------------------------------------------

			;>>>>> ESCAPE --- CRAWL AWAY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #ESCAPE
			if Allow_EscapeCrawl
			
				if !StartSlavery && !Rescued && !NoActorsAbort && !cfgqst.AbortAll ;&& (cfgqst.DefeatEscTime > 0); && (cfgqst.ShortPunishment == 0)
				cfgqst.SlowDownPlayer("Start")
				
					If Nym()
					cfgqst.PlayCombatBlockingSound()
					cfgqst.Immobilize(false)
					Utility.Wait(1.0)
					cfgqst.PlayCombatBlockingSound()
					cfgqst.Immobilize(false)
					endif 
				
				cfgqst.ImmobilizeCrawl(true)
				Escape()							;#Escape1
				cfgqst.Immobilize(false)
				
				cfgqst.SlowDownPlayer("End")	
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
				
				cfgqst.DefeatQuestRunning = false	
				
			;PUBLIC PUNISHMENT  ---> Crawling away can NOT happen
			elseif cfgqst.CivilRapeRunning
		;	cfgqst.Immobilize(false)
				if WasShortPunishment
				WasShortPunishment = false
				;cfgqst.GracePeriod = Utility.RandomInt(5,10)	;GRACEPERIOD CANCELLED FOR NOW
				else
				;cfgqst.GracePeriod = Utility.RandomInt(20,40)
				endif
			
			endif
			
			if cfgqst.HeelsFix
			cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef)
			
				if folqst.IsWithUs_Follower(0)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[0])
				endif 
				if folqst.IsWithUs_Follower(1)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[1])
				endif
				if folqst.IsWithUs_Follower(2)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[2])
				endif
				if folqst.IsWithUs_Follower(32)
				cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[3])
				endif
			
			endif 

				cfgqst.SlowDownPlayer("End") ;FOR SAFETY
				cfgqst.Crawl(cfgqst.PlayerRef, false)
				cfgqst.Immobilize(false)

				Calm(false,1)		;earlier ReDressing Of Actors
				CalmFollowers(False)
				if SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)
				SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, false)
				endif 
				ResetValues()

				cfgqst.SexSceneCountPlayer = 0
				cfgqst.ResetExpressions()

			if !cfgqst.AcheronEnabled 
			cfgqst.EnableAcheron()		;#ACHERON
			endif

			Stop()
			Debug.Trace("NAKED DEFEAT calmquest: #STOP")
		
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;::::::::::::::::: END OF DEFEAT && TRANSITIONs ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		
			if NoActors_StartSlavery
			Debug.Trace("NAKED DEFEAT calmquest: No Actors - SSLV Entry")
			NoActors_StartSlavery = false 
			cfgqst.StartRobberyAtLocation()
			;SendModEvent("SSLV Entry")
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

			elseif StartSlavery && !cfgqst.AbortAll
			StartSlavery = false 
			CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
		
			elseif StartAfterlife
			StartAfterlife = false
			CreateModEvent("NakedDefeatTransition", "Afterlife")

			endif
			
				cfgqst.SendModEvents(false)	
				cfgqst.PlaceFloor("remove") ;#floor
				cfgqst.PlaceLight("remove")
				cfgqst.AddVictimsToCalmFactions(false)
			
			if cfgqst.PlayerRef.IsInFaction(cfgqst.ProtectedActorFaction)
			cfgqst.PlayerRef.RemoveFromFaction(cfgqst.ProtectedActorFaction)
			endif 
			
			cfgqst.AbortAll = false 
			IsEndOfDefeat = false 
			Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
			Debug.Trace("NAKED DEFEAT calmquest: stage 1000 ::::::::::::::::::::::: ##Shutdow##::::::::::::::::::::::::::::::::::::")
			Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
		
	endif		

endif		
		;WE NEED TO FIGURE THIS SHIT OUT!

;Debug.Trace("NAKED DEFEAT calmquest: ##SHUTDOWN-SS##")
			;###END####
EndFunction


Function CreateModEvent(String sEventName, String sEventType)

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

Debug.Trace("NAKED DEFEAT calmquest: MoveToPrison()")

ScreenMessage("And on top of all that you are arrested for your misdemeanor!")
;Debug.Notification("<font color='#ff0000'>And on top of all that you are arrested for your misdemeanor!</font>")	;MESSAGE
;Debug.trace("NAKED DEFEAT calmquest: (#msg) And on top of all that you are arrested for your misdemeanor!")

int bountygold = 1500

;the reach // markarth
if cfgqst.PlayerRef.IsInLocation(LocationRegions[0])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (the reach)")
SendModEvent("xpoArrestPC", "TheReachCrimeFaction", bountygold)

;the pale // windpeak
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[1])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (the pale)")
SendModEvent("xpoArrestPC", "PaleCrimeFaction", bountygold)

;the rift // riften
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[2])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (the rift)")
SendModEvent("xpoArrestPC", "RiftCrimeFaction", bountygold)

;whiterun // whiterun
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[3])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (whiterun)")
SendModEvent("xpoArrestPC", "WhiterunCrimeFaction", bountygold)

;eastmarch // windhelm
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[4])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (eastmarch)")
SendModEvent("xpoArrestPC", "EastmarchCrimeFaction", bountygold)

;falkreath // falkreath
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[5])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (falkreath)")
SendModEvent("xpoArrestPC", "FalkreathCrimeFaction", bountygold)

;hjaalmarch // morthal
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[6])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (hjaalmarch)")
SendModEvent("xpoArrestPC", "HjaalmarchCrimeFaction", bountygold)

;winterhold // winterhold
elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[7])
Debug.Trace("NAKED DEFEAT calmquest: Arrest: we are in Location (winterhold)")
SendModEvent("xpoArrestPC", "WinterholdCrimeFaction", bountygold)

else
SendModEvent("xpoArrestPC", "", bountygold)

endif

;#TODO SOLITUDE MISSING!!!!
EndFunction

;------------------------------------------------------------------------------------------------------------------------------------------

bool Rescued = false

Function MoveToRescueLocation()		;#rescue #inn  ;;;DONE ALL MOVED TO NEW SYSTEM 
Debug.Trace("NAKED DEFEAT calmquest: MoveToRescueLocation")
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
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (the reach)")  	
		;LocRescueTemp = (Game.GetFormFromFile(0x000C42D4, "Skyrim.esm") As ObjectReference)	;Temp Static "Rug" (wont work)
		consoleutil.ExecuteCommand("player.moveto 000C42D4")	;Temp Static "Rug" via console
		
		;the pale // windpeak 
		;DONE
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[1])
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (the pale)")
		LocTemp = (Game.GetFormFromFile(0x00052270, "Skyrim.esm") As ObjectReference)	;XMARKER near entrance by the 2 chairs
		cfgqst.PlayerRef.MoveTo(LocTemp)
		cfgqst.PlayerRef.MoveTo(cfgqst.PlayerRef, 60.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 60.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		;LocRescueTemp = (Game.GetFormFromFile(0x0010FCC8, "Skyrim.esm") As ObjectReference)		;IDLE MARKER (Wont work)

		;the rift // riften // Bees and Barbs
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[2])
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (the rift)")
		;DONE (copied from SS++ Loc)
		;LocRescueTemp = (Game.GetFormFromFile(0x000BEC41, "Skyrim.esm") As ObjectReference)	;TempStatic "Pelt Floor" WONT WORK 	
		LocTemp = (Game.GetFormFromFile(0x0005CE28, "Skyrim.esm") As ObjectReference)	;XMARKER heading in the center
		cfgqst.PlayerRef.MoveTo(LocTemp)
		;LocTemp = (Game.GetFormFromFile(0x00046BA5, "Skyrim.esm") As ObjectReference)	;IDLE MARKER near Entrance
		cfgqst.PlayerRef.MoveTo(cfgqst.PlayerRef, 125.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 125.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		;whiterun // whiterun // Bannered Mare or Drunken Huntsman
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[3])
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (whiterun)")
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
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (eastmarch)")
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
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (falkreath)")	
		; --- Dead Mans Drink --- ;
		;DONE COPIED FROM SS  
		LocTemp = (Game.GetFormFromFile(0x0007266A, "Skyrim.esm") As ObjectReference)	;XMARKER 
		cfgqst.PlayerRef.MoveTo(LocTemp)
		cfgqst.RotatePC(180)
		Debug.Trace("NAKED DEFEAT: Dead Mans Drink: "+LocTemp)

		;hjaalmarch // morthal // Moorside Inn
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[6])	
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (hjaalmarch)")
		LocTemp = (Game.GetFormFromFile(0x0001EB95, "Skyrim.esm") As ObjectReference) ;XMARKER worx!

		;winterhold // winterhold // Frozen Heart
		elseif cfgqst.PlayerRef.IsInLocation(LocationRegions[7])
		Debug.Trace("NAKED DEFEAT calmquest: Rescue: we are in Location (winterhold)")
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
			if cfgqst.IsNymrasGame()
			Debug.Messagebox("#ERROR Wilderness Location "+j+" not found") 
			endif 
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR Wilderness Location "+j+" not found")
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
	;Debug.trace("NAKED DEFEAT calmquest: (#msg) You regain conciousness in a nearby city. Thank the gods!")
	;else
	;ScreenMessage("You regain conciousness in a city. Praise the gods!")
	;Debug.Notification("<font color='#ff0000'>You regain conciousness in a city. Praise the gods!</font>")	;MESSAGE
	;Debug.trace("NAKED DEFEAT calmquest: (#msg) You regain conciousness in a city. Praise the gods!")
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


Function Fragment_8()	;#aftermath ;############ STAGE 500 ############		#500	#bridge
	
	Debug.Trace("NAKED DEFEAT calmquest: stage 500 (AFTERMATH)")
	NymTrace("Allow_Aftermath = "+Allow_Aftermath)	
	Bool isRescued = false	
		
	while cfgqst.SexFinished && cfgqst.ModEnabled && (!cfgqst.AbortAll)
	Utility.Wait(1.0)
	endwhile	
	
	;>>>>>>>> CHECKING CONDITIONS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	if !(cfgqst.DefeatTypeGeneral == "AreAnimals")	
	noAnimals = true
	Debug.trace("NAKED DEFEAT calmquest: Stage 500 noAnimals(true)")
	endif

	if !(cfgqst.DefeatType == "Trolls")	
	noTrolls = true
	Debug.trace("NAKED DEFEAT calmquest: Stage 500 noTrolls(true)")
	endif

	if (RapersA[0] && !RapersA[0].IsInFaction(NakedGhostFaction)) || (CreaturesA[0] && !CreaturesA[0].IsInFaction(NakedGhostFaction))
	noGhosts = true
	Debug.trace("NAKED DEFEAT calmquest: Stage 500 noGhosts(true)")
	endif

	if !cfgqst.CivilRapeRunning
	noGuards = true
	Debug.trace("NAKED DEFEAT calmquest: Stage 500 noGuards(true)")
	endif

	;to prevent double enslavement: -> Submissive Lola requires MCM Setting to work!
	if cfgqst.PlayerRef.IsInFaction(zbfFactionSlave)
	isSlave = true
	Debug.trace("NAKED DEFEAT calmquest: Stage 500 isSlave(true)")
	endif
	
	if (cfgqst.AbortAll)
	Allow_Aftermath = "none"
	Allow_PayFine = false
	cfgqst.DefeatTypeScenario = "None"
	endif
	
	;>>>>>>>> AFTERMATH >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	; >>> RANDOM <<< ;
		
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
					
	elseif cfgqst.DefeatTypeScenario == "DD"				
		;ScreenMessage("What will they do to you now?")	
		StartPlayerCaptured()
					
	; --- "Special: Afterlife" --- ; 	
	; we are in Afterlife Hell / Dead and this Scenario ends here (we are send to the World again)
	elseif cfgqst.DefeatTypeScenario == "Afterlife"				
		ScreenMessage("Was this only a dream?!")		;before we are send back to the world
		;cfgqst.DefeatTransition = "Send To Afterlife"
		cfgqst.FadeToBlack(true)	
		cfgqst.SendWashPlayerEvent()
		StartWakeUpInWilderness = true
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
						Debug.Trace("NAKED DEFEAT calmquest: FastTravel Aftermath Risky") 
			if D100(75)		;90 Chance of Fast Travel to suceed
			StartPlayerFree()
			cfgqst.FastTravel("Enabled", true)	
			else
			ScreenMessage("Fuck... Something went wrong during the Ritual!")
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
				cfgqst.StartRobberyAtLocation()
				endif 
				StartTeleportIntoDanger = true		;Stage 1000 will MOVE us via cfgqst.LocationEvent -> the event will wait for CalmQuest to end
				SetStage(1000)	
			endif
			
		;Save Ritual Outcome 	
		else
			Debug.Trace("NAKED DEFEAT calmquest: FastTravel Aftermath") 
			if D100(95)		;90 Chance of Fast Travel to suceed
			StartPlayerFree()
			cfgqst.FastTravel("Enabled", true)	
			else
		
			Utility.Wait(1.0)
				if cfgqst.DefeatRobberyProb > 0 
				cfgqst.StartRobberyAtLocation()
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
		
	; --- "Pay Fine" --- ; 
	elseif Allow_PayFine
		
		cfgqst.PayFine()
		SoundCoin.Play(cfgqst.PlayerRef)
		Utility.Wait(2.0)
		cfgqst.PlayerRef.PlayIdle(KnockdownIdles[0])		;works
		cfgqst.Immobilize(false)	
		SendModEvent("EndofDefeat")	
						
	; --- "Random" --- ; 						
	elseif Allow_Aftermath == "Random"				
	StartRandomAftermath()		
	; --- "Capture" --- ; 
	elseif Allow_Aftermath == "Capture"
	StartPlayerCaptured()
	; --- "Free / Escape" --- ;
	elseif Allow_Aftermath == "Escape"
	StartPlayerFree()
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
	;#RESCUE1 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 1st
	if !cfgqst.HarderDefeat && !isSlave && noGuards && D100(cfgqst.DefeatRescueProb)
	
		;IN NYMRAS GAME WE STILL CAN GET ROBBED BEFORE RESCUE
		if cfgqst.IsNymrasGame() && D100(33)
		StartPlayerRobbed()
		Utility.Wait(1.0)
		endif
		
	Rescued = true
	StartRescued = true
	SetStage(1000)	
		
	;---- nothing else triggers after here (Rescued = True)
	
	;#ROBBERY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	elseif !cfgqst.DefeatViaSlavery && noGuards && noGhosts && noAnimals && noTrolls && !cfgqst.CivilRapeRunning
		
			;NymMessage("Robbed by Bandits: ("+cfgqst.IsItBandits()+")")
				
			if cfgqst.IsNymrasGame() && Bandits ;CAREFUL; We can only ask For Bandits ONCES 	
			NymTrace("Robbers Rob!")
			;In Nymras Game robbers rob 100% of the time
			StartPlayerRobbed()	
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
		
		
		;<<<<<<<<<< SLAVERY (SD+ & SS++) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #SS
		
		elseif cfgqst.IsNymrasGame() && IsItSlavers(RapersA[0])
		
		
		StripFollower(0)
		StripFollower(1)
		if cfgqst.DefeatRobberyProb > 0 
		cfgqst.StartRobberyAtLocation()
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

	Debug.trace("NAKED DEFEAT calmquest: StartPlayerRobbed()")
			;Debug.trace("NAKED DEFEAT calmquest: StartRobbery()")
			
			cfgqst.Immobilize(true)

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
				cfgqst.StartRobberyAtLocation()
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
EndFunction
	
	
;#rescue2	
Function StartPlayerRescued()
	Debug.trace("NAKED DEFEAT calmquest: StartPlayerRescued()")
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
		
	ScreenMessage("They are taking "+cfgqst.CrimeGoldToGet+" Septims from you")  	
	
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
	Debug.trace("NAKED DEFEAT calmquest: StartPlayerPrisonerPOP()")
	
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
		Debug.trace("NAKED DEFEAT calmquest: StartPlayerSlayerSD")	
		;SD+
				
		Debug.trace("NAKED DEFEAT calmquest: OUTCOME Slavery [SD+]")
	
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

Debug.trace("NAKED DEFEAT calmquest: StartPlayerSlayerSS()")
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
	Debug.Trace("NAKED DEFEAT calmquest: StartTeleportIntoDanger()")
	;Utility.Wait(2.0)
	;StartSlavery = true

EndEvent


	
Function StartPlayerFree()				;PlayerFree()
Debug.trace("NAKED DEFEAT calmquest: StartPlayerFree()")

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

Debug.trace("NAKED DEFEAT calmquest: StartPlayerCaptured()")	

cfgqst.DefeatStatePlayer = "EscapeGame" 	;#chapter

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
	Utility.Wait(2.0)
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
			
			if akactor.IsInFaction(cfgqst.RobberFaction)
			return false
			endif 
			
			if cfgqst.IsNymrasGame()
			;Debug.messageBox("Robber ESP: "+stringFileName)
			endif
		
			if stringFileName == "Skyrim.esm"
			return true
			else
			return false
			ScreenMessage("NAKED DEFEAT: NON-Vanilla Actor -> NOT valid for Robbery")
			endif
	
			
EndFunction

bool Function IsItSlavers(actor akactor)

if cfgqst.IsNymrasGame()
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

Debug.Trace("NAKED DEFEAT calmquest: stage 13")	

	SetStage(14)

EndFunction


int SexSequencesDone = 0

Function Fragment_20()							;############ STAGE 14 ############	;#14
	
	;END OF SEX SEQUENCE 	
	
	Debug.Trace("NAKED DEFEAT calmquest: stage 14")

	SexScenesDone = 0
	FuckingRound = 0
	
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
	;DebugTrace("NAKED DEFEAT calmquest: SexSequencesDone: Regular END") 
	;SexSequencesDone = 0
	SetStage(500)
	;Repeat Sex Sequence if SexScenes more than 3
	;elseif (Allow_SexScenes > 3) && (SexSequencesDone == 1)
	;DebugTrace("NAKED DEFEAT calmquest: SexSequencesDone: ChainRape Repeat") 
	;SetStage(11)
	;End Sex Sequence if SexScenes more than 3
	;elseif (Allow_SexScenes > 3) && (SexSequencesDone == 2)
	;DebugTrace("NAKED DEFEAT calmquest: SexSequencesDone: ChainRape END") 

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
RegisterForModEvent("StartRaperExpressions", "OnStartRaperExpressions")

EndFunction


Function InitialMaintenance()	;STAGE 10 start
	NymTrace("InitialMaintenance() ::::::::::::::::::::::::::::::::::::::::::::::::::::")	

	;Follower Handling!!!

	Victims = new Actor[4]					
	Victims[0] = None
	Victims[1] = None
	Victims[2] = None
	Victims[3] = None
	VictimCount = 0

	if folqst.IsFollowerPresent()
	NymTrace("InitialMaintenance(FOLLOWER HANDLING) ::::::::::::::::::::::::::::::::::::::::::::::::::::")
	folidle01.StartFollowerIdleQuest_01("none") 
		if folqst.IsWithUs_Follower(0)
		Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower01)	
		folidle01.StartDoingNothing_01(true)	
		Victims[0] = folqst.NakedFollower[0]	
		Victims[0].AddToFaction(BusyFaction)
		CalmActor(Victims[0])
		NeedARaper = true
		Victimcount +=1
		endif
		if folqst.IsWithUs_Follower(1)
		Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower02)
		folidle01.StartDoingNothing_02(true)
		Victims[1] = folqst.NakedFollower[1]	
		Victims[1].AddToFaction(BusyFaction)
		CalmActor(Victims[1])
		NeedAnotherRaper = true
		Victimcount +=1
		endif
		if folqst.IsWithUs_Follower(2)
		folidle01.StartDoingNothing_03(true)
		endif
		if folqst.IsWithUs_Follower(3)
		folidle01.StartDoingNothing_04(true)
		endif						
	endif 	

	cfgqst.FixExpressions()

	RegisterForModEvents()
	cfgqst.PlayerDownAlready = false 

		;OLD VERSION - delete
		if cfgqst.ModDDframework
			if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
				
				float fRemoveDDChanceTemp
				
				if (cfgqst.DefeatEntranceVia == ("Surrendered in Combat")) && D100(cfgqst.CooperativeSurrenderChance)
				fRemoveDDChanceTemp = cfgqst.RemoveDDChance + cfgqst.RemoveDDChance
				else
				fRemoveDDChanceTemp = cfgqst.RemoveDDChance
				endif 
				
				if D100(fRemoveDDChanceTemp)
				cfgqst.RemoveAllDDevices(true, "Piercing Nipples", "empty02", "empty03", "empty04", "empty05")
				NymTrace("RemoveAllDDevices()")
				endif 
			endif 
			
			if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "BlockingSex")
			NymTrace("IsWearingDDs")
			cfgqst.DefeatTypeScenario = "DD"	
			;/
			elseif Nym()
			cfgqst.DefeatTypeScenario = "DD"
				int i = Utility.RandomInt(1,9)
				NymTrace("EquipRandomDDs: "+i)
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
			/;
			endif
				
			
		endif 
	 
	
		
	;--- REMOVE POTION EFFECTS -------------------------------------------------------------- ;
	
	if cfgqst.CheckDurationSpell("Magicka")
	cfgqst.RemoveDurationSpell("Magicka")
	endif
	
	if cfgqst.CheckDurationSpell("Health")
	cfgqst.RemoveDurationSpell("Health")
	endif
	
	
	;if cfgqst.RemoveDDs && (Game.GetModByName("Devious Devices - Equip.esp") != 255
	;if cfgqst.ModDDe && cfgqst.RemoveDDs
	;
	
	;elseif !cfgqst.ModDDe && cfgqst.RemoveDDs
;	
;	if iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousCollar")				;Yoke
;	Debug.Notification("NAKED DEFEAT calmquest: COLLAR detection")
;	iDDeUtil.ManDDsByStrKwds(Slave = cfgqst.PlayerRef, sOutfit = "NadeList", sKwds = "zad_DeviousCollar", iDDs = -66, bMatch = True, iClear = 0)
;	endif;
;	Utility.Wait(5.0)
	
	;WE NEED A DD SCENARIO!
;	endif
	
	if cfgqst.RapeAgain
	
	AddDefeatBinds()		;AddBindsAgain to restore the "DefeatStateBindings" for RapeAgain (else the poses will not match)
	
		;if D100(33)			;33% chance that the scenario is changed on RapeAgain (NOT tested)
		;cfgqst.DefeatTypeScenario = "none"
		;endif
	Debug.Trace("NAKED DEFEAT calmquest: cfgqst.RapeAgain = TRUE")
	else
	;GracePeriod needs to be set to 0 for the first start of Naked Defeat.
	;when RapeAgain is true, the GracePeriod is used for the EscapeGame.
	cfgqst.GracePeriod = 0
	endif
	
	if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
	;ScreenMessage("FORBIDDEN Fuck...!!!!!!####")
	Debug.Trace("NAKED DEFEAT calmquest: stage 10 (SexLabForbiddenActors)")
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
	Debug.Trace("NAKED DEFEAT calmquest: cfgqst.DefeatViaSlavery")
	Distance = 10000
	elseif cfgqst.PlayerRef.IsInInterior()
	Distance = cfgqst.SearchRadiusInterior
	else
	Distance = cfgqst.SearchRadius
	endif
	Debug.Trace("NAKED DEFEAT calmquest: SearchRadius: "+Distance)

	
	

	;Search Radius error check
	if Distance < 5000
	;Distance = 5000
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR SearchRadius is very low. Distance: "+Distance)
	;Debug.Notification("NAKED DEFEAT: #ERROR SearchRadius not found. now set to 5000, report to forum")
	endif
	
	;enable Godmode (MCM toggle)
;	if cfgqst.GodMode
;	Debug.SetGodMode(true)
;	Debug.trace ("NAKED DEFEAT calmquest: Godmode TRUE")
;	endif
	
	AllowPlaceFloor = true
	cfgqst.SexState = 0 ;no Sex 
	
EndFunction

int Prost


Function GetScenarioByWeight(String Restriction)

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
	if cfgqst.ModDDNG
	RandomScenarioArray[x] = "DD"
	x += 1
	endif 
	
	
	int y = Utility.RandomInt(0,x)
	
	cfgqst.DefeatTypeScenario = RandomScenarioArray[y]
	NymTrace("GetScenarioByWeight = "+cfgqst.DefeatTypeScenario)

EndFunction 

Function GetDefeatScenario()			;#scenario2 ;#GetDefeatScenario()
	Debug.trace("NAKED DEFEAT calmquest: GetDefeatScenario()")	

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
	
	Debug.trace("NAKED DEFEAT calmquest: cfgqst.ShortPunishment: "+cfgqst.ShortPunishment)
	ResetAllowance()
	
	;----- Get Scenario By Weight ------ ;
	
	if cfgqst.IsDDScenario()
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
	
	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(General Allowance) "+Allow_SexScenes)
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
		
	;scenario = 6		;TEST
	;FALLBACK: when Short Punishment we dont have some Scenarios (Girlfriend, CHainrape)	 ;OMG no please change this
;	if (cfgqst.ShortPunishment > 0) && ((scenario == 6) || (scenario == 7))
;	scenario = Utility.RandomInt(1,3)
;	endif
	
;	if cfgqst.IsNymrasGame() && (cfgqst.DebugPunishmentType > 0)
;	Debug.Messagebox("DEBUG: Scenario selected: "+scenario)
;	scenario = cfgqst.DebugPunishmentType as int 
;	endif
	
	;--- Set Allowances for seleted Scenario ---;
	
	;DD	------------------------
	if cfgqst.DefeatTypeScenario == "DD"
	;we are equipped with DDs during Naked Defeat
	ResetAllowance()
	Allow_FindSpot = true
	Allow_SexScenes = GetSexScenes()
	Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(DD) "+Allow_SexScenes)
	
	Allow_Foreplay = true 
	if cfgqst.ModDDNG
	Allow_Creatures = true
	else
	Allow_Creatures = false
	endif 
	Allow_ForcedBathing = false
	cfgqst.Allow_Whipping = true
	Allow_Aftermath = "DDhandling"
	cfgqst.Allow_EscapeGameAftermath = true
	
	
	;YOKE	------------------------
	elseif cfgqst.DefeatTypeScenario == "Yoke"
	TempScenarioMessage = "They come to you with a heavy yoke. [Scenario Yoke]"
	TempInfoMessage = "SCENARIO: Yoke"

	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false ;check if creatures are possible for some
	
	;CUFFS	------------------------
	elseif cfgqst.DefeatTypeScenario == "Cuffs"
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

	Allow_Creatures = false
	Allow_Foreplay = false
	
	;FURNITURE ------------------------
	elseif cfgqst.DefeatTypeScenario == "Furniture"
	TempScenarioMessage = "They just want to watch you struggle."
	TempInfoMessage = "SCENARIO: Furniture" 

	
	Allow_SexScenes = 0
	Allow_Aftermath = "Capture"
	cfgqst.Allow_EscapeDifficulty = "Hardest"
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;ARMBINDER ------------------------
	elseif cfgqst.DefeatTypeScenario == "Armbinder"
	TempScenarioMessage = "They force your arms into a tight armbinder."
	TempInfoMessage = "SCENARIO: Armbinder" 

	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false

	;XCROSS ------------------------
	elseif cfgqst.DefeatTypeScenario == "XCross"
	TempScenarioMessage = "They seem to build an X Cross"
	TempInfoMessage = "SCENARIO: XCross" 
	
	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;WHEEL ------------------------
	elseif cfgqst.DefeatTypeScenario == "Wheel"
	TempScenarioMessage = "They bring in a cartwheel..."
	TempInfoMessage = "SCENARIO: Wheel" 
	
	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	;cfgqst.DefeatStateBindings ---> is set in PlayerPosing. lets see if this causes problems missing here
	Allow_Creatures = false
	Allow_Foreplay = false
	
	;STOCKADE ------------------------
	elseif cfgqst.DefeatTypeScenario == "Stockade"
	TempScenarioMessage = "They bring in a strange device..."
	TempInfoMessage = "SCENARIO: Stockade" 

	cfgqst.DefeatStateBindings = cfgqst.DefeatTypeScenario
	Allow_Creatures = false
	Allow_Foreplay = false
	;cfgqst.DefeatStateBindings ---> is set in PlayerPosing. lets see if this causes problems missing here
	endif
	
	if cfgqst.NymBeta && (cfgqst.DebugPunishmentType > 0)
	Debug.Messagebox("DEBUG: Scenario selected: "+cfgqst.DefeatTypeScenario)	
	endif

	;checks which scenario was the last one used and if its the same as the current one
	if cfgqst.CheckLastDefeatScenario()
	Debug.Trace("NAKED DEFEAT calmquest: CheckLastDefeatScenario(we change to cuffs)")
	SetScenarioCuffs() ;fallback to Cuffs Scenario (for now)
	endif
	
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

Bool NeedCreaturesForSex = false

Bool NoActors_StartSlavery = false 

Bool DoForceImmobilize 

;/
Event 

	If cfgqst.IsNymrasGame() && cfgqst.DefeatViaSlavery ;#SS Bridge Improvement
	
		while DoForceImmobilize && cfgqst.ModEnabled
		
		if Game.IsMovementControlsEnabled() 
		;Debug.Messagebox(", please report to forum!")
		NymTrace("NAKED DEFEAT calmquest: #ERROR Player can move! Immobilize now!")
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

Function Fragment_3()	;############ STAGE 10 ############			##Start1 ##START##
	;Debug.Trace("NAKED DEFEAT calmquest: stage 10 (NAKED DEFEAT ##START##)")

	Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
	Debug.Trace("NAKED DEFEAT calmquest: stage 10 ::::::::::::::::::::::::: ##START## :::::::::::::::::::::::::::::::::::::")
	Debug.Trace("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")

	;/
	if cfgqst.IsNymrasGame() && cfgqst.DefeatViaSlavery
		
;	VehiclePlayerTest = game.GetFormFromFile(0x00000034, "Skyrim.esm") 
	VehiclePlayerTest = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(0x00000034, "Skyrim.esm") as Static, 1)
		if VehiclePlayerTest
		NymTrace("NAKED DEFEAT calmquest: VEHICLE FOUND")
		else 
		NymTrace("NAKED DEFEAT calmquest: VEHICLE NONE")
		endif
;	NymTrace("NAKED DEFEAT calmquest: VEHICLE PLACEMENT FOR LOCATION")
	;VehiclePlayerTest = Alias_Vehicle.GetReference() 
					
			
	VehiclePlayerTest.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
	endif 
	/;
	
;	if cfgqst.IsNymrasGame()
;	SlaveryLocBeta = TRUE
;	else
;	SlaveryLocBeta = false 
;	endif	
	
	bool Test = false 
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	DEFEAT START	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;	
		Debug.Trace("NAKED DEFEAT calmquest: MODVERSION: "+cfgqst.NakedDefeat_ModVersion)
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)		
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatType: "+cfgqst.DefeatType)	
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatStateBindings: "+cfgqst.DefeatStateBindings)
		if cfgqst.RapeAgain
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatEntranceVia (RapeAgain): "+cfgqst.DefeatEntranceVia)
		else
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 #Start#: DefeatEntranceVia: "+cfgqst.DefeatEntranceVia)
		endif 
		
		;INITITAL STUFF >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
		cfgqst.DefeatStatePlayer = "StartofDefeat"

		cfgqst.Immobilize(true)
		if (!cfgqst.AbortAll)
		InitialMaintenance()
		endif


		if cfgqst.IsNymrasGame() && (cfgqst.DefeatTypeScenario != "AfterLife") && (cfgqst.DefeatTypeScenario != "FastTravel")
		STA_CallSpanker()
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
						
		if cfgqst.CivilRapeRunning && !cfgqst.DefeatViaSlavery	;#crime ; need to check here so we account for late crimes committed right before defeat
		cfgqst.ProcessCrimeGold()		
		cfgqst.CheckCrimePunishment()	
		endif 				
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	ARRIVAL SCENE :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;	
		
		cfgqst.DefeatStateChapter = "Arrival Scene"
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 :::::: Arrival Scene ::::::")	
		
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
			 
		cfgqst.DefeatViaSlavery = false ;FIX THIS SHIT... needs to be adressed in configquest FIX WHAT?
		cfgqst.DefeatType = "Hell"
		cfgqst.DefeatTypeGeneral = "AreHumanoids"
		cfgqst.Dead = 0 
		Utility.Wait(2.0)
			
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
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 (Waiting Loop)")
		;if (cfgqst.DefeatTypeScenario != "Afterlife") && cfgqst.DefeatTypeScenario != "FastTravel" 
			while (cfgqst.DefeatTypeGeneral == "none") && (waitloops < 5) && (!cfgqst.AbortAll) && (cfgqst.ModEnabled)
			
				if cfgqst.IsNymrasGame()
				;Debug.Messagebox("We are here: CalmQuest waitloops")
				endif 
			Utility.Wait(1.0)
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
		GetMainSequence()
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
		
		if cfgqst.DefeatWhipProb > 0 && cfgqst.IsNymrasGame()
		StartShortWhipping()
		endif 
		
		;>>>>>>>>>> Check if we Abort A >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #Abort
		;!!! IMPORTANT !!! WE only check actors abort in Non-Spawn Scenarios (so not for FastTravel, Afterlife
		
		NeedCreaturesForSex = false
		
		if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "FastTravel")
		;dont care, we spawn our stuff anyway 
				
		elseif cfgqst.DefeatViaSlavery 	
		;if there are no rapers at the target location we need to spawn some.
			if (RapersMale == 0) && !cfgqst.FemalesAllowed 
			NeedRapersForSlavery = true 
			endif 
			if (RapersCreatures == 0) && cfgqst.NymSpawning
			NeedCreaturesForSlavery = true
			endif 
				
		;Human Defeat, can be nobody left -> abort  		
		elseif cfgqst.DefeatTypeGeneral == "AreHumans" 
	
			if (RapersMale == 0) && !cfgqst.FemalesAllowed 
			Debug.Trace("NAKED DEFEAT calmquest: NoActorsAbort(RapersMale == 0)")	
			ScreenMessage("No male rapers around. You are lucky!")			
			NoActorsAbort = true 
			elseif (RapersMale == 0) && (RapersFemale == 0)
			Debug.Trace("NAKED DEFEAT calmquest: NoActorsAbort(RapersMale&Female == 0)")
			ScreenMessage("No humans around to fuck you. You are lucky!")			
			NoActorsAbort = true 
			endif 
			if !NoActorsAbort && (RapersCreatures == 0) && cfgqst.NymSpawning
			NeedCreaturesForSex = true
			endif 
						
		;Creature/Animal  Defeat, if nobody left -> abort 	
		elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids") || (cfgqst.DefeatTypeGeneral == "AreAnimals") 
		
			if (RapersCreatures == 0)
			Debug.Trace("NAKED DEFEAT calmquest: NoActorsAbort(RapersCreatures == 0)")
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
		SortActors() 
		
		SendModEvent("StartRaperExpressions")
		endif
		
		;>>>>>>>>>> Check if we Abort B >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;!!! IMPORTANT !!! WE only check actors abort in Non-Spawn Scenarios (so not for FastTravel, Afterlife and technically also not slavery (work on that!!!)
		
		if (cfgqst.DefeatTypeScenario != "FastTravel") && (cfgqst.DefeatTypeScenario != "Afterlife")
			If (RapersACount == 0) && (RapersBCount == 0) && (RapersCCount == 0) && (CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0)
			Debug.Trace("NAKED DEFEAT calmquest: #ABORT No Humans or Creatures found!")
			NoActorsAbort = true
			elseif (cfgqst.DefeatTypeGeneral == "AreHumans") && ((RapersACount == 0) && (RapersBCount == 0) && (RapersCCount == 0))
			NoActorsAbort = true
			Debug.Trace("NAKED DEFEAT calmquest: #ABORT - AreHumans but no Humans found")
			elseif (cfgqst.DefeatTypeGeneral == "AreHumanoids") && ((CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0))
			NoActorsAbort = true
			Debug.Trace("NAKED DEFEAT calmquest: #ABORT - AreHumanoids but no Creatures found")
			elseif (cfgqst.DefeatTypeGeneral == "AreAnimals") && ((CreaturesACount == 0) && (CreaturesBCount == 0) && (CreaturesCCount == 0))
			Debug.Trace("NAKED DEFEAT calmquest: #ABORT - AreAnimals but no Creatures found")
			NoActorsAbort = true
			endif 
		;endif 
		
			if NoActorsAbort && cfgqst.DefeatViaSlavery
			;need spawn rapers for Slavery  ;NymSpawning ????
			endif 
			
			if NoActorsAbort	
			;Debug.Trace("NAKED DEFEAT calmquest: NoActorsAbort")
			;Debug.Messagebox("No Actors around to fuck you --> Aborting!") 
			cfgqst.AbortAll = true
			ResetAllowance()
			endif 
			
		;---------------------------------------------------------------------------------------------
		
	
		;if cfgqst.IsNymrasGame()	;CAN GET STUCK - DANGEROUS: also does not seem to work. maybe use SpankThatAssBridge/Mod
		;Debug.Trace("NAKED DEFEAT calmquest: StartCallMolesters Event Sent")
		;SendModEvent("StartCallMolesters")
		;endif
		
			if Game.IsMovementControlsEnabled() && (!cfgqst.AbortAll)
			;Debug.Messagebox(", please report to forum!")
			Debug.Trace("NAKED DEFEAT calmquest: #ERROR Player can move! Immobilize now!")
			cfgqst.Immobilize(true)
			endif
			
		;only PUBLIC PUNISHMENT: disable DefeatTypeGuards (thats only for DEFEAT) ;DO WE NEED THIS STILL????
			if cfgqst.CivilRapeRunning && (cfgqst.DefeatType == "Guards") && (!cfgqst.AbortAll)

				;check is too late?	
				;This is only for starters. Later we can track the total crime gold and change the punishment based on that value.
				if !cfgqst.DefeatViaSlavery
				cfgqst.CheckCrimePunishment()
				endif 
			
				while cfgqst.PlayerRef.IsWeaponDrawn() && (cfgqst.ModEnabled)	;WhileFix 
					cfgqst.PlayerRef.SheatheWeapon() 
					Utility.Wait(0.5)
				endWhile

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
				Debug.Trace("NAKED DEFEAT calmquest: skipping because no humans and creatures not allowed")	
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
			EndWhile
		endif	
		
		;>>>>>>>>>>>>>>>>>> DD management >>>>>>>>>>>>>>>>>>	#DDe
			
		;if cfgqst.RemoveDDs && (Game.GetModByName("Devious Devices - Equip.esp") != 255
		;if cfgqst.ModDDe && cfgqst.RemoveDDs
		;DDeRemoveDDs()
		
		;elseif !cfgqst.ModDDe && cfgqst.RemoveDDs
	;	ScreenMessage("#ERROR: you need Devious Devices Equip to remove DDs")
	;	if iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousCollar")				;Yoke
	;	Debug.Notification("NAKED DEFEAT calmquest: COLLAR detection")
	;	iDDeUtil.ManDDsByStrKwds(Slave = cfgqst.PlayerRef, sOutfit = "NadeList", sKwds = "zad_DeviousCollar", iDDs = -66, bMatch = True, iClear = 0)
	;	endif;
	;	Utility.Wait(5.0)
		
		;WE NEED A DD SCENARIO!
	;	endif

		;if cfgqst.IsNymrasGame() && Game.IsMovementControlsEnabled()
		;Debug.Messagebox("Player can move!")
		cfgqst.Immobilize(true)
		;endif
		
		if cfgqst.IsNymrasGame() && (!cfgqst.AbortAll)
		NymTrace("CallSpanker")
		STA_CallSpanker()
		endif 		
		
		
		if cfgqst.HeelsFix
		;cfgqst.RemoveHighHeelsHeight()
		cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef)
			if folqst.IsWithUs_Follower(0)
			cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[0])
			endif 
			if folqst.IsWithUs_Follower(1)
			cfgqst.DisableHeelsEffectOnActor(folqst.NakedFollower[1])
			endif
		endif 
		
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	FIND SPOT	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 :::::::::::: Find Spot ::::::::::::")
	
		cfgqst.Crawl(cfgqst.PlayerRef, true)	;REMOVE DownedFaction
		
		cfgqst.DefeatStateChapter = "Find Spot"
		
		if Allow_FindSpot && !cfgqst.RapeAgain && (!cfgqst.AbortAll)
		cfgqst.PlayerRef.SheatheWeapon()
		cfgqst.StripWeapons()
		cfgqst.PlayerRef.SheatheWeapon()
		
		cfgqst.SlowDownPlayer("Start")
		Utility.Wait(1.0)
		cfgqst.Immobilize(false)
		Utility.Wait(0.1)
		cfgqst.ImmobilizeCrawl(true)
		cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, false)
		FindSpot()							;#FindSpot1 #spot1
		cfgqst.ImmobilizeCrawl(false)
			
		Utility.Wait(0.1)
		cfgqst.Immobilize(true)
		cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, true)
		cfgqst.SlowDownPlayer("End")
	
		;????
		endif
			
	
		
				;elseif !cfgqst.RapeAgain && (!cfgqst.AbortAll) WHAT IS THIS??????
		
	;	cfgqst.SlowDownPlayer("Reset") ;remove SpeedDebuff - reapply when Crawling Away 
			
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	STARTING SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 :::::::::::: Starting Scene ::::::::::::")
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

		Utility.Wait(4.0)
		SendModEvent("Moan")
		
		;............ooooooooooooooooOOOOOOOOOOOOO	FADE TO BLACK TRUE OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
		cfgqst.FadeToBlack(true) 									
		;oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
	
	;if  && (cfgqst.DefeatTypeScenario != "Afterlife") && !cfgqst.DefeatViaSlavery
		
		if !VehicleAlreadySetup && (!cfgqst.AbortAll)
		Vehicle("setup") 			;<<<<<----- THIS NEEDS TO HAPPEN if no earlier vehicle setup. Other conditions dont matter!!!
		endif
		cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, false)
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
			
		;>>>>>>>>>>>>>>>>>> HairStyleChange >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;#hair			
			
		if !cfgqst.AbortAll
			if D100(cfgqst.BondageHaircutProb) && !HairChangedOnce 	
				if cfgqst.BlackFadeStatus == 0
				cfgqst.FadeToBlack(true)
				endif	
				HairChangedOnce = true
				cfgqst.ChangeHairStyle()
			endif
		endif 
		
		;>>>>>>>>>>>>>>>>>> Stripping >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;#strip	
		
		;DD Move earlier
		
		if !cfgqst.AbortAll	
		
			if cfgqst.NymStripping
			cfgqst.Strip(52, cfgqst.PlayerRef)	
			endif 
			
			if cfgqst.NymStripping && D100(95)
							
				if cfgqst.BlackFadeStatus == 0
				cfgqst.FadeToBlack(true)
				endif
				
				if D100(50)
				StripPlayer() ;strip main slots and some other
				elseif Nym()
				cfgqst.StripCompletely(37,0,0,0,0)
				else				
				cfgqst.StripCompletely(0,0,0,0,0) ;completely naked
				endif
			endif
		endif 
		
		if cfgqst.NymBeta	;PLUGS 
		cfgqst.RemoveBrutalPlugs()
		endif 

		;>>>>>>>>>>>>>>>>>> GetScenario >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
					
		;Enfore Scenario Selection (Special Sequence)				
		if (cfgqst.DefeatEntranceVia == "Prostitution") || (cfgqst.DebugPunishmentType > 0)
		
		GetDefeatScenario()	

		elseif (cfgqst.DefeatType == "Guards") && (Allow_SexScenes > 0) && !cfgqst.SkipSex && (!cfgqst.AbortAll)
		GetDefeatScenario()	
		
		;Regular Sequence - Scenario Chance%
		elseif D100(cfgqst.ScenarioChance) && (cfgqst.ShortPunishment == 0) && !cfgqst.RapeAgain && (cfgqst.DefeatTypeGeneral == "AreHumans") && (cfgqst.DefeatTypeScenario == "none") && (Allow_SexScenes > 0) && !cfgqst.SkipSex && (!cfgqst.AbortAll)	
		;not if short punishment	
	
			if CheckHumanGroupsAvailable()		;CHANGE WHEN WE LATER HAVE MORE SCENARIOS WITH CREATURES 
			GetDefeatScenario()	
			endif 
	
		endif
		
		if (!cfgqst.AbortAll)
		GetMainSequenceLastSteps()		;for now skip sex fix
		endif 
		
	;	Debug.Trace("NAKED DEFEAT calmquest: stage 10: DefeatTypeGeneral: "+cfgqst.DefeatTypeGeneral)		
	;	Debug.Trace("NAKED DEFEAT calmquest: stage 10: DefeatType: "+cfgqst.DefeatType)	
	;	Debug.Trace("NAKED DEFEAT calmquest: stage 10: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
		
		;when RAPE AGAIN we change some scenarios
		if cfgqst.RapeAgain && (cfgqst.DefeatTypeScenario == ("Furniture")) && (!cfgqst.AbortAll)
		cfgqst.DefeatTypeScenario = "none"
		Allow_SexScenes = GetSexScenes()
		Debug.trace("NAKED DEFEAT calmquest: GetSexScenes(RapeAgain B) "+Allow_SexScenes)
		Allow_Aftermath = "capture"
		cfgqst.Allow_EscapeDifficulty = "Random"
		endif
		
		Debug.trace("NAKED DEFEAT calmquest: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)
		;-------------------------------------------------------------------------------------
		
		;>>>>>>>>>>>>>>>>>> ADD DEFEAT BINDS/COLLAR >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
		;WIP---> animated equip with enemy?
		
		if (!cfgqst.AbortAll)
		cfgqst.AddDefeatCollar("Random")		
		Utility.Wait(1.0)
		AddDefeatBinds()	;player is bound with cuffs/yoke/etc.
		endif 
			
		;add follower binds 01
		;if cfgqst.DefeatStateBindings == "Cuffs"
		;if (cfgqst.DefeatStateBindings == "Cuffs") || cfgqst.IsPoseScenario()
		
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
		
		if (!cfgqst.AbortAll)
		; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we are bound or otherwise unhappy and start to struggle 		
		PlayPoseOnActor(cfgqst.PlayerRef, "struggle", false)		
		PlayPoseOnActor(Victims[0], "struggle", false)
		PlayPoseOnActor(Victims[1],"struggle", false)
		Utility.Wait(1.0)
		
		;OOOOOOOOOOOOOoooooooooooooooo............	FADE BLACK OUT 01 ...............................................................................................
		cfgqst.FadeToBlack(false) 
		;.............................................................................................................................................................
		
		Utility.Wait(4.0)
		endif 
		
		if cfgqst.RapeAgain 
		Debug.trace("NAKED DEFEAT calmquest RapeAgain: LastAddedDevice")
		cfgqst.LastAddedDevice.DisableNoWait()
		cfgqst.LastAddedDevice.Delete()
		cfgqst.LastAddedDevice = None
		endif
		
		if (!cfgqst.AbortAll)
		Utility.Wait(1.0)
		endif
		Sexlab.ThreadSlots.StopAll()		
		SolosRunning = 0
		if (!cfgqst.AbortAll)
		Utility.Wait(1.0)	
		endif 

		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	BATHING SCENE || GOLDEN SHOWER SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 :::::: Bathing Scene ::::::")
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
		Debug.Trace("NAKED DEFEAT calmquest: stage 10 :::::: Sex Scenes ::::::")		
		
		;for slavery we check if there are humans present, 
		if cfgqst.DefeatViaSlavery && ((cfgqst.DefeatTypeGeneral == "AreHumans") && !CheckRaperGroups()) && (!cfgqst.AbortAll) ; || !CheckCreatureGroups())
		Debug.trace("NAKED DEFEAT calmquest: NoActorsRestartSlavery ##RESTART##")
		Debug.Messagebox("Naked Defeat #ERROR Code 5500 - report to forum plz") 
		
		SetStage(1000)
			
		;checks if ANY rapers are valid
		elseif (CheckRaperGroups() || CheckCreatureGroups()) && (!cfgqst.AbortAll)

			if Allow_SexScenes == 0
			ScreenMessage("No fucking right now.")
			SetStage(14)
			elseif Allow_SexScenes > 0	;allow Sex to Start
			FuckingRound = 1
			StartRapeSequence()
			endif
		
		else	
		Debug.trace("NAKED DEFEAT calmquest: NoActorsAbort (B)")
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
Debug.Notification("NAKED DEFEAT calmquest: ERROR Stage 600, contact support :-(")
;DEAD END

EndFunction

bool ActorPresent = false

Function StripPlayer()
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
EndFunction
			
	Bool CalmRunning = False
			
Function CalmActor(actor ActorToCalm)			

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
ActorToCalm.ModAv("Health", 1000000)
NymTrace("ActorToCalm.ModAv(Health, 1000000)")
NymTrace("ActorToCalm.Health = "+ActorToCalm.GetAV("Health"))
endif 

ActorToCalm.EvaluatePackage()

ActorToCalm.StopCombat()		
ActorToCalm.StopCombatAlarm()	

ActorToCalm.RemoveFromAllFactions()
ActorToCalm.AddToFaction(CalmFaction)
ActorToCalm.AddToFaction(AllegianceFaction)
ActorToCalm.AddToFaction(DefeatFaction)
ActorToCalm.AddToFaction(NakedGhostFaction)

SPE_Actor.SetActorCalmed(ActorToCalm, true)
ActorToCalm.RemoveAllItems() ;STRIP ALL DAMNIT

;NymTrace("ActorAggressionA: "+ActorToCalm.GetActorValue("Aggression"))
;ActorToCalm.ModAv("Aggression", -2)
;NymTrace("ActorAggressionB: "+ActorToCalm.GetActorValue("Aggression"))

if ActorToCalm.IsAlerted()
ActorToCalm.SetAlert(False)
endif

ActorToCalm.StopCombat()		
ActorToCalm.StopCombatAlarm()	

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


Function OnStartRaperExpressions(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartNakedSexExpressions
	Debug.Trace("NAKED DEFEAT calmquest: OnRaperExpressions")
	bool ResetRapers = false
	bool RapersResetted = false 
	
	if cfgqst.IsNymrasGame()
	
		while !RapersResetted && cfgqst.ModEnabled
			
			if cfgqst.SexScene && !cfgqst.IsNymrasGame() 
			;when not Nymras game and sex scene running, no expressions! 
			else 
				if RapersACount > 0
					if RapersA[0]
					SetExpressionOnActor(RapersA[0], ResetRapers)
					endif 
					if RapersA[1]
					SetExpressionOnActor(RapersA[1], ResetRapers)
					endif 
					if RapersA[2]
					SetExpressionOnActor(RapersA[2], ResetRapers)
					endif 
					if RapersA[3]
					SetExpressionOnActor(RapersA[3], ResetRapers)
					endif 
				endif 
				
				if RapersBCount > 0
					if RapersB[0]
					SetExpressionOnActor(RapersB[0], ResetRapers)
					endif 
					if RapersB[1]
					SetExpressionOnActor(RapersB[1], ResetRapers)
					endif 
					if RapersB[2]
					SetExpressionOnActor(RapersB[2], ResetRapers)
					endif 
					if RapersB[3]
					SetExpressionOnActor(RapersB[3], ResetRapers)
					endif 
				endif 
							
				if RapersCCount > 0
					if RapersC[0]
					SetExpressionOnActor(RapersC[0], ResetRapers)
					endif 
					if RapersC[1]
					SetExpressionOnActor(RapersC[1], ResetRapers)
					endif 
					if RapersC[2]
					SetExpressionOnActor(RapersC[2], ResetRapers)
					endif 
					if RapersC[3]
					SetExpressionOnActor(RapersC[3], ResetRapers)
					endif 
				endif 
				
				Utility.Wait(5.0)
				
				;MAINTENANCE 
				if !ResetRapers && !cfgqst.IsDefeatRunning()
				;when defeatquest ends during loop, order reset of rapers
				ResetRapers = true 
				elseif ResetRapers
				;we get here the second time after ordering the reset, now we end the loop
				RapersResetted = true 
				endif 
			endif 

		endwhile 	
	endif 	
	
EndFunction

Function SetExpressionOnActor(actor akActor, bool reset)

	if reset
		akActor.ClearExpressionOverride()
		MfgConsoleFunc.ResetPhonemeModifier(akActor)
	else 
		int type = Utility.RandomInt(1,4)
		;int StrengthMax 	
		
		if type == 1
		akActor.SetExpressionOverride(0, 100)	;ANGER	
		elseif type == 2
		akActor.SetExpressionOverride(2, 100) ;HAPPY 
		elseif type == 3
		akActor.SetExpressionOverride(4, 100)	;SURPRISE
		elseif type == 4
		akActor.SetExpressionOverride(7, 100) ;NEUTRAL
		;elseif type == 5
		;PlayerRef.SetExpressionOverride(0, 100)	;ANGER
		;elseif type == 6
		;PlayerRef.SetExpressionOverride(6, 100)	;DISGUST
		endif	
		
		if cfgqst.SexScene 
		MfgConsoleFunc.SetPhoneme(akActor, 1, (Utility.RandomInt(60,100)))	;BIG AAH
		else
		MfgConsoleFunc.SetPhoneme(akActor, 1, (Utility.RandomInt(0,100)))	;BIG AAH
		endif 
		
	endif 

EndFunction 


Function OnStartNakedSexExpressions(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartNakedSexExpressions


	Debug.Trace("NAKED DEFEAT calmquest: OnStartNakedSexExpressions")
;loops while SexScene is active
;might have to reduce the time tick to 1 second for more response 
;OnStageStart we check if we are sucking or not (mouth available) 
;basically we need to call this whenever SexScene = true
	
if !cfgqst.IsNymrasGame()
;	NymMessage("FUCKING WHAT")
endif 	
	if cfgqst.IsNymrasGame()
	;Debug.Trace("NAKED DEFEAT calmquest: OnStartNakedSexExpressions 1")	
		while cfgqst.SexScene && cfgqst.ModEnabled
			;NymTrace("OnStartNakedSexExpressions 2")
			;NORMAL		
			if IsMouthAvailable == 1	;not sucking
			;NymTrace("OnStartNakedSexExpressions 3")
			cfgqst.Gagged = false 
			cfgqst.SetExpression(Utility.RandomInt(1,6))
	
			;SUCKING 	
			elseif IsMouthAvailable == 0 ;sucking 
			;NymTrace("OnStartNakedSexExpressions 4")
			cfgqst.Gagged = true 
			cfgqst.SetExpression(1)
			endif 
			
		SendModEvent("Moan") 	
		
		Int WaitTime = Utility.RandomInt(3,6)
		
		Utility.Wait(WaitTime)

		endwhile 
	;NymTrace("OnStartNakedSexExpressions 10")	
	IsMouthAvailable = 1
	cfgqst.Gagged = false ;<<<<--- sigh 
	cfgqst.ResetExpressions()	
		
	endif 
			
EndFunction 

Function RemoveAggressorOutfits(actor akActor, int num)
	;NymTrace("RemoveAggressorOutfits")
	;akFormlist.Revert()

	AggressorClothesList[num] = (akActor.GetWornForm(0x00000004)) as armor	;32 - BODY
	
	if AggressorClothesList[num]
	akActor.RemoveItem(AggressorClothesList[num])
	endif 
	
EndFunction

Function AddAggressorOutfits(actor akActor, int num)
	;NymTrace("AddAggressorOutfits")
	if AggressorClothesList[num]
	akActor.AddItem(AggressorClothesList[num])	;32 - BODY	;TEST
	;akActor.Equipitem(AggressorClothesList[num] ,true)	;32 - BODY
	;akActor.EquipItemEx(AggressorClothesList[num], 0, false ,true)
	akActor.EquipItemEx(AggressorClothesList[num], 0, true ,true)
	
		if cfgqst.IsNymrasGame()
		Form a = akActor.GetWornForm(0x00000004)
			if a
		;	NymTrace("Actor Clothed")
			else 
			NymTrace("#ERROR Actor Naked")
			endif 
		endif 
	;Ralof.EquipItemEx(DaggerProperty, 2, false, false )
	endif 
	
EndFunction

Function RemoveAggressorWeapons(actor akActor, int num)

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
			
Function Calm(Bool value = true, Int Round = 1)			;CALM FUNCTION - seems to select actors in the area and check for what they are			#calm

	CalmRunning = True

	if value
		Debug.Trace("NAKED DEFEAT calmquest: Calm ON")
	else
		Debug.Trace("NAKED DEFEAT calmquest: Calm OFF")
	endif
		
	if !cfgqst.AllowCreatures	;needs to MOVE
	OnlyAnimals = true
	endif

	Actor a									;defines that actors are "a" (number of actors)
	
	Int i = ActorArray.Length		
	;lengt 31 (all the actors from the quest)
	
	Rapers = new Actor[4]					
	Rapers[0] = None						
	Rapers[1] = None						
	Rapers[2] = None						
	Rapers[3] = None	
	RaperCount = 0
	
	Victims = new Actor[4]					
	Victims[0] = None
	Victims[1] = None
	Victims[2] = None
	Victims[3] = None
	VictimCount = 0
		
	RapersMale = 0
	RapersFemale = 0
	RapersCreatures = 0
			
	;FOLLOWER DIRECT ADDITION
	;if cfgqst.IsNymrasGame()
	if folqst.Actor_Follower01 && (folqst.Actor_Follower01.GetDistance(cfgqst.PlayerRef) <= 10000) 
		if !Victims[0]
			Victims[0] = folqst.Actor_Follower01	
			Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower01)												
			Victims[0].AddToFaction(BusyFaction)
			NeedARaper = true
			CalmActor(Victims[0])
			Victimcount +=1
		endif 
		;if Victims[0]
		;ScreenMessage("Follower1 is Victims[0] now")
		;endif
	endIf
	if folqst.Actor_Follower02 && (folqst.Actor_Follower02.GetDistance(cfgqst.PlayerRef) <= 10000) 

		if !Victims[1]
			Victims[1] = folqst.Actor_Follower02
			Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower02)
			Victims[1].AddToFaction(BusyFaction)
			CalmActor(Victims[1])
			NeedAnotherRaper = true
			Victimcount +=1
		endif 
				;if Victims[1]
		;ScreenMessage("Follower2 is Victims[1] now")
		;endif
	endif
	;/
	if folqst.Actor_Follower03 && (folqst.Actor_Follower03.GetDistance(cfgqst.PlayerRef) <= 10000) 
	Victims[2] = folqst.Actor_Follower03
	Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower03)
	Victims[2].AddToFaction(BusyFaction)
	CalmActor(Victims[2])
	;NeedAnotherRaper = true
	Victimcount +=1
		;if Victims[1]
		;ScreenMessage("Follower2 is Victims[1] now")
		;endif
	endif
	if folqst.Actor_Follower04 && (folqst.Actor_Follower04.GetDistance(cfgqst.PlayerRef) <= 10000) 
	Victims[3] = folqst.Actor_Follower04
	Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+folqst.Name_Follower04)
	Victims[3].AddToFaction(BusyFaction)
	CalmActor(Victims[3])
	;NeedAnotherRaper = true
	Victimcount +=1
		;if Victims[1]
		;ScreenMessage("Follower2 is Victims[1] now")
		;endif
	endif
	;endif
	/;
	
	Int a_TempGender
	Float a_TempDistance
	String a_TempName = "empty"
	
	; ::::::::: CALM (ON) :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::		
	if value	
	
		AggressorClothesList = new Armor[24]	
		AggressorWeaponsA1List = new Weapon[24]
		AggressorWeaponsA2List = new Weapon[24]
		AggressorWeaponsBList = new Weapon[24]		
		AggressorShieldsList = new Armor[24]	

		Debug.Trace("NAKED DEFEAT calmquest: #Calm (ON) #ACTOR# LIST:")		
		while i 	 												
			i -= 1																
			a = ActorArray[i].GetReference() as Actor	;makes the References into Actors	
	
			if a 	

				;get Gender here 	
				a_TempGender = (SexLab.GetGender(a))
				a_TempDistance = a.GetDistance(cfgqst.PlayerRef)

				a_TempName = cfgqst.GetActorName(a)
			

				Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN (ON) ACTOR#"+i+": "+a_TempName+" Gender:"+a_TempGender+" Distance:"+a_TempDistance)	;#DEBUG

			;	if cfgqst.ShowDebugMessages	
			;	Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN (ON) DEBUG ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;#DEBUG
			;	else
			;	Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN (ON) ACTOR#"+i+": "+cfgqst.GetLeveledActorBaseName(a))	;#DEBUG
			;	endif
			
				if !ActorPresent
				ActorPresent = true
				endif
				;/
				;--------------------- REMOVE --------------------;	
				;>>>> FOLLOWER SORTING <<<<<<<	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<			 			
				if !cfgqst.IsNymrasGame() && ((i == 30) || (i == 29) || (i == 28) || (i == 27) || (i == 26))		;#victims
						
					;test: direct addition of followers

					if IsFollower(a)	
						if cfgqst.ShowDebugMessages
						Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: Is3DLoaded: "+a.Is3DLoaded())
						Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: Is3DLoaded actor: "+a.GetBaseObject().GetName())
						endif
						
						if (cfgqst.PlayerRef.GetDistance(a) <= (Distance+10000)) ;&& (a.Is3DLoaded())	;we sometimes dont catch the followers here (too far way?)
						Victims[Victimcount] = a	
						Victimcount +=1
						;Debug.Notification("This follower is now a victim: "+a.GetBaseObject().GetName())
						Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is now a victim: "+a.GetBaseObject().GetName())												
						a.AddToFaction(BusyFaction)
						else
						Debug.Notification("This follower is too far away: "+a.GetBaseObject().GetName())
						Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN: This follower is too far away: "+a.GetBaseObject().GetName())
						endif
					else ;noFollower
					Debug.Trace("NAKED DEFEAT calmquest: #ERROR actor should be follower but is NOT detected by IsFollower: "+a.GetBaseObject().GetName())
					endif
													
					;tells "SortActors()" to split groups to match follower count (2 Followers -> 3 Groups)
					if (VictimCount > 0)	
										
						if !NeedARaper && (VictimCount == 1)		
						NeedARaper = true
							
						elseif NeedARaper && (VictimCount == 2)
						NeedAnotherRaper = true
						endif
					endif	

					;>>>>>>>>>>>> SexQuest Calm (Followers) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
					
					CalmActor(a)
					/;
					
					;/
					a.StopCombat()		
					a.StopCombatAlarm()	
					
					;main DefeatFaction (for debug, maybe not necessary)
					if !a.IsInFaction(DefeatFaction)
					a.AddToFaction(DefeatFaction)
					endif
					
					;backup calmfaction (test)
					if !a.IsInFaction(CalmFaction)
					a.AddToFaction(CalmFaction)
					endif
					
					;Followers cant be whippers for now, but maybe add an option THAT they can be (MCM Followers join rapers)
					
					if a.IsAlerted()
						a.SetAlert(False)
					endif
					
					;cant hurt doing it twice
					a.StopCombat()		
					a.StopCombatAlarm()	
					/;
					;--------------------------------------------------------------------------	
	
				;Enemies 			
				if (a != Victims[0]) && (a != Victims[1])
				
					; BETA >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
					;get Voyeurs. They will stand and masturbate next to the PC
					if cfgqst.IsNymrasGame()
				
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
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: VoyeursA #"+VoyeursACount+": "+cfgqst.GetActorInfo(VoyeursA[VoyeursACount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: VoyeursA #"+VoyeursACount+": "+((VoyeursA[VoyeursACount]).GetBaseObject().GetName()))
									endif
								VoyeursACount += 1
								;cfgqst.DefeatType = "Guards"
							endif
						endif
					endif
					
					;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

					
					; ------ GUARD HANDLING ------ ;
					;can probably be removed now?
					;looking for Guards: IF is Guard and in combat with player -> send terminate
					if (Round == 1) && cfgqst.IsGuard(a) && (cfgqst.PlayerRef.GetDistance(a) <= Distance) ;&& (a.GetCombatTarget() == cfgqst.PlayerRef) 		
					
						;Sort guards into their own Group
						if cfgqst.CivilRapeRunning || cfgqst.DefeatViaSlavery
				
							if RapersACount == 0
							RapersA = new Actor[4]					
							RapersA[0] = None						
							RapersA[1] = None						
							RapersA[2] = None						
							RapersA[3] = None	
							RapersACount = 0
							endif
				
							if RapersACount < 4
								;if guard is male or is female AND females are allowed as rapers
								if (a_TempGender == 0) || ((a_TempGender == 1) && cfgqst.FemalesAllowed)
								
									RapersA[RapersACount] = a	 		
										if cfgqst.ShowDebugMessages
										Debug.Trace("NAKED DEFEAT calmquest: GUARD RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
										else
										Debug.Trace("NAKED DEFEAT calmquest: GUARD RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
										endif
									RapersACount += 1
									cfgqst.DefeatType = "Guards"
								endif
							endif
							
						else
						;do nothing
						;IsGuardEndDefeat = true
						endif
						
						
						
					;OMG THIS IS WEIRD 	
					elseif (Round == 1) && !cfgqst.AllowCreatures && (a_TempGender < 2) 	;looking for Humans
						if cfgqst.PlayerRef.GetDistance(a) <= Distance							;looking if Humans are close enough
						OnlyAnimals = false														;if humans there and close -> no cancel defeat		
						endif
					endif
							
							
					if a == folqst.Actor_Follower01 || a == folqst.Actor_Follower02		
					;do nothign atm
					else 		
						;CountActors 
						if a_TempGender == 0 
						RapersMale += 1
						elseif a_TempGender == 1
						RapersFemale += 1
						elseif a_TempGender == 2
						RapersCreatures += 1
						endif 
						
											;add humanoid actors to potential whippers
						if cfgqst.DefeatWhipProb > 0
							if a_TempGender < 2 ;cfgqst.IsHumanoid(a) && !a.IsInFaction(WhippingFaction)
								a.AddToFaction(WhippingFaction)
								WhipperFound = true
							else
								String TempRace = a.GetRace().GetName()

								if (TempRace == "Draugr") || (TempRace == "Skeleton") || (TempRace == "Spriggan") || (TempRace == "Hagraven") || (TempRace == "Dremora")
								a.AddToFaction(WhippingFaction)
								WhipperFound = true
								;NymTrace("Calm WhipperSelect: Race is "+TempRace)
								;#TODO Check Rieklings (their Race has no name)
								endif 
							endif 
						endif
												;strip
						if cfgqst.IsNymrasGame()
						NymTrace("RemoveAggressorStuff: "+a_TempName)
						RemoveAggressorOutfits(a, i) 
						RemoveAggressorWeapons(a, i) 
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
					
					;cant hurt doing it twice
					a.StopCombat()		
					a.StopCombatAlarm()	
					;--------------------------------------------------------------------------
				endif ;FOLLOWERCHECK
			endif
		endwhile
		
		;REMOVE -------------------------------------------------------------
		;IMPORTANT: bool victims... there might be a better solution... :( 
	;/
		NO LONGER IN USE 
		if Victimcount > 0
			if Victimcount == 4
			victims3 = true
			victims2 = true
			victims1 = true
			victims0 = true
			elseif Victimcount == 3
			victims2 = true
			victims1 = true
			victims0 = true
			elseif Victimcount == 2
			victims1 = true
			victims0 = true
			elseif Victimcount == 1
			victims0 = true
			endif
		endif
		/;
			
		calming = false
		needAwhipper = true
	;	Debug.Trace("NAKED DEFEAT calmquest: calming: "+calming)
	
	;CALM(OFF) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	else	

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
				Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN (OFF) ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;#DEBUG
				else
				Debug.Trace("NAKED DEFEAT calmquest: #CALM SCAN (OFF)ACTOR#"+i+": "+cfgqst.GetActorName(a))	;#DEBUG
				endif

			;	if IsFollower(a)
				;	a.PlayIdle(KnockdownIdles[2])
			;	endif
			
						;strip
				if cfgqst.IsNymrasGame()
				AddAggressorOutfits(a, i) 
				AddAggressorWeapons(a, i) 
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
		

	
	endif
	
	;RemoveSpawnedRapers()
	
	CalmRunning = False

EndFunction


;-----------------------------------------------------------------------------------------------------------------------------------------

Function RemoveSpawnedRapers()
;THIS DOES NOT WORKKKKK!K!K!K!K

	;	NymMessage("RapersACount:"+RapersACount+" RapersBCount:"+RapersBCount+" RapersCCount:"+RapersCCount+" CreaturesACount "+CreaturesACount+" CreaturesBCount "+CreaturesBCount+" CreaturesCCount "+CreaturesCCount)
		;RapersA		
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
		;CreaturesA	
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
		;CreaturesB
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
		;CreaturesC
		if CreaturesC[0] && CreaturesC[0].IsInFaction(NakedGhostFaction)	
		CreaturesC[0].disable()
		CreaturesC[0].delete()
		endif 
		if CreaturesC[1]  && CreaturesC[1].IsInFaction(NakedGhostFaction)	
		CreaturesC[1].disable()
		CreaturesC[1].delete()
		endif 
		if CreaturesC[2] && CreaturesC[2].IsInFaction(NakedGhostFaction)	
		CreaturesC[2].disable()
		CreaturesC[2].delete()
		endif 
		if CreaturesC[3] && CreaturesC[3].IsInFaction(NakedGhostFaction)	
		CreaturesC[3].disable()
		CreaturesC[3].delete()
		endif 	
;/
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

Function CalmSpawnedActorGroup()
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
CreaturesCBlocked = true
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
CreaturesFBlocked = true
ResetSpawnedActors()
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
		;DREMORA (HUMANS)
		elseif (Spawn == 4) 		
		RandomSpawnType = "Dremora"
		RandomSpawnCount = Utility.RandomInt(2,4)
		SpawnedGender = 0
		;GARGOYLES 
		elseif (Spawn == 5) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts 			
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

	iTempDistance = 500

	GroupCount = 3 ;--- always spawn 3 groups, even when we are alone (more variety)
		if GroupCount > 0
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersA()
			elseif SpawnedGender == 2
			FillCreaturesA()
			endif
		endif 
		if GroupCount > 1
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersB()
			elseif SpawnedGender == 2
			FillCreaturesB()
			endif
		endif
		if GroupCount > 2
		GetRandomMonsterType(false) ;Fills String RandomSpawnType and RandomSpawnCount
		SpawnActors(RandomSpawnType, RandomSpawnCount, iTempDistance)
			if SpawnedGender < 2		;Important Extra Step since we dont know if spawned actors are Creatures or Humans
			FillRapersC()
			elseif SpawnedGender == 2
			FillCreaturesC()
			endif
		endif
		
	elseif (sScenario == "Afterlife")		
	;spawns FULL set of Rapers and considers Followers
	;GroupCount = GroupCount + VictimCount

	iTempDistance = -800

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
	elseif (sScenario == "Hagraven Extra") ;&& cfgqst.NymSpawning
		;GetRandomExtraRaperType()
		SpawnActors("Forsworn", Utility.RandomInt(1,4), 250)
		FillRapersC()	
		SpawnActors("Spriggan Burnt", 1, 250)
		FillCreaturesF()			
		
		
		
		
	endif 

EndFunction			
	
bool spawned_END = false	


;ActorBase function GetActorBase()
;	return GetBaseObject() as ActorBase
;EndFunction
	
Function SpawnActors(String sType, int iRaperCount, int iDistance)			;#lib
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
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F97, "Skyrim.esm"), 1)		;LvlBanditGhostMelee2HMale
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F98, "Skyrim.esm"), 1)		;LvlBanditGhostMeleeBerserkerMale
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F99, "Skyrim.esm"), 1)		;LvlBanditGhostMeleeTankMale
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Sabrecats"		;Groupsize 1-2

	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0003D278, "Skyrim.esm"), 1)		;Sabrecat Ravenscar - TEST
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0003D278, "Skyrim.esm"), 1)		;Sabrecat Ravenscar Ambush- TEST
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Spriggan Burnt"		;Groupsize 1

	iRaperCount = 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04035E6E, "Dragonborn.esm"), 1)		;DLC2EncSprigganBurnt
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

	
elseif sType == "Bears"		;Groupsize 1-2

	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00042265, "Skyrim.esm"), 1)		;LVLBearAll
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7A4, "Skyrim.esm"), 1)		;LVLBearNoTSnow
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif


elseif sType == "Deer"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000ABEE0, "Skyrim.esm"), 1)		;Deer
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000ABEE0, "Skyrim.esm"), 1)		;Deer
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Rieklings"		;Groupsize 2-4
	;iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0401B650, "Dragonborn.esm"), 1)		;Riekling Missile
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0401B651, "Dragonborn.esm"), 1)		;Riekling Missile
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040208D8, "Dragonborn.esm"), 1)		;Riekling Thirsk Melee
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0401B656, "Dragonborn.esm"), 1)		;Riekling Melee
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Rieklings Mounted"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04025E18, "Dragonborn.esm"), 1)		;LVLMountedRiekling
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04025E11, "Dragonborn.esm"), 1)		;LVLMountedRiekling BOSS
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Ashhoppers"		;Groupsize 2-4
	;iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E89, "Dragonborn.esm"), 1)		;EncAshhopperExtra
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Boars"		;Groupsize 2-4
	iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0403294D, "Dragonborn.esm"), 1)		;DLC2EncoarWild
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0403294D, "Dragonborn.esm"), 1)		;DLC2EncoarWild
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0403294D, "Dragonborn.esm"), 1)		;DLC2EncoarWild
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0403294D, "Dragonborn.esm"), 1)		;DLC2EncoarWild
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Wolves"		;Groupsize 2-4
	iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B83C1, "Skyrim.esm"), 1)		;LvlWolves
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Skeletons"		;Groupsize 2-4			
	iRaperCount = Utility.RandomInt(2,4)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00052543, "Skyrim.esm"), 1)		;SKELETONS MELEE 2H
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Gargoyles"		;Groupsize 1-2
	iRaperCount = Utility.RandomInt(1,2)
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMelee1HMale
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMelee2HMale
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMeleeBerserkerMale
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		;LvlBanditGhostMeleeTankMale
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
elseif sType == "DragonPriests"		;Groupsize 1
	iRaperCount = 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C8, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcFire
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C9, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcShock
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008DC3E, "Skyrim.esm"), 1)		;EncDragonPriestStaff
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008DC3E, "Skyrim.esm"), 1)		;EncDragonPriestStaff
	SpawnedActor[31] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "CorruptedShadeSkeletons"		;Groupsize 1-4

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB870, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB876, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EBA05, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000F5BB9, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Ashspawn"		;Groupsize 1-4

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "DeathHounds"	;Groupsize 1-4

	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif


elseif sType == "Atronach Frost"	;Groupsize 1 
	
	iRaperCount	= 1	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA7, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Atronach Storm"	;Groupsize 1 
	
	iRaperCount	= 1	
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Seekers"	;Groupsize 1 
	
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Lurkers"		;Groupsize 1  

	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Dremora"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010CCEA, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010CCEA, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Orcs"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9447, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9447, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00062128, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00062128, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Forsworn"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0004430A, "Skyrim.esm"), 1)		;Forsworn Briarheart Magic
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00043BEE, "Skyrim.esm"), 1)		;Forsworn Forager Melee
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00044263, "Skyrim.esm"), 1)		;Forsworn Looter Melee
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00044287, "Skyrim.esm"), 1)		;Forsworn Ravager Melee
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif		
	
elseif sType == "Couriers"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00039F83, "Skyrim.esm"), 1)		;Courier Whiterun
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065EE, "Skyrim.esm"), 1)		;Courier WoodElf
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065EF, "Skyrim.esm"), 1)		;Courier Nord
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001065E0, "Skyrim.esm"), 1)		;Courier Imperial
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Farmers"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000BD75E, "Skyrim.esm"), 1)		;Farmer Male
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x001034E4, "Skyrim.esm"), 1)		;Farmer Male
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00106A61, "Skyrim.esm"), 1)		;Farmer Male Twins
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00106A61, "Skyrim.esm"), 1)		;Farmer Male Twins
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Nobles"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00102D62, "Skyrim.esm"), 1)		;Noble Male
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92D, "Skyrim.esm"), 1)		;Nobleman
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A930, "Skyrim.esm"), 1)		;Old Noble
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00102D62, "Skyrim.esm"), 1)		;Noble Male
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Redguards"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92F, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Bandits"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00015BE5, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0BC, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Khajiits"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105553, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00109A7F, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105551, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00103515, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Argonians"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105554, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105561, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010612D, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105552, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Canines"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	
	
elseif sType == "Skeevers"		;Groupsize 1-4 

	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AB7, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif		

elseif sType == "Goat"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0004359C, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif

elseif sType == "Horse"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 1
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[1] = TempAnActor as actor
	SpawnedActor[1].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 2
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[2] = TempAnActor as actor
	SpawnedActor[2].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	if iRaperCount > 3
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)		;
	SpawnedActor[3] = TempAnActor as actor
	SpawnedActor[3].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

elseif sType == "Magic Anomaly"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B6F94, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif
	
elseif sType == "Atronach Flame"		;Groupsize 1
	iRaperCount	= 1
	if iRaperCount > 0
	TempAnActor	= cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0009F33E, "Skyrim.esm"), 1)		;
	SpawnedActor[0] = TempAnActor as actor
	SpawnedActor[0].Moveto(cfgqst.PlayerRef, iDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), iDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	endif	

endif 

CalmSpawnedActorGroup()

EndFunction 


;#follower handling
float Victim_00_speed = 0.0
Bool NeedRapersForSlavery
Bool NeedCreaturesForSlavery

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
Debug.Trace("NAKED DEFEAT calmquest: SortActors (START)")
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
	
	;Bool RapersABlocked = false
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
	
	RapersB = new Actor[4]					
	RapersB[0] = None						 
	RapersB[1] = None						 
	RapersB[2] = None						 
	RapersB[3] = None	
	RapersBCount = 0
	;Bool RapersBBlocked = false
		
	RapersC = new Actor[4]					
	RapersC[0] = None						 
	RapersC[1] = None						 
	RapersC[2] = None						 
	RapersC[3] = None	
	RapersCCount = 0
	;Bool RapersCBlocked = false
	
	CreaturesA = new Actor[4]					
	CreaturesA[0] = None						 
	CreaturesA[1] = None						 
	CreaturesA[2] = None						 
	CreaturesA[3] = None	
	CreaturesACount = 0
	;Bool CreaturesABlocked = false
	
	CreaturesB = new Actor[4]					
	CreaturesB[0] = None						
	CreaturesB[1] = None						
	CreaturesB[2] = None						
	CreaturesB[3] = None	
	CreaturesBCount = 0
	;Bool CreaturesBBlocked = false
	
	CreaturesC = new Actor[4]					
	CreaturesC[0] = None						 
	CreaturesC[1] = None						 
	CreaturesC[2] = None						 
	CreaturesC[3] = None	
	CreaturesCCount = 0
	;Bool CreaturesCBlocked = false
	
	CreaturesD = new Actor[4]					
	CreaturesD[0] = None						 
	CreaturesD[1] = None						 
	CreaturesD[2] = None						 
	CreaturesD[3] = None	
	CreaturesDCount = 0
	;Bool CreaturesDBlocked = false
	
	CreaturesE = new Actor[4]					
	CreaturesE[0] = None						 
	CreaturesE[1] = None						 
	CreaturesE[2] = None						 
	CreaturesE[3] = None	
	CreaturesECount = 0
	;Bool CreaturesEBlocked = false
	
	CreaturesF = new Actor[4]					
	CreaturesF[0] = None						 
	CreaturesF[1] = None						 
	CreaturesF[2] = None						 
	CreaturesF[3] = None	
	CreaturesFCount = 0
	;Bool CreaturesFBlocked = false
	
	SpawnedActor = new Actor[4]					
	SpawnedActor[0] = None						 
	SpawnedActor[1] = None						 
	SpawnedActor[2] = None						 
	SpawnedActor[3] = None	
	
	
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
if NewSpawnSystem		;#spawn1
;this spawns the groups needed, calms them and sorts them into RapersX and CreaturesX 
	
	
	;SLAVE OWNERS 
	if NeedRapersForSlavery
	SpawnActorGroups("Slave Owners")	;improve to fit scenario better
	;NymMessage("Spawn Extra Rapers")
	
	;AFTERLIFE FOWL CREATURES
	elseif cfgqst.DefeatTypeScenario == "Afterlife"
	;NymMessage("Spawn Afterlife")
	SpawnActorGroups("Afterlife")
	;FAST TRAVEL FOWL CREATURES
	elseif cfgqst.DefeatTypeScenario == "FastTravel"
	;NymMessage("Spawn FastTravel")
	SpawnActorGroups("FastTravel")
	
	;EXTRA RAPERS / CREATURES for Human Scenarios
	elseif cfgqst.DefeatTypeGeneral == "AreHumans" && cfgqst.DefeatType != "Undead" && cfgqst.DefeatType != "Vampires" && cfgqst.DefeatType != "Necromancers"
		
		if NeedRapersForSlavery
		NymMessage("Spawn Slave Owners")
		SpawnActorGroups("Slave Owners")	
		elseif cfgqst.NymSpawning

			if NeedCreaturesForSex && D100(75)
			;NymTrace("Spawn START 1")
			;NymMessage("Spawn Extra Animals")
			SpawnActorGroups("Extra Animals")
			endif 	
			Utility.Wait(1.0)
			if (RapersMale < 3) && D100(25)
			;NymTrace("Spawn START 2")
			;NymMessage("Spawn Extra Rapers")
			SpawnActorGroups("Extra Rapers")	
			endif
		endif 
	
	;EXTRA FORSWORN FOR HAGRAVEN SCENARIO
	elseif cfgqst.DefeatType == "Hagravens"
	NymMessage("Spawn Extra Rapers for Hagravens")
	SpawnActorGroups("Hagravens Extra")
	
	elseif cfgqst.DefeatType == "Spriggans"
	NymMessage("Spawn Extra Rapers for Spriggans")
	SpawnActorGroups("Extra Wild Animals")	
	
	endif 

	;#####################################################################################################################################################################
	
else 
		
	; >>>>>> SPAWN >>> "Fast Travel" or "AfterLife" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	if (cfgqst.DefeatTypeScenario == "FastTravel") || (cfgqst.DefeatTypeScenario == "Afterlife")
	Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors for FastTravel/Afterlife)")	
	;cfgqst.DefeatType == "FastTravelPartners"	 <--- no longer needed since we skip "AllowActor(x)" 
	String FastTravelSpawn 	
	int Spawn = Utility.RandomInt(1,12)	
	ActorsSpawned = true
	;if cfgqst.IsNymrasGame()	
	;Spawn = 6
	;endif	
		;DRAGONPRIESTS --- done 
		if (Spawn == 1) && cfgqst.AllowCreatures && cfgqst.AllowUndead	
		FastTravelSpawn = "DragonPriests"

		;STORMATRONACH -- done 
		elseif (Spawn == 2) && cfgqst.AllowCreatures && cfgqst.AllowElementalsMale
		FastTravelSpawn = "StormAtronach"
			
		;CORRUPTED SHADE SKELETONS --- done 	
		elseif (Spawn == 3) && cfgqst.AllowCreatures && cfgqst.AllowUndead 
		FastTravelSpawn = "CorruptedShadeSkeletons"
			
		;DREMORA --- done 
		elseif (Spawn == 4) 		
		FastTravelSpawn = "Dremora"
		
		;GARGOYLES --- Done (Dawngaurd)
		elseif (Spawn == 5) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts 			
		FastTravelSpawn = "Gargoyles"
	
		;ASHSPAWN --- Done (Dawngaurd)
		elseif (Spawn == 6) && cfgqst.AllowCreatures && cfgqst.AllowUndead 			
		FastTravelSpawn = "Ashspawn"
		
		;SEEKERS --- Done 
		elseif (Spawn == 7) && cfgqst.AllowCreatures && cfgqst.AllowTentacleStuff
		FastTravelSpawn = "Seekers"
			
		;DEATHHOUNDS --- Done 	
		elseif (Spawn == 8) && cfgqst.AllowCreatures && cfgqst.AllowCanines
		FastTravelSpawn = "DeathHounds"	
						
		;LURKERS --- Done 	
		elseif (Spawn == 9) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts
		FastTravelSpawn = "Lurkers"	

		;Atronach Frost	
		;elseif (Spawn == 9) && cfgqst.AllowCreatures && cfgqst.AllowHumanoidBeasts
		;FastTravelSpawn = "Atronach Frost"	

		;VAMPIRELORDS --- missing 	(DLC?)
		elseif (Spawn == 22) && cfgqst.AllowCreatures && cfgqst.AllowUndead		
		FastTravelSpawn = "VampireLords"
				
		;HUMAN GHOSTS --- done 	
		else 
		FastTravelSpawn = "HumanGhosts"
		endif 
		
		if cfgqst.IsNymrasGame() && cfgqst.DebugPunishmentType > 0
		FastTravelSpawn = "Dremora" ;CorruptedShadeSkeletons HumanGhosts
		endif 
		
		;HUMANS GHOSTS - Fast Travel
		if FastTravelSpawn == "HumanGhosts"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors HumanGhosts)")	
				
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F96, "Skyrim.esm"), 1)		;LvlBanditGhostMelee1HMale
			RapersA[0] = TempAnActor as actor
			RapersA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F97, "Skyrim.esm"), 1)		;LvlBanditGhostMelee2HMale
			RapersA[1] = TempAnActor as actor
			RapersA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)

			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F98, "Skyrim.esm"), 1) 	;LvlBanditGhostMeleeBerserkerMale
			RapersA[2] = TempAnActor as actor
			RapersA[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F99, "Skyrim.esm"), 1) 	;LvlBanditGhostMeleeTankMale
			RapersA[3] = TempAnActor as actor
			RapersA[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			RapersACount = 4
			
			if !TempAnActor
			Debug.Messagebox("#ERROR no actors spawned") 
			endif 
			
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F96, "Skyrim.esm"), 1)		;LvlBanditGhostMelee1HMale
			RapersB[0] = TempAnActor as actor
			RapersB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
						
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F97, "Skyrim.esm"), 1)		;LvlBanditGhostMelee2HMale
			RapersB[1] = TempAnActor as actor
			RapersB[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			RapersBCount = 2
			endif
			
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B1F96, "Skyrim.esm"), 1)		;LvlBanditGhostMelee1HMale
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 1
			endif
				
		;GARGOYLES - Fast Travel
		elseif FastTravelSpawn == "Gargoyles"		 
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors Gargoyles)")		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 2	
			;CreaturesARace = "Gargoyles"
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 1	
			;CreaturesARace = "Gargoyles"			
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0200A2CC, "Dawnguard.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
		
		;DRAGONPRIESTS - Fast Travel
		elseif FastTravelSpawn == "DragonPriests"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors DragonPriests)")	
			;alternate one 00023A93 
			;PLAYER 
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C8, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcFire
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 1
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008A1C9, "Skyrim.esm"), 1)		;EncDragonPriestAmbushSarcShock	
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 1				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0008DC3E, "Skyrim.esm"), 1)			;EncDragonPriestStaff
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
		
		;CORRUPTED SHADE SKELETONS - Fast Travel 
		elseif FastTravelSpawn == "CorruptedShadeSkeletons"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors CorruptedShadeSkeletons)")				
			;PLAYER 	
				
			float fDistance = 300.0
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB870, "Skyrim.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)
			if CreaturesA[0] 
			CreaturesACount += 1
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[0] = 1")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[0] = none")
			endif 
			
			if Sexlab.IsValidActor(CreaturesA[0] )
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[0] Sexlab VALID")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[0] Sexlab INVALID")
			endif 
			
			if CreaturesA[0].Is3DLoaded()
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[0] Is3DLoaded()")
			endif 
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EB876, "Skyrim.esm"), 1)		
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)
			if CreaturesA[1] 
			CreaturesACount += 1
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[1] = 1")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[1] = none")
			endif 
			
			if Sexlab.IsValidActor(CreaturesA[1] )
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[1] Sexlab VALID")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[1] Sexlab INVALID")
			endif 
			
			if CreaturesA[1].Is3DLoaded()
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[1] Is3DLoaded()")
			endif 
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000EBA05, "Skyrim.esm"), 1)		
			CreaturesA[2] = TempAnActor as actor
			CreaturesA[2].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)
			if CreaturesA[2] 
			CreaturesACount += 1
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[2] = 1")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[2] = none")
			endif 
				
			if Sexlab.IsValidActor(CreaturesA[2] )
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[2] Sexlab VALID")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[2] Sexlab INVALID")
			endif 
			
			if CreaturesA[2].Is3DLoaded()
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[2] Is3DLoaded()")
			endif 
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000F5BB9, "Skyrim.esm"), 1)		
			CreaturesA[3] = TempAnActor as actor
			CreaturesA[3].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)	
			if CreaturesA[3] 
			CreaturesACount += 1
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[3] = 1")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[3] = none")
			endif 
			
			if Sexlab.IsValidActor(CreaturesA[3] )
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[3] Sexlab VALID")
			else 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[3] Sexlab INVALID")
			endif 
			
			if CreaturesA[3].Is3DLoaded()
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesA[3] Is3DLoaded()")
			endif 
			
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000F5BBA, "Skyrim.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)
				if CreaturesB[0] 
				CreaturesBCount += 1
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesB[0] = 1")
				else 
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesB[0] = none")
				endif 
				
				if Sexlab.IsValidActor(CreaturesB[0] )
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesB[0] Sexlab VALID")
				else 
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesB[0] Sexlab INVALID")
				endif 
				
				if CreaturesB[0].Is3DLoaded()
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesB[0] Is3DLoaded()")
				endif 
			
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000F5BBB, "Skyrim.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - fDistance, abMatchRotation = false)
				if CreaturesC[0] 
				CreaturesCCount += 1
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesC[0] = 1")
				else 
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesC[0] = none")
				endif 	

				if Sexlab.IsValidActor(CreaturesC[0] )
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesC[0] Sexlab VALID")
				else 
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesC[0] Sexlab INVALID")
				endif 
				
				if CreaturesC[0].Is3DLoaded()
				Debug.Trace("NAKED DEFEAT calmquest: SortActors (CreaturesC[0] Is3DLoaded()")
				endif 
				
			endif

		;ASHSPAWN - Fast Travel 	
		elseif FastTravelSpawn == "Ashspawn"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors Ashspawn)")					
			;PLAYER 
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Dragonborn.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Dragonborn.esm"), 1)		
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Skyrim.esm"), 1)		
			CreaturesA[2] = TempAnActor as actor
			CreaturesA[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Skyrim.esm"), 1)		
			CreaturesA[3] = TempAnActor as actor
			CreaturesA[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)	
			CreaturesACount = 4
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BC, "Skyrim.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Skyrim.esm"), 1)		
			CreaturesB[1] = TempAnActor as actor
			CreaturesB[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 2				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x040322BE, "Skyrim.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
			
		;DEATHHOUNDs - Fast Travel 	
		elseif FastTravelSpawn == "DeathHounds"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors DeathHounds)")		
			;PLAYER 
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesA[2] = TempAnActor as actor
			CreaturesA[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesA[3] = TempAnActor as actor
			CreaturesA[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)	
			CreaturesACount = 4
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)		
			CreaturesB[1] = TempAnActor as actor
			CreaturesB[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 2				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x02017EC2, "Dawnguard.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
		
		;VAMPIRELORDS - Fast Travel (MISSING) 
		elseif FastTravelSpawn == "VampireLords"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors VampireLords)")
		
		;STORM ATRONACH - Fast Travel
		elseif FastTravelSpawn == "StormAtronach"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors StormAtronach)")
			;PLAYER  ;alternate 0x0004E944 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 1
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 1				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023AA8, "Skyrim.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
		
		;SEEKERS - Fast Travel
		elseif FastTravelSpawn == "Seekers"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors Seekers)")
			;alternative ;SEEKER (Dragonborn)			;0402856B Dragonborn.esm
			;PLAYER 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;EncDragonPriestAmbushSarcFire
			if !TempAnActor
			Debug.Messagebox("#ERROR Seeker not found. Report to Forum") 
			endif 
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 1
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)		;EncDragonPriestAmbushSarcShock	
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 1				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x04028E88, "Dragonborn.esm"), 1)			;EncDragonPriestStaff
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
				
		;LURKERS - Fast Travel
		elseif FastTravelSpawn == "Lurkers"		 
			Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors Lurkers)")		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 2	
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)		
			CreaturesB[0] = TempAnActor as actor
			CreaturesB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesBCount = 1				
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0402B0EA, "Dragonborn.esm"), 1)			
			CreaturesC[0] = TempAnActor as actor
			CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesCCount = 1				
			endif
			

		
		;DREMORA
		elseif FastTravelSpawn == "Dremora"
		Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors Dremora)")		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;LvlDremoraMelee
			RapersA[0] = TempAnActor as actor
			RapersA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;LvlDremoraMelee
			RapersA[1] = TempAnActor as actor
			RapersA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersACount = 2
			if Victims[0]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001E7AF, "Skyrim.esm"), 1)		;LvlDremoraMelee
			RapersB[0] = TempAnActor as actor
			RapersB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersBCount = 1
			endif
			if Victims[1]
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010CCEA, "Skyrim.esm"), 1)		;labyrinthian Dremora
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 1
			endif	

		;SKELETONS
		elseif FastTravelSpawn == "Skeleton"
			;000524E5 EncSkeleton01AmbushMelee1H
			;00052543 EncSkeleton01AmbushMelee2H

		
		;Draugr
		;00055937
		;00055938	
		;00055939
		;0005593A		
		;0005593B
		;0005593C
		;0005593D
		;0005593E
		;0005593F
		;00055940
		;00055941 - 44
		
		;ALIKR (CAT PEOPLE!)
		
		endif 
		
	;----------- < Fast Travel < -------------------------------------------------------------------------------------------------------------------------------
				
	; >>>>>> SPAWN >>> "Slave Owners" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>			
	elseif NeedRapersForSlavery && !ActorsSpawned
	Debug.Trace("NAKED DEFEAT calmquest: SortActors (Spawn Actors for Extra or Slavery)") ;<<<<- split this!	 
	;ActorsSpawned = true
		
		if cfgqst.IsNymrasGame()
				
		String EncounterType = "Redguards" 
				
			if EncounterType == "Redguards" 
			;REDGUARDS (Black Cocks) 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;WEAdventurerWarriorRedguardM
			RapersA[0] = TempAnActor as actor
			RapersA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;Sailor 
			RapersA[1] = TempAnActor as actor
			RapersA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1) ;Hunter
			RapersA[2] = TempAnActor as actor
			RapersA[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92F , "Skyrim.esm"), 1) ;Noble 
			RapersA[3] = TempAnActor as actor
			RapersA[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersACount = 4
			endif  
		
		ActorsSpawned = true
		cfgqst.DefeatTypeGeneral = "AreHumans"
		cfgqst.DefeatType = "Humans"
		
		else 
		
		;BANDITS 
		;RapersA 
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;LvLBanditMeleeCommonerM
		RapersA[0] = TempAnActor as actor
		RapersA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;LvlBanditMissileNordM	
		RapersA[1] = TempAnActor as actor
		RapersA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00015BE5, "Skyrim.esm"), 1) ;LvlBanditMeleeTank
		RapersA[2] = TempAnActor as actor
		RapersA[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0BC, "Skyrim.esm"), 1) ;LvlBanditMeleeNordM
		RapersA[3] = TempAnActor as actor
		RapersA[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		RapersACount = 4
		
		;RapersB 
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;LvLBanditMeleeCommonerM
		RapersB[0] = TempAnActor as actor
		RapersB[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;LvlBanditMissileNordM	
		RapersB[1] = TempAnActor as actor
		RapersB[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		RapersBCount = 2

		;RapersC 
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;LvLBanditMeleeCommonerM
		RapersC[0] = TempAnActor as actor
		RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;LvlBanditMissileNordM	
		RapersC[1] = TempAnActor as actor
		RapersC[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		RapersCCount = 2
		ActorsSpawned = true
		cfgqst.DefeatTypeGeneral = "AreHumans"
		cfgqst.DefeatType = "Bandits"
		endif 
		
	endif 
			
	if (NeedCreaturesForSlavery && !ActorsSpawned) || (NeedCreaturesForSex && cfgqst.NymSpawning && !ActorsSpawned)
					
			;SLAVERY CREATURES FILL UP	 
			int i = Utility.RandomInt(1,4)	
						
			if cfgqst.PlayerRef.IsInInterior() && i == 4
			i = 1
			endif 
			
			;improve sorting and selection....
				
			if (i == 1) && cfgqst.AllowCanines	;DOGS 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesA[0].AddToFaction(NakedGhostFaction)		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00023A92, "Skyrim.esm"), 1)			
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 2
			ActorsSpawned = true
			elseif (i == 2) && cfgqst.AllowSkeevers	;SKEEVERS 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B5559, "Skyrim.esm"), 1)		
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesA[0].AddToFaction(NakedGhostFaction)		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000B5559, "Skyrim.esm"), 1)			
			CreaturesA[1] = TempAnActor as actor
			CreaturesA[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesACount = 2
			ActorsSpawned = true
			elseif (i == 3) && cfgqst.AllowGoats	;GOAT 
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0004359C, "Skyrim.esm"), 1)	
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesA[0].AddToFaction(NakedGhostFaction)
			CreaturesAcount = 1			
			ActorsSpawned = true
			elseif (i == 4) && cfgqst.AllowHorses	;HORSE  	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00068D71, "Skyrim.esm"), 1)	
			CreaturesA[0] = TempAnActor as actor
			CreaturesA[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			CreaturesA[0].AddToFaction(NakedGhostFaction)
			CreaturesAcount = 1		
			ActorsSpawned = true
			endif

			;Tame Troll (one)
	
		;endif
		
	endif
	
	if ActorsSpawned
	NymTrace("#ERROR - ActorsSpawned = true")
	Endif
	
		
	if cfgqst.IsNymrasGame() && (cfgqst.DefeatTypeGeneral == "AreHumans") && cfgqst.NymSpawning && !ActorsSpawned 
	NymMessage("Extra Cocks Arrived") 
	
			int RandomSpawn = Utility.RandomInt(1,4)
			int Spawndistance = 1000
			
			if cfgqst.IsNymrasGame()
			RandomSpawn = 2
			Spawndistance = 150
			endif 
							
			if RandomSpawn == 1  
			;REDGUARDS (Black Cocks) 	
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;WEAdventurerWarriorRedguardM
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000C6016, "Skyrim.esm"), 1)		;Sailor 
			RapersC[1] = TempAnActor as actor
			RapersC[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00073FC0, "Skyrim.esm"), 1) ;Hunter
			RapersC[2] = TempAnActor as actor
			RapersC[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0005A92F , "Skyrim.esm"), 1) ;Noble 
			RapersC[3] = TempAnActor as actor
			RapersC[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 4		
			
			elseif RandomSpawn == 2
			;ORCS 		
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00062128, "Skyrim.esm"), 1)		;Old Orc
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, Spawndistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), Spawndistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9448, "Skyrim.esm"), 1)		;Hunter1 
			RapersC[1] = TempAnActor as actor
			RapersC[1].Moveto(cfgqst.PlayerRef, Spawndistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), Spawndistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D9449, "Skyrim.esm"), 1) ;Hunter2
			RapersC[2] = TempAnActor as actor
			RapersC[2].Moveto(cfgqst.PlayerRef, Spawndistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), Spawndistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x000D944A , "Skyrim.esm"), 1) ;Hunter3 
			RapersC[3] = TempAnActor as actor
			RapersC[3].Moveto(cfgqst.PlayerRef, Spawndistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), Spawndistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 4
			
			;HUNTER 000D944B - not used Orc Hunter
			
			;KHAJIIT				
			elseif RandomSpawn == 3
							
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105553, "Skyrim.esm"), 1)		;WEAdventurerBerserkerKhajiitM
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00109A7F, "Skyrim.esm"), 1)		;WEAdventurerBrawlerKhajiitM 
			RapersC[1] = TempAnActor as actor
			RapersC[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105551, "Skyrim.esm"), 1) ;WEAdventurerWarriorDualKhajiitM
			RapersC[2] = TempAnActor as actor
			RapersC[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00103515 , "Skyrim.esm"), 1) ;WEThiefKhajiitM 
			RapersC[3] = TempAnActor as actor
			RapersC[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 4

			;ARGONIANS				
			elseif RandomSpawn == 4
							
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105554, "Skyrim.esm"), 1)		;WEAdventurerWarriorDualArgonianM
			RapersC[0] = TempAnActor as actor
			RapersC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105561, "Skyrim.esm"), 1)		;WEAdventurerBrawlerArgonian M Argonian 
			RapersC[1] = TempAnActor as actor
			RapersC[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0010612D, "Skyrim.esm"), 1) ;Argonian3
			RapersC[2] = TempAnActor as actor
			RapersC[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			
			TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00105552 , "Skyrim.esm"), 1) ;Argonian4 
			RapersC[3] = TempAnActor as actor
			RapersC[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
			RapersCCount = 4

			endif 
			
			ActorsSpawned = true	
	endif 
	
	; >>>>>> CALM SPAWNED ACTORS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	
	if ActorsSpawned 
		if RapersACount > 0
		;RapersABlocked = true
			if RapersA[0]
			CalmActor(RapersA[0])
			RapersA[0].AddToFaction(NakedGhostFaction)
			endIf
			if RapersA[1]
			CalmActor(RapersA[1])
			RapersA[1].AddToFaction(NakedGhostFaction)
			endif
			if RapersA[2]
			CalmActor(RapersA[2])
			RapersA[2].AddToFaction(NakedGhostFaction)
			endif
			if RapersA[3]
			CalmActor(RapersA[3])
			RapersA[3].AddToFaction(NakedGhostFaction)
			endif
		endif
		
		if RapersBCount > 0
		;RapersBBlocked = true
			if RapersB[0]
			CalmActor(RapersB[0])
			RapersB[0].AddToFaction(NakedGhostFaction)
			endIf
			if RapersB[1]
			CalmActor(RapersB[1])
			RapersB[1].AddToFaction(NakedGhostFaction)
			endif
			if RapersB[2]
			CalmActor(RapersB[2])
			RapersB[2].AddToFaction(NakedGhostFaction)
			endif
			if RapersB[3]
			CalmActor(RapersB[3])
			RapersB[3].AddToFaction(NakedGhostFaction)
			endif
		endif
					
		if RapersCCount > 0
		;RapersCBlocked = true
			if RapersC[0]
			CalmActor(RapersC[0])
			RapersC[0].AddToFaction(NakedGhostFaction)
			endIf
			if RapersC[1]
			CalmActor(RapersC[1])
			RapersC[1].AddToFaction(NakedGhostFaction)
			endif
			if RapersC[2]
			CalmActor(RapersC[2])
			RapersC[2].AddToFaction(NakedGhostFaction)
			endif
			if RapersC[3]
			CalmActor(RapersC[3])
			RapersC[3].AddToFaction(NakedGhostFaction)
			endif
		endif
		
		if CreaturesACount > 0
		;CreaturesABlocked = true
			if CreaturesA[0]
			CalmActor(CreaturesA[0])
			CreaturesA[0].AddToFaction(NakedGhostFaction)
			endIf
			if CreaturesA[1]
			CalmActor(CreaturesA[1])
			CreaturesA[1].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesA[2]
			CalmActor(CreaturesA[2])
			CreaturesA[2].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesA[3]
			CalmActor(CreaturesA[3])
			CreaturesA[3].AddToFaction(NakedGhostFaction)
			endif
		endif
		
		if CreaturesBCount > 0
		;CreaturesBBlocked = true
			if CreaturesB[0]
			CalmActor(CreaturesB[0])
			CreaturesB[0].AddToFaction(NakedGhostFaction)
			endIf
			if CreaturesB[1]
			CalmActor(CreaturesB[1])
			CreaturesB[1].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesB[2]
			CalmActor(CreaturesB[2])
			CreaturesB[2].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesB[3]
			CalmActor(CreaturesB[3])
			CreaturesB[3].AddToFaction(NakedGhostFaction)
			endif
		endif
					
		if CreaturesCCount > 0
		CreaturesCBlocked = true
			if CreaturesC[0]
			CalmActor(CreaturesC[0])
			CreaturesC[0].AddToFaction(NakedGhostFaction)
			endIf
			if CreaturesC[1]
			CalmActor(CreaturesC[1])
			CreaturesC[1].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesC[2]
			CalmActor(CreaturesC[2])
			CreaturesC[2].AddToFaction(NakedGhostFaction)
			endif
			if CreaturesC[3]
			CalmActor(CreaturesC[3])
			CreaturesC[3].AddToFaction(NakedGhostFaction)
			endif
		endif	
	endif 
endif 

		;/	
		;LocHostile = (Game.GetFormFromFile(0x000435DA, "Skyrim.esm") As ObjectReference)
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001AF77, "Skyrim.esm"), 1)		;LvLBanditMeleeCommonerM
		CreaturesC[0] = TempAnActor as actor
		CreaturesC[0].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		CreaturesC[0].AddToFaction(NakedGhostFaction)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0D5, "Skyrim.esm"), 1)		;LvlBanditMissileNordM	
		CreaturesC[1] = TempAnActor as actor
		CreaturesC[1].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x00015BE5, "Skyrim.esm"), 1) ;LvlBanditMeleeTank
		CreaturesC[2] = TempAnActor as actor
		CreaturesC[2].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		
		TempAnActor = cfgqst.playerref.PlaceAtMe(game.GetFormFromFile(0x0001B0BC, "Skyrim.esm"), 1) ;LvlBanditMeleeNordM
		CreaturesC[3] = TempAnActor as actor
		CreaturesC[3].Moveto(cfgqst.PlayerRef, 1000 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 1000 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
		/;
		
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
				;1 = female
				;0 = male
				;2 = creature

				if a
				aGender = SexLab.GetGender(a)
				else 
				;Debug.Trace("NAKED DEFEAT calmquest: CALM - No Actor!")  
				aGender = 404
				endif 
				
				if aGender == 2	;get creature Name
				aName = cfgqst.GetLeveledActorBaseName(a)
				elseif aGender < 2 	;get human name
				aName = a.GetBaseObject().GetName()
				endif 
			
				;::::::::::: SORT FEMALES :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
				if (aGender == 1) && cfgqst.FemalesAllowed  																																									

					if cfgqst.AllowActor(a, 1, aName)	;disallowed Actors are Traced in the AllowActorFunction
						;get a Raper to Group B for Follower01 - ONLY IF GROUP IS EMPTY 
						if NeedARaper && RapersACount > 0 && RapersBCount == 0 && !RapersABlocked
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						RapersBFemaleCount += 1
						
						NeedARaper = false	
						;get a Raper to Group C for Follower02 - ONLY IF GROUP IS EMPTY! 
						elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersCBlocked																				
						RapersC[RapersCCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+aName)
							endif
						RapersCCount += 1
						RapersCFemaleCount += 1
						
						NeedAnotherRaper = false
						elseif RapersACount < 4	&& !RapersABlocked
						RapersA[RapersACount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+aName)
							endif

						RapersACount += 1
						RapersAFemaleCount += 1
						
						elseif RapersBCount < 4 && !RapersBBlocked							
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						RapersBFemaleCount += 1
						
						elseif RapersCCount < 4	&& !RapersCBlocked						
						RapersC[RapersCCount] = a	 							
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+aName)
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
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						NeedARaper = false
						;get a Raper to Group C for Follower02
						elseif NeedAnotherRaper && RapersBCount > 0	&& RapersCCount == 0 && !RapersBBlocked																			
						RapersC[RapersCCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+aName)
							endif
						RapersCCount += 1
						NeedAnotherRaper = false
						;sort RapersA (if no guards found)
						elseif !RapersAareGuards && RapersACount < 4 && !RapersABlocked
						RapersA[RapersACount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+aName)
							endif
						RapersACount += 1
						elseif RapersBCount < 4 && !RapersBBlocked						
						RapersB[RapersBCount] = a	 		
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
							else
							;Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
							Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+aName)
							endif
						RapersBCount += 1
						elseif RapersCCount < 4	&& !RapersCBlocked					
						RapersC[RapersCCount] = a	
							if cfgqst.ShowDebugMessages
							Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
							else	
							;Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))		
							Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+aName)	
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
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesARace #"+CreaturesARace)
							elseif (CreaturesBRace == "empty") && (CreaturesARace != GetRaceKey(a))
							CreaturesBRace = GetRaceKey(a) 								;fill in RacesB
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesBRace #"+CreaturesBRace)
							elseif (CreaturesCRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a))
							CreaturesCRace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesCRace #"+CreaturesCRace)
							
							elseif (CreaturesDRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a))
							CreaturesDRace = GetRaceKey(a) 								;fill in RacesB
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesDRace #"+CreaturesDRace)
							elseif (CreaturesERace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a))
							CreaturesERace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesERace #"+CreaturesERace)
							elseif (CreaturesFRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a)) && (CreaturesERace != GetRaceKey(a))	
							CreaturesFRace = GetRaceKey(a)  							;fill in RacesC
							Debug.Trace("NAKED DEFEAT calmquest: CreaturesFRace #"+CreaturesFRace)
																					
							endif	
					
							;asign a Creature to Group B for Follower01
							;overwrites the above racekey
							if NeedARaper && CreaturesACount > 0
							CreaturesB[CreaturesBCount] = a		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesB #"+CreaturesBCount+": "+aName)		
									endif								

							CreaturesBCount += 1
							NeedARaper = false
							CreaturesBRace = GetRaceKey(a) 
					
							;asign a Creature to Group C for Follower02
							;overwrites the above racekey
							elseif NeedAnotherRaper && CreaturesBCount > 0																				
							CreaturesC[CreaturesCCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesC #"+CreaturesCCount+": "+aName)													
									endif		
							CreaturesCCount += 1
							NeedAnotherRaper = false
							CreaturesCRace = GetRaceKey(a) 
					
							;asign a creature to a group based on matching RaceKeys
							elseif (GetRaceKey(a) == CreaturesARace) && (CreaturesACount < 4)
							CreaturesA[CreaturesACount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesA #"+CreaturesACount+": "+cfgqst.GetActorInfo(CreaturesA[CreaturesACount]))
									else		
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesA #"+CreaturesACount+": "+aName)			
									endif
							CreaturesACount += 1
							;tempraceID = "empty"

							elseif (GetRaceKey(a) == CreaturesBRace) && (CreaturesBCount < 4)
							CreaturesB[CreaturesBCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesB #"+CreaturesBCount+": "+aName)		
									endif
							CreaturesBCount += 1
							;tempraceID = "empty"
							
							elseif (GetRaceKey(a) == CreaturesCRace) && (CreaturesCCount < 4)
							CreaturesC[CreaturesCCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesC #"+CreaturesCCount+": "+aName)													
									endif
							CreaturesCCount += 1	
							
							elseif (GetRaceKey(a) == CreaturesDRace) && (CreaturesDCount < 4)
							CreaturesD[CreaturesDCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesD #"+CreaturesDCount+": "+cfgqst.GetActorInfo(CreaturesD[CreaturesDCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesD #"+CreaturesDCount+": "+aName)													
									endif
							CreaturesDCount += 1														
							elseif (GetRaceKey(a) == CreaturesERace) && (CreaturesECount < 4)
							CreaturesE[CreaturesECount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesE #"+CreaturesECount+": "+cfgqst.GetActorInfo(CreaturesE[CreaturesECount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesE #"+CreaturesECount+": "+aName)													
									endif
							CreaturesECount += 1															
							elseif (GetRaceKey(a) == CreaturesFRace) && (CreaturesFCount < 4)
							CreaturesF[CreaturesFCount] = a	 		
									if cfgqst.ShowDebugMessages
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesF #"+CreaturesFCount+": "+cfgqst.GetActorInfo(CreaturesF[CreaturesFCount]))
									else
									Debug.Trace("NAKED DEFEAT calmquest: CreaturesF #"+CreaturesFCount+": "+aName)													
									endif
							CreaturesFCount += 1															
					
							endif
						endif	
					endif	
				endif
			endwhile
		
		else 
			
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
						Debug.Trace("NAKED DEFEAT calmquest: "+aName+": "+cfgqst.PlayerRef.GetDistance(a))
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
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															endif
														RapersBCount += 1
														NeedARaper = false	
														;get a Raper to Group C for Follower02 - ONLY IF GROUP IS EMPTY! 
														elseif NeedAnotherRaper && RapersBCount > 0 && RapersCCount == 0 && !RapersCBlocked																				
														RapersC[RapersCCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
															endif
														RapersCCount += 1
														NeedAnotherRaper = false
														elseif RapersACount < 4	&& !RapersABlocked
														RapersA[RapersACount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
															endif

														RapersACount += 1
														elseif RapersBCount < 4 && !RapersBBlocked							
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															endif
														RapersBCount += 1
														elseif RapersCCount < 4	&& !RapersCBlocked						
														RapersC[RapersCCount] = a	 							
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
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
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
															endif
														RapersBCount += 1
														NeedARaper = false
														;get a Raper to Group C for Follower02
														elseif NeedAnotherRaper && RapersBCount > 0	&& RapersCCount == 0 && !RapersBBlocked																			
														RapersC[RapersCCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest: NeedARaper RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))
															endif
														RapersCCount += 1
														NeedAnotherRaper = false
														;sort RapersA (if no guards found)
														elseif !RapersAareGuards && RapersACount < 4 && !RapersABlocked
														RapersA[RapersACount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest: RapersA #"+RapersACount+": "+(cfgqst.GetLeveledActorBaseName(RapersA[RapersACount])))
															endif
														RapersACount += 1
														elseif RapersBCount < 4 && !RapersBBlocked						
														RapersB[RapersBCount] = a	 		
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
															Debug.Trace("NAKED DEFEAT calmquest: RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
															endif
														RapersBCount += 1
														elseif RapersCCount < 4	&& !RapersCBlocked					
														RapersC[RapersCCount] = a	
															if cfgqst.ShowDebugMessages
															Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
															else
															;Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))		
															Debug.Trace("NAKED DEFEAT calmquest: RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))	
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
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesARace #"+CreaturesARace)
															elseif (CreaturesBRace == "empty") && (CreaturesARace != GetRaceKey(a))
															CreaturesBRace = GetRaceKey(a) 								;fill in RacesB
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesBRace #"+CreaturesBRace)
															elseif (CreaturesCRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a))
															CreaturesCRace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesCRace #"+CreaturesCRace)
															
															elseif (CreaturesDRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a))
															CreaturesDRace = GetRaceKey(a) 								;fill in RacesB
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesDRace #"+CreaturesDRace)
															elseif (CreaturesERace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a))
															CreaturesERace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesERace #"+CreaturesERace)
															elseif (CreaturesFRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a)) && (CreaturesCRace != GetRaceKey(a)) && (CreaturesDRace != GetRaceKey(a)) && (CreaturesERace != GetRaceKey(a))	
															CreaturesFRace = GetRaceKey(a)  							;fill in RacesC
															Debug.Trace("NAKED DEFEAT calmquest: CreaturesFRace #"+CreaturesFRace)
																													
															endif	
													
															;asign a Creature to Group B for Follower01
															;overwrites the above racekey
															if NeedARaper && CreaturesACount > 0
															CreaturesB[CreaturesBCount] = a		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
																	endif								

															CreaturesBCount += 1
															NeedARaper = false
															CreaturesBRace = GetRaceKey(a) 
													
															;asign a Creature to Group C for Follower02
															;overwrites the above racekey
															elseif NeedAnotherRaper && CreaturesBCount > 0																				
															CreaturesC[CreaturesCCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: NeedARaper CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
																	endif		
															CreaturesCCount += 1
															NeedAnotherRaper = false
															CreaturesCRace = GetRaceKey(a) 
													
															;asign a creature to a group based on matching RaceKeys
															elseif (GetRaceKey(a) == CreaturesARace) && (CreaturesACount < 4)
															CreaturesA[CreaturesACount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesA #"+CreaturesACount+": "+cfgqst.GetActorInfo(CreaturesA[CreaturesACount]))
																	else		
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesA #"+CreaturesACount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesA[CreaturesACount])))			
																	endif
															CreaturesACount += 1
															;tempraceID = "empty"

															elseif (GetRaceKey(a) == CreaturesBRace) && (CreaturesBCount < 4)
															CreaturesB[CreaturesBCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
																	endif
															CreaturesBCount += 1
															;tempraceID = "empty"
															
															elseif (GetRaceKey(a) == CreaturesCRace) && (CreaturesCCount < 4)
															CreaturesC[CreaturesCCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
																	endif
															CreaturesCCount += 1	
															
															elseif (GetRaceKey(a) == CreaturesDRace) && (CreaturesDCount < 4)
															CreaturesD[CreaturesDCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesD #"+CreaturesDCount+": "+cfgqst.GetActorInfo(CreaturesD[CreaturesDCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesD #"+CreaturesDCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesD[CreaturesDCount])))													
																	endif
															CreaturesDCount += 1														
															elseif (GetRaceKey(a) == CreaturesERace) && (CreaturesECount < 4)
															CreaturesE[CreaturesECount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesE #"+CreaturesECount+": "+cfgqst.GetActorInfo(CreaturesE[CreaturesECount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesE #"+CreaturesECount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesE[CreaturesECount])))													
																	endif
															CreaturesECount += 1															
															elseif (GetRaceKey(a) == CreaturesFRace) && (CreaturesFCount < 4)
															CreaturesF[CreaturesFCount] = a	 		
																	if cfgqst.ShowDebugMessages
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesF #"+CreaturesFCount+": "+cfgqst.GetActorInfo(CreaturesF[CreaturesFCount]))
																	else
																	Debug.Trace("NAKED DEFEAT calmquest: CreaturesF #"+CreaturesFCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesF[CreaturesFCount])))													
																	endif
															CreaturesFCount += 1															
															
															;tempraceID = "empty"														
															endif
														else ;ActorNotAllowed
														Debug.Trace("NAKED DEFEAT calmquest: Actor Sorted out (is not Allowed")
														endif ;ActorNotAllowed
													else ;Gender
													Debug.Trace("NAKED DEFEAT calmquest: Actor Sorted out CreaturesNotAllowed")
													endif ;Gender
													
												endif ;
											endif ;playerfactioncheck
										;endif	;followerDoubleCheck
									;else	
									;Debug.Trace("NAKED DEFEAT calmquest: Actor commanded: "+a.GetBaseObject().GetName())
									;endif	;commanded actor
								else	 
								Debug.Trace("NAKED DEFEAT calmquest: Actor is Dragon: "+a.GetBaseObject().GetName())
								endif	;dragon
							;else	
							;Debug.Trace("NAKED DEFEAT calmquest: Actor is not allowed: "+a.GetBaseObject().GetName())
						;	Debug.Notification("NAKED DEFEAT DEBUG: Actor is not allowed: "+a)
							;endif	;non valid actors (from mods for example)
						;else ;IsGuard			
						;Debug.Trace("NAKED DEFEAT calmquest: IsGuard: "+a.GetBaseObject().GetName())
						;endif 
						
					else ;distance
						if cfgqst.ShowDebugMessages
						Debug.Trace("NAKED DEFEAT calmquest: Distance too far: "+cfgqst.PlayerRef.GetDistance(a))
						Debug.Trace("NAKED DEFEAT calmquest: Actor is too far away: "+a.GetBaseObject().GetName())
						endif
					endif
				endif	;if a (no actor)
			endwhile
			
		endif 
		;OLDWHILE  <<<<<<<<<<<<<<<<<
		
	endif
	
	if cfgqst.CivilRapeRunning && (RapersACount == 0)
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR - no RapersA!")
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
		if (CreaturesACount > 0) && CreaturesARace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesA empty race - remove")
		CreaturesACount = 0
		endif 
		if (CreaturesBCount > 0) && CreaturesBRace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesB empty race - remove")
		CreaturesBCount = 0
		endif 
		if (CreaturesCCount > 0) && CreaturesCRace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesC empty race - remove")
		CreaturesCCount = 0
		endif 
		if (CreaturesDCount > 0) && CreaturesDRace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesD empty race - remove")
		CreaturesDCount = 0
		endif 
		if (CreaturesECount > 0) && CreaturesERace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesE empty race - remove")
		CreaturesECount = 0
		endif 
		if (CreaturesFCount > 0) && CreaturesFRace == "empty"
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR-CreaturesF empty race - remove")
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
	
	Debug.Trace("NAKED DEFEAT calmquest: :::::::::::::::::::::: #RaperGroups ::::::::::::::::::::::")
	Debug.Trace("NAKED DEFEAT calmquest: RapersACount:"+RapersACount)
	Debug.Trace("NAKED DEFEAT calmquest: RapersBCount:"+RapersBCount)
	Debug.Trace("NAKED DEFEAT calmquest: RapersCCount:"+RapersCCount)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesACount:"+CreaturesACount+" CreaturesARace: "+CreaturesARace)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesBCount:"+CreaturesBCount+" CreaturesBRace: "+CreaturesBRace)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesCCount:"+CreaturesCCount+" CreaturesCRace: "+CreaturesCRace)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesDCount:"+CreaturesDCount+" CreaturesDRace: "+CreaturesDRace)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesECount:"+CreaturesECount+" CreaturesERace: "+CreaturesERace)
	Debug.Trace("NAKED DEFEAT calmquest: CreaturesFCount:"+CreaturesFCount+" CreaturesFRace: "+CreaturesFRace)
	Debug.Trace("NAKED DEFEAT calmquest: VictimCount:"+VictimCount)
	Debug.Trace("NAKED DEFEAT calmquest: HumanGroupsAvailable:"+HumanGroupsAvailable)
	Debug.Trace("NAKED DEFEAT calmquest: CreatureGroupsAvailable:"+CreatureGroupsAvailable)
	
	
	
;	Debug.Trace("NAKED DEFEAT calmquest: CreaturesAvalid:"+CreaturesAvalid)
;	Debug.Trace("NAKED DEFEAT calmquest: CreaturesBvalid:"+CreaturesBvalid)
;	Debug.Trace("NAKED DEFEAT calmquest: CreaturesCvalid:"+CreaturesCvalid)
	
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
Debug.Trace("NAKED DEFEAT calmquest: SelectPeeGuys()")

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
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[3]: "+Aggressors02[3].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[2]: "+Aggressors02[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 3
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[2]: "+Aggressors02[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 2
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[1]: "+Aggressors02[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
		elseif Aggressor02Count == 1
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors02[0]: "+Aggressors02[0].GetActorBase().GetName())
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
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[3]: "+Aggressors[3].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[2]: "+Aggressors[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 3
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[2]: "+Aggressors[2].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 2
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[1]: "+Aggressors[1].GetActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 1
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck(Pee) Aggressors[0]: "+Aggressors[0].GetActorBase().GetName())
		elseif AggressorCount == 0
		Debug.Trace("NAKED DEFEAT calmquest: #actorcheck Aggressors[0]: #ERROR all actors sorted out")
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
			Debug.Trace("NAKED DEFEAT calmquest: 5-person animations found: "+AnimationsPee4.Length)
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
			Debug.Trace("NAKED DEFEAT calmquest: 4-person animations found: "+AnimationsPee3.Length)
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
			Debug.Trace("NAKED DEFEAT calmquest: 3-person animations found: "+AnimationsPee2.Length)
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
			Debug.Trace("NAKED DEFEAT calmquest: 2-person animations found: "+AnimationsPee1.Length)
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
	
	
	String LastGroupPlayer = "Empty"
	Bool PlayerHadCreatures = false
				
Function SelectAggressor(Int Round = 0, Int VictimNumber = 0)			;does this mean the numbers from the "call" are reverted to 0?)			##select## #SelectAggressor
Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor START Round: "+Round)

		;1. Selects a random RapersX/CreaturesX Group that is available
		;2. Fills the RapersX/CreaturesX actos into AggressorsGroup
		;3. Blocks the Selected Group
		;4. Selects the Sex Tags
			
	String SelectedGroup = "none"	
	String ActorName 
	int y = 0
;if we only have ONE group and then Start ForePlay the Group is still Blocked!!!; VictimNumber 0 = Player
; VictimNumber 1 = Victims[0]
; VictimNumber 2 = Victims[1]

	if cfgqst.IsNymrasGame() && (Round > 1) && (ForePlayGroup != "none")
	NymMessage("#ERROR- Foreplaygroup should be none")
	endif
	
 

	if VictimNumber == 0
	ActorName = "Player"
	
	elseif VictimNumber == 1
	ActorName = folqst.Name_Follower01
	;Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor START Victims[0]: "+Victims[0].GetBaseObject().GetName())
	;Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor START Victims[0]")
	elseif VictimNumber == 2
	ActorName = folqst.Name_Follower02
	;Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor START Victim[1]: "+Victims[2].GetBaseObject().GetName())
	;Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor START Victims[1]")
	endif 
	
	
	
	; ------------------- SELECT GROUP -----------------------------: 
	
	Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")") 
	
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
			if (VictimNumber == 0) && ((Round < 2) || (Round == 2) && D100(50))
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
		if (VictimNumber == 0) && (Round < 3) && Allow_Creatures
		NymTrace("SelectAggressor(A)")
			if cfgqst.DefeatTypeGeneral == "AreHumans"	;consider rounds!
				NymTrace("SelectAggressor(B)")
				AllowHumanGroups = true
				
				if Round == 1
				AllowCreatureGroups = false
				NymTrace("SelectAggressor(C)")
				elseif (Round == 2) && !PlayerHadCreatures
				AllowCreatureGroups = true
				NymTrace("SelectAggressor(D)")
					;guarantee one creature group
					if cfgqst.NYMspawning && CheckCreatureGroups() && cfgqst.AllowCreatures && !PlayerHadCreatures
						NymTrace("SelectAggressor(E)")
						if (Allow_SexScenes < 3) 
						NymTrace("SelectAggressor() AllowHumanGroups = false (A)")
						AllowHumanGroups = false
						elseif D100(50)
						NymTrace("SelectAggressor() AllowHumanGroups = false (B)")
						AllowHumanGroups = false
						endif 
					endif 
				
				elseif (Round == 3) && cfgqst.NYMspawning && CheckCreatureGroups() && cfgqst.AllowCreatures && !PlayerHadCreatures
				NymTrace("SelectAggressor() AllowHumanGroups = false (C)")
				AllowHumanGroups = false
				AllowCreatureGroups = true	
				endif 
				
			elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
				AllowCreatureGroups = true
				NymTrace("SelectAggressor(F)")
				if Round == 1
				NymTrace("SelectAggressor(G)")
				AllowHumanGroups = false
				elseif (Round == 2) && D100(25)
				NymTrace("SelectAggressor(H)")
				AllowHumanGroups = true	
				endif 

			elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
				NymTrace("SelectAggressor(I)")
				AllowCreatureGroups = true	
				if Round == 1
				NymTrace("SelectAggressor(J)")
				AllowHumanGroups = false
				elseif (Round == 2) && D100(10)
				NymTrace("SelectAggressor(K)")
				AllowHumanGroups = true	
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
					
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+") - RandomGroupArray[0]: "+RandomGroupArray[0])		
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[1]: "+RandomGroupArray[1])		
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[2]: "+RandomGroupArray[2])
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[3]: "+RandomGroupArray[3])	
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[4]: "+RandomGroupArray[4])
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[5]: "+RandomGroupArray[5])
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[6]: "+RandomGroupArray[6])	
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[7]: "+RandomGroupArray[7])
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- RandomGroupArray[8]: "+RandomGroupArray[8])
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- y =: "+y)

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
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+")- Selected Group: "+SelectedGroup)
		;Debug.MessageBox("Selected Group: "+SelectedGroup)
		
		;WHAT FOR??? ---> For secondary Sorting / Group Size correction etc. 
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
	
	;	if VictimNumber == 0 ----------> overcomplex BULLSHIT 
		;if player and we have foreplay and we have no Foreplaygroup, we save the selected group as foreplay group
		;for the following sex scene we load the saved group and overwrite the other. 
	;		if HasForeplay && (ForePlayGroup == "none")
	;;		ForePlayGroup = SelectedGroup 
	;		NymTrace("#ForePlayGroup (HasForeplay): "+ForePlayGroup)
	;		elseif (ForePlayGroup != "none") 
	;		NymTrace("#ForePlayGroup (Sex Round 1): "+ForePlayGroup)
	;		SelectedGroup = ForePlayGroup
	;		ForePlayGroup = "none"
	;		endif 
	;	endif 
		
		
		;WE ONLY NEED A STRING with Group Name here. So we can add a String Function above. 
		;we add a string Function that sets BLOCKED groups to "GroupArray = 2" 
		
		;Fill Rapers in and Block selected Group
		if (y == -1) || (SelectedGroup == "none")
		DebugTrace("#ERROR - no Group available")
		Aggressor02Count = 0
		;Debug.Messagebox("SelectedGroup = none")	
		elseif SelectedGroup == "RapersA"
		GroupArray[0] = 2
		Aggressors02[0] = RapersA[0]					
		Aggressors02[1] = RapersA[1]					
		Aggressors02[2] = RapersA[2]						
		Aggressors02[3] = RapersA[3]	
		Aggressor02Count = RapersACount
		humangroup = true
		elseif SelectedGroup == "RapersB"
		GroupArray[1] = 2	
		Aggressors02[0] = RapersB[0]					
		Aggressors02[1] = RapersB[1]					
		Aggressors02[2] = RapersB[2]						
		Aggressors02[3] = RapersB[3]	
		Aggressor02Count = RapersBCount
		humangroup = true
		elseif SelectedGroup == "RapersC"
		GroupArray[2] = 2
		Aggressors02[0] = RapersC[0]					
		Aggressors02[1] = RapersC[1]					
		Aggressors02[2] = RapersC[2]						
		Aggressors02[3] = RapersC[3]	
		Aggressor02Count = RapersCCount
		humangroup = true
		elseif SelectedGroup == "CreaturesA"
		GroupArray[3] =	2
		Aggressors02[0] = CreaturesA[0]					
		Aggressors02[1] = CreaturesA[1]					
		Aggressors02[2] = CreaturesA[2]						
		Aggressors02[3] = CreaturesA[3]	
		Aggressor02Count = CreaturesACount
		creaturegroup = true
		elseif SelectedGroup == "CreaturesB"
		GroupArray[4] =	2
		Aggressors02[0] = CreaturesB[0]					
		Aggressors02[1] = CreaturesB[1]					
		Aggressors02[2] = CreaturesB[2]						
		Aggressors02[3] = CreaturesB[3]	
		Aggressor02Count = CreaturesBCount
		creaturegroup = true
		
		elseif SelectedGroup == "CreaturesC"
		GroupArray[5] =	2
		Aggressors02[0] = CreaturesC[0]					
		Aggressors02[1] = CreaturesC[1]					
		Aggressors02[2] = CreaturesC[2]						
		Aggressors02[3] = CreaturesC[3]	
		Aggressor02Count = CreaturesCCount
		creaturegroup = true
	
		elseif SelectedGroup == "CreaturesD"
		GroupArray[6] =	2
		Aggressors02[0] = CreaturesD[0]					
		Aggressors02[1] = CreaturesD[1]					
		Aggressors02[2] = CreaturesD[2]						
		Aggressors02[3] = CreaturesD[3]	
		Aggressor02Count = CreaturesDCount
		creaturegroup = true

		elseif SelectedGroup == "CreaturesE"
		GroupArray[7] =	2
		Aggressors02[0] = CreaturesE[0]					
		Aggressors02[1] = CreaturesE[1]					
		Aggressors02[2] = CreaturesE[2]						
		Aggressors02[3] = CreaturesE[3]	
		Aggressor02Count = CreaturesECount
		creaturegroup = true

		elseif SelectedGroup == "CreaturesF"
		GroupArray[8] =	2
		Aggressors02[0] = CreaturesF[0]					
		Aggressors02[1] = CreaturesF[1]					
		Aggressors02[2] = CreaturesF[2]						
		Aggressors02[3] = CreaturesF[3]	
		Aggressor02Count = CreaturesFCount
		creaturegroup = true
		endif 

		if creaturegroup
		PlayerHadCreatures = TRUE
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
	
	;Debug.Trace("NAKED DEFEAT calmquest: #CHECK START")	
	;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
	
	
	if cfgqst.IsNymrasGame() && cfgqst.ShowDebugMessages
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressor02Count: "+Aggressor02Count)
		if Aggressor02Count == 4
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[3]: "+Aggressors02[3].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[2]: "+Aggressors02[2].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[1]: "+Aggressors02[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[0]: "+Aggressors02[0].GetLeveledActorBase().GetName())
		elseif Aggressor02Count == 3
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[2]: "+Aggressors02[2].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[1]: "+Aggressors02[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[0]: "+Aggressors02[0].GetLeveledActorBase().GetName())
		elseif Aggressor02Count == 2
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[1]: "+Aggressors02[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[0]: "+Aggressors02[0].GetLeveledActorBase().GetName())
		elseif Aggressor02Count == 1
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck BEFORE Aggressors02[0]: "+Aggressors02[0].GetLeveledActorBase().GetName())
		endif
	endif
		
	int Aggressor02CountBefore = Aggressor02Count	
	int RaperFixLevel = 3 ;(0 need fix, 3 is fixed, 1 try fix)
	bool ReOrderGroup = false
	;MAIN CHECKPOINT (sort out dead, not loaded, maybe too far away too?)
	;IMPORTANT: also reduces the group sizes down again
	
	;NymSpawning ---> should we add an expecption for S	PAWNED SCENARIOS and/or SPAWNED GROUPS? 
					
	if (cfgqst.DefeatTypeScenario == "Afterlife") || (cfgqst.DefeatTypeScenario == "FastTravel")
	;do NOT check Rapers here 
		while Aggressor02Count > 0		;1 
		Aggressor02Count -= 1	;0
			if Aggressors02[Aggressor02Count] 
			Aggressors[AggressorCount] = Aggressors02[Aggressor02Count]	
			Aggressors02[Aggressor02Count] = none	
			AggressorCount += 1		
			endif
		endwhile	
	
	else 
	
	;RAPER 3D CHECK!!!
		
		while Aggressor02Count > 0
			Aggressor02Count -= 1
			RaperFixLevel = 3
			
			;CHECK 3D 01
			if !Aggressors02[Aggressor02Count].Is3DLoaded()	;3D not loaded, try move to player
			RaperFixLevel = 0 ;not loaded, need fix
			
				;MOVE RAPER 
				if cfgqst.IsNymrasGame() ;move in sight
				Aggressors02[Aggressor02Count].MoveTo(cfgqst.PlayerRef, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
				NymTrace("No 3D - move Raper")
				Debug.Messagebox("No 3D - move Raper")
				else ;move out of sight
				DebugMessage("#NOTE: No 3D - move Raper")
				Aggressors02[Aggressor02Count].MoveTo(cfgqst.PlayerRef, -150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), -150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
				endif 
			endif
			
			;CHECK 3D 02
			if !Aggressors02[Aggressor02Count].IsDead() && Aggressors02[Aggressor02Count].Is3DLoaded()	;----< 3D loaded makes our "far way spawn" useless ;work on that later...
			RaperFixLevel = 3
		;	Aggressors[AggressorCount] = Aggressors02[Aggressor02Count]
		;	Aggressors02[Aggressor02Count] = none
		;	AggressorCount += 1
			endif
			
			;PLACE RAPER
			if cfgqst.IsNymrasGame() && (RaperFixLevel < 3)
			NymTrace("#ERROR: xxxxxxxxxxx No 3D - move failed - attempt spawn  xxxxxxxxxxx")
			Debug.Messagebox("No 3D - move failed - attempt spawn")	
			cfgqst.PlayerRef.Placeatme(Aggressors02[Aggressor02Count])	;this cant work because it still returns none. I would need to get the ID of theAggressor before the deed... fix by controlling NPC movement
			elseif (RaperFixLevel < 3) 
			DebugMessage("#ERROR: xxxxxxxxxxx No 3D - move failed - attempt spawn xxxxxxxxxxx")
			cfgqst.PlayerRef.Placeatme(Aggressors02[Aggressor02Count])
			endif
			
			RaperFixLevel = 1

		;	if (RaperFixLevel == 1) && Aggressors02[Aggressor02Count]
		;	Aggressors02[Aggressor02Count].AddToFaction(NakedGhostFaction)
		;	Endif
			
			;CHECK 3D 03
			if !Aggressors02[Aggressor02Count].IsDead() && Aggressors02[Aggressor02Count].Is3DLoaded()	;----< 3D loaded makes our "far way spawn" useless ;work on that later...
			RaperFixLevel = 3
			else
			RaperFixLevel = 2
			DebugMessage("#ERROR: xxxxxxxxxxx No 3D - placing failed - remove Aggressor xxxxxxxxxxx")

			endif 

			if RaperFixLevel == 3	;raper fixed, tranfer!
				if Aggressors02[Aggressor02Count] 
				Aggressors[AggressorCount] = Aggressors02[Aggressor02Count]	
				Aggressors02[Aggressor02Count] = none	
				AggressorCount += 1		
				endif
			else 		;raper broken, delete!
			ReOrderGroup = true
			Aggressors[AggressorCount] = none
			Aggressors02[Aggressor02Count] = none
			;AggressorCount -= 1 ; NO NO, the aggressor count just cant go UP
			endif 
			
		endwhile
	endif
	
	;PROBLEM: we did not delete the sorted out actors....
	
	;check order:
	;Aggressors02[3] checked first -- transfered as Aggressors[0]
	;Aggressors[2] 
	;Aggressors[1] 
	;Aggressors[0] checked last
	;NOTE Sorting is automatically done. We get the group sized down correctly if needed
		  
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck AFTERWARDS") 
	if AggressorCount == 0
	DebugMessage("SelectAggressor("+ActorName+"): #actorcheck #ERROR #WARNING: ALL ACTORS SORTED OUT (no 3D loaded)::::::::::::::::::::::::::::::::::::::::::::")	
	elseif Aggressor02CountBefore > AggressorCount
	Aggressor02CountBefore = Aggressor02CountBefore - AggressorCount
	DebugMessage("SelectAggressor("+ActorName+"): #actorcheck AggressorCount , "+Aggressor02CountBefore+" Aggressors sorted out.")
	else
	DebugMessage("SelectAggressor("+ActorName+"): #actorcheck AggressorCount: "+AggressorCount)
	endif 

	NymTrace("SelectAggressor(AggressorCount: "+AggressorCount+")")
	
	if Aggressors[0]
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: "+Aggressors[0].GetLeveledActorBase().GetName())
	else 
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: NONE")
	endif 
	if Aggressors[1]
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[1]: "+Aggressors[1].GetLeveledActorBase().GetName())
	else 
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[1]: NONE")
	endif
	if Aggressors[2]
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[2]: "+Aggressors[2].GetLeveledActorBase().GetName())
	else 
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[2]: NONE")
	endif 
 	if Aggressors[3]
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[3]: "+Aggressors[3].GetLeveledActorBase().GetName())
	else 
	NymTrace("SelectAggressor("+ActorName+"): #actorcheck Aggressors[3]: NONE")
	endif 
		  
		  ;/
	if cfgqst.IsNymrasGame() && cfgqst.ShowDebugMessages	
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck AggressorCount: "+AggressorCount)
		if AggressorCount == 4
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[3]: "+Aggressors[3].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[2]: "+Aggressors[2].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[1]: "+Aggressors[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: "+Aggressors[0].GetLeveledActorBase().GetName())
		elseif AggressorCount == 3
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[2]: "+Aggressors[2].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[1]: "+Aggressors[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: "+Aggressors[0].GetLeveledActorBase().GetName())
		elseif AggressorCount == 2
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[1]: "+Aggressors[1].GetLeveledActorBase().GetName())
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: "+Aggressors[0].GetLeveledActorBase().GetName())
		elseif AggressorCount == 1
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: "+Aggressors[0].GetLeveledActorBase().GetName())
		elseif (Aggressor02CountTemp > 0) && (AggressorCount == 0)
		Debug.Trace("NAKED DEFEAT calmquest SelectAggressor("+ActorName+"): #actorcheck Aggressors[0]: #ERROR all actors sorted out")
		endif
	endif
	
	Debug.Trace("NAKED DEFEAT calmquest: #CHECK END")	
	/;
	
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
		;/
		if !Nym()
			if cfgqst.IsPoseScenario() && D100(80)  ;BUT PILLORY HAS 5P!!!  #gina
			;for most scenarios we reduce the group size because we only have 1 Group animation :( 
				
				if AggressorCount > 1	
					if Aggressors[3]
					Aggressors[3] = None
					endif
					
					if Aggressors[2]
					Aggressors[2] = None
					endif
					
					if Aggressors[1]
					Aggressors[1] = None
					endif
					AggressorCount = 1				
				endIf
			endif 
		endif 
		/;
	;endif
	
	;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	;------- STAGE 4 ---- Reduce Animations based on available Animations
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER	-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (VictimNumber == 0) && HasForeplay
	Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+") HasForeplay")
	endif 
	
	if (VictimNumber == 0) ;&& !HasForeplay
	Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+") PLAYER Group")
	;bool NewSystem = true
	
	;sslBaseAnimation[] function GetCreatureAnimationsByRaceKeyTags(int ActorCount, string RaceKey, string Tags, string TagSuppress = "", bool RequireAll = true)
	;return CreatureSlots.GetByRaceKeyTags(ActorCount, RaceKey, Tags, TagSuppress, RequireAll)
	;endFunction

	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER	CREATURES-----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
		if creaturegroup
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+") creaturegroup ")
		String raceID = MiscUtil.GetActorRaceEditorID(Aggressors[0]) 
		String raceKey = sslCreatureAnimationSlots.GetRaceKeyByID(raceID) 
		String CreatureTags = "Creature" 			
		String CreatureTagsSuppress = "InvisFurn, Femdom, Loving, CreatureSub, CFF, FCC, FFCC, CCFF, CFFF, FFFC, "		
		
			;--- PLAYER - CREATURES - 5P ---;
			if AggressorCount == 4           
			
				Animations4 = SexLab.GetCreatureAnimationsByRaceKeyTags(5, RaceKey, CreatureTags, CreatureTagsSuppress, false)
		
				Debug.Trace("NAKED DEFEAT calmquest: 5P creature animations found ("+ActorName+"): "+Animations4.Length)
				if Animations4.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 4P ---;
			if AggressorCount == 3            
			
				Animations3 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest: 4P creature animations found ("+ActorName+"): "+Animations3.Length)

				if Animations3.Length < 1			
				AggressorCount = 2
				Aggressors[2] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 3P ---;
			if AggressorCount == 2            

				Animations2 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, RaceKey, CreatureTags, CreatureTagsSuppress, false)

				Debug.Trace("NAKED DEFEAT calmquest: 3P creature animations found ("+ActorName+"): "+Animations2.Length)
				if Animations2.Length < 1			
				AggressorCount = 1
				Aggressors[1] = None
				endif
			endif
			
			;--- PLAYER - CREATURES - 2P ---;
			if AggressorCount == 1            
			
				Animations1 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, RaceKey, CreatureTags, CreatureTagsSuppress, false)
			
				Debug.Trace("NAKED DEFEAT calmquest: 2P creature animations found ("+ActorName+"): "+Animations1.Length)
	
				if Animations1.Length < 1			
				AggressorCount = 0
				Aggressors[0] = None
					 if cfgqst.IsNymrasGame()
					 Debug.MessageBox("#ERROR no Creature Animations Found: "+RaceKey)
					 endif 
				endif
			endif
		endif	
			
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	; ------ PLAYER HUMANS ----------------------------------------------------------------------------------------------------------------------------------
	; ---------------------------------------------------------------------------------------------------------------------------------------------------
	
		if humangroup	
		Debug.Trace("NAKED DEFEAT calmquest: SelectAggressor("+ActorName+") humangroup")

			;GetScenarioModifications(VictimNumber)		 ---> group size reduction is done in the Tag and Random System already, period	

			;--- PLAYER - HUMANS - 5P ---;

			
			if AggressorCount == 4   

			GetSexTags(VictimNumber)	;sufficient to run once?	
			Debug.Trace("NAKED DEFEAT calmquest: Group Tags 5P (Player): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags 5P (Player): "+TagsSuppressed)
			
				Animations4 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages	
				Debug.Notification("NAKED DEFEAT: 5-person animations found ("+ActorName+"): "+Animations4.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 5-person animations found ("+ActorName+"): "+Animations4.Length)
				if Animations4.Length < 1			;5P if 4 Aggressors and no 5P anims -> reduce Aggressors to 3
				AggressorCount = 3
				Aggressors[3] = None
				endif 
			endif
			
			;--- PLAYER - HUMANS - 4P ---;
	
			if AggressorCount == 3       
			
			GetSexTags(VictimNumber) ;superfluous? Check Group Composition in extra Function maybe?		
			Debug.Trace("NAKED DEFEAT calmquest: Group Tags 4P (Player): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags 4P (Player): "+TagsSuppressed)
			
			
				Animations3 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 4-person animations found ("+ActorName+"): "+Animations3.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 4-person animations found ("+ActorName+"): "+Animations3.Length)
				if Animations3.Length < 1				
				AggressorCount = 2
				Aggressors[2] = None
				endif 
			endif
			;--- PLAYER - HUMANS - 3P ---;

			
			if AggressorCount == 2      

			GetSexTags(VictimNumber) ;superfluous? Check Group Composition in extra Function maybe?
			Debug.Trace("NAKED DEFEAT calmquest: Group Tags 3P (Player): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags 3P (Player): "+TagsSuppressed)
			
				Animations2 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 3-person animations found ("+ActorName+"): "+Animations2.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 3-person animations found ("+ActorName+"): "+Animations2.Length)
				if Animations2.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
				AggressorCount = 1
				Aggressors[1] = None
				endif 
			endif
			
			;--- PLAYER - HUMANS - 2P ---;


			if AggressorCount == 1     

				GetSexTags(VictimNumber) ;superfluous? Check Group Composition in extra Function maybe?
				Debug.Trace("NAKED DEFEAT calmquest: GroupTags 2P (Player): "+TagsWanted)
				Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags 2P (Player): "+TagsSuppressed)
			
				Animations1 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 2-person animations found ("+ActorName+"): "+Animations1.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 2-person animations found ("+ActorName+"): "+Animations1.Length)
				if Animations1.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
				AggressorCount = 0
				Aggressors[0] = None
				endif
			endif	
		endif	
		
		if AggressorCount == 0 && cfgqst.DefeatStateChapter == "Foreplay Scene"
		Debug.Messagebox("Naked Defeat #ERROR - no Foreplay Animations found. Import SLATE Nymra Action pack and run it in SLATE.") 
		elseif AggressorCount > 1 
		PlayerHadGroup = true		;no further group size reduction after this?
		endif 
		
		;PLAYER
		;this removes the Raper[0] from the whipping Faction to make sure WhipQuest does catch a valid whipper
		;this also adds to busy Faction to make sure other mods do not use the actor (SpecatorCrowdsCompatibility)
		if (cfgqst.DefeatTypeScenario == "Rodeo") && Aggressors[0].IsInFaction(WhippingFaction)
			Aggressors[0].RemoveFromFaction(WhippingFaction)
			Aggressors[0].AddToFaction(BusyFaction)	
		endif
		
		;	if cfgqst.ShowDebugMessages
		;	Debug.Trace("NAKED DEFEAT calmquest: - Anim available for: "+AggressorCount)
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
				Debug.Trace("NAKED DEFEAT calmquest: 5P creature animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				if Animations4_Follower01.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				endif
			endif	
			;--- FOLLOWERS - CREATURES - 4P ---;
			if AggressorCount == 3            		
				Animations3_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(4, RaceKey, CreatureTags, CreatureTagsSuppress, false)	
				Debug.Trace("NAKED DEFEAT calmquest: 4P creature animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				if Animations3_Follower01.Length < 1			
				AggressorCount = 2
				Aggressors[2] = None
				endif
			endif
			;--- FOLLOWERS - CREATURES - 3P ---;
			if AggressorCount == 2              	
				Animations2_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(3, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest: 3P creature animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				if Animations2_Follower01.Length < 1			
				AggressorCount = 1
				Aggressors[1] = None
				endif
			endif
			;--- FOLLOWERS - CREATURES - 2P ---;
			if AggressorCount == 1             		
				Animations1_Follower01 = SexLab.GetCreatureAnimationsByRaceKeyTags(2, RaceKey, CreatureTags, CreatureTagsSuppress, false)
				Debug.Trace("NAKED DEFEAT calmquest: 2P creature animations found ("+ActorName+"): "+Animations1_Follower01.Length)
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
			Debug.Trace("NAKED DEFEAT calmquest: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
							
				Animations4_Follower01 = SexLab.GetAnimationsByTags(5, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 5-person animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 5-person animations found ("+ActorName+"): "+Animations4_Follower01.Length)
				if Animations4_Follower01.Length < 1			
				AggressorCount = 3
				Aggressors[3] = None
				else 
				FollowerHadGroup = true
				endif
			endif

			if AggressorCount == 3           ;4p
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations3_Follower01 = SexLab.GetAnimationsByTags(4, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 4-person animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 4-person animations found ("+ActorName+"): "+Animations3_Follower01.Length)
				if Animations3_Follower01.Length < 1				
				AggressorCount = 2
				Aggressors[2] = None
				else 
				FollowerHadGroup = true
				endif
			endif

			if AggressorCount == 2            ;3P		
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations2_Follower01 = SexLab.GetAnimationsByTags(3, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 3-person animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 3-person animations found ("+ActorName+"): "+Animations2_Follower01.Length)
				if Animations2_Follower01.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
				AggressorCount = 1
				Aggressors[1] = None
				else 
				FollowerHadGroup = true
				endif
			endif
			
			if AggressorCount == 1            ;2P
			GetSexTags(VictimNumber)
			Debug.Trace("NAKED DEFEAT calmquest: GroupTags Follower ("+ActorName+"): "+TagsWanted)
			Debug.Trace("NAKED DEFEAT calmquest: Supressed Tags Follower ("+ActorName+"): "+TagsSuppressed)
			
				Animations1_Follower01 = SexLab.GetAnimationsByTags(2, TagsWanted, TagsSuppressed, True)
				if cfgqst.ShowDebugMessages
				Debug.Notification("NAKED DEFEAT: 2-person animations found ("+ActorName+"): "+Animations1_Follower01.Length)
				endif
				Debug.Trace("NAKED DEFEAT calmquest: 2-person animations found ("+ActorName+"): "+Animations1_Follower01.Length)
				if Animations1_Follower01.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
				AggressorCount = 0
				Aggressors[0] = None
				endif
			endif	
		endif	
		
		;FOLLOWER
		;this removes the Raper[0] from the whipping Faction to make sure WhipQuest does catch a valid whipper
		;this also adds to busy Faction to make sure other mods do not use the actor (SpecatorCrowdsCompatibility)
		if (cfgqst.DefeatTypeScenario == "Rodeo") && Aggressors[0].IsInFaction(WhippingFaction)
			Aggressors[0].RemoveFromFaction(WhippingFaction)
			Aggressors[0].AddToFaction(BusyFaction)	
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
			Debug.Trace("NAKED DEFEAT calmquest: GetScenarioModifications - Reduce Aggressors, FollowerHadGroup Already")
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
			Debug.Trace("NAKED DEFEAT calmquest: GetScenarioModifications - Reduce Aggressors, PlayerHadGroup Already")
			AggressorCount = 1
			Aggressors[3] = None
			Aggressors[2] = None
			Aggressors[1] = None
			endif 
		endif 
	endif 
	
EndFunction 
		
;----------------------------------------------------------------------------------------------------------------------

bool SexSceneStarted = false ;internal, short time bool
		
		
		
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
	Debug.Trace("NAKED DEFEAT calmquest: OnForeplayEnd()")
	;#GUIDE: this starts RapeScene after Foreplay ends

		cfgqst.DefeatStateChapter = "Sex Scene"
		HasForeplay = false ;<<<---- ForePlayTag was stuck....
		WasForeplay = true 	;NOT IDEAL 
		cfgqst.Immobilize(true)

		;if !cfgqst.IsNymrasGame()
		
		;SexRound+=1 ;WRONG
		
		Debug.Trace("NAKED DEFEAT calmquest: OnForeplayEnd(SelectAggressor)")	
		
		;if cfgqst.IsNymrasGame()
		;skip that (test) 
		
		;WE KEEP THE SAME GROUP AS RAPERS, SO NO NEW SELECTOR NEEDED
		;THIS IS BAD BECAUSE WE DONT GET TAGS!!!!
		;NymTrace("#TEST Skip SelectAggressor")
		;else 
		SelectAggressor(FuckingRound, 0) ;<<<---- Dangerous. we should use Foreplay as a full sex Scene for all followers
		;endif 
		
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
	
	Debug.trace("NAKED DEFEAT calmquest: StartRape(After Foreplay)")	
	
	StartRape(Rapers[0])
	UnregisterForModEvent("AnimationEnd_NadeForeplay")	
	
EndFunction		

;early Event
Function OnForeplayEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest: OnForeplayEnding()")
	cfgqst.FadeToBlack(true)
	cfgqst.Immobilize(true)	
	UnregisterForModEvent("AnimationEnding_NadeForeplay")	
EndFunction	

Function OnAnimationStart(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest: OnAnimationStart("+EventName+")")
	;IMPORTANT NOTE: THIS EVENT FIRES SECOND (after AnimationStarting)
	if EventName == "AnimationStart_NadeRape"
	;Utility.Wait(8.0)
	Utility.Wait(5.0)
	cfgqst.FadeToBlack(false)
	
	GetIsMouthAvailable()

	UnregisterForModEvent("AnimationStart_NadeRape")
	
	elseif EventName == "AnimationStart_NadeForeplay"
	Utility.Wait(5.0)
	cfgqst.FadeToBlack(false)
	UnregisterForModEvent("AnimationStart_NadeForeplay")
	endif

	
EndFunction	

Function OnAnimationStarting(String EventName, String ArgString, Float ArgNum, Form Sender)	
	Debug.Trace("NAKED DEFEAT calmquest: OnAnimationStarting()")
	;IMPORTANT NOTE: THIS EVENT FIRES FIRST (before AnimationStart)
	if EventName == "AnimationStarting_NadeRape"
	
	Utility.Wait(10.0) ;make External JSON #external
	cfgqst.FadeToBlack(false)
	
	UnregisterForModEvent("AnimationStarting_NadeRape")
	endif
EndFunction	

bool ForePlayStarting = false
		
	;--------------- OLD ---------------- ; DELETE? 		
	;/	
	
Function StartForeplay(Actor akAggressor)		;
Debug.Trace("NAKED DEFEAT calmquest: StartForeplay (Player) START")
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
		
		
		Debug.Trace("NAKED DEFEAT calmquest: foreplay animations found (Player): "+AnimationsForeplay.Length)

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
				Debug.Trace("NAKED DEFEAT calmquest: Player Thread ID (tid): "+PlayerThread)
				
				else ;!Thread.StartThread() 
					
					Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
					Debug.Trace("NAKED DEFEAT calmquest: #ERROR failed to start SexLab thread.")
					OnForeplayEnd("", "", 0, None)					
				endif
			else			
				Debug.Trace("NAKED DEFEAT calmquest: #ERROR: failed to player and first raper to the scene.")
				Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")

				OnForeplayEnd("", "", 0, None)
			endif
		
		else ;from "if akAggressor && !akAggressor.IsDead()"
		
			if akAggressor.IsDead()
			Debug.Notification("<font color='#ff0000'>Seems your asigned rapist is dead...</font>")	;MESSAGE
			Debug.trace("NAKED DEFEAT calmquest: (#msg) Seems your asigned rapist is dead...(#ERROR)")
			else
			Debug.Notification("<font color='#ff0000'>Nobody there to fuck you this time...</font>")	;MESSAGE
			Debug.trace("NAKED DEFEAT calmquest: (#msg) Nobody there to fuck you this time...(#ERROR)")
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
Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(Player)")
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
				Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(RaperCount 1)")
					
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
						Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(Selected 2P): "+ForePlaySelected)
						
					
					

				; --- 3P ----
				elseif StartForeplayByName && (RaperCount == 2)	
				Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(RaperCount > 1)")
					
					ForePlayerCount = 2	
					;ForePlayStages = 2
					h = utility.randomint(1,11)
					;int h = 3
					Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew h: "+h)
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
					Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(Selected 3P): "+ForePlaySelected)
				endif
					
				
				;NymMessage("AnimationsForeplayName: "+AnimationsForeplayName.Length)	;Lenght is 1 !!! 
				int iAnimFound = 0
				iAnimFound = Sexlab.FindAnimationByName(ForePlaySelected)
				NymMessage("iAnimFound: "+iAnimFound)
				
				;if AnimationsForeplayName.Length < 1
				if iAnimFound <= 0 ; || iAnimFound == 0
				Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(#ERROR): No Animation Seleced. Use Base!")
				NymMessage("#ERROR - ForePlay use Fallback")	
					;2P Fallback
					if RaperCount == 1
					Debug.Trace("NAKED DEFEAT calmquest: StartForeplayNew(RaperCount 1)")
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
				;Debug.Trace("NAKED DEFEAT calmquest: foreplay animations found (Player): "+AnimationsForeplayName.Length)
				endif 
				
				Debug.Trace("NAKED DEFEAT calmquest: Foreplay Found: "+ForePlaySelected)
				
				
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
			
	;	Debug.Trace("NAKED DEFEAT calmquest: foreplay(2P) animations found (Player): "+AnimationsForeplay.Length)

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
				
				if cfgqst.IsNymrasGame()
				Debug.Trace("NAKED DEFEAT calmquest: Aggressors added to the thread: "+a)
				endif
				
				;new Foreplay by name
				if StartForeplayByName; ----- was needed for running anims by name. nothing worked, error was elsewehere
				Debug.Trace("NAKED DEFEAT calmquest: SetForcedAnimations")
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
				Debug.Trace("NAKED DEFEAT calmquest: Player Thread ID (tid): "+PlayerThread)
				
				else ;!Thread.StartThread() 
					
					Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
					Debug.Trace("NAKED DEFEAT calmquest: #ERROR failed to start SexLab thread.")
					OnForeplayEnd("", "", 0, None)					
				endif
			else			
				Debug.Trace("NAKED DEFEAT calmquest: #ERROR: failed to player and first raper to the scene.")
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

Actor TrackedRaper
	
Function StartRape(Actor akAggressor)		;#StartRape	;akAgressor	;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	##Rape ##Sex
Debug.Trace("NAKED DEFEAT calmquest: ::::::::::: StartRape (Player, #SexRound: "+SexRound+") :::::::::::::::::::::::::::::::::")
		
		Bool StartSex = true
		
		;
		
		if cfgqst.HeelsFix
		cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef)	;put HeelsEffect back on so Sexlab can do its thing
		Utility.Wait(1.0)
		endif 
		
		if cfgqst.SexScene && !WasForeplay
		ScreenMessage("#ERROR: Sex Scene Running- Double Start?")
		StartSex = false 
		elseif !akAggressor
		ScreenMessage("#ERROR: No Aggressor to add!")
		StartSex = false
		endif 
		
		if WasForeplay
		WasForeplay = false
		endif 

		if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
			ScreenMessage("#ERROR: Player is in SexLabForbiddenActors Faction. Attempting to fix.")
			cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)
			Utility.Wait(1.0)
			if cfgqst.PlayerRef.IsInFaction(SexLabForbiddenActors)
			ScreenMessage("#ERROR: Fixing the problem failed. Check/fix your other Mods")
			endif
		endif	
		if cfgqst.PlayerRef.IsInFaction(SexLabAnimatingFaction) 
			cfgqst.PlayerRef.RemoveFromFaction(SexLabAnimatingFaction)
			ScreenMessage("#ERROR: Player is in SexLabAnimatingFaction Faction. Attempting to fix.")
			Utility.Wait(1.0)
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
				ScreenMessage("They touch you everywhere... [Foreplay]")
				;NymMessage("Foreplay Scene - Start")
				else
				ScreenMessage("You are fucked! Round: "+SexRound+"/"+Allow_SexScenes)
				endif
				;else
				;ScreenMessage("You are fucked! Round: "+SexRound)
				;endif	
				
				;if Nym()
				NymTrace("#SEX - #GENDER HANDLING")
				NymTrace("#SEX - #SetVictim")
			;	Thread.SetVictim(cfgqst.PlayerRef, true) ;too early does not work, need to add to thread first
				
				;NymTrace("#SEX - #Victim Test HANDLING")
				;Sexlab.SetVictim(cfgqst.PlayerRef, true)
				if cfgqst.FemalesAllowed && D100(cfgqst.FemalesAsMales)
					if Rapers[0] && Sexlab.GetGender(Rapers[0])	== 1 
					Sexlab.EquipStrapon(Rapers[0])
					;Sexlab.TreatAsMale(Rapers[0])
						if Nym() && cfgqst.DefeatType == "Falmers"
						Debug.Messagebox("THis Happened!!!")
						endif 
					endif 
					if Rapers[1] && Sexlab.GetGender(Rapers[1])	== 1 
					Sexlab.EquipStrapon(Rapers[1])
					;Sexlab.TreatAsMale(Rapers[1])
						if Nym() && cfgqst.DefeatType == "Falmers"
						Debug.Messagebox("THis Happened!!!")
						endif 
					endif 
					if Rapers[2] && Sexlab.GetGender(Rapers[2])	== 1 
					Sexlab.EquipStrapon(Rapers[2])
					;Sexlab.TreatAsMale(Rapers[2])
						if Nym() && cfgqst.DefeatType == "Falmers"
						Debug.Messagebox("THis Happened!!!")
						endif 
					endif 
					if Rapers[3] && Sexlab.GetGender(Rapers[3])	== 1 
					Sexlab.EquipStrapon(Rapers[3])
						if Nym() && cfgqst.DefeatType == "Falmers"
						Debug.Messagebox("THis Happened!!!")
						endif 
					endif 				
				endif 
				;endif 	
				;int function AddActor(Actor ActorRef, bool IsVictim = false, sslBaseVoice Voice = none, bool ForceSilent = false)
				
				if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Rapers[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
				
				NymTrace("#SEX - #SetVictim")
				Thread.SetVictim(cfgqst.PlayerRef, true)
				
				cfgqst.SexScene = true
				cfgqst.SexState = 2	;SEX 
				SendModEvent("StartNakedSexExpressions") 
		
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
					Debug.Trace("NAKED DEFEAT calmquest: Aggressors added to the thread: "+i)
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
					int PlayerThread = Sexlab.FindPlayerController()
					Debug.Trace("NAKED DEFEAT calmquest: Player Thread ID (tid): "+PlayerThread)
					
						if DefeatTypeExecution == "ProxyImpale"
						SendModEvent("StartMoaning")
						endif
					;cfgqst.FixExpressions()	
					cfgqst.SexSceneCountPlayer += 1
					
					;THREAD START FAILED
					else ;!Thread.StartThread() 
						
						Debug.Notification("NAKED DEFEAT: #ERROR failed to start SexLab thread.")
						Debug.Trace("NAKED DEFEAT calmquest: #ERROR failed to start SexLab thread.")
						SexFailed = true
						;OnAnimationEnding("", "", 0, None)
						SexFinished()
						;Debug.Trace("NAKED DEFEAT calmquest: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
						
					endif
				;THREAD START FAILED
				else			
					Debug.Trace("NAKED DEFEAT calmquest: #ERROR: failed to player and first raper to the scene.")
					Debug.Notification("NAKED DEFEAT: #ERROR: failed to player and first raper to the scene.")
					SexFailed = true
					;OnAnimationEnding("", "", 0, None)
					SexFinished()
					;Debug.Trace("NAKED DEFEAT calmquest: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				endif
				

			else ;from "if akAggressor && !akAggressor.IsDead()"
			
				if akAggressor.IsDead()
				Debug.Notification("<font color='#ff0000'>Seems your asigned rapist is dead...</font>")	;MESSAGE
				Debug.trace("NAKED DEFEAT calmquest: (#msg) Seems your asigned rapist is dead...(#ERROR)")
				else
				Debug.Notification("<font color='#ff0000'>Nobody there to fuck you this time...</font>")	;MESSAGE
				Debug.trace("NAKED DEFEAT calmquest: (#msg) Nobody there to fuck you this time...(#ERROR)")
				endif

			;OnAnimationEnding("", "", 0, None)
			SexFailed = true
			SexFinished()
			endif	
			
			;start whipping
			if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")			
			whipq00.StartWhipQuest_00()
			endif
			
			SexSceneStarted = true
		
EndFunction

;Function OnOrgasmEndSolo()
Function OnOrgasmEndSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	
Debug.Trace("NAKED DEFEAT calmquest: OnOrgasmEndSolo()")

;CURRENTLY NOT NEEDED
;cfgqst.SexSceneBukkake = false

;Sexlab.AddCum(cfgqst.PlayerRef, true, true, true)


;UnregisterForModEvent("OrgasmEnd_NadeSolo2") 
;UnregisterForModEvent("OrgasmEnd_NadeSolo3") 
 
EndFunction


Function OnAnimationEndingSolo1(String EventName, String ArgString, Float ArgNum, Form Sender)	;early

Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEndingSolo1: SolosRunningRunning: "+SolosRunning)
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
		SexFinished()	
		endif
	endif
endif 	
	
if SolosRunning == 0	
Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEndingSolo1: All Solos DONE")
endif

UnregisterForModEvent("AnimationEnding_NadeSolo1") 
;UnregisterForModEvent("AnimationEnd_NadeSolo1") 
UnregisterForModEvent("OrgasmStart_NadeSolo1") 
;UnregisterForModEvent("OrgasmEnd_NadeSolo1") 
EndFunction

Function OnAnimationEndingSolo2(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEndingSolo2: SolosRunningRunning: "+SolosRunning)
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
		SexFinished()
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo2") 
;UnregisterForModEvent("AnimationEnd_NadeSolo2") 
UnregisterForModEvent("OrgasmStart_NadeSolo2") 

EndFunction

Function OnAnimationEndingSolo3(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEndingSolo3: SolosRunningRunning: "+SolosRunning)
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
		SexFinished()
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo3") 
;UnregisterForModEvent("AnimationEnd_NadeSolo3") 
UnregisterForModEvent("OrgasmStart_NadeSolo3") 

EndFunction

Function OnAnimationEndingSolo4(String EventName, String ArgString, Float ArgNum, Form Sender)

Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEndingSolo4: SolosRunningRunning: "+SolosRunning)
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
		SexFinished()
		endif
	endif
endif

UnregisterForModEvent("AnimationEnding_NadeSolo4") 
;UnregisterForModEvent("AnimationEnd_NadeSolo4") 
UnregisterForModEvent("OrgasmStart_NadeSolo4") 

EndFunction

Function OnOrgasmStart(String EventName, String ArgString, Float ArgNum, Form Sender)	 ;#OnOrgasmStart
Debug.Trace("NAKED DEFEAT calmquest: OnOrgasmStart()")

if cfgqst.NymBETA && (EventName == "OrgasmStart_NadeRape")
MfgConsoleFunc.SetPhoneme(cfgqst.PlayerRef, 1, 100)		;BIG AAAH
cfgqst.Orgasm = true
SendModEvent("Moan")
cfgqst.Orgasm = false
endif

ScreenMessage("You are cumming hard...")

EndFunction

;#FIXBUKKAKE

bool AlreadySoaked = false

;ONLY NEEDED FOR CUM, NOTHING ELSE
Function OnOrgasmStartSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	;#bukfix
Debug.Trace("NAKED DEFEAT calmquest: OnOrgasmStartSolo()")

if EventName == "OrgasmStart_NadeSolo1"
Debug.Trace("NAKED DEFEAT calmquest: AddCum(1)")

	Sexlab.AddCum(Game.GetPlayer(), true, false, false)


elseif EventName == "OrgasmStart_NadeSolo2"
Debug.Trace("NAKED DEFEAT calmquest: AddCum(2)")

	Sexlab.AddCum(Game.GetPlayer(), false, true, false)


elseif EventName == "OrgasmStart_NadeSolo3"
Debug.Trace("NAKED DEFEAT calmquest: AddCum(3)")

	Sexlab.AddCum(Game.GetPlayer(), false, false, true)


elseif EventName == "OrgasmStart_NadeSolo4"
Debug.Trace("NAKED DEFEAT calmquest: AddCum(4)")

	Sexlab.AddCum(Game.GetPlayer(), true, true, true)

endif

EndFunction

Int SolosRunning = 0
Bool AllowOrgasms
;Int SolosRunning = 0

Function StartSoloAggressor(actor akactor)	;#StartSoloAggressor #solo2

	SolosRunning += 1
	Debug.Trace("NAKED DEFEAT calmquest: StartAggressorSolo("+SolosRunning+")")
			
		if akactor	

			cfgqst.SexSceneBukkake = true
			
			if akactor.IsOnMount()
			akactor.Dismount()
			endif
			
			;MALE Actor (Gender 0)
			if Sexlab.GetGender(akactor) == 0	

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
				Thread.CenterOnObject(xMarkerHeading_00)			
				elseif SolosRunning == 2
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
				Thread.CenterOnObject(xMarkerHeading_01)
				elseif SolosRunning == 3
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
				Thread.CenterOnObject(xMarkerHeading_02)
				elseif SolosRunning == 4
				NymTrace("StartAggressorSolo("+SolosRunning+") B")
				Thread.CenterOnObject(xMarkerHeading_03)
				endif
				
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
		
		;Debug.Trace("NAKED DEFEAT calmquest: StartAggressorSolo(SolosRunning): " +SolosRunning)
		
EndFunction

Function StartMasturbation()			;#masturbation
Debug.Trace("NAKED DEFEAT calmquest: StartRape (Player) START")
		
	;	ForcePosing_2 = false
	
		
		Animations1 = SexLab.GetAnimationsByTags(1, "Solo", "", True)
		
		RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
		RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
		RegisterForModEvent("StageStart_NadeRape", "OnStageStart")
		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD			
		ScreenMessage("You are forced to fuck yourself!")		
		InfoMessage("SCENARIO: Masturbation")	
		;Debug.Notification("<font color='#ff0000'>You are forced to fuck yourself!</font>")	;MESSAGE
		;Debug.trace("NAKED DEFEAT calmquest: (#msg) You are forced to fuck yourself!")

			
	if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) 			;makes Thread with PC and Aggressor(0)

		cfgqst.SexScene = true
		SendModEvent("StartNakedSexExpressions")	
	
		Thread.SetAnimations(Animations1)	
		;Thread.SetForcedAnimations(Animations1)		
		Thread.CenterOnObject(VehiclePlayer)			
		Thread.DisableBedUse(true)
		Thread.DisableLeadIn(true)
		Thread.SetHook("NadeRape")	
		
		cfgqst.FadeToBlack(false)

		if !Thread.StartThread()							
			;OnAnimationEnding("", "", 0, None)
			SexFinished()
			Debug.Notification("NAKED DEFEAT: ERROR starting SexLab thread.")
			Debug.Trace("NAKED DEFEAT calmquest: Failed to start SexLab thread.")
		endif

	else				
		;OnAnimationEnding("", "", 0, None)
		SexFinished()
		Debug.Trace("NAKED DEFEAT calmquest: Failed to add the Player to the SexLab thread.")
		Debug.Notification("NAKED DEFEAT: ERROR: Failed to add the Player to the SexLab thread.")
	endif
	
	whipq00.StartWhipQuest_00()
	
	SexSceneStarted = true
		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;/
;no longer needed
Function StartIdleScene_01()		;#idle			;akAgressor		;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	#Rape
Debug.Trace("NAKED DEFEAT calmquest: StartIdleScene_01 START")

			
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
Debug.Trace("NAKED DEFEAT calmquest: StartRape (Follower01) START")
				
		if cfgqst.HeelsFix		
		cfgqst.RestoreHeelsEffectOnActor(Victims[0])	
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
					Debug.Trace("NAKED DEFEAT calmquest: Aggressors added to the thread: "+i)
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
					Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start A (StartRapeFollower01)")
					Debug.Notification("Nobody around to fuck your follower")
					OnAnimationEnd01("", "", 0, None)
					;Debug.Notification("ERROR starting SexLab thread.")
				;	Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				;	Debug.Trace("NAKED DEFEAT calmquest: Failed to start SexLab thread (StartRapeFollower01).")
				endif

			else				
				Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start B (StartRapeFollower01)")
				Debug.Notification("Nobody around to fuck your follower")
				OnAnimationEnd01("", "", 0, None)
				;Debug.Notification("ERROR: failed to add the first two participants to the SexLab thread.")
				;Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
			endif
		else		
			Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start C (StartRapeFollower01)")
			Debug.Notification("Nobody around to fuck your follower")
			OnAnimationEnd01("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------


bool SexFollower02Running = false	;internal, short time bool

Function StartRapeFollower02(Actor akAggressor)		;#StartRapeFollower02	
Debug.Trace("NAKED DEFEAT calmquest: StartRape (Follower02) START")
			
		if cfgqst.HeelsFix		
		cfgqst.RestoreHeelsEffectOnActor(Victims[1])
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
					Debug.Trace("NAKED DEFEAT calmquest: Aggressors added to the thread: "+i)
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
					Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start A (StartRapeFollower02)")
					Debug.Notification("Nobody around to fuck your other follower")
					OnAnimationEnd02("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start B (StartRapeFollower02)")
				Debug.Notification("Nobody around to fuck your other follower")
				OnAnimationEnd02("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start C (StartRapeFollower02)")
			Debug.Notification("Nobody around to fuck your other follower")
			OnAnimationEnd02("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function StartPee(Actor akAggressor)						;#pee

Debug.Trace("NAKED DEFEAT calmquest: StartPee START")
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
		

		RegisterForModEvent("AnimationEnding_NadePee", "OnPeeFinished")
		RegisterForModEvent("StageStart_NadePee", "OnStageStart")
		
		cfgqst.SexScene = true
		cfgqst.SexState = 3 ;GoldenShower
		SendModEvent("StartNakedSexExpressions")
		
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
					Debug.Trace("NAKED DEFEAT calmquest: Aggressors added to the thread: "+i)
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
					Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start A (StartPee)")		
					Debug.Notification("Nobody wants to piss on you.")
					OnPeeFinished("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start B (StartPee)")		
				Debug.Notification("Nobody wants to piss on you.")
				OnPeeFinished("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT calmquest: (#ERROR) Failed to Start C (StartPee)")		
			Debug.Notification("Nobody wants to piss on you.")
			OnPeeFinished("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function OnPeeFinished(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnPeeFinished				
Debug.Trace("NAKED DEFEAT calmquest: OnPeeFinished()")
;EARLY EVENT	
	
	;#TODO this needs to be synchronized with the rest.
	; in general I need to make more of the PeeEvent and maybe add different special scenes too.
	
	;ForcePosing_1 = false
	;cfgqst.FadeToBlack(true)	;NO LONGER NECESSARY. we handle this elsewehere.
	cfgqst.SexScene = false
	IsMouthAvailable = 1
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

Event OnStartSolo(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE		;#solo		#events #bukkake
	Debug.Trace("NAKED DEFEAT calmquest: OnStartSolo()")
	
	;IMPROVE THIS!!!
	;WE want to generally select actor groups in a centralized function

	Bool newSystem = true 

	if newSystem 

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
		
	else 

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
	Debug.Trace("NAKED DEFEAT calmquest: OnStartVoyeurs()")
		
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
Debug.Trace("NAKED DEFEAT calmquest: OnStartCallMolesters()")
	
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
	Debug.Trace("NAKED DEFEAT calmquest: OnStartCombatScanner()")
;	cfgqst.CombatScan()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartForceExpression(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartForceExpression()")
;	cfgqst.ForceExpression()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeHands(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartAddRapeHands()")
	cfgqst.AddRapeHands()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

bool KeepMoaning = false

Event OnStartMoaning(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartMoaning()")
	
	KeepMoaning = true
	while KeepMoaning
	SendModEvent("Moan")
	Utility.Wait(1.0)
	endwhile
	
EndEvent


;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeTears(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartAddRapeTears()")	
	cfgqst.AddRapeTears()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartAddRapeCount(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartAddRapeCount()")	
	cfgqst.AddRapeCount()
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnStartForceImmobilize(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnStartForceImmobilize()")

EndEvent

;----------------------------------------------------------------------------------------------------------------------

Event OnEndofDefeat(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
;#todo we can add a Float ("ArgNum") to set the "wait" time individually.
	Debug.Trace("NAKED DEFEAT calmquest: OnEndofDefeat()")
	IsEndOfDefeat = true 
	Utility.Wait(2.0)
;	ForcePosing_2 = false
	SetStage(1000)	
EndEvent

bool IsEndOfDefeat = false 	
bool StartSlavery = false
bool StopSprintScan = false ;internal short time	
	
Event OnEndofDefeat_Slavery(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnEndofDefeat_Slavery()")
	Utility.Wait(2.0)
	StartSlavery = true
	SetStage(1000)	
EndEvent

bool StartAfterlife = false

Event OnEndofDefeat_Afterlife(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	Debug.Trace("NAKED DEFEAT calmquest: OnEndofDefeat_Afterlife()")
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
Debug.Trace("NAKED DEFEAT calmquest: OnStartEscape()")

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
				
					Utility.Wait(1.0)
					;cfgqst.SpeedMultMaintenance()
				
				;K press changes state to "SpotFound"
				endwhile
				
			elseif cfgqst.DefeatEscapeCrawl == 2 	;TIMER TICKS DOWN - hotkey can end
									
				Float f = cfgqst.DefeatEscTime
							
				while (f > 0) && (cfgqst.DefeatStatePlayer == "Escaping") && cfgqst.ModEnabled && !cfgqst.AbortAll
					
					f -= 1
					Utility.Wait(1.0)
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
Debug.Trace("NAKED DEFEAT calmquest: OnOrgasmEnd()")

if cfgqst.ShowDebugMessages
Debug.Notification("NAKED DEFEAT: End of Orgasm")
endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Int DefeatStageProb 


int IsMouthAvailable = 1	;#todo: replace with property

Function GetIsMouthAvailable()
	
	IsMouthAvailable = 1
	
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
	
	If Anim.UseOpenMouth(PlayerPos, SexLab.GetController(tid).Stage)
		IsMouthAvailable = 0
		;Debug.Trace("_STA_FORK: Mouth available: " + IsMouthAvailable)
	EndIf
	Debug.Trace("_STA_FORK: Mouth available: " + IsMouthAvailable)

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

Function OnStageStart(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback
	Debug.Trace("NAKED DEFEAT calmquest: OnStageStart()")

	GetIsMouthAvailable()

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	Int SceneStage = thread.Stage
	Debug.Trace("NAKED DEFEAT calmquest: Stage "+SceneStage+" Started: Mouth: "+IsMouthAvailable)

	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation	
	
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
	
	if cfgqst.NakedCumming && cfgqst.DefeatStateChapter != "Foreplay Scene"
		
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
				NymMessage("Stage: "+SceneStage+" Rapers[0] is cumming! threadID: "+threadID)
				EndIf
			endif 
			if Rapers[1] && Rapers[1].IsInFaction(SexLabAnimatingFaction)
			Utility.Wait(Utility.RandomInt(1, 5))
				if D100(OrgasmChanceMale(SceneStage, Raper1_Orgasms))
				Thread.ForceOrgasm(Rapers[1])
				NymMessage("Stage: "+SceneStage+" Rapers[1] is cumming! threadID: "+threadID)
				EndIf
			endif 

			;PLAYER 
			if D100(15*SceneStage) && !previousAnim.HasTag("Blowjob")
			Utility.Wait(Utility.RandomInt(1, 5))
			Thread.ForceOrgasm(cfgqst.PlayerRef)
			NymMessage("Stage: "+SceneStage+" Player is cumming !threadID: "+threadID)	
			MfgConsoleFunc.SetPhoneme(cfgqst.PlayerRef, 1, 100)		;BIG AAAH
			cfgqst.Orgasm = true
			SendModEvent("Moan")
			cfgqst.Orgasm = false
			EndIf
			
			if Rapers[2] && Rapers[2].IsInFaction(SexLabAnimatingFaction)
			Utility.Wait(Utility.RandomInt(1, 3))
				if D100(OrgasmChanceMale(SceneStage, Raper2_Orgasms))
				Thread.ForceOrgasm(Rapers[2])
				NymMessage("Stage: "+SceneStage+" Rapers[2] is cumming!threadID: "+threadID)
				EndIf
			endif 
			Utility.Wait(Utility.RandomInt(1, 3))
			if Rapers[3] && Rapers[3].IsInFaction(SexLabAnimatingFaction)
				if D100(OrgasmChanceMale(SceneStage, Raper3_Orgasms))
				Thread.ForceOrgasm(Rapers[3])
				NymMessage("Stage: "+SceneStage+" Rapers[3] is cumming! threadID: "+threadID)
				EndIf
			endif 
			
		endif 
	endif 
	
EndFunction

; THIS FUNCTION IS CALLED ON registered EVENT from SEXLAB 
Function OnStageEnd(String EventName, String ArgString, Float ArgNum, Form Sender)		;#stagegoback ;#OnStageEnd
Debug.Trace("NAKED DEFEAT calmquest: OnStageEnd()")

	int threadID = SexLab.FindActorController(cfgqst.PlayerRef)
	SslThreadController thread = SexLab.GetController(threadID)
	sslThreadModel ThreadLib = SexLab.GetController(threadID)

	Int SceneStage = ThreadLib.Stage
	
;	if Nym() && thread.HasTag("Billyy")	;NOT WORKING 
;	Debug.Messagebox("FOUND TAG: Billyy")
;	endif
	
	Sound CurrentlyPlayingSound = thread.SoundFX
	Debug.Trace("NAKED DEFEAT calmquest: SoundPlayed(): "+CurrentlyPlayingSound.GetName())
	
		;FOREPLAY WIP
		;GetRawTags()
		
	sslThreadController Controller = Sexlab.ThreadSlots.GetController(threadID)
	sslBaseAnimation previousAnim = Controller.Animation
	;NymMessage("ANIMATIONTAG:" +previousAnim.HasTag("Femdom"))
	
;	if previousAnim.HasTag("Femdom")
	
;		RapersTemp[0] = cfgqst.PlayerRef
;		RapersTemp[1] = Rapers[0]						
;		if Rapers[1]
;		RapersTemp[2] = Rapers[1]
;		endif 
;		if Rapers[2]
;		RapersTemp[3] = Rapers[2]
;		endif 
;		if Rapers[3]
;		RapersTemp[4] = Rapers[3]
;		endif 
;
;		ThreadLib.ChangeActors(RapersTemp)	
;	endif 
	

		; ------------------------------------------------------- ;
; --- Tagging System                                  --- ;
; ------------------------------------------------------- ;

;bool function HasTag(string Tag) ;sslThreadModel
;	return Tag != "" && Tags.Find(Tag) != -1
;endFunction

	
	Debug.Trace("NAKED DEFEAT calmquest: GetDescriptor(): "+CurrentlyPlayingSound.GetDescriptor()) ;<<<<---- THIS WORKS 

	;Debug.Trace("NAKED DEFEAT calmquest: GetDescriptor(): "+CurrentlyPlayingSound.GetDescriptor().GetName())
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
	
	Debug.Trace("NAKED DEFEAT calmquest: OnStageEnd() #Stage: "+SceneStage)

	;DebugNotification("NAKED DEFEAT: End of Stage: "+SceneStage)
	
	If cfgqst.IsNymrasGame()
	InfoMessage("End of Stage: "+SceneStage)
	endif
	
	;--- FOREPLAY HANDLING -----------------------------------------------------------------------------------------
	
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
		if D100(DefeatStageProb) && (SceneStage	> 1) && !StagingDone	;!GoBack &&				;#back
		DefeatStageProb -= 15
		Utility.Wait(Utility.RandomInt(5,10))
		ScreenMessage("They really like to fuck you and take it slow.")
		thread.AdvanceStage(true)	;go back a stage
		endif
		
		StagingDone = false
		
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

;early event 	
Function OnAnimationEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				

	Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEnding()")
	cfgqst.FadeToBlack(true)
	
	cfgqst.Immobilize(true)
	Vehicle("restore") 	;double check
	
	;if !cfgqst.SexFinished && !IsBathing
	SexFinished()
	;endif
	
	

EndFunction
	
;----------------------------------------------------------------------------------------------------------------------	
	
;late Event	
Function OnAnimationEnd(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE					

	Debug.Trace("NAKED DEFEAT calmquest: OnAnimationEnd()")	
	cfgqst.Immobilize(true)
	Vehicle("restore") 	;double check

	
EndFunction

Function PushRapersAway()	
	NymTrace("PushRapersAway()")
	if Nym()

		String sTempRacekey = cfgqst.GetRaceKey(Rapers[0])
		;Push RAPERs AWAY!!!!
		if sTempRacekey == "Falmers"
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

EndFunction 
	
Function MoveRapersAway()	
		
		Int iTempDistance = -150
		
		if cfgqst.IsNymrasGame()		;#BETA - move in sight to see 
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
	
	Bool SexFailed 
	
	
Function SexFinished()				;##finished #SexFinished
		
		cfgqst.FixExpressions()

		cfgqst.DefeatStateChapter = "Waiting"
		
		if cfgqst.IsNymrasGame()
		cfgqst.PlayCombatBlockingSound()
		Utility.Wait(1.0)
		cfgqst.PlayCombatBlockingSound()
		endif 
		
		Debug.trace("NAKED DEFEAT calmquest: SexFinished() :::::::::::::::::::::: #Rape Round "+FuckingRound+" (Player) END ::::::::::::::::::::::")
		
		;Debug.Messagebox
	
		if cfgqst.IsNymrasGame() && cfgqst.SexFinished
		ScreenMessage("#ERROR SexFinished DOUBLE START")
		endif 
		
		if (VictimCount > 0) && SexFailed
		SexFailed = false 
		Debug.Trace("NAKED DEFEAT calmquest: SexFinished() SexFailed, now we wait")	
		Utility.Wait(15.0)

		endif 
		; --- After Sex Maintenance ---;  
		cfgqst.SexFinished = true
		cfgqst.SexScene = false	
		IsMouthAvailable = 1
		cfgqst.Immobilize(true)	;double check
		ResetGroupsForNextRound() 
		; -----------------------------; 
			
		PushRapersAway()	
		MoveRapersAway() ;only for Afterlife/FastTravel at the moment SKIP. not good

		if cfgqst.NymBeta
		SendModEvent("StartAddRapeCount")
		endif

		;Vehicle("restore") 	;double check
		SendModEvent("Moan")

		;Still needed? 
		If !cfgqst.PlayerRef.IsAIEnabled() && (!cfgqst.AbortAll) ;Is  AI enabled?
		ScreenMessage("#ERROR AI is DISABLED")
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
		cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef)
		endif 
		;OOOOOOOOOOOOOoooooooooooooooo............	FADE BLACK OUT 
						
		if cfgqst.BlackFadeStatus == 1
		cfgqst.FadeToBlack(false)	
		endif
		
	
		if ((cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")) && cfgqst.IsHumanoid(Aggressors[0]) && !Aggressors[0].IsInFaction(WhippingFaction)
		Aggressors[0].AddToFaction(WhippingFaction)
		Aggressors[0].RemoveFromFaction(BusyFaction)
		endif
			
		if cfgqst.FollowerCount == 0 || (!cfgqst.AbortAll)
		Sexlab.ThreadSlots.StopAll()
		endif

		;Wait for FollowerScenes to finish
		while (SexFollower01Running || SexFollower02Running || (SolosRunning > 0)) && cfgqst.ModEnabled && (!cfgqst.AbortAll)
		Utility.Wait (1.0)
		endwhile

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
		
		if cfgqst.IsNymrasGame()
		cfgqst.PlayCombatBlockingSound()
		endif
		
		cfgqst.SexFinished = false	
		
		;0 SCENES
		if cfgqst.IsDefeatRunning() && (Allow_SexScenes == 0)			;WHY DOES THIS EXIST?
		SetStage(14) ;end of rape
		SexScenesDone = 0 ;reset counter
		elseif cfgqst.IsDefeatRunning()
		
			;SEX SCENES HANDLING for CHAIN RAPE 		#scenes #chain
			if SexScenesDone == 1  	
				if Allow_SexScenes == 1
				Debug.Trace("NAKED DEFEAT calmquest: round 1/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 1/1 done >>> sent of end of rape
				elseif Allow_SexScenes > 1
				Debug.Trace("NAKED DEFEAT calmquest: chainrape round 1/"+Allow_SexScenes+" done: send to round 2")
				Setstage(11)	;round 1 completed >>> send to round 2
				endif
			elseif SexScenesDone == 2	
				if Allow_SexScenes == 2
				Debug.Trace("NAKED DEFEAT calmquest: round 2/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 2/2 done >>> sent of end of rape
				elseif Allow_SexScenes > 2
				Debug.Trace("NAKED DEFEAT calmquest: chainrape round 2/"+Allow_SexScenes+" done: send to round 3")
				Setstage(12)	;round 2 completed >>> send to round 3
				endif
			elseif SexScenesDone == 3	
				if Allow_SexScenes == 3
				Debug.Trace("NAKED DEFEAT calmquest: round 3/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 3/3 done >>> sent of end of rape
				elseif Allow_SexScenes > 3
				Debug.Trace("NAKED DEFEAT calmquest: chainrape round 3/"+Allow_SexScenes+" done: send to round 4")
				Setstage(11)	;round 3 completed >>> send to round 4
				endif
			elseif SexScenesDone == 4	
				if Allow_SexScenes == 4
				Debug.Trace("NAKED DEFEAT calmquest: round 4/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 4/4 done >>> sent of end of rape
				elseif Allow_SexScenes > 4
				Debug.Trace("NAKED DEFEAT calmquest: chainrape round 4/"+Allow_SexScenes+" done: send to round 5")
				Setstage(12)	;round 4 completed >>> send to round 5
				endif
			elseif SexScenesDone == 5	
				if Allow_SexScenes == 5
				Debug.Trace("NAKED DEFEAT calmquest: round 5/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 5/5 done >>> sent of end of rape
				elseif Allow_SexScenes > 5
				Debug.Trace("NAKED DEFEAT calmquest: chainrape round 5/"+Allow_SexScenes+" done: send to round 6")
				Setstage(11)	;round 5 completed >>> send to round 6
				endif
			elseif SexScenesDone == 6	
				if Allow_SexScenes == 6
				Debug.Trace("NAKED DEFEAT calmquest: round 6/"+Allow_SexScenes+" done, send to end of rape") 
				SetStage(14) ;round 6/6 done >>> sent of end of rape
				endif
			elseif cfgqst.IsDefeatRunning()
			ScreenMessage("NAKED DEFEAT calmquest: #ERROR - why are we here?")
			else
			ScreenMessage("NAKED DEFEAT calmquest: #ERROR - ABORT END OF DEFEAT")
			SetStage(1000)
			endif
				
		;WE NEED TO ACCOUNT FOR CHAIN RAPE EVENT WITH 4-6 SCENES TOO OMFG
			;/
			;2 SCENES (CHAIN RAPE) 	
			if (SexScenesDone == 0) && (Allow_SexScenes == 2)	
			Debug.Trace("NAKED DEFEAT calmquest: chainrape round 1/2 done: send to round 2")
			SendModEvent("StartAddRapeTears")
			SexScenesDone = 1
			Setstage(11)	;round 1/2 completed >>> send to round 2/2
			elseif (SexScenesDone == 1) && (Allow_SexScenes == 2) 
			Debug.Trace("NAKED DEFEAT calmquest: chainrape round 2/2 done: send to end of rape")
			SexScenesDone = 0	 ;reset counter
			SetStage(14) 	;round 2/2 completed >>> end of rape
			
			
			;3 SCENES (CHAIN RAPE)
			(SexScenesDone == 0) && (Allow_SexScenes == 3)	
			Debug.Trace("NAKED DEFEAT calmquest: chainrape round 1/3 done: send to round 2")
			SendModEvent("StartAddRapeTears")
			SexScenesDone = 1
			Setstage(11)	;round 1/3 completed >>> send to round 2/3
			elseif (SexScenesDone == 1) && (Allow_SexScenes == 3)
			Debug.Trace("NAKED DEFEAT calmquest: chainrape round 2/3 done: send to round 3")
			SexScenesDone = 2
			Setstage (12)	;round 2/3 completed >>> send to round 2/3	
			elseif (SexScenesDone == 2) && (Allow_SexScenes == 3)
			Debug.Trace("NAKED DEFEAT calmquest: chainrape round 3/3 done: send to end of rape")
			SexScenesDone = 0 ;reset counter
			SetStage(14) ;round 3/3 completed >>> send to end of rape

			;1 SCENE
			elseif (SexScenesDone == 0 ) && (Allow_SexScenes == 1)
			Debug.Trace("NAKED DEFEAT calmquest: round 1/1 done, send to end of rape") ;;this is not an error. it happens when only 1 scene is allowed.
			SexScenesDone = 0 ;reset counter
			SetStage(14) ;round 1/1 done >>> sent of end of rape
			
			;ERROR
			else
			
			endif
			/;
		endif
	
EndFunction
;----------------------------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------------------
		
;early event	 ;Victims[0]		
Function OnAnimationEnd01(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE		
;	Debug.Trace("NAKED DEFEAT calmquest: - OnAnimationEnd01 (Follower)")	
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
Debug.Trace("NAKED DEFEAT calmquest: - OnAnimationEnding01 (Follower)")

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
	Debug.Trace("NAKED DEFEAT calmquest: - OnAnimationEnd02 (Follower)")	
	
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
	;Debug.Trace("NAKED DEFEAT calmquest: #Pose(OnAnimationEnding02 Victims[1])")	
	PlayPoseOnActor(Victims[1], "Random", false)	
	
	UnRegisterForModEvent("AnimationEnd_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;late event 02		;Victims[1]
Function OnAnimationEnding02(String EventName, String ArgString, Float ArgNum, Form Sender)			;
;Debug.Trace("NAKED DEFEAT calmquest: - OnAnimationEnding02 (Follower)")

	SexFollower02Running = false
			
	StripFollower(1)
	Vehicle_Follower_02("restore") 
	; xxxxxxxxxxxxxxxxxxxxXXXX --- #POSE --- XXXXxxxxxxxxxxxxxxxxxxxx 
	; after Sex unhappy  		
	;Debug.Trace("NAKED DEFEAT calmquest: #Pose(OnAnimationEnding02 Victims[1])")		
	PlayPoseOnActor(Victims[1], "Random", true)	
	UnRegisterForModEvent("AnimationEnding_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function StartShortWhipping()

RegisterForSingleUpdate(0.5)

Endfunction

Event OnUpdate()			; #update

Debug.Trace("NAKED DEFEAT calmquest: onupdate()")
		
	
	if (cfgqst.DefeatTypeGeneral == "AreHumans") ;(cfgqst.DefeatTypeScenario != "AfterLife") && (cfgqst.DefeatTypeScenario != "FastTravel")
	cfgqst.TempIntBridge = 1
	cfgqst.WhipAgain = true
	whipq00.StartShortWhipping()
	endif 
		
	;	cfgqst.TempIntBridge = 1
	;	whipq00.StartWhipQuest_00()
		 ;no scene protectors
	;	Utility.Wait(8.0)
	;	whipq00.SetStage(25)
		;EscapeDifficulty += 1
	;	cfgqst.WhipAgain = false
	;	cfgqst.TempIntBridge = 0

	
	
	
						;	if EndOfRape && !cfgqst.RapeAgain
						;	Debug.Trace("NAKED DEFEAT calmquest: onupdate (EndOfRape)")
						;	EndOfRape = false
						;	SetStage(500)	;send to defeat outcomes
	
						;	elseif EndOfQuest && !cfgqst.RapeAgain
						;	Debug.Trace("NAKED DEFEAT calmquest: onupdate (EndOfQuest)")
						;	EndOfQuest = false
						;	Debug.Notification("<font color='#ff0000'>It seems like they are done with you.</font>")	;MESSAGE
						;	Debug.trace("NAKED DEFEAT calmquest: (#msg) It seems like they are done with you.")				
						;	SetStage(1000)	;end of defeat
	
;	if ForcePosing_1				
;	Debug.Trace("NAKED DEFEAT calmquest: onupdate (ForcePosing_1)")
	;ForcePose("surrender")
;	elseif ForcePosing_2
;	Debug.Trace("NAKED DEFEAT calmquest: onupdate (ForcePosing_2)")
	;ForcePose("wiggle")
						;elseif cfgqst.RapeAgain && EndOfRape ;&& !EndOfRape && !EndOfQuest ;&& !ForcePosing_1 &&
						;Debug.Trace("NAKED DEFEAT calmquest: onupdate (RapeAgain)")
					
						;EndOfRape = false
						;EndOfQuest = false
						;SetStage(500)

;	else
;	Debug.Trace("NAKED DEFEAT calmquest: onupdate (ERROR - update call)")
;	endif
	
	;Debug.Trace("NAKED DEFEAT calmquest: onupdate (OFF)")

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
	
	Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(START - Actor: "+VictimNumber+")")
	
	String TagsSuppressedTemp = ""	
	String TagsWantedTemp = ""	
	String TagsWantedForeplayTemp = ""
	
	;String TagsSuppressedTemp_supFOREPLAY
	
	String TagsSuppressedTemp_supNYMRA = "Futa, Femdom, 3jiou, Loving, "
	String TagsSuppressedTemp_supBASE = "LeadIn, GoldenShower, Necro, Guro, Molag, MM, Gay, Femdom, " 		;#tags
	String TagsSuppressedTemp_supFURN = "Furniture, XCross, Wall, InvisFurn, Bed, Stockade, Wheel, Pillory, BedOnly, Bench, Throne, WallHole, " 		;#tags "Table" AND "Chair" ALLOWED FOR NOW
	String TagsSuppressedTemp_supBINDS = "Yoke, Armbinder, Cuffs, " 		
	String TagsSuppressedTemp_supPOSEScenarios = "GoldenShower, LeadIn, " 	
	
	;"VictimNumber 0 = Player" , BULLSHIT - use names
	
	; ---- ForePlay ----------------------------------------------------------------------------	
	if (VictimNumber == 0) && (cfgqst.DefeatStateChapter == "Foreplay Scene") 
		;ADD SCENARIO FOREPLAY LATER 
		
		TagsWantedForeplayTemp = "NymForeplay, "+GetCurrentBoundScenario()+", "
	
	; ---- Scenario DD ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "DD")

		
		if Nym()
			int i = Utility.RandomInt(1, 10)
		;	Debug.Trace("NAKED DEFEAT calmquest: GetSexTagsRANDOM i = "+i)
			if i < 4  
				TagsWantedTemp = "Aggressive"
			elseif i == 5 
				TagsWantedTemp = "Standing"
			elseif i == 6 
				TagsWantedTemp = "Cowgirl"
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
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario ARMBINDER ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Armbinder")
	TagsWantedTemp = "Armbinder, "
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario WHEEL ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Wheel")
	TagsWantedTemp = "Wheel, "
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario XCROSS ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "XCross")
	TagsWantedTemp = "Xcross, "
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario STOCKADE ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Stockade")
	TagsWantedTemp = "Stockade, "
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario CUFFS ----------------------------------------------------------------------------		
	elseif (cfgqst.DefeatTypeScenario == "Cuffs")	
	TagsWantedTemp = "Cuffs, "	
	TagsSuppressedTemp = TagsSuppressedTemp_supPOSEScenarios + GroupComposition()
	; ---- Scenario EXECUTION ----------------------------------------------------------------------------	
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "ProxyImpale") 
	TagsWantedTemp = "Proxy, Spike"
	elseif (cfgqst.DefeatTypeScenario == "Execution") && (DefeatTypeExecution == "NymraGallows")
	TagsWantedTemp = "Nymra, Gallows"	
	
	elseif (cfgqst.DefeatTypeScenario == "Rodeo")
		int i = Utility.RandomInt(1, 5)
		if i > 2
		TagsWantedTemp = "Cowgirl"
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
		Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(no Scenario)")			
		;SUPRESSED TAGS FOR ALL 	
		TagsSuppressedTemp = TagsSuppressedTemp_supBASE + TagsSuppressedTemp_supFURN + TagsSuppressedTemp_supBINDS + GroupComposition()
		
		;------ NYMRAS MCM TAGS OVERWRITE ---------------------------------------------------------------------------------
		if cfgqst.IsNymrasGame()
		Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(NYMRA)")	
			int i = Utility.RandomInt(1, 10)
			Debug.Trace("NAKED DEFEAT calmquest: GetSexTagsRANDOM i = "+i)
			if i < 4  
				TagsWantedTemp = "Aggressive"
			elseif i == 5 
				TagsWantedTemp = "Standing"
			elseif i == 6 
				TagsWantedTemp = "Cowgirl"
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
				Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(MCM 01)")
				if cfgqst.NymBETA
				InfoMessage("Tags 01: "+cfgqst.SavedTags_01)
				endif
				TagsWantedTemp = cfgqst.SavedTags_01
			elseif i == 2 
				Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(MCM 02)")
				if cfgqst.NymBETA
				InfoMessage("Tags 02: "+cfgqst.SavedTags_02)
				endif
				TagsWantedTemp = cfgqst.SavedTags_02
			elseif i == 3 
				Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(MCM 03)")
				if cfgqst.NymBETA
				InfoMessage("Tags 03: "+cfgqst.SavedTags_03)
				endif
				TagsWantedTemp = cfgqst.SavedTags_03
			elseif i == 4
				Debug.Trace("NAKED DEFEAT calmquest: GetSexTags(MCM 04)")
				if cfgqst.NymBETA
				InfoMessage("Tags 04: "+cfgqst.SavedTags_04)
				endif
				TagsWantedTemp = cfgqst.SavedTags_04
			endif	
		endif		
	endif 			

	if Nym()
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWantedTemp == "+TagsWantedTemp)
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWanted == "+TagsWanted)
	endif
	if TagsWantedTemp == "none" 
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWantedTemp = NONE as String ")
	TagsWantedTemp = "Aggressive"
	
	elseif TagsWantedTemp == "" 
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWantedTemp = ")
	endif 

	if (VictimNumber == 0) && cfgqst.DefeatStateChapter == "Foreplay Scene"
	TagsSuppressed = TagsSuppressedTemp_supFURN
	TagsWanted = TagsWantedForeplayTemp
	else
	TagsSuppressed = TagsSuppressedTemp 
	TagsWanted = TagsWantedTemp
	endif 
	
	if Nym()
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWantedTemp == "+TagsWantedTemp)
	Debug.Trace("NAKED DEFEAT calmquest: #ERROR TagsWanted == "+TagsWanted)
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

Function AddDefeatBindsFollowers(actor akactor)		;#binds
Debug.Trace("NAKED DEFEAT calmquest: AddDefeatBindsFollowers")
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


Function AddDefeatBindsToActor(actor akactor, String mode)	
	
	
	Debug.Trace("NAKED DEFEAT calmquest: AddDefeatBindsToActor")
	;check if we are allowed to/exclude animals
	if mode == "Add" 

			;----- ANIMALS ----------------------------------------------------------------------------------
		if cfgqst.DefeatTypeGeneral == "AreAnimals"
		;NONE 	
		;----- GIRLFRIEND // FASTTRAVEL ----------------------------------------------------------------------------------
		elseif (cfgqst.DefeatTypeScenario == "Girlfriend") || (cfgqst.DefeatTypeScenario == "FastTravel")
		;NONE 

		;------ POSE SCENARIOS BINDS -----------------------------------------------------------------------
		
		;YOKE
		elseif (cfgqst.DefeatTypeScenario == "Yoke") 
		cfgqst.PlayCuffsSoundMetal()
		akActor.AddItem(DefeatBindsYoke[0], 1, true)			
		akActor.EquipItem(DefeatBindsYoke[0], false, true)

		;ARMBINDER
		elseif (cfgqst.DefeatTypeScenario == "Armbinder") 		;only 1 armbinder for the moment because the Anims Will have that one too... WIP #baustelle
		cfgqst.PlayCuffsSoundRope()
		akActor.AddItem(DefeatBindsArmbinder[0], 1, true)			
		akActor.EquipItem(DefeatBindsArmbinder[0], false, true)

		;CUFFS
		elseif (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatStateBindings == "Cuffs" )		
		;int x = Utility.RandomInt (0, 3)
		;for now only equip metal cuffs...	
		;	if x == 0 
		;	cfgqst.PlayCuffsSoundRope()
		;	akActor.AddItem(DefeatBinds[0], 1, true)			;leather
		;	akActor.EquipItem(DefeatBinds[0], false, true)	
		;	elseif x == 1
			cfgqst.PlayCuffsSoundMetal()
			akActor.AddItem(DefeatBinds[1], 1, true)			;metal
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

;OLD DELETE ++++++++++++++++++++++++++++++
Function RemoveDefeatBindsFollowers(actor akactor)
Debug.Trace("NAKED DEFEAT calmquest: RemoveDefeatBindsFollowers")
actor a = akactor
	a.RemoveItem(DefeatBinds[3], 1, true, None)
EndFunction
;++++++++++++++++++++++++++++++	
		
Function AddDefeatBinds()		;#binds		#AddDefeatBinds
;this function handles the equiping of binds AND fills the Variables that tell the mod which poses are played and in what kind of state / binds the player is
;important for (might be we overacted here and remove one of them again)
;cfgqst.DefeatBindsEquipped	;only needed for RemoveDefeatBinds() Function ----> PLAY POSE HERE to Remove Xcross etc.?
;cfgqst.DefeatStateBindings 
				
	if cfgqst.DefeatTypeScenario == "DD"

		int i = Utility.RandomInt(1,9)
		Debug.Trace("NAKED DEFEAT calmquest: AddDefeatBinds() - Add DDevices Random: "+i)
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
	
	else 			
	Debug.Trace("NAKED DEFEAT calmquest: AddDefeatBinds() - DefeatStateBindings:"+cfgqst.DefeatStateBindings+" DefeatBindsEquipped:"+cfgqst.DefeatBindsEquipped)

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

Function RemoveDefeatBinds()

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

Debug.Trace("NAKED DEFEAT calmquest: CombatScan() FUNCTION (ON)")

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
		Debug.Trace("NAKED DEFEAT calmquest: CombatScan() AllegianceQuest (RESTART)")
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
	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseFollower()")
	
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


Function Vehicle(string Type = "none")		;#vehicle()
;DebugTrace("Vehicle()")

VehicleAlreadySetup = true 
Bool NewVehiclePlacement = true

	if Type == "SetupForSlavery"
	Debug.trace("NAKED DEFEAT calmquest: Vehicle (SetupForSlavery)")
	;PLAYER X MARKER (FAst Setup For Slavery) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	VehiclePlayer = Alias_Vehicle.GetReference() 
	VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)

		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		endif
		
		if folqst.Actor_Follower01	;LEFT					
		SetVehicleToActor(folqst.Actor_Follower01, "FRONT LEFT 45°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 160.0, 45.0)	
		endif 	
		if folqst.Actor_Follower02	;RIGHT			
		SetVehicleToActor(folqst.Actor_Follower02, "FRONT RIGHT 45°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 160.0, 320.0)
		endif
	
		
	
	elseif Type == "SetupForAfterlife"			;#Afterlife		
	Debug.trace("NAKED DEFEAT calmquest: Vehicle (SetupForAfterlife)")
		Bool NewVehicle = true
	
		; --- PLAYER SETUP --- ;
		VehiclePlayer = Alias_Vehicle.GetReference() 
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		endif
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)	;set rotation to match the PC
		
		; --- WATCHERS SETUP --- ;
		PlaceWatchMarkers()
		
		; --- FOLLOWER PACKAGE --- ;
		folidle01.StartFollowerIdleQuest_01("none")	
		if folqst.Actor_Follower01
		Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference()
		folidle01.StartDoingNothing_01(true)
		folqst.Actor_Follower01.EvaluatePackage()
		endif
		if folqst.Actor_Follower02
		Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference()
		folidle01.StartDoingNothing_02(true)
		folqst.Actor_Follower02.EvaluatePackage()
		endif 
		cfgqst.FollowerStripCompletely()		

		
		if NewVehicle
			
			;MOVE TO LEFT AND RIGHT OF PLAYER		;TAHLIA 				
			if folqst.Actor_Follower01	;FRONT 			
			;SetVehicleToActor(folqst.Actor_Follower01, "LEFT 90°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 170.0, 0.0)	;was 180 facing LEFT	less is rotating -> LEFT
			SetVehicleToActor(folqst.Actor_Follower01, "FRONT 90°", Vehicle_Victims0, cfgqst.PlayerRef, VehiclePlayer, 185.0, 180.0)	;was 0 facing LEFT	less is rotating -> LEFT
			endif 	
			if folqst.Actor_Follower02	;BACK		;LYDIA
			;SetVehicleToActor(folqst.Actor_Follower02, "RIGHT 90°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 170.0, 180.0)	;was 0, facing LEFT	less is rotating -> LEFT
			SetVehicleToActor(folqst.Actor_Follower02, "BACK 90°", Vehicle_Victims1, cfgqst.PlayerRef, VehiclePlayer, 180.0, 0.0)	;was 180, facing LEFT	less is rotating -> LEFT
			endif
		
			
		else
	
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
		endif 
	
	;#SS AUCTION with FOLLOWERS 		
	elseif Type == "SetupForAuction"			;#auction		
	Debug.trace("NAKED DEFEAT calmquest: Vehicle (SetupForAuction)")			
		
		if folqst.IsWithUs_Follower(0) || folqst.IsWithUs_Follower(1)
		folidle01.StartFollowerIdleQuest_01("none")	
		cfgqst.FollowerStripCompletely()
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
		
			;Utility.Wait(0.5)
			
			;	VehiclePlayer = Alias_Vehicle.GetReference() 
			;	VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)

				;LEFT SPOT 
				;FOLLOWER 02: 	
			;	Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference() 
				;Utility.Wait(0.5)
					
					;1 Follower moved to Spot 
					if folqst.Actor_Follower02	
					folqst.Actor_Follower02.MoveTo(cfgqst.PlayerRef, -110.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -110.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;MOVES to the LEFT 
		
					;2 Follower TO FACE PLAYER			
					zOffset = folqst.Actor_Follower02.GetHeadingAngle(cfgqst.PlayerRef)
					folqst.Actor_Follower02.SetAngle(folqst.Actor_Follower02.GetAngleX(), folqst.Actor_Follower02.GetAngleY(), folqst.Actor_Follower02.GetAngleZ() + zOffset)
					cfgqst.RotateObject(folqst.Actor_Follower02, 270)
				
					folqst.Actor_Follower02.MoveTo(folqst.Actor_Follower02, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower02)
					;Vehicle_Victims1.MoveTo(folqst.Actor_Follower02, folqst.Actor_Follower02.GetHeight() - 125.0, abMatchRotation = true)

					;folqst.Actor_Follower02.MoveTo(Vehicle_Victims1)	
						
					;folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)
					
					;Debug.trace("NAKED DEFEAT playeraliasquest: StartFollowerIdleQuest_01()")
						
					PlayPoseOnActor(folqst.Actor_Follower02, "FollowerAuction", false)
					endif
					;FAR LEFT 
					;FOLLOWER 01: 	
					;Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference() 
					;Utility.Wait(1.0)
					
					
					if folqst.Actor_Follower01
					folqst.Actor_Follower01.MoveTo(cfgqst.PlayerRef, -180.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -180.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) 
					;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
					zOffset = folqst.Actor_Follower01.GetHeadingAngle(cfgqst.PlayerRef)
					folqst.Actor_Follower01.SetAngle(folqst.Actor_Follower01.GetAngleX(), folqst.Actor_Follower01.GetAngleY(), folqst.Actor_Follower01.GetAngleZ() + zOffset)
					;cfgqst.RotateObject(Vehicle_Victims0, 190)
					;cfgqst.RotateObject(Vehicle_Victims0, 90)
					cfgqst.RotateObject(folqst.Actor_Follower01, 270)
					folqst.Actor_Follower01.MoveTo(folqst.Actor_Follower01, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower01)
					;Vehicle_Victims0.MoveTo(folqst.Actor_Follower01, folqst.Actor_Follower01.GetHeight() - 125.0, abMatchRotation = true)
			
					PlayPoseOnActor(folqst.Actor_Follower01, "FollowerAuction", false)
					endif
;/
	elseif Type == "SetupForAuction22"			;#auction ; DID NOT WORK WITHOUT QUEST START 
	Debug.trace("NAKED DEFEAT calmquest: Vehicle (SetupForAuction22)")		
		folidle01.StartFollowerIdleQuest_01("none")	
			Utility.Wait(0.5)
		;FOLLOWER 02 	
		;if folqst.Actor_Follower02
			
			folidle01.StartDoingNothing_02(true)
			folidle01.StartDoingNothing_01(true)
			cfgqst.FollowerStripCompletely()
			
			
			Utility.Wait(0.5)
			
				VehiclePlayer = Alias_Vehicle.GetReference() 
				VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)

				;LEFT SPOT 
				;FOLLOWER 02: 	
				Vehicle_Victims1 = Alias_Vehicle_Follower_02.GetReference() 
				Utility.Wait(0.5)
				
					Vehicle_Victims1.MoveTo(VehiclePlayer, -110.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -110.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) ;MOVES to the LEFT 
					
					
					
					;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
					zOffset = Vehicle_Victims1.GetHeadingAngle(cfgqst.PlayerRef)
					Vehicle_Victims1.SetAngle(Vehicle_Victims1.GetAngleX(), Vehicle_Victims1.GetAngleY(), Vehicle_Victims1.GetAngleZ() + zOffset)
					;cfgqst.RotateObject(Vehicle_Victims1, 190)
					cfgqst.RotateObject(Vehicle_Victims1, 270)
				
					folqst.Actor_Follower02.MoveTo(Vehicle_Victims1, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower02)
					Vehicle_Victims1.MoveTo(folqst.Actor_Follower02, folqst.Actor_Follower02.GetHeight() - 125.0, abMatchRotation = true)

					folqst.Actor_Follower02.MoveTo(Vehicle_Victims1)	
					folqst.Actor_Follower02.EvaluatePackage()	
					folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)
					
					Debug.trace("NAKED DEFEAT playeraliasquest: StartFollowerIdleQuest_01()")
						
					PlayPoseOnActor(folqst.Actor_Follower02, "FollowerAuction", false)
					
					;FAR LEFT 
					;FOLLOWER 01: 	
					Vehicle_Victims0 = Alias_Vehicle_Follower_03.GetReference() 
					Utility.Wait(1.0)
					
					
					
					Vehicle_Victims0.MoveTo(VehiclePlayer, -180.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90.0), -180.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90.0), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = true) 
					;VEHICLE TO FACE PLAYER ----------------------------------------------------------------------------				
					zOffset = Vehicle_Victims0.GetHeadingAngle(cfgqst.PlayerRef)
					Vehicle_Victims0.SetAngle(Vehicle_Victims0.GetAngleX(), Vehicle_Victims0.GetAngleY(), Vehicle_Victims0.GetAngleZ() + zOffset)
					;cfgqst.RotateObject(Vehicle_Victims0, 190)
					;cfgqst.RotateObject(Vehicle_Victims0, 90)
					cfgqst.RotateObject(Vehicle_Victims0, 270)
					folqst.Actor_Follower01.MoveTo(Vehicle_Victims0, abMatchRotation = true)
					TillTouchdown(folqst.Actor_Follower01)
					Vehicle_Victims0.MoveTo(folqst.Actor_Follower01, folqst.Actor_Follower01.GetHeight() - 125.0, abMatchRotation = true)

					folqst.Actor_Follower01.MoveTo(Vehicle_Victims0)	
					folqst.Actor_Follower01.EvaluatePackage()	
					folqst.Actor_Follower01.SetVehicle(Vehicle_Victims0)
	
					
					PlayPoseOnActor(folqst.Actor_Follower01, "FollowerAuction", false)
					
		;endif 
		/;
				
	elseif Type == "setup"
		Debug.trace("NAKED DEFEAT calmquest: Vehicle (setup)")
		;PLAYER X MARKER (MAIN) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		VehiclePlayer = Alias_Vehicle.GetReference() 
		
		if VehiclePlayer
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		;VehiclePlayer.SetAngle(0.0, 0.0, 0.0)	;reset rotation to have correct alignment of Surround Markers <<<<<<------ THIS WAS THE PROBLEM!!! 
		else
		NymTrace("#ERROR - Vehicle is NONE")
		endif 
		
		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		endif
		VehiclePlayer.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)	;set rotation to match the PC

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
	
		Debug.trace("NAKED DEFEAT calmquest: Vehicle (restored)")
		cfgqst.PlayerRef.MoveTo(VehiclePlayer)								
		
		float cZ = 0.0
		float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
		While(cZ != cfgqst.PlayerRef.Z) && (second < 2.0)
		cZ = cfgqst.PlayerRef.Z
		Utility.Wait(0.1)
		second += 0.1
		EndWhile
	
		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(VehiclePlayer)					
		;Debug.trace("NAKED DEFEAT calmquest: Set Vehicle AfterSexA (ON)")
		endif
	
	elseif Type == "remove"
		
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)			
		Debug.trace("NAKED DEFEAT calmquest: Vehicle (removed)")
		
		if VehiclePlayer
		VehiclePlayer.DisableNoWait()
		VehiclePlayer.Delete()										
		Alias_Vehicle.Clear() 
		endif 
		
		if Vehicle_Victims0
		Vehicle_Victims0.DisableNoWait()
		Vehicle_Victims0.Delete()										
		Alias_Vehicle_Follower_03.Clear() 	;#TODO clean vehicle integration Alias
		endif 
		
		if Vehicle_Victims1
		Vehicle_Victims1.DisableNoWait()
		Vehicle_Victims1.Delete()										
		Alias_Vehicle_Follower_02.Clear() 		
		endif 
		
		xMarkerHeading_00.DisableNoWait()
		xMarkerHeading_00.Delete()										
		Alias_XMarkerHeading_00.Clear() 
		
		xMarkerHeading_01.DisableNoWait()
		xMarkerHeading_01.Delete()										
		Alias_XMarkerHeading_01.Clear() 
		
		xMarkerHeading_02.DisableNoWait()
		xMarkerHeading_02.Delete()										
		Alias_XMarkerHeading_02.Clear() 
		
		xMarkerHeading_03.DisableNoWait()
		xMarkerHeading_03.Delete()										
		Alias_XMarkerHeading_03.Clear() 
		
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function TillTouchdown(actor akactor)
	
		float cZ = 0.0	
		float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
		While(cZ != akactor.Z) && (second < 2.0)
		cZ = akactor.Z
		Utility.Wait(0.1)
		second += 0.1
		EndWhile
EndFunction	


Function Vehicle_Follower_01(string Type = "none")		

	if Type == "setup"
	Debug.trace("NAKED DEFEAT calmquest: Vehicle_Victims0 (setup)")

		;--- move to vehicle ---

		if folqst.Actor_Follower01
		folqst.Actor_Follower01.MoveTo(Vehicle_Victims0)
		folqst.Actor_Follower01.SetVehicle(Vehicle_Victims0)
		endif		 

	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT calmquest: Vehicle_Victims0 (restored)")
		;--- restore to vehicle ---
		if folqst.Actor_Follower01
		folqst.Actor_Follower01.MoveTo(Vehicle_Victims0)	
		folqst.Actor_Follower01.EvaluatePackage()	
		folqst.Actor_Follower01.SetVehicle(Vehicle_Victims0)
		endif 
		
	elseif Type == "remove"
		
		if folqst.Actor_Follower01
		folqst.Actor_Follower01.SetVehicle(folqst.Actor_Follower01)			
		Vehicle_Victims0.DisableNoWait()
		Vehicle_Victims0.Delete()										
		Alias_Vehicle_Follower_01.Clear() 
		endif
		


	endif

EndFunction

Function Vehicle_Follower_02(string Type = "none")		

	if Type == "setup"
	Debug.trace("NAKED DEFEAT calmquest: Vehicle_Victims1 (setup)")

		if folqst.Actor_Follower02
		folqst.Actor_Follower02.MoveTo(Vehicle_Victims1)
		folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)
		endif	

	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT calmquest: Vehicle_Victims1 (restored)")
		;--- restore to vehicle ---
		
		if folqst.Actor_Follower02
		folqst.Actor_Follower02.MoveTo(Vehicle_Victims1)
		folqst.Actor_Follower02.EvaluatePackage()
		folqst.Actor_Follower02.SetVehicle(Vehicle_Victims1)
		endif 
	elseif Type == "remove"
		
		if folqst.Actor_Follower02
		folqst.Actor_Follower02.SetVehicle(folqst.Actor_Follower02)			
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
		Debug.Trace("NAKED DEFEAT calmquest: #ERROR Actor invalid (ask for support): has racekey: "+RaceKey)
		return false
		endif
		
		;rules out Followers (not allowed as rapers) -> solve special scenarios differently -> follower rapes PC and vice versa #todo
		if (cfgqst.FollowerCount > 0) && IsFollower(a)
		return false
		endif

		if (cfgqst.DefeatTypeGeneral == "AreHumans") || cfgqst.DefeatType == ("Humans") || cfgqst.DefeatType == ("Funny")
		Debug.Trace("NAKED DEFEAT calmquest: Human Actor allowed")
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
		Debug.Trace("NAKED DEFEAT calmquest: Human Actor allowed (Undead)")
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
			Debug.Trace("NAKED DEFEAT calmquest: #Demonic Creature Found: "+RaceKey)
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
				Debug.trace("NAKED DEFEAT calmquest: #NOTE: No last Attacker identified: All the creaturs fuck you now!")
				endif
			ShortDefeat = true
			return true

			elseif (cfgqst.DefeatType == "funny") 
				if !note
				note = true
				Debug.Notification("#NOTE: No last Attacker identified: You are fucked by everybody!")
				Debug.trace("NAKED DEFEAT calmquest: #NOTE: no enemy identified, you are fucked by everybody now!")
				endif
			ShortDefeat = true
			return true
			
			else
				Debug.Notification("#ERROR: No DefeatType!")
				Debug.trace("NAKED DEFEAT calmquest: #ERROR: No DefeatType!")
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



Function ResetValues()			;#reset

	;::::::::::::::::::: FOLLOWERCLEANUP ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: ::::::::::::::::::: 
	int i = 4
	
	while i > 0 
		i -= 1
		if folqst.IsTravellingWithUsFollower(i)
			if folqst.NakedFollower[i].IsInFaction(cfgqst.CrawlFaction)
			folqst.NakedFollower[i].RemoveFromFaction(cfgqst.CrawlFaction)
			endif 
			if folqst.NakedFollower[i].IsInFaction(cfgqst.ProtectedActorFaction)
			folqst.NakedFollower[i].RemoveFromFaction(cfgqst.ProtectedActorFaction)
			endif 
			if folqst.NakedFollower[i].IsInFaction(cfgqst.nade_DefeatFaction)
			folqst.NakedFollower[i].RemoveFromFaction(cfgqst.nade_DefeatFaction)
			endif 
			folqst.NakedFollower[i].ClearExpressionOverride()
			MfgConsoleFunc.ResetPhonemeModifier(folqst.NakedFollower[i])	
		endif 		
	endwhile

	cfgqst.PlayerRef.ClearExpressionOverride()
	MfgConsoleFunc.ResetPhonemeModifier(cfgqst.PlayerRef)

	cfgqst.ShortPunishment = 0

	cfgqst.PublicExposure = 0
	
	IsMouthAvailable = 1
	
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

	;ShortDefeat = false ;OLD
	
	Rescued = false	

	UnRegisterForUpdate()
	UnRegisterForModEvent("Bis_BatheEvent")						;#unregister
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
	UnRegisterForModEvent("StartRaperExpressions")
	
	
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
	
Function StartRapeSequence()			;#StartRapeSequence()
;GUIDE: this starts all the rape scenes for player AND followers
;it starts for Every Round (so 3 times in total, more for chain rape?)

Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence() Round:"+FuckingRound)

	;>>>>>>>>>>>>>>>>>> Roll for Foreplay Yes/No >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>						
						
	if Allow_Foreplay && (cfgqst.DefeatTypeGeneral == "AreHumans") && D100(cfgqst.DefeatForeplayChance) 	
	;Foreplay only on Round 1 (takes all too long if not...)
		
		if (FuckingRound == 1)  
		HasForeplay = true 
		cfgqst.DefeatStateChapter = "Foreplay Scene"
		endif
	endif

	;>>>>>>>>>>>>>>>>>> Select Aggressors for the Player >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	SelectAggressor(FuckingRound, 0)
	
	Rapers = new Actor[4]					
	Rapers[0] = None						
	Rapers[1] = None						
	Rapers[2] = None						
	Rapers[3] = None	
	RaperCount = 0
		
	;save Aggressors as Rapers --> RAPERS are the Player Group
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
	
	;............ooooooooooooooooOOOOOOOOOOOOO	FADE BLACK IN 01
	
	if cfgqst.BlackFadeStatus == 0
	cfgqst.FadeToBlack(true)	
	endif
	
	Utility.Wait(2.0)
	
	;;;!!!! SexFinished() has to be the BRIDGE after every player round/scenario. Foreplay -> OnForePlay End but starts Sex and Sex -> SexFinished()!!!! 

	; --- START FOREPLAY (Player) ---> ;#foreplay1
	if HasForeplay && cfgqst.IsDefeatRunning()
	;Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(ForePlay)")
	
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence :::::::::::::::::::::: #ForePlay Start ::::::::::::::::::::::")
	
	;if Nym()
	StartRape(Rapers[0])
	;else
	;StartForeplayNew(Rapers[0])
	;endif 
	;we dont want the Selected Group to Change

	; --- START MASTURBATION (Player) --- ; #Bukkake1	
	elseif (cfgqst.DefeatTypeScenario == "Masturbation") && cfgqst.IsDefeatRunning()
	;Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(Masturbation)")
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence :::::::::::::::::::::: #Masturbation Start ::::::::::::::::::::::")
	cfgqst.DefeatStateChapter = "Sex Scene"
	cfgqst.FixExpressions()
	StartMasturbation()
	
	; --- START BUKKAKE (Player) --- ; #Bukkake1
 	elseif (cfgqst.DefeatTypeScenario == "Bukkake") && cfgqst.IsDefeatRunning()
	;Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(Bukkake)")
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence :::::::::::::::::::::: #Bukkake Start ::::::::::::::::::::::")
	PlayPoseOnActor(cfgqst.PlayerRef, "receiving", false)	
	cfgqst.DefeatStateChapter = "Bukkake Scene"
	
		if SolosRunning > 0
		NymMessage("#ERROR SolosRunning = "+SolosRunning)
		SolosRunning = 0
		endif
		
	OnStartSolo("", "", 0, None) ;errrm, #TODO this good? Should Send ModEvent here I think... 
	
	; --- START REGULAR SEX (Player) ----> 
	elseif cfgqst.IsDefeatRunning()
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(REGULAR SEX )")
	
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

	;Debug.trace("NAKED DEFEAT calmquest: StartRape #001")	
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence :::::::::::::::::::::: #Rape Round "+FuckingRound+" (Player) Start ::::::::::::::::::::::")	
	
	cfgqst.DefeatStateChapter = "Sex Scene"
	StartRape(Rapers[0])
	
		if humangroup && D100(cfgqst.RapeHandsProb)  	;#rapehands
		SendModEvent("StartAddRapeHands")			
		endif
	endif
	
	SexSceneStarted = false
	
	;Foreplay Running (wait) ? (improve)
	;maybe we can remove this 
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence - ForePlayStarting: "+ForePlayStarting)
	while ForePlayStarting && cfgqst.IsDefeatRunning() && !cfgqst.AbortAll
	Utility.Wait(2.0)
	endwhile
						
	;---- FOLLLOWER SCENES -----------------------------------------------------------------------
	;start only after ForePlay is done??? NO hmm 
	if (Victimcount > 0) && cfgqst.IsDefeatRunning()
	Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(Victims)")			
		; --- Victims[0] --- ; 
		if Victims[0]	
			;female 	
			if (SexLab.GetGender(Victims[0]) == 1) && cfgqst.FemaleFollower  
			SelectAggressor(FuckingRound, 1)							
				
				if AggressorCount > 0
				Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(Victims[0]female StartRape)")	
				StartRapeFollower01(Aggressors[0])
				endif	
			;male
			elseif (SexLab.GetGender(Victims[0]) == 0) && cfgqst.MaleFollower  
			SelectAggressor(FuckingRound, 1)						
				
				if AggressorCount > 0
				StartRapeFollower01(Aggressors[0])
				endif		
			endif
		endif
				
		; -- Victims[1] --- ;	
		if Victims[1]
			;female 
			if (SexLab.GetGender(Victims[1]) == 1) && cfgqst.FemaleFollower  	
			SelectAggressor(FuckingRound, 2)						
			
				if AggressorCount > 0
				Debug.trace("NAKED DEFEAT calmquest: StartRapeSequence(Victims[1]female StartRape)")
				StartRapeFollower02(Aggressors[0])
				endif
			;male
			elseif (SexLab.GetGender(Victims[1]) == 0) && cfgqst.MaleFollower  
			SelectAggressor(FuckingRound, 2)						
			
				if AggressorCount > 0
				StartRapeFollower02(Aggressors[0])
				endif
			endif
		endif
		;here be Follower 03
		;all other followers get sex or just bound?
	endif	
	
	;ResetThe Groups (selection done, all are available again)
	;0 stay 0 (not available), 1 stays 1 and 2 becomes 1 again. 
	;NOTE when we spawn actors later during the quest we need to make the script know that. (put Group to 1 manually)
	;#thomas
	
	
			

EndFunction

Function ResetGroupsForNextRound()
Debug.trace("NAKED DEFEAT calmquest: ResetGroupsForNextRound - Reseted after Round: "+FuckingRound)
		
		;group was Blocked (2)
		;set Blocked to Available (1)
		;empty groups are (0)
		;preselected groups are (3) but never make it here, they are treatead normally after (set to (1) and to (2) if picked)
		
		if GroupArray[0] == 2	;RapersA
		GroupArray[0] = 1
		endif 
		if GroupArray[1] == 2	;RapersB
		GroupArray[1] = 1
		endif 
		if GroupArray[2] == 2	;RapersC
		GroupArray[2] = 1
		endif 
		if GroupArray[3] == 2	;CreaturesA	
		GroupArray[3] = 1
		endif 
		if GroupArray[4] == 2	;CreaturesB
		GroupArray[4] = 1
		endif 			
		if GroupArray[5] == 2	;CreaturesC
		GroupArray[5] = 1
		endif 
		
		if GroupArray[6] == 2	;CreaturesD
		GroupArray[6] = 1
		endif 
		if GroupArray[7] == 2	;CreaturesE
		GroupArray[7] = 1
		endif 			
		if GroupArray[8] == 2	;CreaturesF
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
	
	RaperCount = j
	
	NymTrace("RaperCount: "+j)
	
EndFunction 	
	
	
;-----------------------------------------------------------------------------------------------------------------------------------------

;:::::::::::::::::::::::::::: BATHING STUFF START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

bool IsBathing = false

Function SceneForcedBathing(string BathingType)		;#bathing

Debug.trace("NAKED DEFEAT calmquest: SceneForcedBathing()")
	
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
				Debug.trace("NAKED DEFEAT calmquest: IsInFaction(SexLabForbiddenActors)")
				Utility.Wait(1.0)
				cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)	;still needed???
				endwhile
				cfgqst.FadeToBlack(true)		;---> FADE TO BLACK - Ending (ON) ---> Golden Shower
												;OnPeeFinished() toggles it off again
			else
			Debug.trace("NAKED DEFEAT calmquest: no valid pee guys, abort")
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
			
			cfgqst.SexScene = true
			SendModEvent("StartNakedSexExpressions")
			
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
			
			int i = 10
				while i > 0		;#petra
				i -= 1
				
					if D100(33)
					cfgqst.PlaySound()
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
		
			Sexlab.ThreadSlots.StopAll()
			SolosRunning = 0
			
			IsBathing = false
			cfgqst.DefeatStateChapter = "Golden Shower"
			IsMouthAvailable = 1
			cfgqst.PlayerRef.RestoreAV("Stamina", 2000)
			OnPeeFinished("", "", 0, None)
	
	elseif BathingType == "ForcedBathing"
	ScreenMessage("They want you squicky shiny clean! [Forced Bathing]")
	IsBathing = true
	
	StartSceneViaModEvent("Forced Bathing")
	cfgqst.SexScene = true
	
	SendModEvent("StartNakedSexExpressions")
	
	;external Loop while Function is running
	cfgqst.NakedBathing()		;turns on Fade To Black for Ending
	
	Sexlab.ThreadSlots.StopAll()
	SolosRunning = 0
	
	IsBathing = false
	OnPeeFinished("", "", 0, None)
	;cfgqst.SexScene = false
	IsMouthAvailable = 1
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
	Debug.Trace("NAKED DEFEAT calmquest: Event player bathing finished")

;	if !cfgqst.SexFinished
;	SexFinished()
;	endif
;	Utility.Wait(3.0)

EndEvent

;--------------------------------------------------------------------------------------------------------------------------------------------------------------------

Function RestorePosition(int akFollower)
;called from the FollowerIdleQuest ---> checks distance to vehicle and attempts to catch and restore vehicle and then pose.

if (akFollower == 0) && (Victims[0].GetDistance(Vehicle_Victims0) > 50)
Debug.Trace("NAKED DEFEAT calmquest: Victims[0] caught fleeing.")
Victims[0].Moveto(Vehicle_Victims0)
elseif (akFollower == 1) && (Victims[1].GetDistance(Vehicle_Victims1) > 50)
Debug.Trace("NAKED DEFEAT calmquest: Victims[1] caught fleeing.")
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
				Debug.Trace("NAKED DEFEAT calmquest: Victims[0] caught running.")
				return false
				else
				return true
				endif
		elseif VictimNum == 1 && Victims[1]
				if Victims[1].GetDistance(Vehicle_Victims1) > 200
				Debug.Trace("NAKED DEFEAT calmquest: Victims[1] caught running.")
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

			if (akFollower == 0) && Victims[0]
				
				;if cfgqst.IsNymrasGame() && !Vehicle_Victims0
				;Debug.MessageBox("NO VEHICLE FILLED 01") 
				;endif
				
				if !Vehicle_Victims0 && Nym()
				NymMessage("No Vehicle_Victims0") 
				endif 

				if Victims[0].GetDistance(Vehicle_Victims0) > 100
				Debug.Trace("NAKED DEFEAT calmquest: Victims[0] caught running.")
				Victims[0].Moveto(Vehicle_Victims0)
				return true
				else
				return false
				endif
				
			elseif (akFollower == 1) && Victims[1]
			
				if !Vehicle_Victims1 && Nym()
				NymMessage("No Vehicle_Victims1") 
				endif 

				if Victims[1].GetDistance(Vehicle_Victims1) > 100
				Debug.Trace("NAKED DEFEAT calmquest: Victims[1] caught running.")
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

	;Debug.trace("NAKED DEFEAT calmquest: FindSpot()	 Timer:"+cfgqst.FindSpotTime)
	
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
	
	else

		cfgqst.DefeatStatePlayer = "FindSpot"
		ScreenMessage("Find a good spot...")
		InfoMessage("[PRESS K (Action KEY) when you found one]")
		cfgqst.PlayerRef.SheatheWeapon()
		AllowPlaceFloor = true	

	;	cfgqst.Crawl(cfgqst.PlayerRef, true)	 ;enbables controls disables controls for crawl		
			
		if folqst.Actor_Follower01
		Utility.Wait(1.0)
		cfgqst.Crawl(folqst.Actor_Follower01, true)
		endIf
		if folqst.Actor_Follower02
		Utility.Wait(1.0)
		cfgqst.Crawl(folqst.Actor_Follower02, true)
		endif 
		
		;Utility.Wait(1.0)
		cfgqst.PlayerRef.SheatheWeapon()
	;	cfgqst.ImmobilizeCrawl(true)

	;	Debug.SetGodmode(true)
	;	cfgqst.PlayerRef.SheatheWeapon()				
		;#### GUIDE: this loops until the the hotkey is pressed (K)
		
		if cfgqst.DefeatFindSpot > 0	;ALLOWED TO FIND A SPOT 
	
			if cfgqst.DefeatFindSpot == 1 	;UNLIMITED TIME 
			
				while cfgqst.DefeatStatePlayer == "FindSpot" && cfgqst.ModEnabled && !cfgqst.AbortAll
				
					Utility.Wait(1.0)
				;	cfgqst.SpeedMultMaintenance()
				
						
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
				
					if f == 10
					ScreenMessage("10 seconds left to find a spot!") 
					endif 
				
				;K press changes state to "SpotFound"
				endwhile
			endif 	
		endif	
	endif	
	
	; ------ SPOT FOUND -------- ;
	cfgqst.ProcessCrimeGold()			
	;cfgqst.FindSpotTime = 1
	;BUSTED too many problems... dropped for now:
	;RealWaiting(cfgqst.FindSpotTime)
	
	AllowPlaceFloor = false
	UnRegisterForAnimationEvent(cfgqst.PlayerRef, "tailSprint")
	
	;cfgqst.SlowDownPlayer("reset")
	
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

Function PlayPoseOnActor(actor akactor, string Type = "none", bool restore)				 ;#PlayPoseOnActor				

String PosingActor = "empty"

	if akactor == cfgqst.PlayerRef
	PosingActor = "Player"
	NymTrace("PlayPoseOnActor: "+Type)
	elseif akactor && akactor == folqst.NakedFollower[0]
	PosingActor = folqst.Name_Follower01
	elseif akactor && akactor == folqst.NakedFollower[1]
	PosingActor = folqst.Name_Follower02
	else 
	PosingActor = "empty"
	endif
	
	
	;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor("+PosingActor+") - DefeatStateBindings: "+cfgqst.DefeatStateBindings+" Restore = "+restore)	
	
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
if PosingActor == "empty"
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
		
		if Restore 
			if (Victimcount > 0) && (akactor == Victims[0])
			Type = OldTypeVictims0
			elseif (Victimcount > 0) && (akactor == Victims[1])
			Type = OldTypeVictims1
			elseif (akactor == cfgqst.PlayerRef)
			Type = OldTypePlayer
			endif 
		endif 

		if Restore 
			if (Victimcount > 0) && (akactor == Victims[0]) && (OldTypeVictims0 == Type)
		;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor("+PosingActor+")(Restore - OldPoseVictims0:"+OldPoseVictims0+" "+OldTypeVictims0)
			NewPose = OldPoseVictims0
			elseif (Victimcount > 0) && (akactor == Victims[1]) && (OldTypeVictims1 == Type)
		;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor("+PosingActor+")(Restore - OldPoseVictims1:"+OldPoseVictims1+" "+OldTypeVictims1)
			NewPose = OldPoseVictims1 
			elseif (akactor == cfgqst.PlayerRef)
		;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor("+PosingActor+")(Restore - OldPosePlayer:"+OldPosePlayer+" "+OldTypePlayer)
			NewPose = OldPosePlayer 
			endif 
		endif 
	
	;if cfgqst.DefeatStateBindings == "FollowerDevices"
	;restore = true
	;endif
	

		
		
		;WIP!!! 
		;if cfgqst.DefeatTypeScenario == "FastTravel"
		;type = "Offering"
		;endif

		;if we do NOT have DD NG and it is a DD Scenario we dont play poses
		if !cfgqst.ModDDNG && cfgqst.IsDDScenario() ;no posing when DDs are worn "DD" and "DDeEvent"
		; DDNG! 

		else
						
			;STOP IDLING -----> 				
			if Type == "Stop"			
				;Debug.Trace("NAKED DEFEAT calmquest: PlayerPosing (Stop)")		
				akactor.PlayIdle(cfgqst.IdlesFixHair[0])
				Type = "none"
				LastTypePlayer = "none"	;what is this for? 

			;DD Removal Wiggling 			 	
			elseif Type == "Player Down"
				
				if !Restore
				NewPose = Utility.RandomInt(1,7)
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
			;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (offering)")	
				
				if !Restore
				NewPose = Utility.RandomInt(1,4)
				endif
				
				if NewPose < 4
				akactor.PlayIdle(cfgqst.IdlesHumanSurrender[NewPose])		;replace later, human surrender poses
				elseif NewPose == 4
				akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[0])					;on all fours
				endif	
					
						
			;ORGASM 				 	
			elseif Type == "Orgasm"
			;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (offering)")	
				
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
				;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Orgasm Armbinder): "+NewPose)
				endif
			;PEE 				 	
			elseif Type == "Pee"
			;Debug.Trace("NAKED DEFEAT calmquest: PlayerPosing (offering)")	
				
				;PEE ----- ARMBINDER 
				if 	(cfgqst.DefeatStateBindings == "Armbinder")
					NewPose = 1
					if NewPose == 1 
					Debug.SendAnimationEvent(akactor, "ZapArmbHorny03")
					endif
					
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Orgasm Armbinder): "+NewPose)
				endif			
				
				
			;RECEIVING -----> For Golden Shower / Pee --> might be too specialized?			 	
			elseif Type == "Receiving"
			;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (receiving)")	
			
				if !Restore
				NewPose = Utility.RandomInt(1,3)
				endif 
				
				if NewPose == 1	;set 1 - sitting
				;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Set 1 - sitting)")	
					int pose = Utility.RandomInt(1,3)
					if pose == 1
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[10])
					elseif pose == 2
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[11])
					elseif pose == 3
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffs[12])
					endif
				elseif NewPose == 2  ;set 2 - kneeling		
				;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Set 2 - kneeling)")
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
				;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Set 3 - standing)")
					int pose = Utility.RandomInt(1,3)
					if pose == 1
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])
					elseif pose == 2
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])
					elseif pose == 3
					akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])
					endif
					
				elseif NewPose == 4 ;set 4 - low standing
				;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Set 4 - low standing)")
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
			;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (surrender)")			
				
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (public surrender): "+NewPose)
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (animal surrender): "+NewPose)
					akactor.PlayIdle(cfgqst.IdlesAnimalDefeat[NewPose])
				
				;INITIAL SURRENDER VIA HOTKEY (needs IMPROVING cause we dont have detected enemies yet... shit)	#TODO use Funciton GetClosestActor?
				else	
					if !Restore
					NewPose = Utility.RandomInt(1,6)
					endif 
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (hotkey surrender): "+NewPose)

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
			;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (struggle)")
				
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
				elseif (cfgqst.DefeatStateBindings == "Cuffs")  							
									
					if !Restore
					
						if cfgqst.WhipAgain 
						
							NewPose = Utility.RandomInt(1,6)
							
							if NewPose == 1
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[0])	;for whip
							elseif NewPose == 2
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[1])	;for whip
							elseif NewPose == 3
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[2])	;for whip
							elseif NewPose == 4
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[4])	;for whip
							elseif NewPose == 5
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[8])	;for whip
							elseif NewPose == 6
							akactor.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[9])	;for whip
							endif 
						else 	
						NewPose = Utility.RandomInt(0,9)			;0 and 9 both work... error is elsewhere??? 	
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor #ERROR, needed Fallback) Pose struggle")					
					akactor.PlayIdle(cfgqst.IdlesDefeatUnbound[NewPose])		;array lenght 17
				endif
						
			;----- WAIT ----------------------------------------------------------------------------------------------
			elseif Type == "wait"																		
		;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait)")	
					
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait Armbinder): "+NewPose)
				
				
				
				;WAIT ----- WHEEL 		
				elseif 	(cfgqst.DefeatStateBindings == "Wheel")
				
					NewPose = 1
					;test
					Debug.SendAnimationEvent(akactor, "ZazAPCAO263")
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Wait Wheel): "+NewPose)

				;WAIT ----- STOCKADE 		
				elseif 	(cfgqst.DefeatStateBindings == "Stockade")
				
					NewPose = 1
					;no struggle pose :(
					Debug.SendAnimationEvent(akactor, "B_Billyy_StockadeFuckMachine_A1_S1")
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (Wait Stockade): "+NewPose)
					
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait XCross): "+NewPose)	

				;WAIT ---- PILLORY
				elseif (cfgqst.DefeatStateBindings == "Pillory")
					if !Restore
					NewPose = Utility.RandomInt(0,12)
					endif 
					
					;REMOVEPOSES: 4 (wrong pillory)
					
					if akactor.PlayIdle(cfgqst.IdlesDefeatPillory[NewPose])		;array lenght 13
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait pillory): "+NewPose)
					else
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait pillory) #ERROR: "+NewPose)
					endif
				;WAIT ---- YOKE
				elseif (cfgqst.DefeatStateBindings == "Yoke")
												
					if !Restore
					NewPose = Utility.RandomInt(0,14)
					endif 
					
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (wait yoke): "+NewPose)
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor #ERROR, needed Fallback) Pose Wait")					
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (FollowerAuction): "+NewPose)
			
									
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
					AnimArray[24] = "ZazAPCAO211"	;Torture Rack Diagonal, Front exposed
					AnimArray[25] = "ZazAPCAO212"	;Torture Rack Diagonal, Back exposed		;
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
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (FollowerDevices Indoor): "+NewPose)

					
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
						
						if cfgqst.IsNymrasGame()
							if AnimArray[23]
							else
							Debug.Messagebox("Array NONE") 
							endif 
						endif 
					Debug.SendAnimationEvent(akactor, AnimArray[NewPose])
					;Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor (FollowerDevices Outdoor): "+NewPose)

					
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
					
	;	Debug.Trace("NAKED DEFEAT calmquest: PlayPoseOnActor ("+PosingActor+") "+Type+" - Pose:"+NewPose)
		
		;SAVE LAST POSE 	
		
		NymTrace("PlayPoseOnActor("+PosingActor+") - Type: "+type+" - DefeatStateBindings: "+cfgqst.DefeatStateBindings+" - Pose: "+NewPose+" - Restore = "+restore)	
		
				
		if Victims[0] && (akactor == Victims[0])
		OldPoseVictims0 = NewPose
		OldTypeVictims0 = type
		elseif Victims[1] && (akactor == Victims[1])
		OldPoseVictims1 = NewPose
		OldTypeVictims0 = type
		else 	;PlayerRef 
		OldPosePlayer = NewPose
		OldTypePlayer = type
		endif 
	
	endif ;reset	
	
endif 

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

Function DebugTrace(String Text1)
Debug.trace("NAKED DEFEAT calmquest: (#msg DEBUG) "+Text1)
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
	Debug.trace("NAKED DEFEAT calmquest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT calmquest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#NymMessage
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT calmquest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.IsNymrasGame()
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