Scriptname nade_slavery_qf_scr Extends Quest Hidden

;############################################################################################################################################################################################################
;############### 	PROPERTIES 	#############################################################################################################################################################################################
;############################################################################################################################################################################################################

nade_configquest_scr Property cfgqst Auto
nade_calmquest_qf_scr Property calmqst Auto
nade_storage_qf_scr Property storqst Auto
nade_playeralias_scr Property playscr Auto
nade_FollowerIdleQuest_01_qf_scr Property folidle01 Auto
nade_FollowerQuest_qf_scr Property folqst Auto
nade_WhipQuest_00 Property whipq00 Auto
SexLabFramework Property SexLab Auto
nade_defeatquest_qf_scr Property defqst Auto

Bool Property SlaveryQuestRunning Auto

;Laws 
Book Property SlaveLaw_Basic Auto

;Quest Messages
Book Property QuestMessage_LocalSlavery_Start Auto
Book Property QuestMessage_LocalSlavery_End Auto

;Counters
Book Property SlaveTask_FetchItemCounter Auto
Book Property SlaveTask_ServiceCounter Auto

;Fetch Tasks
Book Property SlaveTask_FetchFirewood Auto
Book Property SlaveTask_FetchFlowers Auto
Book Property SlaveTask_FetchSweepStreet Auto
Book Property SlaveTask_FetchSweepInn Auto
Book Property SlaveTask_FetchSweepCastle Auto
Book Property SlaveTask_FetchGarbage Auto

Book Property SlaveTask_FetchIronIngots Auto
Book Property SlaveTask_FetchLeather Auto
Book Property SlaveTask_FetchKnifes Auto
Book Property SlaveTask_FetchArmor Auto
Book Property SlaveTask_FetchHelmets Auto

Book Property SlaveTask_RuleGag Auto

Book Property Hint_DDs Auto
Book Property Hint_Gloves Auto

Book Property SlaveTask_FetchIronOre Auto
Book Property SlaveTask_FetchQuicksilverOre Auto



;Sex Tasks 
Book Property SlaveTask_OrgyInn Auto
Book Property SlaveTask_OrgyBarracks Auto
Book Property SlaveTask_OrgyCastle Auto
Book Property SlaveTask_OrgyStreets Auto

Book Property SlaveTask_ServeHorses Auto
Book Property SlaveTask_ServeDogs Auto
Book Property SlaveTask_ServePeople Auto

Book Property SlaveTask_RuleBoots Auto
Book Property SlaveTask_RuleBowing Auto
Book Property SlaveTask_RuleClean Auto
Book Property SlaveTask_RuleCrawling Auto

int Property ActiveSlaveTasks Auto
int Property CompletedDayTasks Auto
int Property SlaveIsOccupied Auto
int Property SlaveIsResting Auto
Bool Property Pretending Auto

int Property SlaveFetchTaskItemCount Auto
int Property SlaveSexTaskPartners Auto
int Property SlaveRule Auto

Bool Property GlovesJob Auto

int Property ServicesCompleted Auto

int Property SexTaskDuration Auto

Actor Property TempMaster Auto

Actor[] Property ServedActors Auto

int Property TrackedDroppedGarbageItemsCount Auto 
Bool Property StartDroppingGarbage Auto

Furniture Property WoodChoppingBlockSnowCheck Auto
Furniture Property WoodChoppingBlockCheck Auto

Formlist Property DroppedGarbage Auto ;Lenght 14
Formlist Property DroppedFood Auto	;Lenght 12
Formlist Property CraftingStationList Auto
Formlist Property CraftingStationListTemp Auto
Formlist Property IronOreVeinList Auto
Formlist Property QuickSilverOreVeinList Auto
Formlist Property GoldOreVeinList Auto
Formlist Property Mushroomlist Auto

Faction Property WhippingFaction Auto

Keyword Property KWD_GiftFlower Auto
Keyword Property KWD_NakedGarbage Auto
Keyword Property KWD_SlaveryCleanup Auto

Location Property CurrentLocalSlaveryLoc Auto

objectreference [] Property TrackedDroppedGarbageItems Auto 
objectreference[] Property VanillaVeins Auto
objectreference[] Property PlacedVeins Auto
ObjectReference Property PlacedWorkbench Auto
ObjectReference Property PlacedAnvil Auto
ObjectReference Property PlacedTanningRack Auto
ObjectReference Property PlacedSmelter Auto
ObjectReference Property PlacedGrindstone Auto
ObjectReference Property PlacedChoppingBlock Auto



int Property CreatureTask Auto
int Property AreaTaskCounter Auto
int Property CompletedAreaTasks Auto


String Property SexTaskRaceKey Auto
String Property SlaveReturnLocation Auto

String Property RequiredStation Auto

String Property FetchTaskType Auto
String Property SexTaskType Auto
String Property RuleTaskType Auto
String Property CurrentSlaveryLocationName Auto
Bool Property IsIndoorSlavery Auto

;############################################################################################################################################################################################################
;############### INTERNAL PROPERTIES #############################################################################################################################################################################
;############################################################################################################################################################################################################

Int TotalSlaveTasksCompleted

	Form Firewood 
	Form Firewood2

;############################################################################################################################################################################################################
;############### QUEST STAGES #############################################################################################################################################################################
;############################################################################################################################################################################################################

Function Fragment_0()					;############ STAGE 10 ############		#START			
		DebugTrace("stage 10 (START)")
										
		SetStage(100)

EndFunction															

															
															
Function Fragment_4()				;############ STAGE 1000 ############		#END

	DebugTrace("stage 1000 (END)")
	
	Stop()

EndFunction

 
Function Fragment_7()						;############ STAGE 100 ############	 #ActivateRapeScan		;CalmQuest needs to SetStage 100 to restart scan after rape
	
	NymMessage("SLAVERY QUEST STARTED")
	DebugTrace("stage 100 (ACTIVE)")

EndFunction


;############################################################################################################################################################################################################
;#############	 FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################

Function StartslaveryQuest()
	DebugTrace("StartslaveryQuest()")
	Start()
	
EndFunction 


Function EndslaveryQuest()
	DebugTrace("EndslaveryQuest()")
	UpdateModEvents_LocalSlavery(false)
	Stop()
	
EndFunction 

Function TestFlowers()
FetchTaskType = "Flowers"

EndFunction 

Function ResetTasks()		;#ResetTasks

if !cfgqst.PlayerRef.IsInInterior()
	
	String TempName = cfgqst.PlayerRef.GetCurrentLocation().GetName()
	NymTrace("FIX SLAVE LOCATION: "+TempName)
	storqst.SlaveryLocations.Revert()
	if TempName == "Riften"
	CurrentSlaveryLocationName = "Riften"
	CurrentLocalSlaveryLoc = playscr.LocationRiften
	storqst.SlaveryLocations.AddForm(playscr.LocationRiften)
	elseif TempName == "Whiterun"
	CurrentSlaveryLocationName = "Whiterun"
	CurrentLocalSlaveryLoc = playscr.LocationWhiterun
	storqst.SlaveryLocations.AddForm(playscr.LocationWhiterun)
	elseif TempName == "Markarth"
	CurrentSlaveryLocationName = "Markarth"
	CurrentLocalSlaveryLoc = playscr.LocationMarkarth
	storqst.SlaveryLocations.AddForm(playscr.LocationMarkarth)
	elseif TempName == "Morthal"
	CurrentSlaveryLocationName = "Morthal"
	CurrentLocalSlaveryLoc = playscr.LocationMorthal
	storqst.SlaveryLocations.AddForm(playscr.LocationMorthal)	
	elseif TempName == "Falkreath"
	CurrentSlaveryLocationName = "Falkreath"
	CurrentLocalSlaveryLoc = playscr.LocationFalkreath
	storqst.SlaveryLocations.AddForm(playscr.LocationFalkreath)
	elseif TempName == "Dawnstar"
	CurrentSlaveryLocationName = "Dawnstar"
	CurrentLocalSlaveryLoc = playscr.LocationDawnstar
	storqst.SlaveryLocations.AddForm(playscr.LocationDawnstar)	
	elseif TempName == "Windhelm"
	CurrentSlaveryLocationName = "Windhelm"
	CurrentLocalSlaveryLoc = playscr.LocationWindhelm
	storqst.SlaveryLocations.AddForm(playscr.LocationWindhelm)	
	elseif TempName == "Winterhold"
	CurrentSlaveryLocationName = "Winterhold"
	CurrentLocalSlaveryLoc = playscr.LocationWinterhold
	storqst.SlaveryLocations.AddForm(playscr.LocationWinterhold)
	elseif TempName == "Solitude"
	CurrentSlaveryLocationName = "Solitude"
	CurrentLocalSlaveryLoc = playscr.LocationSolitude
	storqst.SlaveryLocations.AddForm(playscr.LocationSolitude)
	endif 
endif 

if Nym()
storqst.SlaveGold_Dawnstar = 100000
endif 

DebugTrace("ResetTasks()")
int ItemCountReset = 0

int DeleteMarker = 0
	if FetchTaskType == "Sweeping The Streets"
	NymTrace("Markers To Delete:" +CompletedAreaTasks)
	DeleteMarker = CompletedAreaTasks	
		while DeleteMarker > 0
			DeleteMarker -= 1
			storqst.AreaScanXMarkers[DeleteMarker].DisableNoWait()
			storqst.AreaScanXMarkers[DeleteMarker].Delete()
			storqst.AreaScanXMarkers[DeleteMarker] = None 
		endwhile
	endif 
	
NymTrace("ResetTasks: Exhaustion: "+storqst.Exhaustion)
storqst.Exhaustion = 0
NymTrace("ResetTasks: storqst.SlaveAtWork: "+storqst.SlaveAtWork)
storqst.SlaveAtWork = false
NymTrace("ResetTasks: SlaveIsOccupied: "+SlaveIsOccupied)
SlaveIsOccupied = 0	
NymTrace("ResetTasks: CompletedDayTasks: "+CompletedDayTasks)
CompletedDayTasks = 0
DeleteDroppedGarbage()
NymTrace("ResetTasks: StartDroppingGarbage: "+StartDroppingGarbage)
StartDroppingGarbage = false 
ResetServedActors()
NymTrace("ResetTasks: ActiveSlaveTasks: "+ActiveSlaveTasks)
ActiveSlaveTasks = 0
NymTrace("ResetTasks: SlaveFetchTaskItemCount: "+SlaveFetchTaskItemCount)
SlaveFetchTaskItemCount = 0
NymTrace("ResetTasks: SlaveSexTaskPartners: "+SlaveSexTaskPartners)
SlaveSexTaskPartners = 0
NymTrace("ResetTasks: CreatureTask: "+CreatureTask)
CreatureTask = 0
NymTrace("ResetTasks: SexTaskRaceKey: "+SexTaskRaceKey)
SexTaskRaceKey = "empty"
NymTrace("ResetTasks: FetchTaskType: "+FetchTaskType)
FetchTaskType = "Completed"
NymTrace("ResetTasks: SexTaskType: "+SexTaskType)
SexTaskType = "Completed"
NymTrace("ResetTasks: RuleTaskType: "+RuleTaskType)
RuleTaskType = "Completed"
NymTrace("ResetTasks: AreaTaskCounter: "+AreaTaskCounter)
AreaTaskCounter = 0
NymTrace("ResetTasks: CompletedAreaTasks: "+CompletedAreaTasks)
CompletedAreaTasks = 0
NymTrace("ResetTasks: SlaveRule: "+SlaveRule)
SlaveRule = 0
GlovesJob = false

	Form[] CleanUpList = new Form[40]
	Keyword[] CleanKWDList = new Keyword[1]	
	CleanKWDList[0] = KWD_SlaveryCleanup
	int ItemsRemovedCheck	
		CleanUpList = SPE_ObjectRef.GetItemsByKeyword(cfgqst.PlayerRef, CleanKWDList, false) 
		ItemsRemovedCheck = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, CleanUpList, none) 
	NymTrace("ResetTasks: ItemsRemovedCheck: "+ItemsRemovedCheck)	
;/
	Form[] ResetList = new Form[22]
	ResetList[0] = SlaveTask_FetchItemCounter
	ResetList[1] = SlaveTask_ServiceCounter
	ResetList[2] = SlaveTask_FetchFirewood
	ResetList[3] = SlaveTask_FetchFlowers
	ResetList[4] = SlaveTask_OrgyInn
	ResetList[5] = SlaveTask_OrgyBarracks
	ResetList[6] = SlaveTask_OrgyCastle
	ResetList[7] = SlaveTask_OrgyStreets
	
	ResetList[8] = SlaveTask_ServeHorses
	ResetList[9] = SlaveTask_ServeDogs
	ResetList[10] = SlaveTask_RuleBoots
	ResetList[11] = SlaveTask_RuleBowing
	ResetList[12] = SlaveTask_RuleClean
	ResetList[13] = SlaveTask_RuleCrawling	
	ResetList[14] = SlaveTask_FetchGarbage
	ResetList[15] = SlaveTask_FetchSweepStreet
	
	ResetList[16] = SlaveTask_FetchIronIngots
	ResetList[17] = SlaveTask_FetchLeather	
	ResetList[18] = SlaveTask_FetchKnifes
	ResetList[19] = SlaveTask_FetchIronOre
	ResetList[20] = SlaveTask_ServePeople
	ResetList[21] = SlaveTask_FetchArmor
	ResetList[22] = SlaveTask_FetchHelmets
	ResetList[23] = Hint_DDs
	ResetList[24] = Hint_Gloves	
	

	ItemCountReset = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ResetList, none) 	;remove Task Counter
	/;

	;NymMessage("Tasks resetted, Items removed: "+ItemCountReset)

