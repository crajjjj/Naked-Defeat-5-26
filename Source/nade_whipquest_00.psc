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

Actor aWhipper

Function Fragment_2()				;#whipscene	#20 ;##Start

;bool startwhipping = false

Debug.Trace("NAKED DEFEAT: whipquest_00 stage 20")

;	if LoopWhipScene
;	Utility.Wait(2.0)
;	WhipScene.Start()
;	else


		if cfgqst.TempIntBridge > 0
		ShortWhipping = true
		;NymMessage("ShortWhipping:"+ShortWhipping)
		endif 
		cfgqst.TempIntBridge = 0

		aWhipper = Alias_Aggressor.GetReference() as Actor
		
		if cfgqst.ModPrecision
		cfgqst.PrecisionCollision(aWhipper, false)
		cfgqst.PrecisionCollision(cfgqst.PlayerRef, false)
		endif 

		Debug.Trace("NAKED DEFEAT whipquest_00: aWhipper: " +aWhipper)

		;if a.IsInFaction(WhippingFaction)
		;Debug.Notification("IT WORKED")
		;endif
		
		;too early might fail to fill the Reference 
		if cfgqst.DefeatSceneProtectors && !ShortWhipping ; cfgqst.TempIntBridge == 0 ;EARLIER SETUP 
		Debug.Trace("NAKED DEFEAT whipquest_00: aWhipper: SceneProtectorsPlaced")
		SceneProtectorsPlaced = true
		TheSceneProtector_01 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[0])
		TheSceneProtector_01.SetAngle(0.0, 0.0, 0.0)
		
		TheSceneProtector_02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[1])
		;TheSceneProtector_02.SetAngle(0.0, 0.0, 90.0)
		TheSceneProtector_02.SetAngle(0.0, 0.0, 0.0)
		;Utility.Wait(0.5)
		endif
	
		if aWhipper
			if aWhipper.IsInFaction(FactionBusyRaper)	;currently not in use 
			Debug.Trace("NAKED DEFEAT whipquest_00: actor busy")
			
			Debug.Notification("<font color='#ff0000'>Your whipper is busy with fucking.</font>")		;MESSAGE
			Debug.Trace("NAKED DEFEAT Notification: Your whipper is busy with fucking.")	
			SetStage(100)
			
			elseif aWhipper.IsInFaction(WhippingFaction)	;only valid whippers should land here now 
			Debug.Trace("NAKED DEFEAT whipquest_00: actor valid")
			;WHIP SCENE START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
				if CheckWhipper() ;&& startwhipping
					AddCane()
					
					AdjustAttackSpeed(true)
					
					Whipping = true
					RegisterForSingleUpdate(5.0)	
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
			Debug.Notification("<font color='#ff0000'>Nobody there to whip you.</font>")		;MESSAGE
			Debug.Trace("NAKED DEFEAT Notification: Nobody there to whip you.")	
			SetStage(100)
		endif	
;	endif

EndFunction

Float WhipperWeaponSpeedMultCurrent
Float WhipperWeaponSpeedMultDebuff

Function AdjustAttackSpeed(bool apply)

	Float WhipperWeaponSpeedMultTarget = -0.6

	if apply	
	WhipperWeaponSpeedMultCurrent = aWhipper.GetActorValue("WeaponSpeedMult")
	NymTrace("WhipperWeaponSpeedMultCurrent A1: "+WhipperWeaponSpeedMultCurrent)
	;a.SetAV("WeaponSpeedMult", 0.5)
	

	WhipperWeaponSpeedMultDebuff = WhipperWeaponSpeedMultCurrent + WhipperWeaponSpeedMultTarget
	NymTrace("WhipperWeaponSpeedMultDebuff "+WhipperWeaponSpeedMultDebuff)

	aWhipper.ModActorValue("WeaponSpeedMult", -WhipperWeaponSpeedMultDebuff)
	
	WhipperWeaponSpeedMultCurrent = aWhipper.GetActorValue("WeaponSpeedMult")
	NymTrace("WhipperWeaponSpeedMultCurrent B1: "+WhipperWeaponSpeedMultCurrent)
	;WhipperWeaponSpeedMultCurrent = PlayerRef.GetActorValue("SpeedMult")
	;if PlayerSpeedMultCurrent < 40
	;PlayerSpeedMultDebuff = 40 - PlayerSpeedMultCurrent
	;PlayerRef.ModAV("SpeedMult", PlayerSpeedMultDebuff)
	;PlayerRef.ModActorValue("CarryWeight", 2.0)
	;PlayerRef.ModActorValue("CarryWeight", -2.0)
	else
	NymTrace("WhipperWeaponSpeedMultCurrent A2: "+WhipperWeaponSpeedMultCurrent)
	aWhipper.ModActorValue("WeaponSpeedMult", WhipperWeaponSpeedMultDebuff)
	NymTrace(" WhipperWeaponSpeedMultCurrent B2: "+WhipperWeaponSpeedMultCurrent)
	endif 
