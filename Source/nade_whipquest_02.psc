Scriptname nade_whipquest_02 Extends Quest Hidden

ReferenceAlias Property Alias_Aggressor Auto
;ReferenceAlias Property Alias_Furniture2 Auto
;ReferenceAlias Property Alias_Marker1 Auto
;ReferenceAlias Property Alias_Marker2 Auto
;ReferenceAlias Property Alias_Furniture1 Auto
;ReferenceAlias Property Alias_Furniture0 Auto
;ReferenceAlias Property Alias_LocationCenter Auto


;LocationAlias Property Alias_Location Auto
;ReferenceAlias Property Alias_vehicle Auto;DELETE


;Armor Property LeatherBinds Auto ;DELETE

nade_calmquest_qf_scr Property calmquest Auto
nade_configquest_scr Property cfgqst Auto
;nade_calmquest_qf_scr Property calmqst Auto
Quest Property calmqst Auto

;nade_WhipQuest_03 Property whipq03 Auto

Faction Property FactionBusyRaper Auto

;zadlibs Property libs Auto
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

;zbfPlayerControl Property zbfPC Auto
Quest Property nade_CaptiveQuest Auto

;LocationAlias Property ForcedLocAlias Auto
;ObjectReference Property Marker Auto
;ObjectReference Property Device Auto
;ObjectReference Property LastDevice Auto
Weapon Property Cane Auto

Keyword Property zbfFurnitureTypePainful Auto
Keyword Property zbfFurnitureWhipping Auto
Keyword Property zbfFurnitureWhippingDevice Auto
Keyword Property zbfFurnitureBedOfBondage Auto
Keyword Property zbfFurnitureWhippingFromFront Auto
Keyword Property zbfFurnitureWhippingFromBack Auto
Keyword Property zbfFurnitureExposeVaginal Auto
Keyword Property zbfFurnitureExposeAnal Auto

;bool ForceExpression = false
bool WaitForMoan = false
bool NoWhipping = false

Scene Property WhipScene Auto
;Idle[] Property Poses Auto		;play poses more often
;SPELL Property nade_CaptiveSpell Auto
Int DeviceIndex = -1

bool blocked = true
bool DebugKeyAbort = false

;/
Event OnKeyDown (Int KeyCode)		;#key
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey
	
	Debug.trace ("NAKED DEFEAT whipquest_02: Keypress DefeatKey (Skip whipping)")
	
	DebugKeyAbort = true
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Debug.Notification("<font color='#ff0000'>Your whipper does not seem to be interested.</font>")		;MESSAGE
		Debug.Trace("NAKED DEFEAT Notification: Your whipper does not seem to be interested.")	
	RemoveCane()

	;	if !DDeEvent
	;	Debug.Notification("<font color='#ff0000'>Try to wiggle free from your bindings.</font>")			;MESSAGE			
	;		Debug.Trace("NAKED DEFEAT Notification: Try to wiggle free from your bindings.")
	;	endif
	;SetStage(100)
		
	SetStage(25)	;end of whipping
	endif  
endif	
EndEvent
/;

Bool Continue = false

Event AnimationEnd(string eventName, string strArg, float numArg, Form sender)
Continue = True
EndEvent

;/
Function AddDDeOutfit()
		int i = Utility.RandomInt(1, 10)
		if i == 1 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_01, 66)
		elseif i == 2 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_02, 66)
		elseif i == 3 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_03, 66)
		elseif i == 4
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_04, 66)
		elseif i == 5
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_05, 66)	
		
		elseif i == 6 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_06, 66)
		elseif i == 7 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_07, 66)
		elseif i == 8 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_08, 66)
		elseif i == 8
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_09, 66)
		elseif i == 10 
			cfgqst.PlayerRef.SendModEvent("iDDeEquipOutfit", cfgqst.SavedText_10, 66)
		endif
		
EndFunction
/;

bool DDeEvent = false
bool FurnitureEvent = false