EndFunction 


Function UpdateModEvents_LocalSlavery(bool register)		;#RegisterForModEvents
	
	if register
	RegisterForModEvent("StartShortWhipping", "OnStartShortWhipping")
	RegisterForModEvent("StartResting", "OnStartResting")
	RegisterForModEvent("StartMining", "OnStartMining")
	RegisterForModEvent("StartSweeping", "OnStartSweeping")
	RegisterForModEvent("StartOrgy", "OnStartOrgy")
	RegisterForModEvent("StartRequestMaster", "OnStartRequestMaster")
	RegisterForModEvent("StartSeduction", "OnStartSeduction")
	RegisterForModEvent("StartBodySearch", "OnStartBodySearch")
	;RegisterForModEvent("StartResting", "OnStartResting")
	else 
	UnregisterForModEvent("StartShortWhipping")
	UnregisterForModEvent("StartResting")
	UnregisterForModEvent("StartMining")
	UnregisterForModEvent("StartSweeping")
	UnregisterForModEvent("StartOrgy")
	UnregisterForModEvent("StartRequestMaster")
	UnregisterForModEvent("StartSeduction")
	UnregisterForModEvent("StartBodySearch")
	;UnregisterForModEvent("StartShortWhipping")	
	endif 
	
EndFunction 


Function OnStartSeduction(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Resting

		DebugTrace("OnStartSeduction(START)")
		SlaveIsOccupied = 1
		GoodMessage("You try to seduce your target")
		if TempMaster
		NymTrace("Set Look At MASTER")
		cfgqst.PlayerRef.SetLookAt(TempMaster)
		else 
		NymTrace("Set Look At NO MASTER")
		endif 
		
		cfgqst.ProxActorDetected = 0
		storqst.SlaveAtWork = true	
			storqst.PlayerPosingVehicle(true)
			cfgqst.Immobilize(True)
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
			
			Utility.Wait(7.0)
			
			Bool Seduced = false
			int SeductionChance = 0
			float fDirtiness = cfgqst.GetDirtiness()
			int ifDirtiness = fDirtiness as int
			NymTrace("#Slavery: Dirtiness:" +ifDirtiness)
			
			;Creature Seduction is reversed
			if CreatureTask
			SeductionChance = 10	
				if  cfgqst.IsPlayerCumsoaked() 
					if D100(20)
					SeductionChance = 0
					else
					SeductionChance +50
					endif
				endif 
				SeductionChance += ifDirtiness
				
			else 
			SeductionChance = 90
				if cfgqst.IsPlayerCumsoaked() 
					if D100(80)
					SeductionChance -= 25
					else
					SeductionChance = 100
					endif
				endif 
				SeductionChance -= ifDirtiness
			endif 
			
			if D100(SeductionChance)
			Seduced = true 
			else 
			SeductionChance	+= 10
			Utility.Wait(7.0)
			endif 
			
			if D100(SeductionChance)
			Seduced = true 
			endif 
			
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			
			
			;Check if we already served this actor (we count based on the services already completed? maybe bad
			bool AlreadyServed = false
			int iTempServices = ServicesCompleted ;BEFORE 
			if TempMaster
				
				;we search the already saved actors
				while (iTempServices > 0) && !AlreadyServed
				iTempServices -= 1
					if TempMaster == ServedActors[iTempServices]
					AlreadyServed = true 
					endif 
				endwhile 
			endif 
			
			;TRy to seduce s
			
			if AlreadyServed
			AlreadyServed = false
			BadMessage("You already served this actor, try another or try later")
			cfgqst.PublicExposure += Utility.RandomInt(4,8)
			elseif Seduced 
				cfgqst.DefeatStateChapter = "Fast Slave Sex"
				GoodMessage("You manage to seduce your Target")
				
				cfgqst.DefeatEntranceVia = "Service"
				
				if CreatureTask && !storqst.IsHuman(TempMaster)
				calmqst.StartSexFast("FastSlaveRape", SexTaskRaceKey , TempMaster, none,  cfgqst.PlayerRef)
				else 
				calmqst.StartSexFast("FastSlaveRape", "Human", TempMaster, none, cfgqst.PlayerRef)
				endif 
				
				while  cfgqst.SexScene &&  cfgqst.ModEnabled
				Utility.Wait(3.0)
				;defqst.SexDuration +=2
				endwhile 
				
				NymTrace("defqst.SexDuration: "+defqst.SexDuration)
				
				if playscr.GetCurrentLocationName() == "Inn" && storqst.DarkNight
					
					if defqst.SexDuration < 120
					defqst.SexDuration = 0
					BadMessage("Your abuser came too fast, useless Slave!")
					playscr.CalculateSlaveGold("Increase", 0)
					else 
					defqst.SexDuration = 0
				
					ServicesCompleted += 1
					
						if D100(75)
						GoodMessage("Your abuser is happy! Its now "+storqst.GetGameHour())
						else 
						GoodMessage("Barely good enough.")
						endif 
					storqst.GracePeriodSlave += 2	
					playscr.CalculateSlaveGold("Whoring Reduce", 0)
					endif 
				else 
					if defqst.SexDuration < 80
					defqst.SexDuration = 0
					BadMessage("Your raper came too fast, useless Slave!")
					playscr.CalculateSlaveGold("Increase", 0)
					cfgqst.PublicExposure += Utility.RandomInt(6,12)
					
					elseif storqst.TargetActorProfession == "BlackSmith" && defqst.SexDuration > 160
					defqst.SexDuration = 0
					ServicesCompleted += 1
					storqst.GracePeriodSlave += 3
					GoodMessage("The Blacksmith likes you!")
					
					Utility.Wait(2.0)
					 if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
					nade_DDint.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, true, "none", "none", "none", "none", "none")
					 endif 
					
					if SlaveFetchTaskItemCount == 0 
					Utility.Wait(2.0)
					GiveSlaveTasks("GrindStone")
					endif 
					
					playscr.CalculateSlaveGold("Reduce", 0)
					else 
					defqst.SexDuration = 0
					ServicesCompleted += 1
					GoodMessage("Your raper is happy!")
					storqst.GracePeriodSlave += 2
					playscr.CalculateSlaveGold("Reduce", 0)
					endif 
				endif 
		
				if ServicesCompleted > iTempServices
					;if we completed the Task we save the ACtor
					int SaveActor =	ServicesCompleted - 1
					
					if !ServedActors[SaveActor]
					ServedActors[SaveActor] = TempMaster
					endif 
					
					if !ServedActors[SaveActor]
						if nym()
						Debug.MessageBox("No Served Actor Saved!")
						endif
					endif 
				endif 
				TempMaster = none
				 cfgqst.DefeatStateChapter = "Free"
				
			else
			BadMessage("You failed to seduce your target")
			cfgqst.PublicExposure += Utility.RandomInt(4,8)
	
			endif 
			SlaveIsOccupied = 0
			storqst.SlaveAtWork = false
			storqst.PlayerPosingVehicle(false)
			cfgqst.Immobilize(false)	
		
		cfgqst.PlayerRef.ClearLookAt()
		DebugTrace("OnStartSeduction(END)")

EndFunction 


Function OnStartBodySearch(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Resting

		int GracePeriod_SAVE = 0
		if TempMaster
		
		DebugTrace("OnStartBodySearch(START)")

				SlaveIsOccupied = 1
				storqst.SlaveAtWork = true
				BadMessage("They conduct a very serious body search.")
				cfgqst.Immobilize(True)
				storqst.PlayerPosingVehicle(true)
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
				
				Utility.Wait(2.0)
				
				cfgqst.ResetIdle(cfgqst.PlayerRef)
	
					cfgqst.DefeatStateChapter = "Fast Slave Sex"
					
						calmqst.StartSexFast("FastSlaveRape", "Body Search", TempMaster, none, cfgqst.PlayerRef)
						
					while cfgqst.SexScene && cfgqst.ModEnabled
					Utility.Wait(3.0)
					;defqst.SexDuration+=2
					endwhile 
					
					if defqst.SexDuration < 80
					defqst.SexDuration = 0
					BadMessage("They could not finish their search")
					playscr.CalculateSlaveGold("Increase", 0)
					else 
					defqst.SexDuration = 0
					GoodMessage("The search is over")
					playscr.CalculateSlaveGold("Reduce", 0)				
					endif 
					
					TempMaster = none
					cfgqst.DefeatStateChapter = "Free"
					
			 
				storqst.SlaveAtWork = false
				storqst.PlayerPosingVehicle(false)

				cfgqst.Immobilize(false)
				SlaveIsOccupied = 0
		endif  
		DebugTrace("OnStartRequestMaster(END)")
		
EndFunction 


Function OnStartRequestMaster(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Request

		int GracePeriod_SAVE = 0
		
		DebugTrace("OnStartRequestMaster(START)")
				
				;cfgqst.ProxGuardDetected = 0
				SlaveIsOccupied = 1
				storqst.SlaveAtWork = true
				GoodMessage("You show respect to the Master")
				cfgqst.Immobilize(True)
				storqst.PlayerPosingVehicle(true)
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
				
				Utility.Wait(2.0)
				
				if !storqst.DarkNight
				NymTrace("OnStartRequestMaster(A)")
				UpdateSlaveReportingTasks()
				endif 
				Utility.Wait(5.0)
				
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				
				if storqst.DarkNight || D100(10)
				
					cfgqst.DefeatStateChapter = "Fast Slave Sex"
					
					if storqst.DarkNight
					BadMessage("Aren't you supposed to sleep?")
					else 
					BadMessage("The Master wants you now")
						if storqst.GracePeriodSlave > 0
						GracePeriod_SAVE = storqst.GracePeriodSlave
						endif 
					endif 
					
					calmqst.StartSexFast("FastSlaveRape", "Human", TempMaster, none, cfgqst.PlayerRef)
						
					while cfgqst.SexScene && cfgqst.ModEnabled
					Utility.Wait(3.0)
					;defqst.SexDuration+=2
					endwhile 
					
					if defqst.SexDuration < 80
					defqst.SexDuration = 0
					BadMessage("The Master came too fast, useless Slave!")
					playscr.CalculateSlaveGold("Increase", 0)
					else 
					defqst.SexDuration = 0
					GoodMessage("The Master is happy!")
					playscr.CalculateSlaveGold("Reduce", 0)
					
						if GracePeriod_SAVE > 0
						storqst.GracePeriodSlave = GracePeriod_SAVE
						endif 
					
					endif 
					
					TempMaster = none
					cfgqst.DefeatStateChapter = "Free"
					
				endif 
				storqst.SlaveAtWork = false
				storqst.PlayerPosingVehicle(false)

				cfgqst.Immobilize(false)
				SlaveIsOccupied = 0
				storqst.ProxMasterDetected = 0
				
		DebugTrace("OnStartRequestMaster(END)")

EndFunction 



Function OnStartOrgy(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Orgy

		DebugTrace("OnStartOrgy(START)")
		
		storqst.PlayerPosingVehicle(true)	
		;ProstitutionScenario = "Bound"
		cfgqst.DefeatEntranceVia = "Orgy"
		
		cfgqst.DefeatTypeGeneral = "AreHumans"
		cfgqst.DefeatType = "Humans"
		cfgqst.CivilRapeRunning = True
		cfgqst.DefeatViaSurrender = true ;<<<---- STILL? ---> I think it triggers the Defeat Scan for Type, no? maybe replace...
		cfgqst.DefeatViaSlavery = true		;sigh????
		cfgqst.StartDefeat()
		

		DebugTrace("OnStartOrgy(END)")

EndFunction 


Function OnStartSweeping(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Sweeping

		DebugTrace("OnStartSweeping(START)")
		
		storqst.SlaveAtWork = true
		cfgqst.Immobilize(true)
		storqst.PlayerPosingVehicle(true) 
		Idle TempIdle = (Game.GetFormFromFile(0x000640FE, "Skyrim.esm") as Idle)	;idleLooseSweepingStart 
		if TempIdle
		cfgqst.PlayerRef.PlayIdle(TempIdle)
		endif 

		BroomCleanMarker()

		DebugTrace("OnStartSweeping(END)")

EndFunction 

Function OnStartMining(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Mining

		DebugTrace("OnStartMining(START)")
		
		storqst.SlaveAtWork = true
		cfgqst.Immobilize(true)
		storqst.PlayerPosingVehicle(true) 
		
		float Height = GetVeinHeight()
		NymTrace("Current Vein Height: "+Height)
		
		;if Height > 100	;low vein? ;needs improvement
		
		String sMineName = storqst.GetLocationName()
		
		if sMineName == "Quicksilver Mine"
			if Height > 100
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeEnterInstant") 
			else 
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeFloorEnterInstant")
			endif 
		else 
		Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeFloorEnterInstant") 
		endif 
		;Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeFloorEnterInstant") 
	;	else 
	;	Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeEnterInstant") 
		;endif 
				
		if FetchTaskType == "Mine Iron Ore"	
		
		Mining("Iron Ore")
		
		elseif FetchTaskType == "Mine Quicksilver Ore"	
		
		Mining("Quicksilver Ore")
		endif 

		DebugTrace("OnStartMining(END)")

EndFunction 

		
Function OnStartResting(String EventName, String ArgString, Float ArgNum, Form Sender)	;#Resting

	DebugTrace("OnStartResting(START)(Exhaustion:"+storqst.Exhaustion+")")

	cfgqst.Immobilize(true)
	storqst.PlayerPosingVehicle(true) 
	;storqst.SlaveAtWork = true 
	
	if storqst.HeelsHeightActive 	
	cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, 66756)	
	endif 
	
	cfgqst.PlayerRef.SetHeadTracking(false)
	cfgqst.PlayerRef.ClearLookAt()
	storqst.Resting = true
	
	if storqst.Exhaustion > 5
	storqst.Exhaustion = 5
	endif 
	
	;storqst.Resting = true
	
	Idle RestingIdle
	int i = Utility.RandomInt(1,6)
	NymTrace("Current Resting ANimation: "+i)
	if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
	i = Utility.RandomInt(4,6)
	endif 
	
	if i == 1
	RestingIdle = cfgqst.IdlesAnimalDefeat[1] 	;Bowing LOW on All Fours TIGHT, shivering a bit
	elseif i == 2
	RestingIdle = cfgqst.IdlesDefeatUnbound[8] 	;Sitting on Ass Exhausted, leanding back, breathing, legs angled, no dd
	elseif i == 3
	RestingIdle = cfgqst.IdlesDefeatUnbound[5] 	;Curled together on side, covering boobs and ass no DD
	elseif i == 4
	RestingIdle = cfgqst.IdlesDefeatUnbound[4] 	;Sitting on Ass Exhausted, head hanging, legs straight ;DD approved	
	elseif i == 5
	RestingIdle = cfgqst.IdlesDefeatUnbound[11] 	;Sitting on Ass low, kneeling low, hands on ground, head hanging ;DD approved
	elseif i == 6
	RestingIdle = cfgqst.IdlesDefeatUnbound[16] 	;Sitting on Ass low, holding stomach, legs straight, breathing		;DD approved	
	endif 
	
	cfgqst.PlayerRef.PlayIdle(RestingIdle)
	
	while storqst.Resting && storqst.Exhaustion > 0 && cfgqst.ModEnabled
	;This Loop lasts until we are interrupted OR Exhausiton is Zero.
	NymTrace("OnStartResting(LOOP)(Exhaustion:"+storqst.Exhaustion+")")
	int iWaitTime = Utility.RandomInt(10,15)
	int iMoanTimer = 0
	
		while iWaitTime > 0 && storqst.Resting && cfgqst.ModEnabled
		;This loop is just the time taken for Exhaustion to go down. Stops when Interrupted
		iWaitTime -= 1
		iMoanTimer += 1
		Utility.Wait(1.0)
			if iMoanTimer > 2
			iMoanTimer == 0
			storqst.PlayerSoundToPlay = "Breathing"
			SendModEvent("Moan")
			endif 
		;Utility.Wait(Utility.RandomInt(10,15))
		endwhile 

		if storqst.Exhaustion == 5
		SendModEvent("Moan")
		else
		storqst.PlayerSoundToPlay = "Breathing"
		SendModEvent("Moan")
		endif 
		
		if iWaitTime == 0
		storqst.ExhaustionChange(-1)
		endif 
		
	endwhile
			
	if storqst.Resting
		if storqst.Exhaustion == 0
			storqst.Resting = false
			GoodMessage("You get up, fully rested") 
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			cfgqst.Immobilize(false)
			storqst.PlayerPosingVehicle(false) 
		endif
	else 
	
	storqst.Resting = false		;superfluous?
	cfgqst.ResetIdle(cfgqst.PlayerRef)
	cfgqst.Immobilize(false)
	storqst.PlayerPosingVehicle(false) 
	endif 

	cfgqst.PlayerRef.SetHeadTracking(true)
	cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 66840)
	DebugTrace("OnStartResting(END)")

EndFunction 

Function OnStartShortWhipping(String EventName, String ArgString, Float ArgNum, Form Sender)
	NymTrace("OnStartShortWhipping")
	
	Actor ShortWhipper = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 1000, true)
	Bool WhipperFound = false
	if ShortWhipper && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
	ShortWhipper.AddToFaction(WhippingFaction)
	WhipperFound = true
	else
	ShortWhipper = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 2000, true)
		if ShortWhipper && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
		ShortWhipper.AddToFaction(WhippingFaction)
		WhipperFound = true
		else 
			ShortWhipper = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 3000, true)
			if ShortWhipper && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
			ShortWhipper.AddToFaction(WhippingFaction)
			WhipperFound = true
			endif 
		endif 	
	endif 	

	if WhipperFound
	NymTrace("OnStartShortWhipping WhipperFound")
	storqst.StartWhipping_00(8.0)
	;whipq00.StartShortWhipping()
	
	endif 
	
EndFunction 

Function LocalSlaverySetup()
	
	if storqst.LocalSlavery
	FetchTaskType = "Completed"
	SexTaskType = "Completed"
	RuleTaskType = "Completed"
	TotalSlaveTasksCompleted = 0
	float SlaveGold = Utility.RandomFloat(storqst.PriceOfFreedomMin, storqst.PriceOfFreedomMax)
	SPE_actor.SetActorCalmed(cfgqst.PlayerRef, true)
	folqst.SetFollowersCalmed(true)
	cfgqst.PlayerRef.AddToFaction(storqst.LocalSlaveFaction)
	;cfgqst.SetSlaveryLocation() ><<<REWORK
	Utility.Wait(0.1) 
	playscr.CalculateSlaveGold("Apply", SlaveGold as int)
	cfgqst.PublicExposure = 0
	StartingMessage()
	cfgqst.PlayerRef.AddItem(SlaveLaw_Basic, 1, true)
	
	NymTrace("Slavegold: "+SlaveGold+" Slavery Location: "+storqst.CurrentSlaveryLocationName)
	;Debug.Messagebox("NAKED DEFEAT Local Slavery: You are a local slave now. You have a letter with slave laws in your inventory")
;	GoodMessage("You have a letter with slave laws in your inventory")
	endif 
	
EndFunction


Function MasterGivesIdle(actor akActor)
NymTrace("MasterGivesIdle")
			Idle TempIdle = (Game.GetFormFromFile(0x000B5E20, "Skyrim.esm") as Idle) ;IdleGive
			
			if !TempIdle 
			NymBox("No IDLE")
			endif 
			if !akActor
			NymBox("No MASTER")
			endif 
			cfgqst.ResetIdle(akActor)
			akActor.PlayIdle(TempIdle)
			Utility.Wait(2.0)
			cfgqst.ResetIdle(akActor)
	
EndFunction 

Function MasterTakesIdle(actor akActor)
NymTrace("MasterTakesIdle")
			Idle TempIdle = (Game.GetFormFromFile(0x000B5E1F, "Skyrim.esm") as Idle) ;IdleTake
			
			if !TempIdle 
			NymBox("No IDLE")
			endif 
			if !akActor
			NymBox("No MASTER")
			endif 
			cfgqst.ResetIdle(akActor)
			akActor.PlayIdle(TempIdle)
			Utility.Wait(4.0)
			cfgqst.ResetIdle(akActor)
	
EndFunction 

Bool Function HasSweepStreetsTask()

	if FetchTaskType == "Sweeping the Streets" 
		if CompletedAreaTasks > SlaveFetchTaskItemCount
		;finished sweeping	
		return false
		elseif CompletedAreaTasks == SlaveFetchTaskItemCount
		;CompletedAreaTasks += 1
		;almost finished sweeping (next time the orgy will start!)
		return true 
		else 
		return true 
		endif 
	else 
	return false 
	endif 

EndFunction 

Bool Function WantsToMine()
	
	;if FetchTaskType == "Mine Iron Ore" && playscr.GetCurrentLocationName() == "Mine" && IsWorkingOnStation("Iron Ore Vein")	;EXPAND
	if playscr.GetCurrentLocationName() == "Mine" && IsWorkingOnStation("Ore Vein")	;EXPAND
	return true
	else 
	return false 
	endif 

EndFunction 

Bool Function HasSweepTask()

	if FetchTaskType == "Sweeping the Castle" 
		if CompletedAreaTasks > SlaveFetchTaskItemCount
		;finished sweeping	
		return false
		elseif CompletedAreaTasks == SlaveFetchTaskItemCount
	;	CompletedAreaTasks += 1
		;almost finished sweeping (next time the orgy will start!)
		return true 
		else 
		return true 
		endif 

	elseif FetchTaskType == "Sweeping the Inn"  
		if CompletedAreaTasks > SlaveFetchTaskItemCount
		;finished sweeping
		return false 
		elseif CompletedAreaTasks == SlaveFetchTaskItemCount
		;CompletedAreaTasks += 1
		return true 
		else 
		return true 
		endif 
	return false 
	else 
	return false 
	endif 

EndFunction 

Function EndLocalSlavery()	;##End

	if storqst.IsLocalSlave()
		DebugTrace("EndLocalSlavery()")
		EndMessage()
		;Debug.Messagebox("You paid the price for freedom and are set free. A short grace period is applied to prevent public punishment.") 
		
		if cfgqst.PlayerRef.IsInFaction(storqst.BowingFaction)
		cfgqst.PlayerRef.RemoveFromFaction(storqst.BowingFaction)
		endif 
		if cfgqst.PlayerRef.IsInFaction(cfgqst.CrawlFaction)
		cfgqst.PlayerRef.RemoveFromFaction(cfgqst.CrawlFaction)
		endif
		
		storqst.SlaveryLocations.RemoveAddedForm(CurrentLocalSlaveryLoc)		
		CurrentLocalSlaveryLoc = none
		CurrentSlaveryLocationName = "None"
		
		if PlacedWorkbench
		PlacedWorkbench.DisableNoWait()
		PlacedWorkbench.Delete()
		PlacedWorkbench = none 
		endif 
		
		if PlacedAnvil
		PlacedAnvil.DisableNoWait()
		PlacedAnvil.Delete()
		PlacedAnvil = none 
		endif 
		
		if PlacedChoppingBlock
		PlacedChoppingBlock.DisableNoWait()
		PlacedChoppingBlock.Delete()
		PlacedChoppingBlock = none 
		endif 		
		
		if PlacedTanningRack
		PlacedTanningRack.DisableNoWait()
		PlacedTanningRack.Delete()
		PlacedTanningRack = none 
		endif 

		if PlacedSmelter
		PlacedSmelter.DisableNoWait()
		PlacedSmelter.Delete()
		PlacedSmelter = none 
		endif

		if PlacedGrindstone
		PlacedGrindstone.DisableNoWait()
		PlacedGrindstone.Delete()
		PlacedGrindstone = none 
		endif		
		
		storqst.IsLocalSlave = 0
		cfgqst.PublicExposure = 0
		ResetTasks()
		storqst.GracePeriodSlave = 10
		cfgqst.DefeatStatePlayer = "Free"
		cfgqst.DefeatStateChapter = "Free"
		playscr.ClearCurrentSlaveryLocation()
		
		cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")	
		
		;cfgqst.PlayerRef.RemoveFromFaction(storqst.LocalSlaveFaction) ---> only when no other location enslaved us still
		SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, false)
		folqst.SetFollowersCalmed(false)
		TotalSlaveTasksCompleted = 0
		
	Endif 