EndFunction

Function Fragment_1()								;############ STAGE 10 ############			#START
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 10")

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning


;	NymMessage("cfgqst.TempIntBridge:"+cfgqst.TempIntBridge)

	if cfgqst.TempIntBridge > 0
	ShortWhipping = true
	;NymMessage("ShortWhipping:"+ShortWhipping)
	endif 
	cfgqst.TempIntBridge = 0
	


; do nothing 
else	
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 10 -> abort")
SetStage (1000)
endif
		
EndFunction

Function Fragment_3()										;OUTDOOR FURNITURE 				;############ STAGE 30 ############				;END OF WHIP SCENE (OnStart)
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 30")
;not in use
EndFunction

Function Fragment_4()									;############ STAGE 100 ############	#transition		;captivequest START
		
	Debug.Trace("NAKED DEFEAT: whipquest_00 stage 100")	
	SetStage(1000)

EndFunction

Bool ShortWhipping = false

Function StartShortWhipping()

	Startwhipquest_00()

EndFunction

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

Whipping = false
cfgqst.WhipAgain = false
;Debug.SetGodMode(false)

	;backup remove again
	if cfgqst.DefeatSceneProtectors	&& SceneProtectorsPlaced
	SceneProtectorsPlaced = false
	NymMessage("Remove Scene Protectors")
		TheSceneProtector_01.DisableNoWait()
		TheSceneProtector_01.Delete()
		
		TheSceneProtector_02.DisableNoWait()
		TheSceneProtector_02.Delete()
	endif

	if cfgqst.ModPrecision
		cfgqst.PrecisionCollision(aWhipper, true)
		cfgqst.PrecisionCollision(cfgqst.PlayerRef, true)
	endif 

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


;bool LoopWhipScene

Function Fragment_5()			;END OF WHIPPING		;############ STAGE 25 ############		;#whip end
Debug.Trace("NAKED DEFEAT: whipquest_00 stage 25 (end of whipping)")

	
;	if LoopWhipScene
;	SetStage(20)
;	endif

	AdjustAttackSpeed(false)

Whipping = false
cfgqst.WhipAgain = false

	
	
	;REMOVE Scene Protectors					
	if cfgqst.DefeatSceneProtectors	&& SceneProtectorsPlaced
	SceneProtectorsPlaced = false
	NymMessage("Remove Scene Protectors")
		TheSceneProtector_01.DisableNoWait()
		TheSceneProtector_01.Delete()
		
		TheSceneProtector_02.DisableNoWait()
		TheSceneProtector_02.Delete()
	endif
	
if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning	
	
DoOrgasm()
RemoveCane()							
SetStage(1000)
	
else
Debug.Trace("NAKED DEFEAT whipquest_00: stage 25 (abort)")
SetStage(1000)
endif	
EndFunction

Function Startwhipquest_00()	;this starts Capturequest from Stage 500 calmquest

	;if cfgqst.DefeatSceneProtectors ;EARLIER SETUP 
		
	;	TheSceneProtector_01 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[0])
	;	TheSceneProtector_01.SetAngle(0.0, 0.0, 0.0)
		
	;	TheSceneProtector_02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[1])
		;TheSceneProtector_02.SetAngle(0.0, 0.0, 90.0)
	;	TheSceneProtector_02.SetAngle(0.0, 0.0, 0.0)
	;endif


Debug.Trace("NAKED DEFEAT whipquest_00: Startwhipquest_00")

	Start()
	SetStage(20)
	
	
;/

Actor a = Alias_Aggressor.GetReference() as Actor


if a
Debug.Trace("NAKED DEFEAT whipquest_00: actor found: " +a)
	if a.IsInFaction(FactionBusyRaper)
	Debug.Trace("NAKED DEFEAT whipquest_00: actor busy")
	whipq01.StartWhipQuest_01()
	else
	Debug.Trace("NAKED DEFEAT whipquest_00: actor valid")
	Start()
	SetStage(20)
	endif
else
	Debug.Trace("NAKED DEFEAT whipquest_00: no actor found")
	whipq01.StartWhipQuest_01()
endif	
/;
EndFunction


Function AddCane()
	;Actor a = Alias_Aggressor.GetReference() as Actor
	if aWhipper && !aWhipper.GetItemCount(Cane)
		aWhipper.AddItem(Cane, 1, true)
	endif
	
	aWhipper.MoveTo(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 50.0, abMatchRotation = false) ;try teleport whipper
	
EndFunction

Function RemoveCane()
	;Actor a = (Alias_Aggressor.GetReference() as Actor)
	if aWhipper && aWhipper.GetItemCount(Cane)
		aWhipper.RemoveItem(Cane, 1, true, None)
	endif