Function Fragment_2()				;#whipscene
;capture player here
;/

;-------- SETUP for whipagain and regular start

;RegisterForKey(cfgqst.DefeatKey)
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 20")	

Device = Alias_Furniture0.GetReference()

	;----- DDe Check
	if !cfgqst.WhipAgain && (Utility.RandomInt(1, 100) <= cfgqst.DefeatDDeProb)	
	Debug.Trace("NAKED DEFEAT: whipquest_02 DDe Event")
	DDeEvent = true							;if DDe ---> disable other scenarios
	cfgqst.DefeatTypeYoke = false	
	cfgqst.DefeatTypeCuffs = false
	FurnitureEvent = false
	endif
	
	;---- Scenario Check
	if !cfgqst.DefeatTypeYoke || !cfgqst.DefeatTypeCuffs || !DDeEvent
	FurnitureEvent = true ;regular Furniture game
	endif
	
	;---- NymStripService
	if cfgqst.NymStripping		
	
	;slot 53 (arm cuffs) slot 59 (leg cuffs) are NOT to be stripped
	;slot 52 (fuck belt) also dont use
	
	cfgqst.PlayerRef.UnequipItemSlot(37)	;boots
	cfgqst.PlayerRef.UnequipItemSlot(33)	;gauntlets
	cfgqst.PlayerRef.UnequipItemSlot(32)	;body 
	
	cfgqst.PlayerRef.UnequipItemSlot(57) 	;pauldron
;	cfgqst.PlayerRef.UnequipItemSlot(53)	;steel thigh armor	-> dont use
	cfgqst.PlayerRef.UnequipItemSlot(35)	;amulett
	cfgqst.PlayerRef.UnequipItemSlot(42)	;circlet	
	cfgqst.PlayerRef.UnequipItemSlot(46)	;harness
;	cfgqst.PlayerRef.UnequipItemSlot(52)	;bikini bottom	-> dont use
	
	
	endif

;-------- Scenario Yoke
	if cfgqst.DefeatTypeYoke
	
		if !cfgqst.WhipAgain
		Debug.Notification("<font color='#ff0000'>They lock you in place with a heavy chain...</font>") 
			Debug.Trace("NAKED DEFEAT Notification: They lock you in place with a heavy chain...")
		endif
		
		cfgqst.AddChains("ball")		
		
	;	Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")

		if Utility.RandomInt(1,100) > 50
		cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[Utility.RandomInt(1,2)])
		else
		cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[5])
		endif 
		
		game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							
		Game.SetPlayerAIDriven(true)
		
;-------- Scenario Cuffs		
			
	elseif cfgqst.DefeatTypeCuffs
	
		if !cfgqst.WhipAgain
		Debug.Notification("<font color='#ff0000'>They lock you in place with a heavy chain...</font>") 
			Debug.Trace("NAKED DEFEAT Notification: They lock you in place with a heavy chain...")
		endif
		
		cfgqst.AddChains("collarchain")		
		
	;	Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
	
		int xxx = (Utility.RandomInt(0,9))
		cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffsStruggle[xxx])
		if cfgqst.ShowDebugMessages
		Debug.Notification("NAKED DEFEAT whipquest_02: Pose IdlesDefeatCuffsStruggle " +xxx)
		Debug.Trace("NAKED DEFEAT whipquest_02: Pose IdlesDefeatCuffsStruggle " +xxx)
		endif
		
		game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							
		Game.SetPlayerAIDriven(true)

;-------- DDeEvent

	elseif DDeEvent

		Debug.Notification("<font color='#ff0000'>They bind you with some devious devices...</font>") 
			Debug.Trace("NAKED DEFEAT Notification: They bind you with some devious devices...")
	
			Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
			Utility.wait(1.0)
			AddDDeOutfit()
			Utility.wait(1.0)
			game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							
			Game.SetPlayerAIDriven(true)
	
