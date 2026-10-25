Scriptname nade_whipquest_00 Extends Quest Hidden


;slaFrameworkScr has what you want:
;UpdateActorExposure(Actor who, Int exposureDelta, String debugMessage = "")
;SetActorExposure(Actor who, Int newActorExposure)
;SetActorArousalLocked(Actor who, Bool isLocked)


ReferenceAlias Property Alias_Aggressor Auto
;ReferenceAlias Property Alias_Furniture2 Auto
;ReferenceAlias Property Alias_Marker1 Auto
;ReferenceAlias Property Alias_Marker2 Auto
;ReferenceAlias Property Alias_Furniture1 Auto
;ReferenceAlias Property Alias_Furniture0 Auto
;ReferenceAlias Property Alias_LocationCenter Auto

ReferenceAlias Property Marker_01 Auto		;VEHICLE EXPLORATION

;LocationAlias Property Alias_Location Auto
;ReferenceAlias Property Alias_vehicle Auto;DELETE


;Armor Property LeatherBinds Auto ;DELETE

nade_calmquest_qf_scr Property calmquest Auto
nade_configquest_scr Property cfgqst Auto
nade_storage_qf_scr Property storqst Auto
nade_WhipQuest_01 Property whipq01 Auto

Faction Property WhippingFaction Auto
Faction Property FactionBusyRaper Auto

Quest Property calmqst Auto

SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto
FormList Property nade_ZazCaptDevs Auto ;DELETE
FormList Property nade_ZazWhipDevs Auto;DELETE
FormList Property nade_ZazFurnRopeGround Auto;DELETE
FormList Property nade_ZazFurnRopeUp Auto;DELETE
FormList Property nade_ZazFurnPole Auto;DELETE
FormList Property nade_ZazFurnCruxRope Auto;DELETE
FormList Property nade_ZazFurnMix Auto;DELETE
FormList Property nade_ZazFurnMonster_Indoor Auto;DELETE
FormList Property nade_ZazFurnMonster_Outdoor Auto;DELETE

Quest Property nade_CaptiveQuest Auto

Weapon Property Cane Auto
Weapon Property Paddle Auto

Keyword Property zbfFurnitureTypePainful Auto
Keyword Property zbfFurnitureWhipping Auto
Keyword Property zbfFurnitureWhippingDevice Auto
Keyword Property zbfFurnitureBedOfBondage Auto
Keyword Property zbfFurnitureWhippingFromFront Auto
Keyword Property zbfFurnitureWhippingFromBack Auto
Keyword Property zbfFurnitureExposeVaginal Auto
Keyword Property zbfFurnitureExposeAnal Auto

bool WaitForMoan = false
bool NoWhipping = false

Scene Property WhipScene Auto

Int DeviceIndex = -1

bool blocked = true
bool DebugKeyAbort = false


;/ DEAD CODE: this script never calls RegisterForKey, so this handler never fired.
;The skip-whipping key is handled centrally in nade_configquest_scr OnKeyDown (DefeatKey -> WhippingDuration = 0).
Event OnKeyDown (Int KeyCode)		;#key
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey

	Debug.trace ("NAKED DEFEAT whipquest_00: Keypress DefeatKey (Skip whipping)")

	DebugKeyAbort = true
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	Debug.Notification("<font color='#ff0000'>Your whipper got bored by your whimpering.</font>")		;MESSAGE
		Debug.Trace("NAKED DEFEAT Notification: Your whipper got bored by your whimpering.")

	SetStage(25)	;end of whipping
	else
	Debug.trace ("NAKED DEFEAT whipquest_00: Keypress DefeatKey (Skip whipping FAILED 01)")
	endif
else
	Debug.trace ("NAKED DEFEAT whipquest_00: Keypress DefeatKey (Skip whipping FAILED 02)")
endif
EndEvent
/;

Function AbortWhipping()

SetStage(25)

EndFunction


Bool Continue = false

Event AnimationEnd(string eventName, string strArg, float numArg, Form sender)
Continue = True
EndEvent


