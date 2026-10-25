Scriptname nade_defeatquest_qf_scr Extends Quest Hidden


ReferenceAlias Property Alias_EssentialPlayer Auto
nade_configquest_scr Property cfgqst Auto


ObjectReference Property XMarkerHeadingAnchor Auto

;Bool RunExposureMonitor = true

nade_calmquest_qf_scr Property calmqst Auto
nade_storage_qf_scr Property storqst Auto
nade_slavery_qf_scr Property slaveqst Auto
;nade_followerquest_qf_scr Property folqst Auto

Sound[] Property NakedVoice_Pain Auto

Faction Property NakedFollowerNamedFaction Auto
Faction Property NakedCagePartnerFaction Auto
Faction Property LocalSlaveFaction Auto

Sound[] Property SoundStripCloth Auto
Sound[] Property SoundStripWhipCloth Auto
;Sound[] Property Breathing Auto	


String Property LastNamedFollower Auto 

int Property SexEffect01 Auto 
;int Property IsLocalSlave Auto
;int Property IsFleeingSlave Auto

;String Property PlayerSoundToPlay Auto 

Perk[] Property LightFootPerks Auto	;[0] LightFoot - [1] Muffled Movement

;String Property CurrentLocationName Auto
;String Property CurrentLocationType Auto

Bool Property DuplicationWasDone Auto ;needed for AllegianceQuest Duplication Functions --> and because cfgqst is overflowing
Bool Property DDWiggleScene Auto

;Bool Property PreventRagdoll Auto
;Bool Property PlayerSoundRunning Auto

;Bool Property DarkNight Auto

int Property MouthOpening Auto
int Property CurrentSlaveHair Auto
int Property SexDuration Auto
int Property TongueTimer Auto
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


ObjectReference Property PlacedTrapWall01 Auto
ObjectReference Property PlacedTrapWall02 Auto

Function DeleteTrapDoor()

	NymTrace("DeleteTrapDoor()")
	if PlacedTrapWall01
	PlacedTrapWall01.DisableNoWait()
	PlacedTrapWall01.Delete()
	PlacedTrapWall01 = NONE
	endif 
	if PlacedTrapWall02
	PlacedTrapWall02.DisableNoWait()
	PlacedTrapWall02.Delete()
	PlacedTrapWall02 = NONE
	endif 

EndFunction 

;/

SexLab MiscUtil's ScanCellObjects? PO3 Papyrus Extender has similar functions as well 
Do doors use a unique form type?
CheddarTrauma — 01:59
okay yeah, either MiscUtil ScanCellObjects or PO3 Papyrus Extender FindAllReferencesOfFormType with formtype 29 for Door
NymraLL — 02:47
aaah, so this is how its supposed to work!  will try that, much appreciated



/;


Function StartTrapDoor()

		NymTrace("StartTrapDoor()")

		if storqst.IsLocationClearable() && !storqst.IsLocationCleared()

		NymTrace("StartTrapDoor(Valid Location)")	

			;ObjectReference PlacedTrapWall01
			;ObjectReference PlacedTrapWall02
			ObjectReference COCMarkerHeadingEntrance
			Form COCMarkerHeading = (Game.GetFormFromFile(0x00000032, "Skyrim.esm") As Form)
			;Form TrapWallTemp
			Float EntranceDistance
			int Countdown = 10
		;	if COCMarkerHeading
		;	NymMessage("COCMarkerHeading Found")
		;	else 
		;	NymMessage("COCMarkerHeading NOT Found")
		;	endif 
		
			COCMarkerHeadingEntrance = Game.FindClosestReferenceOfTypeFromRef(COCMarkerHeading, cfgqst.PlayerRef, 2000.0)
			
			EntranceDistance = COCMarkerHeadingEntrance.GetDistance(cfgqst.PlayerRef)
			NymTrace("StartTrapDoor() EntranceDistance["+EntranceDistance+"]")
		
			while (EntranceDistance < 125) && (Countdown > 0)
			Utility.Wait(2.0)
			EntranceDistance = COCMarkerHeadingEntrance.GetDistance(cfgqst.PlayerRef)	
			NymTrace("StartTrapDoor() Countdown["+Countdown+"] EntranceDistance["+EntranceDistance+"]")
			Countdown -= 1
			endwhile 
			
			if Countdown > 0
				;Float HeadingAngle = COCMarkerHeadingEntrance.GetHeadingAngle()
				if COCMarkerHeadingEntrance
				NymTrace("Entrance Marker Found")
				else 
				NymTrace("Entrance Marker NOT Found")
				endif 
				
				PlacedTrapWall01 = COCMarkerHeadingEntrance.PlaceAtMe(Game.GetFormFromFile(0x02050620, "ZaZAnimationPack.esm")) ;WoodenJailWall01
				PlacedTrapWall01.SetAngle(0.0, 0.0, 0.0)
				PlacedTrapWall01.MoveTo(COCMarkerHeadingEntrance, -75.0 * Math.Sin(COCMarkerHeadingEntrance.GetAngleZ()), -75.0 * Math.Cos(COCMarkerHeadingEntrance.GetAngleZ()), 0.0, abMatchRotation = true)
				
				PlacedTrapWall02 = PlacedTrapWall01.PlaceAtMe(Game.GetFormFromFile(0x02050620, "ZaZAnimationPack.esm")) ;WoodenJailWall01
				PlacedTrapWall02.SetAngle(0.0, 0.0, 0.0)
				;PlacedTrapWall02.MoveTo(COCMarkerHeadingEntrance, -50.0 * Math.Sin(COCMarkerHeadingEntrance.GetAngleZ()), -50.0 * Math.Cos(COCMarkerHeadingEntrance.GetAngleZ()),  0.0, abMatchRotation = true)
				
				PlacedTrapWall02.MoveTo(PlacedTrapWall01, -255.0 * Math.Sin(PlacedTrapWall01.GetAngleZ()+90), -255.0 * Math.Cos(PlacedTrapWall01.GetAngleZ()+90), 0.0, abMatchRotation = true)
			else 
			NymTrace("StartTrapDoor() Countdown not 0 -> ABORT")
			
			endif 
		;	if PlacedTrapWall01
		;	NymTrace("PlacedTrapWall01 TRUE")
		;	endif 
				;	if PlacedTrapWall02
		;	NymTrace("PlacedTrapWall02 TRUE")
		;	endif 
		
		else 
		NymTrace("StartTrapDoor(NO Valid Location)")
		
		endif 


EndFunction 


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
	LocationName = "Wilderness"
	endif 
	
	;NymTrace("GetCurrentLocationName("+LocationName+")")
	
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
RegisterForModEvent("StartSexFuckingSoundLoop", "OnStartSexFuckingSoundLoop")
EndFunction 

Function UnRegisterModEvents()
UnRegisterForModEvent("StartForceMouthOpening")
UnRegisterForModEvent("StartSexFuckingSoundLoop")
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
	endif 
	
	if storqst.ForceOpen == 1 ;sucking
	cfgqst.Gagged = true
	storqst.Sucking = true
	MouthStatePlayer = 30
	endif
		
	NymTrace("GetMouthStatePlayer storqst.Sucking ("+storqst.Sucking+")")
	NymTrace("GetMouthStatePlayer cfgqst.Gagged ("+cfgqst.Gagged+")")
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
			
			NymTrace("#OpenMouth FINAL: "+MouthOpening)
			
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

Function PlaySoundStripCloth()
			SoundStripCloth[0].Play(cfgqst.PlayerRef)
EndFunction

Function PlaySoundStripWhipCloth()
			SoundStripWhipCloth[0].Play(cfgqst.PlayerRef)
EndFunction


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

Function OpenMouthMaintenance()			;#OpenMouthMaintenance()
	NymTrace("OpenMouthMaintenance START (OpenMouth Received: "+MouthOpening+") (CurrentMood: "+storqst.CurrentMood+")")

	Bool Open = false
	int MouthOpeningFinal = MouthOpening

	if Nym() && storqst.ForceOpen > 0
	;Manual Override! 
	Open = true
	MouthOpeningFinal = 100
	
	;	if storqst.ForceOpen == 2 ;Kissing	<<<<---- CREATES LOOP
	;	EquipTonguesPlayer()
	;	endif 
	
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

	if storqst.CurrentMood == 16 && !storqst.Sucking
	MouthOpeningFinal = 75
	endif 
	
	if storqst.Sucking
	MouthOpeningFinal = Utility.RandomInt(95, 100)
	
		if storqst.ForceOpen == 1
		MouthOpeningFinal = 80
		endif 
		
	endif 
	
	if MouthOpeningFinal > storqst.MouthOpenMax
	MouthOpeningFinal = storqst.MouthOpenMax as int
	endif 
	
	if cfgqst.Gagged && !storqst.Sucking ;gagged but not sucking (dont use Open 100)
	MouthOpeningFinal = 65
	endif 
	
	if (TongueEquipped > 0) && (MouthOpeningFinal < 60)
	MouthOpeningFinal = Utility.RandomInt(60, 100)
	endif
	
	if Game.GetCameraState() == 3 ;Free Cam
	MouthOpeningFinal = Utility.RandomInt(60, 100) ;BRUTE FORCE WORKAROUND 
	endif 
	
	if !cfgqst.PlayExpressions ;|| (Nym() && storqst.Sucking)
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

Function TeachWords()
    wordofpower GetWord = (game.GetFormFromFile(81442, "Skyrim.esm") as wordofpower)
    if GetWord
        NymMessage("You learned the FUZ RO DA shout")
        game.TeachWord(GetWord)
        game.UnlockWord(GetWord)
        GetWord = (game.GetFormFromFile(81443, "Skyrim.esm") as wordofpower)
        game.TeachWord(GetWord)
        game.UnlockWord(GetWord)
        GetWord = (game.GetFormFromFile(81444, "Skyrim.esm") as wordofpower)
        game.TeachWord(GetWord)
        game.UnlockWord(GetWord)
    endif
EndFunction

;Function InstantMouthOpening()
;	NymTrace("InstantMouthOpening SKIPPED! -> send to OpenMouthMaintenance")
	
	;SKIP!!!
	
	;OpenMouthMaintenance()
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
	