EndFunction

Bool Function CheckWhipper()		;#check


	;aWhipper = Alias_Aggressor.GetReference() as Actor		;ORIG
	
;	Actor a = calmquest.RapersA[0]						;failed
;	Actor a = calmquest.RapersA[0].GetReference() as Actor ;failed
	
;	Debug.Notification("Whipper = "+calmquest.RapersA[0])
	
	if cfgqst.ShowDebugMessages
	Debug.Notification("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetActorInfo(aWhipper))	
	Debug.Notification("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetLeveledActorBaseName(aWhipper))
	endif
	Debug.Trace("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetActorInfo(aWhipper))	
	Debug.Trace("NAKED DEFEAT whipquest_00: Whipper: "+cfgqst.GetLeveledActorBaseName(aWhipper))
		
	if aWhipper
		if !aWhipper.IsPlayerTeammate()
			if aWhipper.IsEnabled()
				if !aWhipper.IsDead()
					if cfgqst.IsHumanoid(aWhipper)
						if cfgqst.ShowDebugMessages
							Debug.Notification("Whipper (01) = "+cfgqst.GetLeveledActorBaseName(aWhipper))
						endif	
						return true
					else
						Debug.Notification("Whipper (01) = Non-humanoid ("+cfgqst.GetLeveledActorBaseName(aWhipper)+")")
						return false
					endif
				else
					Debug.Notification("Whipper (01) = Dead ("+cfgqst.GetLeveledActorBaseName(aWhipper)+")")
					return false
				endif
			else
				Debug.Notification("Whipper (01) = Disabled actor ("+cfgqst.GetLeveledActorBaseName(aWhipper)+")")
				return false
			endif	
		else
			Debug.Notification("Whipper (01) is follower")	;MESSAGE
			return false
		endif	
	else
	Debug.Notification("Whipper (01) is (none)")	;MESSAGE
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

Event OnUpdate()	;#update
Debug.trace("NAKED DEFEAT whipquest_00: onupdate")

;float whiptimer = 0.0


float whiptimer 

if ShortWhipping
whiptimer = 8
else
whiptimer = cfgqst.DefeatWhipTime
endif

Actor whipper = Alias_Aggressor.GetReference() as Actor
	
	;SPAWN Scene Protectors
	;/
	if cfgqst.DefeatSceneProtectors ;TOO LATE 
		
		TheSceneProtector_01 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[0])
		TheSceneProtector_01.SetAngle(0.0, 0.0, 0.0)
		
		TheSceneProtector_02 = cfgqst.PlayerRef.PlaceAtMe(cfgqst.Scene_Protector[1])
		;TheSceneProtector_02.SetAngle(0.0, 0.0, 90.0)
		TheSceneProtector_02.SetAngle(0.0, 0.0, 0.0)
	endif
	/;
	
	bool tattoosapplied = false
	
while Whipping
	Utility.Wait(3.0)
	
	;play sound because object collision prevents OnHit Event...
	if Utility.RandomInt(1,3) > 1 
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	else		
	cfgqst.PlaySound()
	endif
	
	;whipscene maintenance
	if cfgqst.PlayerRef.GetDistance(whipper) < 60
	whipper.MoveTo(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 50.0, abMatchRotation = false)
	endif
		
	;calmquest whipping (rodeo)		
		
	if ShortWhipping
	whiptimer -= 1
	ShortWhipping = false
			if whiptimer < 1.0
			Whipping = false	
			SetStage(25)
			endif 
			
	elseif cfgqst.SexFinished
	cfgqst.SexFinished = false
	Whipping = false
	SetStage(25)
	
		;REMOVE Scene Protectors		
		if cfgqst.DefeatSceneProtectors
			TheSceneProtector_01.DisableNoWait()
			TheSceneProtector_01.Delete()
			
			TheSceneProtector_02.DisableNoWait()
			TheSceneProtector_02.Delete()
		endif
	
	elseif cfgqst.WhipAgain	 
	whiptimer -= 3.0
	
	
		if !tattoosapplied && (whiptimer < 10.0)
		AddWhipmarks()	
		tattoosapplied = true
		elseif whiptimer < 1.0
		Whipping = false
		tattoosapplied = false
		SetStage(25)			
			;REMOVE Scene Protectors					
			if cfgqst.DefeatSceneProtectors	
				TheSceneProtector_01.DisableNoWait()
				TheSceneProtector_01.Delete()
				
				TheSceneProtector_02.DisableNoWait()
				TheSceneProtector_02.Delete()
			endif
		endif
	endif
	
endwhile

;whiptimer = cfgqst.DefeatWhipTime

EndEvent


Function NymMessage(String Text2)		;#NymMessage
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT whipquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT whipquest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.IsNymrasGame()
	return TRUE
	else
	return false
	endif 
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