bool DDeEvent = false
bool FurnitureEvent = false
bool SceneProtectorsPlaced = false
String TheWhipperName = "NoName"
String TheWhipperRaceKey = "NoRaceKey"
int TheWhipperGender
Actor TheWhipper


Function PlaceSceneProtectors()

	NymTrace("cfgqst.DefeatSceneProtectors: "+cfgqst.DefeatSceneProtectors)
	NymTrace("storqst.SceneProtectorsPlaced: "+storqst.SceneProtectorsPlaced)
	NymTrace("storqst.WhippingDuration: "+storqst.WhippingDuration)
	
	if cfgqst.DefeatSceneProtectors && !storqst.SceneProtectorsPlaced && (storqst.WhippingDuration > 10) 
	storqst.SceneProtectorsPlaced = true 
	
	Debug.Trace("NAKED DEFEAT whipquest_00: TheWhipper: SceneProtectorsPlaced")
	TheSceneProtector_01 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[0])
	TheSceneProtector_01.SetAngle(0.0, 0.0, 0.0)
	
	TheSceneProtector_02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[1])
	TheSceneProtector_02.SetAngle(0.0, 0.0, 0.0)
	;Utility.Wait(0.5)
	endif

EndFunction 

Function RemoveSceneProtectors()

	storqst.SceneProtectorsPlaced = false	

	if TheSceneProtector_01
	NymMessage("Remove Scene Protector 01a")
	TheSceneProtector_01.DisableNoWait()
	TheSceneProtector_01.Delete()
	TheSceneProtector_01 = None
	endif
	if TheSceneProtector_02
	NymMessage("Remove Scene Protector 02a")
	TheSceneProtector_02.DisableNoWait()
	TheSceneProtector_02.Delete()
	TheSceneProtector_02 = None
	endif
EndFunction

Function Fragment_2()				;#whipscene	#20 ;##Start		;WHIPSCENE START

	Debug.Trace("NAKED DEFEAT: whipquest_00 stage 20")
	
	storqst.WhippingQuest_00_Running = true
	
	TeleportAttempts = 0
	
	TheWhipper = Alias_Aggressor.GetReference() as Actor
	TheWhipperName = cfgqst.GetActorName(TheWhipper)
	TheWhipperGender = SexLab.GetGender(TheWhipper)
	if TheWhipperGender > 1
	TheWhipperRaceKey = cfgqst.GetRaceKey(TheWhipper)
	endif

	Debug.Trace("NAKED DEFEAT: whipquest_00 TheWhipperName: "+TheWhipperName)
	Debug.Trace("NAKED DEFEAT: whipquest_00 TheWhipperGender: "+TheWhipperGender)
	Debug.Trace("NAKED DEFEAT: whipquest_00 TheWhipperRaceKey: "+TheWhipperRaceKey)
	
	;----------- PRECISION OFF! ---------------;
	if cfgqst.ModPrecision
	cfgqst.PrecisionCollision(TheWhipper, false)
	cfgqst.PrecisionCollision(cfgqst.PlayerRef, false)
	endif 
	;----------------------------------------------;
	
	;too early might fail to fill the Reference 
	


		if TheWhipper
			if TheWhipper.IsInFaction(FactionBusyRaper)	;currently not in use 
			Debug.Trace("NAKED DEFEAT whipquest_00: actor busy")
			
			Debug.Notification("<font color='#ff0000'>Your whipper is busy with fucking.</font>")		;MESSAGE
			Debug.Trace("NAKED DEFEAT Notification: Your whipper is busy with fucking.")	
			SetStage(100)
			
			elseif TheWhipper.IsInFaction(WhippingFaction)	;only valid whippers should land here now 
			Debug.Trace("NAKED DEFEAT whipquest_00: actor valid")
			;WHIP SCENE START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			
				if CheckWhipper() 
					
					PlaceSceneProtectors()
					
					AddCane()
					if cfgqst.AlreadyImmobilized	;we dont want this in some situations.
					MoveWhipperToPlayer()
					endif 
					SaveWhipperStats()
					
					if storqst.DynamicWhipping
					WhippingSpeed_SET(-0.6)
					else 
					AdjustAttackSpeed(true)
					endif 
					WhipperStateApplied = true 	;so WhipppingCleanUp() knows there is something to restore
					
					RegisterForSingleUpdate(1.0)
					;RegisterForSingleUpdate(5.0)	
					;Debug.SetGodMode(true)
					WhipScene.Start()			;#start
					
				else					
					Debug.Notification("NAKED DEFEAT whipquest_00: NO WHIPPER")
					Debug.Trace("NAKED DEFEAT whipquest_00: NO WHIPPER.")
					SetStage(100)
					Debug.Notification("<font color='#ff0000'>Your whipper does not seem to be interested.</font>")		;MESSAGE
					Debug.Trace("NAKED DEFEAT Notification: Your whipper does not seem to be interested.")	
				endif
			endif
		else
			Debug.Trace("NAKED DEFEAT whipquest_00: no actor found")
			;Debug.Notification("<font color='#ff0000'>Nobody there to whip you.</font>")		;MESSAGE
			Debug.Trace("NAKED DEFEAT Notification: Nobody there to whip you.")	
			SetStage(100)
		endif	
