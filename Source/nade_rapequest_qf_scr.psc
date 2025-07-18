;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment

;/

rapequest starts
-> we determine BEFORE the Quest Start how many times the rape repeats 
-> Startrapequest(X) x rounds

- draw Followers from Followerquest (Alias)
- validate rapers based on DefeatType
	----> this is because we need to take into account that actors might walk away, so we always sort and validate actors again and again

	
Order:
- Start
	- Initial Pose
- GoldenShower
	- Pause Pose
- Round 1
	- Pause Pose
- Round 2
	- Pause Pose
- Round 3
	- Pause Pose
- End

For "rape night" we just restart the quest again and again and again and again :D


/;


;NEXT FRAGMENT INDEX 22
Scriptname nade_rapequest_qf_scr Extends Quest Hidden

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

ReferenceAlias Property Alias_Vehicle Auto	
ReferenceAlias Property Alias_Vehicle_Follower_01 Auto

ReferenceAlias Property Alias_Player Auto
ReferenceAlias Property Follower Auto 
ReferenceAlias[] Property NPC Auto			;references NPCs, most likely the NPCs in the area based on the Conditions in ESP

ReferenceAlias[] Property ActorArraySex Auto	

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

nade_FollowerIdleQuest_01_qf_scr Property folidle01 Auto
nade_FollowerIdleQuest_02_qf_scr Property folidle02 Auto

Quest Property calmqst Auto

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

Actor[] Property RapersA Auto
Actor[] Property RapersB Auto
Actor[] Property RapersC Auto
Actor[] Property CreaturesA Auto
Actor[] Property CreaturesB Auto
Actor[] Property CreaturesC Auto

Actor[] Property Whippers Auto
Actor[] Property ActorsGhostsHumans Auto

Actor Property Aggressor Auto	;old delete?
Actor Property Followers Auto	;old delete?
;ActorBase Ghost0
;ActorBase Ghost1
;ActorBase Ghost2

Int Property RapersACount Auto
Int Property RapersBCount Auto
Int Property RapersCCount Auto
Int Property CreaturesACount Auto
Int Property CreaturesBCount Auto
Int Property CreaturesCCount Auto
Int Property AggressorCount Auto
Int Property Aggressor02Count Auto
Int Property VictimCount Auto
Int Property RaperCount Auto


Quest Property AllegianceQuest Auto

ObjectReference[] Property LocationInns Auto

Location[] Property LocationRegions Auto

sslBaseAnimation[] Property Animations1_Follower01 Auto
sslBaseAnimation[] Property Animations2_Follower01 Auto
sslBaseAnimation[] Property Animations3_Follower01 Auto
sslBaseAnimation[] Property Animations4_Follower01 Auto

sslBaseAnimation[] Property Animations1_Follower02 Auto
sslBaseAnimation[] Property Animations2_Follower02 Auto
sslBaseAnimation[] Property Animations3_Follower02 Auto
sslBaseAnimation[] Property Animations4_Follower02 Auto


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
Bool FollowerExists = false
Bool PlayerRape = true				;ONLY TESTING IMPROVE THIS
Bool FollowerRape = true
Bool FollowerGetsRaped = false
Bool Peeing = false
bool ForcePosing_1 = false
bool ForcePosing_2 = false

bool IsGuardEndDefeat = false
bool OnlyAnimals = false
bool rape1done = false
bool rape2done = false
bool AddRapeHandsDuringSex = false
bool CombatScanner = false
bool StopCombatScan = false
bool EndOfRape = false
bool EndOfQuest = false
bool NeedAwhipper = true
int RapeAgainRound = 0

bool Restartrapequest = false
bool ReequipBindsAfterSex = false

bool WaitForWashing = false

bool Victims0 = false
bool Victims1 = false
bool Victims2 = false
bool Victims3 = false
bool Victims4 = false

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

Function Fragment_17()	;rape #ROUND 2						;############ STAGE 11 ############							
		
Debug.trace("NAKED DEFEAT rapequest: Stage 11")
			
	if cfgqst.NymStripping		
	cfgqst.PlayerRef.UnequipItemSlot(32)	;body 
	endif		
			
	bool rape2 = false	
			
	if cfgqst.RapeAgain	
		if (Utility.RandomInt(1,100) <= cfgqst.DefeatChainProb) && (Utility.RandomInt(1,2) < 2)
		rape2 = true
		endif
	;normal round		
	elseif Utility.RandomInt(1,100) <= cfgqst.DefeatChainProb
		rape2 = true
	endif	
	
	if rape2
	StartRapeSequence(2)
	else

		SetStage(14) ;end of rape
	endif
	
EndFunction			

Function Fragment_19()				;RAPE #ROUND 3		;############ STAGE 12 ############	
		
Debug.trace("NAKED DEFEAT rapequest: Stage 12")	
	
	bool rape3 = false	
			
	if cfgqst.RapeAgain	
		if (Utility.RandomInt(1,100) <= cfgqst.DefeatChainProb) && (Utility.RandomInt(1,4) < 2)
		rape3 = true
		endif
	;normal round			
	elseif (Utility.RandomInt(1,100) <= cfgqst.DefeatChainProb) && (Utility.RandomInt(1,3) < 2)
		rape3 = true
	endif	
	
	if rape3
	StartRapeSequence(3)
	else

	SetStage(14) ;end of rape
	endif

EndFunction


Function Fragment_1()						;ENDofDEFEAT			;############ STAGE 1000 ############1000	;#run	#end	
		
	;we need to implement a seamless pose transition TO rapequest and FROM rapequest, maybe rapequest needs to start a Function in CalmQuest? 	
		
	;	Immobilize(false)										
		AddRapeHandsDuringSex = false
		ForcePosing_1 = false
		ForcePosing_2 = false
	
	Calm(false,1)
	
	calmqst.SetStage(500)
	Stop()
Debug.trace("NAKED DEFEAT rapequest: Stage 1000 (END)")	
	
EndFunction

;------------------------------------------------------------------------------------------------------------------------------------------

bool OutcomeRescued = false


Function Fragment_8()	;#aftermath ;############ STAGE 500 ############		#500
	
	SetStage(1000)

EndFunction

Function Fragment_15()							;############ STAGE 13 ############		

Debug.Trace("NAKED DEFEAT rapequest: stage 13")	

	SetStage(14)

EndFunction

Function Fragment_20()							;############ STAGE 14 ############	
;end of rape 

