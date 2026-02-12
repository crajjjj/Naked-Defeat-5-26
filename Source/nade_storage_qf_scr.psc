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

;###############	 BOOLS	 #################

Bool Property StorageQuestRunning Auto
Bool Property WhippingQuest_00_Running Auto
Bool Property AllegianceQuestRunning Auto

Bool Property NakedRunning Auto
Bool Property NakedTripping Auto
Bool Property BodyFluids Auto 
Bool Property BodyShaders Auto 
Bool Property ImmersiveRobbery Auto
Bool Property RobQuestItems Auto

Bool Property InCity Auto
Bool Property InDungeon Auto
Bool Property InWilderness Auto
Bool Property InVillage Auto

Bool Property IsPoseScenario Auto

Bool Property IsBlockedAttack Auto
Bool Property PreventRagdoll Auto
Bool Property BlockPosing Auto
Bool Property PlayerSoundRunning Auto
Bool Property DarkNight Auto
Bool Property SlaveAtWork Auto

Bool Property LocalSlavery Auto
Bool Property AllowCityEscape Auto

Bool Property SceneProtectorsPlaced Auto

Bool Property NymCombat Auto
 
Bool Property Sucking Auto

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

;###############	 INTS	 #################

int Property Defeat_ID Auto
int Property ForceOpen Auto
int Property WhippingDuration Auto
int Property DefeatKillPlayerMode Auto
int Property Parried Auto
int Property SlavePunishmentLevel Auto
int Property SlaveWantsToRest Auto
int Property CurrentMood Auto

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

;###############	 STRING		 #################

String Property PlayerSoundToPlay Auto 
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
;cooking pot?


Formlist Property SlaveryLocations Auto
Formlist Property LootExcludedWeapons Auto



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

Sound Property SOUND_RitualStart Auto
Sound Property SOUND_PerfectBlock Auto

Sound Property SOUND_Wiggle_Loosen Auto
Sound Property SOUND_Wiggle_Tighten Auto


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


Function ExhaustionChange(int ExhaustionMod)

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


String Function GetLocationName()

		Location kCurrentLoc = cfgqst.PlayerRef.GetCurrentLocation()
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

Bool Function IsLocalSlave()

	if IsLocalSlave > 0
	return true 
	else 
	return false 
	endif 

EndFunction

Bool Function IsAreaMarkerNearby()
		NymTrace("IsAreaMarkerNearby()")
		ObjectReference ClosestMarker

		;ClosestMarker ;= XMarkerHeading_Naked as Form 
		Form XMarkerAreaTemp = XMarkerHeading_Area as Form
		int MinDistance = 250
		if XMarkerAreaTemp
	;	NymBox("IsWorkbenchNearby(Workbench filled)")
		else 
		NymTrace("XMarkerAreaTemp(Workbench NOT filled)")
		endif 
		
		if cfgqst.PlayerRef.IsInInterior()
		MinDistance = 150
		else 
		MinDistance = 250
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
	
	if cfgqst.DefeatWhipProb > 0
		if cfgqst.IsDefeatRunning() ;&& ((cfgqst.DefeatTypeGeneral == "AreHumans") || ((cfgqst.DefeatTypeGeneral == "AreHumanoids") && (cfgqst.DefeatType == "Undead" || cfgqst.DefeatType == "Rieklings" || cfgqst.DefeatType == "Spriggans" || cfgqst.DefeatType == "Falmers")))
		;	if NeedaWhipper
		;	NymBox("Defeat Running and we have no Whipper!")
		;	endif 
		else 
		cfgqst.AllegianceQuestStart("AreaScanWhipper")
		endif 
	WhippingDuration = Duration as int
	SendModEvent("StartWhipping_00")
	endif 
			
EndFunction 


Function StopWhipping_00()
	
	WhippingDuration = 0

EndFunction 

;Hitter.AddToFaction(EnemyFaction)