;EndFunction 



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
int iUpdateTimer10

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
	
	;/
Function PlayNymrasSexSounds()		;#PlayNymrasSexSounds()
NymTrace("PlayNymrasSexSounds() - SexFuckingSound["+storqst.SexFuckingSound+"] SexFuckingPartners["+storqst.SexFuckingPartners+"]")

	if storqst.SexFuckingSound > 0
	
		;2P
		if storqst.SexFuckingPartners == 1
		BridgePlaySexSounds()
		
		;3P
		elseif storqst.SexFuckingPartners == 2
		BridgePlaySexSounds()	
		Utility.Wait(Utility.RandomInt(0,2))
		BridgePlaySexSounds()
		
		;4P
		elseif storqst.SexFuckingPartners == 3
		BridgePlaySexSounds()	
		Utility.Wait(Utility.RandomInt(0,1))
		BridgePlaySexSounds()	
		Utility.Wait(Utility.RandomInt(0,1))
		BridgePlaySexSounds()	

		;5P
		elseif storqst.SexFuckingPartners == 4
		BridgePlaySexSounds()	
		Utility.Wait(Utility.RandomInt(0,1))
		BridgePlaySexSounds()	
		Utility.Wait(Utility.RandomInt(0,1))
		BridgePlaySexSounds()		
		Utility.Wait(Utility.RandomInt(0,1))
		BridgePlaySexSounds()		
		endif 
		
	endif 
	
EndFunction 

/;


Function OnStartSexFuckingSoundLoop(String EventName, String ArgString, Float ArgNum, Form Sender)
	NymTrace("OnStartSexFuckingSoundLoop(START)")
	
	Bool Enable = false
	
	
	if Enable && Nym() 

		while cfgqst.SexScene && cfgqst.ModEnabled
		
		NymTrace("OnStartSexFuckingSoundLoop(LOOPING)")	
		
			if storqst.SexFuckingSound > 0
				;2P
				if storqst.SexFuckingPartners == 1
				BridgePlaySexSounds()
				
				;3P
				elseif storqst.SexFuckingPartners == 2
				BridgePlaySexSounds()	
				Utility.Wait(Utility.RandomFloat(0.0,2.0))
				BridgePlaySexSounds()
				
				;4P
				elseif storqst.SexFuckingPartners == 3
				BridgePlaySexSounds()	
				Utility.Wait(Utility.RandomInt(0,1))
				BridgePlaySexSounds()	
				Utility.Wait(Utility.RandomInt(0,1))
				BridgePlaySexSounds()	

				;5P
				elseif storqst.SexFuckingPartners == 4
				BridgePlaySexSounds()	
				Utility.Wait(Utility.RandomInt(0,1))
				BridgePlaySexSounds()	
				Utility.Wait(0.2)
				BridgePlaySexSounds()	
				Utility.Wait(Utility.RandomInt(0,1))
				BridgePlaySexSounds()		
				Utility.Wait(Utility.RandomInt(0,1))
				BridgePlaySexSounds()		
				endif 
			endif 
			
		Utility.Wait(Utility.RandomFloat(0.5,1.0))
		
		endwhile 
		
		NymTrace("OnStartSexFuckingSoundLoop(END)")
		
	endif 

EndFunction 
	

Function BridgePlaySexSounds()
	
	;Normal Sex Scound
	if (storqst.SexFuckingSound == 10) 
	cfgqst.PlaySoundFuckBelt()	
	elseif (storqst.SexFuckingSound == 20) 
	storqst.PlaySoundSexMonster()
	endif 

EndFunction 

Float PreviousZpos

Function CrawlMaintenance()

	if Nym()
	;	if cfgqst.PlayerRef.IsInFaction(CrawlFaction)
		Float checkZpos1
		Float Difference
		checkZpos1 = cfgqst.PlayerRef.GetPositionZ()
		NymTrace("CrawlMaintenance(#Z: "+checkZpos1+")")
		PreviousZpos = checkZpos1
		Difference = PreviousZpos - checkZpos1
		NymTrace("CrawlMaintenance(#Difference: "+Difference+")")
	;	endif 
	endif 

EndFunction 


int GracePeriodPunishers = 0	
Bool IsWorkingOnStation = false
	
;PLAYER MONITOR - Fixed 3 Seconds Status Updates <- no longer true. 1 second intervalls!
	
Event OnUpdate()			;#update	;#monitor #status

	iUpdateTimer += 1
	iUpdateTimer10 += 1
	
	;>>>>>>> 1 Second Tick >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	
	if cfgqst.PoisonDefeatChance > 0
		if storqst.TIMER_Health > 0
		storqst.TIMER_Health -= 1
		endif 
		
		if storqst.TIMER_Stamina > 0
		storqst.TIMER_Stamina -= 1
		endif 
		
		if storqst.TIMER_NakedCurse > 0
		storqst.TIMER_NakedCurse -= 1
			if storqst.TIMER_NakedCurse == 0
			storqst.NakedCurseEnd()
			endif 
		endif 

		if iUpdateTimer10 == 10
		
		cfgqst.CheckDurationSpell("Stamina", true)
		
		elseif iUpdateTimer10 > 10
		iUpdateTimer10 = 0
		cfgqst.CheckDurationSpell("Health", true)
		
			if storqst.Toxication > 0 && D100(storqst.Toxication)
			storqst.Toxication -= 1
			endif 

		endif 
	endif 
	
	;every second ticks this down.
	if Nym()
		if slaveqst.Pretending && D100(10+storqst.Exhaustion)
		storqst.Exhaustion+= 1
		endif

		if cfgqst.Dodged > 0 || storqst.Parried > 0 || cfgqst.PlayerInCombat()
		NymTrace("!Dodge: "+cfgqst.Dodged+" Parried "+storqst.Parried)
		endif
	endif

	;if iUpdateTimer != 3
	;	if (MouthOpening > 0) && !ForceMouthOpeningRunning
	;;	SendModEvent("StartForceMouthOpening")
	;	endif
	;endif

	;>>>>>>> 1 Second Tick >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	OpenMouthMaintenance()
	CrawlMaintenance()

	NymTrace("defqst: OnUpdate(iUpdateTimer: "+iUpdateTimer+")(iUpdateTimer10: "+iUpdateTimer10+")(TIMER_Health: "+storqst.TIMER_Health+")(TIMER_Stamina: "+storqst.TIMER_Stamina+")(Toxication: "+storqst.Toxication+")")
	
	if iUpdateTimer > 3
	
		if Nym()
		Debug.MessageBox("#ERROR DEFQST UPDATETIMER > LOOPTIME") 
		endif 
	
	iUpdateTimer = 3
	endif 
	
	;>>>>>>> 2 Second Tick >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	if iUpdateTimer == 2
	storqst.Missbehaviors = 0
	SavePlayerPosition()
	endif
		
	;>>>>>>> 3 Second Tick >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
	if iUpdateTimer == 3		;3 seconds passed - happens everytime
	iUpdateTimer = 0

	RevertLootedContainerListCountdown += 3
		if RevertLootedContainerListCountdown > 7200
		RevertLootedContainerListCountdown = 0
		storqst.RevertLootedContainerList()
		endif

		if Nym()
		
			if DuplosACount > 0 || (Nym() && DuplosA[0])
				;we need to make sure that DuplosA get spawned all the time.
				
				if (storqst.CurrentLocationName == "Wilderness") && !cfgqst.PlayerRef.IsInInterior() && !cfgqst.PlayerIsInCombat
				;we are now in the WILDERNESS and not in any other Location(!) and OUTSIDE, escaped (no combat) so we can remove the spawned duplicants.
				;should we also remove the tags on the other actors? because else we can exploit this maybe?
				Duplo_CleanUpActors("Duplos")
				endif 
			endif 
		
		
			if storqst.SummonedHorses
			
			storqst.MonitorHorses()

			endif 

			NymTrace("Current Slave Gold: "+storqst.GetCurrentSlaveGold())
			ManageTimeScale() ;test TimeScale
	
			if storqst.HairDryTimer > 0
			storqst.HairDryTimer -= 3
			
				if storqst.HairDryTimer < 0
				storqst.HairDryTimer = 0
				endif 
				
				if storqst.HairDryTimer == 0
				storqst.HairDryTimer
				cfgqst.ChangeHairStyle("Standard")
				endif 
				
			endif 
	
		storqst.TrackLocation()
		
			if storqst.IsLocalSlave() && storqst.DirtTattoos == 0
			float DirtinessCurrent = cfgqst.GetDirtiness()
			
				if DirtinessCurrent > 15 && !storqst.Bathing
				NymMessage("Dirtiness 15 -> Add Rape Hands")
				storqst.DirtTattoos += 1
				SendModEvent("StartAddRapeHands")
				endif 
				
			endif 

		endif 
		
		;if slaveqst.FetchTaskType == "Mine Iron Ore"	
		;slaveqst.PlaceClosestOreVein("Iron Ore")
		;endif 
		
		
		Bool CallPunishers = false
		int PunishmentChance = 50
		if storqst.IsLocalSlave()
			
			if Nym() && storqst.IsExhausted() && !cfgqst.SexScene
			storqst.PlayerSoundToPlay = "Breathing"
			SendModEvent("Moan")
			endif
			
			;/
			if (slaveqst.FetchTaskType == "Flour") ; && 
			
				;Start Working and Loop
				if slaveqst.IsWorkingOnStation("Mill") && !storqst.IsExhausted()
					;START WORKING ON MILL
					slaveqst.SlaveIsOccupied = 1
					storqst.SlaveAtWork = true
					
					if !IsWorkingOnStation				
					IsWorkingOnStation = true 
					slaveqst.GoodMessage("You start pushing the mill")
					endif 
					;Process Grain Gain :P
					SendModEvent("StartWorkingMill")
				
				elseif IsWorkingOnStation	
				
					;STOP WORKING ON MILL
					
					if storqst.IsExhausted()
					slaveqst.BadMessage("You have to rest")
					else 
					slaveqst.BadMessage("You stop pushing the mill")
					endif 
					
					slaveqst.SlaveIsOccupied = 0
					storqst.SlaveAtWork = false
					IsWorkingOnStation = false 				
				
				endif 
			
			endif 
			
			/;
			
			if storqst.SlaveAtWork && D100(50)
			CallPunishers = true
			else

			;	if D100(10+cfgqst.PublicExposure) 	;STUPID! They whip thin air. we need to be stationary
			;	CallPunishers = true
			;	endif 
				
			endif 
			
		elseif Nym() && D100(cfgqst.PublicExposure) 
	;	NymBox("CALL PUNISHERS")	
	;	NymTrace("#NOTE CallPunishers A")
	;	CallPunishers = true
		endif 
		
		if CallPunishers; && GracePeriodPunishers == 0
		;GracePeriodPunishers += 10
		CallPunishers = false
		;NymTrace("WHIP AND TOUCH A")
		;storqst.MoveWhipperMode == 0 ;no initial movement
	;	NymMessage("#NOTE CallPunishers B")
		NymTrace("#NOTE CallPunishers B")
		storqst.StartWhipping_00(Utility.RandomInt(5,15))

		;NymTrace("WHIP AND TOUCH B")
		
		;	if !cfgqst.SexScene && D100(50)
		;	NymTrace("STA_CallSpanker()")
		;	STA_CallSpanker()
		;	endif
			
		endif 
		
		;WAITING Maintenance (outside SexScene)
		
		cfgqst.WaitLoopPlayerMaintenance()
		
		if Nym()
			if storqst.IsLocationClearable() && storqst.IsLocationCleared()
			DeleteTrapDoor()
			endif 
		endif 
		
		GetMouthStatePlayer()
		
		if cfgqst.IsDefeatRunning() || (storqst.FastSex == 1) || (Nym() && cfgqst.IsFucking(cfgqst.PlayerRef))
		NymTrace("SexLoop A")	
			;--- SEX SCENE ---;
			if cfgqst.SexScene || (storqst.FastSex == 1) || (Nym() && cfgqst.IsFucking(cfgqst.PlayerRef))
			NymTrace("SexLoop B")
			SexDuration	+=3
			
				if cfgqst.NymBeta
				NymrasSexEffects()
				endif

				if Nym()
				NymTrace("SexScene: "+cfgqst.SexScene+" SceneStage: "+storqst.SexSceneStage)

				;	if storqst.SexFuckingSound > 0
				;	PlayNymrasSexSounds()
					
				;	endif 
				NymrasSexExpressions()	;sends Moan
				;SendModEvent("Moan")
				SendModEvent("StartRaperExpressions")
				endif 
				
			;--- NAKED DEFEAT EXPRESSIONS & SOZBDS ---;
			else 	
				
				Bool DoPlay = false 
				if cfgqst.IsDefeatRunning() && !cfgqst.IsFucking(cfgqst.PlayerRef)
				DoPlay = true 
				elseif (Nym() && cfgqst.IsFucking(cfgqst.PlayerRef))
				DoPlay = true
				endif 
				
				if DoPlay
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
			cfgqst.PlayerRef.RemoveItem(Drool, 1, true, None)
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