;disable some scenarions in this stage (BOTH of which should no longer be scenarios but alternative SexScenes	
if (cfgqst.DefeatTypeScenario == "Rodeo")
cfgqst.DefeatTypeScenario = "none"			;#todo
elseif (cfgqst.DefeatTypeScenario == "Masturbation")
cfgqst.DefeatTypeScenario = "none"
endif
	
Debug.Trace("NAKED DEFEAT rapequest: stage 14")
	SetStage(1000)	

EndFunction

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
	

;------------------------ #DDe Stuff Start -------------------------------------------------------------------------------------------------
	
	;/
	
	
	INTE PM:
I failed to replicate your problem. If I call those two events in sequence everything works as it should on my end. 

The only thing I can think of is maybe the use of ModEvents.

ModEvents do not execute in sequence, (they do not wait for an already running instance to finish before starting anew) this can and will break things. 

The only solution is to use latent global functions. These functions wait for one another to finish before starting a new instance. 
Global functions do not require the mod they are defined in as a dependency. If your mod calls a global DDe function and DDe is not installed, the game will just note that in the log and move on, nothing will break. 

DDe provides a bunch of those global functions. 

For example you can try,

iDDeUtil.ManDDsByStrKwds(Slave = akSlave, sOutfit = "NadeList", sKwds = "zad_DeviousHeavyBondage, zad_DeviousPlug, zad_DeviousBelt, zad_DeviousGag, zad_DeviousPlugAnal, zad_DeviousPlugVaginal", iDDs = -66, bMatch = True, iClear = 0)
 
This function has a ton of features, main one is to remove devices by string keywords.

The worn outfit will be made automatically, so there’s no need to do that beforehand. 

Slave = Who gets the devices.
sOutfit = Outfit name, if blank an auto outfit name will be created.
sKwds = The keywords to be equipped or removed or, 
sKwds = “Sex” - will auto add keywords for devices that interfere with sex. 
sKwds = “Pose” - will auto add keywords for devices that interfere with posing. 
sKwds = “Dance” - will auto add keywords for devices that interfere with dancing. 
sKwds = “New” - will equip the passed outfit.  
sKwds = “Clear” - will clear as in delete the passed outfit. 
iDDe = Positive - will add(equip) that many devices from an existing outfit.
iDDe = Negative - will remove(unequip) that many devices from an existing outfit or equipped devices.
iDDe = 0 - will do nothing.
bMatch = True - will remove all devices with keywords matching the ones in sKwds.
bMatch = False - will remove all devices with keywords not matching the ones in sKwds. Useful when there is less devices you want to keep, than you want to remove. 
For example, if the PC is wearing a bra, belt, armbinder, boots and plugs. You want to remove the bra, belt, armbinder and the plugs;
bMatch = True - you have to send in the keywords for the bra, belt, armbinder and plugs. (All devices you want removed.)
bMatch = False - you only send the keyword for the boots. (All devices you want to keep.)
iClear = 3 - will clear the sOutfit after use. 

 

This DDe function will store the outfit after it is created so the un/equip will work faster on subsequent calls to the same outfit. Very useful when the devices need to be re-equipped between sex scenes. 
This function will also check if the outfit passed exists and if it does it will use devices from that. 

 

Give it a try, see if it will work for you.
/;
	
string Checklist = "empty"
;/
Bool Function DDeCheckDDs()

cfgqst.PlayerRef.SendModEvent("iDDeListAllWornDDs", "Checklist", 1)	;creates Checklist
if Checklist == "empty"
return false
else 
cfgqst.PlayerRef.SendModEvent("iDDeListAllWornDDs", "Checklist", 0)	;clears Checklist
return true
endif
EndFunction
/;

Bool Function DDeCheckDDs()			;#DDe

bool DDsfound = false
;/
;GetWornKwdByStr(PlayerRef, "zad_HeavyBondage")
if iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousYoke")				;Yoke
DDsfound = true


elseif iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousArmbinder")		;Armbinder
DDsfound = true
elseif iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousGag")			;Gag
DDsfound = true
elseif iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousPlug")			;Plug
DDsfound = true
elseif iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousSuit")			;Suit
DDsfound = true
elseif iDDeUtil.GetWornKwdByStr(cfgqst.PlayerRef, "zad_DeviousBelt")			;belt
DDsfound = true

endIf
/;
if DDsfound 
return true
else
return false
endif


EndFunction

Function DDeRemoveDDs()			;#DDe
;UNEQUIP ALL DEVICES (works)
cfgqst.PlayerRef.SendModEvent("iDDeEquipWorn", "Mylist", -66)

;UNEQUIP DDs by TAG: DOES NOT WORK:
;cfgqst.PlayerRef.SendModEvent("iDDeEquipByTags", "Arms Restraint, Belt, Anal Plug, Vaginal Plug, Gag", 0)

;GET DDs worn 
;cfgqst.PlayerRef.SendModEvent("iDDeListAllWornDDs", "NadeList", 1)
;REMOVE DDs worn by keyword
;cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfitByKeyword", "NadeList, zad_DeviousHeavyBondage, zad_DeviousPlug, zad_DeviousBelt, zad_DeviousGag, zad_DeviousPlugAnal, zad_DeviousPlugVaginal", -66)
;cfgqst.PlayerRef.SendModEvent("iDDeListAllWornDDs", "NadeList", 0)
;zad_DeviousHeavyBondage, zad_DeviousPlug, zad_DeviousBelt, zad_DeviousGag, zad_DeviousPlugAnal, zad_DeviousPlugVaginal

;Valid first tags are - > ", Collar, Bra, Nipple Piercings, Vaginal Piercing, Arm Cuffs, Leg Cuffs, , Belt, Harness, , Corset, Gloves, Boots, Blindfold".

EndFunction

;------------------------ DDe Stuff End -------------------------------------------------------------------------------------------------

bool WashingPlayer = false
bool calming = true
bool skip = false
bool IdlesUnbound = false
bool IdlesCuffs = false

bool AllowPlaceFloor = false
bool NoActorsAbort = false

float Distance 

bool FollowersAreBound = false

Keyword DemonicCreature


;bool StartCombatScan = false






;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX DEFEAT QUEST START XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

Function Fragment_3()			;#start		;############ STAGE 10 ############
Debug.Trace("NAKED DEFEAT rapequest: stage 10")

	Calm(true, 1)

	Vehicle("restore") 	;double check
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Immobilize(true)	;double check
	
	;>>>>>> INITITAL STUFF >>>>>>>>>>>>>>>>>>>>>>>>>>>
	if cfgqst.ModDEM
	DemonicCreature = (Game.GetFormFromFile(0x0881F780, "DemonicCreatures.esp") As Keyword)
	endif	
	
	
	
	RegisterForModEvent("Bis_BatheEvent", "OnBis_BatheEvent")
	
	;GetSearchRadius ------------------- 
	if cfgqst.PlayerRef.IsInInterior()
	Distance = cfgqst.SearchRadiusInterior
	else
	Distance = cfgqst.SearchRadius
	endif
	Debug.Trace("NAKED DEFEAT rapequest: SearchRadius: "+Distance)
	;--------------------------------

	;>>> Struggle pose >>>>>>

	ForcePosing_2 = true				;#pose
	Debug.Trace("NAKED DEFEAT rapequest: OnUpdate (sent: ForcePosing_2")
	RegisterForSingleUpdate(0.1)
	
	if VictimCount > 0
		if Victims0	
		StripFollower(0)
		folidle01.IdleVictims0(0, "none")	
			if FollowersAreBound
			folidle01.IdleVictims0(1, "struggleBound")
			else
			folidle01.IdleVictims0(1, "struggle")
			endif
		Vehicle_Follower_01("restore") 
		endif
	
		if Victims1
		StripFollower(1)
		folidle01.IdleVictims1(0, "none")
			if FollowersAreBound
			folidle01.IdleVictims1(1, "struggleBound")
			else
			folidle01.IdleVictims1(1, "struggle")
			endif
		;Vehicle_Follower_01("setup") 
		endif
		
		if Victims2
		StripFollower(2)
		folidle01.IdleVictims2(0, "none")
		folidle01.IdleVictims2(1, "struggle")
		endif
		
		if Victims3
		StripFollower(3)			
		folidle01.IdleVictims3(0, "none")
		folidle01.IdleVictims3(1, "struggle")
		endif
			
	endif

	;-----------------------------------
	SortActors()		
	cfgqst.PlaySound()
	
	;>>>>>>>>>>>>>>>>>> forced bathing >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
	if (Utility.RandomInt(1, 100) <= cfgqst.DefeatPeeProb) && RapersACount > 0 && !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Pillory")			;#pee #bathing FORCED BATHING EVENT

	SceneForcedBathing()	
			
	endif
		
	;-------------------------------------------------------------------------
		
	;>>>>>>>>>>>>>>>>>> You are fucked Round 1 >>>>>>>>>>>>>>>>>>

	;checks if ANY rapers are valid
	if (RapersACount > 0) || (CreaturesACount > 0)  		
	ForcePosing_1 = false			
	Utility.Wait(1.0)	
	;#Round 1
	StartRapeSequence(1)			
	else				
	SetStage(1000)		;no rapers nearby
	Debug.Notification("<font color='#ff0000'>Nobody in the vicinity to take advantage of your situation (maybe increase Scan Radius)</font>")
	Debug.trace("NAKED DEFEAT notification: Nobody in the vicinity to take advantage of your situation (maybe increase Scan Radius).")
	endif

EndFunction		

;-----------------------------------------------------------------------------------------------------------------------------------

Function Fragment_13()          ;############ STAGE 600 ############	
;skip

Debug.Notification("NAKED DEFEAT rapequest: ERROR Stage 600, contact support :-(")
;DEAD END
;Immobilize(false)
;Debug.Trace("NAKED DEFEAT rapequest: OnUpdate (sent: nothing? stage 600)")
;RegisterForSingleUpdate(10)

EndFunction

bool ActorPresent = false

;string Follower01name = "none"
;string Follower02name = "none"

Function Calm(Bool value = true, Int Round = 1)			;CALM FUNCTION - seems to select actors in the area and check for what they are			#calm


	
	if cfgqst.CivilRapeRunning
	RapersA = new Actor[4]					;NEED MORE ACTORS, THIS ONLY SELECTS UP TO 3
	RapersA[0] = None						;actor #1
	RapersA[1] = None						;actor #2
	RapersA[2] = None						;actor #3
	RapersA[3] = None	
	RapersACount = 0
	endif

	if value
		Debug.Trace("NAKED DEFEAT rapequest: Calm ON")
	else
		Debug.Trace("NAKED DEFEAT rapequest: Calm OFF")
	endif
		
	if !cfgqst.AllowCreatures	;needs to MOVE
	OnlyAnimals = true
	endif

	Actor a									;defines that actors are "a" (number of actors)
	;Int i = NPC.Length						;NPC -> array -> Length is the 15 NPC actors with their conditions, os is NPC00, NPC01, NPC02.... -> i = the15NPC
	Int i = ActorArraySex.Length	
	
	Victims = new Actor[4]					
	Victims[0] = None
	Victims[1] = None
	Victims[2] = None
	Victims[3] = None
	VictimCount = 0

	;CALM(true)		
	if value	
		Debug.Trace("NAKED DEFEAT rapequest: #Calm (ON) #ACTOR# LIST:")		
		while i 	 												;while NPC00, NPC01, NPC02....
			i -= 1												;NPC00, NPC01, NPC02.... -=  ---- I think this puts numbers on the actors?? 			
			;a = NPC[i].GetReference() as Actor					;getReference of the the15NPC		
			a = ActorArraySex[i].GetReference() as Actor			
			
			
			if a 	
				if cfgqst.ShowDebugMessages	
				Debug.Trace("NAKED DEFEAT rapequest: #CALM SCAN (ON) ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;#DEBUG
				else
				Debug.Trace("NAKED DEFEAT rapequest: #CALM SCAN (ON) ACTOR#"+i+": "+cfgqst.GetLeveledActorBaseName(a))	;#DEBUG
				endif
			
				ActorPresent = true
	
				;Followers		 			
				if (i == 30) || (i == 29) || (i == 28) || (i == 27) || (i == 26)
						
					if !IsFollower(a)	
					Debug.Trace("NAKED DEFEAT rapequest: #ERROR actor should be follower but is NOT detected by IsFollower: "+a.GetBaseObject().GetName())	
					;Debug.Notification("NAKED DEFEAT: #ERROR actor should be follower but is NOT detected by IsFollower: "+a.GetBaseObject().GetName())
					endif
					;#todo better?: if i > 25
				
					Debug.Notification("This follower is now a victim: "+a.GetBaseObject().GetName())						
					a.AddToFaction(BusyFaction)
						
					if i == 26
					Victims[0] = a	
					Victims0 = true
					Debug.Trace("NAKED DEFEAT rapequest: Victims[0]: "+a.GetBaseObject().GetName())
					elseif i == 27
					Victims[1] = a	
					Victims1 = true
					Debug.Trace("NAKED DEFEAT rapequest: Victims[1]: "+a.GetBaseObject().GetName())
					elseif i == 28
					Victims[2] = a	
					Victims2 = true
					Debug.Trace("NAKED DEFEAT rapequest: Victims[2]: "+a.GetBaseObject().GetName())
					elseif i == 29
					Victims[3] = a	
					Victims3 = true
					Debug.Trace("NAKED DEFEAT rapequest: Victims[3]: "+a.GetBaseObject().GetName())
					elseif i == 30
					Victims[4] = a	
					Victims4 = true
					Debug.Trace("NAKED DEFEAT rapequest: Victims[4]: "+a.GetBaseObject().GetName())
					endif
						
					VictimCount += 1
					
					;tells "SortActors()" to split groups to match follower count (2 Followers -> 3 Groups)
					if Round == 1	
					;a.PlayIdle(KnockdownIdles[3])					
						if !NeedARaper		
						FollowerExists = true
						NeedARaper = true
						
					;	Follower01name = Victims[0].GetBaseObject().GetName()
						elseif NeedARaper
						NeedAnotherRaper = true
						endif
					endif	

					;>>>>>>>>>>>> rapequest Calm (Followers) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
					
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
					;--------------------------------------------------------------------------	
	
				;Enemies 	
				else
					;can probably be removed now?
					;looking for Guards: IF is Guard and in combat with player -> send terminate
					if (Round == 1) && cfgqst.IsGuard(a) && (cfgqst.PlayerRef.GetDistance(a) <= Distance) ;&& (a.GetCombatTarget() == cfgqst.PlayerRef) 		
					
						;Sort guards into their own Group
						if cfgqst.CivilRapeRunning
				
							if RapersACount < 4
								;if guard is male or is female AND females are allowed as rapers
								if (SexLab.GetGender(a) == 0) || ((SexLab.GetGender(a) == 1) && cfgqst.FemalesAllowed)
								
									RapersA[RapersACount] = a	 		
										if cfgqst.ShowDebugMessages
										Debug.Trace("NAKED DEFEAT rapequest: GUARD RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
										else
										Debug.Trace("NAKED DEFEAT rapequest: GUARD RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
										endif
									RapersACount += 1
								endif
							endif
							
						else
						;do nothing
						;IsGuardEndDefeat = true
						endif
					elseif (Round == 1) && !cfgqst.AllowCreatures && (SexLab.GetGender(a) < 2) 	;looking for Humans
						if cfgqst.PlayerRef.GetDistance(a) <= Distance							;looking if Humans are close enough
						OnlyAnimals = false														;if humans there and close -> no cancel defeat		
						endif
					endif
					;>>>>>>>>>>>> rapequest Calm (Enemies) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
						
					a.StopCombat()		
					a.StopCombatAlarm()	
					
					;main DefeatFaction (for debug, maybe not necessary)
				;	if !a.IsInFaction(DefeatFaction)
				;	a.AddToFaction(DefeatFaction)
				;	endif
					
					;backup calmfaction (test)
				;	if !a.IsInFaction(CalmFaction)
				;	a.AddToFaction(CalmFaction)
				;	endif
					
					;add humanoid actors to potential whippers
					if cfgqst.IsHumanoid(a) && !a.IsInFaction(WhippingFaction)
					a.AddToFaction(WhippingFaction)
					endif
					
					if a.IsAlerted()
						a.SetAlert(False)
					endif
					
					;cant hurt doing it twice
					a.StopCombat()		
					a.StopCombatAlarm()	
					;--------------------------------------------------------------------------
				endif
			endif
		endwhile
		calming = false
		needAwhipper = true
	;	Debug.Trace("NAKED DEFEAT rapequest: calming: "+calming)
	
	;CALM(false) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	else													
		while i												
			i -= 1
			;a = NPC[i].GetReference() as Actor
			a = ActorArraySex[i].GetReference() as Actor

			;>>>>>>>>>>>> rapequest Calm (All) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
			if a		
				if cfgqst.ShowDebugMessages	
				Debug.Trace("NAKED DEFEAT rapequest: #CALM SCAN (OFF) ACTOR#"+i+": "+cfgqst.GetActorInfo(a))	;#DEBUG
				else
				Debug.Trace("NAKED DEFEAT rapequest: #CALM SCAN (OFF)ACTOR#"+i+": "+cfgqst.GetLeveledActorBaseName(a))	;#DEBUG
				endif

			
			;	if IsFollower(a)
				;	a.PlayIdle(KnockdownIdles[2])
			;	endif
											
			;	if a.IsInFaction(DefeatFaction)
			;	a.RemoveFromFaction(DefeatFaction)
			;	endif
				
			;	if (a.IsInFaction(CalmFaction))							
			;	a.RemoveFromFaction(CalmFaction)
			;	endif
				
				;------- clean up ghosts -------------- ;maybe do NOT remove non-ghost actors later (test more)
			;	if a.IsInFaction(NakedGhostFaction)	
			;	a.disable()
			;	a.delete()
			;	endif
				;--------------------------------------
				
				if a.IsInFaction(WhippingFaction)
				a.RemoveFromFaction(WhippingFaction)
				endif			
				;--------------------------------------------------------------------------
				
			endif
		endwhile
	endif


;	if cfgqst.ShowDebugMessages
;		if value
;			Debug.Notification("Finished calming NPCs.")
;		else
;			Debug.Notification("Finished un-calming NPCs.")
;		endif
;		cfgqst.dhlpSuspend(value)				;NYMRA disable native DHLP suspend
;	endif
;else	;we land here when i = 0 (no actors found
;we have no actors
	
;/
if !ActorPresent
;Debug.Notification("NAKED DEFEAT rapequest ActorPresent: false")
;Debug.trace("NAKED DEFEAT rapequest ActorPresent: false")
	Restartrapequest = true
	;SetStage(1000)	;-> end rapequest
else
ActorPresent = false
endif
/;

if OnlyAnimals && cfgqst.NymSpawning	;test seperatly		needs to move
;	Debug.notification("NAKED DEFEAT: Some helpfull ghosts appear to guide your soul back to your body")
;Debug.Notification("NAKED DEFEAT OnlyAnimals: we want to be HERE")
	Restartrapequest = true
;	SetStage(1000)	;-> end rapequest
endif
	
EndFunction





string function GetActorRaceEditorID(Actor actorRef) global native		;RACEKEY

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

string CreaturesARace = "empty"
string CreaturesBRace = "empty"
string CreaturesCRace = "empty"

string CreaturesARaceID
string CreaturesBRaceID
string CreaturesCRaceID

string tempraceID = "empty"

String Function GetRaceKey(Actor akActor = None)
tempraceID = MiscUtil.GetActorRaceEditorID(akActor) 
return sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)
tempraceID = "empty"
Endfunction

;#follower handling
float Victim_00_speed = 0.0

bool SkipToCreatures = false

;---------------- SortActors Function ------------------------------

Function SortActors()							;#sort	
Debug.Trace("NAKED DEFEAT rapequest: SortActors START")
	
;	STAGE #1
	Actor a										;INDEX IS WRONG I THINK
	
	if !cfgqst.CivilRapeRunning
	RapersA = new Actor[4]					
	RapersA[0] = None						
	RapersA[1] = None						
	RapersA[2] = None						
	RapersA[3] = None	
	RapersACount = 0
	endIf
	
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
	
		;search for #whippers
;	Whippers = new Actor[3]					
;	Whippers[0] = None
;	Whippers[1] = None
;	Whippers[2] = None

	;int i = NPC.Length 							;############ I think this is wrong. Index needs to reduce AggressourCount directly not NPC Lenght ###########
	int i = ActorArraySex.Length 
	
	;int j = 12
	
	while i							
	i -= 1		
	a = ActorArraySex[i].GetReference() as Actor
	
	;Game.FindClosestActor(0.0, 0.0, 0.0, 5.0)	;check Creationkit
	
	
	
		if a	
			;SORT OUT: too far away ; sorted by interior distance and exterior distance
			;if (cfgqst.PlayerRef.IsInInterior() && cfgqst.PlayerRef.GetDistance(a) <= cfgqst.SearchRadiusInterior) || (!cfgqst.PlayerRef.IsInInterior() && cfgqst.PlayerRef.GetDistance(a) <= cfgqst.SearchRadius)
			if cfgqst.PlayerRef.GetDistance(a) <= Distance
				;SORT OUT GUARDS (they are already "sorted" in calm)
				if !cfgqst.IsGuard(a)		
					;SORT OUT unwanted actors
					if !(a.GetBaseObject().GetName() == "FEC : Load Screen Detector")							
						;SORT OUT Dragons (WIP #todo)
						if !cfgqst.IsDragon(a)  	 
							;SORT OUT commanded actors (not really working tho)
							if !a.IsCommandedActor()	
								
								;HUMAN female o+	;STILL NOT WORKING BECAUSE RACEKEY MISSING :(
								
								if (SexLab.GetGender(a) == 1) && cfgqst.FemalesAllowed ;&& !SkipToCreatures 					;IF FEMALE 																																								
									;if !a.IsPlayerTeammate() && !a.IsInFaction(CurrentFollowerFaction) && cfgqst.FemalesAllowed	 	;IF FEMALES Allowed -> aggressor
									;if !a.IsInFaction(CurrentFollowerFaction) && !a.IsInFaction(PlayerFaction) && cfgqst.FemalesAllowed && !(a.GetBaseObject().GetName() == "Sofia")					 	;IF FEMALES Allowed -> aggressor					
								;	if !IsFollower(a) && cfgqst.FemalesAllowed			
												
										if AllowActor(a, 1)	
											;get a Raper to Group B for Follower01
											if NeedARaper && RapersACount > 0
											RapersB[RapersBCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
												else
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
												endif
											RapersBCount += 1
											NeedARaper = false
											;get a Raper to Group C for Follower02
											elseif NeedAnotherRaper && RapersBCount > 0																				
											RapersC[RapersCCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
												else
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
												endif
											RapersCCount += 1
											NeedAnotherRaper = false
											elseif RapersACount < 4
											RapersA[RapersACount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
												else
												Debug.Trace("NAKED DEFEAT rapequest: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
												endif

											RapersACount += 1
											elseif RapersBCount < 4						
											RapersB[RapersBCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
												else
												Debug.Trace("NAKED DEFEAT rapequest: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
												endif
											RapersBCount += 1
											elseif RapersCCount < 4						
											RapersC[RapersCCount] = a	 							
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
												else
												Debug.Trace("NAKED DEFEAT rapequest: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
												endif
											RapersCCount += 1
											endif

									endif	
									
									;-----------------------------------------------------------------------------------------------	
									
								;HUMAN male  o->
								elseif (SexLab.GetGender(a) == 0) ;&& cfgqst.MalesAllowed ;&& !SkipToCreatures	
									;if !a.IsPlayerTeammate() && !a.IsInFaction(CurrentFollowerFaction)
									;if !a.IsInFaction(CurrentFollowerFaction) && !a.IsInFaction(PlayerFaction) 	
									;if !IsFollower(a)
										
										if AllowActor(a, 1)
											;get a Raper to Group B for Follower01
											if NeedARaper && RapersACount > 0
											RapersB[RapersBCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
												else
												;Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
												endif
											RapersBCount += 1
											NeedARaper = false
											;get a Raper to Group C for Follower02
											elseif NeedAnotherRaper && RapersBCount > 0																				
											RapersC[RapersCCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
												else
												;Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))
												Debug.Trace("NAKED DEFEAT rapequest: NeedARaper RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))
												endif
											RapersCCount += 1
											NeedAnotherRaper = false
											;sort RapersA (only when NOT Public Punishment)
											elseif !cfgqst.CivilRapeRunning && RapersACount < 4
											RapersA[RapersACount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersA #"+RapersACount+": "+cfgqst.GetActorInfo(RapersA[RapersACount]))
												else
												;Debug.Trace("NAKED DEFEAT rapequest: RapersA #"+RapersACount+": "+((RapersA[RapersACount]).GetBaseObject().GetName()))
												Debug.Trace("NAKED DEFEAT rapequest: RapersA #"+RapersACount+": "+(cfgqst.GetLeveledActorBaseName(RapersA[RapersACount])))
												endif
											RapersACount += 1
											elseif RapersBCount < 4						
											RapersB[RapersBCount] = a	 		
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersB #"+RapersBCount+": "+cfgqst.GetActorInfo(RapersB[RapersBCount]))
												else
												;Debug.Trace("NAKED DEFEAT rapequest: RapersB #"+RapersBCount+": "+((RapersB[RapersBCount]).GetBaseObject().GetName()))
												Debug.Trace("NAKED DEFEAT rapequest: RapersB #"+RapersBCount+": "+(cfgqst.GetLeveledActorBaseName(RapersB[RapersBCount])))
												endif
											RapersBCount += 1
											elseif RapersCCount < 4						
											RapersC[RapersCCount] = a	
												if cfgqst.ShowDebugMessages
												Debug.Trace("NAKED DEFEAT rapequest: RapersC #"+RapersCCount+": "+cfgqst.GetActorInfo(RapersC[RapersCCount]))
												else
												;Debug.Trace("NAKED DEFEAT rapequest: RapersC #"+RapersCCount+": "+((RapersC[RapersCCount]).GetBaseObject().GetName()))		
												Debug.Trace("NAKED DEFEAT rapequest: RapersC #"+RapersCCount+": "+(cfgqst.GetLeveledActorBaseName(RapersC[RapersCCount])))	
												endif
											RapersCCount += 1	
											endif	

									endif								
									;-----------------------------------------------------------------------------------------------
									
								;CREATURES														
								elseif (SexLab.GetGender(a) == 2) ;|| SkipToCreatures	
									;if SkipToCreatures
									;SkipToCreatures = false
									;endif
								
									if !a.IsInFaction(PlayerFaction) ; && AllowActor(a) ;<----- new hitter detection
										;asign a racekey to each group based on scanned Creatures - each group gets ONE Racekey asigned and is then false
										if cfgqst.AllowCreatures		
											if AllowActor(a, 2)	
											
												if CreaturesARace == "empty"
												CreaturesARace = GetRaceKey(a) 								;fill in RacesA
												Debug.Trace("NAKED DEFEAT rapequest: CreaturesARace #"+CreaturesARace)
												elseif (CreaturesBRace == "empty") && (CreaturesARace != GetRaceKey(a))
												CreaturesBRace = GetRaceKey(a) 								;fill in RacesB
												Debug.Trace("NAKED DEFEAT rapequest: CreaturesBRace #"+CreaturesBRace)
												elseif (CreaturesCRace == "empty") && (CreaturesARace != GetRaceKey(a)) && (CreaturesBRace != GetRaceKey(a))
												CreaturesCRace = GetRaceKey(a)  							;fill in RacesC
												Debug.Trace("NAKED DEFEAT rapequest: CreaturesCRace #"+CreaturesCRace)
												endif	
										
												;asign a Creature to Group B for Follower01
												;overwrites the above racekey
												if NeedARaper && CreaturesACount > 0
												CreaturesB[CreaturesBCount] = a		
														if cfgqst.ShowDebugMessages
														Debug.Trace("NAKED DEFEAT rapequest: NeedARaper CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
														else
														Debug.Trace("NAKED DEFEAT rapequest: NeedARaper CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
														endif								

												CreaturesBCount += 1
												NeedARaper = false
												CreaturesBRace = GetRaceKey(a) 
										
												;asign a Creature to Group C for Follower02
												;overwrites the above racekey
												elseif NeedAnotherRaper && CreaturesBCount > 0																				
												CreaturesC[CreaturesCCount] = a	 		
														if cfgqst.ShowDebugMessages
														Debug.Trace("NAKED DEFEAT rapequest: NeedARaper CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
														else
														Debug.Trace("NAKED DEFEAT rapequest: NeedARaper CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
														endif		
												CreaturesCCount += 1
												NeedAnotherRaper = false
												CreaturesCRace = GetRaceKey(a) 
										
												;asign a creature to a group based on matching RaceKeys
												elseif (GetRaceKey(a) == CreaturesARace) && (CreaturesACount < 4)
												CreaturesA[CreaturesACount] = a	 		
														if cfgqst.ShowDebugMessages
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesA #"+CreaturesACount+": "+cfgqst.GetActorInfo(CreaturesA[CreaturesACount]))
														else		
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesA #"+CreaturesACount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesA[CreaturesACount])))			
														endif
												CreaturesACount += 1
												;tempraceID = "empty"

												elseif (GetRaceKey(a) == CreaturesBRace) && (CreaturesBCount < 4)
												CreaturesB[CreaturesBCount] = a	 		
														if cfgqst.ShowDebugMessages
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesB #"+CreaturesBCount+": "+cfgqst.GetActorInfo(CreaturesB[CreaturesBCount]))
														else
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesB #"+CreaturesBCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesB[CreaturesBCount])))		
														endif
												CreaturesBCount += 1
												;tempraceID = "empty"
												
												elseif (GetRaceKey(a) == CreaturesCRace) && (CreaturesCCount < 4)
												CreaturesC[CreaturesCCount] = a	 		
														if cfgqst.ShowDebugMessages
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesC #"+CreaturesCCount+": "+cfgqst.GetActorInfo(CreaturesC[CreaturesCCount]))
														else
														Debug.Trace("NAKED DEFEAT rapequest: CreaturesC #"+CreaturesCCount+": "+(cfgqst.GetLeveledActorBaseName(CreaturesC[CreaturesCCount])))													
														endif
												CreaturesCCount += 1	
												;tempraceID = "empty"														
												endif
											else ;ActorNotAllowed
											Debug.Trace("NAKED DEFEAT rapequest: Actor Sorted out (is not Allowed")
											endif
										else ;CreaturesNotAllowed
										Debug.Trace("NAKED DEFEAT rapequest: Actor Sorted out CreaturesNotAllowed")
										endif
									endif ;playerfactioncheck
								endif	;gender check
							else	
							Debug.Trace("NAKED DEFEAT rapequest: Actor commanded: "+a.GetBaseObject().GetName())
							endif	;commanded actor
						else	 
						Debug.Trace("NAKED DEFEAT rapequest: Actor is Dragon: "+a.GetBaseObject().GetName())
						endif	;dragon
					else	
					Debug.Trace("NAKED DEFEAT rapequest: Actor is not allowed: "+a.GetBaseObject().GetName())
				;	Debug.Notification("NAKED DEFEAT DEBUG: Actor is not allowed: "+a)
					endif	;non valid actors (from mods for example)
				else ;IsGuard			
				Debug.Trace("NAKED DEFEAT rapequest: IsGuard: "+a.GetBaseObject().GetName())
				endif 
			else ;distance
				if cfgqst.ShowDebugMessages
				Debug.Trace("NAKED DEFEAT rapequest: Distance too far: "+cfgqst.PlayerRef.GetDistance(a))
				Debug.Trace("NAKED DEFEAT rapequest: Actor is too far away: "+a.GetBaseObject().GetName())
				endif
			endif
		endif	;if a (no actor)
	endwhile	
	
	if RapersACount > 0
	RapersAvalid = true
;	RapersA.AddToFaction(BusyFaction)	;#busy
;	RapersA[0].Addtofaction(WhippingFaction)
	
	endif
	if RapersBCount > 0
	RapersBvalid = true
	endif
	if RapersCCount > 0
	RapersCvalid = true
	endif
	if (CreaturesACount > 0) && cfgqst.AllowCreatures
	CreaturesAvalid = true
	endif
	if CreaturesBCount > 0 && cfgqst.AllowCreatures
	CreaturesBvalid = true
	endif
	if CreaturesCCount > 0 && cfgqst.AllowCreatures
	CreaturesCvalid = true
	endif	
	
;-----------------------------------------	
	
	Debug.Trace("NAKED DEFEAT rapequest: RapersACount:"+RapersACount)
	Debug.Trace("NAKED DEFEAT rapequest: RapersBCount:"+RapersBCount)
	Debug.Trace("NAKED DEFEAT rapequest: RapersCCount:"+RapersCCount)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesACount:"+CreaturesACount)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesBCount:"+CreaturesBCount)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesCCount:"+CreaturesCCount)
	Debug.Trace("NAKED DEFEAT rapequest: VictimCount:"+VictimCount)
	
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesAvalid:"+CreaturesAvalid)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesBvalid:"+CreaturesBvalid)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesCvalid:"+CreaturesCvalid)
	
	;this is a bool for "AllowActor"
	note = false
	
EndFunction

bool RapersAinUSE = false
bool RapersBinUSE = false
bool RapersCinUSE = false
bool CreaturesAinUSE = false
bool CreaturesBinUSE = false
bool CreaturesCinUSE = false

;------------------------------------------------------------------------------------------------------------------------------------------------------------

Function SelectPeeGuys()	;#guys				
Debug.Trace("NAKED DEFEAT rapequest: SelectAggressorPee START")

	creaturegroup = false
	humangroup = false
	group = false

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
			Debug.Trace("NAKED DEFEAT rapequest: 5-person animations found: "+AnimationsPee4.Length)
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
			Debug.Trace("NAKED DEFEAT rapequest: 4-person animations found: "+AnimationsPee3.Length)
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
			Debug.Trace("NAKED DEFEAT rapequest: 3-person animations found: "+AnimationsPee2.Length)
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
			Debug.Trace("NAKED DEFEAT rapequest: 2-person animations found: "+AnimationsPee1.Length)
			Debug.Notification("NAKED DEFEAT: 2-person animations found: "+AnimationsPee1.Length)
			endif
			if AnimationsPee1.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
			AggressorCount = 0
			Aggressors[0] = None
			endif
		endif	
	endif	
	
	;	if cfgqst.ShowDebugMessages
	;	Debug.Trace("NAKED DEFEAT rapequest: - PeeAnim available for: "+AggressorCount)
EndFunction	
	
;------------------------------------------------------------------------------------------------------------------------------------------------------------
			
Function SelectAggressor(Int Round = 0, Int VictimNumber = 0)			;does this mean the numbers from the "call" are reverted to 0?)			#select
Debug.Trace("NAKED DEFEAT rapequest: SelectAggressor START")
;Function SelectAggressor(Int Index = 0)			;does this mean the numbers from the "call" are reverted to 0?)

; VictimNumber 0 = Player
; VictimNumber 1 = Follower 01

	creaturegroup = false
	humangroup = false
	group = false	
	
	;/
	
	1 - we need to select a group
	2 - we block that group for next scene
	3 - we need to unblock that group again after scene finished
	
	4 - we also need to select a different group each round
	5 - player picks first!
	
	/;

;PLAYER 	
if VictimNumber == 0	
		
bool noCreatures = false	
		
	;rule out creatures when DefeatTypeXXX -->> could probably be improved to not block stuff for followers. also maybe we find anims suitable! (rodeo!)
	;we need to add tag detection to creature scenes too
	if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Pillory")
	noCreatures = true
	endif

	Debug.Trace("NAKED DEFEAT rapequest: SelectAggressor Player")
	if Round == 1								;Round 1			----> humans have priority
		if RapersAvalid 						;Rapers A			(prio)
		RapersAselected = true					;or
		RapersAinUSE = true
		elseif CreaturesAvalid					;Creatures A		(prio)
		CreaturesAselected = true	
		CreaturesAinUSE = true
		endif
	elseif Round == 2							;Round 2			----> creatures have priority
		if CreaturesBvalid && !noCreatures						;Creatures B		(prio)
		CreaturesBselected = true				;or
		CreaturesBinUSE = true
		elseif CreaturesAvalid && !noCreatures						;Creatures A 		(fallback)
		CreaturesAselected = true				;or
		CreaturesAinUSE = true
		elseif RapersBvalid 					;Rapers B			(prio)
		RapersBselected = true					;or
		RapersBinUSE = true	
		elseif RapersAvalid 					;Rapers A			(fallback)
		RapersAselected = true					;or
		RapersAinUSE = true
		endif
	elseif Round == 3							;Round 3			----> creatures have priority			
		if CreaturesCvalid && !noCreatures							;Creatures C 		(prio)			
		CreaturesCselected = true				;or		
		CreaturesCinUSE = true
		elseif CreaturesBvalid && !noCreatures	  					;Creatures B 		(fallback)
			if RapersBvalid && (Utility.RandomInt(1, 2) < 2)
			RapersBselected = true					;or
			RapersBinUSE = true	
			else
			CreaturesBselected = true				;or
			CreaturesBinUSE = true
			endif
		elseif CreaturesAvalid && !noCreatures					;Creatures A 		(fallback)
			if RapersAvalid && (Utility.RandomInt(1, 2) < 2)
			RapersAselected = true					;or
			RapersAinUSE = true	
			else
			CreaturesAselected = true				;or
			CreaturesAinUSE = true
			endif
		elseif RapersCvalid 					;Rapers C 			(prio)
		RapersCselected = true					;or
		RapersCinUSE = true
		elseif RapersBvalid 					;Rapers B			(fallback)
		RapersBselected = true					;or
		RapersBinUSE = true	
		elseif RapersAvalid 					;Rapers A			(fallback)
		RapersAselected = true					;or
		RapersAinUSE = true	
		endif
	endif
	
	Debug.Trace("NAKED DEFEAT rapequest: RapersAinUSE:"+RapersAinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: RapersBinUSE:"+RapersBinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: RapersCinUSE:"+RapersCinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesAinUSE:"+CreaturesAinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesBinUSE:"+CreaturesBinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesCinUSE:"+CreaturesCinUSE)
	
	Debug.Trace("NAKED DEFEAT rapequest: RapersAselected:"+RapersAselected)
	Debug.Trace("NAKED DEFEAT rapequest: RapersBselected:"+RapersBselected)
	Debug.Trace("NAKED DEFEAT rapequest: RapersCselected:"+RapersCselected)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesAselected:"+CreaturesAselected)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesBselected:"+CreaturesBselected)
	Debug.Trace("NAKED DEFEAT rapequest: CreaturesCselected:"+CreaturesCselected)
	
;FOLLOWER	
elseif VictimNumber == 1		

	;round 1 or 50% chance if round 3
	if (Round == 1) || ((Round == 3) && (Utility.RandomInt(1,2) == 1)) 
		if CreaturesCvalid && !CreaturesCinUSE		;Creatures C 		(prio)				
		CreaturesCselected = true									
		CreaturesCinUSE = true
		elseif CreaturesBvalid && !CreaturesBinUSE		;Creatures B 		(fallback)
		CreaturesBselected = true								
		CreaturesBinUSE = true
		elseif CreaturesAvalid && !CreaturesAinUSE		;Creatures A 		(fallback)
		CreaturesAselected = true						
		CreaturesAinUSE = true
		elseif RapersCvalid && !RapersCinUSE  			;Rapers C 			(prio)
		RapersCselected = true							
		RapersCinUSE = true	
		elseif RapersBvalid && !RapersBinUSE			;Rapers B			(fallback)
		RapersBselected = true								
		RapersBinUSE = true
		elseif RapersAvalid && !RapersAinUSE			;Rapers A			(fallback)
		RapersAselected = true										
		RapersAinUSE = true
		endif	
	elseif Round == 2 || Round == 3
		if RapersCvalid && !RapersCinUSE  				;Rapers C 			(prio)
		RapersCselected = true							
		RapersCinUSE = true	
		elseif RapersBvalid && !RapersBinUSE			;Rapers B			(fallback)
		RapersBselected = true								
		RapersBinUSE = true
		elseif RapersAvalid && !RapersAinUSE			;Rapers A			(fallback)
		RapersAselected = true										
		RapersAinUSE = true
		elseif CreaturesCvalid && !CreaturesCinUSE		;Creatures C 		(prio)					
		CreaturesCselected = true									
		CreaturesCinUSE = true
		elseif CreaturesBvalid && !CreaturesBinUSE		;Creatures B 		(fallback)
		CreaturesBselected = true								
		CreaturesBinUSE = true
		elseif CreaturesAvalid && !CreaturesAinUSE		;Creatures A 		(fallback)
		CreaturesAselected = true						
		CreaturesAinUSE = true
		endif
	endif
	
		
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersAinUSE:"+RapersAinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersBinUSE:"+RapersBinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersCinUSE:"+RapersCinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesAinUSE:"+CreaturesAinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesBinUSE:"+CreaturesBinUSE)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesCinUSE:"+CreaturesCinUSE)
	
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersAselected:"+RapersAselected)
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersBselected:"+RapersBselected)
	Debug.Trace("NAKED DEFEAT rapequest: Follower RapersCselected:"+RapersCselected)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesAselected:"+CreaturesAselected)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesBselected:"+CreaturesBselected)
	Debug.Trace("NAKED DEFEAT rapequest: Follower CreaturesCselected:"+CreaturesCselected)

endif

	;-------------------------------------------------------------------------------------
	;STAGE #1 - transfer actors to new group
	
	Aggressors = new Actor[4]	
	Aggressors[0] = none				
	Aggressors[1] = none				
	Aggressors[2] = none					
	Aggressors[3] = none
	AggressorCount = 0
		
	if RapersAselected	
	Aggressors[0] = RapersA[0]					
	Aggressors[1] = RapersA[1]					
	Aggressors[2] = RapersA[2]						
	Aggressors[3] = RapersA[3]	
	AggressorCount = RapersACount
	humangroup = true
	
	elseif RapersBselected	
	Aggressors[0] = RapersB[0]					
	Aggressors[1] = RapersB[1]					
	Aggressors[2] = RapersB[2]						
	Aggressors[3] = RapersB[3]	
	AggressorCount = RapersBCount
	humangroup = true

	elseif RapersCselected					
	Aggressors[0] = RapersC[0]					
	Aggressors[1] = RapersC[1]					
	Aggressors[2] = RapersC[2]						
	Aggressors[3] = RapersC[3]	
	AggressorCount = RapersCCount
	humangroup = true

	elseif CreaturesAselected				
	Aggressors[0] = CreaturesA[0]					
	Aggressors[1] = CreaturesA[1]					
	Aggressors[2] = CreaturesA[2]						
	Aggressors[3] = CreaturesA[3]	
	AggressorCount = CreaturesACount
	creaturegroup = true

	elseif CreaturesBselected				
	Aggressors[0] = CreaturesB[0]					
	Aggressors[1] = CreaturesB[1]					
	Aggressors[2] = CreaturesB[2]						
	Aggressors[3] = CreaturesB[3]	
	AggressorCount = CreaturesACount
	creaturegroup = true

	elseif CreaturesCselected				
	Aggressors[0] = CreaturesC[0]					
	Aggressors[1] = CreaturesC[1]					
	Aggressors[2] = CreaturesC[2]						
	Aggressors[3] = CreaturesC[3]	
	AggressorCount = CreaturesCCount
	creaturegroup = true

	endif

	RapersAselected = false
	RapersBselected = false
	RapersCselected = false	
	CreaturesAselected = false
	CreaturesBselected = false
	CreaturesCselected = false	
	
	if (Aggressors[0] && Aggressors[0].IsDead()) || (Aggressors[1] && Aggressors[1].IsDead()) || (Aggressors[2] && Aggressors[2].IsDead()) || (Aggressors[3] && Aggressors[3].IsDead())	;check if 1 of the aggressors is dead
		
		if (Aggressors[0] && Aggressors[1]) && (Aggressors[0].IsDead() && !Aggressors[1].IsDead())		;if Aggressor[0] is dead and Aggressors[1] is NOT dead, replace [0] with [1] & reduce Group to 1 (for simplicity)
		Aggressors[0] = Aggressors[1]
		Aggressors[3] = none
		Aggressors[2] = none
		Aggressors[1] = none
		AggressorCount = 1
		elseif (Aggressors[0] && Aggressors[2]) && (Aggressors[0].IsDead() && !Aggressors[2].IsDead())
		;elseif Aggressors[0].IsDead() && !Aggressors[2].IsDead()	;if Aggressor[0] is dead and Aggressors[2] is NOT dead, replace [0] with [2] & reduce Group to 1 (for simplicity)
		Aggressors[0] = Aggressors[2]	
		Aggressors[3] = none
		Aggressors[2] = none
		Aggressors[1] = none
		AggressorCount = 1
		;elseif Aggressors[0].IsDead() && !Aggressors[3].IsDead()	;if Aggressor[0] is dead and Aggressors[3] is NOT dead, replace [0] with [3] & reduce Group to 1 (for simplicity)
		elseif (Aggressors[0] && Aggressors[3]) && (Aggressors[0].IsDead() && !Aggressors[3].IsDead())
		Aggressors[0] = Aggressors[3]
		Aggressors[3] = none
		Aggressors[2] = none
		Aggressors[1] = none
		AggressorCount = 1		
		elseif !Aggressors[0].IsDead()								;if one of the Aggressors is dead but NOT Aggressor[0]
		Aggressors[3] = none
		Aggressors[2] = none
		Aggressors[1] = none
		AggressorCount = 1	
		else														;if all Aggressors are dead... reduce count to 0
		Aggressors[0] = none
		Aggressors[3] = none
		Aggressors[2] = none
		Aggressors[1] = none
		AggressorCount = 0
		endif
	
	endIf
	
	;yoke and rodeo reduce group to 1 for 2P scenes
	if ((cfgqst.DefeatTypeScenario == "Yoke") && humangroup) || ((cfgqst.DefeatTypeScenario == "Rodeo") && humangroup)	;only if human group because we dont have creatureyoke (yet)				
	Aggressors[3] = None	
	Aggressors[2] = None					;#yoke #scenario
	Aggressors[1] = None
	AggressorCount = 1						;reduce aggressorcount to 1 because we only have 2P yoke animations
	;humangroup = false
	;group = false
	endif
	

	;check if aggressors are dead end __________________________________________
	
	
	;-------------------------------------------------------------------------------------
	;STAGE #2 VALIDATE if GROUP Possible COMPATIBILITY 

	; This Removes Actors if Multi Chance is not met (GangRape) - reduces actors 1 by 1, so with 50% Group chance should the AggressorCount vary alot, no?	
	;STAGE 3
	
	
	;NEW GROUP MANAGEMENT
	
	;determine which kind of MultiSome will play depending on the size of the group	/ afterwards we check for available animations...
	if AggressorCount == 4 
		if cfgqst.Group5Pchance >= Utility.RandomInt(1, 100)				;5P
		;we remain with 5P
		elseif cfgqst.Group4Pchance >= Utility.RandomInt(1, 100)			;4P
		Aggressors[3] = None	
		AggressorCount = 3		;reduce group size to 3 for 4P
		elseif cfgqst.Group3Pchance >= Utility.RandomInt(1, 100)			;3P
		Aggressors[3] = None	
		Aggressors[2] = None
		AggressorCount = 2		;reduce group size to 2 for 3P				
		else ;cfgqst.Group2Pchance >= Utility.RandomInt(1, 100) 			;2P
		Aggressors[3] = None	
		Aggressors[2] = None
		Aggressors[1] = None
		AggressorCount = 1		;reduce group size to 1 for 2P						
		endIf						
	elseif AggressorCount == 3	
		if cfgqst.Group4Pchance >= Utility.RandomInt(1, 100)				;4P
		;we remain with 4P
		elseif cfgqst.Group3Pchance >= Utility.RandomInt(1, 100)			;3P
		Aggressors[2] = None	
		AggressorCount = 2		;reduce group size to 2 for 3P			
		else ; cfgqst.Group2Pchance >= Utility.RandomInt(1, 100) 			;2P	
		Aggressors[2] = None
		Aggressors[1] = None
		AggressorCount = 1		;reduce group size to 1 for 2P						
		endIf	
	elseif AggressorCount == 2	
		if cfgqst.Group3Pchance >= Utility.RandomInt(1, 100)			;3P
		;we remain with 3P		
		else ; cfgqst.Group2Pchance >= Utility.RandomInt(1, 100) 			;2P
		Aggressors[1] = None
		AggressorCount = 1		;reduce group size to 1 for 2P						
		endIf
	endif
	
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;------------------------ STAGE 4 Reduce Animations based on Availability
	
;----------------- Check Creature ID and available animations ----------------------------------------------------------------

;PLAYER
if VictimNumber == 0 

	if creaturegroup
	String raceID = MiscUtil.GetActorRaceEditorID(Aggressors[0]) 
	String raceKey = sslCreatureAnimationSlots.GetRaceKeyByID(raceID) 
	
		if AggressorCount == 4           	 ;5P  
			Animations4 = SexLab.GetCreatureAnimationsByRaceKey(5, RaceKey)
		;	if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT rapequest: 5P creature animations found (Player): "+Animations4.Length)
		;	Debug.Notification("NAKED DEFEAT: 5P creature animations found: "+Animations4.Length)
		;	endif
			if Animations4.Length < 1			
			AggressorCount = 3
			Aggressors[3] = None
			endif
		endif
		if AggressorCount == 3            ;4P  
			Animations3 = SexLab.GetCreatureAnimationsByRaceKey(4, RaceKey)
		;	if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT rapequest: 4P creature animations found (Player): "+Animations3.Length)
		;	Debug.Notification("NAKED DEFEAT: 4P creature animations found: "+Animations3.Length)
		;	endif
			if Animations3.Length < 1			
			AggressorCount = 2
			Aggressors[2] = None
			endif
		endif
		if AggressorCount == 2            ;3P  
			Animations2 = SexLab.GetCreatureAnimationsByRaceKey(3, RaceKey)
		;	if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT rapequest: 3P creature animations found (Player): "+Animations2.Length)
		;	Debug.Notification("NAKED DEFEAT: 3P creature animations found: "+Animations2.Length)
		;	endif
			if Animations2.Length < 1			
			AggressorCount = 1
			Aggressors[1] = None
			endif
		endif
		if AggressorCount == 1            ;2P  
			Animations1 = SexLab.GetCreatureAnimationsByRaceKey(2, RaceKey)
		;	if cfgqst.ShowDebugMessages
			Debug.Trace("NAKED DEFEAT rapequest: 2P creature animations found (Player): "+Animations1.Length)
		;	Debug.Notification("NAKED DEFEAT: 2P creature animations found: "+Animations1.Length)
		;	endif
			if Animations1.Length < 1			
			AggressorCount = 0
			Aggressors[0] = None
			endif
		endif
	endif	
	
;--------------------- GetAnimationsByTags (NEW) ---------------------------------------------
	;PLAYER
	if humangroup	
	string SuppressedTagsBase = "LeadIn, GoldenShower, Wall, InvisFurn, Bed, " 		;#tags
	string SuppressedTags = GroupComposition() + SuppressedTagsBase + cfgqst.SavedTags_05
	string GroupTags = ""		;3P,4P,5P have no tag selection to increase number of suitable anims
	
	if (cfgqst.DefeatTypeScenario == "Cuffs")		;---> might require adding "cuffs" to some group anims - check
	GroupTags = "cuffs"
	endif
	
	;supressed tags variations
		if (cfgqst.DefeatTypeScenario == "Rodeo")
		SuppressedTags = "LeadIn, GoldenShower, Femdom, Yoke, Cuffs, Armbinder, Furniture, "
		endif
		
	Debug.Trace("NAKED DEFEAT rapequest: GroupTags (Player): "+GroupTags)
	Debug.Trace("NAKED DEFEAT rapequest: CustomTags (Player): "+GetCustomTags())
	Debug.Trace("NAKED DEFEAT rapequest: Supressed Tags (Player): "+SuppressedTags)
	
		if AggressorCount == 4            ;5P  							
			Animations4 = SexLab.GetAnimationsByTags(5, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages	
			Debug.Notification("NAKED DEFEAT: 5-person animations found (Player): "+Animations4.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 5-person animations found (Player): "+Animations4.Length)
			if Animations4.Length < 1			;5P if 4 Aggressors and no 5P anims -> reduce Aggressors to 3
			AggressorCount = 3
			Aggressors[3] = None
			endif
		endif
		if AggressorCount == 3           ;4p
			Animations3 = SexLab.GetAnimationsByTags(4, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 4-person animations found (Player): "+Animations3.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 4-person animations found (Player): "+Animations3.Length)
			if Animations3.Length < 1				
			AggressorCount = 2
			Aggressors[2] = None
			endif
		endif
		if AggressorCount == 2            ;3P
			Animations2 = SexLab.GetAnimationsByTags(3, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 3-person animations found (Player): "+Animations2.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 3-person animations found (Player): "+Animations2.Length)
			if Animations2.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
			AggressorCount = 1
			Aggressors[1] = None
			endif
		endif
		if AggressorCount == 1            ;2P
			Animations1 = SexLab.GetAnimationsByTags(2, GetCustomTags(), SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 2-person animations found (Player): "+Animations1.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 2-person animations found (Player): "+Animations1.Length)
			if Animations1.Length  < 1			;2P if 1 Aggressors and no 2P anims -> reduce Aggressors to 0
			AggressorCount = 0
			Aggressors[0] = None
			endif
		endif	
	endif	
	
	;PLAYER
	;this removes the Raper[0] from the whipping Faction to make sure WhipQuest does catch a valid whipper
	;this also adds to busy Faction to make sure other mods do not use the actor (SpecatorCrowdsCompatibility)
	if (cfgqst.DefeatTypeScenario == "Rodeo") && Aggressors[0].IsInFaction(WhippingFaction)
		Aggressors[0].RemoveFromFaction(WhippingFaction)
		Aggressors[0].AddToFaction(BusyFaction)	
	endif
	
	;	if cfgqst.ShowDebugMessages
	;	Debug.Trace("NAKED DEFEAT rapequest: - Anim available for: "+AggressorCount)
	;	Debug.Notification("NAKED DEFEAT -  Anim available for: "+AggressorCount)
	;	i = AggressorCount
	;	while i
	;		i -= 1
	;		Debug.Trace("NAKED DEFEAT - Select Aggressor Stage 4: Aggressor #"+i+": "+cfgqst.GetActorInfo(Aggressors[i])) ;traces the aggressors that were found
	;		Debug.Notification("NAKED DEFEAT - Select Aggressor Stage 4: Aggressor #"+i+": "+cfgqst.GetActorInfo(Aggressors[i])) ;traces the aggressors that were found
	;	endwhile
	;endif

;FOLLOWER 	
elseif VictimNumber == 1  
	;FOLLOWER_01 
	if creaturegroup
	String raceID = MiscUtil.GetActorRaceEditorID(Aggressors[0]) 
	String raceKey = sslCreatureAnimationSlots.GetRaceKeyByID(raceID) 
	
		if AggressorCount == 4           	 ;5P  		
			Animations4_Follower01 = SexLab.GetCreatureAnimationsByRaceKey(5, RaceKey)
			Debug.Trace("NAKED DEFEAT rapequest: 5P creature animations found (Follower01): "+Animations4_Follower01.Length)
			if Animations4_Follower01.Length < 1			
			AggressorCount = 3
			Aggressors[3] = None
			endif
		endif
		if AggressorCount == 3            ;4P  		
			Animations3_Follower01 = SexLab.GetCreatureAnimationsByRaceKey(4, RaceKey)		
			Debug.Trace("NAKED DEFEAT rapequest: 4P creature animations found (Follower01): "+Animations3_Follower01.Length)
			if Animations3_Follower01.Length < 1			
			AggressorCount = 2
			Aggressors[2] = None
			endif
		endif
		if AggressorCount == 2            ;3P  	
			Animations2_Follower01 = SexLab.GetCreatureAnimationsByRaceKey(3, RaceKey)
			Debug.Trace("NAKED DEFEAT rapequest: 3P creature animations found (Follower01): "+Animations2_Follower01.Length)
			if Animations2_Follower01.Length < 1			
			AggressorCount = 1
			Aggressors[1] = None
			endif
		endif
		if AggressorCount == 1            ;2P  	
			Animations1_Follower01 = SexLab.GetCreatureAnimationsByRaceKey(2, RaceKey)
			Debug.Trace("NAKED DEFEAT rapequest: 2P creature animations found (Follower01): "+Animations1_Follower01.Length)
			if Animations1_Follower01.Length < 1			
			AggressorCount = 0
			Aggressors[0] = None
			endif
		endif
	endif	

	;FOLLOWER_01 
;--------------------- GetAnimationsByTags (NEW) ---------------------------------------------

	if humangroup	

	
	string SuppressedTagsBase = "LeadIn, GoldenShower," 		;#tags
	string SuppressedTags = GroupComposition() + SuppressedTagsBase + cfgqst.SavedTags_05
	string GroupTags = ""		;3P,4P,5P have no tag selection to increase number of suitable anims
	
	if (cfgqst.DefeatTypeScenario == "Cuffs")		;---> might require adding "cuffs" to some group anims - check
	GroupTags = "cuffs"
	endif
	
	;supressed tags variations
		if (cfgqst.DefeatTypeScenario == "Rodeo")
		SuppressedTags = "LeadIn, GoldenShower, Femdom, Yoke, Cuffs, Armbinder, Furniture"
		endif
	
	Debug.Trace("NAKED DEFEAT rapequest: GroupTags (Follower01): "+GroupTags)
	Debug.Trace("NAKED DEFEAT rapequest: CustomTags (Follower01): "+GetCustomTags())
	Debug.Trace("NAKED DEFEAT rapequest: Supressed Tags (Follower01): "+SuppressedTags)
		if AggressorCount == 4            ;5P  								
			Animations4_Follower01 = SexLab.GetAnimationsByTags(5, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 5-person animations found (Follower01): "+Animations4_Follower01.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 5-person animations found (Follower01): "+Animations4_Follower01.Length)
			if Animations4_Follower01.Length < 1			;5P if 4 Aggressors and no 5P anims -> reduce Aggressors to 3
			AggressorCount = 3
			Aggressors[3] = None
			endif
		endif
		if AggressorCount == 3           ;4p
			Animations3_Follower01 = SexLab.GetAnimationsByTags(4, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 4-person animations found (Follower01): "+Animations3_Follower01.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 4-person animations found (Follower01): "+Animations3_Follower01.Length)
			if Animations3_Follower01.Length < 1				
			AggressorCount = 2
			Aggressors[2] = None
			endif
		endif
		if AggressorCount == 2            ;3P
			Animations2_Follower01 = SexLab.GetAnimationsByTags(3, GroupTags, SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 3-person animations found (Follower01): "+Animations2_Follower01.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 3-person animations found (Follower01): "+Animations2_Follower01.Length)
			if Animations2_Follower01.Length  < 1			;3P if 2 Aggressors and no 3P anims -> reduce Aggressors to 1
			AggressorCount = 1
			Aggressors[1] = None
			endif
		endif
		if AggressorCount == 1            ;2P
			Animations1_Follower01 = SexLab.GetAnimationsByTags(2, GetCustomTags(), SuppressedTags, True)
			if cfgqst.ShowDebugMessages
			Debug.Notification("NAKED DEFEAT: 2-person animations found (Follower01): "+Animations1_Follower01.Length)
			endif
			Debug.Trace("NAKED DEFEAT rapequest: 2-person animations found (Follower01): "+Animations1_Follower01.Length)
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
		
;----------------------------------------------------------------------------------------------------------------------

bool SexSceneStarted = false
		
Function StartRape(Actor akAggressor)			;akAgressor	;start Rape with the numbered Aggresssor (all functions call with Aggressor(0) so that one is always ther 	#Rape
Debug.Trace("NAKED DEFEAT rapequest: StartRape (Player) START")
		
		ForcePosing_2 = false 
		cfgqst.SexScene = true
		
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
		RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
		
			
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>You are fucked!</font>")	;MESSAGE
		Debug.trace("NAKED DEFEAT notification: You are fucked!")

			
			if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
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
					Debug.Trace("NAKED DEFEAT rapequest: Aggressors added to the thread: "+i)
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
				
				
				Thread.CenterOnObject(vehicle)			
				Thread.DisableBedUse(true)
	
				if (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Pillory")
				Thread.DisableLeadIn(true)	
				endif
				
				Thread.SetHook("NadeRape")	

				
				if Utility.RandomInt(1, 100) <= cfgqst.RapeHandsProb  	;#rapehands
				AddRapeHandsDuringSex = true
				Debug.Trace("NAKED DEFEAT rapequest: OnUpdate (sent: AddRapeHandsDuringSex")
				RegisterForSingleUpdate(0.1)			
				endif				
			
				if !Thread.StartThread()
				
					AddRapeHandsDuringSex = false	
						
					OnAnimationEnding("", "", 0, None)
					Debug.Notification("NAKED DEFEAT: ERROR starting SexLab thread.")
					Debug.Trace("NAKED DEFEAT rapequest: Failed to start SexLab thread.")
					Debug.Trace("NAKED DEFEAT rapequest: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
					
					
						;SetStage(GetStage()+1)	;test proceed mod
						;		endif
				endif

			else	
			
				AddRapeHandsDuringSex = false	
				
				OnAnimationEnding("", "", 0, None)
				Debug.Trace("NAKED DEFEAT rapequest: Failed to add the first two participants to the SexLab thread.")
				Debug.Notification("NAKED DEFEAT: ERROR: failed to add the first two participants to the SexLab thread.")
				Debug.Trace("NAKED DEFEAT rapequest: Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				
			;	SetStage(GetStage()+1)	;test proceed mod
		;		endif
			endif
			

		else
		
		AddRapeHandsDuringSex = false	
		OnAnimationEnding("", "", 0, None)
		;Debug.Notification("ERROR: invalid aggressor NPC ("+val+").")
		Debug.Notification("NAKED DEFEAT: #ERROR - invalid raper")
		;SetStage(GetStage()+1)

		endif	
		

		
		if (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")			
		
		whipq00.StartWhipQuest_00()
		endif
		
		SexSceneStarted = true
		
EndFunction

Function StartMasturbation()	
Debug.Trace("NAKED DEFEAT rapequest: StartRape (Player) START")
		
		ForcePosing_2 = false
		cfgqst.SexScene = true
			
		Animations1 = SexLab.GetAnimationsByTags(1, "Solo", "", True)
		
		RegisterForModEvent("AnimationEnding_NadeRape", "OnAnimationEnding")
		RegisterForModEvent("AnimationEnd_NadeRape", "OnAnimationEnd")
		
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>You are forced to fuck yourself!</font>")	;MESSAGE
		Debug.trace("NAKED DEFEAT notification: You are forced to fuck yourself!")

			
	if Thread && (Thread.AddActor(cfgqst.PlayerRef, true) >= 0) 			;makes Thread with PC and Aggressor(0)

		Thread.SetForcedAnimations(Animations1)		
		Thread.CenterOnObject(vehicle)			
		Thread.DisableBedUse(true)
		Thread.DisableLeadIn(true)
		Thread.SetHook("NadeRape")	

		if !Thread.StartThread()							
			OnAnimationEnding("", "", 0, None)
			Debug.Notification("NAKED DEFEAT: ERROR starting SexLab thread.")
			Debug.Trace("NAKED DEFEAT rapequest: Failed to start SexLab thread.")
		endif

	else				
		OnAnimationEnding("", "", 0, None)
		Debug.Trace("NAKED DEFEAT rapequest: Failed to add the Player to the SexLab thread.")
		Debug.Notification("NAKED DEFEAT: ERROR: Failed to add the Player to the SexLab thread.")
	endif
	
	whipq00.StartWhipQuest_00()
	
	SexSceneStarted = true
		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

bool SexFollower01Running = false

Function StartRapeFollower01(Actor akAggressor)		;#rape01		
Debug.Trace("NAKED DEFEAT rapequest: StartRape (Follower01) START")
						
		SexFollower01Running = true					
						
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_Naderapefollower01", "OnAnimationEnding01")
		RegisterForModEvent("AnimationEnd_Naderapefollower01", "OnAnimationEnd01")
			
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>They fuck your follower, too!</font>")	;MESSAGE

			
			if Thread && (Thread.AddActor(Victims[0], true) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
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
					Debug.Trace("NAKED DEFEAT rapequest: Aggressors added to the thread: "+i)
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
				Thread.CenterOnObject(vehicle_foll_01)	
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
					
				Thread.SetHook("Naderapefollower01")				
			
				if !Thread.StartThread()
					Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start A (StartRapeFollower01)")
					Debug.Notification("Nobody around to fuck your follower")
					OnAnimationEnd01("", "", 0, None)
					;Debug.Notification("ERROR starting SexLab thread.")
				;	Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
				;	Debug.Trace("NAKED DEFEAT rapequest: Failed to start SexLab thread (StartRapeFollower01).")
				endif

			else				
				Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start B (StartRapeFollower01)")
				Debug.Notification("Nobody around to fuck your follower")
				OnAnimationEnd01("", "", 0, None)
				;Debug.Notification("ERROR: failed to add the first two participants to the SexLab thread.")
				;Debug.Notification("Rapers: "+cfgqst.GetLeveledActorBaseName(Aggressors[0])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[1])+", "+cfgqst.GetLeveledActorBaseName(Aggressors[2]))
			endif
		else		
			Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start C (StartRapeFollower01)")
			Debug.Notification("Nobody around to fuck your follower")
			OnAnimationEnd01("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------


bool SexFollower02Running = false	

Function StartRapeFollower02(Actor akAggressor)		;#rape02	;Victims[1]		
Debug.Trace("NAKED DEFEAT rapequest: StartRape (Follower02) START")
						
		SexFollower02Running = true					
						
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_Naderapefollower02", "OnAnimationEnding02")
		RegisterForModEvent("AnimationEnd_Naderapefollower02", "OnAnimationEnd02")
			
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD				
		Debug.Notification("<font color='#ff0000'>And they also fuck your other follower...</font>")	;MESSAGE

			
			if Thread && (Thread.AddActor(Victims[1], true) >= 0) && (Thread.AddActor(Aggressors[0], false) >= 0)			;makes Thread with PC and Aggressor(0)
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
					Debug.Trace("NAKED DEFEAT rapequest: Aggressors added to the thread: "+i)
				endif
				
				if i == 4
				Thread.SetForcedAnimations(Animations4_Follower02)
				elseif i == 3
				Thread.SetForcedAnimations(Animations3_Follower02)
				elseif i == 2
				Thread.SetForcedAnimations(Animations2_Follower02)
				elseif i == 1
				Thread.SetForcedAnimations(Animations1_Follower02)	
				endif						
				Thread.CenterOnObject(Victims[1])	
				Thread.DisableBedUse(true)
				Thread.DisableLeadIn(true)
					
				Thread.SetHook("Naderapefollower02")				
			
				if !Thread.StartThread()
					Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start A (StartRapeFollower02)")
					Debug.Notification("Nobody around to fuck your other follower")
					OnAnimationEnd02("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start B (StartRapeFollower02)")
				Debug.Notification("Nobody around to fuck your other follower")
				OnAnimationEnd02("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start C (StartRapeFollower02)")
			Debug.Notification("Nobody around to fuck your other follower")
			OnAnimationEnd02("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function StartPee(Actor akAggressor)						;#pee
cfgqst.SexScene = true
ForcePosing_2 = false
ForcePosing_1 = false

Debug.Trace("NAKED DEFEAT rapequest: StartPee START")
		if akAggressor && !akAggressor.IsDead()							;checks if dead? or more?	; CHECK if Aggressor(0) is dead
			
		RegisterForModEvent("AnimationEnding_NadePee", "OnPeeFinished")
		;RegisterForModEvent("AnimationEnd_NadePee", "OnPeeFinished")
	
		sslThreadModel Thread = SexLab.NewThread()							;THIS CREATES THE SEXLAB THREAD					
		Debug.Notification("<font color='#ff0000'>Here is your golden shower!</font>")	;MESSAGE
		Debug.trace("NAKED DEFEAT notification: Here is your golden shower")

			
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
					Debug.Trace("NAKED DEFEAT rapequest: Aggressors added to the thread: "+i)
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
					Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start A (StartPee)")		
					Debug.Notification("Nobody wants to piss on you.")
					OnPeeFinished("", "", 0, None)
				endif

			else	
				Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start B (StartPee)")		
				Debug.Notification("Nobody wants to piss on you.")
				OnPeeFinished("", "", 0, None)
			endif

		else
			Debug.Trace("NAKED DEFEAT rapequest: (#ERROR) Failed to Start C (StartPee)")		
			Debug.Notification("Nobody wants to piss on you.")
			OnPeeFinished("", "", 0, None)
		endif	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function OnPeeFinished(String EventName, String ArgString, Float ArgNum, Form Sender)	;#peefinish				
Debug.Trace("NAKED DEFEAT rapequest: - onPeefinished")
	
	ForcePosing_1 = false
	cfgqst.SexScene = false

	ForcePosing_2 = true				;#pose
	Debug.Trace("NAKED DEFEAT rapequest: OnUpdate (sent: ForcePosing_2")
	RegisterForSingleUpdate(0.1)

	Immobilize(true)

	cfgqst.PlaySound()

	Utility.Wait (3.0)
	cfgqst.PlaySound()
	
	Utility.Wait (3.0)
	cfgqst.PlaySound()
	
	Utility.Wait (3.0)
	cfgqst.PlaySound()

	UnRegisterForModEvent("AnimationEnd_NadePee")
	UnRegisterForModEvent("AnimationEnding_NadePee")  
	Peeing = false

EndFunction






;/ save previous version
Function ForcePose(int round = 0)		

if round == 1							;surrenderpose
int surrpose = Utility.RandomInt(1,2)
	while ForcePosing_1
;	Debug.Trace("NAKED DEFEAT rapequest: ForcePosing_1")

	if surrpose == 1
	cfgqst.ShowPose(cfgqst.PosesDefeat[0], false)
	elseif surrpose == 2
	cfgqst.ShowPose(cfgqst.PosesDefeat[21], false)
	endif
	Utility.Wait (0.2)
	endwhile	
elseif round == 2						;wiggle pose human
int pose = Utility.RandomInt(1,14)
	while ForcePosing_2
;	Debug.Trace("NAKED DEFEAT rapequest: ForcePosing_2")
	cfgqst.ShowPose(cfgqst.PosesDefeat[pose], false)
	Utility.Wait (0.2)
	endwhile
	
elseif round == 3						;wiggle pose animal
int pose = Utility.RandomInt(15,19)
	while ForcePosing_2
;	Debug.Trace("NAKED DEFEAT rapequest: ForcePosing_2")
	cfgqst.ShowPose(cfgqst.PosesDefeat[pose], false)
	Utility.Wait (0.2)
	endwhile
endif	

EndFunction
/;

;________TEST1__________________________________________________

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------
;early Event
Function OnAnimationEnd(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				#finish00
;I think sexlab sends vehicle "player" on AnimationEnd, so we have to reattach vehicle one more time
	Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnd")	
	Immobilize(true)	;earlier immobilization
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	;sound
	Utility.Wait(1.0)
	Debug.trace("NAKED DEFEAT rapequest: Vehicle (SENT restored (OnAnimationEnd))")
	Vehicle("restore") ;#vehicle
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------
;late Event
Function OnAnimationEnding(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				#finish00

	Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnding")	
	ForcePosing_1 = false
	
	;important stuff - after sex maintenance
	cfgqst.SexFinished = true
	cfgqst.SexScene = false
	Vehicle("restore") 	;double check
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Immobilize(true)	;double check
	cfgqst.PlaySound()	
	ForcePosing_2 = true				;#pose
	RegisterForSingleUpdate(0.1)
	Debug.Trace("NAKED DEFEAT rapequest: OnUpdate (sent: ForcePosing_2")
	
	if ((cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Masturbation")) && cfgqst.IsHumanoid(Aggressors[0]) && !Aggressors[0].IsInFaction(WhippingFaction)
	Aggressors[0].AddToFaction(WhippingFaction)
	Aggressors[0].RemoveFromFaction(BusyFaction)
	endif
	
	;followermaintenance
	if Victims2
	folidle01.IdleVictims2(0, "none")
	folidle01.IdleVictims2(1, "struggle")
	endIf
	if Victims3
	folidle01.IdleVictims3(0, "none")
	folidle01.IdleVictims3(1, "struggle")
	endif
	
	;wait for FollowerScenes to finish
	while SexFollower01Running || SexFollower02Running
	Utility.Wait (1.0)
	endwhile

	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	Utility.Wait(3.0)
	;additional waiting time:		
	float IdleWaitTime = 0
	IdleWaitTime = cfgqst.DefeatIdleTime
	while IdleWaitTime > 0
	IdleWaitTime =- 4.0
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	Utility.Wait(3.0)
	cfgqst.PlaySound()					
	Utility.Wait(1.0)
	endwhile
	
	cfgqst.PlaySound()					
	Utility.Wait(1.0)
	
	Vehicle("restore") 	;#vehicle
	cfgqst.SexLabMoan(cfgqst.PlayerRef)		 
	UnRegisterForModEvent("AnimationEnd_NadeRape") 
	UnRegisterForModEvent("AnimationEnding_NadeRape") 
	cfgqst.SexFinished = false
	
	
	if cfgqst.ShortPunishment == 0	
		if RapeAgainRound == 0	
		Debug.Trace("NAKED DEFEAT rapequest: round 1 done: send to round 2")
		RapeAgainRound = 1
		Setstage(11)	;send to round 2
		elseif RapeAgainRound == 1
		Debug.Trace("NAKED DEFEAT rapequest: round 2 done: send to round 3")
		RapeAgainRound = 2
		Setstage (12)	;send to round 3
		elseif RapeAgainRound == 2
		Debug.Trace("NAKED DEFEAT rapequest: round 3 done: send to end of rape")
		;SetStage(13) ;superfluous?
		SetStage(14) ;end of rape
		RapeAgainRound = 0 ;reset counter
		endif
	else 
		;only one round of rape, this is now finished OR we got here directly (skip rape sequence)
		SetStage(14) ;end of rape
		RapeAgainRound = 0 ;reset counter
	endif
	
EndFunction
	
;----------------------------------------------------------------------------------------------------------------------	
;----------------------------------------------------------------------------------------------------------------------
		
;early event	 ;Victims[0]		
Function OnAnimationEnd01(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				#finish
	Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnd01 (Follower)")	
	
	
	SexFollower01Running = false	;tells OnAnimationEnding(Player) to proceed
	Vehicle_Follower_01("restore") 	;#idle
	;folidle01.ResumeFollowerIdleQuest_01("struggle")
	if cfgqst.DefeatTypeScenario == "Bound"
	StripFollower(0)
	AddDefeatBindsFollowers(Victims[0])
	folidle01.IdleVictims0(1, "struggleBound")
	else
	StripFollower(0)
	folidle01.IdleVictims0(1, "struggle")
	endif
	
	UnRegisterForModEvent("AnimationEnd_Naderapefollower01")  

	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;late event		;Victims[0]
Function OnAnimationEnding01(String EventName, String ArgString, Float ArgNum, Form Sender)			;#finish01
Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnding01 (Follower)")

;	if !folidle01.IsSceneRunning()
	Vehicle_Follower_01("restore") 
;	folidle01.ResumeFollowerIdleQuest_01("struggle")

	StripFollower(0)
	
	Vehicle_Follower_01("restore")
	
UnRegisterForModEvent("AnimationEnding_Naderapefollower01")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------

;early event 02		;Victims[1]			
Function OnAnimationEnd02(String EventName, String ArgString, Float ArgNum, Form Sender)	;SEXFINISHSCENE				#finish
	Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnd02 (Follower)")	
	
	SexFollower02Running = false	;tells OnAnimationEnding(Player) to proceed
;	Vehicle_Follower_01("restore") 	;#idle
	
	if cfgqst.DefeatTypeScenario == "Bound"
	StripFollower(1)
	AddDefeatBindsFollowers(Victims[1])
	folidle01.IdleVictims1(1, "struggleBound")
	else
	StripFollower(1)
	folidle01.IdleVictims1(1, "struggle")
	endif
	
	UnRegisterForModEvent("AnimationEnd_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

;late event 02		;Victims[1]
Function OnAnimationEnding02(String EventName, String ArgString, Float ArgNum, Form Sender)			;#finish02
Debug.Trace("NAKED DEFEAT rapequest: - OnAnimationEnding02 (Follower)")

	SexFollower02Running = false
			
	StripFollower(1)

	
UnRegisterForModEvent("AnimationEnding_Naderapefollower02")  
	
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function AddDefeatBindsFollowers(actor akactor)		;#binds
Debug.Trace("NAKED DEFEAT rapequest: AddDefeatBindsFollowers")
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

Function RemoveDefeatBindsFollowers(actor akactor)
Debug.Trace("NAKED DEFEAT rapequest: RemoveDefeatBindsFollowers")
actor a = akactor
	a.RemoveItem(DefeatBinds[3], 1, true, None)
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Immobilize(Bool value = true)				;REWORK THIS SHIT PLEASE IMMOBILIZE FUNCTION			#immobilize

	if value
		cfgqst.PlayerRef.StopCombat()
		cfgqst.PlaySound()
		cfgqst.PlayerRef.StopCombatAlarm()
		Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 1, 1, 1)
		Game.SetPlayerAIDriven(true)
	else
		Game.EnablePlayerControls()
		Game.SetPlayerAIDriven(false)
	endif
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Event OnBis_BatheEvent(Form akTarget)
	Actor CleanActor = akTarget as Actor
	Debug.Trace("NAKED DEFEAT (calm): Event player washing finished")
	WashingPlayer = false
EndEvent

;----------------------------------------------------------------------------------------------------------------------


;----------------------------------------------------------------------------------------------------------------------

Event OnUpdate()			; #update
	
	Debug.Trace("NAKED DEFEAT rapequest: onupdate (ON)")

	if AddRapeHandsDuringSex 			;adds Rape Hand Tattoos during sex with a delay
	Debug.Trace("NAKED DEFEAT rapequest: onupdate (AddRapeHandsDuringSex)")
	AddRapeHandsDuringSex = false
	cfgqst.AddRapeHands()

	elseif ForcePosing_1				;#pose
	Debug.Trace("NAKED DEFEAT rapequest: onupdate (ForcePosing_1)")
	ForcePose("surrender")
	elseif ForcePosing_2
	Debug.Trace("NAKED DEFEAT rapequest: onupdate (ForcePosing_2)")
	ForcePose("wiggle")
	else
	Debug.Trace("NAKED DEFEAT rapequest: onupdate (ERROR - empty update call)")
	endif

EndEvent

String Function GetCustomTags()			;#tags   #GetCustomTags()
 
if AggressorCount == 1 				;2P tags
	if (cfgqst.DefeatTypeScenario == "Yoke")
	return "Yoke"
	elseif (cfgqst.DefeatTypeScenario == "Cuffs")
	return "Cuffs"
	elseif (cfgqst.DefeatTypeScenario == "Rodeo")
		int i = Utility.RandomInt(1, 5)
		if i > 2
		return "Cowgirl"
		elseif i == 2
		return "Standing"
		elseif i == 1
		return "Holding"
		endif
	elseif (cfgqst.DefeatTypeScenario == "Pillory")
	return "Pillory"
	;user defined custom tags (MCM) -> 4 random custom scenarios without specialised idles in between
	else
			int i = Utility.RandomInt(1, 4)
			if i == 1 
				return cfgqst.SavedTags_01
			elseif i == 2 
				return cfgqst.SavedTags_02
			elseif i == 3 
				return cfgqst.SavedTags_03
			elseif i == 4
				return cfgqst.SavedTags_04
			endif	
	endif		
endif		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Event OnBiS_WashActor(Form akActor, Bool Animate = false, Bool FullClean = false, Bool DoSoap = false)
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Function SendWashPlayerEvent()						;#bathing event
    Int WashActor = ModEvent.Create("BiS_WashActor")
    if (WashActor)
   ;   ModEvent.PushForm(WashActor, (cfgqst.PlayerRef as Form))		;akActor
      ModEvent.PushForm(WashActor, (cfgqst.PlayerRef))	
	  ModEvent.PushBool(WashActor, false)							;animation play
      ModEvent.PushBool(WashActor, true)							;full clean (true) or 20% (false)
      ModEvent.PushBool(WashActor, false)							;soap
      ModEvent.Send(WashActor)
    endIf
EndFunction


;----------------------------------------------------------------------------------------------------------------------------------

Function ForcePose(string Type = "none")		;#forcepose		;#pose					
Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start")				
				
	;SURRENDER					
	if Type == "surrender"																	
	Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (surrender)")			
		
		;HUMAN SURRENDER
		if !cfgqst.CivilRapeRunning && ((cfgqst.DefeatTypeGeneral == "AreHumans") || (cfgqst.DefeatTypeGeneral == "AreHumanoids"))				
			int surrpose = Utility.RandomInt(1,6)
			;int surrpose = 5
			while ForcePosing_1
				if surrpose == 1
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_01)
				elseif surrpose == 2
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_02)
				elseif surrpose == 3
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_03)	
				elseif surrpose == 4
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_04)
				elseif surrpose == 5
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_05)
				elseif surrpose == 6
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_06)
				endif
			;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender[surrpose])
			Utility.Wait(0.5)
			endwhile
		;PUBLIC PUNISH SURRENDER	
		elseif cfgqst.CivilRapeRunning
		Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (surrender): cfgqst.CivilRapeRunning")
			int surrpose = Utility.RandomInt(1,3)
			;int surrpose = 5
			while ForcePosing_1
				if surrpose == 1
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_01)
				elseif surrpose == 2
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_02)
				elseif surrpose == 3
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_03)
				endif
			Utility.Wait(0.5)
			endwhile
		;ANIMAL SURRENDER 	
		;elseif cfgqst.DefeatTypeAnimals 		
		else
			Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (surrender): else")
			int surrpose = Utility.RandomInt(0,2)
			while ForcePosing_1
			cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[surrpose])
			Utility.Wait(0.5)
			endwhile	
		endif	
	
	;WIGGLE
	elseif Type == "wiggle"															
	Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle)")
		
		;PILLORY
		if (cfgqst.DefeatTypeScenario == "Pillory")
			if Utility.RandomInt(1,100) > 50	
					int surrpose = Utility.RandomInt(0,11)
					Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle pillory): "+surrpose)
					while ForcePosing_2
					cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[surrpose])		;array lenght 20
					Utility.Wait(1.0)
					endwhile	
				else							
					int surrpose = Utility.RandomInt(0,16)
					Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle pillory struggle): "+surrpose)					
					while ForcePosing_2
					cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPilloryStruggle[surrpose])	;array lenght 10
					Utility.Wait(1.0)
					endwhile	
				endif
		
		;YOKE
		elseif (cfgqst.DefeatTypeScenario == "Yoke")
			if Utility.RandomInt(1,100) > 50									
					
				int surrpose = Utility.RandomInt(0,14)
				Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle yoke): "+surrpose)
				while ForcePosing_2
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatYoke[surrpose])			;array lenght 15
				Utility.Wait(1.0)
				endwhile
			else								
				int surrpose = Utility.RandomInt(0,16)
				Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle yokestruggle): "+surrpose)
				;NAKED DEFEAT: ForcePose Start (wiggle yokestruggle)3 ->>> check if this one works
				;NAKED DEFEAT: ForcePose Start (wiggle yokestruggle)6
				;NAKED DEFEAT: ForcePose Start (wiggle yokestruggle)13
				;NAKED DEFEAT: ForcePose Start (wiggle yokestruggle)8
				while ForcePosing_2
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatYokeStruggle[surrpose])	;array lenght 17
				Utility.Wait(1.0)
				endwhile
			endif
		
		;CUFFS											;when defeatbinds equiped
		elseif (cfgqst.DefeatTypeScenario == "Cuffs") || IdlesCuffs || (cfgqst.DefeatTypeScenario == "Bound")   							
				if Utility.RandomInt(1,100) > 50	
					int surrpose = Utility.RandomInt(0,19)
					Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle cuffs): "+surrpose)
					while ForcePosing_2
					cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[surrpose])		;array lenght 20
					Utility.Wait(1.0)
					endwhile	
				else							
					int surrpose = Utility.RandomInt(0,9)
					Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle cuffsstruggle): "+surrpose)					
					while ForcePosing_2
					cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[surrpose])	;array lenght 10
					Utility.Wait(1.0)
					endwhile	
				endif	
		
		;UNBOUND (Standardidles)					
		else 
			int surrpose = Utility.RandomInt(0,16)
			Debug.Trace("NAKED DEFEAT rapequest: ForcePose Start (wiggle unbound): "+surrpose)					
			while ForcePosing_2
			cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[surrpose])	;array lenght 17
			Utility.Wait(1.0)
			endwhile
		endif
		
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------------------

String Function GroupComposition() ;#tags		;test this more

int femalecount = 0
bool TreatFemalesAsMales = false

;this makes the function treat females as males if triggered
if (Utility.RandomInt(1, 100) <= cfgqst.FemalesAsMales) || (cfgqst.DefeatTypeScenario == "Rodeo") || (cfgqst.DefeatTypeScenario == "Cuffs") || (cfgqst.DefeatTypeScenario == "Yoke") || (cfgqst.DefeatTypeScenario == "Pillory")
TreatFemalesAsMales = true
endif

if AggressorCount == 1			;2P
	
	if !TreatFemalesAsMales
		if Sexlab.GetGender(Aggressors[0]) == 1
		femalecount +=1
		endif
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

Function BathingRemoveBlood()			;#empty

		Debug.trace("NAKED DEFEAT rapequest start empty armor")
	;	cfgqst.PlayerRef.AddItem(EmptyArmor[0], 1, true)			
	;	cfgqst.PlayerRef.EquipItem(EmptyArmor[0], false, true)
	;	cfgqst.PlayerRef.RemoveItem(EmptyArmor[0], 1, true, None)
		
		cfgqst.PlayerRef.AddItem(EmptyArmor[1], 1, true)			
		cfgqst.PlayerRef.EquipItem(EmptyArmor[1], false, true)
		cfgqst.PlayerRef.RemoveItem(EmptyArmor[1], 1, true, None)
		
		cfgqst.PlayerRef.AddItem(EmptyArmor[2], 1, true)			
		cfgqst.PlayerRef.EquipItem(EmptyArmor[2], false, true)
		cfgqst.PlayerRef.RemoveItem(EmptyArmor[2], 1, true, None)
		
		cfgqst.PlayerRef.AddItem(EmptyArmor[3], 1, true)			
		cfgqst.PlayerRef.EquipItem(EmptyArmor[3], false, true)
		cfgqst.PlayerRef.RemoveItem(EmptyArmor[3], 1, true, None)
		
		Debug.trace("NAKED DEFEAT rapequest finish empty armor")
		
EndFunction

;/
Function ForcePoseLoop

/;

;----------------------------------------------------------------------------------------------------------------------

ObjectReference Floor = none
ObjectReference Floor02 = none
ObjectReference Floor03 = none

bool floorplaced = false

Function PlaceFloor(string Type = "none")		;#floorfunction

	if (type == "setup") && AllowPlaceFloor && !floorplaced
	floorplaced = true
	
		if Utility.RandomInt(1,2) == 1
		Floor = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor)
		Floor.SetAngle(0.0, 0.0, 90.0)
		
		Floor02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor02)
		Floor02.SetAngle(0.0, 0.0, 0.0)
		else
		Floor03 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor03)
		Floor03.SetAngle(0.0, 0.0, 0.0)
		endif
		
	elseif (type == "remove") && floorplaced
		
		if Floor
		Floor.DisableNoWait()
		Floor.Delete()
		
		Floor02.DisableNoWait()
		Floor02.Delete()
		floorplaced = false
		elseif Floor03
		Floor03.DisableNoWait()
		Floor03.Delete()
		endif
		
	endif
	