;-------- FurnitureEvent (NO whip again)

	elseif FurnitureEvent && !cfgqst.WhipAgain
	
		Debug.Notification("<font color='#ff0000'>You are bound tight to an evil contraption...</font>") 
			Debug.Trace("NAKED DEFEAT Notification: You are bound tight to an evil contraption...")
		
		if !Device     			;will NEVER trigger if DDe Event = true
			Device = CreateFurniture()
		endif
		
			Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
			game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							
			Game.SetPlayerAIDriven(true)
			
			if !cfgqst.VRfix
			cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)	;#vehicle ;pre-Furnture detach
			Debug.trace("Naked Defeat whipquest_02: Vehicle DETACHED for Furniture game")
			endif
			
			cfgqst.PlayerRef.MoveToInteractionLocation(Device)					;#FURNITURE START
			;Check
			;[11/10/2021 - 03:03:02AM] Error:  (FF002E4B): does not have an interaction marker.
			;stack:
			;[ (00000014)].Actor.MoveToInteractionLocation() - "<native>" Line ?
			;maybe just use MoveTo?
			
			Device.Activate(cfgqst.PlayerRef, true)	
			cfgqst.PlayCuffsSoundRope()
			cfgqst.SexLabMoan(cfgqst.PlayerRef)	
			Utility.wait(2.0)
			cfgqst.SexLabMoan(cfgqst.PlayerRef)	
			
	
;-------- FurnitureEvent (AND whip again)	
	
	elseif FurnitureEvent && cfgqst.WhipAgain
		;do nothing	
			
	endif
/;
;-------- WHIP SCENE 
			
	if CheckWhipper()
		AddCane()
	;	Debug.Notification("<font color='#ff0000'>Prepare for the whipping!</font>")	;MESSAGE
	;		Debug.Trace("NAKED DEFEAT Notification: Prepare for the whipping!")
		Whipping = true
		RegisterForSingleUpdate(5.0)	
	WhipScene.Start()
	
	;elseif !NoWhipping && CheckWhipper() && (Utility.RandomInt(1, 100) <= cfgqst.DefeatWhipProb) 

	;	AddCane()
	;	Debug.Notification("<font color='#ff0000'>Prepare for some whipping!</font>")	;MESSAGE
	;		Debug.Trace("NAKED DEFEAT Notification: Prepare for some whipping!")
	;	WhipScene.Start()
		
		;-------- MESSAGES and STAGES	
		
	else					
			Debug.Notification("NAKED DEFEAT whipquest_02 NO WHIPPER")	;MESSAGE					
				Debug.Trace("NAKED DEFEAT whipquest_02 NO WHIPPER.")
		SetStage(100)
	endif

EndFunction

Function Fragment_1()								;############ STAGE 10 ############			#START
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 10")

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning
;/
	;Debug.Trace("NAKED DEFEAT: whipquest_02 stage 10")
	;cfgqst.ShowPose()
	;Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 1, 1, 1)			

	if !cfgqst.DefeatTypeYoke
	Marker = Alias_Marker1.GetReference()
		if !Marker
			Marker = Alias_Marker2.GetReference()
		endif


	Device = Alias_Furniture1.GetReference()
		if !Device
			Device = Alias_Furniture2.GetReference()
		endif
	endif
	/;
else	
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 10 -> abort")
SetStage (1000)
endif
		
EndFunction

Function Fragment_3()										;OUTDOOR FURNITURE 				;############ STAGE 30 ############				;END OF WHIP SCENE (OnStart)
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 30")

;/
;if cfgqst.DefeatTypeYoke
;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[0])