Function EquipTonguesPlayer()		;#EquipTonguesPlayer()
NymTrace("EquipTonguesPlayer[MouthOpening: "+MouthOpening+"][TongueEquipped: "+TongueEquipped+"][TongueTimer: "+TongueTimer+"]")

if Nym()
			
	storqst.UseTongues = 1			
			
	;>>>>> STEP 0 -  Put Tongues in Inventory >>>>>>	
	Int Version = 2

	AddTonguesPlayer()

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


	;ACTIVE VERSION : 
	if Version == 2
		
		bool EquipTongue = false
		int CamState
		int i = 0
	
		;>>>>> STEP 1 - Determine if we equip Tongue or Not >>>>>>
		
		;KISSING - Force Equip Tongue 
		if storqst.IsPlayerKissing()
		NymTrace("EquipTonguesPlayer(KISSING A)")
		EquipTongue = true 

		;Gagged / Sucking -> Remove Tongue 
		elseif (cfgqst.Gagged || storqst.Sucking)
		NymTrace("EquipTonguesPlayer(FORCED REMOVED because Gagged:"+cfgqst.Gagged+" // Sucking:"+storqst.Sucking+")")
		
		;NymBox("UnequipTongue FORCED")
		UnequipTonguesPlayer("forced")
		;Directly Unequippping after the "Deed" is done elsewhere 
			
			;I THINK WE DONT NEED THIS FOR REMOVING TONGUE?
			;CamState = Game.GetCameraState() 
			;NymTrace("CAMERA STATE B = "+CamState)
			
			;if CamState == 3	
			;NymTrace("defqst.QueueNiNodeUpdate(cfqgst 712")
			;NymMessage("NiNodeUpdate B!")
			;cfgqst.PlayerRef.QueueNiNodeUpdate()
			;endif 
		
		;No Tongue -> Equip A Tongue 
		elseif TongueEquipped == 0 
		
		EquipTongue = true 	
		
		;Has Tongue -> Random Swapping 
		elseif (TongueEquipped > 0) && D100(25)	;we have a tongue and we have a 25% chance of swapping it
	
		NymTrace("EquipTonguesPlayer(TONGUE SWAPPED (Gagged?: "+cfgqst.Gagged+" Sucking? "+storqst.Sucking+")  NEW B: "+TongueEquipped+")")
		EquipTongue = true 
		
		endif 
		;>>>>> STEP 2 - Actually DO Equip the Tongue here >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
		if EquipTongue
		
		i = Utility.RandomInt(1,10)
			
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
			
			;---- IMPORTANT - Set Tongues Equipped so we know.... Stupid. So replace please.
			
			TongueEquipped = i
		;	if (cfgqst.Gagged || storqst.Sucking)	;we are gagged but not sucking ---> no tongue!
		;	i = 404 
		;	endif 

		;	if i == 404
		;	UnequipTonguesPlayer("forced")
		;	else 
			OpenMouthMaintenance()
			Utility.Wait(0.1)	;wait short for mouth to open
			NymTrace("EquipTonguesPlayer(TongueEquipped CURRENT CHANGED: "+TongueEquipped+")")
			cfgqst.PlayerRef.EquipItemEx(TempTongue, 0, false, true)
		;	endif 
			
		;	CamState = Game.GetCameraState() 
		;	NymTrace("CAMERA STATE B = "+CamState)
			
		;	if CamState == 3	
		;	NymTrace("defqst.QueueNiNodeUpdate(cfqgst 712")
		;	NymMessage("NiNodeUpdate B!")
		;	cfgqst.PlayerRef.QueueNiNodeUpdate()  ;----> NOT A WORKING WORKAROUND :( 
			;InstantMouthOpening()
		;	endif 
		endif 
	
	;INACTIVE/OLD VERSION 
	elseif Version == 1

		;OLD CODE 
		;EQUIP NEW Tongue (had no Tongue)
		if TongueEquipped == 0 
			int i = Utility.RandomInt(1,10)
			NymTrace("EquipTonguesPlayer(TongueEquipped A)")	
			
			
			if (cfgqst.Gagged || storqst.Sucking)	;we are gagged but not sucking ---> no tongue!
			;NEW: tongues always clip. So for now, NO tongue until we have specialized meshes	
			;	if D100(33)
				i = 404 
			;	else 
			;	i = Utility.RandomInt(4,6)
			;	endif 
		;	elseif storqst.Sucking
		;	NymTrace("EquipTonguesPlayer(TongueEquipped B)")
			;select suitable tongue only
			;NEW: tongues always clip. So for now, NO tongue until we have specialized meshes
		;		i = 0 
			;	i = Utility.RandomInt(1,2)
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
		;	int CamState = Game.GetCameraState() 
		;	NymTrace("CAMERA STATE A = "+CamState)
			
		;	Bool AllowNiNodeUpdate = false 
			
		;	if (CamState == 3)	;free cam
		;	AllowNiNodeUpdate = true 
		;		
		;		if cfgqst.SexScene && cfgqst.Gagged ;during Sex when gagged NO updates allowed (or needed)
		;		AllowNiNodeUpdate = false 
		;		endif 
		;	endif 
			
		;	if AllowNiNodeUpdate 
		;	NymTrace("defqst.QueueNiNodeUpdate(cfqgst 668")
		;	NymMessage("NiNodeUpdate!")
		;	cfgqst.PlayerRef.QueueNiNodeUpdate()		;NOT WORKING 
		;	OpenMouthMaintenance()
		;	endif 
			;endif 
		;UNEQUIP TONGUE 
		
		elseif (TongueEquipped > 0) && D100(25)	;we have a tongue and we have a 25% chance of swapping it
		NymTrace("EquipTonguesPlayer(TONGUE SWAPPED (Gagged?: "+cfgqst.Gagged+" Sucking? "+storqst.Sucking+")  NEW B: "+TongueEquipped+")")

		;UnequipTonguesPlayer()
			
			int i = Utility.RandomInt(1,10)
			
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
			
			if (cfgqst.Gagged || storqst.Sucking)	;we are gagged but not sucking ---> no tongue!
			i = 404 
			endif 

			if i == 404
			UnequipTonguesPlayer("forced")
			
			;elseif TongueEquipped
			else 
			NymTrace("EquipTonguesPlayer(TongueEquipped CURRENT CHANGED: "+TongueEquipped+")")
			cfgqst.PlayerRef.EquipItemEx(TempTongue, 0, false, true)
			;nioverride.ApplyOverrides(cfgqst.PlayerRef)
			;if !cfgqst.IsPlayerGagged()
			endif 
			
		;	int CamState = Game.GetCameraState() 
		;	NymTrace("CAMERA STATE B = "+CamState)
			
		;	if CamState == 3	
			;NymTrace("defqst.QueueNiNodeUpdate(cfqgst 712")
			;;NymMessage("NiNodeUpdate B!")
			;cfgqst.PlayerRef.QueueNiNodeUpdate()
			;OpenMouthMaintenance()
		;	endif 
			;endif 
		
		endif 
	endif 
endif 

EndFunction 


;-------->>>>>>>>>> MOVED TO PLAYERALIASQUEST >>>>>>>>>>>
;/
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


Function TogglePlayerLight()		;#TogglePlayerLight()

	NymTrace("TogglePlayerLight()")
	
	If Nym()
	
		DeleteTorch()
	
		if !PlugLantern
		FaceLightSpellDark = Game.GetFormFromFile(0x0000D77, "Better Face Lighting - ENB Light.esp") as Spell ;dark	lvl 1
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
			
			;----------------ADD 1 -----------------
			if CurrentLight == 0 ;no Light
			cfgqst.PlayerRef.AddSpell(FaceLightSpellDark, false) ;add light dark
				
				;Followers ADD LIGHT 1 
				if folqst.IsWithUs_Follower(0)
				folqst.NakedFollower[0].AddSpell(FaceLightSpellDark, false)
				endif
				if folqst.IsWithUs_Follower(1)
				folqst.NakedFollower[1].AddSpell(FaceLightSpellDark, false)
				endif

			CurrentLight = 1
			
			;------------- Remove 1 ADD 2 --------------------
			elseif CurrentLight == 1
			
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellDark) 
			
				;Followers REMOVE LIGHT  1
				if folqst.IsWithUs_Follower(0) && folqst.NakedFollower[0].HasSpell(FaceLightSpellDark)
				folqst.NakedFollower[0].RemoveSpell(FaceLightSpellDark)
				endif
				if folqst.IsWithUs_Follower(1) && folqst.NakedFollower[1].HasSpell(FaceLightSpellDark)
				folqst.NakedFollower[1].RemoveSpell(FaceLightSpellDark)
				endif
				
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium, false)
			
				;Followers ADD LIGHT 2
				if folqst.IsWithUs_Follower(0)
				folqst.NakedFollower[0].AddSpell(FaceLightSpellMedium, false)
				endif
				if folqst.IsWithUs_Follower(1)
				folqst.NakedFollower[1].AddSpell(FaceLightSpellMedium, false)
				endif

			CurrentLight = 2
			
			;----------------Remove 2 ADD 3 -----------------
			elseif CurrentLight == 2
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellMedium) 
			
				;Followers REMOVE LIGHT  2
				if folqst.IsWithUs_Follower(0) && folqst.NakedFollower[0].HasSpell(FaceLightSpellMedium)
				folqst.NakedFollower[0].RemoveSpell(FaceLightSpellMedium)
				endif
				if folqst.IsWithUs_Follower(1) && folqst.NakedFollower[1].HasSpell(FaceLightSpellMedium)
				folqst.NakedFollower[1].RemoveSpell(FaceLightSpellMedium)
				endif
			
			cfgqst.PlayerRef.AddSpell(FaceLightSpellBright, false) 
			
				;Followers ADD LIGHT 3
				if folqst.IsWithUs_Follower(0)
				folqst.NakedFollower[0].AddSpell(FaceLightSpellBright, false)
				endif
				if folqst.IsWithUs_Follower(1)
				folqst.NakedFollower[1].AddSpell(FaceLightSpellBright, false)
				endif
			
			CurrentLight = 3
			
			
			;------------------Remove Light 3 (on All) ---------------
			elseif CurrentLight == 3	
			
			cfgqst.PlayerRef.RemoveSpell(FaceLightSpellBright) 

				;Followers REMOVE LIGHT  3
				if folqst.IsWithUs_Follower(0) && folqst.NakedFollower[0].HasSpell(FaceLightSpellBright)
				folqst.NakedFollower[0].RemoveSpell(FaceLightSpellBright)
				endif
				if folqst.IsWithUs_Follower(1) && folqst.NakedFollower[1].HasSpell(FaceLightSpellBright)
				folqst.NakedFollower[1].RemoveSpell(FaceLightSpellBright)
				endif
				
				CurrentLight = 0
			
			;---------------------------------
			elseif CurrentLight == 4	
			cfgqst.PlayerRef.UnequipItemEx(PlugTorch, 0, false)
			;cfgqst.PlayerRef.RemoveItem(PlugTorch)
			Utility.Wait(0.2)
			DeleteTorch()
			CurrentLight = 0	
			
			;---------------------------------
			elseif CurrentLight == 5	
			cfgqst.PlayerRef.UnequipItemEx(PlugLantern, 0, false)
			cfgqst.PlayerRef.RemoveItem(PlugLantern)
			CurrentLight = 0
			endif 
		
		;>>>>>>>>>>>>>>>> DURING ADVENTURE  - rotate medium and plug <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		else 
			
			;Has No Light
			if CurrentLight == 0 
			NymTrace("TogglePlayerLight() - No Light - Add Medium")
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium, false) 
			CurrentLight = 2
			
				;Followers ADD LIGHT 2 Adventure 
				if folqst.IsWithUs_Follower(0)
				folqst.NakedFollower[0].AddSpell(FaceLightSpellMedium, false)
				endif
				if folqst.IsWithUs_Follower(1)
				folqst.NakedFollower[1].AddSpell(FaceLightSpellMedium, false)
				endif
			
			;PLUG Lantern or Torch
			elseif CurrentLight == 1 || CurrentLight == 2 || CurrentLight == 3	
			NymTrace("TogglePlayerLight() - Remove Facelight ("+CurrentLight+") - Add Plug")
			
				if CurrentLight == 1
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellDark) 
				
					;Followers REMOVE LIGHT  1
					if folqst.IsWithUs_Follower(0) && folqst.NakedFollower[0].HasSpell(FaceLightSpellDark)
					folqst.NakedFollower[0].RemoveSpell(FaceLightSpellDark)
					endif
					if folqst.IsWithUs_Follower(1) && folqst.NakedFollower[1].HasSpell(FaceLightSpellDark)
					folqst.NakedFollower[1].RemoveSpell(FaceLightSpellDark)
					endif
					
					;Followers ADD LIGHT 2
					if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[0].AddSpell(FaceLightSpellMedium, false)
					endif
					if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[1].AddSpell(FaceLightSpellMedium, false)
					endif
					
				elseif CurrentLight == 2
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellMedium) 
	
					;Followers ADD LIGHT 2
					if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[0].AddSpell(FaceLightSpellMedium, false)
					endif
					if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[1].AddSpell(FaceLightSpellMedium, false)
					endif

				elseif CurrentLight == 3	
				cfgqst.PlayerRef.RemoveSpell(FaceLightSpellBright) 
				
					;Followers REMOVE LIGHT  3
					if folqst.IsWithUs_Follower(0) && folqst.NakedFollower[0].HasSpell(FaceLightSpellBright)
					folqst.NakedFollower[0].RemoveSpell(FaceLightSpellBright)
					endif
					if folqst.IsWithUs_Follower(1) && folqst.NakedFollower[1].HasSpell(FaceLightSpellBright)
					folqst.NakedFollower[1].RemoveSpell(FaceLightSpellBright)
					endif
					
					;Followers ADD LIGHT 2
					if folqst.IsWithUs_Follower(0) && !folqst.NakedFollower[0].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[0].AddSpell(FaceLightSpellMedium, false)
					endif
					if folqst.IsWithUs_Follower(1) && !folqst.NakedFollower[1].HasSpell(FaceLightSpellMedium)
					folqst.NakedFollower[1].AddSpell(FaceLightSpellMedium, false)
					endif
				
				endif 
			
				if D100(50)	;torch
				cfgqst.PlayerRef.AddItem(PlugTorch, 1, true)
				cfgqst.PlayerRef.EquipItemEx(PlugTorch, 0, true ,true)
				CurrentLight = 4		
				else  ;lantern
				cfgqst.PlayerRef.AddItem(PlugLantern, 1, true)	;T
				cfgqst.PlayerRef.EquipItemEx(PlugLantern, 0, true ,true)
				CurrentLight = 5
				endif 
			
			;Has torch, equip Facelight
			elseif CurrentLight == 4
			cfgqst.PlayerRef.UnequipItemEx(PlugTorch, 0, false)
			;cfgqst.PlayerRef.RemoveItem(PlugTorch)
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium, false) 
			Utility.Wait(0.2)
			DeleteTorch()
			CurrentLight = 2
			elseif CurrentLight == 5
			cfgqst.PlayerRef.UnequipItemEx(PlugLantern, 0, false)
			cfgqst.PlayerRef.RemoveItem(PlugLantern)
			cfgqst.PlayerRef.AddSpell(FaceLightSpellMedium, false) 
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
/;
	
