Scriptname nade_storage_qf_scr Extends Quest Hidden

;############################################################################################################################################################################################################
;############### 	PROPERTIES 	#############################################################################################################################################################################################
;############################################################################################################################################################################################################

nade_configquest_scr Property cfgqst Auto
nade_calmquest_qf_scr Property calmqst Auto
nade_slavery_qf_scr Property slaveqst Auto	
nade_WhipQuest_00 Property whip00qst Auto
nade_playeralias_scr Property playscr Auto
;nade_playeralias_scr Property playscr Auto <<<- from configquest ??!!

nade_defeatquest_qf_scr Property defqst Auto

nade_dropquest_qf_scr Property dropqst Auto

Quest Property WhippingQuest_00 Auto


Formlist Property EnemyList Auto
Formlist Property NadeMarkerList Auto

;############### #BOOLS	 #################

Bool Property DynamicWhipping Auto

Bool Property SummonedHorses Auto

Bool Property StorageQuestRunning Auto
Bool Property WhippingQuest_00_Running Auto
Bool Property AllegianceQuestRunning Auto

Bool Property NakedRunning Auto
Bool Property NakedTripping Auto
Bool Property BodyFluids Auto 
Bool Property BodyShaders Auto 
Bool Property ImmersiveRobbery Auto
Bool Property RobQuestItems Auto

Bool Property InCity Auto			;The Area of a City (inside and outside its walls)
Bool Property InDungeon Auto		;The INDOOR section of a dungeon area. NOT Outdoor parts(?)
Bool Property InWilderness Auto		;Everything else basically
Bool Property InVillage Auto		;The Area of a village Location (outdoors and indoors)

Bool Property IsPoseScenario Auto

Bool Property IsBlockedAttack Auto
Bool Property PreventRagdoll Auto
Bool Property BlockPosing Auto
Bool Property PlayerSoundRunning Auto
Bool Property DarkNight Auto
Bool Property SlaveAtWork Auto

Bool Property LocalSlavery Auto
Bool Property AllowCityEscape Auto
Bool Property AllowVanillaSleep Auto

Bool Property SceneProtectorsPlaced Auto

Bool Property NymCombat Auto
 
Bool Property Sucking Auto

Bool Property Bathing Auto

Bool Property NymActionLog Auto

Bool Property ModSlaveTat Auto

Bool Property ProximityQuestRunning Auto
Bool Property LootWeapons Auto

Bool Property Resting Auto
Bool Property Riding Auto

Bool Property NymDarkWorld Auto
Bool Property AcheronBleedoutFix Auto

Bool Property HeelsHeightActive Auto

Bool Property NeedaWhipper Auto

Bool Property BodyShaderMSGOnce Auto

Bool Property ModAcheron Auto 
Bool Property ModFishing Auto 
Bool Property ModSS Auto 

Bool Property WantWhipping Auto 

Bool Property WhipperFound Auto


;###############	 INTS	 ################# #ints


int Property AssistedTravelTime Auto
int Property UseTongues Auto
int Property DD_LockStatus Auto
int Property DirtTattoos Auto
int Property Missbehaviors Auto
int Property HairDryTimer Auto
int Property Defeat_ID Auto
int Property ForceOpen Auto
int Property WhippingDuration Auto
int Property DefeatKillPlayerMode Auto
int Property Parried Auto
int Property SlavePunishmentLevel Auto
int Property SlaveWantsToRest Auto
int Property CurrentMood Auto
int Property ProxMasterDetected Auto

int Property Uneasy Auto

int Property SexFuckingSound Auto
int Property SexFuckingPartners Auto

int Property TIMER_Health Auto
int Property TIMER_Stamina Auto
int Property TIMER_NakedCurse Auto

int Property STRENGHT_Health Auto
int Property STRENGHT_Stamina Auto

int Property Toxication Auto

int Property Survival_Morale Auto
int Property Survival_Hunger Auto
int Property Survival_Thirst Auto

int Property WhipHitCount Auto
int Property FastTravelStatus Auto
int Property BlackFadeLocked Auto

int Property SexSceneStage Auto

;int Property MoveWhipperMode Auto

;bools
int Property NakedRunning_OID_B Auto
int Property NakedTripping_OID_B Auto
int Property AllowCityEscape_OID_B Auto
int Property BodyFluids_OID_B Auto 
int Property BodyShaders_OID_B Auto 
int Property LocalSlavery_OID_B Auto
int Property NymCombat_OID_B Auto
int Property ImmersiveRobbery_OID_B Auto
int Property RobQuestItems_OID_B Auto
int Property LootWeapons_OID_B Auto
int Property NymDarkWorld_OID_B Auto
int Property AcheronBleedoutFix_OID_B Auto
int Property AllowVanillaSleep_OID_B Auto

int Property DynamicWhipping_OID_B Auto

;keys
int Property RequestKey_OID_K Auto
int Property SubmitKey_OID_K Auto

;sliders
int Property NakedRunningSpeed_OID_S Auto
int Property PriceOfFreedomMin_OID_S Auto
int Property PriceOfFreedomMax_OID_S Auto
int Property TaskValue_OID_S Auto
int Property SS_LocalSlaveryWeight_OID_S Auto
int Property SS_SessionSlaveryWeight_OID_S Auto
int Property OnlyBreathing_OID_S Auto
int Property MouthOpenMax_OID_S Auto
int Property LootWeaponChance_OID_S Auto
int Property NakedTravelCost_OID_S Auto
int Property MoanOnWhipCooldown_OID_S Auto

int Property SexTimerSlave_OID_S Auto
int Property SexTimerDefeat_OID_S Auto

;modes
int Property StripWeaponOptions_OID_M Auto

int Property Exhaustion Auto
int Property IsLocalSlave Auto
int Property IsFleeingSlave Auto
int Property RequestKey Auto
int Property SubmitKey Auto
int Property FastSex Auto
int Property CurrentHairNum Auto

int Property MCM_DisablePublicPunishment Auto
int Property MCM_DisableCombatStripping Auto
int Property MCM_DisableLocalSlavery Auto
int Property MCM_DisableTattoos Auto

int Property Sound_InstanceID_Heartbeat Auto
int Property Sound_InstanceID_SoundEffect Auto
int Property NymTestInt Auto 

int Property GracePeriodSlave Auto
int Property WhippersAvailable Auto

int Property StripWeaponOptions Auto Conditional ;as Int in ESP

int Property OverrideStripMode Auto

int Property WaitTimeTest Auto


;###############	 FLOATS		 #################
float Property NakedRunningSpeed Auto
float Property PriceOfFreedomMin Auto
float Property PriceOfFreedomMax Auto
float Property TaskValue Auto
float Property SS_LocalSlaveryWeight Auto
float Property SS_SessionSlaveryWeight Auto
float Property SpeedReduction Auto
float Property GlobalSpawnHeight Auto
float Property Sound_Heartbeat_Volume Auto
float Property OnlyBreathing Auto
float Property MouthOpenMax Auto
float Property LootWeaponChance Auto
float Property NakedTravelCost Auto
float Property SexTimerSlave Auto
float Property SexTimerDefeat Auto
float Property MoanOnWhipCooldown Auto

;###############	 STRING		 #################

String Property PlayerSoundToPlay Auto 
String Property CurrentLocationName Auto 
String Property CurrentLocName Auto 
String Property CurrentLocType Auto 
String Property QuestToStart Auto
String Property CurrentSlaveryLocationName Auto
String Property CurrentHairName Auto
String Property TargetActorProfession Auto

string[] Property StripWeaponOptionsList Auto ;NOT IN ESP

;String Property weapon_JSON_08_name Auto

;###############	 MISC	 #################

; --- Factions --- ;
Faction Property LocalSlaveFaction Auto
Faction Property BowingFaction Auto
Faction Property SexlabValidatedFaction Auto
Faction Property NakedRaperFaction Auto
Faction Property NakedOriginalFaction Auto
Faction Property NakedMolesterFaction Auto
Faction Property NakedPeeGuysFaction Auto

; --- Furnitures --- ;
Furniture Property SlaveWorkbench Auto		;no longer required
Furniture Property SlaveGrindStone Auto		;no longer required
Furniture Property SlaveCookingPot Auto		;no longer required
Furniture Property SmallPot Auto			;no longer required	
Furniture Property SpitPot Auto				;no longer required
Furniture Property TanningRack Auto			;no longer required
Furniture Property Station_Workbench Auto 	;vanilla Workbench
Furniture Property Station_Smelter Auto 	;vanilla Smelter
Furniture Property Station_TanningRack Auto ;vanilla TanningRack
Furniture Property Station_Grindstone Auto 	;vanilla Grindstone  
Furniture Property Station_Anvil Auto 		;vanilla Anvil 
Furniture Property Station_ChoppingBlock Auto 		;vanilla Wood Chopping

;cooking pot?

Formlist Property SlaveryLocations Auto
Formlist Property LootExcludedWeapons Auto

Formlist Property Warmlist Auto
Formlist Property ComfortMinimalList Auto
Formlist Property ComfortMediumList Auto
Formlist Property ComfortMaximumList Auto

Keyword Property KWD_DemonicCreature Auto

Keyword []Property KWD_LocationHostileTypes Auto	

;0 Animal Den
;1 Bandit Camp
;2 Warlock Lair 
;3 Vampire Lair
;4 Dragon Lair
;5 Dragon Priest Lair 
;6 Draugr Crypt
;7 DwarvenAutomatons
;8 Hagraven Nest 
;9 Falmer Hive 
;10 Spriggan Grove 
;11 Forsworn Camp
;12 Giant Camp 
;13 Werebear Lair
;14 Werewolf Lair 


ObjectReference Property Vehicle_Player Auto
Static Property XMarkerHeading Auto
Static Property XMarkerHeading_Naked Auto
Static Property XMarkerHeading_Area Auto



ObjectReference []Property AreaScanXMarkers Auto
ObjectReference []Property WatcherXMarkers Auto
MiscObject[] Property GarbageItems Auto

ObjectReference []Property RaperBags Auto
Container Property RaperBagItem Auto

MiscObject Property IronOre Auto
MiscObject Property QuickSilverOre Auto
MiscObject Property IronIngot Auto

Actor [] Property ActorEnemyLastHitter Auto ;Lenght 8

Actor[] Property EnemyActors Auto

Actor[] Property Horse Auto

Sound Property SOUND_RitualStart Auto
Sound Property SOUND_PerfectBlock Auto

Sound Property SOUND_Wiggle_Loosen Auto
Sound Property SOUND_Wiggle_Tighten Auto

Sound[] Property SoundSexMonster Auto ;[0-7] (8 sounds)

Message Property MSG_CurfewBegins Auto
Message Property MSG_CurfewEnds Auto
Message Property MSG_DefeatStart Auto
Message Property MSG_DefeatEnd Auto
Message Property MSG_SlaverySold Auto
Message Property MSG_AfterLifeStart Auto

Message Property MSG_SexSlaveDutiesStart Auto
Message Property MSG_FreeToGo Auto

Message Property MSG_TutorialEmptyMSG Auto

Spell Property SPELL_Exhaustion_Increase Auto
Spell Property SPELL_Exhaustion_Decrease Auto

Spell Property SPELL_Escape_Loosen Auto
Spell Property SPELL_Escape_Tighten Auto



;/
Location Property SlaveryLocation00 Auto
Location Property SlaveryLocation01 Auto
Location Property SlaveryLocation02 Auto
Location Property SlaveryLocation03 Auto
Location Property SlaveryLocation04 Auto
Location Property SlaveryLocation05 Auto
Location Property SlaveryLocation06 Auto
Location Property SlaveryLocation07 Auto
Location Property SlaveryLocation08 Auto
Location Property SlaveryLocation10 Auto
/;

int Property TempWhipChance Auto

int Property SlaveGold_Riften Auto
int Property SlaveGold_Whiterun Auto
int Property SlaveGold_DawnStar Auto
int Property SlaveGold_Windhelm Auto
int Property SlaveGold_Falkreath Auto
int Property SlaveGold_Markarth Auto
int Property SlaveGold_Morthal Auto
int Property SlaveGold_Solitude Auto
int Property SlaveGold_Winterhold Auto


;############################################################################################################################################################################################################
;############### 	QUEST STAGES 	#############################################################################################################################################################################
;############################################################################################################################################################################################################

Function Fragment_0()					;############ STAGE 10 ############		#START	
		
		DebugTrace("stage 10 (START)")	
		StorageQuestRunning = true		
		SetStage(100)

EndFunction															

															
															
Function Fragment_4()				;############ STAGE 1000 ############		#END

	DebugTrace("stage 1000 (END)")
	StorageQuestRunning = false	
	Stop()

EndFunction

 
Function Fragment_7()						;############ STAGE 100 ############	 #ActivateRapeScan		;CalmQuest needs to SetStage 100 to restart scan after rape
DebugTrace("stage 100 (ACTIVE)")
EndFunction


;############################################################################################################################################################################################################
;#############	 FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################

Function StartStorageQuest()
	DebugTrace("StartStorageQuest()")
	RegisterForModEvents_Storage()
	Start()
	
EndFunction 


Function EndStorageQuest()
	DebugTrace("EndStorageQuest()")
	UnregisterForModEvents_Storage()
	Stop()
	
EndFunction 


Function ForceCloseMenu(String MenuToClose)
NymTrace("ForceCloseMenu("+MenuToClose+")")

	UI.InvokeString("HUD Menu", "_global.skse.CloseMenu", MenuToClose)

EndFunction

Function DebugAndCleanMarkers()

	NymTrace("DebugAndCleanMarkers()")
	Bool returnvalue = false 
	int i
	int j = 0
	;--- Mushrooms ---;
	ObjectReference[] MarkerArray  = PO3_SKSEFunctions.FindAllReferencesOfType(cfgqst.PlayerRef, NadeMarkerList, 50000)
	
	i = MarkerArray.Length 
	while i > 0
		i -= 1
		j += 1
		MarkerArray[i].DisableNoWait()
		MarkerArray[i].Delete()
		
	endwhile
	NymBox("Markers Deleted: "+j)
	

EndFunction

Function NakedExperience(int iMode)

	if Nym()

		Float XP_Required = GetExperienceRemaining()
		Float XP_Current = Game.GetPlayerExperience()
		Float XP_TotalforLvL = XP_Required + XP_Current
		Float XP_Gained = 0
		int LVL_Current = cfgqst.PlayerRef.GetLevel()
		
		
		if IsLocalSlave()
		XP_Gained = XP_TotalforLvL*0.1
		elseif LVL_Current < 10
		XP_Gained = XP_TotalforLvL*0.5
		elseif LVL_Current < 30
		XP_Gained = XP_TotalforLvL*0.3
		elseif LVL_Current < 50
		XP_Gained = XP_TotalforLvL*0.2
		else 
		XP_Gained = XP_TotalforLvL*0.1
		endif 
		
		NymTrace("NakedExperience(XP_TotalforLVL: "+XP_TotalforLvL+" // XP_Gained: "+XP_Gained+")")
		
		Game.SetPlayerExperience(XP_Current + XP_Gained)
	endif 

EndFunction 

Float Function GetExperienceRemaining()
    ; returns the amount of experience remaining for the current level.
	Float XP = Game.GetPlayerExperience()
	NymTrace("Game.GetPlayerExperience("+XP+")")
	
    Return Game.GetExperienceForLevel(cfgqst.PlayerRef.GetLevel()) - XP
EndFunction


Function Toggle_PC_HeadTracking()
    if Nym()
        spell PC_TrackingSpell = (game.GetFormFromFile(16785409, "PC Head Tracking - MCM.esp") as spell)
        if PC_TrackingSpell && !cfgqst.PlayerRef.HasSpell(PC_TrackingSpell)
            NymTrace("Toggle_PC_HeadTracking(ON)")
            cfgqst.PlayerRef.AddSpell(PC_TrackingSpell, false)
        else
            NymTrace("Toggle_PC_HeadTracking(OFF)")
            if PC_TrackingSpell && cfgqst.PlayerRef.HasSpell(PC_TrackingSpell)
                cfgqst.PlayerRef.RemoveSpell(PC_TrackingSpell)
            endif
        endif
    endif
EndFunction
	

Function RestoreAV(Actor akActor, String sAV, float fValue)

		float ActorMaxAV
		float ActorRestoreAV
		
		string ActorAVtoRestore = sAV 
		actor a = akActor
		
		;----- MORE HEAL EFFECT 
		ActorMaxAV = a.GetActorValueMax(ActorAVtoRestore)
		NymTrace("RestoreAV: ActorMaxAV:" +ActorMaxAV)
		

		ActorRestoreAV = ActorMaxAV*fValue		;Restore 50% health
		NymTrace("RestoreAV: ActorRestoreAV:" +ActorRestoreAV)
		
		a.RestoreActorValue("Health", ActorRestoreAV)


