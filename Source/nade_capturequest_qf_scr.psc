
Scriptname nade_capturequest_qf_scr Extends Quest Hidden

;/
LINKS:
findings about Scene problems:
http://www.gamesas.com/2nd-scene-troubles-dialogue-wont-fire-t255276.html


FURNITURE TOPIC:

- Rename Quest to FurnitureQuest?
- Low Table Scenario (Using bed of bondage and bed scenes?)
- Normal Table Scenario (similar)
- Wall Scenario: using wall shackles and wall scenes
---> build an AnimObj that combines alot of these
---> stuck in wall scene suitable too? there was also a SLAL pack with wall anims (stuck in wall)
- can we create sex scenes "fucked with a stick" with different furnitures?
- create small SLAL packs for the different types?

/;


ReferenceAlias Property Alias_Aggressor Auto
ReferenceAlias Property Alias_Furniture2 Auto
ReferenceAlias Property Alias_Marker1 Auto
ReferenceAlias Property Alias_Marker2 Auto
ReferenceAlias Property Alias_Furniture1 Auto
ReferenceAlias Property Alias_Furniture0 Auto
ReferenceAlias Property Alias_LocationCenter Auto


LocationAlias Property Alias_Location Auto
ReferenceAlias Property Alias_vehicle Auto

Armor Property LeatherBinds Auto

nade_calmquest_qf_scr Property calmqst Auto
nade_configquest_scr Property cfgqst Auto

nade_FollowerIdleQuest_01_qf_scr Property folidle01 Auto


;nade_calmquest_qf_scr Property calmquest Auto
Quest Property nade_calmquest Auto

;zadlibs Property libs Auto
SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto
FormList Property nade_ZazCaptDevs Auto
FormList Property nade_ZazWhipDevs Auto
FormList Property nade_ZazFurnRopeGround Auto
FormList Property nade_ZazFurnRopeUp Auto
FormList Property nade_ZazFurnPole Auto
FormList Property nade_ZazFurnCruxRope Auto
FormList Property nade_ZazFurnMix Auto
FormList Property nade_ZazFurnMonster_Indoor Auto
FormList Property nade_ZazFurnMonster_Outdoor Auto

;zbfPlayerControl Property zbfPC Auto
Quest Property nade_CaptiveQuest Auto
nade_WhipQuest_00 Property whipq00 Auto
nade_WhipQuest_01 Property whipq01 Auto
nade_WhipQuest_02 Property whipq02 Auto

LocationAlias Property ForcedLocAlias Auto
ObjectReference Property Marker Auto
ObjectReference Property Device Auto

ObjectReference Property Furniture01 Auto
ObjectReference Property Furniture02 Auto

;ObjectReference Device01 
;ObjectReference Device02 

ObjectReference Property LastDevice Auto
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
bool WhippingAllowed = false

Scene Property WhipScene Auto
;Idle[] Property Poses Auto		;play poses more often
;SPELL Property nade_CaptiveSpell Auto
Int DeviceIndex = -1


bool blocked = true
bool DebugKeyAbort = false

;/
Event OnKeyDown (Int KeyCode)		;#key	-----> not used atm since debugging Whipping is done in Whipquest directly
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey
	
	Debug.trace ("NAKED DEFEAT capturequest: Keypress DefeatKey (Skip whipping)")
	
	;DebugKeyAbort = true
	SendModEvent("Moan")	
	Debug.Notification("<font color='#ff0000'>Your whipper got bored by your whimpering.</font>")		;MESSAGE
		Debug.Trace("NAKED DEFEAT Notification: Your whipper got bored by your whimpering.")	
	;RemoveCane()
	cfgqst.SexFinished = true

	else
	Debug.trace ("NAKED DEFEAT capturequest: Keypress DefeatKey (Skip whipping FAILED 01)")
	endif
else
	Debug.trace ("NAKED DEFEAT capturequest: Keypress DefeatKey (Skip whipping FAILED 02)")
endif  


EndEvent
/;

;/
Event OnKeyDown (Int KeyCode)		;#key
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey
	
	Debug.trace ("NAKED DEFEAT capturequest: Keypress DefeatKey (Skip whipping)")
	
	DebugKeyAbort = true
	SendModEvent("Moan")	
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
Function AddDDeOutfit()		;OLD DELETE 
		int i = Utility.RandomInt(1, 5)
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

bool LocalFurnitureFound = false

bool EquipDDevices = false

Function Fragment_2()				;CAPTURE EVENT	//// decides if Furniture OR DDe game	;############ STAGE 20 ############	  	#scene start	;#whip start	#20

;>>>>>>>>>>>>>>>>>> CAPTURE SETUP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	RegisterForKey(cfgqst.DefeatKey)
	Debug.Trace("NAKED DEFEAT capturequest: stage 20")	

	if !Nym()
	Device = Alias_Furniture0.GetReference()
	endif 
	;----- DDe Check --------------------------------

	if (cfgqst.DefeatTypeScenario != "DD") && D100(cfgqst.DefeatDDeProb) 	
	Debug.Trace("NAKED DEFEAT capturequest: DD Random Event")
	
	;from this point we handle DD and non-DD the same since we get devices now.
						
	cfgqst.DefeatTypeScenario = "DD"	
	FurnitureEvent = false
	EquipDDevices = true
	endif

	;---- Scenario Check --------------------------------
	
	if !cfgqst.IsPoseScenario()
	Debug.Trace("NAKED DEFEAT capturequest: Furniture Event")
	FurnitureEvent = true ;regular Furniture game
	endif

	;slot 53 (arm cuffs) slot 59 (leg cuffs) are NOT to be stripped
	;slot 52 (fuck belt) also dont use
	if !Nym()
	cfgqst.Strip(37, cfgqst.PlayerRef)	;boots
	endif 
	cfgqst.Strip(33, cfgqst.PlayerRef)	;gauntlets
	cfgqst.Strip(32, cfgqst.PlayerRef)	;body 
	
	cfgqst.Strip(57, cfgqst.PlayerRef) 	;pauldron
;	cfgqst.PlayerRef.UnequipItemSlot(53)	;steel thigh armor	-> dont use
	cfgqst.Strip(35, cfgqst.PlayerRef)	;amulett
	cfgqst.Strip(42, cfgqst.PlayerRef)	;circlet	
	cfgqst.Strip(46, cfgqst.PlayerRef)	;harness
	cfgqst.Strip(52, cfgqst.PlayerRef)	;bikini bottom	-> dont use

;-------- Scenario Yoke STRUGGLE --------------------------------
	if (cfgqst.DefeatTypeScenario == "Yoke")
		ScreenMessage("They lock you in place with a heavy chain...")
	
		AddPunishmentItems(0)
		cfgqst.AddChains("ball")						
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)			
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
		calmqst.Vehicle("restore")
		
		
;-------- Scenario Armbinder STRUGGLE --------------------------------
	elseif (cfgqst.DefeatTypeScenario == "Armbinder")
		ScreenMessage("They lock you in place with a heavy chain...")
	
		AddPunishmentItems(0)
		cfgqst.AddChains("ball")			
		;calmqst.PlayPoseOnActor("Wait", false)			
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)	
		calmqst.Vehicle("restore")
		
;-------- Scenario Cuffs STRUGGLE ------------------------------------		
					
	elseif (cfgqst.DefeatTypeScenario == "Cuffs")
	
		ScreenMessage("They lock you in place with a heavy chain...")
	
		AddPunishmentItems(0)
		cfgqst.AddChains("collarchain")			

		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
		calmqst.Vehicle("restore")