;<<<<<<<<<<<<<<<<<<< MOVED TO PLAYERALIASQUEST <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



Function UnequipTonguesPlayer(string sMode)				;#tongues3	;#UnequipTonguesPlayer()
;NymTrace("UnequipTonguesPlayer()")
NymTrace("UnequipTonguesPlayer[Mode: "+sMode+"][TongueEquipped: "+TongueEquipped+"][TongueTimer: "+TongueTimer+"][ForceOpen: "+storqst.ForceOpen+"]")

	if Nym() 	;NakedTongues
	
		if sMode == "normal"

			if storqst.IsPlayerKissing() ;Kissing - Force Tongues to remain outside.
			;do nothing
			else 		
			
				if TongueEquipped > 0 
				;we keep the tongue for some time now...
				TongueTimer += 1
				
					if TongueTimer > 4
					
					TongueTimer = 0
					PO3_SKSEFunctions.RemoveAllModItems(cfgqst.PlayerRef, "Tongues.esp", true) 	;true -> only Unequip
					TongueEquipped = 0
					endif 
				endif 
			endif 
			
		elseif sMode == "forced"

			if storqst.IsPlayerKissing() && cfgqst.SexScene ;Kissing - Force Tongues to remain outside.
		;	NymBox("Forced Unequip Tongue while Kissing")		
		;DO NOTHING 
			else 
		
			PO3_SKSEFunctions.RemoveAllModItems(cfgqst.PlayerRef, "Tongues.esp", true) 	;true -> only Unequip
			TongueEquipped = 0
			TongueTimer = 0
			endif 
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
    NymTrace("NymrasSexEffects(" + SexEffect01 + ")")
    if SexEffect01 > 0
        if D100(75.0)
            if SexEffect01 == 2
                cfgqst.StartPunishmentEffect("Shock")
            elseif SexEffect01 == 3
                cfgqst.StartPunishmentEffect("Frost")
            elseif SexEffect01 == 4
                cfgqst.StartPunishmentEffect("Fire")
            elseif SexEffect01 == 5 && D100(50.0)
                cfgqst.StartPunishmentEffect("Poison")
            elseif SexEffect01 == 6
                cfgqst.StartPunishmentEffect("Dwemer Sex")
            endif
        endif
    endif
