Scriptname nade_defeatquest_qf_scr Extends Quest Hidden


ReferenceAlias Property Alias_EssentialPlayer Auto
nade_configquest_scr Property cfgqst Auto


ObjectReference Property XMarkerHeadingAnchor Auto

;Bool RunExposureMonitor = true

nade_calmquest_qf_scr Property calmqst Auto
nade_storage_qf_scr Property storqst Auto
nade_slavery_qf_scr Property slaveqst Auto

Sound[] Property NakedVoice_Pain Auto

Faction Property NakedFollowerNamedFaction Auto
Faction Property NakedCagePartnerFaction Auto
Faction Property LocalSlaveFaction Auto

String Property LastNamedFollower Auto 

int Property SexEffect01 Auto 
;int Property IsLocalSlave Auto
;int Property IsFleeingSlave Auto

;String Property PlayerSoundToPlay Auto 

Perk[] Property LightFootPerks Auto	;[0] LightFoot - [1] Muffled Movement

;String Property CurrentLocationName Auto
;String Property CurrentLocationType Auto

Bool Property DuplicationWasDone Auto ;needed for AllegianceQuest Duplication Functions --> and because cfgqst is overflowing

;Bool Property PreventRagdoll Auto
;Bool Property PlayerSoundRunning Auto

;Bool Property DarkNight Auto

int Property MouthOpening Auto
int Property CurrentSlaveHair Auto
int Property SexDuration Auto

int Property AmbushChance Auto

;bool Property BlockPosing Auto

;Formliste for Slavery Locations? ---> 

;Formlist Property SlaveryLocations Auto

;Bool Property StorageQuestRunning Auto

;FORMLIST SCRIPT 

;/
AddForm(Form apForm)
Adds the given form to the form list.
Int Find(Form apForm)
Finds the specified form in the form list and returns its index or returns -1 if it's not a member.
Form GetAt(Int aiIndex)
Returns the form in the list at index aiIndex.
Int GetSize()
Returns the number of forms in the form list.
Bool HasForm(Form akForm)
Returns whether the passed-in form is in this form list.
RemoveAddedForm(Form apForm)
Removes the given added form from the form list.
Revert()
Removes all script added forms from the form list.
/;

Bool Function IsPlayerInLocalSlaveFaction()

	if cfgqst.PlayerRef.IsInFaction(LocalSlaveFaction) 
	return true 
	else 
	return false
	endif 

EndFunction 


String Function GetCurrentLocationName()

	Location kCurrentLoc = cfgqst.PlayerRef.GetCurrentLocation()
	String LocationName = kCurrentLoc.GetName()
	
	if !LocationName
	LocationName = "No Name"
	endif 
	
	NymTrace("GetCurrentLocationName("+LocationName+")")
	
	return LocationName

EndFunction 



Function Fragment_0()								;############# STAGE 1000 #############
Debug.Trace("NAKED DEFEAT defeatquest Stage 1000 (END)")
;shutdown stage

;	RunExposureMonitor = false



	if cfgqst.PlayerRef.GetActorBase().IsEssential()
	cfgqst.PlayerRef.GetActorBase().SetEssential(false)
	endif
	Debug.Trace("NAKED DEFEAT defeatquest (END) PC IsEssential: "+cfgqst.PlayerRef.GetActorBase().IsEssential())

	Stop()

EndFunction


Function RegisterModEvents()
;RegisterForModEvent("StartForceMouthOpening", "OnStartForceMouthOpening")

EndFunction 

Function UnRegisterModEvents()
UnRegisterForModEvent("StartForceMouthOpening")

EndFunction 


int Property MouthStatePlayer Auto

;0 - Neutral - do nothing 
;10 - Moaning/Pained/operated by Naked Defeat
;20 - Open - Gagged 
;21 - x Gag Sizes / types

;30 - Open - Sucking / during Sex 
Keyword KWDzbfGag

Function GetMouthStatePlayer()
	NymTrace("GetMouthStatePlayer(LOOP)")
	if !KWDzbfGag
	KWDzbfGag = Game.GetFormFromFile(0x00008A4D, "ZaZAnimationPack.esm") as Keyword
	endif 	

	if cfgqst.ModDDframework && nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Gag") ;CHECK DD GAG
	MouthStatePlayer = 20
	cfgqst.Gagged = true
	elseif cfgqst.PlayerRef.WornHasKeyword(cfgqst.KWD_nade_Gag) || cfgqst.PlayerRef.WornHasKeyword(KWDzbfGag) ;CHECK ZAZ GAG 
	MouthStatePlayer = 20
	cfgqst.Gagged = true
	elseif cfgqst.IsDefeatRunning()
	MouthStatePlayer = 10
	elseif cfgqst.SexScene && Nym()
	MouthStatePlayer = 10
	else 
	MouthStatePlayer = 0
	MouthOpening = 0
	endif 

	if cfgqst.SexScene && calmqst.IsPlayerSucking() && Nym() 	;IS PLAYER SUCING NEEDS TO ADJUST FOR BATHING SCENES 
	cfgqst.Gagged = true
	storqst.Sucking = true
	MouthStatePlayer = 30
	else 
	
		if storqst.ForceOpen == 1 ;sucking
		storqst.Sucking = true
		else 
		storqst.Sucking = false 
		endif
	endif 
	
	NymTrace("GetMouthStatePlayer MouthStatePlayer ("+MouthStatePlayer+")")
	NymTrace("GetMouthStatePlayer MouthOpening ("+MouthOpening+")")
EndFunction 


float Function TStatPV(Actor starget, float percent, int stat)
	  if stat == 1
		return ((starget.GetActorValue("Health") / starget.GetActorValuePercentage("Health")) * percent)
	  elseif stat == 2
		return ((starget.GetActorValue("Magicka") / starget.GetActorValuePercentage("Magicka")) * percent)
	  elseif stat == 3
		return ((starget.GetActorValue("Stamina") / starget.GetActorValuePercentage("Stamina")) * percent)
	  endif
EndFunction


Bool ForceMouthOpeningRunning
; zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
Function OnStartForceMouthOpening(String EventName, String ArgString, Float ArgNum, Form Sender) ;OLD REMOVE!!!!!
	NymTrace("StartForceMouthOpening START")
; zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz	
	Bool Enable = true
	
	if Nym()
	Debug.Messagebox("OPEN MOUTH RESTARTED")
	endif 
	
	if cfgqst.SexScene && !Nym()
	Enable = false
	endif 
	
	if !ForceMouthOpeningRunning
	ForceMouthOpeningRunning = true
	
		while (Enable || cfgqst.IsDefeatRunning() || cfgqst.SlaveAuction || (MouthOpening > 0)) && cfgqst.ModEnabled	
			
			NymTrace("#OpenMouth: "+MouthOpening)
			
			if cfgqst.SexScene
			Utility.Wait(1.0)
			else 
			Utility.Wait(1.0)
			endif 
		
			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 0, MouthOpening)    ;AH
			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, MouthOpening)    ;BIG AAAH
			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 5, MouthOpening)    ;eee
			MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 6, MouthOpening)    ;EH
			
		endwhile 
		
	ForceMouthOpeningRunning = false
	NymTrace("StartForceMouthOpening END")
	
	else 
	NymTrace("StartForceMouthOpening ABORT - already running")
	endif 
	
EndFunction 

; zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
; zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz



;bool function SetExpression(Actor act, int mood, int value, float speed = 0.75) global

Function SetModifier_MOOD(actor akActor, int mood, int value, float speed)
	;MfG mode 2 apply (ExpressionOverride)
	
	storqst.CurrentMood = mood
	
	MfgConsoleFuncExt.SetExpression(akActor, mood, value, speed)
;MfgConsoleFuncExt		bool function SetModifier(Actor act, int id, int value, float speed = 0.75) global

EndFunction

Function SetModifier_MOUTH(actor akActor, int id, int value, float speed)
	;MfG mode 2 apply (ExpressionOverride)
	
	MfgConsoleFuncExt.SetPhoneme(akActor, id, value, speed) 
	;MfgConsoleFuncExt.SetExpression(akActor, mood, value, speed)

;MfgConsoleFuncExt		bool function SetModifier(Actor act, int id, int value, float speed = 0.75) global

EndFunction  


Function SetModifier_FACE(actor akActor, int id, int value, float speed)
	;MfG mode 1 apply

	MfgConsoleFuncExt.SetModifier(akActor, id, value, speed)

EndFunction 

Function ResetModifier_FACE(actor akActor, float speed)
	;MfG mode 1 rest
	MfgConsoleFuncExt.ResetModifiers(akActor, speed)

EndFunction 

Function OpenMouthMaintenance()
	NymTrace("OpenMouthMaintenance START (OpenMouth Received: "+MouthOpening+") (CurrentMood: "+storqst.CurrentMood+")")

	Bool Open = false
	int MouthOpeningFinal = MouthOpening

	if Nym() && storqst.ForceOpen > 0
	;Manual Override! 
	Open = true
	MouthOpeningFinal = 100
	
		if storqst.ForceOpen == 2 ;Kissing
		EquipTonguesPlayer()
		endif 
	
	else 
	
		if (cfgqst.IsDefeatRunning())
		Open = true 
		elseif cfgqst.SlaveAuction 
		Open = true 
		endif 

		if cfgqst.IsFucking(cfgqst.PlayerRef) 
		Open = false
		
			if Nym()
			Open = true
			endif 
		endif 
	endif 
	
	if cfgqst.Gagged && !storqst.Sucking ;gagged but not sucking (dont use Open 100)
	MouthOpeningFinal = 85
	endif 
	
	if storqst.CurrentMood == 16 && !storqst.Sucking
	MouthOpeningFinal = 75
	endif 
	
	if storqst.Sucking
	MouthOpeningFinal = Utility.RandomInt(95, 100)
	endif 
	
	if MouthOpeningFinal > storqst.MouthOpenMax
	MouthOpeningFinal = storqst.MouthOpenMax as int
	endif 
	
	if !cfgqst.PlayExpressions 
	MouthOpeningFinal = 0
	endif 
	
	if Open && cfgqst.PlayExpressions
		NymTrace("OpenMouthMaintenance(#OpenMouth Final: "+MouthOpeningFinal+")")
		;MfgConsoleFuncExt	 bool function SetPhoneme(Actor act, int id, int value, float speed = 0.75) global
		MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 0, MouthOpeningFinal, 0.1)    ;AH
		MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 1, MouthOpeningFinal, 0.2)    ;BIG AAAH
		MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 5, MouthOpeningFinal, 0.1)    ;eee
		MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 6, MouthOpeningFinal, 0.3)    ;EH
	endif 


	
EndFunction 

Function InstantMouthOpening()
	NymTrace("InstantMouthOpening START -> send to OpenMouthMaintenance")
	
	OpenMouthMaintenance()
	;/	

	Bool Open = false
	
	if cfgqst.IsFucking(cfgqst.PlayerRef) 
	Open = false
	
		if Nym()
		Open = true
		;TEST TEST 
		MouthOpening = 100
		endif 
	endif 
	
	if Open
	NymTrace("InstantMouthOpening #OpenMouth: "+MouthOpening)
	MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 0, MouthOpening, 0.0)    ;AH
	MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 1, MouthOpening, 0.1)    ;BIG AAAH
	MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 5, MouthOpening, 0.0)    ;eee
	MfgConsoleFuncExt.SetPhoneme(cfgqst.PlayerRef, 6, MouthOpening, 0.1)    ;EH
	endif
	
	/;
	
EndFunction 



Function Fragment_3()								;############# STAGE 10 #############

Debug.Trace("NAKED DEFEAT defeatquest Stage 10 (START)")

Actor a

	;if cfgqst.ModEnabled
	;RunExposureMonitor = true
	;RegisterForSingleUpdate(3.0)
	;endif 

a = Alias_EssentialPlayer.GetReference() as Actor

if cfgqst.NoEssentialPlayer
	if cfgqst.PlayerRef.GetActorBase().IsEssential()
	cfgqst.PlayerRef.GetActorBase().SetEssential(false)
	endif
elseif !cfgqst.PlayerRef.GetActorBase().IsEssential()
cfgqst.PlayerRef.GetActorBase().SetEssential(true)
endif

Debug.Trace("NAKED DEFEAT defeatquest (START) PC IsEssential: "+cfgqst.PlayerRef.GetActorBase().IsEssential())

cfgqst.PlayerRef.SetNoBleedoutRecovery(false)
;(Alias_EssentialPlayer.GetReference() as Actor).SetNoBleedoutRecovery(false)

;if EssentialPlayer


EndFunction

;Expressions and Sounds 	

Bool Property PlayerMonitorRunning Auto

Function PlayerMonitor_Loop(bool showmessage )

	if !PlayerMonitorRunning
		if showmessage 
		ScreenMessage("NAKED DEFEAT Player Status Monitor Started ("+cfgqst.NakedDefeat_ModVersion+")")
		endif 
	PlayerMonitorRunning = true
	endif 

	RegisterForSingleUpdate(1.0)

EndFunction 

int iUpdateTimer


Function STA_CallSpanker()

	;if (cfgqst.DefeatTypeGeneral == "AreHumans")

	int SpankEvent = ModEvent.Create("STA_DoRandomNpcSpank")
	if (SpankEvent)
		ModEvent.PushFloat(SpankEvent, 5.0)
		ModEvent.PushBool(SpankEvent, true)
		ModEvent.PushFloat(SpankEvent, -0.1)
		ModEvent.Send(SpankEvent)
	EndIf