EndFunction 

Function UpdateSlaveReportingTasks()		;#Update
	NymTrace("UpdateSlaveReportingTasks()")
	NymTrace("UpdateSlaveReportingTasks() ActiveSlaveTasks ("+ActiveSlaveTasks)
	NymTrace("UpdateSlaveReportingTasks() SlaveFetchTaskItemCount ("+SlaveFetchTaskItemCount)
	int DeliveredItemsCount
	int CompareWithTaskCount
	bool Cheater = false
	Bool WorkingTaskFailed = false
	bool GoodSlaveGetsInfo = true
	
	int TaskValueFinal = 0
	Float CalculateTaskValue = 0.0
	
	if Nym()
	;MasterGivesIdle(TempMaster)
	;tility.Wait(3.0)
	endif 
	
	;GET NEW TAKS 
	if ActiveSlaveTasks == 0
	NymTrace("UpdateSlaveReportingTasks(No Tasks, Give Tasks)")
	
	
	MasterGivesIdle(TempMaster)
	GiveSlaveTasks("Random")
	
	else 
	
	;REPORT IN OLD TAKS 
	
		;FETCH TASK
		if SlaveFetchTaskItemCount > 0
		
			NymTrace("UpdateSlaveReportingTasks(SlaveFetchTaskItemCount:"+SlaveFetchTaskItemCount+")")
			NymTrace("UpdateSlaveReportingTasks(FetchTaskType:"+FetchTaskType+")")
			
			if FetchTaskType == "Firewood"
			
				if !Firewood
				Firewood = game.GetFormFromFile(0x0006F993, "Skyrim.esm")
				Firewood2 = game.GetFormFromFile(0x0203Cf16, "Dragonborn.esm") ;was its 04?
				endif 
				if !Firewood2
				Debug.Messagebox("No Firewood2 :(") 
				endif
				Form[] ItemList1 = new Form[2]
				ItemList1[0] = Firewood
				ItemList1[1] = Firewood2
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ItemList1, none) 			

				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchFirewood, 1) ;remove Task Briefing
				
				
			elseif FetchTaskType == "Flowers"
					
					Form[] FlowerList = new Form[10]
					Keyword[] KWDList = new Keyword[1]
					KWDList[0] = KWD_GiftFlower
					;IsNirnroot 001010B1
					;Snowberries, Lavender, Blue, Red, Purple, Yellow Mountain Flower, Dragon's Tongue
					;
					Flowerlist = SPE_ObjectRef.GetItemsByKeyword(cfgqst.PlayerRef, KWDList, false) 
					DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, FlowerList, none) 
					
					;Formlist added Flowers are removed here and then added
					;TempInt  SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, FlowerList, none) 
					;DeliveredItemsCount += TempInt
					
					cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchFlowers, 1) ;remove Task Briefing
					;Form[] Function GetItemsByKeyword(ObjectReference akReference, Keyword[] akKeywords, bool abMatchAll) global native	
					;NightShade, Deathbell (To DO!)
					
			;elseif FetchTaskType == "Shroomz!"		
		
		
			elseif FetchTaskType == "Collect Garbage"	;#collect2
	
			;	StartDroppingGarbage = false 
	
				int TTestInt
				Form[] GarbageList = new Form[31]
				Keyword[] KWDList = new Keyword[1]	
				KWDList[0] = KWD_NakedGarbage
				
				GarbageList = SPE_ObjectRef.GetItemsByKeyword(cfgqst.PlayerRef, KWDList, false) 
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, GarbageList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchGarbage, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)
				
				DeleteDroppedGarbage()
				
				
			elseif FetchTaskType == "Grindstone"	

				int TTestInt
				Form[] Knifelist = new Form[1]
				Knifelist[0] = (Game.GetFormFromFile(0x00104B40, "Skyrim.esm") as Form)	 ;Knifes
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, Knifelist, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchKnifes, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)

			elseif FetchTaskType == "Forge"	

				int TTestInt
				Form[] HelmetList = new Form[1]
				HelmetList[0] = (Game.GetFormFromFile(0x00012E4D, "Skyrim.esm") as Form) 	;Iron Helmets
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, HelmetList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchHelmets, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)

			elseif FetchTaskType == "Workbench"	

				int TTestInt
				Form[] ArmorList = new Form[1]
				ArmorList[0] = (Game.GetFormFromFile(0x0003619E, "Skyrim.esm") as Form)	;Leather Armor
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ArmorList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchArmor, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)

			elseif FetchTaskType == "Tanning Rack"	

				int TTestInt
				Form[] LeatherList = new Form[1]
				LeatherList[0] = (Game.GetFormFromFile(0x000DB5D2, "Skyrim.esm") as Form) ;Leather
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, LeatherList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchLeather, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)
				
				
			elseif FetchTaskType == "Smelter"	;was Forge. But Forge will do other stuff

				int TTestInt
				Form[] IngotList = new Form[1]
				IngotList[0] = (Game.GetFormFromFile(0x0005ACE4, "Skyrim.esm") as Form) ;IronIngots
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, IngotList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchIronIngots, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)
				
			elseif FetchTaskType == "Mine Iron Ore"	

				int TTestInt
				Form[] IronOreList = new Form[1]
				IronOreList[0] = storqst.IronOre as Form ;IronOre
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, IronOreList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchIronOre, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)
	
			elseif FetchTaskType == "Mine Quicksilver Ore"	

				int TTestInt
				Form[] QuickSilverOreList = new Form[1]
				QuickSilverOreList[0] = storqst.QuicksilverOre as Form ;QuickSilverOre
				
				DeliveredItemsCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, QuickSilverOreList, none) 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchQuicksilverOre, 1) ;remove Task Briefing
				NymTrace("Items Removed = "+TTestInt)	
				
			elseif FetchTaskType == "Sweeping the Streets"
					
					DeliveredItemsCount = CompletedAreaTasks
					CompletedAreaTasks = 0		
					
					cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchSweepStreet, 1) ;remove Task Briefing
					;Form[] Function GetItemsByKeyword(ObjectReference akReference, Keyword[] akKeywords, bool abMatchAll) global native	

			elseif FetchTaskType == "Sweeping the Castle"
					
					DeliveredItemsCount = CompletedAreaTasks
					CompletedAreaTasks = 0		
					
					cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchSweepCastle, 1) ;remove Task Briefing
					;Form[] Function GetItemsByKeyword(ObjectReference akReference, Keyword[] akKeywords, bool abMatchAll) global native	
			elseif FetchTaskType == "Sweeping the Inn"
					
					DeliveredItemsCount = CompletedAreaTasks
					CompletedAreaTasks = 0		
					
					cfgqst.PlayerRef.RemoveItem(SlaveTask_FetchSweepInn, 1) ;remove Task Briefing
					;Form[] Function GetItemsByKeyword(ObjectReference akReference, Keyword[] akKeywords, bool abMatchAll) global native	
										
			endif 
		
			Form[] ItemList2 = new Form[1]
			ItemList2[0] = SlaveTask_FetchItemCounter
			CompareWithTaskCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ItemList2, none) 	;remove Task Counter
			
			if GlovesJob
			GlovesJob = false
			endif 
			
			NymTrace("CompareWithTaskCount:"+CompareWithTaskCount)
			NymTrace("DeliveredItemsCount:"+DeliveredItemsCount)
			NymTrace("SlaveFetchTaskItemCount:"+SlaveFetchTaskItemCount)
		
			;FETCH TASK --- CHEATED
			if CompareWithTaskCount < SlaveFetchTaskItemCount
				BadMessage("You were caught cheating!")
				playscr.CalculateSlaveGold("Massive Increase", 0)
				cfgqst.PublicExposure += 20
				GoodSlaveGetsInfo = false
				WorkingTaskFailed = true
				
			;FETCH TASK --- SUCCESS 
			elseif DeliveredItemsCount >= SlaveFetchTaskItemCount
			
				LastFetchTaskType = FetchTaskType
			
				GoodMessage("Fetch Task successfull, good slave")
				cfgqst.PublicExposure = 0
				CompletedDayTasks += 1
				TotalSlaveTasksCompleted += 1
				MasterTakesIdle(TempMaster)
				if DeliveredItemsCount <= 10
				playscr.CalculateSlaveGold("Reduce", 1)
				elseif DeliveredItemsCount > 10
				playscr.CalculateSlaveGold("Reduce", 2)
				elseif DeliveredItemsCount > 20
				playscr.CalculateSlaveGold("Reduce", 3)
				endif 
				
			;FETCH TASK --- FAILED
			elseif DeliveredItemsCount < SlaveFetchTaskItemCount
				BadMessage("Fetch Task failed, stupid lazy slave")
				GoodSlaveGetsInfo = false
				playscr.CalculateSlaveGold("Increase", 0)
				cfgqst.PublicExposure += 10
				WorkingTaskFailed = true
			endif 
			
			;CLEANUP
			
			ActiveSlaveTasks -= 1
			FetchTaskType = "Completed"
			RequiredStation = "None"
			SlaveFetchTaskItemCount = 0	
			
		endif 
	
		Utility.Wait(5.0)
		
		;Orgies Autocomplete 
		
		;SERVICE SEX TASK	
		;This seems easy. we have always the same checks and conditions, so resolve is always the same. So we only remove the letters and reset values and be good.
		
		if (SlaveSexTaskPartners > 0) && (SlaveSexTaskPartners < 100)
			NymTrace("UpdateSlaveReportingTasks(SlaveSexTaskPartners:"+SlaveSexTaskPartners+")")
			
			;if CreatureTask 
			
				Form[] ItemList3 = new Form[1]
				ItemList3[0] = SlaveTask_ServiceCounter

				CompareWithTaskCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ItemList3, none) 	;remove Task Counters

				NymTrace("SEX: CompareWithTaskCount:"+CompareWithTaskCount)
				NymTrace("SEX: SlaveTask_ServiceCounter:"+SlaveTask_ServiceCounter)
				NymTrace("SEX: ServicesCompleted:"+ServicesCompleted)
				;SEX TASK --- CHEATED
			;	if CompareWithTaskCount < ServicesCompleted	;BUGGED
			;		
			;;		BadMessage("You were caught cheating!")
			;		playscr.CalculateSlaveGold("Massive Increase", 0)
			;		cfgqst.PublicExposure += 20
			;		GoodSlaveGetsInfo = false
				;SEX TASK --- SUCCESS 
				if ServicesCompleted >= SlaveSexTaskPartners && !WorkingTaskFailed
				GoodMessage("Service Task successfull, good slave")
				cfgqst.PublicExposure = 0
				  ;remove Task Briefing

				CompletedDayTasks += 1
				TotalSlaveTasksCompleted += 1
				MasterTakesIdle(TempMaster)
				playscr.CalculateSlaveGold("Reduce", SlaveSexTaskPartners) ;we cannot work OVER
					
				;SEX TASK --- FAILED 
				elseif ServicesCompleted < SlaveSexTaskPartners
					GoodSlaveGetsInfo = false
					
					if WorkingTaskFailed
					BadMessage("Only fucking but not doing any work? Selfish slave cunt!")
					playscr.CalculateSlaveGold("Increase", 0)
					cfgqst.PublicExposure += 10	
					else 
					BadMessage("Service Task failed, prude slave cunt")
					playscr.CalculateSlaveGold("Increase", 0)
					cfgqst.PublicExposure += 10	
					endif 
				endif 

				;CLEANUP								
				Form[] ItemList4 = new Form[3]
				ItemList4[0] = SlaveTask_ServeHorses
				ItemList4[1] = SlaveTask_ServeDogs
				ItemList4[2] = SlaveTask_ServePeople
				
				SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, ItemList4, none)
				ServicesCompleted = 0
				SlaveSexTaskPartners = 0
				SexTaskType = "Completed"
				ActiveSlaveTasks -= 1
				CreatureTask = 0
				SexTaskRaceKey = "empty"
				SexTaskDuration = 0
				
				ResetServedActors()
				
				

		;	else ;Human Service Tasks	
					
		;	endif 
		endif 
		
		if GoodSlaveGetsInfo && storqst.IsLocalSlave()
		playscr.CalculateSlaveGold("Info", 0)
		endif 
		
	endif 
		