SetStage(100)
;else

	if Marker || !Device										;MARKER but NO DEVICE
		cfgqst.PlayerRef.MoveTo(Marker, 1.0, 0.0, 0.0, true)	;-> move Player to Marker
		Device = CreateFurniture(Marker)						;-> move Creature Furniture at marker. Device = that furniture
	endif

	if Device;	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, true, true)			;I guess if Device is found outdoors
		cfgqst.PlayerRef.MoveToInteractionLocation(Device)
		
		
		bool note = true
		while PlayerInCombat()
			if note	
			Debug.Notification("NAKED DEFEAT: PC in Combat, wait for allegiancequest")
			note = false
			endif
		Utility.Wait(1.0)
		endwhile

		Device.Activate(cfgqst.PlayerRef)	
		
		cfgqst.PlayCuffsSoundRope()
		SetStage(100)
	else
	;	Game.EnablePlayerControls()
		SetStage(1000)
	endif
;endif	
/;
EndFunction

Function Fragment_4()									;############ STAGE 100 ############	#transition		;captivequest START
		
	Debug.Trace("NAKED DEFEAT: whipquest_02 stage 100")	
;-------- MESSAGES and STAGES	

	SetStage(1000)
;	(nade_CaptiveQuest as nade_captivequest_qf_scr).StartQuest()

EndFunction

	

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

Debug.Trace("NAKED DEFEAT: whipquest_02 stage 1000")
Stop()
;endif
EndFunction

Function Fragment_7()									;############ STAGE 21 ############	



;whipmarks	---> move elsewhere!
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 21")	
;AddWhipmarks()			;tattobaustelle

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning

;if DebugKeyAbort
SetStage (25)
;DebugKeyAbort = false
;endif

else
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 21 -> abort")
SetStage (1000)
endif

EndFunction

Function Fragment_5()			;END OF WHIPPING		;############ STAGE 25 ############		;#whip end
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 25 (end of whipping)")
	
Whipping = false	
cfgqst.WhipAgain = false
	
if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning	
	
DoOrgasm()
RemoveCane()							
SetStage(1000)
	
else
Debug.Trace("NAKED DEFEAT: whipquest_02 stage 25 (abort)")
SetStage(1000)
endif	
EndFunction

Function Startwhipquest_02()	;this starts Capturequest from Stage 500 calmquest

Debug.Trace("NAKED DEFEAT: whipquest_02 Startwhipquest_02")

Actor a = Alias_Aggressor.GetReference() as Actor

if a
	if a.IsInFaction(FactionBusyRaper)
	Debug.Notification("NAKED DEFEAT whipquest_02: no wippers")
	else
	Start()
	SetStage(20)
	endif
else
	Debug.Notification("NAKED DEFEAT whipquest_02: no wippers")
endif	
	
EndFunction


;/
Bool Function StartCapture(Bool move_out = false, Int device_index = -1)	;this starts whipquest_02 from Stage 500 calmquest

	if move_out && !cfgqst.PlayerRef.IsInInterior()
		Debug.Notification("StartCapture("+move_out+", "+device_index+") = ERROR: player is not in interior")
		return false
	else
		Int stg1 = GetStage()
		Int stg2 = nade_CaptiveQuest.GetStage()
		if ((stg1 < 1) || (stg1 > 999)) && ((stg2 < 1) || (stg2 > 999))
		;	ForcedLocAlias.ForceLocationTo(cfgqst.PlayerRef.GetCurrentLocation())
			Start()
			if GetStage() == 10
				DeviceIndex = device_index
				if move_out
					SetStage(30)			;this starts THROWOUT whipquest_02	
				else						
					SetStage(20)			;this starts LOCAL whipquest_02	
				endif
				return true
			else
				Debug.Notification("StartCapture("+move_out+", "+device_index+") = ERROR: quest could not be started")
				return false
			endif
		else
			Debug.Notification("StartCapture("+move_out+", "+device_index+") = ERROR: quest(s) already running")			;HERE SEEMS TO BE THE MESSAGE FROM THE BUG
			return false
		endif
	endif
EndFunction
/;