;-------- Scenario PILLORY STRUGGLE -------------------------------
						
	elseif (cfgqst.DefeatTypeScenario == "Pillory")
	
		ScreenMessage("This Pillory is your new home now...")
		AddPunishmentItems(0)			
		;calmqst.PlayPoseOnActor("Wait", false)		
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
		calmqst.Vehicle("restore")
		
;-------- Scenario XCROSS STRUGGLE -------------------------------
						
	elseif (cfgqst.DefeatTypeScenario == "XCross")
	
		ScreenMessage("X is your name now...")
		AddPunishmentItems(0)			
		;calmqst.PlayPoseOnActor("Wait", false)
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)	
		calmqst.Vehicle("restore")
		
;-------- Scenario STOCKADE STRUGGLE -------------------------------
						
	elseif (cfgqst.DefeatTypeScenario == "Stockade")
	
		ScreenMessage("You will be fucked from the machine without end now.")
		AddPunishmentItems(0)			
		;calmqst.PlayPoseOnActor("Wait", false)		
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
		calmqst.Vehicle("restore")
		
;-------- Scenario WHEEL STRUGGLE -------------------------------
						
	elseif (cfgqst.DefeatTypeScenario == "Wheel")
	
		ScreenMessage("At least they did not break your bones for this...")
		AddPunishmentItems(0)			
		;calmqst.PlayPoseOnActor("Wait", false)		
		; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 	
		; we arrive at slave location and wait for processing 
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)		
		calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
		calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
		calmqst.Vehicle("restore")
	
;-------- DDeEvent --------------------------------------------
	elseif (cfgqst.DefeatTypeScenario == "DD")	;#DDe Step 2
			ScreenMessage("They bind you with devious devices...[DD Event]")		
		;	cfgqst.Crawl(cfgqst.PlayerRef, false)
		;	Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")	;this required still?	
		
			if EquipDDevices ;if we dont have DDs already we get some here (DD Aftermath)
			EquipDDevices = false 
			nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "Random")
			endif 
			
			calmqst.Vehicle("restore")	
			
;-------- FurnitureEvent -----------------------------------------			
	elseif FurnitureEvent	 
		ScreenMessage("You are bound tight to an evil contraption..")
			
		;------ Furniture Scenario (adds more stuff to the slave) ---------------	
		if (cfgqst.DefeatTypeScenario == "Furniture")	
		AddPunishmentItems(1)	
		endif
		;-----------------------------------------------------------------
		
		;#GUIDE: if there is a furniture in the area, there is only a 66% chance it is used (we want variety)	
		;if Device && D100(66) #TODO we disabled Local Furniture... for reasons
		;LocalFurnitureFound = true
		;else
		
		NymTrace("Device = CreateFurniture()")
		Device = CreateFurniture()
		LocalFurnitureFound = false
		;endif
		
		calmqst.RemoveDefeatBinds()

	;	cfgqst.DefeatStateChapter = "EscapeGame"
		
			Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
			
			if !cfgqst.VRfix		
			cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)	;#vehicle ---> pre-Furniture detach ---> else furnitures break!!
			cfgqst.InFurniture = true
			Debug.trace("Naked Defeat capturequest: Vehicle DETACHED for Furniture game")
			endif
			
			
			;ADD PUNISHMENT ITEMS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	#items #punish

			Bool aMessage = false
			
			if cfgqst.ShortPunishment == 2 
			;do nothing
			else
			AddPunishmentItems(0)
			endif
			;------------------------------------------------------------------------------------------

			;#todo: transition is not smooth
			while cfgqst.PlayerRef.IsInCombat()
			Utility.Wait(1.0)
			endwhile
			
			If cfgqst.IsNymrasGame()
			cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
			endif 
			
			Device.Activate(cfgqst.PlayerRef, true)	
			cfgqst.PlayCuffsSoundRope()
			
			;SET (cfgqst.DefeatStateBindings == "Unbound") for Followers to play stuff. we can set it to something else too for more variety.
			;cfgqst.DefeatStateBindings = "FollowerDevices"
	
			cfgqst.DefeatStateBindings = "Furniture"
			
			; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 		
			; Followers receive their furnitures  		
			
			
			calmqst.PlayPoseOnActor(calmqst.Victims[0], "FollowerDevices", false)
			calmqst.PlayPoseOnActor(calmqst.Victims[1], "FollowerDevices", false)
			
			SendModEvent("Moan")	
			Utility.wait(2.0)
			SendModEvent("Moan")	
				
	endif
	
	;if cfgqst.IsNymrasGame() ;NO THERE, OBSTRUCTS WHIPPING! 
	;SendModEvent("StartVoyeurs")
	;Utility.Wait(2.0)
	;endif
	cfgqst.FadeToBlack(false)

		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	WHIP SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
	if cfgqst.Allow_Whipping && (!cfgqst.AbortAll)
		
		
		bool StartWhipping = false
		;no whipping when we have unsuitable furnitures
		;even with "Allow_Whipping" we still roll the die here to check the actual whip chance
		
		if (cfgqst.ShortPunishment == 2) || cfgqst.HarderDefeat
		StartWhipping = true
		
		elseif !WhippingAllowed && D100(cfgqst.DefeatWhipProb) 
		StartWhipping = true
		endif
		
		
		if StartWhipping
		StartWhipping = false
			ScreenMessage("Prepare for some whipping!")
			cfgqst.WhipAgain = true	
			
			;FurnitureVehicleTest
			;we can fall out of furniture here somehow ---> fix it
			cfgqst.Immobilize(true)	;TEST FALLOUT PREVENTION
			;Device.Activate(cfgqst.PlayerRef)
			
			if (!cfgqst.AbortAll)
			Utility.Wait(4.0)
			endif
			
			cfgqst.DefeatStatePlayer = "Whipped"
			cfgqst.TempIntBridge = 0
			NymTrace("WhipQuestTest A")
			whipq00.StartWhipQuest_00()		
			NymTrace("WhipQuestTest B")
			;#todo: backup whipquests? required or not?		
			
			int iTime = 0
			
			while cfgqst.WhipAgain && cfgqst.ModEnabled && (!cfgqst.AbortAll)	
			
				if (cfgqst.PlayerRef.GetSitState() == 0)
				InfoMessage("Attempt to restore Furniture Animation")
				RestoreFurniture()
				endif
				
				if cfgqst.IsPoseScenario() && D100(33) 
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
				endif 
				
				if (!cfgqst.AbortAll)	
				Utility.Wait(1)
				iTime += 1
				endif
				
				NymTrace("WhipTime: "+iTime+" TempIntBridge: "+cfgqst.TempIntBridge)
				
				;every 10 seconds we check for abort
				if (iTime == 10) 
					if (cfgqst.TempIntBridge == 0)
					NymMessage("Whipper Took too long, abort")
					whipq00.SetStage(25)
					cfgqst.WhipAgain = false
					cfgqst.TempIntBridge = 0
					else 
					iTime == 0
					cfgqst.TempIntBridge == 0
					endif 
				endif 
					 
			;cfgqst.Immobilize(true) ;TEST FALLOUT PREVENTION
			endwhile

			cfgqst.TempIntBridge == 0
			
			if (!cfgqst.AbortAll)
			SetStage(100)
			elseif (cfgqst.AbortAll)
			SetStage(1000)
			endif
			
		else
			if (!cfgqst.AbortAll)
			SetStage(100)
			elseif (cfgqst.AbortAll)
			SetStage(1000)
			endif
		endif		
	;shortcut to Escape Game (no whipping)
	else
		if (!cfgqst.AbortAll)
		SetStage(100)
		elseif (cfgqst.AbortAll)
		SetStage(1000)
		endif
	endif
	
		SetStage(25)
			