EndFunction 


Bool Function HasCompletedSlaveTasks()

	if TotalSlaveTasksCompleted == 0
	return false 
	else 
	return TRUE
	endif 

EndFunction 

Function ResetServedActors()

				int temp = 21
				
				while (temp > 0) 
				temp -= 1
					if ServedActors[temp]
					ServedActors[temp] = none 
					endif 
				endwhile 
				
EndFunction 

Bool Function IsSlaveCurrentlyWorking()

		NymTrace("IsSlaveCurrentlyWorking()")
		ObjectReference ClosestFurniture
		int SitStatePlayer
		
		SitStatePlayer = cfgqst.PlayerRef.GetSitState()
		NymTrace("SitStatePlayer: "+SitStatePlayer)

		if SitStatePlayer == 3

			;NEW SYSTEM ----
			ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationList, cfgqst.PlayerRef, 50.0) 
			
			if ClosestFurniture
			NymTrace("IsSlaveCurrentlyWorking(Furniture 50)")
			else 
			NymTrace("IsSlaveCurrentlyWorking(Furniture 100)")
			ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationList, cfgqst.PlayerRef, 100.0) 
				if !ClosestFurniture
				NymTrace("IsSlaveCurrentlyWorking(Furniture 150)")
				ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationList, cfgqst.PlayerRef, 150.0) 
				endif 
			endif 
			
		;	ClosestFurniture = Game.FindClosestReferenceOfTypeFromRef(WoodChoppingBlockCheck, cfgqst.PlayerRef, 100.0)
			
		;	if !ClosestFurniture
		;	ClosestFurniture = Game.FindClosestReferenceOfTypeFromRef(WoodChoppingBlockSnowCheck, cfgqst.PlayerRef, 100.0)
		;	endif 
			
			if ClosestFurniture
			NymTrace("IsSlaveCurrentlyWorking(Furniture FOUND)")
			return true
			else
			NymTrace("IsSlaveCurrentlyWorking(Furniture NOT FOUND)")
			return false
			endif
		else
		NymTrace("IsSlaveCurrentlyWorking(NOT SITTING)")
		return false 
			
		endif 

EndFunction 

Bool Function IsWorkingOnStation(String Station)

		NymTrace("IsWorkingOnStation("+Station+")")
		ObjectReference ClosestFurniture
		int SitStatePlayer
		int Mode = 1

		CraftingStationListTemp.Revert()
		
		if Station == "Smelter"
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(0))
		
		elseif Station == "Tanning Rack"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(11))
		
		elseif Station == "Workbench"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(16))
		
		elseif Station == "Grindstone"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(12))

		elseif Station == "Alchemy Lab"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(8))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(9))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(10))
		
		elseif Station == "Forge"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(13))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(14))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(15))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(17))
			
		elseif Station == "Cooking Pot"
		
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(3))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(4))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(5))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(6))
		CraftingStationListTemp.AddForm(CraftingStationList.GetAt(7))
		
		elseif Station == "Ore Vein"
		Mode = 2
			
		endif 

		if mode == 1
		
		SitStatePlayer = cfgqst.PlayerRef.GetSitState()
		NymTrace("SitStatePlayer: "+SitStatePlayer)


			if SitStatePlayer == 3

				ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationListTemp, cfgqst.PlayerRef, 50.0) 

				if ClosestFurniture
				NymTrace("IsWorkingOnStation("+Station+" 50)")
				else 
				NymTrace("IsWorkingOnStation("+Station+" 100)")
				ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationListTemp, cfgqst.PlayerRef, 100.0) 
					if !ClosestFurniture
					NymTrace("IsWorkingOnStation("+Station+" 150)")
					ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(CraftingStationListTemp, cfgqst.PlayerRef, 150.0) 
					endif 
				endif 
				
			;	ClosestFurniture = Game.FindClosestReferenceOfTypeFromRef(WoodChoppingBlockCheck, cfgqst.PlayerRef, 100.0)
				
			;	if !ClosestFurniture
			;	ClosestFurniture = Game.FindClosestReferenceOfTypeFromRef(WoodChoppingBlockSnowCheck, cfgqst.PlayerRef, 100.0)
			;	endif 
				
				if ClosestFurniture
				NymTrace("IsWorkingOnStation("+Station+" FOUND)")
				return true
				else
				NymTrace("IsWorkingOnStation("+Station+" NOT FOUND)")
				return false
				endif
			else
			NymTrace("IsWorkingOnStation(NOT SITTING)")
			return false 
				
			endif
			
	elseif mode == 2 

		ClosestFurniture = GetClosestVein()	;Veins are placed, so any work.

		if ClosestFurniture
		float MineDistance = ClosestFurniture.GetDistance(cfgqst.PlayerRef)
			
			if ClosestFurniture.HasKeyword(KWD_NakedGarbage)
			BadMessage("You were orded to work elsewhere")
			playscr.CalculateSlaveGold("Increase", 0)
			elseif MineDistance < 50
			BadMessage("You are too close to the Ore Vein")
			;NymBox("Too Close")
			return false
			elseif MineDistance > 180
			BadMessage("You are too far away from the Ore Vein")
			;NymBox("Too Far")
			return false
			elseif CheckLOSonObject(ClosestFurniture, "Vein")
			NymTrace("IsWorkingOnStation("+Station+" FOUND) MineDistance: "+MineDistance)
			return true
			else 
			
			BadMessage("You are not facingEvent the Ore Vein")
			endif
		else
		;NymBox("IsWorkingOnStation("+Station+" NOT FOUND B)")
		NymTrace("IsWorkingOnStation("+Station+" NOT FOUND)")
		return false
		endif
		
	endif