;	endif 	
	
EndFunction
	

int GracePeriodPunishers = 0	
	
;PLAYER MONITOR - Fixed 3 Seconds Status Updates 
	
Event OnUpdate()			;#update	;#monitor #status

	iUpdateTimer += 1
	
	;every second ticks this down.
	if Nym() && slaveqst.Pretending && D100(10+storqst.Exhaustion)
	storqst.Exhaustion+= 1
	endif 
	
	if iUpdateTimer != 3		
		if (MouthOpening > 0) && !ForceMouthOpeningRunning
	;	SendModEvent("StartForceMouthOpening")
		endif 

	endif 

	OpenMouthMaintenance()

	NymTrace("defqst: OnUpdate(iUpdateTimer: "+iUpdateTimer+")")
	
	if iUpdateTimer > 3
	
		if Nym()
		Debug.MessageBox("#ERROR DEFQST UPDATETIMER > LOOPTIME") 
		endif 
	
	iUpdateTimer = 3
	endif 
	
	if iUpdateTimer == 3		;3 seconds passed - happens everytime
	iUpdateTimer = 0
	
		if Nym()
		NymTrace("Current Slave Gold: "+storqst.GetCurrentSlaveGold())
		ManageTimeScale() ;test TimeScale
		endif 
		
		;if slaveqst.FetchTaskType == "Mine Iron Ore"	
		;slaveqst.PlaceClosestOreVein("Iron Ore")
		;endif 
		
		
		Bool CallPunishers = false
		int PunishmentChance = 0
		if storqst.IsLocalSlave()
			
			
			if storqst.SlaveAtWork && D100(10)
			CallPunishers = true
			else
				PunishmentChance = 5 + cfgqst.PublicExposure - slaveqst.CompletedDayTasks

				if D100(PunishmentChance) 
				CallPunishers = true
				endif 
			endif 
			
		elseif Nym() && D100(cfgqst.PublicExposure) 
		CallPunishers = true
		endif 
		
		if CallPunishers && GracePeriodPunishers == 0
		GracePeriodPunishers += 10
		CallPunishers = false
		;NymTrace("WHIP AND TOUCH A")
		;storqst.MoveWhipperMode == 0 ;no initial movement
		NymTrace("CallWhipper")
		storqst.StartWhipping_00(10)
		;NymTrace("WHIP AND TOUCH B")
		
		;	if !cfgqst.SexScene && D100(50)
		;	NymTrace("STA_CallSpanker()")
		;	STA_CallSpanker()
		;	endif
			
		endif 
		
		;WAITING Maintenance (outside SexScene)
		
		cfgqst.WaitLoopPlayerMaintenance()
		GetMouthStatePlayer()
		
		if cfgqst.IsDefeatRunning() || (Nym() && cfgqst.IsFucking(cfgqst.PlayerRef))
		NymTrace("SexLoop A")	
			;--- SEX SCENE ---;
			if cfgqst.SexScene || (Nym() && cfgqst.IsFucking(cfgqst.PlayerRef))
			NymTrace("SexLoop B")
			SexDuration	+=3
			
				if Nym()	
				NymTrace("SexScene A: "+cfgqst.SexScene)
				NymrasSexEffects()
				NymrasSexExpressions()	;sends Moan
				;SendModEvent("Moan")
				SendModEvent("StartRaperExpressions")
				endif 
				
			;--- NAKED DEFEAT EXPRESSIONS & SOZBDS ---;
			else 	
				
				cfgqst.SetExpression(Utility.RandomInt(1,6))	
			
				;looping with fuckbelt sounds & gag sounds
				if cfgqst.BoolCaptiveFuckBelt || cfgqst.Gagged || cfgqst.SexSceneBukkake
				
					;only plays with fuckingbelt
					if cfgqst.BoolCaptiveFuckBelt				
					cfgqst.PlaySoundFuckBelt()
					
					
					endif
					
					SendModEvent("Moan")
				endif
			endif 
		;--- NAKED DROWNING ---;
		elseif cfgqst.NakedDrowning && cfgqst.PlayerRef.IsSwimming()
	
			SwimmingTime -= 1
			
			if Nym()
				if SwimmingTime == 1
				NymMessage("Water Cleans us")
				cfgqst.SendWashPlayerEvent()
				endif 
			endif 
	
			CheckNakedDrowning()
		
		else 
		
		SwimmingTime = 10
			
		endif
	endif 

	PlayerMonitor_Loop(false)

EndEvent 

int SwimmingTime = 10

Armor Tongue1
Armor Tongue2
Armor Tongue3
Armor Tongue4
Armor Tongue5
Armor Tongue6
Armor Tongue7
Armor Tongue8
Armor Tongue9
Armor Tongue10
Armor Tongue11invisible
Armor Drool

int TongueEquipped = 0

bool TonguesAdded = false 

;/

	;>>>> DILDO SHOCK TEST
						if Nym()
						
						;THIS IS NOT WORKING BECAUSE I CANNOT GET THE ObjectReference OF THE DILDO ARMOR 
						; we need more elaborate thing for this to work (enchantment, script or get ObjectReference while on ground before equip?)
							Armor Dildo
							ObjectReference DildoObj
							Dildo = cfgqst.PlayerRef.GetWornForm(0x01000000) as Armor	;54 - Unnamed	(DD Plugs vaginal)
							
							DildoObj = Dildo.GetReference() as ObjectReference
							
							if DildoObj
							
							NymTrace("DildoObj Found")
								if D100(50)
								cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, DildoObj)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
								cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, DildoObj)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
								else 
								EffectShader PunishmentShader = (Game.GetFormFromFile(0x0003BF79, "Skyrim.esm") as EffectShader) ;ShockStormFXShader _NICE! 
								PunishmentShader.Play(DildoObj, 2.0)
								endif 
							else 
							
							NymTrace("DildoObj NONE")
								;Armor Dildo2
								;Dildo2 = cfgqst.PlayerRef.GetWornForm(0x01000000) as Armor	;54 - Unnamed	(DD Plugs vaginal)
								;if Dildo2
				
								;NymTrace("Dildo2 Found")
								;else 
								;NymTrace("Dildo2 NONE")
								;endif 
								
							endif 
						endif 
						;<<<< DILDO SHOCK TEST

/;


Function ToggleDroolPlayer(bool equip)
	
	if Nym()
	
		Armor TempArmor = (cfgqst.PlayerRef.GetWornForm(0x80000000) as armor)

		if !Drool
		Drool = (game.GetFormFromFile(0x00026d60, "ZaZAnimationPack.esm") as armor)
		endif 
		
		if equip 
			if !TempArmor
			NymTrace("ToggleDroolPlayer: ADD")
			cfgqst.PlayerRef.AddItem(Drool, 1, true)
			cfgqst.PlayerRef.EquipItemEx(Drool, 0, false)
			endif 
		else
		
			if Drool == TempArmor
			NymTrace("ToggleDroolPlayer: REMOVE")
			cfgqst.PlayerRef.UnequipItemEx(Drool, 0, false)
			cfgqst.PlayerRef.RemoveItem(Drool)
			endif 
		endif 
	endif 
	
EndFunction 

Function AddTonguesPlayer()
NymTrace("AddTonguesPlayer()")
if Nym()
	Bool TonguesPresent = false

	if !Tongue1
	Tongue1 = (Game.GetFormFromFile(0x00000D6C, "Tongues.esp") As Armor)
	Tongue2 = (Game.GetFormFromFile(0x00000D6D, "Tongues.esp") As Armor)
	Tongue3 = (Game.GetFormFromFile(0x00000D6E, "Tongues.esp") As Armor)
	Tongue4 = (Game.GetFormFromFile(0x00000D6F, "Tongues.esp") As Armor)
	Tongue5 = (Game.GetFormFromFile(0x00000D70, "Tongues.esp") As Armor)
	Tongue6 = (Game.GetFormFromFile(0x00000D71, "Tongues.esp") As Armor)
	Tongue7 = (Game.GetFormFromFile(0x00000D72, "Tongues.esp") As Armor)
	Tongue8 = (Game.GetFormFromFile(0x00000D73, "Tongues.esp") As Armor)
	Tongue9 = (Game.GetFormFromFile(0x00000D74, "Tongues.esp") As Armor)
	Tongue10 = (Game.GetFormFromFile(0x00000D75, "Tongues.esp") As Armor)	
	Tongue11invisible = (Game.GetFormFromFile(0x00002863, "Tongues.esp") As Armor)	
	endif 
	
	
	Formlist FormlistInventory = cfgqst.RobbedStuff ;TODO
	FormlistInventory.Revert()
	cfgqst.PlayerRef.GetAllForms(FormlistInventory)	
	
	Form Tongue1Form = (Game.GetFormFromFile(0x00000D6C, "Tongues.esp") As Form)
	
	if FormlistInventory.HasForm(Tongue1Form) 
	NymTrace("AddTonguesPlayer(TonguesPresent)")
	TonguesPresent = true 
	else 
	NymTrace("AddTonguesPlayer(TonguesNOTPresent)")
	endif 
	
	if !TonguesPresent
	cfgqst.PlayerRef.AddItem(Tongue1, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue2, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue3, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue4, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue5, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue6, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue7, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue8, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue9, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue10, 1, true)
	cfgqst.PlayerRef.AddItem(Tongue11invisible, 1, true)
				
	TonguesAdded = true
	endif 	

endif 	
EndFunction 

Function EquipTonguesPlayer()
NymTrace("EquipTonguesPlayer")

if Nym()

	AddTonguesPlayer()

	NymTrace("EquipTonguesPlayer(TongueEquipped CURRENT: "+TongueEquipped+")")
	
	Armor TempTongue
		
		if !Tongue1
		Tongue1 = (Game.GetFormFromFile(0x00000D6C, "Tongues.esp") As Armor)
		Tongue2 = (Game.GetFormFromFile(0x00000D6D, "Tongues.esp") As Armor)
		Tongue3 = (Game.GetFormFromFile(0x00000D6E, "Tongues.esp") As Armor)
		Tongue4 = (Game.GetFormFromFile(0x00000D6F, "Tongues.esp") As Armor)
		Tongue5 = (Game.GetFormFromFile(0x00000D70, "Tongues.esp") As Armor)
		Tongue6 = (Game.GetFormFromFile(0x00000D71, "Tongues.esp") As Armor)
		Tongue7 = (Game.GetFormFromFile(0x00000D72, "Tongues.esp") As Armor)
		Tongue8 = (Game.GetFormFromFile(0x00000D73, "Tongues.esp") As Armor)
		Tongue9 = (Game.GetFormFromFile(0x00000D74, "Tongues.esp") As Armor)
		Tongue10 = (Game.GetFormFromFile(0x00000D75, "Tongues.esp") As Armor)	
		endif 
		
		;EQUIP NEW Tongue (had no Tongue)
		if TongueEquipped == 0 
			int i = Utility.RandomInt(1,10)
			NymTrace("EquipTonguesPlayer(TongueEquipped A)")	
			if cfgqst.Gagged && !storqst.Sucking	;we are gagged but not sucking ---> no tongue!
				
				if D100(33)
				i = 0 
				else 
				i = Utility.RandomInt(4,6)
				endif 
			elseif storqst.Sucking
			NymTrace("EquipTonguesPlayer(TongueEquipped B)")
			;select suitable tongue only
				i = Utility.RandomInt(1,2)
			endif 
			
			if i == 1 
			TempTongue = Tongue1		;low long straight, 20 degree downfacing	(Sucking)
			elseif i == 2 || i == 3 
			TempTongue = Tongue2		;low tup facing down 20 degree downfacing (Sucking)
			;elseif i == 3	
			;TempTongue = Tongue3		;low, curled up. DONT use 
			elseif i == 4 
			TempTongue = Tongue4		;low very long, hanging down. gagged?
			elseif i == 5	
			TempTongue = Tongue5		;low tip facing up very long, hanging down. gagged?
			elseif i == 6
			TempTongue = Tongue6		;low, SHORT, straight, gagged? sucking
			elseif i == 7	
			TempTongue = Tongue7		;medium, curving down. neither gag nor suck
			elseif i == 8 || i == 9
			TempTongue = Tongue8	;medium, curving down. neither gag nor suck
			;elseif i == 9	
			;TempTongue = Tongue9		;curled upo, dont use
			elseif i == 10	
			TempTongue = Tongue10		;facing up
			endif 
			
			
			TongueEquipped = i
			NymTrace("EquipTonguesPlayer(TongueEquipped NEW A: "+TongueEquipped+")")
			cfgqst.PlayerRef.EquipItemEx(TempTongue, 0, false, true)
			;nioverride.ApplyOverrides(cfgqst.PlayerRef)
			;if !cfgqst.IsPlayerGagged()
			int CamState = Game.GetCameraState() 
			NymTrace("CAMERA STATE A = "+CamState)
			
			Bool AllowNiNodeUpdate = false 
			
			if (CamState == 3)	;free cam
			AllowNiNodeUpdate = true 
				
				if cfgqst.SexScene && cfgqst.Gagged ;during Sex when gagged NO updates allowed (or needed)
				AllowNiNodeUpdate = false 
				endif 
			endif 
			
			if AllowNiNodeUpdate 
			NymTrace("defqst.QueueNiNodeUpdate(cfqgst 668")
			NymMessage("NiNodeUpdate!")
			cfgqst.PlayerRef.QueueNiNodeUpdate()
			InstantMouthOpening()
			endif 
			;endif 
		;UNEQUIP TONGUE 
		elseif (TongueEquipped > 0) && D100(25)
		NymTrace("EquipTonguesPlayer(TongueEquipped NEW B: "+TongueEquipped+")")
		;UnequipTonguesPlayer()
			
			int i = Utility.RandomInt(1,10)
			
			if i == 1 
			TempTongue = Tongue1
			elseif i == 2 
			TempTongue = Tongue2
			elseif i == 3	
			TempTongue = Tongue3	
			elseif i == 4 
			TempTongue = Tongue4
			elseif i == 5	
			TempTongue = Tongue5	
			elseif i == 6
			TempTongue = Tongue6
			elseif i == 7	
			TempTongue = Tongue7	
			elseif i == 8 
			TempTongue = Tongue8
			elseif i == 9	
			TempTongue = Tongue9	
			elseif i == 10	
			TempTongue = Tongue10	
			endif 
			
			TongueEquipped = i
			NymTrace("EquipTonguesPlayer(TongueEquipped CURRENT CHANGED: "+TongueEquipped+")")
			cfgqst.PlayerRef.EquipItemEx(TempTongue, 0, false, true)
			;nioverride.ApplyOverrides(cfgqst.PlayerRef)
			;if !cfgqst.IsPlayerGagged()
			
			int CamState = Game.GetCameraState() 
			NymTrace("CAMERA STATE B = "+CamState)
			if CamState == 3	
			NymTrace("defqst.QueueNiNodeUpdate(cfqgst 712")
			NymMessage("NiNodeUpdate B!")
			cfgqst.PlayerRef.QueueNiNodeUpdate()
			InstantMouthOpening()
			endif 
			;endif 
		
		endif 