EndFunction 

Function SetCurrentLocationName()

	CurrentLocationName = defqst.GetCurrentLocationName()	
	NymTrace("GetCurrentLocationName("+CurrentLocationName+")")
	
EndFunction 

String Function GetCurrentLocationName()

	String LocationName = kCurrentLoc.GetName()
	
	if !LocationName
	LocationName = "Wilderness"
	endif 
	
	;NymTrace("GetCurrentLocationName("+LocationName+")")
	
	return LocationName

EndFunction 

Location kCurrentLoc

Function TrackLocation()

		kCurrentLoc = cfgqst.PlayerRef.GetCurrentLocation()
		
		String TempLocationName = GetCurrentLocationName()
		

		;SAME LOCATION 
		if CurrentLocationName == TempLocationName
		NymTrace("TrackLocation: We are still in "+CurrentLocationName)
		
			if InDungeon || InWilderness
			NymTrace("TrackLocation CurrentLocType:"+CurrentLocType+" Interior:"+cfgqst.PlayerRef.IsInInterior())
				
				if (CurrentLocType == "Dungeon") && !cfgqst.PlayerRef.IsInInterior()
				NymMessage("We entered the Dungeon Exterior of "+CurrentLocationName)
				CurrentLocType = "Dungeon Exterior"
				InDungeon = false 
				InWilderness = true 
				elseif (CurrentLocType == "Dungeon Exterior") && cfgqst.PlayerRef.IsInInterior()
				NymMessage("We entered the Dungeon of "+CurrentLocationName)
				CurrentLocType = "Dungeon Interior"
				InDungeon = true 
				InWilderness = false 
				endif 
				
			endif 
	
		;NEW LOCATION 
		else 	
	
		String LastLocationName = CurrentLocationName
		String TypeMessage
		CurrentLocationName = TempLocationName
			
			InCity = false
			InVillage = false 
			InDungeon = false 		
			InWilderness = false 
			
			if IsLocationCity()
			InCity = true
			CurrentLocType = "City"
			elseif IsLocationVillage()
			;("We entered a Settlement")
			InVillage = true
			CurrentLocType = "Settlement"		
			
			elseif cfgqst.PlayerRef.IsInInterior() && CurrentLocationHasKeyword(playscr.LocTypeDungeon)
			;NymMessage("We entered a Dungeon")
			CurrentLocType = "Dungeon"
			InDungeon = true 
			elseif CurrentLocationHasKeyword(playscr.LocTypeClearable) 
			;NymMessage("We entered a Dungeon Exterior")
			CurrentLocType = "Dungeon Exterior"
			InWilderness = true 
			else 
			;NymMessage("We entered the Wilderness")
			InWilderness = true 
			CurrentLocType = "Wild"
			endif 

			if CurrentLocationHasKeyword(playscr.LocTypePlayerHouse)
			NymMessage("We entered a Player House")
			CurrentLocType = "Player House"
			
			endif 
			NymMessage("Leaving "+LastLocationName)
			NymMessage("Entering "+CurrentLocationName+" ("+GetLocationRace()+" "+CurrentLocType+")")
			
		endif
		
		NymTrace("TrackLocation() CurrentLocType["+CurrentLocType+"] CurrentLocationName["+CurrentLocationName+"]")
		NymTrace("TrackLocation() InCity["+InCity+"] InVillage["+InVillage+"] InDungeon["+InDungeon+"] InWilderness["+InWilderness+"]")
		
EndFunction 

Bool Function CurrentLocationHasKeyword(Keyword akKeyword)

        if (kCurrentLoc == none)
                return false
        endif
 
        if kCurrentLoc.HasKeyword(akKeyword)
                return true
        else
                return false
        endif
		
EndFunction

Bool Function IsLocationCity()

	if CurrentLocationName == "Solitude"
	return true 
	elseif CurrentLocationName == "Whiterun"
	return true 	
	elseif CurrentLocationName == "Windhelm"
	return true 	
	elseif CurrentLocationName == "Markarth"
	return true 	
	elseif CurrentLocationName == "Riften"
	return true 	
	elseif CurrentLocationName == "Winterhold"
	return true 	
	elseif CurrentLocationName == "Dawnstar"
	return true 	
	elseif CurrentLocationName == "Morthal"
	return true 
	elseif CurrentLocationName == "Falkreath"
	return true 
	else 
	return false 
	endif 
EndFunction

Bool Function IsLocationVillage()
		
	;add the farms too (Corpslightfarm etc.?) especially those outside cities?	
		
	if CurrentLocationName == "Riverwood"
	return true 
	elseif CurrentLocationName == "Dragon Bridge"
	return true 	
	elseif CurrentLocationName == "Ivarstead"
	return true 	
	elseif CurrentLocationName == "Rorikstead"
	return true 	
	elseif CurrentLocationName == "Shor's Stone"
	return true 	
	elseif CurrentLocationName == "Karthwasten"
	return true 	
	elseif CurrentLocationName == "Skaal Village"
	return true 	
	elseif CurrentLocationName == "Goldenglow Estate"
	return true 
	elseif CurrentLocationName == "Darkwater Crossing"
	return true 
	elseif CurrentLocationName == "Half-Moon Mill"
	return true 
	elseif CurrentLocationName == "Stonehills"
	return true 	
	elseif CurrentLocationName == "Anga's Mill"
	return true 	
	elseif CurrentLocationName == "Dragon Bridge Lumber Camp"
	return true 	
	elseif CurrentLocationName == "Mixwater Mill"
	return true 	
	elseif CurrentLocationName == "Heartwood Mill"	
	return true 
	else 
	return false 
	endif 
EndFunction


String Function GetLocationRace()

	String sReturnString
	
	if CurrentLocationHasKeyword(KWD_LocationHostileTypes[0])
	sReturnString = "Animals" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[1])
	sReturnString = "Bandits" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[2])
	sReturnString = "Warlocks" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[3])
	sReturnString = "Vampires" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[4])
	sReturnString = "Dragons" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[5])
	sReturnString = "Dragon Priests" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[6])
	sReturnString = "Draugrs" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[7])
	sReturnString = "Dwarven Automatons" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[8])
	sReturnString = "Hagravens" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[9])
	sReturnString = "Falmers" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[10])
	sReturnString = "Spriggans" 	
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[11])
	sReturnString = "Forsworn" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[12])
	sReturnString = "Giants" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[13])
	sReturnString = "Werebears" 
	elseif CurrentLocationHasKeyword(KWD_LocationHostileTypes[14])
	sReturnString = "Werewolves" 
	else 
	sReturnString = "No Race" 
	endif 
;0 Animal Den
;1 Bandit Camp
;2 Warlock Lair 
;3 Vampire Lair
;4 Dragon Lair
;5 Dragon Priest Lair 
;6 Draugr Crypt
;7 DwarvenAutomatons
;8 Hagraven Nest 
;9 Falmer Hive 
;10 Spriggan Grove 
;11 Forsworn Camp
;12 Giant Camp 
;13 Werebear Lair
;14 Werewolf Lair 


EndFunction

;TRAPS #TRAPS
		
	;/	
	Estrus Trap - can we do with wiggle? I think so
	Furniture Trap (suitable furnitures depending on situation and location?)
	Naked Curse 
	Crawl Curse (like doggy curse)
	DD Curse (needs special condition to end?)
	Skeever Ambush 
	Dog Ambush 
			
	
	/;



Function ExhaustionChange(int ExhaustionMod)			;#ExhaustionChange()

	if Nym()
		NymTrace("ExhaustionChange(Exhaustion: "+Exhaustion+") (Modifier: "+ExhaustionMod+")")
		if ExhaustionMod > 0 
		
			if !slaveqst.GlovesProtect()
			PlayerSoundToPlay = "Breathing"
			SendModEvent("Moan") 
			SPELL_Exhaustion_Increase.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
			endif 
		
		elseif ExhaustionMod < 0 
		PlayerSoundToPlay = "Breathing"
		SendModEvent("Moan") 
		SPELL_Exhaustion_Decrease.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	
		endif 
		
		Exhaustion += ExhaustionMod
		NymTrace("ExhaustionChange(AFTER Exhaustion: "+Exhaustion+") (Modifier: "+ExhaustionMod+")")
	else 
	Exhaustion = 0
	endif 
	
EndFunction 


String Function GetLocationName()			;#GetLocationName()

		if !kCurrentLoc
		kCurrentLoc = cfgqst.PlayerRef.GetCurrentLocation()
		endif 
		
		String LocationName = kCurrentLoc.GetName()
			
		NymTrace("Current Locations Name: "+ LocationName)
	
		return LocationName
		
EndFunction 


Bool Function IsSavedEnemy(actor akActor)

	if EnemyList.HasForm(akActor)
	return true
	else 
	return false 
	endif 

EndFunction 



Form Function GetSlotItem(int slot, actor akactor)			;#strip
	
	Form a = None
		
		if (Slot == 30)
		a = akactor.GetWornForm(0x00000001) 	;30 - head				30, 31, 32, 33, 37, 39
		elseif (Slot == 31) && !cfgqst.BlockSlot[1]
		a = akactor.GetWornForm(0x00000002) 	;31 - hair/HELMET
		elseif (Slot == 32) 
		a = akactor.GetWornForm(0x00000004)
		elseif (Slot == 33)
		a = akactor.GetWornForm(0x00000008)	;33 - HANDS
		elseif (Slot == 34)
		a = akactor.GetWornForm(0x00000010)	;34 - Forearms
		elseif (Slot == 35) && !cfgqst.BlockSlot[5]
		a = akactor.GetWornForm(0x00000020)	;35 - Amulet 	
		elseif (Slot == 36) && !cfgqst.BlockSlot[6]
		a = akactor.GetWornForm(0x00000040)	;36 - Ring 
		elseif (Slot == 37)	 	
		a = akactor.GetWornForm(0x00000080)	;37 - FEET
		elseif (Slot == 38) && !cfgqst.BlockSlot[8]
		a = akactor.GetWornForm(0x00000100)	;38 - Calves
		elseif (Slot == 39) && !cfgqst.BlockSlot[9]
		a = akactor.GetWornForm(0x00000200)	;39 - SHIELD
		elseif (Slot == 40) && !cfgqst.BlockSlot[10]
		a = akactor.GetWornForm(0x00000400)	;40 - TAIL
		elseif (Slot == 41) && !cfgqst.BlockSlot[11]
		a = akactor.GetWornForm(0x00000800)	;41 - Long Hair
		elseif (Slot == 42) && !cfgqst.BlockSlot[12]
		a = akactor.GetWornForm(0x00001000)	;42 - Circlet
		elseif (Slot == 43) && !cfgqst.BlockSlot[13]
		a = akactor.GetWornForm(0x00002000)	;43 - Ears 
		elseif (Slot == 44) && !cfgqst.BlockSlot[14]
		a = akactor.GetWornForm(0x00004000)	;44 - Unnamed 		(DD Gag/Mouth, SexlabTongue)
		elseif (Slot == 45)	&& !cfgqst.BlockSlot[15]
		a = akactor.GetWornForm(0x00008000)	;45 - Unnamed 		(DD Collars)
		elseif (Slot == 46) && !cfgqst.BlockSlot[16]
		a = akactor.GetWornForm(0x00010000)	;46 - Unnamed 		(DD Armbinder/Yoke, Cloaks)
		elseif (Slot == 47) && !cfgqst.BlockSlot[17]
		a = akactor.GetWornForm(0x00020000)	;47 - Unnamed 		(DD -, Backpacks, Wings)
		elseif (Slot == 48) && !cfgqst.BlockSlot[18]
		a = akactor.GetWornForm(0x00040000)	;48 - Unnamed 		(DD plugs anal, Backpack left pouch)
		elseif (Slot == 49) && !cfgqst.BlockSlot[19]
		a = akactor.GetWornForm(0x00080000)	;49 - Unnamed 		(DD Body harness/Chastity belt)
		elseif (Slot == 50) && !cfgqst.BlockSlot[20]
		a = akactor.GetWornForm(0x00100000)	;50 - Decap. Head	(DD Piercings Vaginal, bracelets)
		elseif (Slot == 51) && !cfgqst.BlockSlot[21]	
		a = akactor.GetWornForm(0x00200000)	;51 - Decapitate
		elseif (Slot == 52) && !cfgqst.BlockSlot[22]
		a = akactor.GetWornForm(0x00400000)	;52 - Unnamed
		elseif (Slot == 53) && !cfgqst.BlockSlot[23]
		a = akactor.GetWornForm(0x00800000)	;53 - Unnamed	(DD Cuffs Legs) , BIKINI THIGH
		elseif (Slot == 54) && !cfgqst.BlockSlot[24]
		a = akactor.GetWornForm(0x01000000)	;54 - Unnamed	(DD Plugs vaginal)
		elseif (Slot == 55) && !cfgqst.BlockSlot[25]
		a = akactor.GetWornForm(0x02000000)	;55 - Unnamed	(DD Blindfold)
		elseif (Slot == 56) && !cfgqst.BlockSlot[26]
		a = akactor.GetWornForm(0x04000000)	;56 - Unnamed	(DD Chastity Bra)
		elseif (Slot == 57)	&& !cfgqst.BlockSlot[27]
		a = akactor.GetWornForm(0x08000000)	;57 - Unnamed	(DD Vaginal Plugs)
		elseif (Slot == 58) && !cfgqst.BlockSlot[28]	
		a = akactor.GetWornForm(0x10000000)	;58 - Unnamed	(DD Body Harness/Corset
		elseif (Slot == 59) && !cfgqst.BlockSlot[29]
		a = akactor.GetWornForm(0x20000000)	;59 - Unnamed	(DD Cuffs Arms)
		elseif (Slot == 60) && !cfgqst.BlockSlot[30]
		a = akactor.GetWornForm(0x40000000)	;60 - Unnamed
		elseif (Slot == 61) && !cfgqst.BlockSlot[31]
		a = akactor.GetWornForm(0x80000000)	;61 - Unnamed
		endif
		
		if a 
		return a 
		endif  
	
EndFunction

Bool Function IsLocationCleared()

return cfgqst.PlayerRef.GetCurrentLocation().IsCleared()

EndFunction 


Bool Function IsLocationClearable()

	if IsPlayerIndoors()
	return playscr.IsInClearableLocation()
	else 
	return false
	endif
	
EndFunction 

Bool Function IsPlayerCollared()

	Form CheckCollar = cfgqst.PlayerRef.GetWornForm(0x00008000) as Form  ;Slot 45 

	int TempId
	Int iFormId = 0      
	Int iModIndex    
	String sModName = "empty"

	if !CheckCollar
	return false 
	endif  
	
	TempId       = CheckCollar.GetFormID()
	iFormId      = Math.RightShift(Math.LeftShift(TempId,8),8)
	sModName = PO3_SKSEFunctions.GetFormModName(CheckCollar, false)
	
	if (sModName == "Naked Defeat.esp") || (sModName == "ZaZAnimationPack.esm")
	NymTrace("Nade/ZAZ Collar")
	return true 
	elseif cfgqst.ModDDframework && nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "zad_DeviousCollar")
	NymTrace("DD Collar")
	return true 
	else 
	return false 
	endif 

	
EndFunction




Function PlayerPosingVehicle(bool setup)
	
	if setup
		Vehicle_Player = cfgqst.PlayerRef.PlaceAtMe(XMarkerHeading)
		Vehicle_Player.MoveTo(cfgqst.PlayerRef, abMatchRotation = true)
		Vehicle_Player.SetAngle(0.0, 0.0, cfgqst.PlayerRef.GetAngleZ())
		Vehicle_Player.MoveTo(Vehicle_Player, 0.0 * Math.Sin(Vehicle_Player.GetAngleZ()), 0.0 * Math.Cos(Vehicle_Player.GetAngleZ()), Vehicle_Player.GetHeight() +2.0, abMatchRotation = true)

		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(Vehicle_Player)
		endif 
	else 
	
		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
		endif 
		
		if Vehicle_Player
		Vehicle_Player.DisableNoWait()
		Vehicle_Player.Delete()
		Vehicle_Player = none
		endif 

		if !cfgqst.VRfix
		cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
		endif 
	endif 
	
EndFunction 

Bool Function IsLocalSlave()		;#IsLocalSlave()

	if IsLocalSlave > 0
	return true 
	else 
	return false 
	endif 

EndFunction