EndFunction 

int Depletion = 0

Function Mining(string Ore)		;#mining
	
	int MiningTime = 0
	int MiningTimeForOre = 10
	int MoaningTime = 0
	if Depletion == 0
	Depletion = Utility.RandomInt(4,8)
	endif 
	
	while storqst.SlaveAtWork
		Utility.Wait(1)
		MiningTime+=1
		MoaningTime +=3
		
		if MoaningTime == 3
		MoaningTime = 0
		
		
		endif 
				
		if MiningTime == 5
		;NymMessage("Exhaustion "+storqst.Exhaustion)
		
		if !GlovesProtect()
		storqst.ExhaustionChange(1) ;---> Nym()
		endif 
		cfgqst.PlayerRef.DamageAV("Stamina", 10.0)
			
			if Depletion == 0
			ScreenMessage("You are ordered to work on another vein!")
			MarkVeinAsBlocked()
			storqst.WhippingDuration = 0
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			cfgqst.Immobilize(false)
			storqst.SlaveAtWork = false
			storqst.PlayerPosingVehicle(false) 	
			
			elseif storqst.Exhaustion > 4
			BadMessage("You are exhausted. Take a break by pressing the Action Key [K]")
			if Nym()
			;
			else 	
			storqst.Exhaustion = 0	;DISABLE EXHAUSTION
			endif 
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			cfgqst.Immobilize(false)
			storqst.SlaveAtWork = false
			storqst.PlayerPosingVehicle(false) 
			storqst.WhippingDuration = 0
			endif 
		endif
		
		if storqst.SlaveAtWork && MiningTime == MiningTimeForOre
			if D100(50)
			storqst.StartWhipping_00(Utility.RandomInt(5,10))
			endif
		MiningTime = 0
		MiningTimeForOre = Utility.RandomInt(10,15) ;resets mining time. Not ideal but works here 
		cfgqst.IncreaseDirtiness(0.05)
			if Ore == "Iron Ore"
			cfgqst.PlayerRef.Additem(storqst.IronOre, 1)
			Depletion -=1
			
			elseif Ore == "Quicksilver Ore"
			cfgqst.PlayerRef.Additem(storqst.QuicksilverOre, 1)
			Depletion -=1
			
			endif 	
		endif 
		
	Endwhile
		
EndFunction 


Bool Function GlovesProtect()

		if GlovesJob	
			Form Gloves = cfgqst.PlayerRef.GetWornForm(0x00000008)
			if Gloves && D100(50) 
			return true 
			else 
			return false 
			endif 
		else 
		return false 
		endif 

EndFunction 

Function MarkVeinAsBlocked()
	NymTrace("MarkVeinAsBlocked()")
	PO3_SKSEFunctions.AddKeywordToRef(GetClosestVein(), KWD_NakedGarbage)
	
	;we get the PLACED veins and add the Keyword!!! 
	
	
EndFunction 

Function SendSlaveMoan()
	
	if D100(storqst.OnlyBreathing)
	storqst.PlayerSoundToPlay = "Breathing"
	endif 
	SendModEvent("Moan")

EndFunction 


ObjectReference Function GetClosestVein()
	NymTrace("GetClosestVein()")
	int i = 5
	
	while i > 0 
	i -= 1
		if PlacedVeins[i] && PlacedVeins[i].GetDistance(cfgqst.PlayerRef) < 181
		return PlacedVeins[i]
		NymTrace("Vein ["+i+"] closest. Distance ["+PlacedVeins[i].GetDistance(cfgqst.PlayerRef)+"]")
		endif 
	endwhile

EndFunction 

float Function GetVeinHeight()

;ClosestFurniture = Game.FindClosestReferenceOfAnyTypeInListFromRef(IronOreVeinList, cfgqst.PlayerRef, 200.0)

return GetClosestVein().GetHeight()

EndFunction 

Bool Function CheckLOSonObject(objectreference akRef, String sTempName)

		float zOffset
		zOffset = cfgqst.PlayerRef.GetHeadingAngle(akRef)

		NymTrace("CheckLOSonObject = "+zOffset)

		if (zOffset < 55) && (zOffset > -55)
		DebugTrace("#CheckLOSonObject ["+sTempName+"] is inside of FOV (110°)")
		return true 	
		else		
	;	NymBox("No Angle "+zOffset)		
		return false
		endif 

	
EndFunction


;/
Function makeworndevicesHighSec(Actor targetactor)
    Form[] inventory = targetactor.GetContainerForms()

    Int iElement = inventory.Length
    While iElement
        iElement -= 1
        ; if the item has inventorydevice and is exists
        If (inventory[iElement].haskeyword(inventorydevicekw) && inventory[iElement] != None)
            ObjectReference targetdevice = inventory[iElement] As ObjectReference
            zadEquipScript targetscript = targetdevice as zadEquipScript
            targetscript.BaseEscapeChance = 0.00
            targetscript.CatastrophicFailureChance = 0.00
            targetscript.CutDeviceEscapeChance = 0.00
            targetscript.LockPickEscapeChance = 0.00
        EndIf
    EndWhile
EndFunction
/;





Function RemoveOreVeins(string Type)

	int i = iVeinsPlaced
	int j = 0
	
	while i > 0 
	i -= 1
		if PlacedVeins[i] 
		NymTrace("PlacedVeins["+i+"] removed")
		PlacedVeins[i].DisableNoWait()
		PlacedVeins[i].Delete()
		PlacedVeins[i] = none
		j += 1
		endif 
	endwhile
	
	NymBox("Veins Removed: "+j)

EndFunction 
;/
Function PlaceOreVeins(string Type)		;#PlaceOreVeins

	;if FetchTaskType == "Mine Iron Ore"
		ObjectReference OreVein_TEMP
		ObjectReference OreVein01_DUPLICATE	
						
		int i = 6
		int j = 0
											
		Utility.Wait(2.0)
								
		while i > 0
		i -= 1
		
			while !PlacedVeins[i]
			NymTrace("Place Vein Check "+i)
			OreVein_TEMP = Game.FindRandomReferenceOfAnyTypeInListFromRef(IronOreVeinList, cfgqst.PlayerRef, 20000) 
			;NymTrace("Vein ["+i+"] Height: "+OreVein_TEMP.GetHeight())
			
			NymTrace("OreVein_TEMP ("+i+") Distance: "+OreVein_TEMP.GetDistance(cfgqst.PlayerRef))
			
				if !PlacedVeins[i] 
				;place Vein 
				PlacedVeins[i] = OreVein_TEMP.PlaceAtme(OreVein_TEMP.GetBaseObject())
				PlacedVeins[i].MoveTo(OreVein_TEMP, 10.0 * Math.Sin(OreVein_TEMP.GetAngleZ()), 10.0 * Math.Cos(OreVein_TEMP.GetAngleZ()), 5.0, abMatchRotation = true)	;move 5 units in front and 5 above
					
					;check Vein 
					if VeinAlreadyPlaced(PlacedVeins[i])
					NymTrace("Place Vein Already PLACED "+i)
					PlacedVeins[i].DisableNoWait() ;already placed, remove again. 
					PlacedVeins[i].Delete()
					PlacedVeins[i] = none 
					else 
					j += 1 ;can stay
					NymTrace("Place Vein PLACED "+i)
					endif 
			
				else 
				NymTrace("Place Vein FAILED "+i)
				endif 		
			endwhile 
			
		endwhile 
		
		NymBox("Veins Placed: "+j)


EndFunction 


/;

int iVeinsFound = 0
int iVeinsPlaced = 0
;/
Function PlaceClosestOreVein(string Type)		;#PlaceOreVeins

	;if FetchTaskType == "Mine Iron Ore"
	;	ObjectReference OreVein_TEMP
	;	ObjectReference OreVein01_DUPLICATE	
		
		
		ObjectReference [] OreVein_TEMP = new ObjectReference [24]
				
		OreVein_TEMP[iVeinsFound] = Game.FindClosestReferenceOfAnyTypeInListFromRef(IronOreVeinList, cfgqst.PlayerRef, 20000) 
		
		if OreVein_TEMP[iVeinsFound]
		
		PlacedVeins[iVeinsPlaced] = OreVein_TEMP[iVeinsFound].PlaceAtme(OreVein_TEMP[iVeinsFound].GetBaseObject())
		iVeinsFound += 1
		
			if PlacedVeins[iVeinsPlaced]
			PlacedVeins[iVeinsPlaced].MoveTo(OreVein_TEMP[iVeinsFound], 10.0 * Math.Sin(OreVein_TEMP[iVeinsFound].GetAngleZ()), 10.0 * Math.Cos(OreVein_TEMP[iVeinsFound].GetAngleZ()), 5.0, abMatchRotation = true)
			
				if VeinAlreadyPlaced(PlacedVeins[iVeinsPlaced])
				NymTrace("Place Vein ALREADY PLACED "+iVeinsPlaced)
				PlacedVeins[iVeinsPlaced].DisableNoWait() ;already placed, remove again. 
				PlacedVeins[iVeinsPlaced].Delete()
				PlacedVeins[iVeinsPlaced] = none 
				else 
				NymTrace("Place Vein PLACED "+iVeinsPlaced)
				NymMessage("Vein Placed ("+iVeinsPlaced+")")
				iVeinsPlaced += 1
				endif 
			endif 
		endif 	
	
EndFunction 

/;



;We need to check for the presence of stuff before we give tasks 
;Check for Veins Iron etc.
;check for flowers 
;check for Mushrooms 


Bool AllowTask_Mushrooms
Bool AllowTask_Flowers
Bool AllowTask_MineIron
Bool AllowTask_MineQuicksilver 

;StationTasks are always allowed since we can place them!

Function CheckLocationForTasks()

	NymTrace("CheckLocationForTasks()")
	Bool returnvalue = false 
	int i
	
	;--- Mushrooms ---;
	ObjectReference[] MushroomArray  = PO3_SKSEFunctions.FindAllReferencesOfType(cfgqst.PlayerRef, Mushroomlist, 50000)
	if MushroomArray.Length > 0
	AllowTask_Mushrooms = true 
	endif
	
	;--- Iron Ore ---;
	ObjectReference[] IronVeinArray  = PO3_SKSEFunctions.FindAllReferencesOfType(cfgqst.PlayerRef, IronOreVeinList, 50000)
	if IronVeinArray.Length > 0
	AllowTask_MineIron = true 
	endif	
	

EndFunction 