;	endif

EndFunction

Float WhipperWeaponSpeedMultOriginal
Float WhipperWeaponSpeedMultCurrent
Float WhipperWeaponSpeedMultDebuff

Function AdjustAttackSpeed(bool apply)

	Float WhipperWeaponSpeedMultTarget = -0.6

	if apply	
	WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
	WhipperWeaponSpeedMultOriginal = WhipperWeaponSpeedMultCurrent
	NymTrace("WhipperWeaponSpeedMultCurrent A1: "+WhipperWeaponSpeedMultCurrent)
	;a.SetAV("WeaponSpeedMult", 0.5)
	

	WhipperWeaponSpeedMultDebuff = WhipperWeaponSpeedMultCurrent + WhipperWeaponSpeedMultTarget
	NymTrace("WhipperWeaponSpeedMultDebuff "+WhipperWeaponSpeedMultDebuff)

	TheWhipper.ModActorValue("WeaponSpeedMult", -WhipperWeaponSpeedMultDebuff)
	
	WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
	NymTrace("WhipperWeaponSpeedMultCurrent B1: "+WhipperWeaponSpeedMultCurrent)
	;WhipperWeaponSpeedMultCurrent = PlayerRef.GetActorValue("SpeedMult")
	;if PlayerSpeedMultCurrent < 40
	;PlayerSpeedMultDebuff = 40 - PlayerSpeedMultCurrent
	;PlayerRef.ModAV("SpeedMult", PlayerSpeedMultDebuff)
	;PlayerRef.ModActorValue("CarryWeight", 2.0)
	;PlayerRef.ModActorValue("Carr9yWeight", -2.0)
	else
	NymTrace("WhipperWeaponSpeedMultCurrent A2: "+WhipperWeaponSpeedMultCurrent)
	TheWhipper.ModActorValue("WeaponSpeedMult", WhipperWeaponSpeedMultDebuff)  ;RESET TO ORIGINAL 
	NymTrace(" WhipperWeaponSpeedMultCurrent B2: "+WhipperWeaponSpeedMultCurrent)
	endif 
EndFunction


Function WhippingSpeed_SET(float fSpeedTarget)
	
	;get current value
	WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
	;save orignal value 
	WhipperWeaponSpeedMultOriginal = WhipperWeaponSpeedMultCurrent
	NymTrace("WhippingSpeed_SET A1: "+WhipperWeaponSpeedMultCurrent)

	;calculate total debuff			
	WhipperWeaponSpeedMultDebuff = WhipperWeaponSpeedMultCurrent + fSpeedTarget
	NymTrace("WhippingSpeed_SET "+WhipperWeaponSpeedMultDebuff)
	
	;apply debuff
	TheWhipper.ModActorValue("WeaponSpeedMult", -WhipperWeaponSpeedMultDebuff)
	
	;double check 
	WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
	NymTrace("WhippingSpeed_SET B1: "+WhipperWeaponSpeedMultCurrent)

EndFunction 