EndFunction


;----------------------------------------------------------------------------------------------------------------------
;/
Function SpawnFloor()		

if cfgqst.DefeatQuestRunning && !cfgqst.RapeAgain ;-> only in Defeat not in PublicRape and NOT when RapeAgain (or it would spawn twice)
	
		Floor = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor)
		Floor.SetAngle(0.0, 0.0, 90.0)
		
		 Floor02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.TestFloor02)
		Floor02.SetAngle(0.0, 0.0, 0.0)
		
		while ForcePosing_2 
			if RemoveFloor
			
			Floor.DisableNoWait()
			Floor.Delete()
			
			Floor02.DisableNoWait()
			Floor02.Delete()
			endif
		endwhile
				
		if !RemoveFloor		
			While cfgqst.DefeatQuestRunning
			Utility.Wait(5.0)
			EndWhile
		elseif RemoveFloor
		RemoveFloor = false
		blocked = false
		endif
		
		Floor.DisableNoWait()
		Floor.Delete()
		
		Floor02.DisableNoWait()
		Floor02.Delete()

endif
		
	
EndFunction
/;

;bool VehicleRunning = false

;----------------------------------------------------------------------------------------------------------------------

ObjectReference vehicle = none

Function Vehicle(string Type = "none")		;#vehiclefunction

	if Type == "setup"
	Debug.trace("NAKED DEFEAT rapequest: Vehicle (setup)")
	vehicle = Alias_Vehicle.GetReference() 
	vehicle.SetAngle(0.0, 0.0, 90.0)
	vehicle.MoveTo(cfgqst.PlayerRef)

		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(vehicle)					
		endif	
	
	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT rapequest: Vehicle (restored)")
		cfgqst.PlayerRef.MoveTo(vehicle)								
		
		float cZ = 0.0
		float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
		While(cZ != cfgqst.PlayerRef.Z) && (second < 2.0)
		cZ = cfgqst.PlayerRef.Z
		Utility.Wait(0.1)
		second += 0.1
		EndWhile
	
		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(vehicle)					
		;Debug.trace("NAKED DEFEAT rapequest: Set Vehicle AfterSexA (ON)")
		endif
	
	elseif Type == "remove"
		
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)			
		Debug.trace("NAKED DEFEAT rapequest: Vehicle (removed)")
		vehicle.DisableNoWait()
		vehicle.Delete()										
		Alias_Vehicle.Clear() 
	
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------
ObjectReference vehicle_foll_01 = none