Function SaveHitterRaceKeyAsEnemy(String RaceKey)
	DebugTrace("SaveHitterRaceKey("+RaceKey+")")
	if !RaceKey
	Debug.Trace("NAKED DEFEAT storagequest: #ERROR: RaceKey (NONE)")
	else 
			
		if RaceKey == "empty"	
		Debug.Trace("NAKED DEFEAT storagequest: #ERROR: RaceKey(empty)")	
	
		else
		
		Debug.trace("NAKED DEFEAT storagequest: SaveHitterRaceKey: "+RaceKey)
		
			cfgqst.Enemy[10] = RaceKey
			NymTrace("Last Hitter = "+RaceKey)
		
			if !cfgqst.CheckEnemiesFor(RaceKey)
			
				;if Enemy[0] not logged in and if that racekey is NOT already logged in
				
				if cfgqst.Enemy[0] == "none" ;&& !CheckEnemiesFor(RaceKey)
				cfgqst.Enemy[0] = RaceKey
				Debug.trace("NAKED DEFEAT storagequest: Enemy[0]: "+cfgqst.Enemy[0])
				elseif cfgqst.Enemy[1] == "none" ;&& !CheckEnemiesFor(RaceKey) <<< ????
				cfgqst.Enemy[1] = RaceKey
				Debug.trace("NAKED DEFEAT storagequest: Enemy[1]: "+cfgqst.Enemy[1])
				elseif cfgqst.Enemy[2] == "none" ;&& !CheckEnemiesFor(RaceKey)
				cfgqst.Enemy[2] = RaceKey
				Debug.trace("NAKED DEFEAT storagequest: Enemy[2]: "+cfgqst.Enemy[2])
				elseif cfgqst.Enemy[3] == "none"
				cfgqst.Enemy[3] = RaceKey
				Debug.trace("NAKED DEFEAT storagequest: Enemy[3]: "+cfgqst.Enemy[3])			
				elseif cfgqst.Enemy[4] == "none" 
				cfgqst.Enemy[4] = RaceKey		
				Debug.trace("NAKED DEFEAT storagequest: Enemy[4]: "+cfgqst.Enemy[4])				
				;Enemy[5] always gets overwritten if not already logged in (we get updates on the combat enemies this way)
				;before we had this repeat the cycle which could mean that we lost previously registered enemies 
				else
				cfgqst.Enemy[5] = RaceKey
				Debug.trace("NAKED DEFEAT storagequest: Enemy[5]: "+cfgqst.Enemy[5])
				endif 

			else ;ALREADY LOGGED IN
			NymTrace("NAKED DEFEAT storagequest: RaceKey already registered: "+ RaceKey)
			endif 
		endif 
	endif 
 
EndFunction 


Bool Function IsHuman(actor akActor)

	String sRaceType = SPE_Actor.GetRaceType(akActor)
	if sRaceType == "Human"
	return true
	else 
	return false 
	endif 
	
EndFunction


int Function GetGender(actor akActor)

	String sRaceType = SPE_Actor.GetRaceType(akActor)
	if sRaceType == "Human"
		ActorBase akActorBase = akActor.GetLeveledActorBase()
		return akActorBase.GetSex()
		;-1: None 
		;0: Male
		;1: Female
	else 
	return 2 
	endif 
	
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
	
EndFunction 

int Function GetHitterRaceCode(Actor akAggressor)			;#GetHitterRace

	NymTrace("GetHitterRaceCode()")
	;Attempt to make a Speedy Detection Method for Combat 
	
	String sRaceType = SPE_Actor.GetRaceType(akAggressor)
	int ReturnCode = 0
	if sRaceType == "Human"
	ReturnCode = 100
	elseif sRaceType == "Wolf"
	ReturnCode = 200 
	endif 
	
;====================
; HUMAN
;====================
if sRaceType == "Human"
	ReturnCode = 100

;====================
; HUMANOIDS
;====================
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


;====================
; MAMMALS
;====================
elseif sRaceType == "Wolf"
	ReturnCode = 200
elseif sRaceType == "Dog"
	ReturnCode = 200
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


;====================
; INSECTS
;====================
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


;====================
; FARM
;====================
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


;====================
; DWARVEN
;====================
elseif sRaceType == "DwarvenSphere"
	ReturnCode = 500
elseif sRaceType == "DwarvenSpider"
	ReturnCode = 510
elseif sRaceType == "DwarvenCenturion"
	ReturnCode = 520
elseif sRaceType == "DwarvenBallista"
	ReturnCode = 530


;====================
; REST
;====================
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

Return ReturnCode

	
	;INFO:
	
;Humans 
; 100		Human

;Humanoids 
; 130 		Draugr
; 140		Riekling
; 150		Falmer
; 160		Gargoyle
; 161		Troll
; 162		VampireLord
; 163		Werewolf
; 164		Spriggan
; 170	FlameAtronach
; 171	FrostAtronach
; 172 	StormAtronach
; 190	Giant
; 192	Wispmother
; 194	Hagraven
; 196	DragonPriest

;Mammals 
; 200	Wolf
; 200	Dog
; 210	Skeever
; 220	Bear
; 230	Boar
; 240	Deer
; 250	Sabrecat
; 260	Mammoth
; 270 	Horker

;InSects
; 300	Chaurus
; 310	ChaurusHunter
; 320	Spider
; 330	AshHopper
; 340	Mudcrab

;Farm
; 400	Horse
; 410 	Goat
; 420	Chicken
; 430	Hare
; 440	Cow

;Dwarven
; 500	DwarvenSphere
; 510	DwarvenSpider
; 520 	DwarvenCenturion
; 530 	DwarvenBallista