EndFunction

Function AddPunishmentItems(int level)

bool aMessage = false
int equipchance = 0

if level == 0
equipchance = 50
elseif level == 1
equipchance = 100
endif

			if cfgqst.ModPLUGS && D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE
			cfgqst.AddBrutalPlugs("random")
			aMessage = true
			endif
			if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef) && cfgqst.Allow_PunishmentItems_TOGGLE
			cfgqst.AddDefeatClothing()
			aMessage = true
			endif
			
			if cfgqst.ModDDframework
				if D100(30)
				nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Piercings")
				elseif D100 (30)
				nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Clamps")
				endif 
				;add SMP piercings nipple and pussy!
				;add 
			endif 	
			;if D100(50)
			if D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE
			cfgqst.AddDefeatGags()
			aMessage = true
			endif
			if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef)
			cfgqst.AddFuckBelt()
			aMessage = true
			endif	
			SendModEvent("Moan")
		
			if aMessage
			aMessage = false
			;ScreenMessage("They force some kinky stuff on you...")
			InfoMessage("Punishment Items equiped. Can be removed again by pressing K (action key)")
			endif
			
			if D100(cfgqst.BondageHaircutProb) 
			cfgqst.ChangeHairStyle()
			endif
			
EndFunction			

Function Fragment_1()								;############ STAGE 10 ############			##START
Debug.Trace("NAKED DEFEAT capturequest: stage 10 #START#")

Device = none 

if (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning) && (!cfgqst.AbortAll)

	if !cfgqst.IsPoseScenario()
	;if !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Cuffs") && !(cfgqst.DefeatTypeScenario == "DDeEvent") && !(cfgqst.DefeatTypeScenario == "Pillory")
	Marker = Alias_Marker1.GetReference()
		if !Marker
			Marker = Alias_Marker2.GetReference()
		endif

		if !Nym()
			Device = Alias_Furniture1.GetReference()
			if !Device
				Device = Alias_Furniture2.GetReference()
			endif
		endif		 
	endif 	
else	
Debug.Trace("NAKED DEFEAT capturequest: stage 10 -> abort")
SetStage (1000)
endif
		
EndFunction

Function Fragment_3()										;OUTDOOR FURNITURE 				;############ STAGE 30 ############				;END OF WHIP SCENE (OnStart)
Debug.Trace("NAKED DEFEAT capturequest: stage 30")

;if cfgqst.DefeatTypeYoke
;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[0])

SetStage(100)
;/
;else
;	cfgqst.FadeToBlack(1)
	Utility.Wait(3.0)
	if Marker || !Device										;MARKER but NO DEVICE
		cfgqst.PlayerRef.MoveTo(Marker, 1.0, 0.0, 0.0, true)	;-> move Player to Marker
		Device = CreateFurniture(Marker)						;-> move Creature Furniture at marker. Device = that furniture
	endif
	
	if calmqst.Victimcount > 0
	CreateFurnitureFollower(calmqst.Victims[0], 0)
	Furniture01.Activate(calmqst.Victims[0])
	endif
	if calmqst.Victimcount > 1
	CreateFurnitureFollower(calmqst.Victims[1], 1)
	Furniture02.Activate(calmqst.Victims[1])
	endif
	
	if Device;	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, true, true)			;I guess if Device is found outdoors
		;cfgqst.PlayerRef.MoveToInteractionLocation(Device)
		;cfgqst.PlayerRef.MoveTo(Device, 100.0 * Math.Sin(Device.GetAngleZ()), 100.0 * Math.Cos(Device.GetAngleZ()), Device.GetHeight() - 0.0, abMatchRotation = false)

		bool note = true
		while PlayerInCombat()
			if note	
			Debug.Notification("NAKED DEFEAT: PC in Combat, wait for allegiancequest")
			note = false
			endif
		Utility.Wait(0.1)
		endwhile

		if !PlayerInCombat()
		Device.Activate(cfgqst.PlayerRef)	
		else
			while PlayerInCombat()
			Utility.Wait(0.1)
			endwhile
		Device.Activate(cfgqst.PlayerRef)	
		endif
		
		cfgqst.PlayCuffsSoundRope()	;#todo play sounds matching the furniture type
		Utility.Wait(2.0)
	;	cfgqst.FadeToBlack(0)
		SetStage(100)
	else
	;	Game.EnablePlayerControls()
		SetStage(1000)
	endif
;endif	
/;
EndFunction

Function Fragment_4()									;############ STAGE 100 ############	#transition		;captivequest START
;MESSAGES & STAGES & START CAPTIVEQUEST
	Debug.Trace("NAKED DEFEAT capturequest: stage 100")	
	
	bool StartCaptiveQuest = true
				
	if cfgqst.IsPoseScenario()
	calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
	endif	

	
	;MESSSAGES
	if cfgqst.DefeatTypeScenario == "Yoke"	
	ScreenMessage("Try to wiggle free from the yoke!")
	elseif cfgqst.DefeatTypeScenario == "Armbinder"
	ScreenMessage("Try to wiggle free from the armbinder!")
	elseif cfgqst.DefeatTypeScenario == "Cuffs"
	ScreenMessage("Try to wiggle free from the cuffs!")	
	elseif cfgqst.DefeatTypeScenario == "Pillory"
	ScreenMessage("Try to wiggle free from the Pillory!")		
	elseif cfgqst.DefeatTypeScenario == "XCross"
	ScreenMessage("Try to wiggle free from the X-Cross!")
	elseif cfgqst.DefeatTypeScenario == "Stockade"
	ScreenMessage("Try to wiggle free from the Stockade!")		
	elseif cfgqst.DefeatTypeScenario == "Wheel"
	ScreenMessage("Try to wiggle free from the Wheel!")	
	elseif (cfgqst.DefeatTypeScenario == "DD")	;#DD end of mission
	ScreenMessage("They let you go in your sorry state...")	
	StartCaptiveQuest = false
	
	nade_calmquest.SetStage(1000)
	
	;elseif (cfgqst.DefeatTypeScenario == "DDeEvent")	;#DDe Stage 3
	;ScreenMessage("Will they let you go now?")
;	elseif (cfgqst.DefeatTypeScenario == "DDeEvent") || (cfgqst.DefeatTypeScenario == "DD")	;#DDe: now with struggle free
;	ScreenMessage("Try to wiggle free from the Devious Devices!")
	elseif FurnitureEvent
	ScreenMessage("Try to wiggle free!")
	endif
	
;	if (cfgqst.DefeatTypeScenario == "DDeEvent") ;#DDe Stage 4
;	nade_calmquest.SetStage(1000)	
;	else
	if StartCaptiveQuest && (!cfgqst.AbortAll)
	(nade_CaptiveQuest as nade_captivequest_qf_scr).StartQuest()
	else
	StartCaptiveQuest = true
	endif
	
	;IMPORTANT: FurnitureEvent will NOT stop capturequest (needs to be done elsewhere)
	if !FurnitureEvent 
	SetStage(1000)
	endif
	
	if (cfgqst.AbortAll)
	SetStage(1000)
	endif
	