;/
nade_ZazFurnRopeUp
nade_ZazFurnRopeGround 			;1
nade_ZazFurnPole				;2
nade_ZazFurnCruxRope			;3
nade_ZazFurnMix					;4
nade_ZazFurnMonster_Indoor
nade_ZazFurnMonster_Outdoor
/;

;#furniture

;/
ObjectReference Function CreateFurniture(ObjectReference akRef = None)		; #furniture		;NYMRA this creates the ZAP devices. Maybe can change from ESP to JSON? maybe make them permanent?
	ObjectReference r
	
	NoWhipping = false
	
	if !akRef
		akRef = cfgqst.PlayerRef
	endif
	if akRef
		int selection = Utility.RandomInt(1, 10)
		FormList FList
		if selection <= 3 ;1 - 2
			if cfgqst.PlayerRef.IsInInterior()
			int selection2 = Utility.RandomInt(1, 2)
				if selection2 == 1
				FList = nade_ZazFurnRopeGround
				NoWhipping = true
				elseif selection2 == 2 
				FList = nade_ZazFurnRopeUp
				
				endif
			else
			FList = nade_ZazFurnRopeGround
			NoWhipping = true
			endif
		elseif selection == 3
		FList = nade_ZazFurnPole
		elseif selection == 4
		FList = nade_ZazFurnCruxRope
		elseif (selection >= 4) && (selection <= 10) ;5 - 9
		FList = nade_ZazFurnMix
		elseif selection == 10
		FList = nade_ZazFurnMonster_Indoor
		endif

		
;		if cfgqst.PlayerRef.IsInInterior()
		if (DeviceIndex < 0) || (DeviceIndex >= FList.GetSize())
			DeviceIndex = Utility.RandomInt(0, FList.GetSize() - 1)
		endif
			r = akRef.PlaceAtMe(FList.GetAt(DeviceIndex), 1, true, false)
	;	else
	;		if (DeviceIndex < 0) || (DeviceIndex >= nade_ZazCaptDevs.GetSize())
	;			DeviceIndex = Utility.RandomInt(0, nade_ZazCaptDevs.GetSize() - 1)
	;		endif
	;		r = akRef.PlaceAtMe(nade_ZazCaptDevs.GetAt(DeviceIndex), 1, true, false)
		
		if r
			r.SetAngle(0.0, 0.0, r.GetAngleZ())
			if cfgqst.LastAddedDevice
				cfgqst.LastAddedDevice.DisableNoWait()
				cfgqst.LastAddedDevice.Delete()
			endif
			cfgqst.LastAddedDevice = r
		endif
		return r
	else
		return None
	endif
EndFunction

/;

Function AddCane()
	Actor a = Alias_Aggressor.GetReference() as Actor
	if a && !a.GetItemCount(Cane)
		a.AddItem(Cane, 1, true)
	endif
	
	a.MoveTo(cfgqst.PlayerRef, 250.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 250.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false) ;try teleport whipper
	
EndFunction

Function RemoveCane()
	Actor a = (Alias_Aggressor.GetReference() as Actor)
	if a && a.GetItemCount(Cane)
		a.RemoveItem(Cane, 1, true, None)
	endif
EndFunction

Bool Function CheckWhipper()		;#check
	Actor a = Alias_Aggressor.GetReference() as Actor		;ORIG
	
;	Actor a = calmquest.RapersA[0]						;failed
;	Actor a = calmquest.RapersA[0].GetReference() as Actor ;failed
	