Function WhippingSpeed_CHANGE(float fSpeedTarget)
    WhippingSpeed_RESET()
    WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
    WhipperWeaponSpeedMultOriginal = WhipperWeaponSpeedMultCurrent
    NymTrace("WhippingSpeed_CHANGE A1: " + WhipperWeaponSpeedMultCurrent)
    WhipperWeaponSpeedMultDebuff = WhipperWeaponSpeedMultCurrent + fSpeedTarget
    NymTrace("WhippingSpeed_CHANGE " + WhipperWeaponSpeedMultDebuff)
    TheWhipper.ModActorValue("WeaponSpeedMult", -WhipperWeaponSpeedMultDebuff)
    WhipperWeaponSpeedMultCurrent = TheWhipper.GetActorValue("WeaponSpeedMult")
    NymTrace("WhippingSpeed_CHANGE B1: " + WhipperWeaponSpeedMultCurrent)
    CurrentWhippingSpeed = fSpeedTarget
EndFunction


Function WhippingSpeed_RESET()

	NymTrace("WhippingSpeed_RESET(CURRENT) A: "+WhipperWeaponSpeedMultCurrent)
	TheWhipper.ModActorValue("WeaponSpeedMult", WhipperWeaponSpeedMultDebuff)  ;RESET TO ORIGINAL 
	NymTrace(" WhippingSpeed_RESET(CURRENT) B: "+WhipperWeaponSpeedMultCurrent)
	NymTrace(" WhippingSpeed_RESET(ORIG) B: "+WhipperWeaponSpeedMultOriginal)
	
EndFunction







Function Fragment_1()								;############ STAGE 10 ############			#START
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 10")

	;storqst.WhippingQuest_00_Running = true
	;Start()
	;SetStage(20)

EndFunction

Function Fragment_3()										;OUTDOOR FURNITURE 				;############ STAGE 30 ############				;END OF WHIP SCENE (OnStart)
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 30")
;not in use
EndFunction

Function Fragment_4()									;############ STAGE 100 ############	#transition		;captivequest START
		
	Debug.Trace("NAKED DEFEAT: whipquest_00 stage 100")	
	SetStage(1000)

EndFunction

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

	WhipppingCleanUp()

	TeleportAttempts = 0

	cfgqst.WhipAgain = false
	storqst.WhipHitCount = 0
	storqst.WhippingDuration = 0
	storqst.TempWhipChance = 0
	;Debug.SetGodMode(false)

;	RemoveSceneProtectors()

	if cfgqst.ModPrecision
	cfgqst.PrecisionCollision(TheWhipper, true)
	cfgqst.PrecisionCollision(cfgqst.PlayerRef, true)
	endif 
		
	storqst.WhippingQuest_00_Running = false

Debug.Trace("NAKED DEFEAT: whipquest_00 stage 1000")
Stop()
EndFunction




Function Fragment_7()									;############ STAGE 21 ############	
	
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 21")	

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning

	if DebugKeyAbort
	SetStage (25)
	DebugKeyAbort = false
	endif

else
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 21 -> abort")
SetStage (1000)
endif

EndFunction


Function WhipppingCleanUp()
	Debug.Trace("NAKED DEFEAT: WhipppingCleanUp()")

	RemoveSceneProtectors()

	;WhipppingCleanUp()

	Whipping = false
	cfgqst.WhipAgain = false
	storqst.WhipHitCount = 0
	if TheWhipper

		;#P+ patch: only undo what Fragment_2 actually applied. On an abort before the whipping started
		;(stage 21 -> 1000), or with TheWhipper still set from an earlier scene, the speed/stat restore
		;would re-apply a stale WeaponSpeedMult debuff and stamina values to that actor.
		if WhipperStateApplied
		WhipperStateApplied = false
			if storqst.DynamicWhipping
			WhippingSpeed_RESET()
			else
			AdjustAttackSpeed(false)
			endif
		ResetWhipperStats()
		endif

	TheWhipper.RemoveFromFaction(WhippingFaction)
	RemoveCane()
	endif
EndFunction

;bool LoopWhipScene

Function Fragment_5()			;END OF WHIPPING		;############ STAGE 25 ############		;#whip end
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 25 (end of whipping)")