EndFunction

Armor[] Property DrippingPussyZAZ Auto

Function DrippingPussy(bool Start)		;#DrippingPussy()
				
		
		if Nym()	;Squirt 0 is good. We test Squirt 1 now. Make a script with random squirting and orgasm effect maybe later.
		;to do: we need to make a standard script that equips items and keeps track in a formlist so we can just remove all of them without the script needing to track? (PowerOfThree!)

			if Start
				
			int i = Utility.RandomInt(0,1)
			NymTrace("DrippingPussy START ["+i+"]")
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[i], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[i], false, true)
			else 
			
				int DripsRemovedCount = 0
				Form[] DripList = new Form[2]
				DripList[0] = DrippingPussyZAZ[0]
				DripList[1] = DrippingPussyZAZ[1]
	
				;RulesList[5] = SlaveTask_RuleCrawling
				DripsRemovedCount = SPE_ObjectRef.RemoveItems(cfgqst.PlayerRef, DripList, none) 	
		
			;cfgqst.PlayerRef.RemoveItem(DrippingPussyZAZ[0], 1, true, None)
			;cfgqst.PlayerRef.RemoveItem(DrippingPussyZAZ[1], 1, true, None)
			endif 
		endif 
			
				
			;/	
		if storqst.BodyFluids	
		
			if Start 
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[0], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[0], false, true)
			
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[1], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[1], false, true)
			
			cfgqst.PlayerRef.AddItem(DrippingPussyZAZ[2], 1, true)
			cfgqst.PlayerRef.EquipItem(DrippingPussyZAZ[2], false, true)
			
			else 
			
			endif 
			
		endif 
		/;

EndFunction 


Armor Property BrutalPlug Auto

Function AddBrutalPlugs(int iTypeNumber)	;#plugs

Debug.Trace("NAKED DEFEAT configquest: AddBrutalPlugs()")

	if (Game.GetModByName("pchsImmersivePlugs.esp") != 255)
		
		if iTypeNumber == 0
		iTypeNumber = Utility.RandomInt (1, 6)
		endif 
		
		if iTypeNumber == 0
			if cfgqst.DefeatType == "Undead" && cfgqst.DefeatTypeGeneral == "AreHumanoids"
			iTypeNumber = Utility.RandomInt (4, 6)

			else 
			iTypeNumber = Utility.RandomInt (1, 6)
			endif 
		endif 
		
		if iTypeNumber == 1
		;CARROT
		BrutalPlug = (Game.GetFormFromFile(0x00000D63, "pchsImmersivePlugs.esp") As Armor)		

		;MEAD
		elseif iTypeNumber == 2
		BrutalPlug = (Game.GetFormFromFile(0x000012D0, "pchsImmersivePlugs.esp") As Armor)	
			
		;COMMON SOULGEM
		elseif iTypeNumber == 3
		BrutalPlug = (Game.GetFormFromFile(0x000048DD, "pchsImmersivePlugs.esp") As Armor)
		
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

sslSystemConfig Property sslConfig Auto 

Function SexLabMCM_Toggle(string sOption, bool bToggle)

	if sOption == "Clear Heels Height"
	
		Form SexLabQuestFramework  = Game.GetFormFromFile(0xD62, "SexLab.esm")
		if SexLabQuestFramework
			sslConfig      = SexLabQuestFramework as sslSystemConfig
		;	ThreadLib   = SexLabQuestFramework as sslThreadLibrary
		;	ThreadSlots = SexLabQuestFramework as sslThreadSlots
		;	ActorLib    = SexLabQuestFramework as sslActorLibrary
		;	Stats       = SexLabQuestFramework as sslActorStats
		endIf
		
		sslConfig.RemoveHeelEffect = bToggle
		
		NymTrace("SexLabMCM_Toggle(Clear Heels Height): "+sslConfig.RemoveHeelEffect)	
		;if sslConfig.RemoveHeelEffect
		;NymBox("Heel effect setting changed successfully to: "+bDisable+"!")
		
		;NymTrace("ToggleHeelEffect OFF: "+sslConfig.RemoveHeelEffect)
		;else 
		;sslConfig.RemoveHeelEffect = TRUE
		;NymTrace("ToggleHeelEffect ON: "+sslConfig.RemoveHeelEffect)
		;NymBox("ERROR: Could not cast to sslSystemConfig.")
		;endif
	endif 

EndFunction

Function PlaceEffectObject(string sMode)
    string sName
    float zOffset = 0.0
    if sMode == "Bathing Waterfall"
        if D100(50.0)
            ThePlacedEffectObject = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(1036500, "Skyrim.esm"), 1, false, false)
            sName = ThePlacedEffectObject.GetName()
        else
            ThePlacedEffectObject = cfgqst.PlayerRef.PlaceAtMe(game.GetFormFromFile(288425, "Skyrim.esm"), 1, false, false)
            sName = ThePlacedEffectObject.GetName()
        endif
        ThePlacedEffectObject.MoveTo(cfgqst.PlayerRef, 80.0 * math.Sin(cfgqst.PlayerRef.GetAngleZ() + 90.0), 80.0 * math.Cos(cfgqst.PlayerRef.GetAngleZ() + 90.0), cfgqst.PlayerRef.GetHeight() + 200.0, true)
        zOffset = ThePlacedEffectObject.GetHeadingAngle(cfgqst.PlayerRef)
        ThePlacedEffectObject.SetAngle(0.0, 0.0, ThePlacedEffectObject.GetAngleZ() + zOffset)
        ThePlacedEffectObject.SetAngle(0.0, 0.0, 270.0)
    elseif sMode == "Remove"
        ThePlacedEffectObject.DisableNoWait(false)
        ThePlacedEffectObject.Delete()
        ThePlacedEffectObject = None
    endif
EndFunction

Function PlaceExplosion(actor akActor, string sMode)
    string EXPL_Name
    if Nym()
        explosion EXPL = None
        if sMode == "Dust Medium"
            EXPL_Name = "FXdustDropMedExplosion"
            EXPL = (game.GetFormFromFile(106811, "Skyrim.esm") as explosion)
        elseif sMode == "Dust Large"
            EXPL_Name = "FallingDustExplosion01"
            EXPL = (game.GetFormFromFile(557321, "Skyrim.esm") as explosion)
        elseif sMode == "Dust Small"
            EXPL_Name = "FXdustDropSmExplosion"
            EXPL = (game.GetFormFromFile(106812, "Skyrim.esm") as explosion)
        elseif sMode == "Dust Tiny"
            EXPL_Name = "FXdustDropTinyExplosion"
            EXPL = (game.GetFormFromFile(106815, "Skyrim.esm") as explosion)
        elseif sMode == "Dust Very Tiny"
            EXPL_Name = "FXdartDustExplosion"
            EXPL = (game.GetFormFromFile(209474, "Skyrim.esm") as explosion)
        elseif sMode == "Dust Giant"
            EXPL_Name = "crGiantStompExplosion"
            EXPL = (game.GetFormFromFile(468597, "Skyrim.esm") as explosion)
        elseif sMode == "Naked Curse Start"
            EXPL_Name = "ExplosionIllusionDark01"
            EXPL = (game.GetFormFromFile(263277, "Skyrim.esm") as explosion)
        elseif sMode == "Naked Curse End"
            EXPL_Name = "ExplosionIllisionMassiveDark01"
            EXPL = (game.GetFormFromFile(781487, "Skyrim.esm") as explosion)
        elseif sMode == "Ritual Summoning 1"
            EXPL_Name = "ExplosionIllusionMassiveLight01"
            EXPL = (game.GetFormFromFile(140719, "Skyrim.esm") as explosion)
        elseif sMode == "Heal"
            EXPL_Name = "Heal"
            EXPL = (game.GetFormFromFile(866688, "Skyrim.esm") as explosion)
        elseif sMode == "Estrus Start"
            EXPL_Name = "ExplosionTurnUndeadMass01"
            EXPL = (game.GetFormFromFile(573868, "Skyrim.esm") as explosion)
        elseif sMode == "Shockwave 1"
            EXPL_Name = "TG08BShockwaveExplosion"
            EXPL = (game.GetFormFromFile(1039290, "Skyrim.esm") as explosion)
        elseif sMode == "Random Whipping Dust"
            if D100(25.0)
                int i = utility.RandomInt(1, 2)
                if i == 5
                    EXPL_Name = "FXdustDropMedExplosion"
                    EXPL = (game.GetFormFromFile(106811, "Skyrim.esm") as explosion)
                elseif i == 1
                    EXPL_Name = "FXdustDropSmExplosion"
                    EXPL = (game.GetFormFromFile(106812, "Skyrim.esm") as explosion)
                elseif i == 2
                    EXPL_Name = "FXdustDropTinyExplosion"
                    EXPL = (game.GetFormFromFile(106815, "Skyrim.esm") as explosion)
                endif
            endif
        endif
        NymTrace("PlaceExplosion(" + sMode + ")(" + EXPL_Name + ")")
        akActor.PlaceAtMe(EXPL, 1, false, false)
    endif
EndFunction