endif 

EndFunction 

Armor PlugLantern
Armor PlugTorch
Spell FaceLightSpellDark
Spell FaceLightSpellMedium
Spell FaceLightSpellBright

int CurrentLight = 0


Bool Function HasPlayerAssLight()

if CurrentLight == 4 || CurrentLight == 5
return true 
else 
return false
endif 

EndFunction 


Function TogglePlayerLight()

	

	If Nym()
	
		DeleteTorch()
	
		if !PlugLantern
		FaceLightSpellDark = Game.GetFormFromFile(0x0000D79, "Better Face Lighting - ENB Light.esp") as Spell ;dark	lvl 0
		FaceLightSpellMedium = Game.GetFormFromFile(0x0000D73, "Better Face Lighting - ENB Light.esp") as Spell ;medium lvl 3
		FaceLightSpellBright = Game.GetFormFromFile(0x0000857, "Better Face Lighting - ENB Light.esp") as Spell ;bright lvl 6
		PlugTorch = Game.GetFormFromFile(0x0002312, "pchsImmersivePlugs.esp") as Armor ;torch
		PlugLantern = Game.GetFormFromFile(0x0004372, "pchsImmersivePlugs.esp") as Armor	;lantern
			
			if PlugLantern && PlugTorch && FaceLightSpellDark && FaceLightSpellMedium && FaceLightSpellBright
			NymTrace("TogglePlayerLight() - ALL FOUND")
			else 
			NymTrace("TogglePlayerLight() - #ERROR Not ALL FOUND")
			endif 
		endif 
				
		;DURING DEFEAT/SEX  
		if cfgqst.IsDefeatRunning() || cfgqst.SexScene
			
			if CurrentLight == 0 ;no Light
			cfgqst.PlayerRef.AddSpell(FaceLightSpellDark) ;add light dark
			CurrentLight = 1
			elseif CurrentLight == 1
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellDark) 
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium)
			CurrentLight = 2
			elseif CurrentLight == 2
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellMedium) 
			cfgqst.PlayerRef.AddSpell(FaceLightSpellBright) 
			CurrentLight = 3
			elseif CurrentLight == 3	
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellBright) 
			CurrentLight = 0
			elseif CurrentLight == 4	
			cfgqst.PlayerRef.UnequipItemEx(PlugTorch, 0, false)
			;cfgqst.PlayerRef.RemoveItem(PlugTorch)
			Utility.Wait(0.2)
			DeleteTorch()
			CurrentLight = 0	
			elseif CurrentLight == 5	
			cfgqst.PlayerRef.UnequipItemEx(PlugLantern, 0, false)
			cfgqst.PlayerRef.RemoveItem(PlugLantern)
			CurrentLight = 0
			endif 
		
		;DURING ADVENTURE  - rotate medium and plug
		else 
			
			;Has No Light
			if CurrentLight == 0 
			NymTrace("TogglePlayerLight() - No Light - Add Medium")
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium) 
			CurrentLight = 2
			
			;PLUG Lantern or Torch
			elseif CurrentLight == 1 || CurrentLight == 2 || CurrentLight == 3	
			NymTrace("TogglePlayerLight() - Medium Facelight - Add Plug")
			
				if CurrentLight == 1
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellDark) 
				elseif CurrentLight == 2
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellMedium) 
				elseif CurrentLight == 3	
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellBright) 
				endif 
			
				if D100(50)	;torch
				cfgqst.PlayerRef.AddItem(PlugTorch)
				cfgqst.PlayerRef.EquipItemEx(PlugTorch, 0, true ,true)
				CurrentLight = 4		
				else  ;lantern
				cfgqst.PlayerRef.AddItem(PlugLantern)	;T
				cfgqst.PlayerRef.EquipItemEx(PlugLantern, 0, true ,true)
				CurrentLight = 5
				endif 
			
			;Has torch, equip Facelight
			elseif CurrentLight == 4
			cfgqst.PlayerRef.UnequipItemEx(PlugTorch, 0, false)
			;cfgqst.PlayerRef.RemoveItem(PlugTorch)
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium) 
			Utility.Wait(0.2)
			DeleteTorch()
			CurrentLight = 2
			elseif CurrentLight == 5
			cfgqst.PlayerRef.UnequipItemEx(PlugLantern, 0, false)
			cfgqst.PlayerRef.RemoveItem(PlugLantern)
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium) 
			CurrentLight = 2
			endif 

		endif 
	endif

EndFunction 


Function DeleteTorch()
		NymTrace("DeleteTorch()")
		ObjectReference ClosestTorch

		;Form PlugTorchTemp = Game.GetFormFromFile(0x0002312, "pchsImmersivePlugs.esp") as Form ;torch
		Form DroppedTorch = Game.GetFormFromFile(0x0001D4EC, "skyrim.esm") as Form ;torch


		if DroppedTorch
		NymTrace("DeleteTorch(DroppedTorch filled)")
		else 
		NymTrace("DeleteTorch(DroppedTorch NOT filled)")
		endif 
		
		ClosestTorch = Game.FindClosestReferenceOfTypeFromRef(DroppedTorch, cfgqst.PlayerRef, 500.0)
				
		if ClosestTorch		
		NymTrace("DeleteTorch(ClosestTorch FOUND)")
		ClosestTorch.Disable()
		ClosestTorch.Delete()
		else 
		NymTrace("DeleteTorch(ClosestTorch NOT FOUND)")

		endif

EndFunction	

Function UnequipTonguesPlayer()
NymTrace("UnequipTonguesPlayer()")
NymTrace("UnequipTonguesPlayer(TongueEquipped: "+TongueEquipped+")")
	int Mode = 4

	if Nym() 	;NakedTongues
		
		if storqst.ForceOpen == 2 ;Kissing - Force Tongues to remain outside.
		;do nothing
		else 		
		PO3_SKSEFunctions.RemoveAllModItems(cfgqst.PlayerRef, "Tongues.esp", true) ;only Unequip
		endif 
	endif 
		;/
		if Mode == 3 
		
			Armor TempTongue

			if TongueEquipped == 1 
			TempTongue = Tongue1
			elseif TongueEquipped == 2 
			TempTongue = Tongue2
			elseif TongueEquipped == 3		;curled, short, bad
			TempTongue = Tongue3	
			elseif TongueEquipped == 4 
			TempTongue = Tongue4
			elseif TongueEquipped == 5	
			TempTongue = Tongue5	
			elseif TongueEquipped == 6
			TempTongue = Tongue6
			elseif TongueEquipped == 7	
			TempTongue = Tongue7	
			elseif TongueEquipped == 8 
			TempTongue = Tongue8
			elseif TongueEquipped == 9	
			TempTongue = Tongue9	
			elseif TongueEquipped == 10	
			TempTongue = Tongue10	
			endif 
			
			cfgqst.PlayerRef.UnequipItemEx(TempTongue, 0, false)
			TongueEquipped = 0
		
		
		elseif Mode == 2
		
			 if !Tongue11invisible 
			 Debug.Messagebox("Tongue11invisible NOT found")
			Tongue11invisible = (Game.GetFormFromFile(0x00002863, "Tongues.esp") As Armor)	
				if Tongue11invisible
				Debug.Messagebox("Tongue11invisible found")
				endif 
			endif 
		/;
			
			
			
		;cfgqst.PlayerRef.EquipItemEx(Tongue11invisible, 0, false, true)
		;cfgqst.PlayerRef.UnequipItemEx(Tongue11invisible, 0, false)


EndFunction 


Function NymrasSexEffects()

	if SexEffect01 > 0
	
		if D100(75) ;randomize
		
			if SexEffect01 == 2
			cfgqst.StartPunishmentEffect("Shock")
			elseif SexEffect01 == 3 
			cfgqst.StartPunishmentEffect("Forst")
			elseif SexEffect01 == 4 
			cfgqst.StartPunishmentEffect("Fire")
			endif 
		endif 		
	endif 
		

EndFunction 

Armor[] Property DrippingPussyZAZ Auto

Function DrippingPussy(bool Start)
				
		if storqst.BodyFluids	
		;/
			if Start 
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[0], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[0], false, true)
			
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[1], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[1], false, true)
			
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[2], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[2], false, true)
			
			else 
			cfgqst.PlayerRef.RemoveItem(DrippingPussyZAZ[0], 1, true, None)
			endif 
			/;
		endif 

EndFunction 


Armor Property BrutalPlug Auto

Function AddBrutalPlugs(int iTypeNumber)	;#plugs

Debug.Trace("NAKED DEFEAT configquest: AddBrutalPlugs()")

	if (Game.GetModByName("pchsImmersivePlugs.esp") != 255)
		
		if iTypeNumber == 0
		iTypeNumber = Utility.RandomInt (1, 6)
		endif 
		
		if iTypeNumber == 1
		;CARROT
		BrutalPlug = (Game.GetFormFromFile(0x00000D63, "pchsImmersivePlugs.esp") As Armor)		

		;COMMON SOULGEM
		elseif iTypeNumber == 2
		BrutalPlug = (Game.GetFormFromFile(0x000048DD, "pchsImmersivePlugs.esp") As Armor)
			
		;MEAD
		elseif iTypeNumber == 3
		BrutalPlug = (Game.GetFormFromFile(0x000012D0, "pchsImmersivePlugs.esp") As Armor)

		;HOOK
		elseif iTypeNumber == 4
		BrutalPlug = (Game.GetFormFromFile(0x0000183E, "pchsImmersivePlugs.esp") As Armor)

		;BONE
		elseif iTypeNumber == 5
		BrutalPlug = (Game.GetFormFromFile(0x00002315, "pchsImmersivePlugs.esp") As Armor)
	
		;HORKER TUSK
		elseif iTypeNumber == 6
		BrutalPlug = (Game.GetFormFromFile(0x00000D65, "pchsImmersivePlugs.esp") As Armor)

		;BROOM
		elseif iTypeNumber == 7
		BrutalPlug = (Game.GetFormFromFile(0x00002319, "pchsImmersivePlugs.esp") As Armor)
	
		;BUCKET (NOT USED ATM)
		elseif iTypeNumber == 8
		BrutalPlug = (Game.GetFormFromFile(0x00004374, "pchsImmersivePlugs.esp") As Armor)

		endif
		
		cfgqst.PlayerRef.AddItem(BrutalPlug, 1, true)				
		cfgqst.PlayerRef.EquipItem(BrutalPlug, false, true)
		SendModEvent("Moan")
		
	endif
		
EndFunction

Function RemoveBrutalPlugs()

NymTrace("RemoveBrutalPlugs() Non DD")
	
	if BrutalPlug
	cfgqst.PlayerRef.RemoveItem(BrutalPlug, 1, true, None)
	endif
	BrutalPlug = none

EndFunction


Function NymrasSexExpressions()
		NymTrace("NymrasSexExpressions: cfgqst.IsMouthAvailable: "+cfgqst.IsMouthAvailable)
		
		if cfgqst.IsMouthAvailable > 1
		Debug.Messagebox("Fix Mouth Available")
		
		cfgqst.IsMouthAvailable = 1
		
		endif 

		if cfgqst.IsFucking(cfgqst.PlayerRef) 
			
			;NORMAL		
			if cfgqst.IsMouthAvailable == 1	;not sucking
			;NymTrace("OnStartNakedSexExpressions 3")
			cfgqst.Gagged = false 
			cfgqst.SetExpression(Utility.RandomInt(1,6))
	
			;SUCKING 	
			elseif cfgqst.IsMouthAvailable == 0 ;sucking 
			;NymTrace("OnStartNakedSexExpressions 4")
			cfgqst.Gagged = true 
			cfgqst.SetExpression(Utility.RandomInt(1,6))
			;cfgqst.SetExpression(1)
			endif 
			
		SendModEvent("Moan") 	

		endif  
	;NymTrace("OnStartNakedSexExpressions 10")	
	;cfgqst.IsMouthAvailable = 1
	;cfgqst.Gagged = false ;<<<<--- sigh 		