;/
	WhipppingCleanUp()	
	RemoveSceneProtectors()
	
	if Nym()
	WhippingSpeed_RESET()
	else 
	AdjustAttackSpeed(false)
	endif 

	WhipppingCleanUp()

	Whipping = false
	cfgqst.WhipAgain = false
	storqst.WhipHitCount = 0
	TheWhipper.RemoveFromFaction(WhippingFaction)
	RemoveCane()
	ResetWhipperStats()
	/;
					
	SetStage(1000)
	
EndFunction

bool WhipperStateApplied = false 	;#P+ patch: set by Fragment_2 once the whipper's speed/stats were changed, cleared by WhipppingCleanUp()

Function Startwhipquest_00()	;this starts Capturequest from Stage 500 calmquest

	Debug.Trace("NAKED DEFEAT whipquest_00: Startwhipquest_00")

	Start()
	SetStage(20)
	
EndFunction


Function AddCane()
	;Actor a = Alias_Aggressor.GetReference() as Actor
	
	;if Nym()
	;TheWhipper.AddItem(Paddle, 1, true) ;requires its own Package. The Whip is linked in the package Script
	;else 
		
		if TheWhipper && !TheWhipper.GetItemCount(Cane)
			TheWhipper.AddItem(Cane, 1, true)

		endif
	;endif 
	
EndFunction

Function MoveWhipperToPlayer()
	
	Float fDistance = 100.0
	
	if Nym()
	fDistance = 80.0
	endif 
	
	int Mode = 1
	Float zOffset
	if cfgqst.SexScene
	Mode = 2
	elseif storqst.SlaveAtWork
	Mode = 3 ;back
	endif
	
	NyMTrace("MoveWhipperToPlayer(Mode = "+Mode+")")
	
	if Mode == 1 ;front
	TheWhipper.MoveTo(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 115.0, abMatchRotation = false)
	zOffset = TheWhipper.GetHeadingAngle(cfgqst.PlayerRef)
	TheWhipper.SetAngle(TheWhipper.GetAngleX(), TheWhipper.GetAngleY(), TheWhipper.GetAngleZ() + zOffset)
	elseif Mode == 2 ;side
	TheWhipper.MoveTo(cfgqst.PlayerRef, fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()+90), fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()+90), cfgqst.PlayerRef.GetHeight() - 115.0, abMatchRotation = false)
	zOffset = TheWhipper.GetHeadingAngle(cfgqst.PlayerRef)
	TheWhipper.SetAngle(TheWhipper.GetAngleX(), TheWhipper.GetAngleY(), TheWhipper.GetAngleZ() + zOffset)
	elseif Mode == 3 ;back
	TheWhipper.MoveTo(cfgqst.PlayerRef, -fDistance * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), -fDistance * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 115.0, abMatchRotation = false)
	zOffset = TheWhipper.GetHeadingAngle(cfgqst.PlayerRef)
	TheWhipper.SetAngle(TheWhipper.GetAngleX(), TheWhipper.GetAngleY(), TheWhipper.GetAngleZ() + zOffset)
	endif 

EndFunction 

Function RemoveCane()
	;Actor a = (Alias_Aggressor.GetReference() as Actor)
	if TheWhipper && TheWhipper.GetItemCount(Cane)
		TheWhipper.RemoveItem(Cane, 1, true, None)
	endif
EndFunction