Function Vehicle_Follower_01(string Type = "none")		;#Vehicle_Follower_01

	if Type == "setup"
	Debug.trace("NAKED DEFEAT rapequest: vehicle_foll_01 (setup)")
	vehicle_foll_01 = Alias_Vehicle_Follower_01.GetReference() 
	Victims[0].PlaceAtMe(vehicle_foll_01)
	vehicle_foll_01.MoveTo(cfgqst.PlayerRef, 160.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 160.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 125.0, abMatchRotation = false)
	vehicle_foll_01.SetAngle(0.0, 0.0, 270.0)
	
		;--- move to vehicle ---
		Victims[0].MoveTo(vehicle_foll_01)	
	;	Utility.Wait(2.0)
	;	Victims[0].SetLookAt(cfgqst.PlayerRef)
	;	Utility.Wait(2.0)
		Victims[0].SetVehicle(vehicle_foll_01)	
	;	float cZ = 0.0
	;	float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
	;	While(cZ != Victims[0].Z) && (second < 2.0)
	;	cZ = Victims[0].Z
	;;	Utility.Wait(0.1)
	;	second += 0.1
	;	EndWhile
		;-----------------------
	
	;vehicle_foll_01.MoveTo(Victims[0])
		
	;V				
	
	elseif Type == "restore"
	
		Debug.trace("NAKED DEFEAT rapequest: vehicle_foll_01 (restored)")
		;--- move to vehicle ---
		Victims[0].MoveTo(vehicle_foll_01)	
		Victims[0].EvaluatePackage()
	;	Victims[0].SetLookAt(cfgqst.PlayerRef)	
	;	Utility.Wait(2.0)
		Victims[0].SetVehicle(vehicle_foll_01)	
	;	float cZ = 0.0
	;	float second = 0.0 ;----> to prevent a delay of the pose for more than a second	
	;	While(cZ != Victims[0].Z) && (second < 2.0)
	;	cZ = Victims[0].Z
	;	Utility.Wait(0.1)
	;	second += 0.1
	;	EndWhile
		;-----------------------
	
		;Victims[0].SetVehicle(vehicle_foll_01)					

	
	elseif Type == "remove"
		
		Victims[0].SetVehicle(Victims[0])			
		Debug.trace("NAKED DEFEAT rapequest: vehicle_foll_01 (removed)")
		vehicle_foll_01.DisableNoWait()
		vehicle_foll_01.Delete()										
		Alias_Vehicle_Follower_01.Clear() 
	
	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