;REST
; 600 	Lurker
; 610 	Seeker
; 620  Netch
; 630  Dragon
; 640  IceWraith
; 650  Slaughterfish
; 660  Wisp

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

String Function GetRaceKeyFast(actor akActor)
	
	int RaceCode = GetHitterRaceCode(akActor)
	string MyRaceKey = "empty"
	
	MyRaceKey = GetRaceKeyFromRaceCode(RaceCode)

	if MyRaceKey == "Boars" || MyRaceKey == "Canines"
	;these racekeys need to be refined by the classic function sadly
	string TheRaceKey = "empty"
	TheRaceKey = cfgqst.GetRaceKey(akActor)
	NymTrace("GetRaceKeyFast - TheRaceKey: "+TheRaceKey) 
	return TheRaceKey
	else 
	NymTrace("GetRaceKeyFast - MyRaceKey: "+MyRaceKey) 
	return MyRaceKey
	endif 

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
	ReturnRaceKey = "Canines" ; also Wolves/Dogs
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
		
		NymTrace("IsShowingMenus("+PO3_SKSEFunctions.IsShowingMenus()+")")
		
		if PO3_SKSEFunctions.IsShowingMenus()
		HideHUD() ;HIDE ---> Nym()
		endif 
		
		cfgqst.SexState = iSexState
	endif 

EndFunction 


Function SexEndMaintenance()
NymTrace("SexEndMaintenance")
		;defqst.SexDuration = 0
		Riding = false
		
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
			
			defqst.ToggleDroolPlayer(false)
			PO3_SKSEFunctions.RemoveAllModItems(cfgqst.PlayerRef, "Tongues.esp", true)
			ForceOpen = 0
			cfgqst.SexState = 0
			defqst.GetMouthStatePlayer()
			calmqst.PlayRaperExpressions()	;resets Raper Expressions
		endif 

EndFunction 

GlobalVariable GameHour	

Float Function GetGameHour()

		if !GameHour
		GameHour = (Game.GetFormFromFile(0x00000038, "Skyrim.esm") As GlobalVariable)	
		endif 
	
		return GameHour.GetValue()

EndFunction 

Function SetDefeat_ID()
	
	if Defeat_ID == 0
	Defeat_ID = 1000
	endif 
EndFunction 

String Function PlayerEssentialStatus()
	
	Bool IsEssential = false 
	Bool ShouldBeEssential = true 
	
	if cfgqst.PlayerRef.GetActorBase().IsEssential()
	return "True"
	else
		if cfgqst.NoEssentialPlayer
		return "Disabled by You (MCM)"
		else 
		return "False (Bugged by other Mod)"
		endif 
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

Function StartPlayerSoundEffect(String sType, float fVolume, int iDuration)
NymTrace("StartPlayerSoundEffect "+sType+" (Volume:"+fVolume+")(Duration:"+iDuration+")")
	
	Sound mySFX	
	
	int i
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
 
Event OnMenuClose(String MenuName)

	if IsLocalSlave()
		If MenuName == "Sleep/Wait Menu"
			NymTrace("Sleep/Wait Menu has closed.")
			
		BadMessage("You are punished for loitering")
		
		playscr.CalculateSlaveGold("Massive Increase", 0)
				
		EndIf
	endif 
	
	;https://ck.uesp.net/wiki/UI_Script#Valid_Menu_Names
EndEvent