EndFunction

	;#DDe Stage 3
	
	

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

Debug.Trace("NAKED DEFEAT capturequest: stage 1000")
LocalFurnitureFound = false

	if Furniture01
	Furniture01.DisableNoWait()
	Furniture01.Delete()
	endif
	if Furniture02
	Furniture02.DisableNoWait()
	Furniture02.Delete()
	endif
		
Stop()

EndFunction

Function Fragment_7()									;############ STAGE 21 ############	

;whipmarks	---> move elsewhere!
Debug.Trace("NAKED DEFEAT capturequest: stage 21")	
;AddWhipmarks()			;tattobaustelle

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning

;if DebugKeyAbort
SetStage (25)
;DebugKeyAbort = false
;endif

else
Debug.Trace("NAKED DEFEAT capturequest: stage 21 -> abort")
SetStage (1000)
endif

EndFunction

Function Fragment_5()			;END OF WHIPPING		;############ STAGE 25 ############		;#whip end
	Debug.Trace("NAKED DEFEAT capturequest: stage 25 (end of whipping)")
	if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning
				
		if cfgqst.DefeatTypeScenario == "DDeEvent" || (cfgqst.DefeatTypeScenario == "DD")
		Debug.Trace("NAKED DEFEAT capturequest: stage 25 (DDeEvent)")
		DoOrgasm()
		RemoveCane()							
		;SetStage(1000)
			
			if (cfgqst.AbortAll)
			SetStage(1000)
			else
			SetStage(100)
			endif
		
		else
		Debug.Trace("NAKED DEFEAT capturequest: stage 25 (first time here)")	
		DoOrgasm()
		RemoveCane()
			
			;PLAY IDLE
			
			;#baustelle: we need to account for the planned unobstructed DD equiped scenario
	
			;/ OLD POSING ROUTINE
			
			if cfgqst.DefeatTypeScenario == "Yoke"	
				if Utility.RandomInt(1,100) > 50
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[0])
				else
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[Utility.RandomInt(3,4)])
				endif
			;POLLORY - Bound Idles
			elseif cfgqst.DefeatTypeScenario == "Pillory"						
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[Utility.RandomInt(0,12)])			
			endif
				/;		
						
			if (cfgqst.AbortAll)
			SetStage(1000)
			else
			SetStage(100)
			endif			
		endif
	else
	
	Debug.Trace("NAKED DEFEAT capturequest: stage 25 (abort)")
	SetStage(1000)
	endif	
EndFunction


Function RestoreFurniture()
Debug.Trace("NAKED DEFEAT capturequest: RestoreFurniture()")
ScreenMessage("We are Restoring")
cfgqst.Immobilize(true)
;Device = Alias_Furniture0.GetReference()
if Device
Device.Activate(cfgqst.PlayerRef)
elseif cfgqst.IsNymrasGame()
Debug.Messagebox("Device = none") 
endif 

EndFunction

Function EndCaptureQuest()

if GetStage() < 1000
Setstage(1000)
endif
EndFunction

Function RestoreFurnitureFol01()
Debug.Trace("NAKED DEFEAT capturequest: RestoreFurnitureFol01()")
Furniture01.Activate(calmqst.Victims[0])
EndFunction

Function RestoreFurnitureFol02()
Debug.Trace("NAKED DEFEAT capturequest: RestoreFurnitureFol02()")
Furniture02.Activate(calmqst.Victims[1])
EndFunction


Function StartCapture()	;this starts Capturequest from Stage 500 calmquest

Start()
SetStage(20)


EndFunction

Function CreateFurnitureFollower(actor akactor, int whichfollower)

Debug.Trace("NAKED DEFEAT capturequest: CreateFurnitureFollower()")

FormList FList
int FurnitureNumber
FList = nade_ZazFurnMix

FurnitureNumber = Utility.RandomInt(0, FList.GetSize() - 1)

if whichfollower == 0
folidle01.StartDoingNothing_01(false)
Debug.Trace("NAKED DEFEAT capturequest: CreateFurnitureFollower() "+calmqst.Victims[0].GetBaseObject().GetName())
Furniture01 = akactor.PlaceAtMe(FList.GetAt(FurnitureNumber), 1, true, false)
calmqst.Victims[0].PlayIdle(cfgqst.IdlesFixHair[0]) ;RESET POSE
Furniture01.Activate(calmqst.Victims[0])
folidle01.StartDoingNothing_01(true)
elseif whichfollower == 1
folidle01.StartDoingNothing_02(false)
Debug.Trace("NAKED DEFEAT capturequest: CreateFurnitureFollower() "+calmqst.Victims[1].GetBaseObject().GetName())
Furniture02 = akactor.PlaceAtMe(FList.GetAt(FurnitureNumber), 1, true, false)
calmqst.Victims[1].PlayIdle(cfgqst.IdlesFixHair[0])	;RESET POSE
Furniture02.Activate(calmqst.Victims[1])
folidle01.StartDoingNothing_02(true)
endif

EndFunction

Bool Function IsBukkakeAllowed()

if BukkakeAllowed
return true
elseif !BukkakeAllowed
return false
endif

EndFunction

Bool Function IsWhippingAllowed()

if WhippingAllowed
return true
elseif !WhippingAllowed
return false
endif

EndFunction


;bool WhippingAllowed = true
bool BukkakeAllowed
String FurnitureType

ObjectReference Function CreateFurniture(ObjectReference akRef = None)		; #furniture		;NYMRA this creates the ZAP devices. Maybe can change from ESP to JSON? maybe make them permanent?
	
	Debug.Trace("NAKED DEFEAT capturequest: CreateFurniture(Player)")
	
	ObjectReference r
	int f
	WhippingAllowed = false
	BukkakeAllowed = false
	
	if !akRef
		akRef = cfgqst.PlayerRef
	endif
	
	
	;----- OLD -----------------------------------------------------------------------
	if akRef
		
		;/
		FormList FList
		;expand this!
		if !(cfgqst.DefeatType == "Giants") && !(cfgqst.DefeatType == "Trolls")
			int selection = Utility.RandomInt(1, 11)
		
			;pole
			if selection < 4	;(1-3)
			FList = nade_ZazFurnPole
			
			;crux
			elseif selection == 4
			FList = nade_ZazFurnCruxRope
			
			;mix
			elseif (selection > 4) && (selection < 10) ;5 - 8
			FList = nade_ZazFurnMix
			
			;wooden furniture stuff
			elseif (selection == 10) && !cfgqst.DefeatViaSlavery
				if cfgqst.PlayerRef.IsInInterior() 
				FList = nade_ZazFurnMonster_Indoor	;massive wood pieces
				else
				FList = nade_ZazFurnMonster_Outdoor	;trees
				endif
			;struggle on floor
			elseif selection == 11
				if cfgqst.PlayerRef.IsInInterior()
				int selection2 = Utility.RandomInt(1, 2)
					if selection2 == 1
					FList = nade_ZazFurnRopeGround
					WhippingAllowed = true
					elseif selection2 == 2 
					FList = nade_ZazFurnRopeUp	
					endif
				else
				FList = nade_ZazFurnRopeGround
				WhippingAllowed = true
				endif
			;fallback	
			else
			FList = nade_ZazFurnMix
				
				
				
			endif
		;giants and trolls use other furniture
		elseif (cfgqst.DefeatType == "Giants") || (cfgqst.DefeatType == "Trolls")	
			if cfgqst.PlayerRef.IsInInterior()
			FList = nade_ZazFurnMonster_Indoor ;massive wood pieces
			else
			FList = nade_ZazFurnMonster_Outdoor ;trees
			endif
		endif
		