;/
Function SpawnVehicle()	;#spawn #vehicle

Debug.trace("NAKED DEFEAT rapequest: SpawnVehicle()")

;bool SetVehicleAgain = false

;vehicle always spawns except when rape again (we already have it)
if (cfgqst.DefeatQuestRunning && !cfgqst.RapeAgain) || (cfgqst.CivilRapeRunning && !cfgqst.RapeAgain)
	
		;create vehicle at player (should already spawn at the player location but not entirly sure
		;it spawns supposedly when the quest starts, so PC location might not be final 
		
		vehicle = Alias_Vehicle.GetReference() ;moved outside of functions
		
		;move it to the player just to be sure
		vehicle.MoveTo(cfgqst.PlayerRef)						;VEHICLE EXPLORATION
	
		;set vehicle to player first time		

		
		;loop until vehicle no longer needed (end of rapequest currently)
		VehicleRunning = true	
		While VehicleRunning
		
			;loop interrupted at the end of sex scenes 	
			if cfgqst.SexFinished ; || RemoveFloor
		;	SetVehicleAgain = true
				;check distance from vehicle
				;if cfgqst.PlayerRef.GetDistance(vehicle)>1

					
				;endif
			endif
			
			;wait for SexFinish to end (this loop should run until Function OnSexFinish is done)
			while cfgqst.SexFinished
			Utility.Wait(1.0)
					if !cfgqst.VRfix
					cfgqst.PlayerRef.SetVehicle(vehicle)					
					Debug.trace("NAKED DEFEAT rapequest: Force Vehicle AfterSex (ON)")
					endif
			endwhile
			
			;capturequest sets "InFurniture" true and sets vehicle back to player
			;then loop until no longer in furniture?
			if cfgqst.InFurniture
			Debug.trace("NAKED DEFEAT rapequest: cfgqst.InFurniture start LOOP")
				while cfgqst.InFurniture
				Debug.trace("NAKED DEFEAT rapequest: cfgqst.InFurniture LOOP LOOP")
				Utility.Wait(2.0)
				endwhile		
				Debug.trace("NAKED DEFEAT rapequest: cfgqst.InFurniture out of Furniture")
				;set vehicle after release from furniture
				cfgqst.PlayerRef.MoveTo(vehicle)						;VEHICLE CHECK		
				float cZ = 0.0
				float second = 0.0 ;----> to prevent a delay of the pose for more than a second
				While(cZ != cfgqst.PlayerRef.Z) && (second < 2.0)
				cZ = cfgqst.PlayerRef.Z
				Utility.Wait(0.1)
				second += 0.1
				EndWhile
			
				;set vehicle to player after sex
				if !cfgqst.VRfix
				cfgqst.PlayerRef.SetVehicle(vehicle)					
				Debug.trace("NAKED DEFEAT rapequest: Set Vehicle AfterSexA (ON)")
				endif
			endif
				
		Utility.Wait(1.0)
		
		EndWhile
		
		;unset vehicle and clean up (only at the end of quest)
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
				
		Debug.trace("NAKED DEFEAT rapequest: Vehicle (OFF)")
		vehicle.DisableNoWait()
		vehicle.Delete()										;VEHICLE EXPLORATION
		Alias_Vehicle.Clear() 								;VEHICLE EXPLORATION


endif
		
EndFunction

/;

;/
		ObjectReference vehicle = Alias_Vehicle.GetReference()	;VEHICLE EXPLORATION	;pre-Pose attach
		
			;if cfgqst.PlayerRef.GetDistance(vehicle)>100
			cfgqst.PlayerRef.MoveTo(vehicle)						;VEHICLE CHECK		
			float cZ = 0.0
			float second = 0.0 ;----> to prevent a delay of the pose for more than a second
			While(cZ != cfgqst.PlayerRef.Z) && (second < 2.0)
			cZ = cfgqst.PlayerRef.Z
			Utility.Wait(0.1)
			second += 0.1
			EndWhile
			;vehicle.MoveTo(cfgqst.PlayerRef)
			;endif
			
	if !cfgqst.VRfix
	Debug.trace("NAKED DEFEAT rapequest: Vehicle ATTACHED (pre pose)")
	cfgqst.PlayerRef.SetVehicle(vehicle)	;#vehicle ;pre-Pose attach
	endif
				
				/;
				
				
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

Bool Function AllowActor(actor akActor, int Type)		;is run in SortActors (quite early)		;#allow

Actor a = akActor as Actor
string RaceKey = GetRaceKey(a)

;/
if cfgqst.ShowDebugMessages
Debug.Trace("NAKED DEFEAT rapequest: AllowActor: " +cfgqst.GetActorInfo(a))
Debug.Trace("NAKED DEFEAT rapequest: AllowActor: RaceKey: " +RaceKey)
else
Debug.Trace("NAKED DEFEAT rapequest: AllowActor: " +a.GetBaseObject().GetName())
Debug.Trace("NAKED DEFEAT rapequest: AllowActor: RaceKey: " +RaceKey)
endIf
/;

if Sexlab.IsValidActor(a)

	;HUMANS
	if Type == 1 
	
		if (a == Victims[0]) || (a == Victims[1]) || (a == Victims[2]) || (a == Victims[3]) ;|| (a == Victims[4])
		return false
		endif
	
;	if cfgqst.ShowDebugmessages
		if RaceKey
		Debug.Notification("NAKED DEFEAT: #ERROR Actor invalid (ask for support): has racekey: "+RaceKey)
		Debug.Trace("NAKED DEFEAT rapequest: #ERROR Actor invalid (ask for support): has racekey: "+RaceKey)
		return false
		endif
		
		;rules out Followers (not allowed as rapers) -> solve special scenarios differently -> follower rapes PC and vice versa #todo
		if (cfgqst.FollowerCount > 0) && IsFollower(a)
		return false
		endif

		if (cfgqst.DefeatTypeGeneral == "AreHumans") || cfgqst.DefeatType == ("Humans") || cfgqst.DefeatType == ("Funny")
		Debug.Trace("NAKED DEFEAT rapequest: Human Actor allowed (Humans or Funny)")
		;	if RaceKey == ("Humans")		
				;check for argonians & kajiits and sort out if necessary
				if cfgqst.IsBeastRace(a) && !cfgqst.AllowArgonKajit
				return false
				else
				return true
				endif
		;	else
		;	return false
		;	endif
		elseif cfgqst.DefeatType == ("Undead")
		Debug.Trace("NAKED DEFEAT rapequest: Human Actor allowed (Undead)")
		;	if RaceKey == ("Humans")		;need to check for vampire/necromancer, how? #todo
				;check for argonians & kajiits and sort out if necessary
			if cfgqst.IsVampire(a) || cfgqst.IsNecromancer(a)		
				if cfgqst.IsBeastRace(a) && !cfgqst.AllowArgonKajit
				return false
				else
				return true
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

		;checks if Creature is from Mod Demonic Creatures and always allows them (for now)
		if cfgqst.ModDEM && a.HasKeyword(DemonicCreature)
		Debug.Notification("NAKED DEFEAT: Demonic Creature Found: "+RaceKey)
		Debug.Trace("NAKED DEFEAT rapequest: #Demonic Creature Found: "+RaceKey)
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
			Debug.trace("NAKED DEFEAT rapequest: #NOTE: No last Attacker identified: All the creaturs fuck you now!")
			endif
		ShortDefeat = true
		return true

		elseif (cfgqst.DefeatType == "funny") 
			if !note
			note = true
			Debug.Notification("#NOTE: No last Attacker identified: You are fucked by everybody!")
			Debug.trace("NAKED DEFEAT rapequest: #NOTE: no enemy identified, you are fucked by everybody now!")
			endif
		ShortDefeat = true
		return true
		
		else
			Debug.Notification("#ERROR: No DefeatType!")
			Debug.trace("NAKED DEFEAT rapequest: #ERROR: No DefeatType!")
		endif
	endif	
endif	
		;#TODO ASHHOPPERS DEFEAT?

;else ;CreaturesNotAllowed
;return false 	
;endif	
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------



Function ResetBools()

	cfgqst.ResetBools()
	
	IsGuardEndDefeat = false
	OnlyAnimals = false
		
	ShortDefeat = false
	
	IdlesCuffs = false
	IdlesUnbound = false
	OutcomeRescued = false

	
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------	
	
Function StartRapeSequence(Int Round = 0)

	RapersAinUSE = false
	RapersBinUSE = false
	RapersCinUSE = false
	CreaturesAinUSE = false
	CreaturesBinUSE = false
	CreaturesCinUSE = false	

	;PLAYER
	SelectAggressor(Round, 0)					
	
	if (cfgqst.DefeatType == "Masturbation")
	StartMasturbation()
	else
	StartRape(Aggressors[0])
	endif
		
	;Utility.Wait(3)		
	
	;wait till sex scene started 
	while !SexSceneStarted
	Utility.Wait(1)
	endwhile
	
	SexSceneStarted = false
						
	;FOLLOWERS
	if Victimcount > 0
	
		;FOLLOWER 01 - Victims[0]
		;female 		
		if (SexLab.GetGender(Victims[0]) == 1) && cfgqst.FemaleFollower  
		SelectAggressor(Round, 1)							
		folidle01.IdleVictims0(0, "none")	
		StartRapeFollower01(Aggressors[0])
		;male
		elseif (SexLab.GetGender(Victims[0]) == 0) && cfgqst.MaleFollower  
		SelectAggressor(Round, 1)						
		folidle01.IdleVictims0(0, "none")
		StartRapeFollower01(Aggressors[0])
		endif
		
	;	Utility.Wait(3.0)
		
		;FOLLOWER 02 - Victims[1]
		;female 	
		if (SexLab.GetGender(Victims[1]) == 1) && cfgqst.FemaleFollower  	
		SelectAggressor(Round, 1)						
		folidle01.IdleVictims1(0, "none")
		StartRapeFollower02(Aggressors[0])
		;male
		elseif (SexLab.GetGender(Victims[1]) == 0) && cfgqst.MaleFollower  
		SelectAggressor(Round, 1)						
		folidle01.IdleVictims1(0, "none")
		StartRapeFollower02(Aggressors[0])
		endif
		
		;here be Follower 03
		;all other followers get sex or just bound?
	endif	


EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------

Function StripFollower(int number = 0)				;#strip	;#slots
				Utility.Wait(1.0)
				Victims[number].UnequipItemSlot(30)	;head // which one is the damned helmet?
				Victims[number].UnequipItemSlot(31)	;hair
				Victims[number].UnequipItemSlot(39)	;shield
				Victims[number].UnequipItemSlot(37)	;boots
				Victims[number].UnequipItemSlot(33)	;gauntlets
				Victims[number].UnequipItemSlot(32)	;body 	
				Victims[number].UnequipItemSlot(52)	;bikini bottom/panties (also fuckbelt, care for later use)
				if Victims[number].GetEquippedWeapon()
				Victims[number].UnequipItem(Victims[number].GetEquippedWeapon())
				endif
				if Victims[number].GetEquippedWeapon(true)
				Victims[number].UnequipItem(Victims[number].GetEquippedWeapon(true))
				endif
EndFunction

;-----------------------------------------------------------------------------------------------------------------------------------------

Function SceneForcedBathing()

			Peeing = true			
			SexLab.StripActor(cfgqst.PlayerRef, none, false, false) ;actor // victim // playstripanim // LeadInStrip		;strip here because Pee is not victim anim and therefor will redress (sigh)
			SelectPeeGuys()
			;end surrender pose
			ForcePosing_1 = false	
			if AggressorCount > 0
				StartPee(Aggressors[0])			
			;	PeeInterrupt = true
			;	RegisterForSingleUpdate(20.0)
			;	BathingRemoveBlood()	<--- not required anymore
				Utility.Wait(7.0)
				SendWashPlayerEvent()
				
				cfgqst.PlaySoundPeeLong()
				cfgqst.PlayerRef.RemoveFromFaction(SexLabForbiddenActors)	;still needed???
				
				Utility.Wait(2.0)
				;#empty

					while Peeing
					Utility.Wait(2.0)	
					EndWhile						
			else
			OnPeeFinished("", "", 0, None)
			endif
EndFunction


int RoundCounter

Function Startrapequest(int Rounds)

RoundCounter = Rounds

Debug.Trace("NAKED DEFEAT rapequest: Startrapequest()")

	Start()
;	SetStage(20)
	
EndFunction