EndFunction 

Function CheckNakedDrowning()

		float Health
		;Health = cfgqst.PlayerRef.GetAV("Health")
		Health = cfgqst.PlayerRef.GetBaseActorValue("Health")
		float Damage
		Damage = Health*0.2

			if IsArmorTooHeavy()
				Debug.Notification("<font color='#ff0000'>You cannot swim in your gear and strip it fast!</font>")
				Debug.trace("NAKED DEFEAT calmquest: (#msg) You cannot swim in your gear and strip it fast!")
				
				if cfgqst.NymBeta	
				cfgqst.StripWeapons()
				cfgqst.Strip(30, cfgqst.PlayerRef)
				cfgqst.Strip(31, cfgqst.PlayerRef)
				cfgqst.Strip(32, cfgqst.PlayerRef)
				cfgqst.Strip(33, cfgqst.PlayerRef)
				cfgqst.Strip(37, cfgqst.PlayerRef)
				cfgqst.Strip(39, cfgqst.PlayerRef)
				
				else	;original (damage when swimming)				
				cfgqst.PlayerRef.DamageAV("Health", Damage)
				int i = Utility.RandomInt(1,3)
					if i == 1
					Debug.Notification("<font color='#ff0000'>You cannot swim in your heavy armor!</font>")
					Debug.trace("NAKED DEFEAT calmquest: (#msg) You cannot swim in your heavy armor!")
					elseif i == 2
					Debug.Notification("<font color='#ff0000'>Get out of the water fast!</font>")
					Debug.trace("NAKED DEFEAT calmquest: (#msg) Get out of the water fast!")		
					elseif i == 3
					Debug.Notification("<font color='#ff0000'>You will drown, get out!</font>")
					Debug.trace("NAKED DEFEAT calmquest: (#msg) You will drown, get out!")
					endif
				endif
			endif

EndFunction 

Bool Function IsArmorTooHeavy()

	Form a = None
	bool TooHeavy = false
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;30 - HEAD	????
	if a && cfgqst.IsItem("Armor Type Heavy", a)
	return true
	endif
		
	a = cfgqst.PlayerRef.GetWornForm(0x00000004)	;32 - BODY				
	if a && cfgqst.IsItem("Armor Type Heavy", a)		
	return true	
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;33 - HANDS	
	if a ;&& cfgqst.IsItem("Armor Type Heavy", a)
	return true
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000080)	;37 - FEET
	if a ;has to be barefeet
	return true
	else
	return false
	endif

EndFunction

Bool Function CheckInventoryForItem(Form ItemWeLookFor)


		Int iFormIndex = cfgqst.PlayerRef.GetNumItems()	
		Int iFormCount
		Form ItemToCheck
		String ItemName
		Bool ItemFound = false

				While (iFormIndex > 0) && !ItemFound
					iFormIndex -= 1
					ItemToCheck = cfgqst.PlayerRef.GetNthForm(iFormIndex)
					
					if ItemToCheck
					ItemName = ItemToCheck.GetName()
					
						if !ItemName
						ItemName = "NoName"
						endif 
					
						;if !ItemName
						;ItemName = RobbedItem.GetBaseObject().GetName()
						;endif 
					else
					ItemName = "NoItem > NoName"
					endif					
					
					if ItemToCheck == ItemWeLookFor
					ItemFound = true 
					NymTrace("FOUND ITEM: ItemName :" +ItemName)
					else 			
					NymTrace("Wrong ITEM: ItemName :" +ItemName)
					endif 
				endwhile 

		return ItemFound

EndFunction 

Keyword KWD_ArmorHelmet 	
Keyword KWD_ArmorGauntlet 	
Keyword KWD_ArmorBoots 		
Keyword KWD_ClothingFeet	
Keyword KWD_ClothingHands	
Keyword KWD_ClothingHead	

Keyword KWD_ArmorCuirass
Keyword KWD_ClothingBody


Keyword KWD_VendorItemWeapon
Keyword KWD_ArmorShield

Keyword[] Property KWDList Auto

Keyword[] Property KWDList_Temp Auto
Form[] Property TempFormList Auto

Function ResetList()
	NymTrace("ResetList()")
	int i = 50
	;while i 
	;i -= 1
	;TempFormList[i] = none 
	;endwhile 
	
;	TempFormList[0] = none 
;	TempFormList[1] = none
;	TempFormList[2] = none
;	TempFormList[3] = none
;	TempFormList[4] = none
;	TempFormList[5] = none

EndFunction 

Function FindAndEquipInventoryItems(actor akActor, int mode)
	NymTrace("FindAndEquipInventoryItems()")
	
	Int iFormIndex ; = akActor.GetNumItems()	;number of Items in Inventory 
	Form InventoryItem 
	String ItemName
	Bool AllowItem = false
	
	;/	
	if Nym() 
		if KWD_Temp == KWD_ArmorCuirass
		sTypeTest = "KWD_ArmorCuirass"
		elseif KWD_Temp == KWD_ArmorGauntlet
		sTypeTest = "KWD_ArmorGauntlet"
		elseif KWD_Temp == KWD_ArmorBoots
		sTypeTest = "KWD_ArmorBoots"
		elseif KWD_Temp == KWD_ArmorHelmet
		sTypeTest = "KWD_ArmorHelmet"
		elseif KWD_Temp == KWD_ClothingFeet
		sTypeTest = "KWD_ClothingFeet"
		elseif KWD_Temp == KWD_ClothingHead
		sTypeTest = "KWD_ClothingHead"
		elseif KWD_Temp == KWD_ClothingBody
		sTypeTest = "KWD_ClothingBody"
		elseif KWD_Temp == KWD_ClothingHands
		sTypeTest = "KWD_ClothingHands"
		endif 
	endif 
	/;

	Bool bHead = false
	Bool bBody = false
	Bool bArms = false
	Bool bLegs = false 
	Bool bWeapon = false
	Bool bShield = false
	
	iFormIndex = akActor.GetNumItems()
	
	if Mode == 1 ;Equip HEAD, ARMS, LEGS ONLY
	NymTrace("FindAndEquipInventoryItems(Mode 1)")
		while iFormIndex > 0
			
			iFormIndex -= 1
			InventoryItem = akActor.GetNthForm(iFormIndex) ;gets Form X from the Inventory - X is the GetNumItems int
				
			if InventoryItem
			ItemName = InventoryItem.GetName()				
				if !ItemName
				ItemName = "NoName"
				endif 
			else
			ItemName = "NoItem > NoName"
			endif	
			
			if InventoryItem  ;ARMOR ---- HEAD, ARMS, LEGS 
			
				if InventoryItem.HasKeyword(KWD_ArmorGauntlet) && !bArms
				AllowItem = true
				bArms = true
				elseif InventoryItem.HasKeyword(KWD_ArmorBoots) && !bLegs
				AllowItem = true
				bLegs = true
				elseif InventoryItem.HasKeyword(KWD_ArmorHelmet) && !bHead
				AllowItem = true
				bHead = true
				endif 
			
				if AllowItem
				AllowItem = false
				DebugTrace("InventoryItem["+ItemName+"] FOUND")
				akActor.EquipItem(InventoryItem, false, true)	
				endif
			endif 	
		EndWhile
		
		if !bArms || !bLegs || !bHead
		NymTrace("No Armor Found, try Clothes")
		
			iFormIndex = akActor.GetNumItems()
			
			while iFormIndex > 0

				iFormIndex -= 1
				InventoryItem = akActor.GetNthForm(iFormIndex) ;gets Form X from the Inventory - X is the GetNumItems int
					
				if InventoryItem
				ItemName = InventoryItem.GetName()				
					if !ItemName
					ItemName = "NoName"
					endif 
				else
				ItemName = "NoItem > NoName"
				endif	
				
				if InventoryItem  ;CLOTHING ---- HEAD, ARMS, LEGS 
					
					if InventoryItem.HasKeyword(KWD_ClothingHands)  && !bArms
					AllowItem = true
					bArms = true
					elseif InventoryItem.HasKeyword(KWD_ClothingFeet) && !bLegs
					AllowItem = true
					bLegs = true
					elseif InventoryItem.HasKeyword(KWD_ClothingHead) && !bHead
					AllowItem = true	
					bHead = true					
					endif 

					if AllowItem
					AllowItem = false
					DebugTrace("InventoryItem["+ItemName+"] FOUND")
					akActor.EquipItem(InventoryItem, false, true)	
					endif
				endif 
				
			EndWhile
		endif 
		
	elseif Mode == 2 	;EQUIP ALL


		iFormIndex = akActor.GetNumItems()
		
		while iFormIndex > 0
			

			iFormIndex -= 1
			InventoryItem = akActor.GetNthForm(iFormIndex) ;gets Form X from the Inventory - X is the GetNumItems int

			if InventoryItem  ;all	
				;loop Armor and Weapons first 
				if InventoryItem.HasKeyword(KWD_ArmorCuirass) && !bBody
				AllowItem = true
				bBody = true
				elseif InventoryItem.HasKeyword(KWD_ArmorGauntlet)  && !bArms
				AllowItem = true
				bArms = true
				elseif InventoryItem.HasKeyword(KWD_ArmorBoots) && !bLegs
				AllowItem = true
				bLegs = true
				elseif InventoryItem.HasKeyword(KWD_ArmorHelmet) && !bHead
				AllowItem = true
				bHead = true
				elseif InventoryItem.HasKeyword(KWD_VendorItemWeapon) && !bWeapon
				AllowItem = true
				bWeapon = true
				elseif InventoryItem.HasKeyword(KWD_ArmorShield) && !bShield
				AllowItem = true		
				bShield = true				
				endif 

				if InventoryItem
				ItemName = InventoryItem.GetName()				
					if !ItemName
					ItemName = "NoName"
					endif 
				endif	

				if AllowItem
				AllowItem = false
				DebugTrace("InventoryItem["+ItemName+"] FOUND")
				akActor.EquipItem(InventoryItem, false, true)	
				endif
			endif 
			
		EndWhile
	
		if !bBody || !bArms || !bLegs || !bHead
		NymTrace("No Armor Found, try Clothes")
		
		iFormIndex = akActor.GetNumItems()
		
			while iFormIndex > 0
	
				
				iFormIndex -= 1
				InventoryItem = akActor.GetNthForm(iFormIndex) ;gets Form X from the Inventory - X is the GetNumItems int
					
				if InventoryItem
				ItemName = InventoryItem.GetName()				
					if !ItemName
					ItemName = "NoName"
					endif 
				else
				ItemName = "NoItem > NoName"
				endif	
				
				if InventoryItem  ;all	
					;loop Armor and Weapons first 
					if InventoryItem.HasKeyword(KWD_ClothingBody) && !bBody
					AllowItem = true
					bBody = true
					elseif InventoryItem.HasKeyword(KWD_ClothingHands)  && !bArms
					AllowItem = true
					bArms = true
					elseif InventoryItem.HasKeyword(KWD_ClothingFeet) && !bLegs
					AllowItem = true
					bLegs = true
					elseif InventoryItem.HasKeyword(KWD_ClothingHead) && !bHead
					AllowItem = true	
					bHead = true					
					endif 

					if AllowItem
					AllowItem = false
					DebugTrace("InventoryItem["+ItemName+"] FOUND")
					akActor.EquipItem(InventoryItem, false, true)	
					endif
				endif 
				
			EndWhile
		endif 
	endif 	
	
EndFunction 