Function Test_Explosions(int iForce)
    string ExplosionName
    NymTrace("#Test_Explosions Start")
    explosion TestExplosion = None
    if iTestInt == 0
        ExplosionName = "ExplosionIllusionMassiveLight01"
        TestExplosion = (game.GetFormFromFile(140719, "Skyrim.esm") as explosion)
    elseif iTestInt == 1
        ExplosionName = "ExplosionShoutArea01"
        TestExplosion = (game.GetFormFromFile(543538, "Skyrim.esm") as explosion)
    elseif iTestInt == 2
        ExplosionName = "fakeForceBallNudge"
        TestExplosion = (game.GetFormFromFile(819213, "Skyrim.esm") as explosion)
    elseif iTestInt == 3
        ExplosionName = "ExplosionShoutPacify01"
        TestExplosion = (game.GetFormFromFile(1003638, "Skyrim.esm") as explosion)
    elseif iTestInt == 4
        ExplosionName = "DB10TrapOilExplosion"
        TestExplosion = (game.GetFormFromFile(1032169, "Skyrim.esm") as explosion)
    elseif iTestInt == 5
        ExplosionName = "TrapExplosionRuneLightning01"
        TestExplosion = (game.GetFormFromFile(471846, "Skyrim.esm") as explosion)
    elseif iTestInt == 6
        ExplosionName = "TrapExplosionRuneFrost01"
        TestExplosion = (game.GetFormFromFile(471665, "Skyrim.esm") as explosion)
    elseif iTestInt == 7
        ExplosionName = "TG08BShockwaveExplosion"
        TestExplosion = (game.GetFormFromFile(1039290, "Skyrim.esm") as explosion)
    endif
    NymMessage("Test[" + iTestInt + "]: " + ExplosionName)
    cfgqst.PlayerRef.PlaceAtMe(TestExplosion, 1, false, false)
    iTestInt = iTestInt + 1
EndFunction

Function Test_GetLocations()
    NymTrace("#Test_Explosions Start")
    if cfgqst.PlayerRef.IsInInterior()
        NymMessage("We are Indoors")
    endif
    worldspace Tamriel = (game.GetFormFromFile(60, "Skyrim.esm") as worldspace)
    cell ParentCell = cfgqst.PlayerRef.GetParentCell()
    if ParentCell
        NymMessage("We have ParentCell")
    else
        NymMessage("We have NO ParentCell")
    endif
    if cfgqst.PlayerRef.GetWorldSpace() == Tamriel
        NymMessage("We are Outdoors (Tamriel)")
    else
        NymMessage("We are Indoors (not Tamriel)")
    endif
    location CurrentLocationTest = cfgqst.PlayerRef.GetCurrentLocation()
    Keyword LocTypeDungeon = (game.GetFormFromFile(78043, "Skyrim.esm") as Keyword)
    if CurrentLocationTest.HasKeyword(LocTypeDungeon)
        NymTrace("We Are In Dungeon")
    endif
    Keyword LocSetCave = (game.GetFormFromFile(78063, "Skyrim.esm") as Keyword)
    if CurrentLocationTest.HasKeyword(LocSetCave)
        NymTrace("We Are In Cave")
    endif
    Keyword LocTypeClearable = (game.GetFormFromFile(1007232, "Skyrim.esm") as Keyword)
    if CurrentLocationTest.HasKeyword(LocSetCave)
        NymTrace("We Are In Clearable Location")
    endif
    Keyword LocTypeFalmerHive = (game.GetFormFromFile(78052, "Skyrim.esm") as Keyword)
    if CurrentLocationTest.HasKeyword(LocSetCave)
        NymTrace("We Are In Falmer Hive")
    endif
EndFunction

Function TestInt(bool up)
    if up
        iTestInt = iTestInt + 1
    else
        iTestInt = iTestInt - 1
    endif
    NymBox("TestInt = " + iTestInt)
EndFunction

Function SavePlayerPosition()
    XposLAST = cfgqst.PlayerRef.GetPositionX()
    YposLAST = cfgqst.PlayerRef.GetPositionY()
    ZposLAST = cfgqst.PlayerRef.GetPositionZ()
EndFunction

bool Function IsPlayerMoving()
    float Xpos = cfgqst.PlayerRef.GetPositionX()
    float Ypos = cfgqst.PlayerRef.GetPositionY()
    float Zpos = cfgqst.PlayerRef.GetPositionZ()
    if !XposLAST
        SavePlayerPosition()
    endif
    if XposLAST == Xpos && YposLAST == Ypos && ZposLAST == Zpos
        return false
    else
        return true
    endif
EndFunction


		
Function TestFunction()
    NymTrace("##TestFunction Start")
    if Nym()
        capqst.Add_ImprovisedArmor_Falmer()
    endif
    if Nym()
        if cfgqst.DefeatStateChapter == "Golden Shower"
        elseif storqst.IsLocalSlave() && !cfgqst.IsDefeatRunning() && !cfgqst.SexScene && !storqst.SlaveAtWork
            slaveqst.TrainingStartJogging()
        elseif cfgqst.PlayerRef.IsSneaking()
        endif
    endif
    if Nym() && cfgqst.SexScene
        debug.SendAnimationEvent(cfgqst.PlayerRef, "AnimObjectUnequip")
        utility.Wait(1.0)
        calmqst.FixRaperHardness()
    endif
    if Nym() && !cfgqst.IsDefeatRunning() && !cfgqst.IsFucking(cfgqst.PlayerRef) && !cfgqst.AlreadyImmobilized
        form a = cfgqst.PlayerRef.GetWornForm(1073741824)
        if a && a.HasKeyword(cfgqst.SexLabNoStrip)
            NymTrace("#DD Status: SexLabNoStrip")
        else
            NymTrace("#DD Status: SexLabNoStrip - FALSE")
        endif
    endif
EndFunction

		Spell Fuz1
		Spell Fuz2
		Spell Fuz3

Function CastFuz(int iMode)
    if Nym()
        NymTrace("CastFuz(" + iMode + ")")
        float CurrentStamina = cfgqst.PlayerRef.GetAV("Stamina")
        float StaminaCost = 50.0
        if !Fuz1
            Fuz1 = (game.GetFormFromFile(81417, "Skyrim.esm") as Spell)
            Fuz2 = (game.GetFormFromFile(81721, "Skyrim.esm") as Spell)
            Fuz3 = (game.GetFormFromFile(81722, "Skyrim.esm") as Spell)
        endif
        if iMode == 0
            iMode = utility.RandomInt(1, 3)
        endif
        if IsPlayerNakedExceptHands()
            iMode = 3
            StaminaCost = 75.0
        else
            iMode = 2
            StaminaCost = 50.0
        endif
        NymTrace("CastFuz A(" + CurrentStamina + ")")
        if CurrentStamina >= StaminaCost
            cfgqst.PlayerRef.DamageAV("Stamina", StaminaCost)
            if iMode == 1
                Fuz1.Cast(cfgqst.PlayerRef, None)
            elseif iMode == 2
                Fuz2.Cast(cfgqst.PlayerRef, None)
            elseif iMode == 3
                Fuz3.Cast(cfgqst.PlayerRef, None)
            endif
        endif
        CurrentStamina = cfgqst.PlayerRef.GetAV("Stamina")
        NymTrace("CastFuz B(" + CurrentStamina + ")")
    endif
EndFunction

bool Function IsPlayerNakedExceptHands()
    form FEET = cfgqst.PlayerRef.GetWornForm(128)
    if FEET && !FEET.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    endif
    form BODY = cfgqst.PlayerRef.GetWornForm(4)
    if BODY && !BODY.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    endif
    form CIRCLET = cfgqst.PlayerRef.GetWornForm(4096)
    if CIRCLET && !CIRCLET.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    endif
    form HELMET = cfgqst.PlayerRef.GetWornForm(2)
    if HELMET && !HELMET.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    endif
    form BOTTOM = cfgqst.PlayerRef.GetWornForm(4194304)
    if BOTTOM && !BOTTOM.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    endif
    form THIGH = cfgqst.PlayerRef.GetWornForm(8388608)
    if THIGH && !THIGH.HasKeyword(cfgqst.SexLabNoStrip)
        return false
    else
        NymTrace("IsPlayerCompletelyNaked(TRUE)")
        return true
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
    effectshader TestSpell = (game.GetFormFromFile(1100900, "Skyrim.esm") as effectshader)
    if !TestSpell
        debug.Messagebox("Spell 1 = NONE")
    else
        TestSpell.Play(cfgqst.PlayerRef, 5.0)
    endif
    utility.Wait(7.0)
    TestSpell = (game.GetFormFromFile(606560, "Skyrim.esm") as effectshader)
    if !TestSpell
        debug.Messagebox("Spell 2 = NONE")
    else
        TestSpell.Play(cfgqst.PlayerRef, 5.0)
    endif
    utility.Wait(7.0)
    TestSpell = (game.GetFormFromFile(1113593, "Skyrim.esm") as effectshader)
    if !TestSpell
        debug.Messagebox("Spell 3 = NONE")
    else
        TestSpell.Play(cfgqst.PlayerRef, 5.0)
    endif
    utility.Wait(7.0)
    TestSpell = (game.GetFormFromFile(33569016, "Dawnguard.esm") as effectshader)
    if !TestSpell
        debug.Messagebox("Spell 4 = NONE")
    else
        TestSpell.Play(cfgqst.PlayerRef, 5.0)
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



Function DeathFromShockScene()

	int iTimer = Utility.RandomInt(10,20)
	
	;new idea. Initial Ragdoll > get up (do we track?)
	;then chain up unbound struggle poses, then kneeling, then laying, then not moving laying (look for suitable ones for DDs?)
	
	cfgqst.Immobilize(false)
	
	while iTimer > 0
	
		iTimer -=1
		cfgqst.StartPunishmentEffect("Shock")
		Utility.Wait(0.5)
		
		if D100(90)
		SendModEvent("Moan")
		endif
		
		If D100(50)
		cfgqst.StartPunishmentEffect("Shock")
		endif
		
		float PushStrength = Utility.RandomFloat(0.1,2.0)
		storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, PushStrength, "DeathFromShockScene")
		Utility.Wait(0.5)
		
		if D100(10)
		;break
		Utility.Wait(5.0)
		endif 
		
		;we need to transition form ragdoll to dead pose 
		
		if iTimer == 1
		cfgqst.StartPunishmentEffect("Shock")
		Utility.Wait(0.5)
		cfgqst.StartPunishmentEffect("Shock")
		Utility.Wait(1.0)		
		cfgqst.StartPunishmentEffect("Shock")
		Utility.Wait(0.5)	
		cfgqst.StartPunishmentEffect("Shock")
		endif	
	endwhile	

	cfgqst.FadeToBlack(true) 
	
	Utility.Wait(5.0)

	cfgqst.FadeToBlack(false) 