;	endif

		if (DeviceIndex < 0) || (DeviceIndex >= FList.GetSize())
			DeviceIndex = Utility.RandomInt(0, FList.GetSize() - 1)
		endif
		/;
	;<<<<<<<<<<<<<< OLD -----------------------------------------------------------------------

	
	;>>>>>>>>>>> NEW  -----------------------------------------------------------------------
		
		;#PANDORA
		;BROKEN 
		
	
		;IMPORTANT
		
		;"RopeDancer"			05059AD8			-- uses wrong Animation From Torture Rack		
		;"Rope Down"			05059B5C			-- uses wrong Animation From Torture Rack	
		;"Rope Up"				05059B5A			-- uses wrong Animation From Torture Rack	
		;Slave MILL				00056972			-- uses wrong Animation From Torture Rack
		;Sacrificial Pillars 	00059B48					-- uses wrong Animation From Torture Rack ---> and all variantes
	
		;IMPORTANT with different "issue"
		;Pole Bondage 1  		 0004563C			-- invisible PC ---> and all variantes
		;Bondage Pole 			00044AB2			-- CTD  ---> and all variantes
		
		;LESS IMPORTANT 
		;Punishment Pillory Kneeling 00059AE4			-- uses wrong Animation From Torture Rack ---> and all variantes
		;Table Ruines Sacrificail Makeshit 02 	00059B58	-- uses wrong Animation From Torture Rack ---> and all variantes
		;WaterWheelBig			0005696C				-- uses wrong Animation From Torture Rack
		;WaterWheelMini			00056955				-- uses wrong Animation From Torture Rack
		;CircusWheel			00059B52					-- uses wrong Animation From Torture Rack ---> and all variantes
		;Trophy Wife			00059B4E					-- uses wrong Animation From Torture Rack ---> and all variantes	
		;SLave Table Fruits		00059B64			-- uses wrong Animation From Torture Rack ---> and all variantes
		;Saddle Rack Dual 		00059AE0			-- uses wrong Animation From Torture Rack
		
		;Vertical Stocks X-Cross 	00026D2D		-- wrong animation? arms too wide, dont go through the arm holes --- can fixed by patch
		
		FurnitureType = "none"
			
		;GET FURNITURE LIST 
		if cfgqst.DefeatType == "Spriggans"
			FurnitureType = "Trees"
			
		elseif cfgqst.DefeatType == "Trolls" || cfgqst.DefeatType == "Giants" || cfgqst.DefeatType == "Werewolves" || cfgqst.DefeatType == "Gargoyles"
			
			if cfgqst.PlayerRef.IsInInterior() 
			FurnitureType = "Monsters"
			elseif D100(50)
			FurnitureType = "Trees"
			else
			FurnitureType = "Monsters"
			endif
			
		elseif cfgqst.PlayerRef.IsInInterior()
			if D100(30)
			FurnitureType = "Indoor"
			else		
			FurnitureType = "Mix"
			endif
		else	
			if D100(30)
			FurnitureType = "Outdoor"
			elseif D100(5)
			FurnitureType = "Trees"
			else 	
			FurnitureType = "Mix"
			endif
		endif
			
		;GET FURNITURE 
		
		;----- MIX -----;
		if FurnitureType == "Mix"
		f = utility.randomint(1,51) 

			if f == 1
			;"Stocks Kneeling"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505747D, "ZaZAnimationPack.esm")), 1, true, false) 
			WhippingAllowed == false
			elseif f == 2
			;"Bondage Pole"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 3										
			;"Pole Bondage HUB"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508535E, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 4
			;"Pole Bondage HUHB"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05085363, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 5
			;"Whipping Pole BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05070961, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 6
			;"Bondage Pole"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044AB2, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 7
			;"Restraint Pole"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508B4FE, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 8
			;"Captive Bound Kneeling"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05078048, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == false				
			elseif f == 9
			;"Pole Bondage 3"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563E, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 10
			;"Pole Bondage 4"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563F, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 11
			;"Stocks Sitting"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057465, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == false				
			elseif f == 12
			;"Pole Bondage Upright Down Hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 13
			;"Stocks Chair"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057493, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 14
			;"Pole Bondage Hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 
			
			elseif f == 15
			;"Wnc Strappado"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505ABC5, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 5ABC6
						
			elseif f == 16
			;"Pillory H"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503FDEF, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 3FDF2
			
			elseif f == 17
			;"TorturePole 11 KN BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503846C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 3847E
			
			elseif f == 18
			;"Whipping Pole FF" Hanging Up a Pole, Front exposed, feet in the air
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507095A, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 7095F
			
			elseif f == 19
			;"Whipping Pole BF" Hanging Up a Pole, Back exposed, feet in the air - dark wood
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0506B748, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID		 ID 7095B

			elseif f == 20
			;"Torture Pole 9 BF" Standing at Pole, hands tiegt flat to the side, on toes, back exposed
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05038470, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 38470
			
			elseif f == 21	;POLE A (wrong color)
			;"Pole Bondag 6" 		Sitting at Pole, hands back, feet straight
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045641, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 60E7D
					
			elseif f == 22 ;POLE A
			;"Pole Bondag 4" 		"TorturePole A" ;FAVOURTIE YAKUZA
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045627, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562D
			
			elseif f == 23 ;POLE A (round, tall, beige)																	
			;"Pole Bondage 4" 		"TorturePole A" ;Front exposed, on toes
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045625, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562B
			
			elseif f == 24 ;POLE A (round, tall, beige)	
			;"Pole Bondage 3" 		"TorturePole A" ;Front exposed, on toes											
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045626, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562C
	
			elseif f == 25 
			;SLave Stocks  			;wooden beams, strugle left and right, front exposed							;<<< BASE ID 		ID 634E3
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050634E2, "ZaZAnimationPack.esm")), 1, true, false)			
						
			elseif f == 26 
			;Punishment Pillory Kneeling 			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE4, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 59AE5
				
			elseif f == 27 	
			;Stocks Standing Edged			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505746F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 57472		
						
			elseif f == 28 	
			;Gibbet Large Chrome		- standing in gibbet, gibbet is on floor	
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05088F0F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 88F10

			elseif f == 29 		
			;Pillory (Large, not similar)	
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0500FDE1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 0FDE2

			
			elseif f == 30 		
			;Captive Bound Kneeling		;for Bukkake
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05077ADD, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 77ADE
			;NO WHIPPING
			
			elseif f == 31 		
			;Gibbet Small Low Hanging, Kneeling Bound inside
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05038F81, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 38F95
			;NO WHIPPING
			
			elseif f == 32 		
			;Gibbet Ultra Slim Standing
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039B00, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 39B01

			elseif f == 33 			
			;Restraint Shackle Pole 1 (Static :( 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503B12F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 3B141
			
			elseif f == 34 			
			;Gibbet Sitting BOund feet sticking out 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039ACB, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 39AD0

			elseif f == 35 			
			;Gibbet Kneeling BOund hands sticking out 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039558, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID  39559

			elseif f == 36 			
			;Restraint Pole Shackle 6 (STATIC)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503B134, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 3B146

			elseif f == 37 			
			;Pillory (X Pillory laying horizontally. Use with an animation pack for scene)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503FDFF , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 3FE99

			
			elseif f == 404 			
			;Punishment Pillory Kneeling		#BROKEN
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05051566 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 46C9F
			
			elseif f == 39  || f == 38			
			;Slave Auction Stage QF - painful bound in cage (TEST)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0506CCE1 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 6CCE2

			elseif f == 40 			
			;Stocks Standing Edged
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505746F , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57472

			elseif f == 41 			
			;Stocks SChair (my favourite) in Wood
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057491 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57492
			
			elseif f == 42 			
			;Stocks Sitting, legs spread, hands behind.
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057483 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57484
			;NO DILDOS
			
			elseif f == 43 			
			;Stocks Sitting, legs spread, hands in stock too (duplicate maybe).
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057488 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 5748A
			;NO DILDOS
			
			elseif f == 44 			
			;Stocks Kneeling, legs spread, hands behind too (duplicate maybe).
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505747D , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 5747E
			;NO DILDOS
			
			elseif f == 45
			;"TorturePole 7 BF" ;standing, ass /back exposed, ankle and wrist ropes, NO breast ropes
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503848C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			
			elseif f == 45
			;"TortureChainingPole" kneeling in a wooden device, arms above, breasts exposed.
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044AAC, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
	
			elseif f == 46
			;"TorturePole D" bend over to the front, arms behind back. Animated - suitable for FuckMachine Dildo
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504091C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID

			elseif f == 47
			;"TorturePole B" free hangning, back and ass exposed, arms above head, animated slow
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504091A, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			
			elseif f == 48
			;"TorturePole B" free hangning, back and ass exposed, arms above head, animated slow
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05040919, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
				
			elseif f == 49
			;"Chained Under The Gallow 4" - free hanging, chaines, chain cuffs, off the ground, slow animated NICE
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EE, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark

			elseif f == 50
			;"Pyre Pole" - hanging free, beasts exposed, feet off ground. no fuck belts
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505D272, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark

			elseif f == 51
			;"Tilted Wheel" - NICE!!! ADD this To Wheel Scenario #TODO - wheel Pose legs spread!
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504F5D3, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark
																	
	
			endif
		
		;<<< - MIX		
			
			
		;----- INDOOR -----;			
		elseif FurnitureType == "Indoor"			
		f = utility.randomint(1,12) 
			if f == 1 || f == 3
			;"Bar Stool"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE2, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 2
			;"Rope Up"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B5A, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 404		;BUUUGED
			;"Rope Down"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B5C, "ZaZAnimationPack.esm")), 1, true, false) 	;BUGGED? uses Rack Anim
			elseif f == 4
			;"RopeDancer"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AD8, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 
			elseif f == 5
			;"Dream Catcher"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B62, "ZaZAnimationPack.esm")), 1, true, false) 	;<<< BASE ID
			elseif f == 6
			;"Wooden Pony"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050521BD, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 521BD
			elseif f == 7	
			;"Chair Bondage M RV"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05048888, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 48889
			elseif f == 8
			;"Struggle Rope"	;gallow rope on toes						
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505EDD0, "ZaZAnimationPack.esm")), 1, true, false) 	;<<< BASE ID ;BASE ID 	ID 5EDD1
				
			elseif f == 9			
			;"Rack"				;Streckbank Diagonal						
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0500E2BF, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 0E2C0
			;NoWhipping
			;Parallel Markers for Bukkake 
			elseif f == 10		
			;"Chair Sit Tied"				Stuhl, Hands on Back, Legs together					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059ADC, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ; ID 59ADD
			;no Dildos
			
			elseif f == 11			
			;"Chair Bondage RV"				Stuhl, Hands on Back, Tits towards Lehne					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05048882, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ; ID 4888B
			;no Dildos
								
			elseif f == 12				
			;"Torture Chair"				Chair with nails 					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504CA3F, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 
			;no Dildos
			
			elseif f == 13				
			;"Vampire Supply"				Upside Down hanging, very slow animated  					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B60, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 
			;no Dildos

			endif
			;<<< Indoor 

		;----- OUTDOOR -----;
		elseif FurnitureType == "Outdoor"
			f = utility.randomint(1,15) 
			 
			if f == 1
			;"Gibbet Small"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039554, "ZaZAnimationPack.esm")), 1, true, false) 
			WhippingAllowed == true
			elseif f == 2
			;"Cross Roped Pose 01"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA6, "ZaZAnimationPack.esm")), 1, true, false) 
			WhippingAllowed == true
			BukkakeAllowed == false
			elseif f == 3
			;"Cross Roped Pose 02"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA7, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == true
			BukkakeAllowed == false		

			elseif f == 4
			;"Cross Roped Pose 03"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCB4, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == true
			BukkakeAllowed == false		
			
			elseif f == 5
			;"Crux Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BC91, "ZaZAnimationPack.esm")), 1, true, false) 
			WhippingAllowed == true
			BukkakeAllowed == true
			elseif f == 6
			;"Crux Rope II"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BC90, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == true
			BukkakeAllowed == true				
			elseif f == 7
			;"Crux Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05026D3C, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == true
			BukkakeAllowed == true		
			
			elseif f == 404	;#BROKEN
			;"Sacrificial Pillars"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B48, "ZaZAnimationPack.esm")), 1, true, false)
			WhippingAllowed == true			
		
			elseif f == 9 || f == 8 		;This one works
			;"Saddle Rack"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE0, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 10 
			;"Chained Under the Gallow 4" 			Hanging free, legs spread, chained, swinging
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EE, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 455FB	
			
			elseif f == 11
			;"Chained Under the Gallow 5" 			Static, bend over, ass up, arms up
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455D9, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 455E0
				

			elseif f == 12 	
			;Pole Bondage Upright Down hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 45665			
			
			elseif f == 13 	
			;Bondage Pole Hanging (hanging over fire, high up)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 7DC26 		
				
			elseif f == 14 	
			;Restraint Pole - Standing (BIG POLE, hands over head straight, standing, front exposed)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508AF94, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 8AF97		
					
			elseif f == 15 	
			;Restraint Pole kneeling (BIG POLE, hands over head straight, kneeling, front exposed) animated
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508AA25, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 ID 8AF95	

			elseif f == 16 	
			;"Chained Under the Gallow 2" spread, standing on ground
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EC, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 	
				
			elseif f == 17 	
			;"Chained Under the Gallow 1" straight legs, standing on toes
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EB, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 	
			
			
			endif
		;<<< Outdoor 	
			
			
		;----- TREES -----;		
		elseif FurnitureType == "Trees"
	
		f = utility.randomint(1,10) 
			if f == 1
			;"Tree Bondage Aspen Tree BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF2, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 2
			;"Tree Bondage Aspen Tree FF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF0, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 3
			;"Tree Bondage Aspen Trees Wedged"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF8, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 4
			;"Tree Bondage Aspen Tree Hanging Wedged"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CFA, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 5
			;"Tree Bondage Aspen Tree BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508692D, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 6
			;"Tree Bondage Aspen Tree FF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050863C1, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 7
			;"Tree Bondage Cum Cum"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046D03, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 8
			;"Tree Bondage Marple Tree Roped"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CEC, "ZaZAnimationPack.esm")), 1, true, false) 
			elseif f == 9
			;"Tree Bondage Spruce Trees Laying BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CFC, "ZaZAnimationPack.esm")), 1, true, false)
			elseif f == 10
			;"Tree Bondage Aspen Tree Without Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05049E7D, "ZaZAnimationPack.esm")), 1, true, false)
			endif
				
		;----- MONSTER (rough wooden Furniture) -----;		
		elseif FurnitureType == "Monsters"
		
			f = utility.randomint(1,16) 	
			
			if f == 1
			;Bondage Pole Hanging (High)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			elseif f == 2
			;Cube Pole FF
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507C65D, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			elseif f == 3
			;X Cross (thin wood)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050500B1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 500B2
			elseif f == 4
			;Bondage Table
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503F2E1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 3F2E1
			
			elseif f == 404	
			;Sacrificial Pillars 		;#BROKEN
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B48, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 6 || f == 5	
			;Pole Bondage 6 dark
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045641, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
				
			elseif f == 7	
			;Pole Bondage 5 dark
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050FF8F4, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
						
			elseif f == 9		
			;Cross Roped Pose 03
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA8, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 10	
			;PCross Roped Pose 02
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA7, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 11	
			;Cross Roped Pose 01
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA6, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 

			elseif f == 12 			
			;Captive Bound Kneeling		
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05077ADD, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 77ADE
			;NO WHIPPING
			
			elseif f == 13 			
			;Pole Bondage 1		
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 14 			
			;Pole Bondage 2				
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563D, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			elseif f == 15 			
			;Pole Bondage 4			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
				
			elseif f == 16 				
			;Pole Bondage 3			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563E, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			
			endif
			
		;----- FUCKING MACHINES -----;		
		elseif FurnitureType == "FuckingMachines"
			
			f = utility.randomint(1,5) 	
			
			if f == 1
			;Stockade Fucking "Fuck Machine"		sitting, hands in front bound
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503C79D, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			elseif f == 2
			;Hanging, Fucked in Ass "Fuck Machine" (STATIC) --> add Dildo Vaginal?
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503C79C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			elseif f == 3	
			;On all Fours" Fuck Machine" (STATIC) Fucking in Pussy (add ass Plug)
			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503F84C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 500B2
			elseif f == 4
			;Vertical Stocks Machine, Stockade Fucking Fuck Machine" Fucking in Pussy--->
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503F84C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 3F2E1
				
			elseif f == 5	
			;BIG BROWN AND GOLD FUCK MACHINE TABLE: "Wnc Machine Rape MK II"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505ABBC, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			endif
		endif	
		
			;DEATH BY GIANTS (STICK ON FIRE)
			;WNC IMPALED 5B166		---> need reference to place inside of the big fire pyres
					
			;CRUX NAILED TO DEATH
			;Crux Nailed 28419 - BaseID 26D3D
			
			;DOGS / DOG Kennel
			;Kennel Bondage ID 7D6AD  BASE ID 7D6AC
			
			;DEATH EATEN
			;Spit Roast, Static with Fire 28FDB BASE ID 26D41
				
			;ObjectReference[] FurnitureArray 
			
			;FURO TUB I 
			;Furo Tub I No Penetration, needs dildos - 28FEE BaseID 26D3A
			
			
			;GHOSTS/MAGIC
			;Gibbet Standing Large transparent 39AD9 BaseID 39AD8
			
			;INDOOR AND OUTDOOR
			;if FurnitureType == ("Outdoor" || "Indoor")
			;zbfStocksKneelingAnkled_DarkWood "Stocks Kneeling" [FURN:0505747D]
			;zbfBondagePoleSittingStruggling "Bondage Pole" [FURN:05044ABA]
			;zbfPoleBondageHandsUpBehind_DarkWood "Pole Bondage HUB" [FURN:0508535E]
			;zbfPoleBondageHandsUpHighBehind_DarkWood "Pole Bondage HUHB" [FURN:05085363]
			;zbfWhippingPoleBackToFace_MidWood "Whipping Pole BF" [FURN:05070961]
			;zbfBondagePoleStandingStruggling "Bondage Pole" [FURN:05044AB2]
			;zbfEMPoleHanging_DarkWood "Restraint Pole" [FURN:0508B4FE]
			;zbfCaptiveBoundKneeling_DarkWood "Captive Bound Kneeling" [FURN:05078048]
			;zbfPoleBondage03_DarkWood "Pole Bondage 3" [FURN:0504563E]
			;zbfPoleBondage04_DarkWood "Pole Bondage 4" [FURN:0504563F]
			;zbfStocksSittingAnkledAndWristed "Stocks Sitting" [FURN:05057465]
			;zbfPoleBondageUprightDownHanging_DarkWoor "Pole Bondage Upright Down Hanging" [FURN:05045662]	INDOOR
			;zbfStocksBitchesChairMetalHigh "Stocks Chair" [FURN:05057493]
			;zbfHorizontalPoleBondageOutdoor_FarmWoodBrown "Pole Bondage Hanging" [FURN:0507DC23]
			
			;TEST THIS
			;zbfSlaveStocks_FarmWood "Slave Stocks" [FURN:050634E2]
			;zbfPyre "Pyre Pole" [FURN:0505D272]
			;zbfCubePoleOutdoorFaceToFaceStrug_FarmWoodBrown "Cube Pole FF" [FURN:0507C65D]
			;zbfCubePoleOutdoorBackToFaceStrug_FarmWoodBrown "Cube Pole BF" [FURN:0507C65E]
			
			;MONSTERS OUTDOOR
			;TREES
			;zbfTreeBondageAspenTreeBackFace "Tree Bondage Aspen Tree BF" [FURN:05046CF2]
			;zbfTreeBondageAspenTreeFrontFace "Tree Bondage Aspen Tree FF" [FURN:05046CF0]
			;zbfTreeBondageAspenTreesWedged "Tree Bondage Aspen Trees Wedged" [FURN:05046CF8]
			;zbfTreeBondageAspenTreesWedgedHanging "Tree Bondage Aspen Tree Hanging Wedged" [FURN:05046CFA]
			;zbfTreeBondageAspenTreeYBondageStrugglingFB "Tree Bondage Aspen Tree BF" [FURN:0508692D]
			;zbfTreeBondageAspenTreeYBondageStrugglingFF "Tree Bondage Aspen Tree FF" [FURN:050863C1]
			;zbfTreeBondageCumCum "Tree Bondage Cum Cum" [FURN:05046D03]
			;zbfTreeBondageMarpleTreeRoped "Tree Bondage Marple Tree Roped" [FURN:05046CEC]
			;zbfTreeBondageSpruceTreesLayingRopedBackFaced "Tree Bondage Spruce Trees Laying BF" [FURN:05046CFC]
			
			;OUTDOOR ONLY --------------------------------------
			;zbfMGibbetSmallLongPole "Gibbet Small" [FURN:05039554]
			;zbfCrossRopedPose01_Brown "Cross Roped Pose 01" [FURN:0503BCA6]
			;zbfCrossRopedPose02_Brown "Cross Roped Pose 02" [FURN:0503BCA7]
			;zbfCruxLight_DarkWood "Crux Rope" [FURN:0503BC91]
			;zbfCruxLightII_DarkWood "Crux Rope II" [FURN:0503BC90] - no WHIP no BUKKAKE
			;zbfCruxLight "Crux Rope" [FURN:05026D3C] - no WHIP no BUKKAKE
			;zbfSacrificialPillars "Sacrificial Pillars" [FURN:05059B48] no BUKKAKE
			;STABLES
			;zbfSaddleRack "Saddle Rack" [FURN:05059AE0]
			
			;MAKE SCENARIO? Slave Labour?
			;zbfSlaveMillWithStone "SlaveMill" [FURN:05056977]

			;INDOOR ONLY --------------------------------------
			;zbfBarStool "Bar Stool" [FURN:05059AE2] STATIC - BUKKAKE
			;zbfRopeUp "Rope Up" [FURN:05059B5A]
			;zbfRopeDown "Rope Down" [FURN:05059B5C]
			;zbfRopeDancer "RopeDancer" [FURN:05059AD8] 
			;zbfDreamCatcher "Dream Catcher" [FURN:05059B62]
			;zbfWoodenPonyStandingSingle03 "Wooden Pony" [FURN:050521BD]
			
			;ANIMALS
			;zbfBuriedIntoTheGround "Buried" [FURN:0508076B]
			
			;DOG
			;zbfDogsHomeCab "DogsHomeCab" [FURN:0504FB49]
			;zbfKennelBondage "Kennel Bondage" [FURN:0507D6AC]
			;zbfKennelStandingTeasing "Kennel Standing Teasing" [FURN:0507D6AA]
			
			;FURO (FUCKING MACHINESS!!! ???)
			;zbfFuroTub01 "Furo Tub I" [FURN:05026D3A]
			
			;SLAVE MILL
			;zbfSlaveMillWithStone "SlaveMill" [FURN:05056977]
			
			;------- NOT USED --------------------------------------
			
			;BORING, SORT OUT 
			;zbfXCrossHeavyFBstruggle_DarkWood "X Cross" [FURN:05041A06]
			;zbfCruxMiniLow "Crux Mini Low" [FURN:05085E57] ----> boring
			;zbfSmallWheelExtreme01 "Low Wheel" [FURN:0504F5D1] (Scenario covers it)
			
			;Make Scenario: - No Whipping
			;zbfBitchOnTheGroundStruggling_Rope "Free Hogtie Hell" [FURN:05049E8D]
			;zbfHogtiePlace01_DarkWood "Hogtied1" [FURN:050455A8]
			;zbfHogtiePlace02_DarkWood "Hogtied2" [FURN:050455A9]
			;zbfHogtiePlace03_DarkWood "Hogtied3" [FURN:050455AA]
			;zbfHogtiePlace04_DarkWood "Hogtied4" [FURN:050455AB]
			
			;zbfGallowPoleBrown "Gallow" [FURN:0505DD68] -----> dont use anymore for this (feet always in the ground)
			
			;------------------------------------------------------------


			; r = akRef.PlaceAtMe(FList.GetAt(DeviceIndex), 1, true, false) ;ORIGINAL
			
		if !r
		ScreenMessage("Naked Defeat: furniture = none, using Backup - #ERROR Code: "+f+" "+FurnitureType)
		;ScreenMessage("Naked Defeat: furniture = none, using Backup - #ERROR FurnitureType: "+FurnitureType)
 
		
		Debug.Messagebox("Naked Defeat: furniture = none, using Backup - #ERROR Code: "+f+" "+FurnitureType)
		;BackUP: "Bondage Pole"
		r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm")), 1, true, false) 
		endif
		
		if r
		Debug.trace("NAKED DEFEAT capturequest: Device: "+f+" "+FurnitureType)
			r.SetAngle(0.0, 0.0, r.GetAngleZ())
		
			if cfgqst.LastAddedDevice
			Debug.trace("NAKED DEFEAT capturequest: LastAddedDevice: "+f+" "+FurnitureType)
				cfgqst.LastAddedDevice.DisableNoWait()
				cfgqst.LastAddedDevice.Delete()
			endif
			cfgqst.LastAddedDevice = r
		endif
		return r
	else
		Debug.Messagebox("Naked Defeat: furniture = none - #ERROR Code: "+f)
		return None
	endif
	