Function StripAggressorStuff(actor akActor, int number)	

	;	actor akActor = cfgqst.PlayerRef 
	;	int number
		;fill Keywords 
		
		if !KWD_ArmorHelmet
		
		KWD_ArmorHelmet = (Game.GetFormFromFile(0x0006C0EE, "Skyrim.esm") as Keyword)
		KWD_ArmorGauntlet = (Game.GetFormFromFile(0x0006C0EF, "Skyrim.esm") as Keyword)
		KWD_ArmorBoots = (Game.GetFormFromFile(0x0006C0ED, "Skyrim.esm") as Keyword)
		KWD_ClothingFeet = (Game.GetFormFromFile(0x0010CD12, "Skyrim.esm") as Keyword)
		KWD_ClothingHands = (Game.GetFormFromFile(0x0010CD13, "Skyrim.esm") as Keyword)
		KWD_ClothingHead = (Game.GetFormFromFile(0x0010CD11, "Skyrim.esm") as Keyword)
		
		KWD_ArmorCuirass = (Game.GetFormFromFile(0x0006C0EC, "Skyrim.esm") as Keyword)
		KWD_ClothingBody = (Game.GetFormFromFile(0x000A8657, "Skyrim.esm") as Keyword)
		
		KWD_VendorItemWeapon = (Game.GetFormFromFile(0x0008F958, "Skyrim.esm") as Keyword)
		KWD_ArmorShield = (Game.GetFormFromFile(0x000965B2, "Skyrim.esm") as Keyword)
		
		KWDList = new Keyword[6]
		KWDList[0] = KWD_ArmorHelmet
		KWDList[1] = KWD_ArmorGauntlet
		KWDList[2] = KWD_ArmorBoots
		KWDList[3] = KWD_ClothingFeet
		KWDList[4] = KWD_ClothingHands
		KWDList[5] = KWD_ClothingHead
		
		storqst.RaperBags = new ObjectReference[24]	
		
		endif 

		KWDList_Temp = new Keyword[2] ;GETS FILLED IN THE FUNCTION! 
		KWDList_Temp[0] = none
		KWDList_Temp[1] = none
		
		TempFormList = new Form[50]
		ResetList()
		
		NymTrace("StripAggressorStuff ["+number+"] and PLACE Bag")
		;place bag

		storqst.RaperBags[number] = akActor.PlaceAtMe(storqst.RaperBagItem)
		if storqst.RaperBags[number]
			storqst.RaperBags[number].MoveTo(akActor, 0.0, 0.0, akActor.GetHeight() - 125.0, true)
			storqst.RaperBags[number].SetAngle(0.0, 0.0, 0.0)
			;transfer ALL items to bag 
			akActor.RemoveAllItems(storqst.RaperBags[number], true, false)

			;transfer valid Items BACK to the Aggressor (Head, Feet, Hands)
			Form[] ValidItemList ; = new Form[20]
			ValidItemList = SPE_ObjectRef.GetItemsByKeyword(storqst.RaperBags[number], KWDList, false) 
			SPE_ObjectRef.RemoveItems(storqst.RaperBags[number], ValidItemList, akActor) 

			FindAndEquipInventoryItems(akActor, 1)
			
			
			;/
			;equip valid items (HEAD, LEGS; HANDS ... with random!)
	
			bool ArmorFound = false
			
			;---- HELMET ----;
			Keyword[] KWDList2 = new Keyword[1]
			KWDList2[0] = KWD_ArmorHelmet
			KWDList2[1] = KWD_ClothingHead
				
			;KWDList_Temp[0] = KWD_ArmorHelmet
			Form[] ValidItemList2 = new Form[1]
			ValidItemList2 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList2, false) 
			
			int in2 = ValidItemList2.Length
			NymTrace("ValidItemList2 Length = "+in2)

				
			if ValidItemList2[0] ;&& D100(50)
			NymTrace("ValidItemList2[0] NAME: "+ValidItemList2[0] .GetName())
			ArmorFound = true
			akActor.EquipItemEx(ValidItemList2[0], 0, false, true)
			endif 

			Keyword[] KWDList22 = new Keyword[1]
			KWDList22[0] = KWD_ArmorHelmet
		;	KWDList2[1] = KWD_ClothingHead
				
			;KWDList_Temp[0] = KWD_ArmorHelmet
			Form[] ValidItemList22 = new Form[1]
			ValidItemList22 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList22, true) 
			
			int in22 = ValidItemList22.Length
			NymTrace("ValidItemList22 Length = "+in2)
			if ValidItemList22[0] ;&& D100(50)
			NymTrace("ValidItemList22[0] NAME: "+ValidItemList22[0] .GetName())
			endif 
			;---- BOOTS ----;
			Keyword[] KWDList3 = new Keyword[2]
			KWDList3[0] = KWD_ArmorBoots
			KWDList3[1] = KWD_ClothingFeet
			
			Form[] ValidItemList3 ;= new Form[20]
			ValidItemList3 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList3, false) 
		
			if ValidItemList3[0] ;&& D100(50)
			ArmorFound = true
			akActor.EquipItemEx(ValidItemList3[0], 0, false, true)
			NymTrace("ValidItemList3[0] NAME: "+ValidItemList3[0] .GetName())
			;akActor.EquipItem(TempFormList[0], false, true)
			endif
			
			;---- BOOTS ----;
			Keyword[] KWDList4 = new Keyword[2]
			KWDList4[0] = KWD_ArmorGauntlet
			KWDList4[1] = KWD_ClothingHands
			
			Form[] ValidItemList4 ;= new Form[20]
			ValidItemList4 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList4, false)
			if ValidItemList4[0]; && D100(50)
			NymTrace("ValidItemList4[0] NAME: "+ValidItemList4[0] .GetName())
			ArmorFound = true
			akActor.EquipItemEx(ValidItemList4[0], 0, false, true)
			;akActor.EquipItem(TempFormList[0], false, true)
			endif

			;/
			;REWRITE CODE  BEGIN
			KWDList_Temp[0] = KWD_ArmorHelmet
			TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
			if TempFormList[0] && D100(50)
			ArmorFound = true
			akActor.EquipItemEx(TempFormList[0], 0, false, true)
			;akActor.EquipItem(TempFormList[0], false, true)
			endif 
			ResetList()
			
			KWDList_Temp[0] = KWD_ArmorBoots
			TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
			if TempFormList[0] && D100(50)
			ArmorFound = true
			akActor.EquipItemEx(TempFormList[0], 0, false, true)
			;akActor.EquipItem(TempFormList[0], false, true)
			endif
			ResetList()
			
			KWDList_Temp[0] = KWD_ArmorGauntlet
			TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
			if TempFormList[0] && D100(50)
			ArmorFound = true
			akActor.EquipItemEx(TempFormList[0], 0, false, true)
			;akActor.EquipItem(TempFormList[0], false, true)
			endif
			ResetList()
			;REWRITE CODE END 
			/;	
			
			
			;Currently not required (we check both keywords further above
			
			;/
			if !ArmorFound
					
				
			;2nd -> try Clothing 

				KWDList_Temp[0] = KWD_ClothingHead
				TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
				if TempFormList[0] && D100(50)
				akActor.EquipItemEx(TempFormList[0], 0, false, true)
				;akActor.EquipItem(TempFormList[0], false, true)
				endif 
				ResetList()
				
				KWDList_Temp[0] = KWD_ClothingFeet
				TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
				if TempFormList[0] && D100(50)
				akActor.EquipItemEx(TempFormList[0], 0, false, true)
				;akActor.EquipItem(TempFormList[0], false, true)
				endif
				ResetList()
				
				KWDList_Temp[0] = KWD_ClothingHands
				TempFormList = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList_Temp, false) 
				if TempFormList[0] && D100(50)
				akActor.EquipItemEx(TempFormList[0], 0, false, true)
				;akActor.EquipItem(TempFormList[0], false, true)
				endif
				ResetList()
					
			;akActor.EquipItemEx(ValidClothingBody[0], 0, false, t)
			endif 
			/;
	
		else 
		NymTrace("StripAggressorStuff ["+number+"] Bag missing")
		
		endif 
EndFunction		

Function ReturnAggressorStuff(actor akActor, int number)	
		
	;	bool BodyArmorFound = false
	;	bool HandArmorFound = false
	;	bool HeadArmorFound = false
	;	bool LegArmorFound = false
		
		if storqst.RaperBags[number]
		NymTrace("ReturnAggressorStuff ["+number+"] and REMOVE Bag")
		;return stuff
		storqst.RaperBags[number].RemoveAllItems(akActor, true, false)
		
		
		FindAndEquipInventoryItems(akActor, 2)
	
		;/

			;---- WEAPON ----;
			Keyword[] KWDList5 = new Keyword[1]
			KWDList5[0] = KWD_VendorItemWeapon
		;	KWDList4[1] = KWD_ClothingHands
			
			Form[] ValidItemList5 ;= new Form[20]
			ValidItemList5 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList5, false)
			if ValidItemList5[0] 
			NymTrace("RETURN ValidItemList5[0] WEAPON NAME: "+ValidItemList5[0] .GetName())
		
			akActor.EquipItemEx(ValidItemList5[0], 0, false, true)
			endif

			;---- SHIELD ----;
			Keyword[] KWDList6 = new Keyword[1]
			KWDList6[0] = KWD_ArmorShield
		;	KWDList6[1] = KWD_ClothingHands
			
			Form[] ValidItemList6 ;= new Form[20]
			ValidItemList6 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList6, false)
			if ValidItemList6[0] 
			NymTrace("RETURN ValidItemList6[0] SHIELD NAME: "+ValidItemList6[0] .GetName())
			akActor.EquipItemEx(ValidItemList6[0], 0, false, true)
			endif

			;equip armor or clothing 
			;1st -> try Armor 
			;Form[] ValidArmorBody = new Form[1]
			
			;---- ARMOR BODY ----;
			Keyword[] KWDList7 = new Keyword[1]
			KWDList7[0] = KWD_ArmorCuirass
		;	KWDList7[1] = KWD_ClothingHands
			
			Form[] ValidItemList7 ;= new Form[20]
			ValidItemList7 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList7, false)
			if ValidItemList7[0] 
			BodyArmorFound = true
			NymTrace("RETURN ValidItemList7[0] ARMOR BODY NAME: "+ValidItemList7[0] .GetName())
	
			akActor.EquipItemEx(ValidItemList7[0], 0, false, true)
			endif
			
			;---- ARMOR HEAD ----;
			Keyword[] KWDList8 = new Keyword[1]
			KWDList8[0] = KWD_ArmorHelmet
			
			Form[] ValidItemList8 ;= new Form[20]
			ValidItemList8 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList8, false)
			if ValidItemList8[0] 
			NymTrace("RETURN ValidItemList8[0] ARMOR HEAD NAME: "+ValidItemList8[0] .GetName())
			HeadArmorFound = true
			akActor.EquipItemEx(ValidItemList8[0], 0, false, true)
			endif			
		
			;---- ARMOR BOOTS ----;
			Keyword[] KWDList9 = new Keyword[1]
			KWDList9[0] = KWD_ArmorBoots
		;	KWDList7[1] = KWD_ClothingHands
			
			Form[] ValidItemList9 ;= new Form[20]
			ValidItemList9 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList9, false)
			if ValidItemList9[0] 
			NymTrace("RETURN ValidItemList9[0] ARMOR BOOTS NAME: "+ValidItemList9[0] .GetName())
			LegArmorFound = true
			akActor.EquipItemEx(ValidItemList9[0], 0, false, true)
			endif	
				
			;---- ARMOR HANDS ----;
			Keyword[] KWDList10 = new Keyword[1]
			KWDList10[0] = KWD_ArmorGauntlet
		;	KWDList7[1] = KWD_ClothingHands
			
			Form[] ValidItemList10 ;= new Form[20]
			ValidItemList10 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList10, false)
			if ValidItemList10[0] 
			NymTrace("RETURN ValidItemList10[0] ARMOR HANDS NAME: "+ValidItemList10[0] .GetName())
			HandArmorFound = true
			akActor.EquipItemEx(ValidItemList10[0], 0, false, true)
			endif	
			
			if !BodyArmorFound
			
				;---- CLOTHING BODY ----;
				Keyword[] KWDList11 = new Keyword[1]
				KWDList11[0] = KWD_ClothingBody
			;	KWDList7[1] = KWD_ClothingHands
				
				Form[] ValidItemList11 ;= new Form[20]
				ValidItemList11 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList11, false)
				if ValidItemList11[0] 
				NymTrace("RETURN ValidItemList11[0] CLOTHING BODY NAME: "+ValidItemList11[0] .GetName())
				
				akActor.EquipItemEx(ValidItemList11[0], 0, false, true)
				endif			
			
			endif 
			
			if !HeadArmorFound
			
				;---- CLOTHING HEAD ----;
				Keyword[] KWDList12 = new Keyword[1]
				KWDList12[0] = KWD_ClothingHead
			;	KWDList7[1] = KWD_ClothingHands
				
				Form[] ValidItemList12 ;= new Form[20]
				ValidItemList12 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList12, false)
				if ValidItemList12[0] 
				NymTrace("RETURN ValidItemList12[0] CLOTHING HEAD NAME: "+ValidItemList12[0] .GetName())
				
				akActor.EquipItemEx(ValidItemList12[0], 0, false, true)
				endif		
			endif 
			
			if !LegArmorFound
			
			;---- CLOTHING LEGS ----;
			
				Keyword[] KWDList13 = new Keyword[1]
				KWDList13[0] = KWD_ClothingFeet
			;	KWDList7[1] = KWD_ClothingHands
				
				Form[] ValidItemList13 ;= new Form[20]
				ValidItemList13 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList13, false)
				if ValidItemList13[0] 
				NymTrace("RETURN ValidItemList13[0] CLOTHING LEGS NAME: "+ValidItemList13[0] .GetName())
			
				akActor.EquipItemEx(ValidItemList13[0], 0, false, true)
				endif		
			endif 	
			
				
			if !HandArmorFound
			
			;---- CLOTHING LEGS ----;
			
				Keyword[] KWDList14 = new Keyword[1]
				KWDList14[0] = KWD_ClothingHands
			;	KWDList7[1] = KWD_ClothingHands
				
				Form[] ValidItemList14 ;= new Form[20]
				ValidItemList14 = SPE_ObjectRef.GetItemsByKeyword(akActor, KWDList14, false)
				if ValidItemList14[0] 
				NymTrace("RETURN ValidItemList14[0] CLOTHING HANDS NAME: "+ValidItemList14[0] .GetName())
			
				akActor.EquipItemEx(ValidItemList14[0], 0, false, true)
				endif		
			endif 
			
			/;
			
		;delete bag
		storqst.RaperBags[number].DisableNoWait()
		storqst.RaperBags[number].Delete()
		storqst.RaperBags[number] = none 
		else 
		NymTrace("ReturnAggressorStuff #ERROR storqst.RaperBags["+number+"] missing")
		endif 
		