Bool Function IsAreaMarkerNearby(string sMode)
		NymTrace("IsAreaMarkerNearby(Mode: "+sMode+")")
		ObjectReference ClosestMarker

		;ClosestMarker ;= XMarkerHeading_Naked as Form 
		Form XMarkerAreaTemp = XMarkerHeading_Area as Form
		int MinDistance = 250
		if XMarkerAreaTemp
	;	NymBox("IsWorkbenchNearby(Workbench filled)")
		else 
		NymTrace("XMarkerAreaTemp(Workbench NOT filled)")
		endif 
		
		if sMode == "Cleaning"
		
			if cfgqst.PlayerRef.IsInInterior()
			MinDistance = 150
			else 
			MinDistance = 250
			endif 
			
		elseif sMode == "Farming"
		
			;if cfgqst.PlayerRef.IsInInterior()
			MinDistance = 150
			;else 
			;MinDistance = 250
			;endif 			
			
		elseif sMode == "Mining"
		MinDistance = 120
		endif 
		
		ClosestMarker = Game.FindClosestReferenceOfTypeFromRef(XMarkerAreaTemp, cfgqst.PlayerRef, MinDistance)
		
		;if !ClosestMarker
		;ClosestMarker = Game.FindClosestReferenceOfTypeFromRef(XMarkerNakedTemp, cfgqst.PlayerRef, 300.0)
		;	if ClosestMarker
		;	ScreenMessage("Move closer to the Workbench!")
		;	endif 
		;endif 
		
		if ClosestMarker
		;NymBox("IsWorkbenchNearby(Workbench FOUND)")
		return true
		else
		;NymBox("IsWorkbenchNearby(Workbench NOT FOUND)")
		return false
		endif

EndFunction	


Function SendAlphaUpdateEvent(Form akTarget)
    int BiS_UpdateAlphaModEvent = ModEvent.Create("BiS_UpdateAlpha")
    If (BiS_UpdateAlphaModEvent)
        ModEvent.PushForm(BiS_UpdateAlphaModEvent, akTarget)
        ModEvent.Send(BiS_UpdateAlphaModEvent)
    EndIf
EndFunction

Function StartWhipping_00(float Duration)		;ALL WHIPPING STARTS HERE!!!!	#StartWhipping_00 #whipping
	NymTrace("StartWhipping_00")
	int i = 4
	
	if cfgqst.DefeatWhipProb > 0
	
		if cfgqst.IsDefeatRunning() ;&& ((cfgqst.DefeatTypeGeneral == "AreHumans") || ((cfgqst.DefeatTypeGeneral == "AreHumanoids") && (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Falmers")))
		NymTrace("StartWhipping_00 Defeat Running")
		;	if NeedaWhipper
		;	NymBox("Defeat Running and we have no Whipper!")
		;	endif 
		cfgqst.AllegianceQuestStart("AreaScanWhipper")
		else 
		NymTrace("StartWhipping_00 Defeat NOT Running")
		cfgqst.AllegianceQuestStart("AreaScanWhipper")
		endif 
	
		while !WhipperFound && (i > 0)
		NymTrace("StartWhipping_00 - LOOP "+i)
		Utility.Wait(1.0)
		i -= 1
		endwhile 
	
		if !WhipperFound && IsLocalSlave() && playscr.IsCurrentLocation("Mine")
		slaveqst.PlaceSlaveMolesters("Whipper", 1)
		endif 
		
	WhippingDuration = Duration as int
	SendModEvent("StartWhipping_00")
	endif 
			
EndFunction 


Function StopWhipping_00()
	
	WhippingDuration = 0

EndFunction 

;Hitter.AddToFaction(EnemyFaction)


Function RemoveItemsFromActor(actor akActor, string Items)
NymTrace("RemoveItemsFromActor(START)")

		actor a = akActor
			
		if Items == "Torches"
			
			
			Form[] RemoveItemsfList = new Form[40]
			String[] sRemoveItemsNamesList = new String[1]	
			sRemoveItemsNamesList[0] = "Torch"
			
			int ItemsRemovedCheck	
				;RemoveItemsList = SPE_ObjectRef.GetItemsByKeyword(cfgqst.PlayerRef, CleanKWDList, false) 
			RemoveItemsfList = SPE_ObjectRef.GetInventoryNamedObjects(a, sRemoveItemsNamesList) 
			ItemsRemovedCheck = SPE_ObjectRef.RemoveItems(a, RemoveItemsfList, none) 
			NymTrace("RemoveItemsFromActor: ItemsRemovedCheck: "+ItemsRemovedCheck)	
					
			;/		
			; Return all items on the given object whichs item name matches one of the given names
			Form[] Function GetInventoryNamedObjects(ObjectReference akReference, String[] asNames) global native
		
			
			Book Property SlaveTask_ServiceCounter Auto

			Form[] ItemList3 = new Form[1]
			ItemList3[0] = SlaveTask_ServiceCounter

			CompareWithTaskCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ItemList3, none) 	
			/;
		else
		NymTrace("RemoveItemsFromActor(EMPTY CALL)")
		endif 
		


EndFunction 

Function GetEnemyFaction(actor akActor)

	actor a = akActor

	if cfgqst.IsVampire(a)	;checks Keyword
	;Set Faction Vampires 
	elseif cfgqst.IsNecromancer(a, true)	;checks Faction only (true)
	;Set Faction Necromancers
	elseif cfgqst.IsGuard(a)
	;Set Faction Guards
	endif 
	;Slavers?

EndFunction 


Function SaveHitterRaceKeyAsEnemy(string RaceKey, actor akActor)
    DebugTrace("SaveHitterRaceKey START (" + RaceKey + ")")
    actor a = akActor
    string TheRaceKey = RaceKey
    string SaveRaceKey = RaceKey
    if !RaceKey
        debug.Trace("NAKED DEFEAT storagequest: #ERROR: RaceKey (NONE)", 0)
    elseif RaceKey == "empty"
        debug.Trace("NAKED DEFEAT storagequest: #ERROR: RaceKey(empty)", 0)
    else
        if cfgqst.ModDEM && a.HasKeyword(KWD_DemonicCreature)
            if a
                TheRaceKey = GetRaceKeyFromFaction(a, SaveRaceKey)
                DebugTrace("SaveHitterRaceKey Demonic Creature Faction ATTEMPT 01(" + TheRaceKey + ")")
            else
                NymTrace("SaveHitterRaceKey #ERROR no Actor, but why?")
            endif
            if !TheRaceKey
                NymTrace("SaveHitterRaceKey #ERROR no RaceKey, but why?")
                TheRaceKey = SaveRaceKey
            endif
            DebugTrace("SaveHitterRaceKey After DEM Check (" + TheRaceKey + ")")
        endif
        cfgqst.Enemy[10] = TheRaceKey
        NymTrace("Last Hitter = " + TheRaceKey)
        if TheRaceKey == "Humans"
            GetEnemyFaction(a)
        endif
        if !cfgqst.CheckEnemiesFor(TheRaceKey)
            if cfgqst.Enemy[0] == "None"
                EnemyActors = new actor[6]
                EnemyActors[0] = None
                EnemyActors[1] = None
                EnemyActors[2] = None
                EnemyActors[3] = None
                EnemyActors[4] = None
                EnemyActors[5] = None
                EnemyActors[0] = a
                cfgqst.Enemy[0] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[0]: " + cfgqst.Enemy[0], 0)
            elseif cfgqst.Enemy[1] == "None"
                cfgqst.Enemy[1] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[1]: " + cfgqst.Enemy[1], 0)
                EnemyActors[1] = a
            elseif cfgqst.Enemy[2] == "None"
                cfgqst.Enemy[2] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[2]: " + cfgqst.Enemy[2], 0)
                EnemyActors[2] = a
            elseif cfgqst.Enemy[3] == "None"
                cfgqst.Enemy[3] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[3]: " + cfgqst.Enemy[3], 0)
                EnemyActors[3] = a
            elseif cfgqst.Enemy[4] == "None"
                cfgqst.Enemy[4] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[4]: " + cfgqst.Enemy[4], 0)
                EnemyActors[4] = a
            else
                cfgqst.Enemy[5] = TheRaceKey
                debug.Trace("NAKED DEFEAT storagequest: Enemy[5]: " + cfgqst.Enemy[5], 0)
                EnemyActors[5] = a
            endif
        else
            NymTrace("NAKED DEFEAT storagequest: RaceKey already registered: " + TheRaceKey)
        endif
    endif
EndFunction


Bool Function IsPlayerKissing()

	if ForceOpen == 2
	return true 
	elseif ForceOpen == 22
	return true 
	else 
	return false 
	endif 
	
EndFunction 


Bool Function IsHeelsEffectOn(actor akActor)

			
		float[] posTEST
		
		posTEST = NiOverride.GetNodeTransformPosition(akActor, false, 1, "NPC", "internal")

	;	if NiOverride.RemoveNodeTransformScale(akActor, False, True, "NPC", "SexLab.esm")
	;	NymTrace("IsHeelsEffectOn() NiOverride from Sexlab (ACTIVE)")
	;	else 
	;	NymTrace("IsHeelsEffectOn() NiOverride from Sexlab (INACTIVE?)")
	;	endif 

		if posTEST[2] > 0
		NymTrace("IsHeelsEffectOn(TRUE) posTEST["+posTEST+"] Sexscene("+cfgqst.SexScene+")")
		
		
		;Sexlab shows: 9.200000 on posTEST[2]
		
		;	if Nym() && cfgqst.SexScene
		;	cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, 1274)
		;	endif 
		
		return true 
		else 
		NymTrace("IsHeelsEffectOn(FALSE) posTEST["+posTEST+"] Sexscene("+cfgqst.SexScene+")")
		return false 
		endif 
	

EndFunction 

Function DefeatTypeDoubleCheck()
    NymTrace("DefeatTypeDoubleCheck(Current: " + cfgqst.DefeatType + ")")
    bool FactionMatches = false
    bool MainFactionFound = false
    string OverrideRaceKey = ""
    if IsDemonicCreaturesDefeat()
        cfgqst.DefeatType = "Demonic Creatures"
    elseif EnemyActors[0]
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[0])
            FactionMatches = true
        endif
    elseif EnemyActors[1] && !FactionMatches
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[1])
            FactionMatches = true
        endif
    elseif EnemyActors[2] && !FactionMatches
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[2])
            FactionMatches = true
        endif
    elseif EnemyActors[3] && !FactionMatches
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[3])
            FactionMatches = true
        endif
    elseif EnemyActors[4] && !FactionMatches
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[4])
            FactionMatches = true
        endif
    elseif EnemyActors[5] && !FactionMatches
        if IsActorInFaction(cfgqst.DefeatType, EnemyActors[5])
            FactionMatches = true
        endif
    endif
    OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[0], cfgqst.DefeatType)
    if IsMainFaction(OverrideRaceKey)
        MainFactionFound = true
    endif
    if !MainFactionFound
        OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[1], cfgqst.DefeatType)
        if IsMainFaction(OverrideRaceKey)
            MainFactionFound = true
        endif
    endif
    if !MainFactionFound
        OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[2], cfgqst.DefeatType)
        if IsMainFaction(OverrideRaceKey)
            MainFactionFound = true
        endif
    endif
    if !MainFactionFound
        OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[3], cfgqst.DefeatType)
        if IsMainFaction(OverrideRaceKey)
            MainFactionFound = true
        endif
    endif
    if !MainFactionFound
        OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[4], cfgqst.DefeatType)
        if IsMainFaction(OverrideRaceKey)
            MainFactionFound = true
        endif
    endif
    if !MainFactionFound
        OverrideRaceKey = GetRaceKeyFromFaction(EnemyActors[5], cfgqst.DefeatType)
        if IsMainFaction(OverrideRaceKey)
            MainFactionFound = true
        endif
    endif
    if MainFactionFound
        cfgqst.DefeatType = OverrideRaceKey
    elseif !FactionMatches
        if cfgqst.DefeatTypeGeneral == "AreAnimals"
            cfgqst.DefeatType = "Animals"
        elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"
            cfgqst.DefeatType = "Creatures"
        endif
    endif
    NymTrace("DefeatTypeDoubleCheck(Final: " + cfgqst.DefeatType + ")")
EndFunction

bool Function IsMainFaction(string sFaction)
    if sFaction == "Bandits" || sFaction == "Humans" || sFaction == "Forsworn" || sFaction == "Soldiers"
        return true
    elseif sFaction == "Undead"
        return true
    elseif sFaction == "Falmers"
        return true
    elseif sFaction == "Dwemer"
        return true
    elseif sFaction == "Rieklings"
        return true
    elseif sFaction == "Vampires"
        return true
    elseif sFaction == "Spriggans"
        return true
    endif
EndFunction

Bool Function IsDemonicCreaturesDefeat()
	NymTrace("IsDemonicCreaturesDefeat()")
	;If Nym() 
	;NymBox("DEMONIC CREATURE DEFEAT")
	;endif
	;needs improvement.... we need to account for the mixed situations.,...
	
	Bool returnvalue = false
	
	if EnemyActors[0] 
		if EnemyActors[0].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 

	if EnemyActors[1] 
		if EnemyActors[1].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 	

	if EnemyActors[2] 
		if EnemyActors[2].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 	

	if EnemyActors[3] 
		if EnemyActors[3].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 
	
	if EnemyActors[4] 
		if EnemyActors[4].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 

	if EnemyActors[5] 
		if EnemyActors[5].HasKeyword(KWD_DemonicCreature)
		returnvalue = true 
		else 
		returnvalue = false 
		endif
	endif 

	return returnvalue

EndFunction 	


Bool Function IsHuman(actor akActor)

	String sRaceType = SPE_Actor.GetRaceType(akActor)
	if sRaceType == "Human"
	return true
	else 
	return false 
	endif 
	
EndFunction


Bool Function IsFemale(actor akActor)

	;ActorBase akActorBase = akActor.GetLeveledActorBase()	;can CTD? can return crap?
	ActorBase akActorBase = akActor.GetActorBase()
	int TempGender = 0
	
	if akActorBase
	TempGender = akActorBase.GetSex()
	endif 
		;-1: None 
		;0: Male
		;1: Female
		
	if TempGender == 1
	return true 
	else 
	return false 
	endif 
	
EndFunction 

bool Function IsFacingFront(objectreference objToCheck, string sName)
    float zOffsetPC
    bool ObjectFacesPlayer = false
    float zOffsetOBJ = objToCheck.GetHeadingAngle(cfgqst.PlayerRef)
    if zOffsetOBJ < 30.0 && zOffsetOBJ > -30.0
        DebugTrace("GetCrosshairRefAngle_Actor [" + sName + "] has Player inside of FOV (60°)[" + zOffsetOBJ + "]")
        ObjectFacesPlayer = true
    else
        NymMessage("AWAY A " + sName + " OBJ:[" + zOffsetOBJ + "] PC:[" + zOffsetPC + "]")
        return false
    endif
    if ObjectFacesPlayer
        zOffsetPC = cfgqst.PlayerRef.GetHeadingAngle(objToCheck)
        if zOffsetPC < 25.0 && zOffsetPC > -25.0
            DebugTrace("F [" + sName + "] has Master inside of FOV (50°)[" + zOffsetPC + "]")
            NymMessage("FRONT " + sName + " OBJ:[" + zOffsetOBJ + "] PC:[" + zOffsetPC + "]")
            return true
        else
            DebugTrace("GetCrosshairRefAngle_Actor [" + sName + "] no FOV")
            NymMessage("AWAY B " + sName + " OBJ:[" + zOffsetOBJ + "] PC:[" + zOffsetPC + "]")
            return false
        endif
    else
        NymMessage("AWAY C " + sName + " OBJ:[" + zOffsetOBJ + "] PC:[" + zOffsetPC + "]")
        return false
    endif
EndFunction

Function PublicExposureComments(string tempInfomessageDirty, string tempInfomessageMovement, string tempInfomessageNaked, string tempInfomessageCum, string tempInfomessageWeapon)
    if Nym() && D100(60.0)
        if tempInfomessageNaked
            PlayVoiceOnActor(ThePublicExposureCommenter, "Nice ass!", "")
        elseif tempInfomessageCum
            PlayVoiceOnActor(ThePublicExposureCommenter, "What a whore!", "")
        elseif tempInfomessageDirty
            PlayVoiceOnActor(ThePublicExposureCommenter, "Dirty bitch!", "")
        elseif tempInfomessageMovement
            PlayVoiceOnActor(ThePublicExposureCommenter, "Those Tits jiggle nicely", "")
        elseif tempInfomessageWeapon
            PlayVoiceOnActor(ThePublicExposureCommenter, "Unarmed and pretty fuckable. Nice.", "")
        endif
    endif