Function PlaceOreVeins_NEW(String Type)

	NymTrace("PlaceOreVeins_NEW("+Type+")")
		
	iVeinsFound = 0
	iVeinsPlaced = 0
	
	int i 
	;ObjectReference[] Function FindAllReferencesOfType(ObjectReference akRef, Form akFormOrList, float afRadius) global native
	
	Formlist TempVeinList

	if Type == "Iron Ore"
	TempVeinList = IronOreVeinList
	elseif Type == "Quicksilver Ore"
	TempVeinList = QuickSilverOreVeinList
	endif 
	
	ObjectReference[] OreVeinsArray  = PO3_SKSEFunctions.FindAllReferencesOfType(cfgqst.PlayerRef, TempVeinList, 20000)
	
	iVeinsFound = OreVeinsArray.Length
	
	NymTrace("iVeinsFound: "+iVeinsFound)
	
	i = iVeinsFound
	while i 
		i -= 1
		if OreVeinsArray[i]
		
			if OreVeinsArray[i].haskeyword(KWD_NakedGarbage)
			PO3_SKSEFunctions.RemoveKeywordFromRef(OreVeinsArray[i], KWD_NakedGarbage)
			NymTrace("Keyword removed from VANILLA VEIN")
			endif 
		PlacedVeins[iVeinsPlaced] = OreVeinsArray[i].PlaceAtme(OreVeinsArray[i].GetBaseObject())
		PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[i], 10.0 * Math.Sin(OreVeinsArray[i].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[i].GetAngleZ()), 5.0, abMatchRotation = true)
			if PlacedVeins[iVeinsPlaced]
			NymTrace("Veins ["+iVeinsPlaced+"] Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
			
				if PlacedVeins[iVeinsPlaced].haskeyword(KWD_NakedGarbage)
				PO3_SKSEFunctions.RemoveKeywordFromRef(PlacedVeins[iVeinsPlaced], KWD_NakedGarbage)
				NymTrace("Keyword removed from PLACED VEIN")
				endif 
			
			iVeinsPlaced += 1
			endif 
		endif 
	endwhile	
	
	NymTrace("iVeinsPlaced: "+iVeinsPlaced)

	;/
	if OreVeinsArray[1]
	PlacedVeins[iVeinsPlaced] = OreVeinsArray[1].PlaceAtme(OreVeinsArray[1].GetBaseObject())
	PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[1], 10.0 * Math.Sin(OreVeinsArray[1].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[1].GetAngleZ()), 5.0, abMatchRotation = true)
		if PlacedVeins[iVeinsPlaced]
		NymTrace("Veins 2 Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
		iVeinsPlaced += 1
		NymTrace("VeinPlaced 2!!!")
		endif 
	
	endif 
	
	if OreVeinsArray[2]
	PlacedVeins[iVeinsPlaced] = OreVeinsArray[2].PlaceAtme(OreVeinsArray[2].GetBaseObject())
	PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[2], 10.0 * Math.Sin(OreVeinsArray[2].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[2].GetAngleZ()), 5.0, abMatchRotation = true)
		if PlacedVeins[iVeinsPlaced]
		NymTrace("Veins 3 Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
		iVeinsPlaced += 1
		NymTrace("VeinPlaced 3!!!")
		endif 
	
	endif 
	
	if OreVeinsArray[3]
	PlacedVeins[iVeinsPlaced] = OreVeinsArray[3].PlaceAtme(OreVeinsArray[3].GetBaseObject())
	PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[3], 10.0 * Math.Sin(OreVeinsArray[3].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[3].GetAngleZ()), 5.0, abMatchRotation = true)
		if PlacedVeins[iVeinsPlaced]
		NymTrace("Veins 4 Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
		iVeinsPlaced += 1
		NymTrace("VeinPlaced 4!!!")
		endif 
	
	endif 
	
	if OreVeinsArray[4]
	PlacedVeins[iVeinsPlaced] = OreVeinsArray[4].PlaceAtme(OreVeinsArray[4].GetBaseObject())
	PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[4], 10.0 * Math.Sin(OreVeinsArray[4].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[4].GetAngleZ()), 5.0, abMatchRotation = true)
		if PlacedVeins[iVeinsPlaced]
		NymTrace("Veins 5 Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
		iVeinsPlaced += 1
		NymTrace("VeinPlaced 5!!!")
		endif 
	
	endif 
	
		
	if OreVeinsArray[5]
	PlacedVeins[iVeinsPlaced] = OreVeinsArray[5].PlaceAtme(OreVeinsArray[5].GetBaseObject())
	PlacedVeins[iVeinsPlaced].MoveTo(OreVeinsArray[5], 10.0 * Math.Sin(OreVeinsArray[5].GetAngleZ()), 10.0 * Math.Cos(OreVeinsArray[5].GetAngleZ()), 5.0, abMatchRotation = true)
		if PlacedVeins[iVeinsPlaced]
		NymTrace("Veins 6 Distance: "+PlacedVeins[iVeinsPlaced].GetDistance(cfgqst.PlayerRef))
		iVeinsPlaced += 1
		NymTrace("VeinPlaced 6!!!")
		endif 
	
	endif 
	/;
	
EndFunction 


;/
Function PlaceOreVeins(string Type)		;#PlaceOreVeins

	;if FetchTaskType == "Mine Iron Ore"
		ObjectReference OreVein_TEMP
		ObjectReference OreVein01_DUPLICATE	
						
		int i = 5
		int j = 0
											
		Utility.Wait(2.0)
								
		while i > 0
		i -= 1
		
			while !PlacedVeins[i]
			NymTrace("Place Vein Check "+i)
			OreVein_TEMP = Game.FindRandomReferenceOfAnyTypeInListFromRef(IronOreVeinList, cfgqst.PlayerRef, 20000) 
			;NymTrace("Vein ["+i+"] Height: "+OreVein_TEMP.GetHeight())
			
				if !PlacedVeins[i] && !VeinAlreadyPlaced(PlacedVeins[i])
				PlacedVeins[i] = OreVein_TEMP.PlaceAtme(OreVein_TEMP.GetBaseObject())
				PlacedVeins[i].MoveTo(OreVein_TEMP, 10.0 * Math.Sin(OreVein_TEMP.GetAngleZ()), 10.0 * Math.Cos(OreVein_TEMP.GetAngleZ()), 5.0, abMatchRotation = true)	;move 5 units in front and 5 above
				j += 1
				NymTrace("Place Vein PLACED "+i)
				else 
				NymTrace("Place Vein FAILED "+i)
				endif 		
				
				if VeinAlreadyPlaced(PlacedVeins[i]
				
			endwhile 
			
		endwhile 
		
		NymBox("Veins Placed: "+j)


EndFunction 
/;

Bool Function VeinAlreadyPlaced(ObjectReference VeinToCheck)
	NymTrace("VeinAlreadyPlaced")
	int i = iVeinsPlaced
	bool returnvalue = false	

	while i > 0 
	i -= 1
		
		
		if PlacedVeins[i] && (VeinToCheck.GetDistance(PlacedVeins[i]) < 20)
		NymTrace("VeinDistance: "+VeinToCheck.GetDistance(PlacedVeins[i]))
		returnvalue = true 
		NymTrace("VeinAlreadyPlaced(TRUE)")
		else 
		;NymTrace("VeinDistance: "+VeinToCheck.GetDistance(PlacedVeins[i]))
		NymTrace("VeinAlreadyPlaced(FALSE)")
		endif 
	
	endwhile
	
	return returnvalue

EndFunction 


;ObjectReference Function FindRandomReferenceOfAnyTypeInListFromRef(FormList arBaseObjects, ObjectReference arCenter, float afRadius) global

;WoodChopping 
;Smelter 
;Cooking Pot
;Alchemy Lab
;Tanning Rack
;GrindStone
;Skyforge
;Workbench
;ANvil
;Forge 

Function DeleteDroppedGarbage()
	
int ItemsSpawned = TrackedDroppedGarbageItemsCount
int DroppedItemsDeleted = 0

		while TrackedDroppedGarbageItemsCount > 0 
		TrackedDroppedGarbageItemsCount -= 1
			if TrackedDroppedGarbageItems[TrackedDroppedGarbageItemsCount]
			TrackedDroppedGarbageItems[TrackedDroppedGarbageItemsCount].DisableNoWait()
			TrackedDroppedGarbageItems[TrackedDroppedGarbageItemsCount].Delete()
			TrackedDroppedGarbageItems[TrackedDroppedGarbageItemsCount] = none 
			DroppedItemsDeleted += 1
			endif 
			
		endwhile 
		
	;	NymBox("ItemsSpawned: "+ItemsSpawned+" Items Deleted: "+DroppedItemsDeleted)
			
		
EndFunction 

Function DropRandomGarbage(actor akActor)		;#Drop1 #Garbage
			
		if D100(5)	
			if !cfgqst.PlayerRef.IsInInterior() && !cfgqst.IsFucking(akActor)
			
				objectreference TempObject
				int RandomForm
			
				if TrackedDroppedGarbageItemsCount < 61
					
					if D100(66)
					RandomForm = Utility.RandomInt(0,13) ;Length 14
					NymTrace("Dropped RandomForm: "+RandomForm)
					TempObject = akActor.PlaceAtMe(DroppedGarbage.GetAt(RandomForm))
					else 
					RandomForm = Utility.RandomInt(0,11) ;Length 12
					NymTrace("Dropped RandomForm: "+RandomForm)
					TempObject = akActor.PlaceAtMe(DroppedFood.GetAt(RandomForm))			
					endif 
					
					if TempObject
					;TempObject.MoveTo(akActor, 55.0, 55.0, 25.0, false)
					
					float MoveDistance = -40.0 ;move behind actor
					
					TempObject.Moveto(akActor, MoveDistance * Math.Sin(akActor.GetAngleZ()), MoveDistance * Math.Cos(akActor.GetAngleZ()), 25.0, abMatchRotation = false) ;MOVE 55 units in Front, 25 units above ground (prevent clipping throught)
					
					PO3_SKSEFunctions.AddKeywordToRef(TempObject, KWD_NakedGarbage)

					TrackedDroppedGarbageItems[TrackedDroppedGarbageItemsCount] = TempObject
					TrackedDroppedGarbageItemsCount += 1

					NymTrace("GarbageDrop SUCCESS ("+TrackedDroppedGarbageItemsCount+")")
					else
					NymTrace("GarbageDrop FAILED")
					
					endif 
				else 
				NymTrace("GarbageDrop FAILED --- LIST FULL")
				
				endif 
			endif 
		endif 

				
			;TEST FUNCTION 
			;/
			int i = 21
			while i > 0
			i -= 1
			objectreference TempObject
			int RandomForm
			
				if D100(66)
	
				RandomForm = Utility.RandomInt(0,17)
				NymTrace("Dropped RandomForm: "+RandomForm)
				TempObject = PlayerRef.PlaceAtMe(slaveqst.DroppedGarbage.GetAt(RandomForm))
			
				else 
				RandomForm = Utility.RandomInt(0,12)
				NymTrace("Dropped RandomForm: "+RandomForm)
				TempObject = PlayerRef.PlaceAtMe(slaveqst.DroppedFood.GetAt(RandomForm))			
				endif 
			
			TempObject.MoveTo(PlayerRef, -25.0, -25.0, 25.0, false)
			;PlayerRef.PlaceAtMe(storqst.GarbageItems[i])
			Utility.Wait(4.0)
			endwhile 
			/;

EndFunction 

		
;/


MINING SLAVE 
- Shorter maybe.
Or tasks more valuable?

Can I refill ore spots? 

- FetchTasks 
Bring Ore
Bring Angots 
Coal? 
Serve Miners
Orgy in the Mine 

Rules as usual

Type disable and press Enter. The ore vein should disappear.
Type enable and press Enter. The ore vein will reappear in its unmined state.	
/;


String Function CheckSexTaskConditions()
	DebugTrace("CheckSexTaskConditions("+SexTaskType+")")
	
	String ReturnString
	;nah,....
	;/
	if CreatureTask > 0
	
		Actor ClosestActor = PO3_SKSEFunctions.GetClosestActorFromRef(cfgqst.PlayerRef, true)
		Bool CreatureDetected = False 
		String ProximityRaceKey = "empty"
	
		if ClosestActor
		ProximityRaceKey = cfgqst.GetRaceKey(ClosestActor)
		endif 
			
		if ProximityRaceKey == SexTaskRaceKey
		ClosestActor = TempMaster
		return "Service"
		endif 
		/;
	

	if SexTaskType == "Orgy in an Inn" && playscr.IsCurrentLocation("Inn")
	ReturnString = "Orgy"
	elseif SexTaskType == "Orgy in the Barracks" && playscr.IsCurrentLocation("Barracks")
	ReturnString = "Orgy"
	elseif SexTaskType == "Orgy in the Castle" && playscr.IsCurrentLocation("Castle")
	ReturnString = "Orgy"
	elseif SexTaskType == "Orgy in the Streets" && !cfgqst.PlayerRef.IsInInterior()
	
	ReturnString = "Orgy"
	elseif SexTaskType == "Street Whore" && !cfgqst.PlayerRef.IsInInterior() ;WIP
	ReturnString = "Street Whore"
	
	else 
	ReturnString = "No Task Location"
	endif 
	DebugTrace("CheckSexTaskConditions ReturnString("+ReturnString+")")
	return ReturnString

EndFunction 



Function StartingMessage()
			
			ObjectReference QuestMessage = none
			QuestMessage = cfgqst.PlayerRef.PlaceATme(QuestMessage_LocalSlavery_Start)
			PO3_SKSEFunctions.AddKeywordToRef(QuestMessage, KWD_NakedGarbage)
			QuestMessage.MoveTo(cfgqst.PlayerRef, 0, 0, 50, false)
			Utility.Wait(0.1)
			QuestMessage.Activate(cfgqst.PlayerRef, true)
			Utility.Waitmenumode(2.0)
			
			while Utility.IsInMenuMode()
			NymTrace("MenuMode")
			Utility.Waitmenumode(1.0)
			endwhile 

EndFunction 


Function EndMessage()

			ObjectReference QuestMessage = none
			QuestMessage = cfgqst.PlayerRef.PlaceATme(QuestMessage_LocalSlavery_End)
			PO3_SKSEFunctions.AddKeywordToRef(QuestMessage, KWD_NakedGarbage)
			QuestMessage.MoveTo(cfgqst.PlayerRef, 0, 0, 50, false)
			Utility.Wait(0.1)
			QuestMessage.Activate(cfgqst.PlayerRef, true)
			Utility.Waitmenumode(2.0)
			
			while Utility.IsInMenuMode()
			NymTrace("MenuMode")
			Utility.Waitmenumode(1.0)
			endwhile 
			
EndFunction 			

Bool DoneSweeping = false
Bool CleanRunning = false
bool FixStuffOnce = true

Function BroomCleanMarker()			;#Broom #sweep2
	NymTrace("BroomCleanMarker(6.4)")
	Nymtrace("storqst.SlaveAtWork: "+storqst.SlaveAtWork)
	Nymtrace("CleanRunning: "+CleanRunning)
	Nymtrace("SlaveFetchTaskItemCount: "+SlaveFetchTaskItemCount)
	Nymtrace("CompletedAreaTasks: "+CompletedAreaTasks)
;	Nymtrace("FixStuffOnce: "+FixStuffOnce)

	if !storqst.SlaveAtWork && CleanRunning
	CleanRunning = false 
	endif 
	
	if FixStuffOnce
	FixStuffOnce = false
	CleanRunning = false 
	endif 
	
	if storqst.IsAreaMarkerNearby()
	BadMessage("This Spot is already clean")
	else

		if (FetchTaskType == "Sweeping the Streets") && !CleanRunning && ((CompletedAreaTasks < SlaveFetchTaskItemCount) || (CompletedAreaTasks == SlaveFetchTaskItemCount))
		CleanRunning = true
		
			NymTrace("BroomCleanMarker(CleanRunning = true)")
			int i = (Utility.RandomInt(10,15))
			
			if D100(50)
			storqst.StartWhipping_00(Utility.RandomInt(5,10))
			endif
			
			while i > 0 && storqst.SlaveAtWork && !cfgqst.IsDefeatRunning()
			;pressing Slave Action key will stop Cleaning
			i -= 1
			Utility.Wait(1)
			endwhile 
			
			if cfgqst.IsDefeatRunning()
			storqst.SlaveAtWork = false 

			elseif Pretending 
				storqst.PlayerSoundToPlay = "Breathing"
				SendSlaveMoan()
				cfgqst.IncreaseDirtiness(0.01)
			
			elseif storqst.SlaveAtWork
			NymTrace("BroomCleanMarker(storqst.SlaveAtWork)")
				storqst.AreaScanXMarkers[CompletedAreaTasks] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Area)					
				storqst.AreaScanXMarkers[CompletedAreaTasks].SetAngle(25.0, 25.0, 25.0)

				if (CompletedAreaTasks < SlaveFetchTaskItemCount)
				
				storqst.PlayerSoundToPlay = "Breathing"
				SendSlaveMoan()

				cfgqst.IncreaseDirtiness(0.01)
				CompletedAreaTasks += 1
					
					if (CompletedAreaTasks < SlaveFetchTaskItemCount)
					GoodMessage("This Spot is cleaned")
					
						if D100(33) 
						storqst.ExhaustionChange(1) ;---> Nym()
						endif 
					
					elseif (CompletedAreaTasks == SlaveFetchTaskItemCount) 
					
					CompletedAreaTasks += 1
					
					storqst.PlayerSoundToPlay = "Breathing"
					SendModEvent("Moan")
					GoodMessage("You are done sweeping the Streets")
					cfgqst.IncreaseDirtiness(0.05)
					
					cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBathingStanding[0]) ;wipe head
					
						int DeleteMarker = 31
				
						while DeleteMarker > 0 
							DeleteMarker -= 1
							if storqst.AreaScanXMarkers[DeleteMarker]
							storqst.AreaScanXMarkers[DeleteMarker].DisableNoWait()
							storqst.AreaScanXMarkers[DeleteMarker].Delete()
							storqst.AreaScanXMarkers[DeleteMarker] = None 
							endif 
						endwhile
					endif 
				endif 
				
			else 
			BadMessage("You are not finished cleaning yet!")				
			endif 	
			NymTrace("BroomCleanMarker(CleanRunning = false)")
			CleanRunning = false
			
		elseif ((FetchTaskType == "Sweeping the Castle") || (FetchTaskType == "Sweeping the Inn")) && !CleanRunning && ((CompletedAreaTasks < SlaveFetchTaskItemCount) || (CompletedAreaTasks == SlaveFetchTaskItemCount))
		
			CleanRunning = true
			NymTrace("BroomCleanMarker(INDOOR CleanRunning = true)")
			int i = (Utility.RandomInt(10,15))
			
			if D100(50)
			storqst.StartWhipping_00(Utility.RandomInt(5,10))
			endif
			
			while i > 0 && storqst.SlaveAtWork && !cfgqst.IsDefeatRunning()
			NymTrace("BroomCleanMarker(INDOOR Loop "+i+")")
			;pressing Slave Action key will stop Cleaning
			i -= 1
			Utility.Wait(1)
			endwhile 
			
			if cfgqst.IsDefeatRunning()
			storqst.SlaveAtWork = false 

			elseif Pretending 
				storqst.PlayerSoundToPlay = "Breathing"
				SendSlaveMoan()
				cfgqst.IncreaseDirtiness(0.01)
			
			elseif storqst.SlaveAtWork
			NymTrace("BroomCleanMarker(INDOOR SlaveAtWork = true)")
				storqst.AreaScanXMarkers[CompletedAreaTasks] = cfgqst.PlayerRef.PlaceAtMe(storqst.XMarkerHeading_Area)					
				storqst.AreaScanXMarkers[CompletedAreaTasks].SetAngle(25.0, 25.0, 25.0)

				if (CompletedAreaTasks < SlaveFetchTaskItemCount)
				
				storqst.PlayerSoundToPlay = "Breathing"
				SendModEvent("Moan")
				
				GoodMessage("This Spot is cleaned")
				
				cfgqst.IncreaseDirtiness(0.05)
				CompletedAreaTasks += 1
				
				elseif (CompletedAreaTasks == SlaveFetchTaskItemCount) 
				
				CompletedAreaTasks += 1
				storqst.PlayerSoundToPlay = "Breathing"
				SendModEvent("Moan")
				
				if FetchTaskType == "Sweeping the Castle"
				GoodMessage("You are done sweeping the Castle")
				elseif FetchTaskType == "Sweeping the Inn"
				GoodMessage("You are done sweeping the Inn")
				endif 
				
				cfgqst.IncreaseDirtiness(0.05)
				
					int DeleteMarker = 31
			
					while DeleteMarker > 0 
						DeleteMarker -= 1
						if storqst.AreaScanXMarkers[DeleteMarker]
						storqst.AreaScanXMarkers[DeleteMarker].DisableNoWait()
						storqst.AreaScanXMarkers[DeleteMarker].Delete()
						storqst.AreaScanXMarkers[DeleteMarker] = None 
						endif 
					endwhile
		
				endif 
			else 
			BadMessage("You are not finished cleaning yet!")				
			endif 	
			NymTrace("BroomCleanMarker(CleanRunning = false)")
			CleanRunning = false
				
		endif
		NymTrace("BroomCleanMarker(Z)")
	endif 
	
	NymTrace("BroomCleanMarker(End)")
	