EndFunction




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
	Debug.Notification("NAKED DEFEAT capturequest: Whipper: "+cfgqst.GetActorInfo(a))	
	;Debug.Notification("NAKED DEFEAT capturequest: Whipper: "+cfgqst.GetLeveledActorBaseName(a))
	endif
	;Debug.Trace("NAKED DEFEAT capturequest: Whipper: "+cfgqst.GetActorInfo(a))	
	Debug.Trace("NAKED DEFEAT capturequest: Whipper: "+cfgqst.GetLeveledActorBaseName(a))
		
 
	
	
	
	if a
		if !a.IsPlayerTeammate()
			if a.IsEnabled()
				if !a.IsDead()
					if cfgqst.IsHumanoid(a)
						if cfgqst.ShowDebugMessages
							Debug.Notification("Whipper = "+cfgqst.GetLeveledActorBaseName(a))
						endif	
						return true
					else
						Debug.Notification("Whipper = Non-humanoid ("+cfgqst.GetLeveledActorBaseName(a)+")")
						return false
					endif
				else
					Debug.Notification("Whipper = Dead ("+cfgqst.GetLeveledActorBaseName(a)+")")
					return false
				endif
			else
				Debug.Notification("Whipper = Disabled actor ("+cfgqst.GetLeveledActorBaseName(a)+")")
				return false
			endif	
		else
			ScreenMessage("Your Follower does not want to whip you...")

			return false
		endif	
	else
	ScreenMessage("Fortunatly nobody feels like whipping you...")
	
	return false
	endif