EndFunction	
		
Function TestFunction()		;##dir	;##test
;empty

	if Nym() && !cfgqst.IsDefeatRunning() && !cfgqst.IsFucking(cfgqst.PlayerRef) && !cfgqst.AlreadyImmobilized

		NymTrace("Warmth: "+cfgqst.PlayerRef.GetActorValue("SurvivalWarmth"))

		;SPELL_Escape_Loosen
		;Spell RestoreHealt = Game.GetFormFromFile(0x0002F3B8, "Skyrim.Esm") as Spell
		;Spell GrandHealing = Game.GetFormFromFile(0x000B62EE, "Skyrim.Esm" as Spell)   
		;RestoreHealt.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)

		;Form TempPotion = Game.GetFormFromFile(0x0003EADF, "Skyrim.Esm")  ;plentiful --- Minor: 0003EADD
		;cfgqst.PlayerRef.AddItem(TempPotion, 1, true)
		;cfgqst.PlayerRef.EquipItem(TempPotion, false, true)

;		storqst.SPELL_Exhaustion_Increase.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)

		if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
		NymTrace("#DD Status: Heavy Bondage")
		else 
		NymTrace("#DD Status: Heavy Bondage - FALSE")
		endif 
		
		if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast Front")
		NymTrace("#DD Status: Yoke Breast Front")
		else 
		NymTrace("#DD Status: Yoke Breast Front - FALSE")
		endif 	
		
		if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Yoke BB (Breast  Yoke)")
		NymTrace("#DD Status: Yoke BB (Breast  Yoke)")
		else 
		NymTrace("#DD Status: Yoke BB (Breast  Yoke) - FALSE")
		endif 
			
		if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "BlockingSex")
		NymTrace("#DD Status: BlockingSex")
		else 
		NymTrace("#DD Status: BlockingSex - FALSE")
		endif 
		
		Form a
		a = cfgqst.PlayerRef.GetWornForm(0x00010000)	;46 - Unnamed 		(DD Armbinder/Yoke, Cloaks)
		if a && a.HasKeyword(cfgqst.SexLabNoStrip)
		NymTrace("#DD Status: SexLabNoStrip")
		else 
		NymTrace("#DD Status: SexLabNoStrip - FALSE")
		endif 
;	Message.ResetHelpMessage("Jump")
;	Message.ResetHelpMessage("Test")
;	storqst.MSG_CurfewBegins.ShowAsHelpMessage("Test", 4, 0, 1)
	
	;Message.ShowAsHelpMessage("Jump", 5, 30, 3)
	;slaveqst.SlaveIsOccupied = 0
	;cfgqst.PublicExposure = 0
	;TestAnimationEvents()
	
	;	if cfgqst.PlayerRef.IsInFaction(storqst.BowingFaction)
	;	cfgqst.PlayerRef.RemoveFromFaction(storqst.BowingFaction)
	;	endif 
	;	if cfgqst.PlayerRef.IsInFaction(cfgqst.CrawlFaction)
	;	cfgqst.PlayerRef.RemoveFromFaction(cfgqst.CrawlFaction)
	;	endif
	;TestAnimationEvents()
	endif 

EndFunction

		Spell Fuz1
		Spell Fuz2
		Spell Fuz3

Function CastFuz(int iMode)


	if Nym()
		NymTrace("CastFuz("+iMode+")")	
		
		float CurrentMagicka = cfgqst.PlayerRef.GetAV("Magicka")
		float MagickaCost = 35
		if !Fuz1
		Fuz1 = (Game.GetFormFromFile(0x00013E09, "Skyrim.esm") as Spell)
		Fuz2 = (Game.GetFormFromFile(0x00013F39, "Skyrim.esm") as Spell)
		Fuz3 = (Game.GetFormFromFile(0x00013F3A, "Skyrim.esm") as Spell)			;Fuz1 0x00013E09 ;Fuz2 0x00013F39
		endif 
		
		if iMode == 0
		iMode = Utility.RandomInt(1,3)
		endif 
		
		iMode = 2
		;mode 1 , heavy armor 
		;mode 2 , lieght armor /clothing
		;mode 3, naked
		
		if CurrentMagicka >= MagickaCost
		cfgqst.PlayerRef.DamageAV("Magicka", MagickaCost)
			if iMode == 1
			Fuz1.Cast(cfgqst.PlayerRef, none)
			elseif iMode == 2
			Fuz2.Cast(cfgqst.PlayerRef, none)
			elseif iMode == 3
			Fuz3.Cast(cfgqst.PlayerRef, none)
			endif 
		endif 
	endif 
		
EndFunction 


Function WhippingTest()


;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			;WHIPPING TEST WOW 
			if storqst.WhippingDuration > 0
			storqst.WhippingDuration = 0
			cfgqst.Immobilize(false)
			storqst.PlayerPosingVehicle(false)
			else 
				;folqst.NakedFollower[0].AddToFaction(calmqst.WhippingFaction)
				
				String TempRaceKey = "NoRaceKey"
				
				Actor ShortWhipper = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 1000, true)
				
				cfgqst.Immobilize(True)
				storqst.PlayerPosingVehicle(true)
				
				
				;--->REPLACE THIS WITH AREA SCAN FOR WHIPPER
				;/
				TempRaceKey = cfgqst.GetRaceKey(ShortWhipper)
				NymTrace("TestRacekey: "+TempRaceKey)
				
				Bool WhipperFound = false
				if ShortWhipper && !cfgqst.GetRaceKey(ShortWhipper) && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
				ShortWhipper.AddToFaction(calmqst.WhippingFaction)
				WhipperFound = true
				else
				ShortWhipper = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 2000, true)
					if ShortWhipper && !cfgqst.GetRaceKey(ShortWhipper) && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
					ShortWhipper.AddToFaction(calmqst.WhippingFaction)
					WhipperFound = true
					else 
						ShortWhipper  = PO3_SKSEFunctions.GetRandomActorFromRef(cfgqst.PlayerRef, 3000, true)
						if ShortWhipper && !cfgqst.GetRaceKey(ShortWhipper) && SexLab.GetGender(ShortWhipper) < 2 && !folqst.IsPresentFollower(ShortWhipper)
						ShortWhipper.AddToFaction(calmqst.WhippingFaction)
						WhipperFound = true
						endif 
					endif 	
				endif 	
				
				/;

			;	if WhipperFound
				NymTrace("##directWhipping")
				storqst.StartWhipping_00(600.0)
				;whipq00.StartShortWhipping()
			;	endif
				
				
				While storqst.WhippingDuration > 0
				Utility.Wait(2.0)
				EndWhile 
				
			endif 
			
			;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

EndFunction 

Function DeleteAllItems(Form ItemToCheck)


		Int iFormIndex = cfgqst.PlayerRef.GetNumItems()	
		Int iFormCount
		;Form ItemToCheck
		String ItemName
						

				While iFormIndex > 0
					iFormIndex -= 1
					ItemToCheck = cfgqst.PlayerRef.GetNthForm(iFormIndex)
					
					if ItemToCheck
					ItemName = ItemToCheck.GetName()
					
						if !ItemName
						ItemName = "NoName"
						endif 
					
						;if !ItemName
						;ItemName = RobbedItem.GetBaseObject().GetName()
						;endif 
					else
					ItemName = "NoItem > NoName"
					endif					
					
					if ItemToCheck 
					
					
						;if CheckItem(ItemToCheck) WHAT DOES THIS CHECK and WHY? 
					iFormCount = cfgqst.PlayerRef.GetItemCount(ItemToCheck)
					
					DebugTrace("CheckItemCount ItemName: "+ItemName+" ItemCount: "+iFormCount)
					cfgqst.PlayerRef.RemoveItem(ItemToCheck, iFormCount, True, none)
					;	endif 
					endif 		
		
				endwhile 


EndFunction 


;/
Event OnUpdate()			
Debug.Trace("NAKED DEFEAT defeatquest: OnPpdate(ExposureMonitor)")
	
	
	if ModEnabled && RunExposureMonitor
	
		;PUBLIC PUNISHMENT LOOP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
			if cfgqst.Indecency && CheckLocation()

				;if !Busy()	;we do not check for BUSY here but in PlayerValidForRape
				if !cfgqst.IsSuspended() ;IsDefeatRunning() || dhlpSuspendStatus || IsArrestedPOP() || PWSuspendStatus
				
					;DIALOGUE CHECK 
					if UI.IsMenuOpen("Dialogue Menu")
					NymMessage("EXPOSURE MONITOR We are In Dialogue Menu")
					EndIf
					StartProcessPublicExposure() 			
					;PUBLIC PUNISHMENT CHECK
					if PlayerValidForRape() 

						;PUBLIC PUNISH START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;baustelle
						if cfgqst.IsGuardsPresent()
						cfgqst.PlayProximitySound()
						else 
						;we need a proximity sound for civilians!
						endif							
						IndecencyMessage()	
						;>>>>>>>>>>>>>>>>>> Surrender Pose >>>>>>>>>>>>>>>>>>
					;	Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 1, 1, 1)
					;	Game.SetPlayerAIDriven(true)
						cfgqst.Immobilize(true)
						
						Utility.Wait(1.0)
						SendModEvent("Moan")	
						
						if cfgqst.IsGuardsPresent()
						cfgqst.DisableGuardsPresent()
						int i = Utility.RandomInt(1,3)
							if i == 1
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_01)	
							elseif i == 2
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_02)
							elseif i == 3
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_03)
							endif			
							
						else
							int i = Utility.RandomInt(1,3)
							if i == 1
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[0])	
							elseif i == 2
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[1])
							elseif i == 3
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[2])
							endif	
						endif

						;----------------------------------------------------	
								
						;>>>>>>>>>>>>>>>>>> Follower Poses >>>>>>>>>>>>>>>>>>
						if folqst.IsFollowerPresent()
							Debug.trace("NAKED DEFEAT playeraliasquest: StartFollowerIdleQuest_01()")
							folidle01.StartFollowerIdleQuest_01("none")		
							;IndecentWaiting(1.0)
							if folqst.IsWithUs_Follower(0)
							folidle01.StartDoingNothing_01(true)
							endif
							if folqst.IsWithUs_Follower(1)
							folidle01.StartDoingNothing_02(true)
							endif
							if folqst.IsWithUs_Follower(2)
							folidle01.StartDoingNothing_03(true)
							endif
							if folqst.IsWithUs_Follower(3)
							folidle01.StartDoingNothing_04(true)
							endif
						endif
						;----------------------------------------------------
			
						cfgqst.PublicExposure = 0
						cfgqst.CivilRapeRunning = true
						;cfgqst.DefeatTypeHumans = true
						cfgqst.DefeatTypeGeneral = "AreHumans"
						
						if cfgqst.HealthBoost
						cfgqst.PlayerRef.ModActorValue("health", 100000.0)
						endif
						cfgqst.SendModEvents(true)
						
						CalmQuest.Start()		;via PublicPunishement
						
					;-------------------------------------------

				endif 
				
			endif	
		endif 
	endif		

RegisterForSingleUpdate(cfgqst.LoopTime) ;change later maybe... fixed value	
EndEvent
/;


;/
Function PlayerMonitor()			;#scan			MOVE MONITOR to DEFEATQUEST??? 

Debug.trace("NAKED DEFEAT playeraliasquest: PlayerMonitor() 27-12-2023")
Debug.notification("NAKED DEFEAT: Player Monitor started")

if cfgqst.ShowDebugMessages
Debug.notification("NAKED DEFEAT: Player Monitor started")
endif