;	Debug.Notification("Whipper = "+calmquest.RapersA[0])
	
	if cfgqst.ShowDebugMessages
	Debug.Notification("NAKED DEFEAT whipquest_02: Whipper: "+cfgqst.GetActorInfo(a))	
	Debug.Notification("NAKED DEFEAT whipquest_02: Whipper: "+cfgqst.GetLeveledActorBaseName(a))
	endif
	Debug.Trace("NAKED DEFEAT whipquest_02: Whipper: "+cfgqst.GetActorInfo(a))	
	Debug.Trace("NAKED DEFEAT whipquest_02: Whipper: "+cfgqst.GetLeveledActorBaseName(a))
		
 
	
	
	
	if a
		if !a.IsPlayerTeammate()
			if a.IsEnabled()
				if !a.IsDead()
					if cfgqst.IsHumanoid(a)
						if cfgqst.ShowDebugMessages
							Debug.Notification("Whipper (01) = "+cfgqst.GetLeveledActorBaseName(a))
						endif	
						return true
					else
						Debug.Notification("Whipper (01) = Non-humanoid ("+cfgqst.GetLeveledActorBaseName(a)+")")
						return false
					endif
				else
					Debug.Notification("Whipper (01) = Dead ("+cfgqst.GetLeveledActorBaseName(a)+")")
					return false
				endif
			else
				Debug.Notification("Whipper (01) = Disabled actor ("+cfgqst.GetLeveledActorBaseName(a)+")")
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

;		bool function simple_add_tattoo(Actor target, string section, string name, int color = 0, bool last = true, bool silent = false, float alpha = 1.0) global
;	bool function simple_remove_tattoo(Actor target, string section, string name, bool last = true, bool silent = false) global

Function AddWhipmarks()		;tattobaustelle V02 -> too many tattoos, reduce to 1 (V03)

	Debug.trace("NAKED DEFEAT: WhipMarks Started")
	SlaveTats.simple_remove_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", true, true)
	SlaveTats.simple_add_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", 0, true, true, 1.0)
	fadeTattoos.simple_doAlphaFadeFor("Whipmarks", "Whipmarks Set", cfgqst.WhipmarksDur)
	cfgqst.SyncTattoos()

EndFunction


Function DoOrgasm()											;IMPROVE THIS
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		;Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

;/
bool Function PlayerInCombat()
if cfgqst.PlayerRef.IsInCombat() 
return true
else
return false
endif
EndFunction
/;

;/
if PlayerInCombat() 		;Combatcheck
else				;Combatcheck
SetStage(1000)		;Combatcheck
endif				;Combatcheck
/;

;/
Function SetExpression(int type = 0)	

if type == 0
cfgqst.PlayerRef.ClearExpressionOverride()
elseif type == 1
cfgqst.PlayerRef.SetExpressionOverride(1, 100)	;dialogue fear 	
;Debug.Notification("NAKED DEFEAT TEST: dialogue fear ")
elseif type == 2
cfgqst.PlayerRef.SetExpressionOverride(16, 100)
elseif type == 3
cfgqst.PlayerRef.SetExpressionOverride(9, 100)
MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, 100)	
;Debug.Notification("NAKED DEFEAT TEST: dialogue combat shout ")
endif

EndFunction

/;

bool Whipping = false
float whiptimer = 30.0

Event OnUpdate()	;#update

Actor a = Alias_Aggressor.GetReference() as Actor

while Whipping

	Utility.Wait(3.0)
	;whipscene maintenance
	if (cfgqst.PlayerRef.GetDistance(a)<100) && (0.0 != a.Z)
	a.MoveTo(cfgqst.PlayerRef, 100.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 100.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 35.0, abMatchRotation = false) ;try teleport whipper
	endif
	
	;calmquest whipping (rodeo)	
	if cfgqst.SexFinished
	Whipping = false
	SetStage(25)
	endif
	
	;captivequest whipping
	if cfgqst.WhipAgain
	whiptimer -= 3.0
		if whiptimer < 1.0
		Whipping = false
		SetStage(25)
		endif
	endif

endwhile
	
EndEvent

;#hit
Event OnHit()
if (!WaitForMoan && cfgqst.DefeatQuestRunning) || (!WaitForMoan && cfgqst.CivilRapeRunning)
	WaitForMoan = true
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Utility.Wait(3.0)
;	SetExpression(Utility.RandomInt(1,3))
	WaitForMoan = false
endif	
EndEvent