EndFunction

Function PlaceRequiredStation()
	NymTrace("PlaceRequiredStation()")
	
	
		if RequiredStation == "Workbench"
	
			if !PlacedWorkbench
			NymTrace("PlaceRequiredStation(CREATE NEW WORKBENCH)")
			PlacedWorkbench = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_Workbench) ;as OBJECTREFERENCE
			endif 
			PlacedWorkbench.Moveto(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedWorkbench.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+90.0)
			
		elseif RequiredStation == "Smelter"
		
			NymTrace("PlaceRequiredStation(CREATE NEW Smelter)")
			if !PlacedSmelter
			PlacedSmelter = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_Smelter) ;as OBJECTREFERENCE
			endif 
			PlacedSmelter.Moveto(cfgqst.PlayerRef, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedSmelter.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+90.0)
		
		elseif RequiredStation == "TanningRack"
		
			if !PlacedTanningRack
			NymTrace("PlaceRequiredStation(CREATE NEW TanningRack)")
			PlacedTanningRack = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_TanningRack) ;as OBJECTREFERENCE
			endif 
			PlacedTanningRack.Moveto(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedTanningRack.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+90.0)		
		
		elseif RequiredStation == "Grindstone"
		
			if !PlacedGrindstone
			NymTrace("PlaceRequiredStation(CREATE NEW Grindstone)")
			PlacedGrindstone = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_Grindstone) ;as OBJECTREFERENCE
			endif 
			PlacedGrindstone.Moveto(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedGrindstone.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+0.0)	
			
		elseif RequiredStation == "Chopping Block"
		
			if !PlacedChoppingBlock
			NymTrace("PlaceRequiredStation(CREATE NEW Chopping Block)")
			PlacedChoppingBlock = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_ChoppingBlock) ;as OBJECTREFERENCE
			endif 
			PlacedChoppingBlock.Moveto(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedChoppingBlock.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+0.0)	
		
		elseif RequiredStation == "Anvil"
		
			if !PlacedAnvil
			NymTrace("PlaceRequiredStation(CREATE NEW Anvil)")
			PlacedAnvil = cfgqst.PlayerRef.PlaceAtMe(storqst.Station_Anvil) ;as OBJECTREFERENCE
			endif 
			PlacedAnvil.Moveto(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), 0.0, abMatchRotation = True)
			PlacedAnvil.SetAngle(0.0,0.0,cfgqst.PlayerRef.GetAngleZ()+90.0)	
		endif 
		
		
EndFunction



String LastFetchTaskType
String LastSexTaskType

Function GiveSlaveTasks(String TaskType)	;#Give


	Bool TaskFound = false
	Bool DDHeavyBondage = false
	int i

	NymTrace("GiveSlaveTasks")

	int Gold = cfgqst.PlayerRef.GetGoldAmount()
	
	if ActiveSlaveTasks < 0
	NymBox("ActiveSlaveTasks < 0")
	ActiveSlaveTasks == 0
	endif 
	
	if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
	DDHeavyBondage = TRUE
	endif 
	
	if playscr.CheckEndOfSlavery()
	;do nothing, Slavery ends
	DebugTrace("Slavery End conditions met while requesting from Master")
	
	elseif Gold > 0	
	BadMessage("They take "+Gold+" gold from you.")
	cfgqst.PlayerRef.RemoveItem(cfgqst.Gold001, Gold, false, none)
	playscr.CalculateSlaveGold("Take Gold", Gold)
	
	elseif ActiveSlaveTasks > 0
	
	BadMessage("You still have shit to do, Slave!")
	playscr.CalculateSlaveGold("Increase", 0)
	
	else 

		if SlaveFetchTaskItemCount == 0
			
			i = Utility.RandomInt(1,35)	

			;Task based on previous Task
			if LastFetchTaskType == "Mine Iron Ore"
			i = 16
			elseif LastFetchTaskType == "Collecting Garbage"
			i = 6
			endif 
			
			;Task based on Bondage 
			if DDHeavyBondage
			NymTrace("Wearing Heavy Bondage")
				if D100(50)
				i = 404	;no task - cant be none or it will land in fallback Task
				else 
				i = 6	;sweeping the street (with broom up the ass)
				endif 
			endif 
			
			if TaskType == "Grindstone"
			i = 12
			;blacksmith gives Task
			endif 
			
			if nym()
			;i = 34
			endif 
			
			;for cold cities make firewood more often?
				
			if i == 1 || i == 2 || i == 3
			FetchTaskType = "Firewood"
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchFirewood, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1
			GlovesJob = true
			
			RequiredStation = "Chopping Block"
			
			elseif i == 4
			FetchTaskType = "Flowers"
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchFlowers, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			
			elseif i == 5 || i == 6 || i == 7
			FetchTaskType = "Sweeping the Streets"
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)
			CompletedAreaTasks = 0
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchSweepStreet, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	

			elseif i == 8 || i == 9 || i == 10 
			FetchTaskType = "Collect Garbage"		;#collect1
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchGarbage, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			TrackedDroppedGarbageItemsCount = 0
			StartDroppingGarbage = true 
			GlovesJob = true

			elseif i == 11 || i == 12 || i == 13
			FetchTaskType = "Sweeping the Castle"
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)	;configure based on city later
			CompletedAreaTasks = 0
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchSweepCastle, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	

			elseif i == 14 
			FetchTaskType = "Sweeping the Inn"
			SlaveFetchTaskItemCount = Utility.RandomInt(6, 8)
			CompletedAreaTasks = 0
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchSweepInn, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			
			elseif i == 15 || i == 16 || i == 17
			FetchTaskType = "Smelter"		;Iron Ingots
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchIronIngots, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			GlovesJob = true
			RequiredStation = "Smelter"
			
			elseif i == 18 || i == 19 || i == 20
			FetchTaskType = "Tanning Rack"		;Leather
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchLeather, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			RequiredStation = "Tanning Rack"
			
			elseif i == 21 || i == 22 || i == 23		
			FetchTaskType = "Grindstone"		;Knifes
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchKnifes, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			RequiredStation = "Grindstone"
			
			elseif ((storqst.CurrentLocName == "Dawnstar") || (storqst.CurrentLocName == "Markarth")) && (i == 24 || i == 25 || i == 26)		;#IMPROVE THIS LATER
			FetchTaskType = "Mine Iron Ore"	
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchIronOre, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			GlovesJob = true

			elseif (i == 27 || i == 28 || i == 29)	
			FetchTaskType = "Forge"	
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchHelmets, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			GlovesJob = true	
			RequiredStation = "Anvil"			

			elseif (i == 30 || i == 31 || i == 32)		
			FetchTaskType = "Workbench"	
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchArmor, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			RequiredStation = "Workbench"
			
			elseif (storqst.CurrentLocName == "Dawnstar") && (i == 33 || i == 34 || i == 35)		
			FetchTaskType = "Mine Quicksilver Ore"	
			SlaveFetchTaskItemCount = Utility.RandomInt(11,25)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchQuicksilverOre, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			GlovesJob = true			
			
			elseif i == 404		
			FetchTaskType = "Completed"
			SlaveFetchTaskItemCount = 0
			;NO Task 
			else ;FallBackTask! 
			FetchTaskType = "Sweeping the Streets"
			SlaveFetchTaskItemCount = Utility.RandomInt(11,24)
			CompletedAreaTasks = 0
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchSweepStreet, 1, true)
			cfgqst.PlayerRef.AddItem(SlaveTask_FetchItemCounter, SlaveFetchTaskItemCount, true)
			ActiveSlaveTasks += 1	
			endif
			
		endif 
		
		if SlaveSexTaskPartners == 0
			
			ServicesCompleted = 0
			
			;1st Roll ---> Whoring Tasks  66% chance (2/3rds) 
			if D100(66)
			;Creatue Sex Tasks
			
			
				if cfgqst.AllowCreatures && (D100(33) || (LastSexTaskType == "Serve the People"))
				
				i = Utility.RandomInt(1,2)	
		
					if i == 1 && cfgqst.AllowHorses
					cfgqst.PlayerRef.AddItem(SlaveTask_ServeHorses, 1, true)
					SexTaskType = "Serve the Horses"
					int j = Utility.RandomInt(1,4)
					SlaveSexTaskPartners = j
					CreatureTask = 3 ;Animal
					SexTaskRaceKey = "Horses"
					cfgqst.PlayerRef.AddItem(SlaveTask_ServiceCounter, j, true)
					TaskFound = true
					
					elseif i == 2 && cfgqst.AllowCanines
					cfgqst.PlayerRef.AddItem(SlaveTask_ServeDogs, 1, true)
					SexTaskType = "Serve the Dogs"
					int j = Utility.RandomInt(1,4)
					SlaveSexTaskPartners = j
					CreatureTask = 3 ;Animal
					SexTaskRaceKey = "Canines"
					cfgqst.PlayerRef.AddItem(SlaveTask_ServiceCounter, j, true)
					TaskFound = true
					endif 
				
				;Human Sex Task 
				else 	
				
					cfgqst.PlayerRef.AddItem(SlaveTask_ServePeople, 1, true)
					SexTaskType = "Serve the People"
					int j = Utility.RandomInt(2,4)
					SlaveSexTaskPartners = j
					CreatureTask = 0 ;Humans / None
					SexTaskRaceKey = "Humans"
					cfgqst.PlayerRef.AddItem(SlaveTask_ServiceCounter, j, true)
					TaskFound = true
					
	
				endif 
			endif 
			
			;2nd Roll ---> Orgies
			if !TaskFound
				i = Utility.RandomInt(1,4)
							
				if i == 1 
				cfgqst.PlayerRef.AddItem(SlaveTask_OrgyInn, 1, true)
				SexTaskType = "Orgy in an Inn"
				SlaveSexTaskPartners = 100 
				elseif i == 2
				cfgqst.PlayerRef.AddItem(SlaveTask_OrgyBarracks, 1, true)
				SexTaskType = "Orgy in the Barracks"
				SlaveSexTaskPartners = 100 
				elseif i == 3
				cfgqst.PlayerRef.AddItem(SlaveTask_OrgyCastle, 1, true)
				SexTaskType = "Orgy in the Castle"
				SlaveSexTaskPartners = 100 
				elseif i == 4
				cfgqst.PlayerRef.AddItem(SlaveTask_OrgyStreets, 1, true)
				SexTaskType = "Orgy in the Streets"
				SlaveSexTaskPartners = 100 
				endif 
			endif 

			LastSexTaskType	= SexTaskType
			ActiveSlaveTasks += 1
		endif 
		
		if SlaveRule == 0
				
				i = Utility.RandomInt(1,6) 
				
				if i == 1 		;Bow
				cfgqst.PlayerRef.AddItem(SlaveTask_RuleBowing, 1, true)
				RuleTaskType = "Bowing"
				SlaveRule = 2 
				elseif i == 2	;Crawl
				cfgqst.PlayerRef.AddItem(SlaveTask_RuleCrawling, 1, true)
				RuleTaskType = "Crawling"
				SlaveRule = 1 
				elseif i == 3	;Stay Clean 
				cfgqst.PlayerRef.AddItem(SlaveTask_RuleClean, 1, true)
				RuleTaskType = "Stay Clean"
				SlaveRule = 10 
				elseif i == 4	;Wear Boots
				cfgqst.PlayerRef.AddItem(SlaveTask_RuleBoots, 1, true)
				RuleTaskType = "Wear Boots"
				SlaveRule = 20 
				
				elseif i == 5
				cfgqst.PlayerRef.AddItem(SlaveTask_RuleGag, 1, true)
				RuleTaskType = "Wear Gag"
				SlaveRule = 40 
				
					if cfgqst.IsPlayerGagged()
					NymTrace("Already Gagged")
					;already gagged 
					else 
					NymTrace("Equip Gag")
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "Random Gag")
				
					endif 
				
				else 
				;no Rule today
				
				endif 
		
		GoodMessage("You ve been granted a (very) short grace period")
		storqst.GracePeriodSlave = 6
		;Stay Dirty 
		;stay clothed 
		endif 
		
		GoodMessage("You got letters with your new Tasks")
		
	endif 
		