EndFunction

bool tattoo = false

;		bool function simple_add_tattoo(Actor target, string section, string name, int color = 0, bool last = true, bool silent = false, float alpha = 1.0) global
;	bool function simple_remove_tattoo(Actor target, string section, string name, bool last = true, bool silent = false) global

Function AddWhipmarks()		;tattobaustelle V02 -> too many tattoos, reduce to 1 (V03)

	Debug.trace("NAKED DEFEAT: WhipMarks Started")
	
	if cfgqst.WhipMarks && D100(50)
	SlaveTats.simple_remove_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", true, true)
	SlaveTats.simple_add_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", 0, true, true, 1.0)
	fadeTattoos.simple_doAlphaFadeFor("Whipmarks", "Whipmarks Set", cfgqst.WhipmarksDur)
	cfgqst.SyncTattoos()
	endif

EndFunction


Function DoOrgasm()											;IMPROVE THIS
	SendModEvent("Moan")
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

bool Function PlayerInCombat()
if cfgqst.PlayerRef.IsInCombat() 
return true
else
return false
endif
EndFunction

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

;bool startWhipQuest_01 = false

Event OnUpdate()	;#update

if !DebugKeyAbort
;AddWhipmarks()	
endif
DebugKeyAbort = false


EndEvent

Bool Function IsFurnitureOnVehicle()

if LocalFurnitureFound
return false
else
return true
endif
EndFunction


;BASE FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
bool Function D100(float chance)	;#diceroll	;#d100

if Utility.RandomInt(1, 100) <= chance
return true
else
return false
endif
EndFunction

Function DebugTrace(String Text1)

Debug.Trace(Text1)

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
	Debug.trace("NAKED DEFEAT capturequest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT capturequest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT capturequest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#DebugMessage
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT capturequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT capturequest: (#trace NYM) "+Text2)
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