if cfgqst.PlayerMonitorOn
Debug.trace("NAKED DEFEAT: #ERROR (non critical) - Player Monitor started twice")
;do Nothing/skip
else

	;>>>>>>>>>>>>>> MAIN LOOP STARTS <<<<<<<<<<<<<<<<<<
	while cfgqst.ModEnabled && DefeatQuest.IsRunning()

	cfgqst.PlayerMonitorOn = true
	
		;>>>>> DURING RAPE: Maintenance LOOP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;applies expressions
		;plays sound
		if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning 

		cfgqst.SetExpression(0) ;RESET

			while cfgqst.ModEnabled && DefeatQuest.IsRunning() && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning) ;|| (cfgqst.NymBETA && cfgqst.POPSuspendStatus)
						
				;WAITING Maintenance (outside SexScene)
				if !cfgqst.SexScene; (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning) && 	
					
					if CalmQuest.IsRunning()
					SendModEvent("RestorePose")
					endif
					
				cfgqst.SetExpression(Utility.RandomInt(1,6))	;DEFEAT EXPRESSIONS
					
					;looping with fuckbelt sounds & gag sounds
					if cfgqst.BoolCaptiveFuckBelt || cfgqst.Gagged || cfgqst.SexSceneBukkake
						;only plays with fuckingbelt
						if cfgqst.BoolCaptiveFuckBelt
						cfgqst.PlaySoundFuckBelt()
						endif
						SendModEvent("Moan")
						Utility.Wait(3.0)
						if cfgqst.BoolCaptiveFuckBelt
						cfgqst.PlaySoundFuckBelt()
						endif	
						;only 75% chance of second moan to increase variety
						if D100(75)
						SendModEvent("Moan")
						endif
						Utility.Wait(3.0)
					
					;looping fallback
					else	
					Utility.Wait(5.0)
					endif
				endif
						
				;>>>>>> WAIT <<<<<<<<< HAS SCENARIO SEX LOOP 		
				while cfgqst.ModEnabled && cfgqst.SexScene		
				Utility.Wait(3.0)
				endwhile

			endwhile	
			
			cfgqst.SetExpression(0)
		
		;>>>>> NOT IN SCENARIO LOOP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;this Loops starts when we are not In Naked Defeat Scenario
		else
			
			;NAKED DROWNING LOOP >>>>>>>>>>>>>>>	;#drowning >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			;#GUIDE: we check first if Player is Swimming
			if cfgqst.NakedDrowning && cfgqst.PlayerRef.IsSwimming()
				
				float Health
				;Health = cfgqst.PlayerRef.GetAV("Health")
				Health = cfgqst.PlayerRef.GetBaseActorValue("Health")
				float Damage
				Damage = Health*0.2

				while cfgqst.ModEnabled && cfgqst.PlayerRef.IsSwimming()	
					if IsArmorTooHeavy()
						Debug.Notification("<font color='#ff0000'>You cannot swim in your gear and strip it fast!</font>")
						Debug.trace("NAKED DEFEAT calmquest: (#msg) You cannot swim in your gear and strip it fast!")
						
						if cfgqst.NymBeta	
						cfgqst.StripWeapons()
						cfgqst.Strip(30, cfgqst.PlayerRef)
						cfgqst.Strip(31, cfgqst.PlayerRef)
						cfgqst.Strip(32, cfgqst.PlayerRef)
						cfgqst.Strip(33, cfgqst.PlayerRef)
						cfgqst.Strip(37, cfgqst.PlayerRef)
						cfgqst.Strip(39, cfgqst.PlayerRef)
						else	;original (damage when swimming)				
						cfgqst.PlayerRef.DamageAV("Health", Damage)
						int i = Utility.RandomInt(1,3)
							if i == 1
							Debug.Notification("<font color='#ff0000'>You cannot swim in your heavy armor!</font>")
							Debug.trace("NAKED DEFEAT calmquest: (#msg) You cannot swim in your heavy armor!")
							elseif i == 2
							Debug.Notification("<font color='#ff0000'>Get out of the water fast!</font>")
							Debug.trace("NAKED DEFEAT calmquest: (#msg) Get out of the water fast!")		
							elseif i == 3
							Debug.Notification("<font color='#ff0000'>You will drown, get out!</font>")
							Debug.trace("NAKED DEFEAT calmquest: (#msg) You will drown, get out!")
							endif
						endif
					endif
					Utility.Wait(1.5)
				endwhile
			;----------------------------------------------------------------------------------------------------------------------------		
			
			;PUBLIC PUNISHMENT LOOP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			;Public Punishment is ENABLED and WE are Allowed to be Downed and Fucked
			
			elseif cfgqst.Indecency && DefeatQuest.IsRunning() && CheckLocation()
	
				Utility.Wait(cfgqst.LoopTime)	
	
				;if !Busy()	;we do not check for BUSY here but in PlayerValidForRape
				if !cfgqst.IsSuspended()
				
					StartProcessPublicExposure() 
				
					;PUBLIC PUNISHMENT CHECK
					if PlayerValidForRape() 
						While cfgqst.ModEnabled && !Game.IsLookingControlsEnabled()	;loop while in dialog. test maybe?
						Utility.Wait(2.0)
						;Debug.trace("NAKED DEFEAT: playeralias SCAN waiting for dialogueend(controlsdisabled)")
							if cfgqst.ShowDebugMessages
							Debug.notification("NAKED DEFEAT: playeralias SCAN waiting for dialogueend(controlsdisabled)")
							endif
						EndWhile
							
						;PUBLIC PUNISH START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;baustelle
						if cfgqst.IsGuardsPresent()
						cfgqst.PlayProximitySound()
						else 
						;we need a proximity sound for civilians!
						endif			
						
						IndecencyMessage()	
					
						;>>>>>>>>>>>>>>>>>> Surrender Pose >>>>>>>>>>>>>>>>>>
					;	Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 1, 1, 1)
					;	Game.SetPlayerAIDriven(true)
						cfgqst.Immobilize(true)
						
						Utility.Wait(1.0)
						SendModEvent("Moan")	
						
						if cfgqst.IsGuardsPresent()
						cfgqst.DisableGuardsPresent()
						int i = Utility.RandomInt(1,3)
							if i == 1
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_01)	
							elseif i == 2
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_02)
							elseif i == 3
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_03)
							endif			
							
						else
							int i = Utility.RandomInt(1,3)
							if i == 1
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[0])	
							elseif i == 2
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[1])
							elseif i == 3
							cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesAnimalDefeat[2])
							endif	
						endif

						;----------------------------------------------------	
							
						;>>>>>>>>>>>>>>>>>> Follower Poses >>>>>>>>>>>>>>>>>>
						if cfgqst.FollowerCount > 0
							Debug.trace("NAKED DEFEAT playeraliasquest: StartFollowerIdleQuest_01()")
							folidle01.StartFollowerIdleQuest_01("none")		
							;IndecentWaiting(1.0)
							if cfgqst.FollowerCount > 0
							folidle01.StartDoingNothing_01(true)
							endif
							if cfgqst.FollowerCount > 1
							folidle01.StartDoingNothing_02(true)
							endif
							if cfgqst.FollowerCount > 2
							folidle01.StartDoingNothing_03(true)
							endif
							if cfgqst.FollowerCount > 3
							folidle01.StartDoingNothing_04(true)
							endif
						endif
						;----------------------------------------------------
			
					cfgqst.PublicExposure = 0
					cfgqst.CivilRapeRunning = true
					;cfgqst.DefeatTypeHumans = true
					cfgqst.DefeatTypeGeneral = "AreHumans"
					
					if cfgqst.HealthBoost
					cfgqst.PlayerRef.ModActorValue("health", 100000.0)
					endif
					cfgqst.SendModEvents(true)
					
					CalmQuest.Start()		;via PublicPunishement
					
					;---------------------------------------------------------------------------------------------
					endif	;not valid for rape
						
				;PLAYER IS BUSY (EXTRA LOOP TIME) -----------------------------------------------		
				else 
				Debug.trace("NAKED DEFEAT playeraliasquest: PlayerMonitor(IndecentWaiting 1)")

					int WaitTime = 10
					while WaitTime > 0 && DefeatQuest.IsRunning() && cfgqst.ModEnabled && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning ; && (ftimeCurrent < (ftimeStart + WaitTime))
					Utility.Wait(2.0)
					WaitTime -= 2
					endwhile
				 
				endif

			
			;IDLE LOOP when Location Check fails) -----------------------------------------------------------------------
			;else	;Location false (in Wilderness OR DHLPsuspend, additional loop)
			;Debug.trace("NAKED DEFEAT playeraliasquest: PlayerMonitor(IndecentWaiting 2)")

			;	int WaitTime = 10
			;	while WaitTime > 0 && DefeatQuest.IsRunning() && cfgqst.ModEnabled && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning ; && (ftimeCurrent < (ftimeStart + WaitTime))
			;	Utility.Wait(2.0)
			;	WaitTime -= 2
			;	endwhile		
			;endif
					
			;>>>>>>>>>>> WAIT LOOP <<<<<<<<<<<<<< when, not swimming, no valid location for rape, etc.		
			else 	

			Utility.Wait(3.0)
			cfgqst.WaitLoopPlayerMaintenance()
			endif
			
		endif	
			
	endwhile	
endif
/;

Function Test_Coordinates()

		Float PositionX
		Float PositionY
		Float PositionZ
		Float HeadingZ

		PositionX = cfgqst.PlayerRef.GetPositionX()
		PositionY = cfgqst.PlayerRef.GetPositionY()
		PositionZ = cfgqst.PlayerRef.GetPositionZ()
		HeadingZ = cfgqst.PlayerRef.GetAngleZ()

		NymTrace("PositionX: "+ PositionX)
		NymTrace("PositionY: "+ PositionY)
		NymTrace("PositionZ: "+ PositionZ)
		NymTrace("HeadingZ: "+ HeadingZ)
	
		String MaterialTest
		MaterialTest = PO3_SKSEFunctions.GetLandMaterialType(PositionX, PositionY, PositionZ) 
		;MaterialTest = PO3_SKSEFunctions.GetSurfaceMaterialType(PositionX, PositionY, PositionZ) 
		NymMessage("MaterialTest: "+MaterialTest)

EndFunction 


Function Test_Shaders()

			EffectShader TestSpell

		TestSpell = (Game.GetFormFromFile(0x00075272, "Skyrim.esm") as EffectShader) ;ReanimateFXShader	;BLUE GLOW  - NAJA
		;TestSpell = (Game.GetFormFromFile(0x00075272, "Skyrim.esm") as EffectShader) ;ReanimateFXShader	;BLUE GLOW  - NAJA
		if !TestSpell
		Debug.Messagebox("Spell 1 = NONE")
		else
		TestSpell.Play(cfgqst.PlayerRef, 5.0)	

		endif 
		
		Utility.Wait(7.0)
		

		;TestSpell = (Game.GetFormFromFile(0x000D22FB, "Skyrim.esm") as EffectShader) ;ShockDisintegrate01FXS ;turns invisible ; NO
		TestSpell = (Game.GetFormFromFile(0x0003BF79, "Skyrim.esm") as EffectShader) ;
		if !TestSpell
		Debug.Messagebox("Spell 2 = NONE")
		else
		TestSpell.Play(cfgqst.PlayerRef, 5.0)	

		endif 
		
		
		Utility.Wait(7.0)
		

		TestSpell = (Game.GetFormFromFile(0x0004D6B4, "Skyrim.esm") as EffectShader) 	;;Hole (Dragonoels)		 ;NO 
		;TestSpell = (Game.GetFormFromFile(0x000F4575, "Skyrim.esm") as EffectShader) ;ShadowMere Trrans		;BLACK SMOKE --- maybe usefull
		if !TestSpell
		Debug.Messagebox("Spell 3 = NONE")
		else
		TestSpell.Play(cfgqst.PlayerRef, 5.0)	

		endif 

		Utility.Wait(7.0)

		TestSpell = (Game.GetFormFromFile(0x000280C0, "Skyrim.esm") as EffectShader) ;IN USE F
		;TestSpell = (Game.GetFormFromFile(0x010CDC95, "Skyrim.esm") as EffectShader) ;Heal Circle NOT WORKING ; NO 
		if !TestSpell
		Debug.Messagebox("Spell 4 = NONE")
		else
			
		TestSpell.Play(cfgqst.PlayerRef, 5.0)	
		
		;AdrenalineRushFXS  0010F4A8
				
		endif 


EndFunction 	
;/
Function FixActorFactions(actor akActor, string sMode)

	;----------- FIX FOLLOWERS FROM SPEC CROWDS ----------------------
			;Faction TempFaction = game.GetFormFromFile(0x040135EE, "MF_SpectatorCrowds.esp") as Faction ;was its 04?
			;folqst.NakedFollower[0].RemoveFromFaction(TempFaction)
		;-----------------------------------------------------------------------------------------------------
			
	
			folqst.NakedFollower[0].EvaluatePackage()
			
			Faction[] FactionListDebug = new Faction[50]
			FactionListDebug = folqst.NakedFollower[0].GetFactions(-10, 10)
			
			folqst.NakedFollower[0].RemoveFromAllFactions()
			Utility.Wait(3.0)
			folqst.NakedFollower[0].EvaluatePackage()
			
			int Lenght = 50
			
			Utility.Wait(3.0)
			while Lenght
			
			Lenght -= 1
			NymTrace("Lenght: "+Lenght)
				;Faction TempFaction = FactionListDebug.GetAt(Lenght)
				if FactionListDebug[Lenght]
				NymTrace("Faction Added:"+Lenght)
				folqst.NakedFollower[0].AddToFaction(FactionListDebug[Lenght])
				endif 
				
			endwhile 
			
			Utility.Wait(3.0)
			
			folqst.NakedFollower[0].EvaluatePackage()
			
		
			


EndFunction 
/;


;/
'Pole Dance

fu -a ZazPoleDance_Enter ZazPoleDance.hkx
+ ZazPoleDance_Loop  ZazPoleDance.hkx
+ -a ZazPoleDance_Exit ZazFurnitureExit.hkx


'Snake Dance

fu -a ZazSnakeDance_Enter SnakeDance.hkx
+ ZazSnakeDance_Loop  SnakeDance.hkx
+ -a ZazSnakeDance_Exit ZazFurnitureExit.hkx


'SexyAJDance

fu -a ZazSexyAJDance_Enter SexyAJDance.hkx
+ ZazSexyAJDance_Loop  SexyAJDance.hkx
+ -a ZazSexyAJDance_Exit ZazFurnitureExit.hkx


'BellyDance

fu -a ZazBellyDance_Enter BellyDance.hkx
+ ZazBellyDance_Loop  BellyDance.hkx
+ -a ZazBellyDance_Exit ZazFurnitureExit.hkx


'ShakeAssDance

fu -a ZazShakeAssDance_Enter ShakeAssDance.hkx
+ ZazShakeAssDance_Loop  ShakeAssDance.hkx
+ -a ZazShakeAssDance_Exit ZazFurnitureExit.hkx


'SexyDance

fu -a ZazSexyDance_Enter SexyDance.hkx
+ ZazSexyDance_Loop  SexyDance.hkx
+ -a ZazSexyDance_Exit ZazFurnitureExit.hkx
/;