EndFunction

Function VOICE_LeavingCombat()
    int i
    if cfgqst.PlayerDownAlready
        PlayVoiceOnActor(cfgqst.PlayerRef, "Too much pain. I can't fight.", "")
    elseif cfgqst.IsDefeatRunning()
        PlayVoiceOnActor(cfgqst.PlayerRef, "Damn, I lost", "")
    else
        i = utility.RandomInt(1, 5)
        if i == 1
            PlayVoiceOnActor(cfgqst.PlayerRef, "Too Easy", "")
        elseif i == 2
            PlayVoiceOnActor(cfgqst.PlayerRef, "That should teach them", "")
        elseif i == 3
            PlayVoiceOnActor(cfgqst.PlayerRef, "Victory", "")
        elseif i == 4
            PlayVoiceOnActor(cfgqst.PlayerRef, "Could have been worse", "")
        elseif i == 5
            PlayVoiceOnActor(cfgqst.PlayerRef, "I think they are all dead", "")
        endif
    endif
EndFunction

Function VOICE_DefeatMessage()
    string sDefeatMessage
    if cfgqst.DefeatType == "None"
        if cfgqst.DefeatTypeGeneral == "AreAnimals"
            sDefeatMessage = "Animals"
        elseif cfgqst.DefeatTypeGeneral == "AreCreatures"
            sDefeatMessage = "Creatures"
        elseif cfgqst.DefeatTypeGeneral == "AreFunny"
            sDefeatMessage = "Scumbags"
        endif
    else
        sDefeatMessage = cfgqst.DefeatType
    endif
    int i = utility.RandomInt(1, 5)
    if i == 1
        PlayVoiceOnActor(cfgqst.PlayerRef, "Great, now I'll be fucked by those " + sDefeatMessage, "Player")
    elseif i == 2
        PlayVoiceOnActor(cfgqst.PlayerRef, "I will be raped by fucking " + sDefeatMessage, "Player")
    elseif i == 3
        PlayVoiceOnActor(cfgqst.PlayerRef, "Seems those damned " + sDefeatMessage + " will fuck me now", "Player")
    elseif i == 4
        PlayVoiceOnActor(cfgqst.PlayerRef, "Those " + sDefeatMessage + " will be all over me soon", "Player")
    elseif i == 5
        PlayVoiceOnActor(cfgqst.PlayerRef, "Raped by " + sDefeatMessage + ". Fuck!.", "Player")
    endif
EndFunction

Function VOICE_EnteringCombat()
    if folqst.IsFollowerPresent()
        PlayVoiceOnActor(cfgqst.PlayerRef, "We should prepare for combat!", "")
    else
        PlayVoiceOnActor(cfgqst.PlayerRef, "I should prepare for combat!", "")
    endif
EndFunction

Function NakedCurseEnd()
    defqst.PlaceExplosion(cfgqst.PlayerRef, "Naked Curse End")
    utility.Wait(1.0)
    if folqst.IsWithUs_Follower(0)
        defqst.PlaceExplosion(folqst.NakedFollower[0], "Naked Curse End")
    endif
    utility.Wait(0.5)
    if folqst.IsWithUs_Follower(1)
        defqst.PlaceExplosion(folqst.NakedFollower[1], "Naked Curse End")
    endif
    utility.Wait(2.0)
    ScreenMessage("The nakedness curse has worn off...")
    PlayVoiceOnActor(cfgqst.PlayerRef, "Seems like the Naked Curse has worn off.", "Player")
EndFunction

int Function GetGender(actor akActor)
		
	String sRaceType = SPE_Actor.GetRaceType(akActor)
;/
	if Nym()
	int returnvalue
		if sRaceType == "Human"
		;ActorBase akActorBase = akActor.GetLeveledActorBase()	;can CTD? can return crap?
		ActorBase akActorBase = akActor.GetActorBase()
		returnvalue = akActorBase.GetSex()
		;-1: None 
		;0: Male
		;1: Female
		else 
		returnvalue = 2 	;Creature
		endif 
		
		Sexlab.GetGender
		
		return returnvalue 
	
	else 
	
	/;
		
		if sRaceType == "Human"
			;ActorBase akActorBase = akActor.GetLeveledActorBase()	;can CTD? can return crap?
			ActorBase akActorBase = akActor.GetActorBase()
			return akActorBase.GetSex()
			;-1: None 
			;0: Male
			;1: Female
		else 
		return 2 	;Creature
		endif 
	;endif 
	
EndFunction 

Keyword KWD_FishingRod

Bool Function IsFishingRod(Form akBaseObject)

	
		if !KWD_FishingRod
		KWD_FishingRod = (Game.GetFormFromFile(0x05000C5D, "ccBGSSSE001-Fish.esm") As Keyword)
		endif 
		
		if akBaseObject.HasKeyword(KWD_FishingRod)
		return true 
		else 
		return false
		endif 

		;FISHING 
		;Fishing Rod - Uniocfficial Skyrim Patch - 0500084F - 0513BAA7

		;ccBGSSSE001_FishingRodImperialWeap ;FIshing Rod
		;ccBGSSSE001_FIshingRodAlikir 	
		;ccBGSSSE001_FishingRod
		
		;KWD_ccBGSSSE001_FishingPoleKW 		 		ccBGSSSE001-Fish.esm 
		
		
		;Blacksmith Forge 000CAE0B
	
EndFunction 


string Function GetRaceKeyFromFaction(actor akActor, string RaceKey)
    string TheRaceKey = RaceKey
    NymTrace("GetRaceKeyFromFaction(NEW)")
    if akActor.IsInFaction(cfgqst.FactionsHumanoid[0])
        return "Draugrs"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[1])
        return "Draugrs"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[2])
        return "Falmers"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[4])
        return "Spriggans"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[5])
        return "Rieklings"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[8])
        return "DragonPriests"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[11])
        return "Draugrs"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[12])
        return "Dwemer"
    elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[13])
        return "Draugrs"
    else
        NymTrace("GetRaceKeyFromFaction(NO matching Faction)")
        return TheRaceKey
    endif
EndFunction

Float Function GetWarmth()

	Float ReturnWarmth = 0.0
	Float CurrentHour
	NymTrace("GetWarmth()")

	ObjectReference ClosestWarmSource = Game.FindClosestReferenceOfAnyTypeInListFromRef(Warmlist, cfgqst.PlayerRef, 220.0)

	;FxFireWithEmbersHeav 00033DA4
	
	if ClosestWarmSource
	ReturnWarmth += 0.5
	NymTrace("GetWarmth(Warm Sources 0.5)")
	endif 

	if IsPlayerIndoors()
	ReturnWarmth += 0.25
	NymTrace("GetWarmth(Indoor Sources 0.25)")
	else 
	CurrentHour = GetGameHour() 
	NymTrace("GetWarmth(Hour: "+CurrentHour+")")
	NymTrace("GetWarmth(Hour NIGHT 0.00)")
		if (CurrentHour >= 8) && (CurrentHour <= 22)
		ReturnWarmth += 0.25
		NymTrace("GetWarmth(Hour DAY 0.00)")
		endif 
	endif 	
	
	NymTrace("GetWarmth("+ReturnWarmth+")")
	return ReturnWarmth
	
EndFunction 


Float Function GetComfort()	;FUR ON FLOOR? PeltFloor02 0005C016 Skyrim.es,

	Float ReturnComfort = 0.0

	;MAXIMUM COMFORT
	ObjectReference ClosestMaximumComfort = Game.FindClosestReferenceOfAnyTypeInListFromRef(ComfortMaximumList, cfgqst.PlayerRef, 125.0)
	
	if ClosestMaximumComfort
	NymTrace("GetComfort(BED)")
	ReturnComfort += 0.4
	else
	
		;MEDIUM COMFORT
		ObjectReference ClosestMediumComfort = Game.FindClosestReferenceOfAnyTypeInListFromRef(ComfortMediumList, cfgqst.PlayerRef, 125.0)

		if ClosestMediumComfort
		NymTrace("GetComfort(BEDROLL)")
		ReturnComfort += 0.3
		else
		
			;MINIMAL COMFORT
			ObjectReference ClosestMinimalComfort = Game.FindClosestReferenceOfAnyTypeInListFromRef(ComfortMinimalList, cfgqst.PlayerRef, 125.0)
			
			if ClosestMinimalComfort
			NymTrace("GetComfort(MINIMAL)")
			ReturnComfort += 0.2
			else 
			NymTrace("GetComfort(NONE)")
			endif 
		endif 
	endif 

	NymTrace("GetComfort("+ReturnComfort+")")
	return ReturnComfort

EndFunction 

Bool Function AllowSellingToSS()

	if cfgqst.DefeatTypeGeneral == "AreHumans"
	return true
	elseif cfgqst.DefeatTypeGeneral == "AreAnimals"
	return false 
	elseif cfgqst.DefeatTypeGeneral == "AreHumanoids"

		if cfgqst.DefeatType == "Rieklings"
		return true 
		else 
		return false 
		endif 
	
	else 
	return false 
	endif 

EndFunction 