Bool Function CheckWhipper()		;#check

	
	if cfgqst.ShowDebugMessages
	Debug.Notification("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetActorInfo(TheWhipper))	
	Debug.Notification("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetLeveledActorBaseName(TheWhipper))
	endif
	Debug.Trace("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetActorInfo(TheWhipper))	
	Debug.Trace("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetLeveledActorBaseName(TheWhipper))
		
	if TheWhipper
		;if !folqst.IsPresentFollower(TheWhipper)		<--- no no, control this externally via the WhippingFaction
			if TheWhipper.IsEnabled()
				if !TheWhipper.IsDead()
				

					;if cfgqst.IsHumanoid(TheWhipper)
					;	if cfgqst.ShowDebugMessages
					;		Debug.Notification("Whipper (01) = "+cfgqst.GetLeveledActorBaseName(TheWhipper))
					;	endif	
					return true
					;else
					;	Debug.Notification("Whipper (01) = Non-humanoid ("+cfgqst.GetLeveledActorBaseName(TheWhipper)+")")
					;	return false
					;endif
				else
					NymMessage("Whipper (01) = IS Dead ("+cfgqst.GetLeveledActorBaseName(TheWhipper)+")")
					return false
				endif
			else
				NymMessage("Whipper (01) = IS Disabled actor ("+cfgqst.GetLeveledActorBaseName(TheWhipper)+")")
				return false
			endif	
		;else
		;	Debug.Notification("Whipper (01) is follower")	;MESSAGE
		;	return false
		;endif	
	else
	NymMessage("Whipper (01) is (none)")	;MESSAGE
	return false
	endif
EndFunction

bool tattoo = false

Function AddWhipmarks()		;tattobaustelle V02 -> too many tattoos, reduce to 1 (V03)

	if cfgqst.WhipMarks
	
	Debug.trace("NAKED DEFEAT: WhipMarks Started")
	SlaveTats.simple_remove_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", true, true)
	SlaveTats.simple_add_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", 0, true, true, 1.0)
	fadeTattoos.simple_doAlphaFadeFor("Whipmarks", "Whipmarks Set", cfgqst.WhipmarksDur)
	cfgqst.SyncTattoos()
	
	endif 

EndFunction

Function DoOrgasm()											;IMPROVE THIS
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		;Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

bool Whipping = false

ObjectReference TheSceneProtector_01
ObjectReference TheSceneProtector_02

bool tattoosapplied = false
int WaitTicks = 0
int Tick3 = 0

Float WhipperStaminaCURRENT
Float WhipperStaminaSTART

Float WhipperStaminaRateSTART
Float WhipperStaminaRateCURRENT

Float SpeedMultSTART
Float SpeedMultCURRENT

Float DistanceSTART
Float DistanceCURRENT


Bool SpeedWasReduced = false

Function SaveWhipperStats()
	
	WhipperStaminaSTART = TheWhipper.GetActorValue("Stamina")
	WhipperStaminaRateSTART = TheWhipper.GetActorValue("StaminaRate")
	if cfgqst.AlreadyImmobilized
	
	;SpeedMultSTART = TheWhipper.GetActorValue("SpeedMult")
	endif
	DistanceSTART = TheWhipper.GetDistance(cfgqst.PlayerRef)
	
EndFunction

Function ResetWhipperStats()
	
	;check before 
	NymTrace("ResetWhipperStats WhipperStaminaSTART:" +WhipperStaminaSTART)
	NymTrace("ResetWhipperStats WhipperStaminaRateSTART:" +WhipperStaminaRateSTART)	
	NymTrace("ResetWhipperStats SpeedMultSTART:" +SpeedMultSTART)
	
	;Reset 
	
	cfgqst.SetAVTo(TheWhipper, WhipperStaminaSTART, "Stamina")
	cfgqst.SetAVTo(TheWhipper, WhipperStaminaRateSTART, "StaminaRate")
	;TheWhipper.ModActorValue("Stamina", WhipperStaminaSTART)
	;TheWhipper.ModActorValue("StaminaRate", WhipperStaminaRateSTART)	
	;if SpeedWasReduced
	;SpeedWasReduced = false
	;cfgqst.SetAVTo(TheWhipper, SpeedMultSTART, "SpeedMult")
	;TheWhipper.ModActorValue("SpeedMult", SpeedMultSTART)
	;endif 
	
	;Check After 
	WhipperStaminaCURRENT = TheWhipper.GetActorValue("Stamina")
	WhipperStaminaRateCURRENT = TheWhipper.GetActorValue("StaminaRate")
;	SpeedMultCURRENT = TheWhipper.GetActorValue("SpeedMult")
	
	NymTrace("ResetWhipperStats WhipperStamina - FINAL:" +WhipperStaminaCURRENT)
	NymTrace("ResetWhipperStats WhipperStaminaRate - FINAL:" +WhipperStaminaRateCURRENT)	
;	if SpeedMultCURRENT < SpeedMultSTART
;	NymBox("WhipperSpeedMult #ERROR: "+SpeedMultCURRENT)
;	endif 9
;	NymTrace("WhipperStaminaRate - FINAL:" +SpeedMultCURRENT)
	
EndFunction

Function ManageWhipperStats()
			
		;Guide: This sets Stamina, StaminaRate and SpeedMult of TheWhipper to Zero (0.0)!
		;This way we prevent power attacks and random movement of the NPC.
		;SpeedMult will ONLY be changed when the Player is stationary while whipped (Controls Disabled -> Bool cfgqst.AlreadyImmobilized
		
		;--- Stamina ---;
		;only act when there is something to zero out - no per-tick waits or verify-reads (this runs every second)
		WhipperStaminaCURRENT = TheWhipper.GetActorValue("Stamina")
		NymTrace("OnUpdate Whipper Stamina:" +WhipperStaminaCURRENT)
			if WhipperStaminaCURRENT > 0
			cfgqst.SetAVTo(TheWhipper, 0.0, "Stamina")
			TheWhipper.DamageActorValue("Stamina", 1000)
			endif

		;--- Stamina Rate ---;
		WhipperStaminaRateCURRENT = TheWhipper.GetActorValue("StaminaRate")
		NymTrace("OnUpdate Whipper StaminaRate:" +WhipperStaminaRateCURRENT)
			if WhipperStaminaRateCURRENT > 0
			cfgqst.SetAVTo(TheWhipper, 0.0, "StaminaRate")
			endif

		;--- SpeedMult ---;
		;get current
		
	;	if cfgqst.AlreadyImmobilized	
	;	SpeedWasReduced = true
	;	;SpeedMultCURRENT = TheWhipper.GetActorValue("SpeedMult")
		;NymTrace("OnUpdate Whipper SpeedMult:" +SpeedMultCURRENT)
		;set to 0
		;TheWhipper.ModActorValue("SpeedMult", -SpeedMultCURRENT)
	;		if SpeedMultCURRENT > 0
	;		cfgqst.SetAVTo(TheWhipper, 0.0, "SpeedMult")
		;	endif
		;get current
	;	SpeedMultCURRENT = TheWhipper.GetActorValue("SpeedMult")
		;NymTrace("OnUpdate Whipper SpeedMult REDUCED:" +SpeedMultCURRENT)
	;	endif 

EndFunction 

int TeleportAttempts = 0

Function ManageWhipperDistance()

	;we need to account for the PLAYER moving away too.....
	
	
	Float Difference
	
	if cfgqst.AlreadyImmobilized
	DistanceCURRENT = TheWhipper.GetDistance(cfgqst.PlayerRef)
	NymTrace("DistanceCURRENT -Player Immoblized: "+DistanceCURRENT)
	
	Difference = DistanceSTART - DistanceCURRENT
	
		if ((Difference > 50) || (Difference < 60)) && TeleportAttempts < 4
		TeleportAttempts += 1
		Utility.Wait(3.0)
		MoveWhipperToPlayer()
		endif 
		
	else
	
	DistanceCURRENT = TheWhipper.GetDistance(cfgqst.PlayerRef)
	NymTrace("DistanceCURRENT - Player can move: "+DistanceCURRENT)
	
	Difference = DistanceSTART - DistanceCURRENT
	
		if Difference > 75 
		storqst.WhippingDuration = 0
		endif 
		
	endif
	
EndFunction 


Bool SlaveWhippedWhileWorking

Event OnUpdate()
    int i
    NymTrace("OnUpdate(" + WaitTicks + ") WhippingDuration(" + storqst.WhippingDuration + ")")
    if storqst.WhippingQuest_00_Running
        if storqst.SlaveAtWork && !SlaveWhippedWhileWorking
            SlaveWhippedWhileWorking = true
        elseif SlaveWhippedWhileWorking && !storqst.SlaveAtWork
            storqst.WhippingDuration = 0
        endif
        if cfgqst.IsFucking(TheWhipper)
            storqst.WhippingDuration = 0
        endif
        if storqst.DynamicWhipping
            bool ForceReset = false
            if !(CurrentWhippingSpeed == -0.6)
                ForceReset = true
            endif
            if D100(25.0) || ForceReset
                i = utility.RandomInt(1, 4)
                if ForceReset
                    ForceReset = false
                    i = 3
                endif
                if i == 1
                    WhippingSpeed_RESET()
                elseif i == 2
                    WhippingSpeed_CHANGE(-0.4)
                elseif i == 3
                    WhippingSpeed_CHANGE(-0.6)
                elseif i == 4
                    WhippingSpeed_CHANGE(-0.8)
                endif
            endif
        endif
        WaitTicks = WaitTicks + 1
        ManageWhipperStats()
        ManageWhipperDistance()
        if Tick3 == 3
            NymTrace("Whipping Moan")
            Tick3 = 0
            if Nym() && D100(20.0)
                int ji = utility.RandomInt(1, 10)
                if ji == 1
                    storqst.PlayVoiceOnActor(TheWhipper, "Take this!", "")
                elseif ji == 2
                    storqst.PlayVoiceOnActor(TheWhipper, "Your screams are delicious", "")
                elseif ji == 3
                    storqst.PlayVoiceOnActor(TheWhipper, "This will teach you", "")
                elseif ji == 4
                    storqst.PlayVoiceOnActor(TheWhipper, "Let me warm you up a bit", "")
                elseif ji == 5
                    storqst.PlayVoiceOnActor(TheWhipper, "Scream louder", "")
                elseif ji == 6
                    storqst.PlayVoiceOnActor(TheWhipper, "Your screams make me hard", "")
                elseif ji == 7
                    storqst.PlayVoiceOnActor(TheWhipper, "Beg me to stop", "")
                elseif ji == 8
                    storqst.PlayVoiceOnActor(TheWhipper, "Not so happy now, eh?", "")
                elseif ji == 9
                    storqst.PlayVoiceOnActor(TheWhipper, "Sore Pussy needs Titties to match", "")
                elseif ji == 10
                    storqst.PlayVoiceOnActor(TheWhipper, "I should whip you to death", "")
                endif
            endif
        else
            Tick3 = Tick3 + 1
        endif
        if Nym()
            if po3_sksefunctions.IsPowerAttacking(TheWhipper)
                NymTrace("Whipper is PowerAttacking")
            endif
        endif
        if storqst.WhippingDuration > 0
            storqst.WhippingDuration = storqst.WhippingDuration - 1
        endif 	;#P+ patch: no SetStage(25) here, the else below already ends the whipping (it used to be set twice in one update)
        if storqst.WhippingQuest_00_Running && storqst.WhippingDuration > 0
            RegisterForSingleUpdate(1.0)
        else
            SetStage(25)
        endif
    else
        SetStage(25)
    endif
EndEvent

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


Function NymMessage(String Text2)		;#NymMessage
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT whipquest_00: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT whipquest_00: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction


Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("whipquest_00: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT whipquest_00: BOX (#Box NYM) "+Text2)

EndFunction

;/
;#hit
Event OnHit()

Debug.trace("NAKED DEFEAT whipquest_00: OnHit()")

if cfgqst.ShowDebugMessages
Debug.trace("NAKED DEFEAT whipquest_00: OnHit()")
endif

if (!WaitForMoan && cfgqst.DefeatQuestRunning) || (!WaitForMoan && cfgqst.CivilRapeRunning)
	WaitForMoan = true
	
	if cfgqst.ShowDebugMessages
	Debug.trace("NAKED DEFEAT whipquest_00: SexLabMoan")
	endif
	
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Utility.Wait(3.0)
;	SetExpression(Utility.RandomInt(1,3))
	WaitForMoan = false
endif	
EndEvent
/;

;/
Function ForcePoseLoop(string)

create vehicle
create floor

While cfgqst.DefeatquestRunning

	while string = Pose1 -> cfgqst.String 
	Repeat
	endwhile
	
	while "Pose2"
	Repeat
	endwhile
	
	while string "Loop"
	Utility.Wait(1.0)
	Endwhile

EndWhile
	
remove vehicle
remove floor
	
/;

; ---- added in Naked Defeat 6.51 ----
float CurrentWhippingSpeed