;/
IdlePickaxeEnter
IdlePickaxeEnterInstant
IdlePickaxeFloorEnter
IdlePickaxeFloorEnterInstant
IdlePickaxe_Table
IdlePickaxeTableEnter
IdlePickaxeTableEnterInstant
IdlePickaxe_Wall
IdlePickup_Ground

;SoundPlay.NPCHumanPickAxe#


IdleDLC2PickaxeEnter
IdleDLC2PickaxeEnterInstant
IdleDLC2PickaxeFloorEnter
IdleDLC2PickaxeFloorEnterInstant
IdleDLC2PickaxeTableEnter
IdleDLC2PickaxeTableEnterInstant

/;

GlobalVariable TimeScale 
float CurrentTimeScale

Function ManageTimeScale()

	Float TimeScale_WANT

	if !TimeScale
	TimeScale = (Game.GetFormFromFile(0x0000003A, "Skyrim.esm") As GlobalVariable)	
	endif

	CurrentTimeScale = TimeScale.GetValue()
	
	NymTrace("CurrentTimeScale: "+CurrentTimeScale)
	
	if storqst.IsLocalSlave()
			
		TimeScale_WANT = 10.0

		if storqst.DarkNight && cfgqst.PlayerRef.GetSitState() > 0 	;sitting 
		TimeScale_WANT = 30.0 ;twice time
		endif 
		
		TimeScale.SetValue(TimeScale_WANT)
		
	else 
	
		if CurrentTimeScale != 20
		TimeScale.SetValue(20.0) ;reset Timescale to 20 
		endif 
		
	endif 

EndFunction 




Function TestAnimationEvents()

			NymBox("Idle A")
			cfgqst.PublicExposure = 0
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeEnterInstant")  ;WORKS
			;Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazPoleDance_Loop") ;NEEDS POLE FURNITURE but nice!
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle B")
			;Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazSnakeDance_Loop")	;OK ooo
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeEnter")	;OK ooo
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle C")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeTableEnterInstant") ;WORKS
			;Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdleChisel") ;NOT working
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle D")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "IdlePickaxeTableEnter") ;OK ooo
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)		
			cfgqst.PublicExposure = 0
			
			NymBox("Idle E")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazShakeAssDance_Loop")	 ;NICE - USE  oooo
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle F")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazSexyDance_Loop") ;ooo
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle G")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazKickDance_Loop") ;not working ,test AGAIN
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle H")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazGrooveGirl_Loop") ;oo
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle I")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazFunky_Loop") ;NO
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle J")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazDisco_VB_Loop") ;not working ,test AGAIN
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0
			
			NymBox("Idle K")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazBreakingPop_Loop") ;not working ,test AGAIN
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0			
			
			NymBox("Idle L")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazLMFAO_Shuffle_Loop") ;not working 
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0	
			
			NymBox("Idle M")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazSara_MelbourneShuffle_Loop") ;not working 
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0				

			NymBox("Idle N")
			Debug.SendAnimationEvent(cfgqst.PlayerRef, "ZazSeph05Disco_Loop") ;ooo 
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			cfgqst.PublicExposure = 0	
		
EndFunction





Function TestIdles()
			
			Idle TempIdle 
			
			ScreenMessage("Idle A")
			TempIdle = (Game.GetFormFromFile(0x000F7C8A, "Skyrim.esm") as Idle) ;IdleCiceroDance1
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 			

			ScreenMessage("Idle B")
			TempIdle = (Game.GetFormFromFile(0x000F7C8B, "Skyrim.esm") as Idle)	; ;IdleCiceroDance2
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 
		
			ScreenMessage("Idle C")
			TempIdle = (Game.GetFormFromFile(0x00103653, "Skyrim.esm") as Idle)	;;IdleCiceroDance3
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 
			
			ScreenMessage("Idle D")
			TempIdle = (Game.GetFormFromFile(0x0B068645, "ZazAnimationPack.esm") as Idle) ;ZazBellyDance
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 			

			ScreenMessage("Idle E")
			TempIdle = (Game.GetFormFromFile(0x0B068661, "ZazAnimationPack.esm") as Idle)	;ZazKickDance
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 
		
			ScreenMessage("Idle F")
			TempIdle = (Game.GetFormFromFile(0x0B06864D, "ZazAnimationPack.esm") as Idle)	;ZazSexyDance 
			if TempIdle
			cfgqst.PlayerRef.PlayIdle(TempIdle)
			Utility.Wait(10.0)
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			Utility.Wait(1.0)
			endif 
			
			
			;000F11ED	IdleBlessingKneelEnterInstant

							;	
							;	IdleCiceroDance2
							;	IdleCiceroDance3
							; 	ZazBellyDance
							;	
							;0B05D254	ZazPoleDance
							;0B068641	ZazSexyAJDance
							;	
							;0B068649	ZazShakeAssDance
							;0B059AA5	ZazSnakeDance
		
		;0006F300	IdlePray
		;000F11EC IdleBlessing Kneel Dragonborn.esm
		
		;0302B106 IdleChisel Dragonborn		 , not working
		;0302A6CE IdleChiseKneelingl Dragonborn
		;03029D2A IdleChiseStandingl Dragonborn
		
				; 000977EC	IdleWipeBrow	
; 0301DCD6 DualMagicConcentrationSelfDUPLICATE001 Dragonborn
		; 0301DCD7 CastDualMagicWardDUPLICATE001 Dragonborn
		
	;			PO3_SKSEFunctions!
	;string Function GetAnimationEventName(Idle akIdle) global native
	;string Function GetAnimationFileName(Idle akIdle) global native					

;HEARTHFIRE:
 
;CraftingOven	 02002844
;CraftingOvenIstant	 02002845
;hammer 02014354   , not working
;hammer2 02014355

;000F11E4	IdleCrouchedPray ;NOT WORKING 
;000F11EC	IdleBlessingKneel  ;NOT WORKING 
	;BarCounterWipe  000F57C8 ;NOT WORKING 
	;BucketFillRoot 0001E175 ;NOT WORKING 
	;BucketPourRoot	0001E344 
	;xx032721	IdlePraying (IdleDance DragonBorn.esm

	;CastDualMagic  00035B91	;NOT WORKING 
;CastDualMagicConcentrationSelf  00035B9D ;NOT WORKING 

;DialogueAngryExpressive 000E5192 --> EXPLORE THIS MORE , there are a dozens of these 

	;CheckCorpse	000FB90B ;NOT WORKING

	;EnterBEdRollInstant 000E4612
	;FallRoot 000A790E 
					
		;	nade_DDint.EquipDDtoActor(PlayerRef, "DD Steel Yoke")	
		;	if folqst.IsWithUs_Follower(1)
		;	nade_DDint.EquipDDtoActor(folqst.NakedFollower[1], "DD Steel Yoke")				
		;	endif 		
		;	if folqst.IsWithUs_Follower(0)
		;	nade_DDint.EquipDDtoActor(folqst.NakedFollower[0], "DD Steel Yoke")				
		;	endif 		
		

EndFunction 


Function TestSounds()
	
	NymMessage("Wolf Chest")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Wolf Chest", 1.0)	
	Utility.Wait(5.0)
	
	cfgqst.StopSoundOnActor()
	
	NymMessage("Bard Drum 01")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Drum 01", 1.0)	
	Utility.Wait(5.0)
		cfgqst.StopSoundOnActor()	
	NymMessage("Bard Drum 02")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Drum 02", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Drum 03")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Drum 03", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 01")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 01", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 02")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 02", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 03")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 03", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 04")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 04", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 05")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 05", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Flute 06")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Flute 06", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Lute 01")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Lute 01", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Lute 02")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Lute 02", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Lute 03")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Lute 03", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Bard Lute 04")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Bard Lute 04", 1.0)
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Vampire Sunlight")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Vampire Sunlight", 1.0)  	;useable but for what?
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Vampire Transform")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Vampire Transform", 1.0)	
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Chain Physics")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Chain Physics", 1.0)	;BAD 
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Ward Drop")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Ward Drop", 1.0)	;BAD 
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Daedric Spooky Distant")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Daedric Spooky Distant", 1.0)	;BAD 
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
	NymMessage("Placeholder Beep")
	cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Placeholder Beep", 1.0) ;NOTHING 
	Utility.Wait(5.0)
	cfgqst.StopSoundOnActor()
EndFunction 



;LOCAL SLAVERY FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;LOCATION: We get location, save it and compare the current location always with that one ---> only 1 cell slavery right now. only indoors too

;tavern slave: complex

;mining slave: 
;simple: ore in your inventory is removed and increases your Sympathy. 



int Property LocalSlaveryStatus Auto		;0 FREE - 1 Temporarily Restricted Stay - 2 Prostitute - 3 Slave 
int Property Sympathy Auto
int Property Allowance Auto		;Value that regulates what the slave is allowed to do: lower values or even negative OnActivate
;negative Values: permanent fixation or cage - fucking and punishment only way to get back out
;low values: forced to crawl 
;medium values: forced to be naked and slow
;higher values: allowed to wear clothing and behave normally 

;Allowance in General also has impact on the frequency of Sex and Punishment.

;Allowance is increased by Sex, Punishment and by Behaviour and Deeds 
;Allowance is decreased by escape attempts, failed deeds (boredom of masters) and bad behavior (rushing sex, doing stuff not permittet (running, jumping etc.)



;sympathy increases same as Allowance but slower than allowance. but it decreases faster. 
;sympathy increases the chance to be set free or rescued 
;low sympathy is not a problem at first
;negative symapthy will lead to harsh and long punishments and the chance of beeing sold/killed


;MONITOR: 
;we save the current LocationType and scan if that type changes. if it does it will sound an alarm/spawn a guard and teleport the Player back to the punishment location

;SPOTS:
;at the beginning we use PopUps to give tasks.
;1. Task: find a punishment spot and press K 
;2. Task: find a sleeping spot and press K 
;3. find spots and place Cooking Station, Workbench etc, for Slave Labour
;4. place punishment furnitures

;ACTION KEY: 
;the Action key can be used to work and do deeds. 
;Close in Front of NPC: -> offer Sex 
;Else: sweep/clean ? dance? masturbate?
;Close to punishment furniture: ask for a session 	
;/

Idles For "Work"

000F57C8 BarCounterWipe (detect furnitures?)
0001E175 BucketFillRoot
0001E344 BucketPourRoot

0003De52 BumpedFromBack
0003De4F BumpedFromFront
0003De51 BumpedFromLeft
0003De50 BumpedFromRight

000D77F1 DefaultStagger

000640FB DrinkingRoot

000640FFEatingRoot

Fishing?

0007871E ForwardFall

000C431E	HammerwallRoot

0008B5D2 	IdleActivatePickUp
0008B5D3 	IdleActivatePickUpLow

000D8730	IdleAppllaud2
000D8731	IdleAppllaud3
000D8732	IdleAppllaud4
000D8733	IdleAppllaud5

000E9312	IdleApplaudSarcastic

000F11EC	IdleBlessingKneel
000F11EE	IdleBlessingKneelEnter
000F11EF	IdleBlessingKneelExit

0001E1B6	IdleCarryBucketFillEnter
0001E374	IdleCarryBucketPourEnter

0003EA33	IdleCleansWord 
	
000F4331	IdleCO2Ceremony1Welcome
000F4332	IdleCO2Ceremony1Blessing
000F4333	IdleCO2Ceremony1Chest

000F11E4 IdleCrouchedPray
000F11E6 IdleCrouchedPrayEnter
000F11E7 IdleCrouchedPrayExit

00075C3D	IdleExamine

00096F8C	IdleFluteStart

0006FF15	IdleGetAttention

000B5E20	IdleGive

00075CB4	IdleHow

000E8E50	IdleKneeling

00075C5F	IdleLaugh

000F5D98	IdleLookAround

00075C62	IdleLookFar

0010ACb1	IdleNervous

000640FE	IdleLooseSweepingStart

0006F300	IdlePray

000A67E2	IdleScratch ;bathing?
000F5BB8	IdleScratching ;bathing?

000EFC64	IdleSerachBody

000D6F0A	IdleSquat

00105D47	IdleSurrender

000D8736	IdleUncontrollableCough (PostOral?)

000F9928	PlayerStagger

00066376	SpectatorGawk (SPECTATOR)	there is spectatorCheer and spectatorClap too also talking etc.


	if IsLocalSlave
	
		if LocationSlavery == LocationCurrent 
		;---> all good 
			
			if IsBusy ;fucked, punished, restrained, doing a job 
				
				if HasJob
				;check if job is done correctly 
				endif 
			
			elseif Timer == 60 ;every minute we check 
			
				if D1000(Sympathy) 
				;set free or "rescued" --> we start simply with rescued 
				elseif !D100(Allowance)
				
				endif 				
				
			
			
			endif 
		
		
		
		else ;player not in slavery LocationSlavery anymore
		TeleportBackToPunishmentLocationAndPunish()
		
		endif 
		
		
	
/;
	
;LOCAL SLAVERY FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



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
Debug.trace("NAKED DEFEAT defquest: (#msg DEBUG) "+Text1)
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
	Debug.trace("NAKED DEFEAT defquest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT defquest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#trace NYM) "+Text2)
	endif
EndFunction

Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("defquest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT defquest: BOX (#Box NYM) "+Text2)

EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
	
EndFunction

;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