Bool Function ValidateWhipper(Actor akActor, string sName)

	DebugTrace("ValidateWhipper("+sName+")")
	;Attempt to make a Speedy Detection Method for Combat 
	
	String sRaceType = SPE_Actor.GetRaceType(akActor)
	Bool returnvalue = false 

	if cfgqst.IsDefeatRunning()

		if akActor.IsInFaction(NakedRaperFaction)
						
			;DEMONIC CREATURE HANDLING 
			if cfgqst.ModDEM && akActor.HasKeyword(KWD_DemonicCreature)			
					
				;GUIDE: NOTE: This part is identical to the "outside of Defeat Whipper". 
				;so at some point we should improve this even further. 
				
				
				if sRaceType == "Human" ;&& (cfgqst.DefeatType == "AreHumans") ;dire need of Faction Checks!!!
				returnvalue = true 

				;====================
				; HUMANOIDS
				;====================
				elseif sRaceType == "Draugr" ;&& (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "Riekling" ;&& (cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "Falmer" ;&& (cfgqst.DefeatType == "Falmers" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
			;	elseif sRaceType == "Gargoyle"	 ;TEST
			;		ReturnCode = 160
			;	elseif sRaceType == "Troll"	 ;TEST
			;		ReturnCode = 161
				elseif sRaceType == "VampireLord"	 ;TEST
			;		ReturnCode = 162
			;	elseif sRaceType == "Werewolf" ;TEST
			;		ReturnCode = 163
				elseif sRaceType == "Spriggan" ;&& (cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "FlameAtronach"	;TEST
				;	ReturnCode = 170
				;elseif sRaceType == "Wispmother"		;TEST
				;	ReturnCode = 192
				elseif sRaceType == "Hagraven" ;&& (cfgqst.DefeatType == "Hagravens" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "DragonPriest"	;&& (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				endif
				
				
			else 							
				;====================
				; HUMAN
				;====================
					
				if sRaceType == "Human" && (cfgqst.DefeatTypeGeneral == "AreHumans") ;dire need of Faction Checks!!!
				returnvalue = true 

				;====================
				; HUMANOIDS
				;====================
				elseif sRaceType == "Draugr" && (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "Riekling" && (cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "Falmer" && (cfgqst.DefeatType == "Falmers" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
			;	elseif sRaceType == "Gargoyle"	 ;TEST
			;		ReturnCode = 160
			;	elseif sRaceType == "Troll"	 ;TEST
			;		ReturnCode = 161
			;	elseif sRaceType == "VampireLord"	 ;TEST
			;		ReturnCode = 162
				elseif sRaceType == "Werewolf" ;TEST
				
					if Nym()
					returnvalue = true	;NymraTesting Werewolf Whipping
					else 
					returnvalue = false 
					endif 
				
			;		ReturnCode = 163
				elseif sRaceType == "Spriggan" && (cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				;elseif sRaceType == "FlameAtronach"	;TEST
				;	ReturnCode = 170
				;elseif sRaceType == "Wispmother"		;TEST
				;	ReturnCode = 192
				elseif sRaceType == "Hagraven" && (cfgqst.DefeatType == "Hagravens" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				elseif sRaceType == "DragonPriest"	&& (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
				returnvalue = true 
				

				;====================
				; DWARVEN
				;====================
			;	elseif sRaceType == "DwarvenSphere" ;TEST
			;		ReturnCode = 500
			;
			;	elseif sRaceType == "DwarvenCenturion" ;TEST
			;		ReturnCode = 520
			;	elseif sRaceType == "DwarvenBallista" ;TEST
			;		ReturnCode = 530


				;====================
				; REST
				;====================
			
			;	elseif sRaceType == "Seeker"		;TEST
			;		ReturnCode = 610
			
				endif 
			endif 
		endif 
		;elseif IsLocalSlave()
		
		;	if sRaceType == "Human" 
		;	returnvalue = true 
		;	endif 
	

	else 

		if sRaceType == "Human" ;&& (cfgqst.DefeatType == "AreHumans") ;dire need of Faction Checks!!!
		returnvalue = true 

		;====================
		; HUMANOIDS
		;====================
		elseif sRaceType == "Draugr" ;&& (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
		elseif sRaceType == "Riekling" ;&& (cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
		elseif sRaceType == "Falmer" ;&& (cfgqst.DefeatType == "Falmers" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
	;	elseif sRaceType == "Gargoyle"	 ;TEST
	;		ReturnCode = 160
	;	elseif sRaceType == "Troll"	 ;TEST
	;		ReturnCode = 161
	;	elseif sRaceType == "VampireLord"	 ;TEST
	;		ReturnCode = 162
	;	elseif sRaceType == "Werewolf" ;TEST
	;		ReturnCode = 163
		elseif sRaceType == "Spriggan" ;&& (cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
		;elseif sRaceType == "FlameAtronach"	;TEST
		;	ReturnCode = 170
		;elseif sRaceType == "Wispmother"		;TEST
		;	ReturnCode = 192
		elseif sRaceType == "Hagraven" ;&& (cfgqst.DefeatType == "Hagravens" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
		elseif sRaceType == "DragonPriest"	;&& (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Funny")
		returnvalue = true 
		endif
	endif 
	
	NymTrace("ValidateWhipper("+sName+") NakedRaperFaction: "+akActor.IsInFaction(NakedRaperFaction))
	NymTrace("ValidateWhipper("+sName+") sRaceType: "+sRaceType)
	NymTrace("ValidateWhipper("+sName+") DefeatType: "+cfgqst.DefeatType)
	NymTrace("ValidateWhipper("+sName+") Valid Whipper: "+returnvalue)

	Return returnvalue

EndFunction 

int Function GetHitterRaceCode(actor akAggressor)
    string sRaceType
    NymTrace("GetHitterRaceCode()")
    int ReturnCode = 0
    if akAggressor
        sRaceType = spe_actor.GetRaceType(akAggressor)
    else
        NymTrace("GetHitterRaceCode(ERROR, NO ACTOR)")
        sRaceType = "404"
    endif
    if Nym()
        if sRaceType == "Skeleton" || sRaceType == "Skeletons"
            NymBox("SPE_Actor.GetRaceType can find " + sRaceType)
        endif
    endif
    if sRaceType == "Human"
        ReturnCode = 100
    elseif sRaceType == "Draugr"
        ReturnCode = 130
    elseif sRaceType == "Riekling"
        ReturnCode = 140
    elseif sRaceType == "Falmer"
        ReturnCode = 150
    elseif sRaceType == "Gargoyle"
        ReturnCode = 160
    elseif sRaceType == "Troll"
        ReturnCode = 161
    elseif sRaceType == "VampireLord"
        ReturnCode = 162
    elseif sRaceType == "Werewolf"
        ReturnCode = 163
    elseif sRaceType == "Spriggan"
        ReturnCode = 164
    elseif sRaceType == "FlameAtronach"
        ReturnCode = 170
    elseif sRaceType == "FrostAtronach"
        ReturnCode = 171
    elseif sRaceType == "StormAtronach"
        ReturnCode = 172
    elseif sRaceType == "Giant"
        ReturnCode = 190
    elseif sRaceType == "Wispmother"
        ReturnCode = 192
    elseif sRaceType == "Hagraven"
        ReturnCode = 194
    elseif sRaceType == "DragonPriest"
        ReturnCode = 196
    elseif sRaceType == "Wolf"
        ReturnCode = 200
    elseif sRaceType == "Dog"
        ReturnCode = 201
    elseif sRaceType == "Skeever"
        ReturnCode = 210
    elseif sRaceType == "Bear"
        ReturnCode = 220
    elseif sRaceType == "Boar"
        ReturnCode = 230
    elseif sRaceType == "Deer"
        ReturnCode = 240
    elseif sRaceType == "Sabrecat"
        ReturnCode = 250
    elseif sRaceType == "Mammoth"
        ReturnCode = 260
    elseif sRaceType == "Horker"
        ReturnCode = 270
    elseif sRaceType == "Chaurus"
        ReturnCode = 300
    elseif sRaceType == "ChaurusHunter"
        ReturnCode = 310
    elseif sRaceType == "Spider"
        ReturnCode = 320
    elseif sRaceType == "AshHopper"
        ReturnCode = 330
    elseif sRaceType == "Mudcrab"
        ReturnCode = 340
    elseif sRaceType == "Horse"
        ReturnCode = 400
    elseif sRaceType == "Goat"
        ReturnCode = 410
    elseif sRaceType == "Chicken"
        ReturnCode = 420
    elseif sRaceType == "Hare"
        ReturnCode = 430
    elseif sRaceType == "Cow"
        ReturnCode = 440
    elseif sRaceType == "DwarvenSphere"
        ReturnCode = 500
    elseif sRaceType == "DwarvenSpider"
        ReturnCode = 510
    elseif sRaceType == "DwarvenCenturion"
        ReturnCode = 520
    elseif sRaceType == "DwarvenBallista"
        ReturnCode = 530
    elseif sRaceType == "Lurker"
        ReturnCode = 600
    elseif sRaceType == "Seeker"
        ReturnCode = 610
    elseif sRaceType == "Netch"
        ReturnCode = 620
    elseif sRaceType == "Dragon"
        ReturnCode = 630
    elseif sRaceType == "IceWraith"
        ReturnCode = 640
    elseif sRaceType == "Slaughterfish"
        ReturnCode = 650
    elseif sRaceType == "Wisp"
        ReturnCode = 660
    endif
    return ReturnCode
EndFunction


Int Function GetCurrentSlaveGold()
	
	if SlaveGold_Whiterun > 0
		return SlaveGold_Whiterun

	elseif SlaveGold_Falkreath > 0
		return SlaveGold_Falkreath

	elseif SlaveGold_Windhelm > 0
		return SlaveGold_Windhelm

	elseif SlaveGold_Solitude > 0
		return SlaveGold_Solitude

	elseif SlaveGold_Morthal > 0
		return SlaveGold_Morthal

	elseif SlaveGold_Dawnstar > 0
		return SlaveGold_Dawnstar

	elseif SlaveGold_Markarth > 0
		return SlaveGold_Markarth

	elseif SlaveGold_Riften > 0
		return SlaveGold_Riften

	elseif SlaveGold_Winterhold > 0
		return SlaveGold_Winterhold
	endif

	; None found
	return 0

EndFunction 

string Function GetRaceKeyFast(actor akActor)
    int RaceCode = GetHitterRaceCode(akActor)
    string MyRaceKey = "empty"
    string SlowRaceKey = "empty"
    string TempRaceKey = "empty"
    MyRaceKey = GetRaceKeyFromRaceCode(RaceCode)
    if MyRaceKey == "Boars"
        TempRaceKey = GetRaceKeySlow(akActor)
        if TempRaceKey
            NymTrace("Sexlab Racekey Found for " + MyRaceKey + " - Set to " + TempRaceKey)
            MyRaceKey = TempRaceKey
        else
            NymTrace("No Racekey Found for " + MyRaceKey + " via Sexlab. Using MyRaceKey: " + MyRaceKey)
        endif
        return MyRaceKey
    else
        NymTrace("GetRaceKeyFast - MyRaceKey (fast): " + MyRaceKey)
        return MyRaceKey
    endif
EndFunction


String Function GetRaceKeySlow(actor akActor)

	string TheRaceKey = "empty"
	string tempraceID = "empty"
	tempraceID = MiscUtil.GetActorRaceEditorID(akActor)
	TheRaceKey = sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)

	return TheRaceKey

EndFunction

Bool Function GetAreOnlyAnimals(String CreaturesARace, String CreaturesBRace, String CreaturesCRace, String CreaturesDRace, String CreaturesERace, String CreaturesFRace)
	NymTrace("GetAreOnlyAnimals("+CreaturesARace+")("+CreaturesBRace+")("+CreaturesCRace+")("+CreaturesDRace+")("+CreaturesERace+")("+CreaturesFRace+")")
	
	if CreaturesARace != "empty" && CheckGroupRace(CreaturesARace)
	return false 
	elseif CreaturesBRace != "empty" && CheckGroupRace(CreaturesBRace)
	return false 
	elseif CreaturesCRace != "empty" && CheckGroupRace(CreaturesCRace)
	return false 
	elseif CreaturesDRace != "empty" && CheckGroupRace(CreaturesDRace)
	return false 
	elseif CreaturesERace != "empty" && CheckGroupRace(CreaturesERace)
	return false 
	elseif CreaturesFRace != "empty" && CheckGroupRace(CreaturesFRace)
	return false 	
	else 
	return true 
	endif 

EndFunction 
	
;/
Bool Function AllowDemonicActor(actor akActor, String HasRaceKey, String aName)	

;WIP
		;------------------ ALLOW ---> DEMONIC CREATURES ------------------;
	;checks if Creature is from Mod Demonic Creatures and always allows them (for now)
;	if cfgqst.ModDEM 
	
	actor a = akActor
	
	;Nymtrace("AllowActor ModDEM")
	bool ReturnValue = false 
	
		if a.HasKeyword(cfgqst.DemonicCreature)
		
	;	ReturnValue = true 
		
		;	if Nym()
			;Make MCM Options
	;		ReturnValue = false  
			
			if storqst.IsSavedEnemy(a)
			ReturnValue = true
			endif 
				
		;	endif 

			if HasRaceKey == "Slaughterfishes"
			ReturnValue = false
			elseif storqst.DEM_IsBlockedCreature(aName)
			ReturnValue = false
			endif
			
			NymTrace("#Demonic Creature Name: "+a.GetActorBase().GetName()+" Racekey: "+HasRaceKey+" Allowed: "+ReturnValue)
			
			return ReturnValue
			
		endif
	;endif
	
EndFunction 
/;

Bool Function CheckGroupRace(String CreaturesTempRace)
	
	;checks if the Group is Animals
	
	if CreaturesTempRace == "Draugrs"
	return false 
	elseif CreaturesTempRace == "Rieklings"
	return false 
	elseif CreaturesTempRace == "Falmers"
	return false 
	elseif CreaturesTempRace == "Gargoyles"
	return false 
	elseif CreaturesTempRace == "Trolls"
	return false 
	elseif CreaturesTempRace == "VampireLords"
	return false 
	elseif CreaturesTempRace == "Werewolves"
	return false 
	elseif CreaturesTempRace == "Spriggans"
	return false 
	elseif CreaturesTempRace == "FlameAtronach"
	return false 
	elseif CreaturesTempRace == "FrostAtronach"
	return false 
	elseif CreaturesTempRace == "StormAtronach"
	return false 
	elseif CreaturesTempRace == "Giants"
	return false 	
	elseif CreaturesTempRace == "Wispmothers"
	return false 	
	elseif CreaturesTempRace == "Hagravens"
	return false 	
	elseif CreaturesTempRace == "DragonPriests"
	return false 
	elseif CreaturesTempRace == "Giants"
	return false 	
	elseif CreaturesTempRace == "Wispmothers"
	return false 
	elseif CreaturesTempRace == "DwarvenSpheres"
	return false 
	elseif CreaturesTempRace == "DwarvenSpiders"
	return false 
	elseif CreaturesTempRace == "DwarvenCenturions"
	return false 
	elseif CreaturesTempRace == "DwarvenBallistas"
	return false 
	elseif CreaturesTempRace == "Seekers"
	return false 
	elseif CreaturesTempRace == "Lurkers"
	return false 	
	else 
	return true
	endif 

EndFunction 


Function ProtectActor(actor akActor, bool Start)		;#ProtectActor()
	
	if Nym()
	
	
		if Game.IsPluginInstalled("Spank That Ass.esp")
		Faction _STA_NeverRunUp_Faction
		
			if Start 
			_STA_NeverRunUp_Faction = (Game.GetFormFromFile(0x03020518, "Spank That Ass.esp") as Faction) 
			akActor.AddToFaction(_STA_NeverRunUp_Faction)
			else 
			_STA_NeverRunUp_Faction = (Game.GetFormFromFile(0x03020518, "Spank That Ass.esp") as Faction) 
			akActor.RemoveFromFaction(_STA_NeverRunUp_Faction)
			endif 
		endif 
	endif 
	

EndFunction

Bool Function DD_BadThings()
	
	;LockStatus gets higher the more often we fail. So Bad Things become more likely.
	;other place: locks can be jammed and only be removed by enemies :-)
	
	if Nym()
		Float DD_TempBadThingsChance = cfgqst.KeyDDWiggleFreeFailChance
		Float DD_TempLockStatus = DD_LockStatus as Float
		
		DD_TempBadThingsChance = DD_TempBadThingsChance + DD_TempLockStatus
		
		if D100(DD_TempBadThingsChance)
		return true 
		else 
		return false 
		endif 
	
	else 
		
		if D100(cfgqst.KeyDDWiggleFreeFailChance)
		return true 
		else 
		return false 
		endif 
		
	endif 

EndFunction 



Function FixPee(actor akActor)

	calmqst.RemovePee(akActor, 0)

EndFunction

Worldspace Tamriel

Bool Function IsPlayerIndoors()
		
		if !Tamriel
		Tamriel = (Game.GetFormFromFile(0x0000003C, "Skyrim.esm") as Worldspace) 
		endif 
		;Cell ParentCell = cfgqst.PlayerRef.GetParentCell()	
	;	if ParentCell
	;	NymMessage("We have ParentCell")
	;	else 
	;	NymMessage("We have NO ParentCell")
	;	endif 
		
		;Cell currentCell = cfgqst.PlayerRef.GetParentCell()
		if cfgqst.PlayerRef.GetWorldSpace() == Tamriel
			; This is an interior cell
			NymTrace("IsPlayerIndoors(FALSE A)")
			return false
		else
		
			if cfgqst.PlayerRef.IsInInterior()
			NymTrace("IsPlayerIndoors(TRUE)")
			return true
			else 
			; This is an exterior cell or special worldspace	;DARN; CITIES ALSO BELONG TO THAT! 
			NymTrace("IsPlayerIndoors(FALSE B)")
			return false
			endif 
			
		endif
				

EndFunction 

Function PlayVoiceOnActor(actor akActor, string sVoiceLine, string sPreset)
    if skse.GetPluginVersion("AudioUtilTTS") >= 0 && VoicedComments
        NymTrace("PlayVoiceOnActor: " + AudioUtilTTS.GetActorVoice(akActor))
        AudioUtilTTS.SpeakActorFrom("NaDe", akActor, sVoiceLine, "true", true)
    endif
EndFunction


Function PrepareDeathRebirth(bool death)

	cfgqst.RemoveAllDDevices(true, "empty01", "empty02", "empty03", "empty04", "empty05")	
	cfgqst.SendWashPlayerEvent()
	
	;remove Nade Stuff 
	
	Keyword KWD_zbfWornDevice = (Game.GetFormFromFile(0x0500A17C, "ZaZAnimationPack.esm") As Keyword) 
	
	int ItemsTemp1
	;Gift Flowers (Gifts by KWD)
	Form[] BondageList = new Form[10]
	Keyword[] KWDList = new Keyword[2]
	KWDList[0] = cfgqst.KWD_nade_Bondage
	KWDList[1] = KWD_zbfWornDevice

	;IsNirnroot 001010B1
	;Snowberries, Lavender, Blue, Red, Purple, Yellow Mountain Flower, Dragon's Tongue
	;
	BondageList = SPE_ObjectRef.GetItemsByKeyword(cfgqst.PlayerRef, KWDList, false) 
	ItemsTemp1 = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, BondageList, none) 

EndFunction 


String Function GetRaceKeyFromRaceCode(int RaceCode)

	NymTrace("GetRaceKeyFromRaceCode("+RaceCode+")")

	String ReturnRaceKey = ""

	;====================
	; HUMAN
	;====================
	if RaceCode == 100
		ReturnRaceKey = "Humans"

	;====================
	; HUMANOIDS
	;====================
	elseif RaceCode == 130
		ReturnRaceKey = "Draugrs"
	elseif RaceCode == 140
		ReturnRaceKey = "Rieklings"
	elseif RaceCode == 150
		ReturnRaceKey = "Falmers"
	elseif RaceCode == 160
		ReturnRaceKey = "Gargoyles"
	elseif RaceCode == 161
		ReturnRaceKey = "Trolls"
	elseif RaceCode == 162
		ReturnRaceKey = "VampireLords"
	elseif RaceCode == 163
		ReturnRaceKey = "Werewolves"
	elseif RaceCode == 164
		ReturnRaceKey = "Spriggans"
	elseif RaceCode == 170
		ReturnRaceKey = "FlameAtronach"
	elseif RaceCode == 171
		ReturnRaceKey = "FrostAtronach"
	elseif RaceCode == 172
		ReturnRaceKey = "StormAtronach´"
	elseif RaceCode == 190
		ReturnRaceKey = "Giants"
	elseif RaceCode == 192
		ReturnRaceKey = "Wispmothers"
	elseif RaceCode == 194
		ReturnRaceKey = "Hagravens"
	elseif RaceCode == 196
		ReturnRaceKey = "DragonPriests"


	;====================
	; MAMMALS
	;====================
	elseif RaceCode == 200
		ReturnRaceKey = "Wolves" ; was "Canines" (but Sexlab no like that, we need Dogs or Wolves)
	elseif RaceCode == 201
		ReturnRaceKey = "Dogs"		
	elseif RaceCode == 210
		ReturnRaceKey = "Skeevers"
	elseif RaceCode == 220
		ReturnRaceKey = "Bears"
	elseif RaceCode == 230
		ReturnRaceKey = "Boars"
	elseif RaceCode == 240
		ReturnRaceKey = "Deer"
	elseif RaceCode == 250
		ReturnRaceKey = "Sabrecats"
	elseif RaceCode == 260
		ReturnRaceKey = "Mammoths"
	elseif RaceCode == 270
		ReturnRaceKey = "Horkers"


	;====================
	; INSECTS
	;====================
	elseif RaceCode == 300
		ReturnRaceKey = "Chaurus"
	elseif RaceCode == 310
		ReturnRaceKey = "ChaurusHunters"
	elseif RaceCode == 320
		ReturnRaceKey = "Spiders"
	elseif RaceCode == 330
		ReturnRaceKey = "AshHoppers"
	elseif RaceCode == 340
		ReturnRaceKey = "Mudcrabs"


	;====================
	; FARM
	;====================
	elseif RaceCode == 400
		ReturnRaceKey = "Horses"
	elseif RaceCode == 410
		ReturnRaceKey = "Goats"
	elseif RaceCode == 420
		ReturnRaceKey = "Chickens"
	elseif RaceCode == 430
		ReturnRaceKey = "Hares"
	elseif RaceCode == 440
		ReturnRaceKey = "Cows"


	;====================
	; DWARVEN
	;====================
	elseif RaceCode == 500
		ReturnRaceKey = "DwarvenSpheres"
	elseif RaceCode == 510
		ReturnRaceKey = "DwarvenSpiders"
	elseif RaceCode == 520
		ReturnRaceKey = "DwarvenCenturions"
	elseif RaceCode == 530
		ReturnRaceKey = "DwarvenBallistas"


	;====================
	; REST
	;====================
	elseif RaceCode == 600
		ReturnRaceKey = "Lurkers"
	elseif RaceCode == 610
		ReturnRaceKey = "Seekers"
	elseif RaceCode == 620
		ReturnRaceKey = "Netches"
	elseif RaceCode == 630
		ReturnRaceKey = "Dragons"
	elseif RaceCode == 640
		ReturnRaceKey = "IceWraiths"
	elseif RaceCode == 650
		ReturnRaceKey = "Slaughterfishes"
	elseif RaceCode == 660
		ReturnRaceKey = "Wisps"

	endif

	return ReturnRaceKey
	
EndFunction 

	
;/

Dogs, Foxes are Canines 

BoarsMounted are Boars 

race NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(430)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Rabbits <> MyRaceKey: Hares
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(150)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Falmers <> MyRaceKey: Falmers
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(230)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: BoarsMounted <> MyRaceKey: Boars
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(410)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Goats <> MyRaceKey: Goats
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(410)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Goats <> MyRaceKey: Goats
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(410)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Goats <> MyRaceKey: Goats
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetHitterRaceCode()
[01/23/2026 - 12:18:43PM] NAKED DEFEAT storagequest: (#trace NYM) GetRaceKeyFromRaceCode(200)
[01/23/2026 - 12:18:43PM] NAKED DEFEAT configquest: (#trace NYM) TheRaceKey: Foxes <> MyRaceKey: Canines



/;

Bool Function DEM_IsBlockedCreature(String sCreatureName)

	if sCreatureName == "Grey Squirrel"
	return true 
	elseif sCreatureName == "Red Squirrel"
	return true 
	elseif sCreatureName == "Wood Duck Male"
	return true 
	elseif sCreatureName == "Wood Duck Female"
	return true 
	elseif sCreatureName == "Pheasant Male"
	return true 
	elseif sCreatureName == "Pheasant Female"
	return true 
	elseif sCreatureName == "Horseshoe Crab"	
	return true 
	elseif sCreatureName == "Beaked Dinosaur Brown"	
	return true 
	elseif sCreatureName == "Beaked Dinosaur Grey"	
	return true 
	elseif sCreatureName == "Beaked Dinosaur Leo"	
	return true 
	elseif sCreatureName == "Beaked Dinosaur Zebra"	
	return true 
	elseif sCreatureName == "Mushroom"	
	return true 	
	else 
	return false
	endif 
	
EndFunction 

Function HideHUD()
	NymTrace("HideHUD()")
	
	if Nym()
	consoleutil.ExecuteCommand("tm")
	endif 

EndFunction 

;Bool HUD_hidden = false

Function SexStartMaintenance(int iSexState)
    NymTrace("SexStartMaintenance")
    if cfgqst.SexScene
        NymTrace("SexStartMaintenance - #ERROR DOUBLE START")
    else
        defqst.SexDuration = 0
        cfgqst.SexScene = true
        SendModEvent("StartSexFuckingSoundLoop", "", 0.0)
        NymTrace("IsShowingMenus(" + po3_sksefunctions.IsShowingMenus() + ")")
        if !cfgqst.AlreadyImmobilized
            Toggle_PC_HeadTracking()
        endif
        if po3_sksefunctions.IsShowingMenus()
            HideHUD()
        endif
        if Nym()
            defqst.DrippingPussy(true)
            if cfgqst.Gagged || cfgqst.IsPlayerGagged()
                nade_ddint.RemoveGag()
                nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Black Leather Gag (Ring)")
            endif
        endif
        cfgqst.SexState = iSexState
    endif
EndFunction




Function SexEndMaintenance()
NymTrace("SexEndMaintenance")
		;defqst.SexDuration = 0
		Riding = false	;Cowgirl Riding Lessons over (needed for stuff and for expressions)
		
		if !cfgqst.SexScene
		NymTrace("SexEndMaintenance - #ERROR DOUBLE START")
		
		else 
			cfgqst.SexScene = false
			ExhaustionChange(1)
			;Exhaustion += 1
			
			NymTrace("IsShowingMenus("+PO3_SKSEFunctions.IsShowingMenus()+")")
			
			if !PO3_SKSEFunctions.IsShowingMenus() 	;prevent double starts and stuck hidden hud
			HideHUD()  ;UNHIDE ---> Nym() 
			endif 
			
			if Nym() 
			defqst.DrippingPussy(false)
			endif 
			
			defqst.ToggleDroolPlayer(false)
			PO3_SKSEFunctions.RemoveAllModItems(cfgqst.PlayerRef, "Tongues.esp", true)
			ForceOpen = 0
			Sucking = false 
			;defqst.TongueTimer = 5
			defqst.UnequipTonguesPlayer("forced")	
			cfgqst.SexState = 0
			SexFuckingPartners = 0
			SexFuckingSound = 0
			defqst.GetMouthStatePlayer()
			calmqst.PlayRaperExpressions()	;resets Raper Expressions
			if !cfgqst.IsPlayerGagged()
			cfgqst.Gagged = false
			endif 
		endif 

EndFunction 


Function PlaySoundSexMonster()	;how many sounds?
			SoundSexMonster[0].Play(cfgqst.PlayerRef)	
EndFunction

GlobalVariable GameHour	

Float Function GetGameHour()

		if !GameHour
		GameHour = (Game.GetFormFromFile(0x00000038, "Skyrim.esm") As GlobalVariable)	
		endif 
	
		return GameHour.GetValue()

EndFunction 

Function PrintTimeToLog()
		
		GlobalVariable GameYear	= (Game.GetFormFromFile(0x00000035, "Skyrim.esm") As GlobalVariable)	
		GlobalVariable GameMonth	= (Game.GetFormFromFile(0x00000036, "Skyrim.esm") As GlobalVariable)
		GlobalVariable GameDay	= (Game.GetFormFromFile(0x00000037, "Skyrim.esm") As GlobalVariable)
		GameHour = (Game.GetFormFromFile(0x00000038, "Skyrim.esm") As GlobalVariable)	

		NymTrace("##Hour: "+GameHour.GetValue()+")")
		NymTrace("##Day: "+GameDay.GetValue()+")")
		NymTrace("##Month: "+GameMonth.GetValue()+")")
		NymTrace("##Year: "+GameYear.GetValue()+")")	
		
EndFunction 

Bool Function IsBlackSmith(actor akActor)

	Faction BlackSmithFaction

	if !BlackSmithFaction
	BlackSmithFaction = game.GetFormFromFile(0x0005091D, "Skyrim.esm") as Faction
	endif 
	
	if akActor.IsInFaction(BlackSmithFaction)
	return true 
	else 
	return false 
	endif 
		
EndFunction 

Function SetDefeat_ID()
	
	if Defeat_ID == 0
	Defeat_ID = 1000
	endif 
EndFunction 

string Function PlayerEssentialStatus()
    bool IsEssential = false
    bool ShouldBeEssential = true
    if cfgqst.PlayerRef.GetActorBase().IsEssential()
        return "true"
    elseif cfgqst.NoEssentialPlayer
        return "Disabled by You (MCM)"
    else
        return "False (Bugged by other Mod)"
    endif
EndFunction

Function PushActorAwayFunc(actor akActor1, actor akActor2, float fForce, string sSource)
	
	DebugTrace("PushActorAwayFunc(Source: "+sSource+")")
	
	if !cfgqst.Ragdolling ;not currently Ragdolling 
	
		if cfgqst.Ragdoll	;ragdolling allowed
		
		;Actor1 PUSHES Actor2. fForce can be negative!!!!!)
		akActor1.PushActorAway(akActor2, fForce)
		endif 
	endif 

EndFunction 





Function Summon_Horse()
    form Carrot
    NymTrace("Summon_Horse()")
    bool bHasCarrot = false
    int iServiceChance = 5
    if SummonedHorses
        SummonedHorses = false
        Horse[0].DisableNoWait(false)
        Horse[0].Delete()
        Horse[0] = None
    endif
    IdleHorseTimer = 0
    AssistedTravelTime = 0
    if cfgqst.ModPLUGS
        Armor CarrotPlug = (game.GetFormFromFile(3427, "pchsImmersivePlugs.esp") as Armor)
        if CarrotPlug == cfgqst.PlayerRef.GetWornForm(262144)
            bHasCarrot = true
        else
            Carrot = game.GetFormFromFile(412480, "Skyrim.esm")
            if cfgqst.PlayerRef.GetItemCount(Carrot) > 0
                cfgqst.PlayerRef.RemoveItem(Carrot, 1, true)
                cfgqst.PlayerRef.AddItem(CarrotPlug, 1, true)
                cfgqst.PlayerRef.EquipItem(CarrotPlug, false, true)
                bHasCarrot = true
            endif
        endif
    else
        form mangled_carrot_0 = game.GetFormFromFile(412480, "Skyrim.esm")
        if cfgqst.PlayerRef.GetItemCount(mangled_carrot_0) > 0
            cfgqst.PlayerRef.RemoveItem(mangled_carrot_0, 1, true)
            bHasCarrot = true
        endif
    endif
    if !InWilderness
        ScreenMessage("You need to be in the Wilderness to summon the Horse")
    elseif !bHasCarrot && cfgqst.ModPLUGS
        ScreenMessage("You need a carrot in your ass to summon the magical Horse")
    elseif !bHasCarrot
        ScreenMessage("You need a carrot to summon the magical Horse")
    else
        ScreenMessage("You summon a magical Horse")
        effectshader PunishmentShader = (game.GetFormFromFile(245625, "Skyrim.esm") as effectshader)
        cfgqst.Immobilize(true)
        while cfgqst.PlayerRef.IsWeaponDrawn()
            cfgqst.PlayerRef.SheatheWeapon()
            utility.Wait(1.0)
        endwhile
        idle Ritual = (game.GetFormFromFile(989856, "Skyrim.esm") as idle)
        cfgqst.PlayerRef.PlayIdle(Ritual)
        cfgqst.StartPunishmentEffect("Shock")
        SendModEvent("Moan", "", 0.0)
        PunishmentShader.Play(cfgqst.PlayerRef, 3.0)
        utility.Wait(3.0)
        cfgqst.StartPunishmentEffect("Shock")
        SendModEvent("Moan", "", 0.0)
        utility.Wait(2.0)
        cfgqst.StartPunishmentEffect("Shock")
        SendModEvent("Moan", "", 0.0)
        cfgqst.FadeToBlack(true)
        objectreference TempAnActor = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(429319, "Skyrim.esm"), 1, false, false)
        Horse[0] = (TempAnActor as actor)
        Horse[0].MoveTo(cfgqst.PlayerRef, 200.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ()), 200.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - GlobalSpawnHeight, false)
        calmqst.PlaySummonEffect(Horse[0])
        if cfgqst.IsPlayerNaked()
            iServiceChance = iServiceChance + 40
        endif
        if cfgqst.IsPlayerBarefoot()
            iServiceChance = iServiceChance + 30
        endif
        if cfgqst.IsPlayerCumsoaked()
            iServiceChance = iServiceChance + 20
        endif
        utility.Wait(1.0)
        cfgqst.FadeToBlack(false)
        cfgqst.Immobilize(false)
        SummonedHorses = true
        ScreenMessage("The Horse wants its carrot")
        utility.Wait(3.0)
        calmqst.StartSexFast("FastSlaveRape", "Eat Carrot", Horse[0], None, cfgqst.PlayerRef)
        utility.Wait(3.0)
        while cfgqst.SexScene
            utility.Wait(1.0)
        endwhile
        if D100(iServiceChance)
            ScreenMessage("The Horse will ride you first...prepare")
            calmqst.StartSexFast("FastSlaveRape", "Horses", Horse[0], None, cfgqst.PlayerRef)
        endif
    endif
EndFunction


Function DeleteCarrot()

		NymTrace("DeleteCarrot()")
		ObjectReference ClosestCarrot


	;	Form Carrot = Game.GetFormFromFile(0x00064B40, "Skyrim.esm") as Form 
		;Form PlugTorchTemp = Game.GetFormFromFile(0x0002312, "pchsImmersivePlugs.esp") as Form ;torch
		Form DroppedCarrot = Game.GetFormFromFile(0x00064B40, "Skyrim.esm") as Form ;Carrot

		if DroppedCarrot
		NymTrace("DeleteCarrot(DroppedCarrot filled)")
		else 
		NymTrace("DeleteCarrot(DroppedCarrot NOT filled)")
		endif 
		
		ClosestCarrot = Game.FindClosestReferenceOfTypeFromRef(DroppedCarrot, cfgqst.PlayerRef, 500.0)
				
		if ClosestCarrot		
		NymTrace("DeleteCarrot(ClosestCarrot FOUND)")
		ClosestCarrot.DisableNoWait()
		ClosestCarrot.Delete()
		else 
		NymTrace("DeleteCarrot(ClosestCarrot NOT FOUND)")

		endif

EndFunction	

int IdleHorseTimer = 0


Function MonitorHorses()

	NymTrace("MonitorHorses(IdleHorseTimer: "+IdleHorseTimer+")")
	
	if cfgqst.PlayerRef.IsOnMount()
	AssistedTravelTime += 3
	elseif !cfgqst.Sexscene 	
	IdleHorseTimer += 3
	endif 
	

	;Horse Despawns when not used
	if IdleHorseTimer > 60 && D100(IdleHorseTimer)
	ScreenMessage("Your magical horse has despawned")
	SummonedHorses = false
	Horse[0].DisableNoWait()
	Horse[0].Delete()
	Horse[0] = none
	endif 

EndFunction 


bool Function IsDemonicCreature(actor akActor, string sName)
    actor a = akActor
    if a.HasKeyword(KWD_DemonicCreature)
        return true
    elseif Nym()
        int intFormID = (akActor.GetBaseObject() as actorbase).GetFormID()
        int iModIndex = math.RightShift(intFormID, 24)
        string stringFileNameBASE = game.GetModName(iModIndex)
        intFormID = akActor.GetFormID()
        iModIndex = math.RightShift(intFormID, 24)
        string stringFileNameREF = game.GetModName(iModIndex)
        NymTrace("IsDemonicCreature(" + sName + "): BASE = " + stringFileNameBASE + " REF = " + stringFileNameREF)
        if stringFileNameBASE == "DemonicCreatures.esp"
            return true
        elseif stringFileNameREF == "DemonicCreatures.esp"
            return true
        else
            return false
        endif
    else
        return false
    endif
EndFunction

Keyword KWD_CFArmorAroused

Function FixCreatureSkin_HARD(actor akCreature)
	
	Bool IsAroused = false
	Bool IsDemonicCreature = false
	String sCreatureName = "NoName"
	
	String sRaceKey = GetRaceKeyFast(akCreature)
	
	
	if Nym()
	sCreatureName = cfgqst.GetActorName(akCreature)	
	endif 
	
	if !KWD_CFArmorAroused
	KWD_CFArmorAroused = (Game.GetFormFromFile(0x070068F6, "CreatureFramework.esm") As keyword) ;CFArmorAroused 
	endif 
	
	if akCreature.WornHasKeyword(KWD_CFArmorAroused)
	IsAroused = true 
	NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" ("+sRaceKey+")(DEM:"+IsDemonicCreature+") -> Aroused")
	else 
	NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" ("+sRaceKey+")(DEM:"+IsDemonicCreature+") -> NOT Aroused")
	endif 
	
	;0.	Check if WornHasKeyword
	;1. check if Dem Creature 
	;2. get RaceCode 
	;3. 
	
	
	if !IsAroused 
		
		if IsDemonicCreature
			
			if sRaceKey == "Gargoyles"
			
				;WENDIGO 
				if sCreatureName == "Wendigo"
				NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
				Armor Armor_HARD	
				Armor_HARD = (Game.GetFormFromFile(0x0706283E, "DemonicCreatures.esp") As Armor) ;DEMSkinWendigo2HARD (Wendigo)
				akCreature.EquipItem(Armor_HARD)
				elseif sCreatureName == "Lesser Wendigo"
				NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
				Armor Armor_HARD	
				Armor_HARD = (Game.GetFormFromFile(0x0706283D, "DemonicCreatures.esp") As Armor) ;DEMSkinWendigo1HARD (Lesser Wendigo)
				akCreature.EquipItem(Armor_HARD)
				endif 
				
			elseif sRaceKey == "Trolls"
			
				;OGRIM 
				if sCreatureName == "Ogrim"
				NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
				Armor Armor_HARD	
				Armor_HARD = (Game.GetFormFromFile(0x0704E2B7, "DemonicCreatures.esp") As Armor) ;DEMSkinOgrimHARD
				akCreature.EquipItem(Armor_HARD)
				
				;Draugr Brute Deathlord 
				elseif sCreatureName == "Draugr Brute Deathlord"
				NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
				Armor Armor_HARD	
				Armor_HARD = (Game.GetFormFromFile(0x070629AF, "DemonicCreatures.esp") As Armor) ;DEMSkinDraugrBrute05HARD
				akCreature.EquipItem(Armor_HARD)
				
				
				elseif sCreatureName == "404" ;WIP
				NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
				Armor Armor_HARD	
				Armor_HARD = (Game.GetFormFromFile(0x0706283D, "DemonicCreatures.esp") As Armor) ;DEMSkinWendigo1HARD (Lesser Wendigo)
				akCreature.EquipItem(Armor_HARD)
				
				
				
				endif 
			
			else 
			
			NymTrace("FixCreatureSkin_HARD (DEM) - "+sCreatureName+" (DEM)  -> "+sRaceKey+" -> #ERROR: NOT SAVED")

			;Female Falmer Falmer 00025D36 ; REF 3B7D8900
			;ARMOR: DLC1SkinFalmerFemale01Nude 3D011D7C 
			
			endif 
		
		;Vanilla Creatures 
		else 
			;FALMERS 
			if sRaceKey == "Falmers"
			NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
			Armor Armor_HARD	
			Armor_HARD = (Game.GetFormFromFile(0x08002310, "MoreNastyCritters.esp") As Armor) ;FalmerMale04Hard 
			akCreature.EquipItem(Armor_HARD)
			
			;DRAUGRS 
			elseif sRaceKey == "Draugrs"
			NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
			Armor Armor_HARD	
			Armor_HARD = (Game.GetFormFromFile(0x08002303, "MoreNastyCritters.esp") As Armor) ;DraugrMale04Hard 
			akCreature.EquipItem(Armor_HARD)
			
			;SKELETONS 
			elseif sRaceKey == "Skeletons"
			NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
			Armor Armor_HARD	
			Armor_HARD = (Game.GetFormFromFile(0x08011D83, "MoreNastyCritters.esp") As Armor) ;SkinSkeletonArmorHard 
			akCreature.EquipItem(Armor_HARD)
			
			;RIEKLINGS 
			elseif sRaceKey == "Rieklings"
			NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> equip HARDness")
			Armor Armor_HARD	
			Armor_HARD = (Game.GetFormFromFile(0x08005901, "MoreNastyCritters.esp") As Armor) ;SkinRiekling01Hard 
			akCreature.EquipItem(Armor_HARD)
			
			else 
			
			NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> "+sRaceKey+" -> #ERROR: NOT SAVED")
			
			endif 
		endif 
		;RIEKLINGS MOUNTED 
	;	elseif GetHitterRaceCode(akCreature) == 150
	;	NymTrace("FixCreatureSkin_HARD - "+sCreatureName+" -> Rieklings (Mounted) -> equip HARDness")
	;	Armor Armor_HARD	
	;	Armor_HARD = (Game.GetFormFromFile(0x0800BA0A, "MoreNastyCritters.esp") As Armor) ;DLC2_SkinMountedRiekling_VariantAHard 
	;	akCreature.EquipItem(Armor_HARD)		
	;	endif 
		
	endif 

	
	

EndFunction 


Function StartPlayerSoundEffect(String sType, float fVolume, int iDuration)
NymTrace("StartPlayerSoundEffect "+sType+" (Volume:"+fVolume+")(Duration:"+iDuration+")")
	
	Sound mySFX	
	int i
	
	if (sType == "Flute") && (cfgqst.Gagged || cfgqst.IsPlayerGagged())
	
		i = Utility.RandomInt(1,2)
		if i == 1 					
		sType = "Drums"

		elseif i == 2 			
		sType = "Lute"
		endif
	endif
	
	if sType == "Drums"
		i = Utility.RandomInt(1,3)
		if i == 1 					
		mySFX = (Game.GetFormFromFile(0x000D872D, "Skyrim.esm") As Sound) ;BardDrum01

		elseif i == 2 			
		mySFX = (Game.GetFormFromFile(0x000D872E, "Skyrim.esm") As Sound) ;BardDrum02

		elseif i == 3 			
		mySFX = (Game.GetFormFromFile(0x000D872F, "Skyrim.esm") As Sound) ;BardDrum03
		endif

	elseif sType == "Flute"
	
		i = Utility.RandomInt(1,6)
		NymTrace("StartPlayerSoundEffect "+sType+" (Number:"+i+")")
		
		if i == 1
		mySFX = (Game.GetFormFromFile(0x000DB85B, "Skyrim.esm") As Sound) ;BardFlute01

		elseif i == 2				
		mySFX = (Game.GetFormFromFile(0x00096109, "Skyrim.esm") As Sound) ;BardFlute02

		elseif i == 3					
		mySFX = (Game.GetFormFromFile(0x0010AA13, "Skyrim.esm") As Sound) ;BardFlute03

		elseif i == 4					
		mySFX = (Game.GetFormFromFile(0x0010AA14, "Skyrim.esm") As Sound) ;BardFlute04

		elseif i == 5					
		mySFX = (Game.GetFormFromFile(0x0010AA15, "Skyrim.esm") As Sound) ;BardFlute05

		elseif i == 6				
		mySFX = (Game.GetFormFromFile(0x0010AA16, "Skyrim.esm") As Sound) ;BardFlute06
		endif 

	elseif sType == "Lute"	
		
		i = Utility.RandomInt(1,4)
		
		if i == 1				
		mySFX = (Game.GetFormFromFile(0x0010E444, "Skyrim.esm") As Sound) ;BardLute01

		elseif i == 2					
		mySFX = (Game.GetFormFromFile(0x0010E445, "Skyrim.esm") As Sound) ;BardLute02

		elseif i == 3						
		mySFX = (Game.GetFormFromFile(0x0010E446, "Skyrim.esm") As Sound) ;BardLute03

		elseif i == 4					
		mySFX = (Game.GetFormFromFile(0x0010E447, "Skyrim.esm") As Sound) ;BardLute04
		endif
	endif 
	
	if mySFX
	Sound_InstanceID_SoundEffect = mySFX.play(cfgqst.PlayerRef) 
	Sound.SetInstanceVolume(Sound_InstanceID_SoundEffect, fVolume) 
	else 
	NymBox("#ERROR did not Play")
	endif 

EndFunction 

Function StopPlayerSoundEffect()
	
	Sound.StopInstance(Sound_InstanceID_SoundEffect)

EndFunction 

;############################################################################################################################################################################################################
;#############	 EVENT FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################


Event OnStartAddRapeHands(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	NymTrace("OnStartAddRapeHands(new)")
	cfgqst.AddRapeHands()
EndEvent

Event OnStartAddRapeTears(String EventName, String ArgString, Float ArgNum, Form Sender)	;				
	NymTrace("OnStartAddRapeTears(new)")
	cfgqst.AddRapeTears()
EndEvent

Event OnStartWhipping_00(String EventName, String ArgString, Float ArgNum, Form Sender)	

	if WhippingQuest_00_Running
	NymTrace("OnStartWhipping_00(#ERROR ALREADY RUNNING)")
	else
	Utility.Wait(0.5)
	NymTrace("OnStartWhipping_00()")
	whip00qst.Startwhipquest_00()  
	endif

EndEvent 


Event OnStartDropQuest(String EventName, String ArgString, Float ArgNum, Form Sender)	

	NymTrace("OnStartDropQuest()")
	dropqst.StartDropQuest()  

EndEvent 


Event OnInit()
	
EndEvent

Function PlayTestVoiceOnFollower()
EndFunction
 
Event OnMenuClose(string MenuName)
    if IsLocalSlave() && !AllowVanillaSleep
        if MenuName == "Sleep/Wait Menu"
            NymTrace("Sleep/Wait Menu has closed.")
            BadMessage("You will be punished for loitering")
            utility.Wait(2.0)
            slaveqst.ImmediatePunishment = true
            cfgqst.PublicExposure = cfgqst.PublicExposure + 100
        endif
    elseif MenuName == "MapMenu"
        ProcessAmbush("MapMenu")
    elseif MenuName == "InventoryMenu"
        ProcessAmbush("InventoryMenu")
    elseif MenuName == "ContainerMenu"
        NymMessage("Container Menu closed [" + defqst.AmbushChance + "]")
        ProcessAmbush("ContainerMenu Close")
    elseif MenuName == "Lockpicking Menu"
        int LockPickCountAfter = cfgqst.PlayerRef.GetItemCount(Lockpick)
        int LockPicksUsed = LockPickCount - LockPickCountAfter
        LockPicksUsed = LockPicksUsed + 1
        defqst.AmbushChance = defqst.AmbushChance + LockPicksUsed
        NymMessage("Lockpicking Menu closed - Lockpicks used: " + LockPicksUsed)
        ProcessAmbush("Lockpicking Menu")
    endif
EndEvent


Function ProcessAmbush(string sSender)
    if Nym()
        NymTrace("ProcessAmbush [Sender: " + sSender + "][AmbushChance: " + defqst.AmbushChance + "]")
        bool AllowAmbush = true
        bool AllowDodge = false
        int iDistance = 300
        if InWilderness || InDungeon
            NymTrace("ProcessAmbush(InWilderness/InDungeon)")
            if sSender == "MapMenu"
                defqst.AmbushChance = defqst.AmbushChance + 2
            elseif sSender == "InventoryMenu"
                defqst.AmbushChance = defqst.AmbushChance + 1
            elseif sSender == "ContainerMenu Close"
                defqst.AmbushChance = defqst.AmbushChance + 1
                iDistance = -300
            endif
        elseif InCity || InVillage
            cfgqst.PublicExposure = cfgqst.PublicExposure + utility.RandomInt(5, 8)
            AllowAmbush = false
        else
            NymTrace("ProcessAmbush(Elsewhere)")
            AllowAmbush = false
        endif
        if AllowDodge
            cfgqst.StartDeviousTrap(0, defqst.AmbushChance)
        elseif AllowAmbush && D100(defqst.AmbushChance)
            defqst.AmbushChance = 0
            cfgqst.StartCombatAmbush("Random Enemies", 0, iDistance, true)
        endif
    endif
EndFunction


Bool Function IsSlotOccupied(actor akActor, int Slot)		;#IsSlotOccupied()
	
	Form a = None
		
		if (Slot == 30)
		a = akactor.GetWornForm(0x00000001) 	;30 - head				30, 31, 32, 33, 37, 39
		elseif (Slot == 31) 
		a = akactor.GetWornForm(0x00000002) 	;31 - hair/HELMET
		elseif (Slot == 32) 					
		a = akactor.GetWornForm(0x00000004)		;32 - BODY
		elseif (Slot == 33)
		a = akactor.GetWornForm(0x00000008)		;33 - HANDS
		elseif (Slot == 34)
		a = akactor.GetWornForm(0x00000010)		;34 - Forearms
		elseif (Slot == 35)
		a = akactor.GetWornForm(0x00000020)		;35 - Amulet 	
		elseif (Slot == 36) 
		a = akactor.GetWornForm(0x00000040)		;36 - Ring 
		elseif (Slot == 37)	 	
		a = akactor.GetWornForm(0x00000080)		;37 - FEET
		elseif (Slot == 38) 
		a = akactor.GetWornForm(0x00000100)		;38 - Calves
		elseif (Slot == 39)
		a = akactor.GetWornForm(0x00000200)		;39 - SHIELD
		elseif (Slot == 40)
		a = akactor.GetWornForm(0x00000400)		;40 - TAIL
		elseif (Slot == 41) 
		a = akactor.GetWornForm(0x00000800)		;41 - Long Hair
		elseif (Slot == 42) 
		a = akactor.GetWornForm(0x00001000)		;42 - Circlet
		elseif (Slot == 43) 
		a = akactor.GetWornForm(0x00002000)		;43 - Ears 
		elseif (Slot == 44) 
		a = akactor.GetWornForm(0x00004000)		;44 - Unnamed 		(DD Gag/Mouth, SexlabTongue)
		elseif (Slot == 45)	
		a = akactor.GetWornForm(0x00008000)		;45 - Unnamed 		(DD Collars)
		elseif (Slot == 46) 
		a = akactor.GetWornForm(0x00010000)		;46 - Unnamed 		(DD Armbinder/Yoke, Cloaks)
		elseif (Slot == 47) 
		a = akactor.GetWornForm(0x00020000)		;47 - Unnamed 		(DD -, Backpacks, Wings)
		elseif (Slot == 48) 
		a = akactor.GetWornForm(0x00040000)		;48 - Unnamed 		(DD plugs anal, Backpack left pouch)
		elseif (Slot == 49)
		a = akactor.GetWornForm(0x00080000)		;49 - Unnamed 		(DD Body harness/Chastity belt)
		elseif (Slot == 50) 
		a = akactor.GetWornForm(0x00100000)		;50 - Decap. Head	(DD Piercings Vaginal, bracelets)
		elseif (Slot == 51)
		a = akactor.GetWornForm(0x00200000)		;51 - Decapitate
		elseif (Slot == 52) 
		a = akactor.GetWornForm(0x00400000)		;52 - Unnamed
		elseif (Slot == 53) 
		a = akactor.GetWornForm(0x00800000)		;53 - Unnamed	(DD Cuffs Legs) , BIKINI THIGH
		elseif (Slot == 54) 
		a = akactor.GetWornForm(0x01000000)		;54 - Unnamed	(DD Plugs vaginal)
		elseif (Slot == 55) 
		a = akactor.GetWornForm(0x02000000)		;55 - Unnamed	(DD Blindfold)
		elseif (Slot == 56)
		a = akactor.GetWornForm(0x04000000)		;56 - Unnamed	(DD Chastity Bra)
		elseif (Slot == 57)	
		a = akactor.GetWornForm(0x08000000)		;57 - Unnamed	(DD Vaginal Plugs)
		elseif (Slot == 58)
		a = akactor.GetWornForm(0x10000000)		;58 - Unnamed	(DD Body Harness/Corset
		elseif (Slot == 59) 
		a = akactor.GetWornForm(0x20000000)		;59 - Unnamed	(DD Cuffs Arms)
		elseif (Slot == 60) 
		a = akactor.GetWornForm(0x40000000)		;60 - Unnamed
		elseif (Slot == 61) 
		a = akactor.GetWornForm(0x80000000)		;61 - Unnamed
		endif
		
		if a 
		return true 
		else 
		return false
		endif

EndFunction 

Function Bridge_PlaceExplosion(actor akActor, string sExplosion)
    defqst.PlaceExplosion(akActor, sExplosion)
EndFunction


String Function GetPlayerBondageStatus()

	if cfgqst.PlayerRef.WornHasKeyword(calmqst.KWD_nade_Cuffs)
	return "Cuffs"
	elseif cfgqst.PlayerRef.WornHasKeyword(calmqst.KWD_nade_Yoke)
	return "Yoke"
	elseif cfgqst.PlayerRef.WornHasKeyword(calmqst.KWD_nade_Armbinder)
	return "Armbinder"
	elseif nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
	return "DD Heavy Bondage"
	else 
	return "Unbound" 
	endif 
	
EndFunction 

String Function GetDefeatTypeFaction(actor akActor)
	;This needs to be exapnded to relevant Factions:
	;GUARDS / VAMPIRES / WARLOCKS/NECROMANCERS / Soldiers? 
	
	if Nym()
		
		Faction ForswornFaction = Game.GetFormFromFile(0x00043599, "Skyrim.esm") as Faction
		
		if akActor.IsInFaction(cfgqst.BanditFaction)
		return "Bandits"
		elseif akActor.IsInFaction(ForswornFaction)
		return "Forsworn"
		else 
		return "Humans"
		endif 
	else 
		if akActor.IsInFaction(cfgqst.BanditFaction)
		return "Bandits"
		else 
		return "Humans"
		endif 
	
	endif 

EndFunction 


Bool Function IsActorInFaction(String sFaction, actor akActor)

	;WARLOCKS!!!
	
	Actor a = akActor as Actor	
	
	NymTrace("IsActorInFaction("+sFaction+")")
	Debug.trace("NAKED DEFEAT configquest: GetRaceKeyFromFaction(): actor: "+a.GetBaseObject().GetName())	
	
	;#todo: expand and refine	
										;DRAUGR												;DAEDRA									;DREMORA											;SKELETONS
	if sFaction == "Draugrs" && (a.IsInFaction(cfgqst.FactionsHumanoid[1]) || a.IsInFaction(cfgqst.FactionsHumanoid[0]) || a.IsInFaction(cfgqst.FactionsHumanoid[13]) || a.IsInFaction(cfgqst.FactionsHumanoid[12]))
	return true
	elseif sFaction == "Falmers" && a.IsInFaction(cfgqst.FactionsHumanoid[2]) ;Falmer
	return true
	
	elseif sFaction == "Giants" && a.IsInFaction(cfgqst.FactionsHumanoid[3]) ;Giants
	return true
															;Spriggan							;Spriggan Predator
	elseif sFaction == "Spriggans" && (a.IsInFaction(cfgqst.FactionsHumanoid[4]) || a.IsInFaction(cfgqst.FactionsHumanoid[6]))
	return true

	elseif sFaction == "Rieklings" && a.IsInFaction(cfgqst.FactionsHumanoid[5]) ;Rieklings
	return true

	elseif sFaction == "Trolls" && a.IsInFaction(cfgqst.FactionsHumanoid[7]) ;Troll
	return true
	
	elseif sFaction == "DwarvenCenturions" && a.IsInFaction(cfgqst.FactionsHumanoid[12]) ;DwarvenAutomaton
	return true
	else
	NymTrace("IsActorInFaction no valid faction found")	
	return false
	endif
	
EndFunction 

Bool Function IsExhausted()		;#IsExhausted()
	
	int ConstitutionPlayer = 5	;level up this value with training, is lowered when dieing 
	
	if Nym() && Exhaustion > 10
	Exhaustion = 5
	endif 
	
	if Exhaustion > ConstitutionPlayer && IsLocalSlave()
	return true 
	else 
	return false 
	endif 

EndFunction

Function WashFast()
    cfgqst.SendWashPlayerEvent()
    utility.Wait(5.0)
    if folqst.Actor_Follower01
        cfgqst.SendModEvent_BiS_WashActor(folqst.Actor_Follower01)
    endif
    utility.Wait(1.0)
EndFunction

int Function GetPlayerClothesCoverage()
    int returnvalue = 0
    if IsSlotOccupied(cfgqst.PlayerRef, 37)
        returnvalue = returnvalue + 20
    endif
    if IsSlotOccupied(cfgqst.PlayerRef, 31) || IsSlotOccupied(cfgqst.PlayerRef, 42)
        returnvalue = returnvalue + 20
    endif
    if IsSlotOccupied(cfgqst.PlayerRef, 33)
        returnvalue = returnvalue + 20
    endif
    if IsSlotOccupied(cfgqst.PlayerRef, 32)
        returnvalue = returnvalue + 40
    endif
    NymTrace("GetPlayerClothesCoverage(" + returnvalue + ")")
    return returnvalue
EndFunction

Function RevertLootedContainerList()
    NymTrace("RevertLootedContainerList()")
    NymMessage("RevertLootedContainerList()")
    LootedContainerList.Revert()
EndFunction

Function ProcessCrosshairRef(objectreference CrossHairReference)
    bool IsActorRef = false
    float fTrapChance = CursedContainersChance
    int iAddLoot = 0
    string sRefName = CrossHairReference.GetBaseObject().GetName()
    if CrossHairReference
        actor ActorReference = (CrossHairReference as actor)
        if ActorReference
            IsActorRef = true
            sRefName = cfgqst.GetActorName(ActorReference)
        endif
        if IsActorRef && IsFacingFront(CrossHairReference, sRefName)
        endif
    endif
EndFunction

int LockPickCount

Event OnMenuOpen(string MenuName)
    bool bTrapTriggered
    bool bLockPickLost
    form TempObject
    if CursedContainersChance > 0.0 && MenuName == "ContainerMenu"
        bool IsBodyContainer = false
        float fTrapChance = CursedContainersChance
        int iAddLoot = 0
        objectreference objContainer = game.GetCurrentCrosshairRef()
        string sContainerName = objContainer.GetBaseObject().GetName()
        if objContainer
            actor actorContainer = (objContainer as actor)
            if actorContainer
                IsBodyContainer = true
                sContainerName = cfgqst.GetActorName(actorContainer)
            endif
            if IsBodyContainer
                if actorContainer.IsDead()
                    iAddLoot = 2
                    if D100(1.0)
                        fTrapChance = 100.0
                    elseif D100(25.0)
                        fTrapChance = fTrapChance + fTrapChance
                    endif
                endif
            elseif sContainerName == "Chest"
                iAddLoot = 2
                if D100(5.0)
                    fTrapChance = fTrapChance + fTrapChance + fTrapChance
                elseif D100(50.0)
                    fTrapChance = fTrapChance + fTrapChance
                endif
            elseif sContainerName == "Urn" || sContainerName == "Burial Urn" || sContainerName == "Apothecary's Satchel" || sContainerName == "Satchel"
                iAddLoot = 1
                if D100(1.0)
                    fTrapChance = 100.0
                elseif D100(25.0)
                    fTrapChance = fTrapChance + fTrapChance
                endif
            elseif sContainerName == "Strong Box" || sContainerName == "Strongbox" || sContainerName == "Safe"
                iAddLoot = 1
                if D100(75.0)
                    fTrapChance = fTrapChance + fTrapChance + fTrapChance
                else
                    fTrapChance = fTrapChance + fTrapChance
                endif
            elseif sContainerName == "Cupboard" || sContainerName == "End Table"
                if D100(50.0)
                    fTrapChance = fTrapChance * 0.5
                endif
            elseif sContainerName == "Dresser" || sContainerName == "Wardrobe"
                if D100(50.0)
                    fTrapChance = fTrapChance * 0.5
                endif
                iAddLoot = 2
            elseif sContainerName == "Barrel" || sContainerName == "Sack" || sContainerName == "" || sContainerName == "Pot" || sContainerName == "Large Sack"
                if D100(50.0)
                    fTrapChance = fTrapChance * 0.5
                endif
            elseif sContainerName == "Egg Sack"
            endif
            if LootedContainerList.HasForm(objContainer)
                NymTrace("Container is in List")
            elseif Nym()
                if iAddLoot == 1 || iAddLoot == 2
                    if D100(5.0)
                        form DD_PiercingRemovalTool = game.GetFormFromFile(264612, "Devious Devices - Integration.esm")
                        objContainer.AddItem(DD_PiercingRemovalTool, utility.RandomInt(1, 3), true)
                    endif
                elseif iAddLoot == 2
                    if D100(5.0)
                        Armor LootLeatherArmor = (game.GetFormFromFile(221598, "Skyrim.esm") as Armor)
                        objContainer.AddItem(LootLeatherArmor, 1, true)
                    endif
                endif
                LootedContainerList.AddForm(objContainer)
            endif
            if cfgqst.PlayerRef.IsWeaponDrawn()
                fTrapChance = fTrapChance + fTrapChance
            endif
            if D100(fTrapChance)
                if IsBodyContainer
                    NymMessage("Container (Body) Opened: " + sContainerName + " Trap Triggered [" + fTrapChance + "%]")
                else
                    NymMessage("Container Opened: " + sContainerName + " Trap Triggered [" + fTrapChance + "%]")
                endif
                fTrapChance = 0.0
                game.disableplayercontrols(true, true, false, false, false, true, true, false, 0)
                utility.Waitmenumode(1.0)
                ui.Invoke("ContainerMenu", "_root.Menu_mc.onExitMenuRectClick")
                game.enableplayercontrols(true, true, true, true, true, true, true, true, 0)
                cfgqst.StartDeviousTrap(0, 100)
            elseif IsBodyContainer
                NymMessage("Container (Body) Opened [" + fTrapChance + "%]: " + sContainerName)
            else
                NymMessage("Container Opened [" + fTrapChance + "%]: " + sContainerName)
            endif
        endif
    elseif MenuName == "Lockpicking Menu"
        if CursedLocksChance > 0.0
            LockPickCount = cfgqst.PlayerRef.GetItemCount(Lockpick)
            NymMessage("Lockpicking Start - Lockpicks: " + LockPickCount)
            while ui.IsMenuOpen("Lockpicking Menu") && !bTrapTriggered
                utility.Waitmenumode(2.0)
                if ui.IsMenuOpen("Lockpicking Menu")
                    int LockPickCountAfter = cfgqst.PlayerRef.GetItemCount(Lockpick)
                    if LockPickCountAfter < LockPickCount
                        LockPickCount = LockPickCount - 1
                        bLockPickLost = true
                    endif
                    if bLockPickLost && D100(CursedLocksChance)
                        bTrapTriggered = true
                    endif
                endif
            endwhile
            if bTrapTriggered
                bTrapTriggered = false
                input.TapKey(15)
                utility.Wait(0.5)
                cfgqst.StartDeviousTrap(0, 100)
            endif
        endif
    elseif IsLocalSlave() && MenuName == "Crafting Menu"
        int SitState = 0
        int LoopTimer = 0
        int StationCode = 0
        bool Exhausted = false
        SlaveAtWork = true
        po3_sksefunctions.HideMenu("Crafting Menu")
        SitState = cfgqst.PlayerRef.GetSitState()
        if Nym() && IsExhausted()
            BadMessage("You are too exhausted to work here")
        else
            while SitState > 0 && cfgqst.ModEnabled && !IsExhausted() && !DarkNight
                if LoopTimer == 0
                    LoopTimer = utility.RandomInt(8, 10)
                    if slaveqst.FetchTaskType == "Flour"
                        LoopTimer = 5
                    endif
                endif
                NymTrace("OnMenuOpen(Crafting Menu) LOOP [" + LoopTimer + "] [" + slaveqst.RequiredStation + "]- SitState: " + SitState + " Station Code: " + StationCode)
                NymTrace("##WAIT A")
                utility.Waitmenumode(1.0)
                NymTrace("##WAIT B")
                cfgqst.PlayerRef.DamageAV("Stamina", utility.RandomFloat(5.0, 15.0))
                LoopTimer = LoopTimer - 1
                SitState = cfgqst.PlayerRef.GetSitState()
                if SitState > 0 && StationCode == 0 && !DarkNight
                    NymTrace("OnMenuOpen(Crafting Menu) START [" + slaveqst.RequiredStation + "]- SitState: " + SitState + " Station Code: " + StationCode)
                    if slaveqst.FetchTaskType == "Smelter" && slaveqst.IsWorkingOnStation("Smelter") && !DarkNight
                        StationCode = 1
                        GoodMessage("You start working at the Smelter")
                    elseif slaveqst.FetchTaskType == "Tanning Rack" && slaveqst.IsWorkingOnStation("Tanning Rack") && !DarkNight
                        GoodMessage("You start working at the Tanning Rack")
                        TempObject = game.GetFormFromFile(898514, "Skyrim.esm")
                        StationCode = 2
                    elseif slaveqst.FetchTaskType == "Forge" && slaveqst.IsWorkingOnStation("Forge") && !DarkNight
                        TempObject = game.GetFormFromFile(77389, "Skyrim.esm")
                        GoodMessage("You start working at the Forge")
                        StationCode = 3
                    elseif slaveqst.FetchTaskType == "Grindstone" && slaveqst.IsWorkingOnStation("Grindstone") && !DarkNight
                        TempObject = game.GetFormFromFile(1067840, "Skyrim.esm")
                        GoodMessage("You start working at the Grindstone")
                        StationCode = 4
                    elseif slaveqst.FetchTaskType == "Workbench" && slaveqst.IsWorkingOnStation("Workbench") && !DarkNight
                        GoodMessage("You start working at the Workbench")
                        TempObject = game.GetFormFromFile(221598, "Skyrim.esm")
                        StationCode = 5
                    elseif slaveqst.FetchTaskType == "Alchemy Lab" && slaveqst.IsWorkingOnStation("Alchemy Lab") && !DarkNight
                        GoodMessage("You start working at the Alchemy Lab")
                        StationCode = 6
                    elseif slaveqst.FetchTaskType == "Flour" && slaveqst.IsWorkingOnStation("Mill") && !DarkNight
                        GoodMessage("You start working at the Grain Mill")
                        StationCode = 7
                        TempObject = game.GetFormFromFile(33568056, "HearthFires.esm")
                    elseif DarkNight
                        BadMessage("You are working during Curfew, are you insane?")
                        utility.Waitmenumode(2.0)
                        utility.Wait(2.0)
                        playscr.CalculateSlaveGold("Massive Increase", 0)
                        SlaveAtWork = false
                    else
                        BadMessage("You have no permission to work here")
                        utility.Waitmenumode(2.0)
                        utility.Wait(2.0)
                        playscr.CalculateSlaveGold("Increase", 0)
                        SlaveAtWork = false
                    endif
                endif
                if SitState > 0 && LoopTimer == 0 && !IsExhausted()
                    int ExhaustionChance = 50
                    if StationCode == 1
                        cfgqst.PlayerRef.AddItem(IronIngot, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 70
                    elseif StationCode == 2
                        cfgqst.PlayerRef.AddItem(TempObject, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 30
                    elseif StationCode == 3
                        cfgqst.PlayerRef.AddItem(TempObject, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 70
                    elseif StationCode == 4
                        cfgqst.PlayerRef.AddItem(TempObject, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 50
                    elseif StationCode == 5
                        cfgqst.PlayerRef.AddItem(TempObject, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 50
                    elseif StationCode == 6
                        cfgqst.PlayerRef.AddItem(IronIngot, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 30
                    elseif StationCode == 7
                        NymTrace("ADDED FLOUR")
                        cfgqst.PlayerRef.AddItem(TempObject, 1, false)
                        cfgqst.IncreaseDirtiness(0.05)
                        ExhaustionChance = 70
                    endif
                    if Nym()
                        if D100(ExhaustionChance)
                            if !slaveqst.GlovesProtect()
                                ExhaustionChange(1)
                            endif
                        endif
                    endif
                    slaveqst.SendSlaveMoan()
                endif
            endwhile
            if IsExhausted()
                cfgqst.ResetIdle(cfgqst.PlayerRef)
                BadMessage("You are too exhausted to continue.")
            endif
            if DarkNight
                BadMessage("You are not allowed to work at night.")
            endif
            SlaveAtWork = false
            NymTrace("OnMenuOpen(Crafting Menu) END")
        endif
    endif
EndEvent


Event OnStartRaperExpressions(String EventName, String ArgString, Float ArgNum, Form Sender)	;#OnStartRaperExpressions
	NymTrace("OnStartRaperExpressions()")
	
	NymTrace("SexScene B: "+cfgqst.SexScene)
	
	if Nym()
	calmqst.PlayRaperExpressions()
	endif 
		
EndEvent 

Event OnControlDown(string control)
	
	if control == "Sneak"
;	NymBox("Sneak Event")
	endif 

EndEvent 

;############################################################################################################################################################################################################
;#############	 BASIC FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################

Function RegisterForModEvents_Storage()	;#register


RegisterForModEvent("StartDropQuest", "OnStartDropQuest")
RegisterForModEvent("StartWhipping_00", "OnStartWhipping_00")
RegisterForModEvent("StartRaperExpressions", "OnStartRaperExpressions")
RegisterForModEvent("StartAddRapeHands", "OnStartAddRapeHands")
RegisterForModEvent("StartAddRapeTears", "OnStartAddRapeTears")


RegisterForMenu("Sleep/Wait Menu")
RegisterForMenu("Crafting Menu")
RegisterForMenu("MapMenu")
RegisterForMenu("InventoryMenu")

RegisterForMenu("ContainerMenu")
RegisterForMenu("Lockpicking Menu")

if Nym()
RegisterForControl("Sneak")
endif 


EndFunction

Function UnregisterForModEvents_Storage()

UnregisterForModEvent("StartDropQuest")
UnregisterForModEvent("StartWhipping_00")
UnregisterForModEvent("StartRaperExpressions")
UnregisterForModEvent("StartAddRapeHands")
UnregisterForModEvent("StartAddRapeTears")

UnRegisterForMenu("Sleep/Wait Menu")
UnRegisterForMenu("Crafting Menu")
UnRegisterForMenu("MapMenu")
UnRegisterForMenu("InventoryMenu")
UnRegisterForMenu("ContainerMenu")
UnRegisterForMenu("Lockpicking Menu")

if Nym()
UnRegisterForControl("Sneak")
endif 

EndFunction

Function DebugTrace(String Text1)			;#DebugTrace
Debug.Trace("NAKED DEFEAT storagequest: "+Text1)
EndFunction

Function ShowDebugNotification(String Text2);#ShowDebugNotification
	if cfgqst.ShowDebugMessages
	Debug.Notification(Text2)
	endif
EndFunction

Function ScreenMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#InfoMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT storagequest: (#msg DEBUG) "+Text2)
	endif
EndFunction
	
Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT storagequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	Debug.trace("NAKED DEFEAT storagequest: (#trace NYM) "+Text2)
	endif
EndFunction

Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("storagequest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT storagequest: BOX (#Box NYM) "+Text2)

EndFunction


Function GoodMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#0AAC00'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg) "+Text3)
EndFunction

Function BadMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#A52A2A'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT storagequest: (#msg) "+Text3)
EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return true
	else
	return false
	endif 
	
EndFunction

bool Function D100(float chance)	;#diceroll	;#d100

int i = Utility.RandomInt(1, 100)
int c = chance as int

NymTrace("Chance: "+c+" D100 "+i)

if i <= chance
return true
else
return false
endif
EndFunction

; ---- added in Naked Defeat 6.51 ----
float Property CursedContainersChance Auto
int Property CursedContainersChance_OID_S Auto
float Property CursedLocksChance Auto
int Property CursedLocksChance_OID_S Auto
nade_followerquest_qf_scr Property folqst Auto
formlist Property HarnessList Auto
miscobject Property Lockpick Auto
formlist Property LootedContainerList Auto
bool Property ModTawoba Auto
bool Property ModTawobaExp Auto
actor Property ThePublicExposureCommenter Auto
int Property UnarmedCombo Auto
bool Property VoicedComments Auto
int Property VoicedComments_OID_B Auto