Event OnMenuOpen(String MenuName)

	if IsLocalSlave()
	
	int SitState = 0
	int CraftIngot = 0
	int StationCode = 0
	Form TempObject 

	
		If MenuName == "Crafting Menu"
			
			SlaveAtWork = true 
			
		;	Utility.WaitMenuMode(1)
			PO3_SKSEFunctions.HideMenu("Crafting Menu")
		
			SitState = cfgqst.PlayerRef.GetSitState()

			While SitState > 0 && cfgqst.ModEnabled
				if CraftIngot == 0
				CraftIngot = Utility.RandomInt(8,10)
				endif
			NymTrace("Crafting Menu has been opened - SitState: "+SitState+" Station Code: "+StationCode)
				
			Utility.WaitMenuMode(1)
			cfgqst.PlayerRef.DamageAV("Stamina", Utility.RandomFloat(5,15))
			CraftIngot-=1
			SitState = cfgqst.PlayerRef.GetSitState()
					
				if SitState > 0	&& StationCode == 0 && !DarkNight
					if slaveqst.IsWorkingOnStation("Smelter") && slaveqst.FetchTaskType == "Smelter"
					StationCode = 1
					GoodMessage("You start working at the Smelter")	;Iron Ingots
					
					elseif slaveqst.IsWorkingOnStation("Tanning Rack") && slaveqst.FetchTaskType == "Tanning Rack" && !DarkNight
					GoodMessage("You start working at the Tanning Rack")
					TempObject = (Game.GetFormFromFile(0x000DB5D2, "Skyrim.esm") as Form)	;Leather
					StationCode = 2
					
					elseif slaveqst.IsWorkingOnStation("Forge") && slaveqst.FetchTaskType == "Forge" && !DarkNight
					TempObject = (Game.GetFormFromFile(0x00012E4D, "Skyrim.esm") as Form)	;Iron Helmet
					GoodMessage("You start working at the Forge")
					StationCode = 3
					
					elseif slaveqst.IsWorkingOnStation("Grindstone") && slaveqst.FetchTaskType == "Grindstone" && !DarkNight
					TempObject = (Game.GetFormFromFile(0x00104B40, "Skyrim.esm") as Form)	;BasicKnife01
					GoodMessage("You start working at the Grindstone")
					StationCode = 4
					
					elseif slaveqst.IsWorkingOnStation("Workbench") && slaveqst.FetchTaskType == "Workbench" && !DarkNight
					GoodMessage("You start working at the Workbench")			
					TempObject = (Game.GetFormFromFile(0x0003619E, "Skyrim.esm") as Form)	;Leather Armor
					StationCode = 5
					
									
					elseif slaveqst.IsWorkingOnStation("Alchemy Lab") && slaveqst.FetchTaskType == "Alchemy Lab" && !DarkNight
					GoodMessage("You start working at the Alchemy Lab")
					StationCode = 6		

					elseif DarkNight
					BadMessage("You are working during Curfew, are you insane?")
					Utility.WaitMenuMode(2)
					Utility.Wait(2)
					playscr.CalculateSlaveGold("Massive Increase", 0)
					SlaveAtWork = false
					else 
					BadMessage("You have no permission to work here")
					Utility.WaitMenuMode(2)
					Utility.Wait(2)
					playscr.CalculateSlaveGold("Increase", 0)
					SlaveAtWork = false 
					endif

				endif 
			
				if SitState > 0 && (CraftIngot == 0)
				
					if StationCode == 1 	;Smelter
					cfgqst.PlayerRef.AddItem(IronIngot, 1)
					cfgqst.IncreaseDirtiness(0.05)
					
					elseif StationCode == 2 ;Tanning Rack
					cfgqst.PlayerRef.AddItem(TempObject, 1)	;Leather
					cfgqst.IncreaseDirtiness(0.05)
					
					elseif StationCode == 3 ;Forge
					cfgqst.PlayerRef.AddItem(IronIngot, 1)
					cfgqst.IncreaseDirtiness(0.05)
					
					elseif StationCode == 4 ;Grindstone
					cfgqst.PlayerRef.AddItem(TempObject, 1)	;Knifes
					cfgqst.IncreaseDirtiness(0.05)
									
					elseif StationCode == 5  ;Workbench
					cfgqst.PlayerRef.AddItem(IronIngot, 1)
					cfgqst.IncreaseDirtiness(0.05)
					
					elseif StationCode == 6  ;Alchemy Lab
					cfgqst.PlayerRef.AddItem(IronIngot, 1)
					cfgqst.IncreaseDirtiness(0.05)
					endif 
					
					if D100(50) && Nym()
					
						if !slaveqst.GlovesProtect()
						ExhaustionChange(1)
						;Exhaustion+= 1
						endif 
				;	NymMessage("Exhaustion "+storqst.Exhaustion)
					endif 	

				slaveqst.SendSlaveMoan()
				endif 
			endwhile

			SlaveAtWork = false
			
			NymTrace("Crafting Menu has been opened - Z")
			;HideHUD()
		
	;	playscr.CalculateSlaveGold("Massive Increase", 0)
				
		EndIf
	endif 
	
	;https://ck.uesp.net/wiki/UI_Script#Valid_Menu_Names
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
	NymBox("Sneak Event")
	endif 

EndEvent 

;############################################################################################################################################################################################################
;#############	 BASIC FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################

Function RegisterForModEvents_Storage()	;#register


RegisterForModEvent("StartDropQuest", "OnStartDropQuest")
RegisterForModEvent("StartWhipping_00", "OnStartWhipping_00")
RegisterForModEvent("StartRaperExpressions", "OnStartRaperExpressions")

RegisterForMenu("Sleep/Wait Menu")
RegisterForMenu("Crafting Menu")

if Nym()
RegisterForControl("Sneak")
endif 


EndFunction

Function UnregisterForModEvents_Storage()

UnregisterForModEvent("StartDropQuest")
UnregisterForModEvent("StartWhipping_00")
UnregisterForModEvent("StartRaperExpressions")

UnRegisterForMenu("Sleep/Wait Menu")
UnRegisterForMenu("Crafting Menu")

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