EndFunction 

String Function GetSlaveryTypeByWeight()
		NymTrace("GetSlaveryTypeByWeight()")
		int SessionSlave_WEIGHT = storqst.SS_SessionSlaveryWeight as int
		int CageSlave_WEIGHT = cfgqst.DefeatSpeedMult as int
		int LocalSlave_WEIGHT = storqst.SS_LocalSlaveryWeight as int
		NymTrace("GetSlaveryTypeByWeight(LocalSlave_WEIGHT: "+LocalSlave_WEIGHT+")")

		int TypesAdded = 0
		int TypeSelected = 0
		String [] SlaveryTypeArray		
		SlaveryTypeArray = new String [5]
		SlaveryTypeArray[0] = "none"
		SlaveryTypeArray[1]	= "none"	
		SlaveryTypeArray[2]	= "none"
		SlaveryTypeArray[3]	= "none"
		SlaveryTypeArray[4]	= "none"
		
		if D100(SessionSlave_WEIGHT)
		SlaveryTypeArray[TypesAdded] = "Session Slave"
		NymTrace("SlaveryTypeArray[0] = "+SlaveryTypeArray[0])
		TypesAdded +=1
		endif 
		if D100(CageSlave_WEIGHT)
		SlaveryTypeArray[TypesAdded] = "Cage Slave"
		NymTrace("SlaveryTypeArray[0] = "+SlaveryTypeArray[0])
		TypesAdded +=1
		endif 	
		if D100(LocalSlave_WEIGHT)
		SlaveryTypeArray[TypesAdded] = "Local Slave"
		NymTrace("SlaveryTypeArray[0] = "+SlaveryTypeArray[0])
		TypesAdded +=1
		endif 		
		
		if TypesAdded == 0
		NymTrace("GetSlaveryTypeByWeight(TypesAdded == 0)")
			if SessionSlave_WEIGHT > 0
			SlaveryTypeArray[TypesAdded] = "Session Slave"
			TypesAdded +=1
			endif 
			if CageSlave_WEIGHT > 0
			SlaveryTypeArray[TypesAdded] = "Cage Slave"
			TypesAdded +=1
			endif 	
			if LocalSlave_WEIGHT > 0
			SlaveryTypeArray[TypesAdded] = "Local Slave"
			TypesAdded +=1
			endif 		
		endif 
		
		if TypesAdded == 0
		Debug.Messagebox("You have no Weights selected as Simple Slavery outcome for Naked Defeat. Readjust your MCM settings (Extras > Slavery) - continuing with the basic Session Slave Fallback Scenario")
		return "Session Slave"
		else 
		
			if TypesAdded == 3
			TypeSelected = Utility.RandomInt(0,2)
			elseif TypesAdded == 2
			TypeSelected = Utility.RandomInt(0,1)
			else 
			TypeSelected = 0
			endif 
		
			NymTrace("GetSlaveryTypeByWeight(Outcome: "+SlaveryTypeArray[TypeSelected]+")")
		return SlaveryTypeArray[TypeSelected] 
		endif
		
		

EndFunction 

Function CompleteSlaveSexTask()
		
		NymTrace("CompleteSlaveSexTask: "+SexTaskType+" Duration: "+SexTaskDuration)
		
		Bool Completed = false
		
		if SexTaskType == "Orgy in an Inn"
		cfgqst.PlayerRef.RemoveItem(SlaveTask_OrgyInn, 1)
		elseif SexTaskType == "Orgy in the Barracks"
		cfgqst.PlayerRef.RemoveItem(SlaveTask_OrgyBarracks, 1)
		elseif SexTaskType == "Orgy in the Castle"
		cfgqst.PlayerRef.RemoveItem(SlaveTask_OrgyCastle, 1)
		elseif SexTaskType == "Orgy in the Streets"
		cfgqst.PlayerRef.RemoveItem(SlaveTask_OrgyStreets, 1)
		endif 
		
		SexTaskType = "Completed"
		ServicesCompleted = 0 ;stuff we did 
		SlaveSexTaskPartners = 0
		ActiveSlaveTasks -= 1
		CompletedDayTasks += 1
		TotalSlaveTasksCompleted += 1
		GoodMessage("You completed the Orgy")
		cfgqst.DefeatStateChapter = "Free"
		cfgqst.DefeatStatePlayer = "Slave"
		SlaveIsOccupied = 0
		playscr.CalculateSlaveGold("Reduce", SexTaskDuration) ;was multiplied earlier already
		SexTaskDuration = 0 ;how good we did it?
		storqst.GracePeriodSlave = 4
		
EndFunction 

Function CompleteSlaveRule()
		NymTrace("CompleteSlaveRule("+SlaveRule+")")
		Bool RuleCompleted = false

				if SlaveRule == 2 		;Bow
				cfgqst.PlayerRef.RemoveItem(SlaveTask_RuleBowing, 1)
				RuleTaskType = "Completed"
				RuleCompleted = true 
				elseif SlaveRule == 1	;Crawl
				cfgqst.PlayerRef.RemoveItem(SlaveTask_RuleCrawling, 1)
				RuleTaskType = "Completed"
				RuleCompleted = true 
				elseif SlaveRule == 10	;Stay Clean 
				cfgqst.PlayerRef.RemoveItem(SlaveTask_RuleClean, 1)
				RuleTaskType = "Completed"
				RuleCompleted = true 
				elseif SlaveRule == 20	;Wear Boots
				cfgqst.PlayerRef.RemoveItem(SlaveTask_RuleBoots, 1)
				RuleTaskType = "Completed"
				RuleCompleted = true 
				
				elseif SlaveRule == 40	;Wear Gag
				cfgqst.PlayerRef.RemoveItem(SlaveTask_RuleGag, 1)
				RuleTaskType = "Completed"
				RuleCompleted = true 
				
				endif 
	
				if RuleCompleted
				playscr.CalculateSlaveGold("Reduce", 1)
				endif  

				SlaveRule = 0


EndFunction 

;############################################################################################################################################################################################################
;#############	 BASIC FUNCTIONS 	############################################################################################################################################################################
;############################################################################################################################################################################################################


Function DebugTrace(String Text1)			;#DebugTrace
Debug.Trace("NAKED DEFEAT slaveryquest: "+Text1)
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
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg) "+Text3)
EndFunction


Function GoodMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#0AAC00'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg) "+Text3)
EndFunction

Function BadMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#A52A2A'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#InfoMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg DEBUG) "+Text2)
	endif
EndFunction
	
Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT slaveryquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	Debug.trace("NAKED DEFEAT slaveryquest: (#trace NYM) "+Text2)
	endif
EndFunction

Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("slavequest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT slavequest: BOX (#Box NYM) "+Text2)

EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return true
	else
	return false
	endif 
	
EndFunction

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


;############################################################################################################################################################################################################
;#############	 	NOTES & IDEAS		############################################################################################################################################################################
;############################################################################################################################################################################################################


;WARM SOURCES 
;RemoveableTorch01 (00091f1F (ACTI)
;Campfire01Burning (00035F49 (MSST) Moveable Static 
;FXFireWithEmberyHeavy 00033DA4 Moveable Stratic MSST


;FLORA
;WhiteCap FLORA 0004DA06	 --> empty, try regen

;/

We need a MCM LOG for the Puclic Punishent Reaons. A LIST



;Delivery Mission

we test if we can Spawn an Actor and then make that actor follow the player. The GUARD ACtor can keep an eye on the Player when it is walking towards the Target (Village).
The mission ends when entering a store.

IDEAS FOR LOCAL SLAVERY:
- moving too far from X counter will lead to punishment and teleport (blackscreen)

-> PC can reduce cfgqst.PublicExposure alot by complex tasks: fucking, dancing, making music, flirting -> can get friendliness points
-> boredom points increase the chance to be sold to SS++ (or killed)
-> friendliness increase the chance to be released or to be able to sneak away ("Now is the time" message)
-> beeing away too long from NPC can lead to punishment

-> sadistic games: captors will spawn a dog that hunts the PC for a duration. one hit will bring the PC back to slavery. if not PC will be released

SCAN IDEAS ---------------------------------

OnInit() in configquest
OnPlayerLoadGame will set cfgqst.ProxScan True

ModDisabled and  will toggle this FALSE

Rape will only change the tick speed? and ofc activate its functionality
So the script will run nonstop hopefully until the mod is disabled and reenabled
Or maybe add an option to debug the script(toggle in Config?)



/;


;GetClosestActorFromRef (PO3_SKSEFunctions)

;Iron Ore Vein 
;Base Form 000A2C46
;Ref 00098012

;Forced Foreplay Standing 04 Search
;BaboPervertGroping01
;SPecial Sex Tasks;
;3jiou Ero Massage (needs Tag)
;Anubs Adult Bath (needs tag)
;Anubs Milking Massage
;Anubs Training

;arrok Standing Foreplay
;arrok Foreplay 		test both


;CRIMES! 
; Tresspassing 
; Speaking To Sleeping NPC
; Beeing close to owned beds? 
; Staying close to strangers