EndFunction 	



Function TestAnimationEvents()
    string sTempEventToplay = ""
    NymBox("Idle A [" + sTempEventToplay + "]")
    cfgqst.PublicExposure = 0
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle B [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle C [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle D [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle E [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle F [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle G [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle H [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle I [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle J [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = "FB_PornStarDog_A1_S1"
    NymBox("Idle K [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle L [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = ""
    NymBox("Idle M [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
    sTempEventToplay = "FB_VampAggrCow_A2_S"
    NymBox("Idle N [" + sTempEventToplay + "]")
    debug.SendAnimationEvent(cfgqst.PlayerRef, sTempEventToplay)
    utility.Wait(10.0)
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    utility.Wait(1.0)
    cfgqst.PublicExposure = 0
EndFunction


			
;DD TESTS:
;ft_surrender	ft_surrender_hobbled	ft_unconcious_falling		ft_bdsm_idle_collarme		ft_bdsm_idle_egyptian		ft_bdsm_idle_inspection
		
	
		

Function TestIdles()		;##idles
	
			Idle TempIdle 
			
			int IdleSetToPlay = 404
			
			if IdleSetToPlay == 1
				ScreenMessage("IdleHoe")	
				;YES, works. For Working on Farm!!!
				TempIdle = (Game.GetFormFromFile(0x00075CB4, "Skyrim.esm") as Idle) 	
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 			

				ScreenMessage("IdleKneeling")
				;NOT WORKING
				TempIdle = (Game.GetFormFromFile(0x000E8E50, "Skyrim.esm") as Idle)		
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
			
				ScreenMessage("IdleLounge")
				;weird, dont use (up in the air
				TempIdle = (Game.GetFormFromFile(0x000B8F20, "Skyrim.esm") as Idle)		
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
				
				ScreenMessage("IdleLookAround")
				;Not working
				TempIdle = (Game.GetFormFromFile(0x000F5D98, "Skyrim.esm") as Idle) 	
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 			

				ScreenMessage("IdleLookFar")
				;WORKS, look with hand on forehead, short
				TempIdle = (Game.GetFormFromFile(0x00075C62, "Skyrim.esm") as Idle)		
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
			
			elseif IdleSetToPlay == 3
			
				ScreenMessage("IdleBoyRitual")
				TempIdle = (Game.GetFormFromFile(0x000B8F22, "Skyrim.esm") as Idle) 	;stabbing / beating the ground. long. camera locked
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 			

				ScreenMessage("IdleBracedPain")
				TempIdle = (Game.GetFormFromFile(0x000D8735, "Skyrim.esm") as Idle)		; short, ritual start. no idea, can be form of respectfull greeting
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
			
				ScreenMessage("IdleCannibalFeedCrouching")
				TempIdle = (Game.GetFormFromFile(0x000FE09F, "Skyrim.esm") as Idle)		;fast eating from ground. might be useufl
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
				
				ScreenMessage("IdleCowering")
				TempIdle = (Game.GetFormFromFile(0x000FF9E4, "Skyrim.esm") as Idle) 	;NOT working
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 			

				ScreenMessage("IdleCrouchedPray")
				TempIdle = (Game.GetFormFromFile(0x000F11E4, "Skyrim.esm") as Idle)		;NOT working
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
			
				ScreenMessage("IdleDA02BoethiahPost")
				TempIdle = (Game.GetFormFromFile(0x000F3B60, "Skyrim.esm") as Idle) 		;NOT working
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 

				ScreenMessage("IdleExamine")
				TempIdle = (Game.GetFormFromFile(0x00075C3D, "Skyrim.esm") as Idle) 	;Arme verschränken, looking down, short
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 
				
				ScreenMessage("IdleGetAttention")				;NOT working via Console, only CODE 
				TempIdle = (Game.GetFormFromFile(0x0006FF15, "Skyrim.esm") as Idle) 
				if TempIdle
				cfgqst.PlayerRef.PlayIdle(TempIdle)
				Utility.Wait(10.0)
				cfgqst.ResetIdle(cfgqst.PlayerRef)
				Utility.Wait(1.0)
				endif 			
				
				
			
			elseif IdleSetToPlay == 2
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

Actor[] Property DuplosA Auto
Actor[] Property DuplosB Auto
Actor[] Property DuplosC Auto
int Property DuplosACount Auto 
int Property DuplosBCount Auto 
int Property DuplosCCount Auto 
String Property DuplosALocation Auto 
String Property DuplosBLocation Auto 
String Property DuplosCLocation Auto 

Actor[] Property AmbushersA Auto
Actor[] Property AmbushersB Auto
Actor[] Property AmbushersC Auto
int Property AmbushersACount Auto 
int Property AmbushersBCount Auto 
int Property AmbushersCCount Auto 


Function Duplo_CreateActors(string sMode)

	NymTrace("Duplo_CreateActors("+sMode+")")
	
	if sMode == "DuplosA"
	
		if DuplosACount == 0
		DuplosA = new Actor[20]					
		DuplosA[0] = None						
		DuplosA[1] = None						
		DuplosA[2] = None						
		DuplosA[3] = None	
		DuplosA[4] = None						
		DuplosA[5] = None						
		DuplosA[6] = None						
		DuplosA[7] = None
		DuplosA[8] = None						
		DuplosA[9] = None
		DuplosA[10] = None
		DuplosA[11] = None
		DuplosA[12] = None
		DuplosA[13] = None
		DuplosA[14] = None
		DuplosA[15] = None
		DuplosA[16] = None
		DuplosA[17] = None
		DuplosA[18] = None
		DuplosA[19] = None
		endif 
		
	elseif sMode == "DuplosB"
	
		if DuplosBCount == 0
		DuplosB = new Actor[20]					
		DuplosB[0] = None						
		DuplosB[1] = None						
		DuplosB[2] = None						
		DuplosB[3] = None	
		DuplosB[4] = None						
		DuplosB[5] = None						
		DuplosB[6] = None						
		DuplosB[7] = None
		DuplosB[8] = None						
		DuplosB[9] = None
		DuplosB[10] = None
		DuplosB[11] = None
		DuplosB[12] = None
		DuplosB[13] = None
		DuplosB[14] = None
		DuplosB[15] = None
		DuplosB[16] = None
		DuplosB[17] = None
		DuplosB[18] = None
		DuplosB[19] = None
		endif 
		
	elseif sMode == "DuplosC"
		if DuplosCCount == 0
		DuplosC = new Actor[20]					
		DuplosC[0] = None						
		DuplosC[1] = None						
		DuplosC[2] = None						
		DuplosC[3] = None	
		DuplosC[4] = None						
		DuplosC[5] = None						
		DuplosC[6] = None						
		DuplosC[7] = None
		DuplosC[8] = None						
		DuplosC[9] = None
		DuplosC[10] = None
		DuplosC[11] = None
		DuplosC[12] = None
		DuplosC[13] = None
		DuplosC[14] = None
		DuplosC[15] = None
		DuplosC[16] = None
		DuplosC[17] = None
		DuplosC[18] = None
		DuplosC[19] = None
		endif 
		
	elseif sMode == "Ambushers"	
	
		AmbushersA = new Actor[4]					
		AmbushersA[0] = None						
		AmbushersA[1] = None						
		AmbushersA[2] = None						
		AmbushersA[3] = None
		AmbushersACount = 0
		
		AmbushersB = new Actor[4]					
		AmbushersB[0] = None						
		AmbushersB[1] = None						
		AmbushersB[2] = None						
		AmbushersB[3] = None
		AmbushersBCount = 0

		AmbushersC = new Actor[4]					
		AmbushersC[0] = None						
		AmbushersC[1] = None						
		AmbushersC[2] = None						
		AmbushersC[3] = None
		AmbushersCCount = 0

	endif 

EndFunction  


Function Duplo_CheckActors()
    string sTempName
    int iFound = 0
    int iDead = 0
    int iDuplosCount = DuplosACount
    if DuplosACount > 0
        NymTrace("Duplo_CheckActors(DuplosACount" + DuplosACount + ")(DuplosALocation" + DuplosALocation + ")(DuplosARoom" + DuplosARoom + ")")
        while iDuplosCount > 0
            iDuplosCount = iDuplosCount - 1
            if DuplosA[iDuplosCount]
                sTempName = cfgqst.GetActorName(DuplosA[iDuplosCount])
                iFound = iFound + 1
                NymTrace("Duplo_CheckActors(DuplosA: " + iDuplosCount + " " + sTempName + " Found)")
                if DuplosA[iDuplosCount].IsDead()
                    iDead = iDead + 1
                    NymTrace("Duplo_CheckActors(DuplosA: " + iDuplosCount + " " + sTempName + " IsDead)")
                endif
            endif
        endwhile
        NymTrace("Duplo_CheckActors(DuplosACount: " + DuplosACount + " Found: " + iFound + " Dead: " + iDead + ")")
    endif
    iFound = 0
    iDead = 0
    iDuplosCount = DuplosBCount
    if DuplosBCount > 0
        NymTrace("Duplo_CheckActors(DuplosBCount" + DuplosBCount + ")(DuplosBLocation" + DuplosBLocation + ")(DuplosBRoom" + DuplosBRoom + ")")
        while iDuplosCount > 0
            iDuplosCount = iDuplosCount - 1
            if DuplosB[iDuplosCount]
                sTempName = cfgqst.GetActorName(DuplosB[iDuplosCount])
                iFound = iFound + 1
                NymTrace("Duplo_CheckActors(DuplosB: " + iDuplosCount + " " + sTempName + " Found)")
                if DuplosB[iDuplosCount].IsDead()
                    iDead = iDead + 1
                    NymTrace("Duplo_CheckActors(DuplosB: " + iDuplosCount + " " + sTempName + " IsDead)")
                endif
            endif
        endwhile
        NymTrace("Duplo_CheckActors(DuplosBCount: " + DuplosBCount + " Found: " + iFound + " Dead: " + iDead + ")")
    endif
    iFound = 0
    iDead = 0
    iDuplosCount = DuplosCCount
    if DuplosCCount > 0
        NymTrace("Duplo_CheckActors(DuplosCCount" + DuplosCCount + ")(DuplosCLocation" + DuplosCLocation + ")(DuplosCRoom" + DuplosCRoom + ")")
        while iDuplosCount > 0
            iDuplosCount = iDuplosCount - 1
            if DuplosC[iDuplosCount]
                sTempName = cfgqst.GetActorName(DuplosC[iDuplosCount])
                iFound = iFound + 1
                NymTrace("Duplo_CheckActors(DuplosC: " + iDuplosCount + " " + sTempName + " Found)")
                if DuplosC[iDuplosCount].IsDead()
                    iDead = iDead + 1
                    NymTrace("Duplo_CheckActors(DuplosC: " + iDuplosCount + " " + sTempName + " IsDead)")
                endif
            endif
        endwhile
        NymTrace("Duplo_CheckActors(DuplosCCount: " + DuplosCCount + " Found: " + iFound + " Dead: " + iDead + ")")
    endif
    iFound = 0
    iDead = 0
    iDuplosCount = AmbushersACount
    if AmbushersACount > 0
        NymTrace("Duplo_CheckActors(AmbushersACount" + AmbushersACount + ")")
        while iDuplosCount > 0
            iDuplosCount = iDuplosCount - 1
            if AmbushersA[iDuplosCount]
                iFound = iFound + 1
                if AmbushersA[iDuplosCount].IsDead()
                    iDead = iDead + 1
                endif
            endif
        endwhile
        NymTrace("Duplo_CheckActors(AmbushersACount: " + AmbushersACount + " Found: " + iFound + " Dead: " + iDead + ")")
    endif
EndFunction


Function Duplo_CleanUpActors(string sMode)
    bool bForced
    NymTrace("Duplo_CleanUpActors(" + sMode + ")")
    NymMessage("Duplo_CleanUpActors(" + sMode + ")")
    int i = 10
    int iDeleted = 0
    int iSaveCount = 0
    if sMode == "forced"
        sMode = "All"
        bForced = true
    endif
    if sMode == "DuplosA" || sMode == "Duplos" || sMode == "All"
        NymTrace("Duplo_CleanUpActors DuplosACount(" + DuplosACount + ")DuplosALocation(" + DuplosALocation + ")")
        if DuplosACount > 0 && (!(DuplosALocation == storqst.CurrentLocationName) || bForced)
            iSaveCount = DuplosACount
            while DuplosACount > 0
                DuplosACount = DuplosACount - 1
                if DuplosA[DuplosACount]
                    DuplosA[DuplosACount].DisableNoWait(false)
                    DuplosA[DuplosACount].Delete()
                    DuplosA[DuplosACount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            DuplosACount = 0
            DuplosALocation = "Empty"
            DuplosARoom = 0
            if iDeleted > 0
                NymMessage("Duplo_CleanUpActorsA(Count: " + iSaveCount + " -> Deleted: " + iDeleted + ")")
                iDeleted = 0
                iSaveCount = 0
            endif
        endif
    endif
    if sMode == "DuplosB" || sMode == "Duplos" || sMode == "All"
        if DuplosBCount > 0 && (!(DuplosBLocation == storqst.CurrentLocationName) || bForced)
            iSaveCount = DuplosBCount
            while DuplosBCount > 0
                DuplosBCount = DuplosBCount - 1
                if DuplosB[DuplosBCount]
                    DuplosB[DuplosBCount].DisableNoWait(false)
                    DuplosB[DuplosBCount].Delete()
                    DuplosB[DuplosBCount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            DuplosBCount = 0
            DuplosBLocation = "Empty"
            DuplosBRoom = 0
            if iDeleted > 0
                NymMessage("Duplo_CleanUpActorsB(Count: " + iSaveCount + " -> Deleted: " + iDeleted + ")")
                iDeleted = 0
                iSaveCount = 0
            endif
        endif
    endif
    if sMode == "DuplosC" || sMode == "Duplos" || sMode == "All"
        if DuplosCCount > 0 && (!(DuplosCLocation == storqst.CurrentLocationName) || bForced)
            iSaveCount = DuplosCCount
            while DuplosCCount > 0
                DuplosCCount = DuplosCCount - 1
                if DuplosC[DuplosCCount]
                    DuplosC[DuplosCCount].DisableNoWait(false)
                    DuplosC[DuplosCCount].Delete()
                    DuplosC[DuplosCCount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            DuplosCCount = 0
            DuplosCLocation = "Empty"
            DuplosCRoom = 0
            if iDeleted > 0
                NymMessage("Duplo_CleanUpActorsC(Count: " + iSaveCount + " -> Deleted: " + iDeleted + ")")
                iDeleted = 0
                iSaveCount = 0
            endif
        endif
    endif
    if sMode == "Ambushers" || sMode == "All"
        iDeleted = 0
        NymTrace("Delete Ambushers START: AmbushersACount [" + AmbushersACount + "]")
        if AmbushersACount > 0
            iSaveCount = AmbushersACount + AmbushersBCount + AmbushersCCount
            while AmbushersACount > 0
                AmbushersACount = AmbushersACount - 1
                if AmbushersA[AmbushersACount]
                    NymTrace("Delete AmbushersA[" + AmbushersACount + "]")
                    AmbushersA[AmbushersACount].DisableNoWait(false)
                    AmbushersA[AmbushersACount].Delete()
                    AmbushersA[AmbushersACount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            while AmbushersBCount > 0
                AmbushersBCount = AmbushersBCount - 1
                if AmbushersB[AmbushersBCount]
                    NymTrace("Delete AmbushersB[" + AmbushersBCount + "]")
                    AmbushersB[AmbushersBCount].DisableNoWait(false)
                    AmbushersB[AmbushersBCount].Delete()
                    AmbushersB[AmbushersBCount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            while AmbushersCCount > 0
                AmbushersCCount = AmbushersCCount - 1
                if AmbushersC[AmbushersCCount]
                    NymTrace("Delete AmbushersC[" + AmbushersCCount + "]")
                    AmbushersC[AmbushersCCount].DisableNoWait(false)
                    AmbushersC[AmbushersCCount].Delete()
                    AmbushersC[AmbushersCCount] = None
                    iDeleted = iDeleted + 1
                endif
            endwhile
            NymMessage("Duplo_CleanUpAmbushersCount: " + iSaveCount + " -> Deleted: " + iDeleted + ")")
            iDeleted = 0
            iSaveCount = 0
        endif
    endif
EndFunction


Function AmbushMonitor()
    while cfgqst.PlayerRef.IsWeaponDrawn() && !AmbushEscapeCheck()
        NymTrace("AmbushMonitor(LOOP)")
        utility.Wait(3.0)
    endwhile
    utility.Wait(3.0)
    if cfgqst.DefeatQuestRunning || cfgqst.PlayerDownAlready
        NymTrace("AmbushMonitor(Player Defeated)")
    elseif AmbushEscapeCheck()
        NymTrace("AmbushMonitor(we escaped/ambush stuck)")
        Duplo_CleanUpActors("Ambushers")
    else
        NymTrace("AmbushMonitor(Ambushers Defeated)")
        utility.Wait(80.0)
        Duplo_CleanUpActors("Ambushers")
    endif
    NymTrace("AmbushMonitor(Ambush END")
    NymMessage("Ambush END")
EndFunction


Bool Function AmbushEscapeCheck()
	NymTrace("AmbushEscapeCheck()")
	float fDistanceTemp = 0
	float fDistanceEscape = 1000
	bool bEscaped = false 
	
	int iAmbusherCountTemp = AmbushersACount

		while iAmbusherCountTemp > 0 && !bEscaped
			iAmbusherCountTemp -= 1
			
			if AmbushersA[iAmbusherCountTemp] && !AmbushersA[iAmbusherCountTemp].IsDead() && (AmbushersA[iAmbusherCountTemp].GetDistance(cfgqst.PlayerRef) >= fDistanceEscape)
			bEscaped = true
			;NymTrace("AmbushEscapeCheck()")
			endif
			
		endwhile	

		iAmbusherCountTemp = AmbushersBCount

		while iAmbusherCountTemp > 0 && !bEscaped
			iAmbusherCountTemp -= 1
			
			if AmbushersB[iAmbusherCountTemp] && !AmbushersB[iAmbusherCountTemp].IsDead() && (AmbushersB[iAmbusherCountTemp].GetDistance(cfgqst.PlayerRef) >= fDistanceEscape)
			bEscaped = true
			endif
			
		endwhile	
		
		iAmbusherCountTemp = AmbushersCCount
		
		while iAmbusherCountTemp > 0 && !bEscaped
			iAmbusherCountTemp -= 1
			
			if AmbushersC[iAmbusherCountTemp] && !AmbushersC[iAmbusherCountTemp].IsDead() && (AmbushersC[iAmbusherCountTemp].GetDistance(cfgqst.PlayerRef) >= fDistanceEscape)
			bEscaped = true
			endif
			
		endwhile
		
		
		NymTrace("AmbushEscapeCheck(Escaped: "+bEscaped+")")
;	Actor closestA = Game.FindClosestActorFromRef(cfgqst.PlayerRef, 1000.0)

;	if !closestA.IsDead() && closestA.IsInFaction(cfgqst.BanditFaction) && closestA.IsInFaction(cfgqst.NakedDuplicantFaction) && closestA.IsInFaction(storqst.NakedRaperFaction)
	;ambushers still close 
	return bEscaped 

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

; ---- added in Naked Defeat 6.51 ----
float XposLAST
float YposLAST
float ZposLAST
int iTestInt
int RevertLootedContainerListCountdown = 0
objectreference ThePlacedEffectObject
nade_capturequest_qf_scr Property capqst Auto
int Property DuplosARoom Auto
int Property DuplosBRoom Auto
int Property DuplosCRoom Auto
int Property Room Auto
