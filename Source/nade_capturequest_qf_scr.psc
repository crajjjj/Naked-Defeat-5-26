
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
nade_defeatquest_qf_scr Property defqst Auto
nade_storage_qf_scr Property storqst Auto
nade_slavery_qf_scr Property slaveqst Auto
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


Float [] Property Furniture_PlacementAngle_ARRAY Auto
Float [] Property Furniture_PlacementHeight_ARRAY Auto
Form [] Property Furniture_Object_ARRAY Auto 
String [] Property Furniture_Name_ARRAY Auto 

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
Furniture Platforms_CommonTable021 	;000E2504	;Medium Rectangular Table 	 2x1 m

Furniture Platforms_CommonTableSquare01 ;0002F239 	;small SQUARE Table 	 1x1 m
Furniture Platforms_CommonTableRound01 ;0002EC1F 	;small ROUND Table       1x1 m
Furniture Platforms_FarmTable01 ;000C234D 			;Medium long Table, for Pillory? a bit rugged	 1,2x 2,5 machine

ExteriorWoddenTable01 - Table made of thin logs, primitive (Falmers, Trolls)


BEAR TRAP 0007144D 

CHAIR: Ordinary, Normal Pose 000B9E01 

Wooden Bar Stool 00074EC6

Wooden Bar Stool 00074EC6

Noble Dividier (WALL SEX) 000C84BE


GOLDEN PLATTFORM DWEMER: 0008D5FB ;like round table


WASSERTROG: 0005157A HorseThrough01

MetalCage01 000AA041 

MetalCageDoor: 000AA043 
MetalCageLongDouble01 000CE0AD
MetalCageLongGate01 000CE0AB

MetalCageLongSingle01 000CE0AD

ImpWallCage01 00052E9D

/;

ObjectReference FurniturePlatform 

Function CreatePlatform(String PlatformName, Float Elevation, Float PosForward, Float Rotation, String Special)		;#CreatePlatform 

	;01 - Get and Place Platform 
	if PlatformName == "Table 1x1"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0002F239, "Skyrim.esm")), 1, true, false) 	;CommonTableSquare01
	
	elseif PlatformName == "Table 0.5x0.5"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0002136D, "Skyrim.esm")), 1, true, false) 	;UpperNightStand01

	elseif PlatformName == "Table 2x1"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x000E2504, "Skyrim.esm")), 1, true, false) 	;CommonTable02

	elseif PlatformName == "Bar Stool"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0002BCD5, "Skyrim.esm")), 1, true, false) 	;WoodenBarstool01Static
	
	elseif PlatformName == "Table small round"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0002EC1F, "Skyrim.esm")), 1, true, false) 	;CommonTableRound01

	elseif PlatformName == "Arcane Enchanter Big"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x000BAD0D, "Skyrim.esm")), 1, true, false) 	;ArcaneEnchanter
	
	elseif PlatformName == "Barrel Standing"
	FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0010C0E3, "Skyrim.esm")), 1, true, false) 	;Barrel02Static

	endif 
	
	
	;02 - Adjust Platform 
	if FurniturePlatform
	;cfgqst.PlayerRef.PlaceAtMe(TempFurniture)
	FurniturePlatform.MoveTo(calmqst.VehiclePlayer, PosForward * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), PosForward * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Elevation) 
	FurniturePlatform.MoveTo(calmqst.VehiclePlayer, PosForward * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), PosForward * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), Elevation - FurniturePlatform.GetHeight()) 	
	FurniturePlatform.SetAngle(0.0, 0.0, calmqst.VehiclePlayer.GetAngleZ())
	else 
	NymTrace("#ERROR Platform "+PlatformName+" is NONE")  
		if Nym()
		Debug.MessageBox("#ERROR Platform "+PlatformName+" is NONE") 
		endif 
	endif 
	
EndFunction 

Function RemovePlatform()
	
	if FurniturePlatform
	FurniturePlatform.DisableNoWait()
	FurniturePlatform.Delete() 
	FurniturePlatform = none 
	endif 
	
EndFunction 


;CHAIR simple: 0006E7A8 - hands on thigh

;STONEFLOOR: FarmIntLHBase02 000F484F ;PERFECT Big, Flat, has a step

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

	;RegisterForKey(cfgqst.DefeatKey) 	;removed: both OnKeyDown handlers in this script are commented out, the DefeatKey is handled centrally in nade_configquest_scr

	Debug.Trace("NAKED DEFEAT capturequest: stage 20")
	Debug.Trace("NAKED DEFEAT capturequest: DefeatTypeScenario: "+cfgqst.DefeatTypeScenario)

	if !Nym()
	Device = Alias_Furniture0.GetReference() ;OLD REMOVE 
	endif 
		
	;----- DD Check --------------------------------	
	if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
	cfgqst.DefeatTypeScenario = "DD"
	endif 
	
	
	
	if !cfgqst.DefeatViaSlavery ;still dont get this 

		; ---- DD - Already Equipped ---- ;
		if (cfgqst.DefeatTypeScenario == "DD")
		;already bound in Devices, do nothing
		FurnitureEvent = true
		; ---- DD - Get Equipped here (by MCM) ---- ;  ;ADD DD OUTFITS HERE! 
		elseif !cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DD") && D100(cfgqst.DefeatDDeProb) 	
		Debug.Trace("NAKED DEFEAT capturequest: DD Random Event")
						
		cfgqst.DefeatTypeScenario = "DD"	
		
			Bool WearingDDs = false
			Bool WearingDDs_HeavyBondage = false 
								
			if cfgqst.ModDDframework && cfgqst.DefeatTypeScenario == "DD"		;#DDD

				if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
				WearingDDs = true 
				endif 
				
				if nade_DDint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
				WearingDDs_HeavyBondage = true 
				endif 
				
				FurnitureEvent = true
			
				if !WearingDDs
				nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "Random")
				elseif WearingDDs && !WearingDDs_HeavyBondage
					int i = Utility.RandomInt(1,9)
					Debug.Trace("NAKED DEFEAT capturqst["+storqst.Defeat_ID+"]: AddDefeatBinds() - Add DDevices Random: "+i)
					if i == 1
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Yoke")
					elseif i == 2
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke")
					elseif i == 3
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Breast Yoke")
					elseif i == 4 			
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Prisoner Chains")
					elseif i == 5
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Manacles")
					elseif i == 6 
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Rope Armbinder")
					elseif i == 7 
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Black Leather Straitjacket Topless")
					elseif i == 8 
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke (Fiddle)")
					elseif i == 9 
					nade_DDint.EquipDDtoActor(cfgqst.PlayerRef, "DD Hooked Elbow Shackles")
					endif 
				endif 
			endif 
		endif

	;FOR SLAVERY we currently do NOT use the DD Scenario (until we wiggle free of them)
;	elseif cfgqst.DefeatViaSlavery && cfgqst.DefeatTypeScenario == "DD"
;	cfgqst.DefeatTypeScenario = "NoScenario"
;	cfgqst.RemoveAllDDevices(false, "zad_DeviousGag", "zad_DeviousHood", "zad_DeviousPiercingsNipple", "zad_DeviousPiercingsVaginal", "" )	
	endif 
	
	;STILL NEEDED? 
	if (calmqst.VictimCount > 0) && !cfgqst.RapeAgain && (!cfgqst.AbortAll);&& BindsEquiped
	;RAPEAGAIN - we still have binds? 
		if calmqst.Victims[0]	
		calmqst.AddDefeatBindsToActor(calmqst.Victims[0], "add")
		calmqst.StripFollower(0)
		endif				
		if calmqst.Victims[1]
		calmqst.AddDefeatBindsToActor(calmqst.Victims[1], "add")
		calmqst.StripFollower(1)
		endif					
		if calmqst.Victims[2]
		calmqst.AddDefeatBindsToActor(calmqst.Victims[2], "add")
		calmqst.StripFollower(2)
		endif					
		if calmqst.Victims[3]
		calmqst.AddDefeatBindsToActor(calmqst.Victims[3], "add")
		calmqst.StripFollower(3)
		endif
	endif

;	if cfgqst.ModDDframework && cfgqst.DefeatTypeScenario != "DD"	
;	cfgqst.RemoveAllDDevices(false, "zad_DeviousGag", "zad_DeviousHood", "zad_DeviousPiercingsNipple", "zad_DeviousPiercingsVaginal", "" )	
;	endif 

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
	
;-------- DDeEvent OLD SKIP FOR NOW  --------------------------------------------
	;elseif (cfgqst.DefeatTypeScenario == "DD")	;#DDe Step 2
	;		ScreenMessage("They bind you with devious devices...[DD Event]")		
		;	cfgqst.Crawl(cfgqst.PlayerRef, false)
		;	Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")	;this required still?	
		
			;everything handled in the PRECHECK 
			
	;		calmqst.Vehicle("restore")	
			
;-------- FurnitureEvent -----------------------------------------			
	elseif FurnitureEvent	 
		ScreenMessage("You are bound tight to an evil contraption.")

		;-----------------------------------------------------------------
		
		;#GUIDE: if there is a furniture in the area, there is only a 66% chance it is used (we want variety)	
		;if Device && D100(66) #TODO we disabled Local Furniture... for reasons
		;LocalFurnitureFound = true
		;else
		
	;	if Nym()
		CreateFurniture_NEW()	
	;	else 
	;	Device = CreateFurniture()		;#Device1			---> we select a furniture from the function list
	;	endif 

		;------ Furniture Scenario (adds more stuff to the slave) ---------------	
		if (cfgqst.DefeatTypeScenario == "Furniture")	
		AddPunishmentItems(1)	;<---- Device first because we need to check items now 
		endif
		
		LocalFurnitureFound = false ;REMOVE 

		calmqst.RemoveDefeatBinds()

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
			
			if !cfgqst.VRfix		
			cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)	;#vehicle ---> pre-Furniture detach ---> else furnitures break!!
			cfgqst.InFurniture = true
			Debug.trace("Naked Defeat capturequest: Vehicle DETACHED for Furniture game")
			endif
			
			Device.Activate(cfgqst.PlayerRef, true)	
			cfgqst.PlayCuffsSoundRope()
			
	
			cfgqst.DefeatStateBindings = "Furniture"
			
			; xxxxxxxxxxxxxxxxxxxxXXXX #POSE XXXXxxxxxxxxxxxxxxxxxxxx 		
			; Followers receive their furnitures  		

			calmqst.PlayPoseOnActor(calmqst.Victims[0], "FollowerDevices", false)
			calmqst.PlayPoseOnActor(calmqst.Victims[1], "FollowerDevices", false)
			
			SendModEvent("Moan")	
			Utility.wait(2.0)
			SendModEvent("Moan")	
				
	endif
	
	cfgqst.FadeToBlack(false)

		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;:::::::::::::::::::::	WHIP SCENE	:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
		
	if cfgqst.Allow_Whipping && (!cfgqst.AbortAll) && FurnAllow_Whipping > 0
		
		bool StartWhipping = false
		;no whipping when we have unsuitable furnitures
		;even with "Allow_Whipping" we still roll the die here to check the actual whip chance
		
		if (cfgqst.ShortPunishment == 2) || cfgqst.HarderDefeat
		StartWhipping = true
	
		elseif FurnAllow_Whipping > 1	;WANT whipping (its allowed)
		StartWhipping = true
		
		elseif D100(cfgqst.DefeatWhipProb) 
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
			
			;whipq00.StartWhipQuest_00()	
			storqst.StartWhipping_00(cfgqst.DefeatWhipTime)			
			NymTrace("WhipQuestTest B")
			;#todo: backup whipquests? required or not?		
			
			int iTime = 0
			
			while cfgqst.WhipAgain && cfgqst.ModEnabled && (!cfgqst.AbortAll)	
			
				if (cfgqst.PlayerRef.GetSitState() == 0)
				NymTrace("Attempt to restore Furniture Animation BBB SitState("+cfgqst.PlayerRef.GetSitState()+")")
				InfoMessage("Attempt to restore Furniture Animation")
				RestoreFurniture()
				Utility.Wait(3.0)
				endif
				
				if cfgqst.IsPoseScenario() && D100(33) 
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
				endif 
				
				if (!cfgqst.AbortAll)	
				Utility.Wait(1)
				iTime += 1
				endif
				
			;/
				NymTrace("WhipTime: "+iTime+" TempIntBridge: "+cfgqst.TempIntBridge)
				
				;every 10 seconds we check for abort
				if (iTime == 10) 
					if (cfgqst.TempIntBridge == 0)
					NymMessage("Whipper Took too long, abort")
					
					storqst.StopWhipping_00()
					;whipq00.SetStage(25)
					cfgqst.WhipAgain = false
					cfgqst.TempIntBridge = 0
					else 
					iTime == 0
					cfgqst.TempIntBridge == 0
					endif 
				endif 
				/;
					 
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

		bool DDPiercings = false
		bool aMessage = false
		int equipchance = 0

		if level == 0
		equipchance = 50
		elseif level == 1
		equipchance = 100
		endif

		if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Piercing Nipples")
		DDPiercings = true 
		endif 

		if cfgqst.ModPLUGS && D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE && (CheckifFurnitureAllows("Dildo Anal") > 0)
		defqst.AddBrutalPlugs(0)
		aMessage = true
		endif
		
		if !DDPiercings && cfgqst.DefeatTypeScenario != "DD"
			if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef) && cfgqst.Allow_PunishmentItems_TOGGLE
			cfgqst.AddDefeatClothing()
			aMessage = true
			endif
		endif 
		
		if cfgqst.ModDDframework
			if DDPiercings
			NymTrace("Already wearing Piercings")
			else 
				if D100(30)
				nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Piercings")
				elseif D100 (30)
				nade_DDInt.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Clamps")
				endif 
				;add SMP piercings nipple and pussy!
				;add 
			endif 	
		endif 
		
		;if D100(50)
		if D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE
		cfgqst.AddDefeatGags()
		aMessage = true
		endif
		if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef) && (CheckifFurnitureAllows("Dildo Vaginal") > 0)
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

cfgqst.DefeatStateChapter = "EscapeGame" 	;#chapter
cfgqst.DefeatStatePlayer = "Punished in Furniture" 	;#chapter
;DefeatGame Chapter has following PlayerStates:
;cfgqst.DefeatStatePlayer = "Idle in Furniture"
;cfgqst.DefeatStatePlayer = "Punished in Furniture" (whipped, waiting, shocked, etc.)


Device = none 

cfgqst.GroupStripMaintenance()

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

	
	;MESSSAGES ---> Messages should not DO stuff...
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
	
	;elseif (cfgqst.DefeatTypeScenario == "DDinFurniture")	;#DD end of mission
	;ScreenMessage("Try to wiggle free with all that on you...")	

	elseif (cfgqst.DefeatTypeScenario == "DD")	;#DD end of mission
	ScreenMessage("Try to wiggle free with all that on you...")	
;	ScreenMessage("They let you go in your sorry state...")	
;	StartCaptiveQuest = false
	
;	nade_calmquest.SetStage(1000)
	
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
Furniture_Elevation = 0.0
RemoveFurniturePlayer()
storqst.WantWhipping = false

;RemoveFurniture() ;;; LOL NO LONGER IN USE! 
		
Stop()

EndFunction

; NO LONGER IN USE 
Function RemoveFollowerFurniture()

	if Furniture01
	Furniture01.DisableNoWait()
	Furniture01.Delete()
	endif
	if Furniture02
	Furniture02.DisableNoWait()
	Furniture02.Delete()
	endif
		
EndFunction

Function RemoveFurniturePlayer()

	Debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
	if Device
	Device.DisableNoWait()
	Device.Delete()
	endif	
	
	RemovePlatform()
	
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
	if storqst.ModAcheron
		if Acheron.IsDefeated(cfgqst.PlayerRef)
			Acheron.RescueActor(cfgqst.PlayerRef, false)
			Utility.Wait(3)
			Acheron.ReleaseActor(cfgqst.PlayerRef)
		elseif Acheron.IsPacified(cfgqst.PlayerRef)
			Acheron.ReleaseActor(cfgqst.PlayerRef)
		endif
	endif
	cfgqst.Immobilize(true)
	
	if (cfgqst.PlayerRef.GetSitState() == 0)
	ScreenMessage("Restoring Furniture")
		;Device = Alias_Furniture0.GetReference()
		if Device
		Device.Activate(cfgqst.PlayerRef)
		elseif Nym()
		Debug.Messagebox("Device = none") 
		endif 
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


; NO LONGER IN USE 
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

if BukkakeAllowed || FurnAllow_Showers
return true
else
return false
endif

EndFunction

Bool Function IsWhippingAllowed()

if WhippingAllowed || FurnAllow_Whipping
return true
else
return false
endif

EndFunction

	int FurnAllow_Whipping = 0 	
	int FurnAllow_Showers = 0 	
	int FurnAllow_Boots = 0 
	int FurnAllow_InDoorOutDoor = 0 
	int FurnAllow_DildoAnal = 0 	
	int FurnAllow_DildoVaginal = 0	
	int FurnAllow_DD_Yoke = 0 				;classic yoke 
	int FurnAllow_DD_YokeBreast = 0 		;Breast Yoke Front 
	int FurnAllow_DD_YokeFiddle = 0 		;NeckFiddle Yoke
	int FurnAllow_DD_Armbinders = 0 		;Armbinders/Rope/Manacles	
	int FurnAllow_DD_StraitJacket = 0
	String FurnAllow_Race = "Any"

	int Require_Whipping = 0 	
	int Require_Showers = 0 
	int Require_Boots = 0 	
	int Require_InDoorOutDoor = 0 
	int Require_DildoAnal = 0 	
	int Require_DildoVaginal = 0	
	int Require_DD_Yoke = 0 				;classic yoke 
	int Require_DD_YokeBreast = 0 		;Breast Yoke Front 
	int Require_DD_YokeFiddle = 0 		;NeckFiddle Yoke
	int Require_DD_Armbinders = 0 		;Armbinders/Rope/Manacles	
	int Require_DD_StraitJacket = 0
	String Require_Race = "Any"
	

Function PrepareFurniture()
			
		nymBox("This should NOT HAPPEND")	
		;NEEDS WORK!!! 
		if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Lockable")

			if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Armbinder") && (FurnAllow_DD_Armbinders == 0)		;Armbinder
			cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
			NymTrace("Armbinder Removed For Furniture")
			elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast Front") && (FurnAllow_DD_YokeBreast == 0)		;YokeBreast ???
			cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
			NymTrace("Breast Yoke Removed For Furniture")
			elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Classic") && (FurnAllow_DD_Yoke == 0)		;Yoke 
			cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")		
			NymTrace("Yoke Removed For Furniture")
			
			elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Strait Jacket") ; && (FurnAllow_DD_Yoke == 0)		;StraitJacket 
			cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")		
			NymTrace("Strait Jacket Removed For Furniture")
			endif  

		endif 	

		;	FurnAllow_DD_Yoke = 1			;classic yoke 
		;	FurnAllow_DD_YokeBreast = 1		;Breast Yoke Front 
		;	FurnAllow_DD_YokeFiddle = 1		;NeckFiddle Yoke
		
EndFunction 

ObjectReference TempFurniture

Function CreateFurniture_NEW()			;#_NEW
	
	DebugTrace("CreateFurniture_NEW()")

	FurnitureName = "NoFurnName"
	Furniture_PlatformName = "NoPlatform"
	Furniture_Elevation = 0.0
	Furniture_PlatformElevation = 0.0
	Furniture_PlatformForward = 0.0
	
	;WhippingAllowed = false
	;BukkakeAllowed = false
	

	;Guide:
	;[]FurnNameList:  Array with ALL Furniture Names we currently use 
	;FillFurniture(): Gets all the suitable furnitures into an array 
	;return: we select randomly one of the suitable Furnitures and return its ObjectReference for placement 
	
	;we can now call individual Furnitures with FillFurniture("NameString", 0, true) and even check if its suitable (making also smaller calls with only SOME names

	FillAttributeRequirements()
	CreatureFurnitureNameList("Standard")

	;FurnNameListLenght ) 72
	Furniture_PlacementAngle_ARRAY = new Float[72]	
	Furniture_PlacementHeight_ARRAY = new Float[72]	
	Furniture_Name_ARRAY = new String [72]	
	Furniture_Object_ARRAY = new Form [72]
	
	iFurnARRAYsize = 0
	int i = FurnNameListLenght ;FurnNameList[] has all the names. we now cycle them all through, building a new array with fewer names basically
	
	while i > 0		;starts with 25 currently
	i -= 1
	;we get the Furniture Name to call from FillFurniture from the FurnNameList[x]
	FillFurniture(FurnNameList[i], iFurnARRAYsize, false, false)
	NymTrace("CreateFurniture_NEW: iFurnARRAYsize "+iFurnARRAYsize)	
	endwhile 
	
	;iFurnARRAYsize is now the number of furnitures added, but we need to do -1 for the array...
	iFurnARRAYsize -= 1

	if iFurnARRAYsize < 0 	;no suitable furniture at all - bail out before RandomInt(0,-1) and a negative array index
	Debug.Trace("NAKED DEFEAT capturequest: CreateFurniture_NEW() found NO suitable furniture - aborting placement")
	Debug.Messagebox("Naked Defeat: no suitable furniture found - #ERROR 1274b")
	return
	endif

	CurrentFurnitureNum = Utility.RandomInt(0, iFurnARRAYsize)

	CurrentPlacementAngle = Furniture_PlacementAngle_ARRAY[CurrentFurnitureNum]		
	CurrentPlacementHeight = Furniture_PlacementHeight_ARRAY[CurrentFurnitureNum]	
	CurrentFurnitureName = Furniture_Name_ARRAY[CurrentFurnitureNum]
	DebugTrace("CreateFurniture_NEW(NUM: "+CurrentFurnitureNum+")")
	DebugTrace("CreateFurniture_NEW(NAME: "+CurrentFurnitureName+")")
	NymTrace("CreateFurniture_NEW(HEIGHT: "+CurrentPlacementHeight+")")
	NymTrace("CreateFurniture_NEW(ANGLE: "+CurrentPlacementAngle+")")
	
	if !Furniture_Object_ARRAY[CurrentFurnitureNum]
	Debug.Messagebox("Naked Defeat: FORM = none - #ERROR 1274")
	endif 

	Device = cfgqst.PlayerRef.PlaceAtMe(Furniture_Object_ARRAY[CurrentFurnitureNum])

	if Device
		Device.MoveTo(calmqst.VehiclePlayer, 0.0 * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), CurrentPlacementHeight) ;MOVE TO VEHICLE! 
		Device.SetAngle(0.0, 0.0, Device.GetAngleZ()+CurrentPlacementAngle)
		
		NymMessage("FurnitureName:"+CurrentFurnitureName)
		
		if Furniture_PlatformName != "NoPlatform"
		CreatePlatform(Furniture_PlatformName, Furniture_PlatformElevation, Furniture_PlatformForward, 0.0, "No Special")
		endif 

		;completely remove this 
		if cfgqst.LastAddedDevice	
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
		endif
		
		cfgqst.LastAddedDevice = Device

	else 	
	Debug.Messagebox("Naked Defeat: furniture = none - #ERROR 1307")
	endif

EndFunction 

;bool WhippingAllowed = true
	bool BukkakeAllowed
	String FurnitureType


	String FurnitureName
	String Furniture_PlatformName
	Float Furniture_Elevation
	Float Furniture_PlatformElevation
	Float Furniture_PlatformForward
	

ObjectReference Function CreateFurniture(ObjectReference akRef = None)		; #furniture		;NYMRA this creates the ZAP devices. Maybe can change from ESP to JSON? maybe make them permanent?
	
	Debug.Trace("NAKED DEFEAT capturequest: CreateFurniture(Player)")
	
	ObjectReference r
	int f = 0
	
	FurnitureName = "NoFurnName"
	Furniture_PlatformName = "NoPlatform"
	Furniture_Elevation = 0.0
	Furniture_PlatformElevation = 0.0
	Furniture_PlatformForward = 0.0
	
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
		
		if D100(5)
		FurnitureType = "Special"
		f = 0
		endif 
		
		
		if FurnitureType == "Special"
		
		
		r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505DD68, "ZaZAnimationPack.esm")), 1, true, false) 		;zbfGallowPoleBrown
		
		FurnitureName = "Gallow"
		FurnAllow_Showers = 1
		FurnAllow_Whipping = 1
	
		FurnAllow_DildoVaginal = 1
		FurnAllow_DildoAnal = 1
		
		FurnAllow_DD_Yoke = 1
		FurnAllow_DD_YokeBreast = 1
		FurnAllow_DD_YokeFiddle = 1
		FurnAllow_DD_Armbinders = 1 
		FurnAllow_DD_StraitJacket = 1 
		
		Furniture_Elevation = 56.0
		Furniture_PlatformElevation = 45.0
		
		Furniture_PlatformName = "Bar Stool"
		Furniture_PlatformForward = -5.0
		
		;----- MIX -----;
		elseif FurnitureType == "Mix"
		
			if f == 0 
			f = utility.randomint(1,51) 
			endif 

			if f == 1
			;"Stocks Kneeling"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505747D, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Stocks Kneeling"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 

			elseif f == 2
			;"Bondage Pole"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Bondage Pole"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			;FurnAllow_DildoVaginal = 1
			;FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			
			elseif f == 3										
			;"Pole Bondage HUB"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508535E, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Pole Bondage HUB"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 4
			;"Pole Bondage HUHB"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05085363, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Pole Bondage HUHB"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 5
			;"Whipping Pole BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05070961, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			elseif f == 6
			;"Bondage Pole"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044AB2, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "TODO"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 7
			;"Restraint Pole"

			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508B4FE, "ZaZAnimationPack.esm")), 1, true, false) 
			
			
			FurnitureName = "TODO"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 8
			;"Captive Bound Kneeling"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05078048, "ZaZAnimationPack.esm")), 1, true, false)	;TEST FOR ALLOWANCE 
			
			FurnitureName = "Captive Bound Kneeling"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			WhippingAllowed == false				
			elseif f == 9
			;"Pole Bondage 3"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563E, "ZaZAnimationPack.esm")), 1, true, false)

			FurnitureName = "Pole Bondage 3"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 404
			
			FurnAllow_DD_Yoke = 404
			FurnAllow_DD_YokeBreast = 404
			FurnAllow_DD_YokeFiddle = 404
			FurnAllow_DD_Armbinders = 1 	;test
			FurnAllow_DD_StraitJacket = 404 
			
			elseif f == 10
			;"Pole Bondage 4"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563F, "ZaZAnimationPack.esm")), 1, true, false) 
			
			;whip from behind
			
			FurnitureName = "Pole Bondage 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 11
			;"Stocks Sitting"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057465, "ZaZAnimationPack.esm")), 1, true, false)
			
			FurnitureName = "Stocks Sitting C"
			FurnAllow_Showers = 1
			;FurnAllow_Whipping = 1
		
			;FurnAllow_DildoVaginal = 1
			;FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 			
			
			elseif f == 12
			;"Pole Bondage Upright Down Hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Pole Bondage Upright Down Hanging"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 13
			;"Stocks Chair"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057493, "ZaZAnimationPack.esm")), 1, true, false)
			FurnitureName = "Stocks Chair"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 14
			;"Pole Bondage Hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 
			FurnitureName = "Pole Bondage Hanging"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 15
			;"Wnc Strappado"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505ABC5, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 5ABC6
			
			FurnitureName = "Wnc Strappado"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 2
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 16
			;"Pillory H"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503FDEF, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 3FDF2
	
			FurnitureName = "TODO"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 17
			;"TorturePole 11 KN BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503846C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 3847E
			FurnitureName = "TorturePole 11 KN BF"
			
			;WHIP ANGLE +180
			
			;Whip From Behind
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1 		
			
			
			elseif f == 18
			;"Whipping Pole FF" Hanging Up a Pole, Front exposed, feet in the air
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507095A, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 	 ID 7095F
		
			FurnitureName = "Whipping Pole FF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			elseif f == 19
			;"Whipping Pole BF" 	Hanging Up a Pole, Back exposed, feet in the air - dark wood
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0506B748, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID		 ID 7095B
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 20
			;"Torture Pole 9 BF" 	Standing at Pole, hands tiegt flat to the side, on toes, back exposed
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05038470, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 38470
		
			
			FurnitureName = "Torture Pole 9 BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 21	;POLE A (wrong color)
			;"Pole Bondage 6" 		Sitting with back at Pole, hands back, feet straight
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045641, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 60E7D
					

			FurnitureName = "Pole Bondage 6"
			FurnAllow_Showers = 1
			;FurnAllow_Whipping = 1
		;	FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1		
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
					
					
			elseif f == 22 ;POLE A
			;"Pole Bondage 4" 		"TorturePole A" ;FAVOURTIE YAKUZA
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045627, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562D
			
			FurnitureName = "Pole Bondage 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 

			elseif f == 23 	 ;POLE A (round, tall, beige)																	
			;"Pole Bondage 2" 		"TorturePole A" ;Front exposed, on toes, hands bound behind back.
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045625, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562B
			FurnitureName = "Pole Bondage 2"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;Whipping from the Front only
			
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 	;TEST
			
			elseif f == 24 ;POLE A (round, tall, beige)	
			;"Pole Bondage 3" 		"TorturePole A" ;Front exposed, on toes											
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045626, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 4562C
			;WANT PLATFORM 
			FurnitureName = "Pole Bondage 3"
		
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
	
			elseif (f == 25) || (f == 26)
			;SLave Stocks  			;wooden beams, strugle left and right, front exposed							;<<< BASE ID 		ID 634E3
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050634E2, "ZaZAnimationPack.esm")), 1, true, false)			
											
			FurnitureName = "Slave Stocks"					
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 ;confirmed
			FurnAllow_DD_StraitJacket = 0 ;confirmed	

			Furniture_PlatformName = "Table 1x1"
			;elevation 10 
			
			elseif f == 404 
			;Punishment Pillory Kneeling 			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE4, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 59AE5
			FurnitureName = "Punishment Pillory Kneeling (BROKEN)"
			
			elseif (f == 27) || (f == 28)	
			;Stocks Standing Edged			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505746F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 		ID 57472		
					
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		;	FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
					
			elseif f == 404 	
			;Gibbet Large Chrome		- standing in gibbet, gibbet is on floor	
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05088F0F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 88F10	;SIT STATE WRONG (2 not 3), bugged somehow....
			
			;WHIPPINGSPOT (FRONT ONLY)
			
			;NEEDS PLATFORM/POLE (Its Hovering in midair atm)
			FurnitureName = "Gibbet Large Chrome"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 ;confirmed
			FurnAllow_DD_StraitJacket = 1 ;confirmed

			elseif f == 29 		
			;Pillory (Large, not similar)	
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0500FDE1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 0FDE2

			;WHIPPINGSPOT (BACK ONLY)
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;FurnAllow_DD_Yoke = 1
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 30 		
			;Captive Bound Kneeling On Small Pole		;for Bukkake
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05077ADD, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 77ADE
			
			FurnAllow_Showers = 1
			;FurnAllow_Whipping = 1
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 
			
			elseif f == 31 		
			;Gibbet Small Low Hanging, Kneeling Bound inside
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05038F81, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 38F95
			FurnitureName = "Gibbet Small"
			FurnAllow_Showers = 1
		;	FurnAllow_Whipping = 1
			FurnAllow_DD_Yoke = 1			;TEST  CLIPPING
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			
			elseif f == 32 		
			;Gibbet Ultra Slim Standing
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039B00, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 39B01

			FurnitureName = "Gibbet Ultra Slim Standing"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 

			elseif f == 33 			
			;Restraint Shackle Pole 1 (Static :( 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503B12F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 3B141
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 34 			
			;GIBBET SMALL --_> Random Pose I guess  Gibbet Sitting BOund feet sticking out 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039ACB, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 39AD0
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 35 			
			;Gibbet Kneeling BOund hands sticking out 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039558, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID  39559
			
			FurnitureName = "Gibbet Small (vary)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 36 || f == 38		
			;Restraint Pole Shackle 6 (STATIC)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503B134, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 3B146
			
			FurnitureName = "Restraint Pole Shackle 6"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 37 			
			;Pillory (X Pillory laying horizontally. Use with an animation pack for scene)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503FDFF , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 3FE99
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 404 			
			;Punishment Pillory Kneeling		#BROKEN
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05051566 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 46C9F
				
			FurnitureName = "Whipping Pole BF (CHECK)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
					
			elseif f == 404		
			
				;NO NO, THIS IS NOT WORKING 
			;Slave Auction Stage QF - 
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0506CCE1 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 6CCE2
			
			FurnitureName = "Slave Auction Stage QF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 39 || f == 40 			
			;Stocks Standing Edged
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505746F , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57472
			
			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 41 			
			;Stocks SChair (my favourite) in Wood - (Arms and Legs Spread, exposing all)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057491 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57492

			FurnitureName = "Whipping Pole BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 42 			
			;Stocks Sitting, legs spread, hands behind.
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057483 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 57484
			
			FurnitureName = "Stocks Sitting A"
			FurnAllow_Showers = 1
		;	FurnAllow_Whipping = 1
		
		;	FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 43 			
			;Stocks Sitting, legs spread, hands in stock too (duplicate maybe).
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05057488 , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 5748A
			
			FurnitureName = "Stocks Sitting B"
			FurnAllow_Showers = 1
		;	FurnAllow_Whipping = 1
		
		;	FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 44 			
			;Stocks Kneeling, legs spread, hands behind too (duplicate maybe).
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505747D , "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 5747E
			
			FurnitureName = "Stocks Kneeling C"
			FurnAllow_Showers = 1
		;	FurnAllow_Whipping = 1
		
			;FurnAllow_DildoVaginal = 1
			;FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 45
			;"TorturePole 7 BF" ;standing, ass /back exposed, ankle and wrist ropes, NO breast ropes
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503848C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
		
			FurnitureName = "TorturePole 7 BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 45
			;"TortureChainingPole" kneeling in a wooden device, arms above, breasts exposed.
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044AAC, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
				
			FurnitureName = "TortureChainingPole"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 46
			;"TorturePole D" bend over to the front, arms behind back. Animated - suitable for FuckMachine Dildo
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504091C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			
			FurnitureName = "TorturePole D"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 47
			;"TorturePole B a" free hangning, back and ass exposed, arms above head, animated slow
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504091A, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID

			;WHIP FROM BEHIND ONLY (Position B)
			;BRUTALITY: VERY BRUTAL

			FurnitureName = "Torture Pole B"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 48
			;"TorturePole B b" free hangning, back and ass exposed, arms above head, animated slow
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05040919, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			FurnitureName = "TorturePole B"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 

				
			elseif f == 49
			;"Chained Under The Gallow 4" - free hanging, chaines, chain cuffs, off the ground, slow animated NICE
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EE, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark
			FurnitureName = "Chained Under The Gallow 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1			;TEST CLIPPING
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 

			elseif f == 50
			;"Pyre Pole" - hanging free, beasts exposed, feet off ground. no fuck belts
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505D272, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark
			FurnitureName = "Pyre Pole"	
			
			;Whip from behind (pole faces backwards)
		;	FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
			;FurnAllow_DildoVaginal = 1
			;FurnAllow_DD_Yoke = 1			;TEST CLIPPING
			;FurnAllow_DD_YokeBreast = 1
			;FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 



			elseif f == 51
			;"Tilted Wheel" - NICE!!! ADD this To Wheel Scenario #TODO - wheel Pose legs spread!
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504F5D3, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID Dark
			
			;Whip From Front 
			
			FurnitureName = "Tilted Wheel"		
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;FurnAllow_DD_Yoke = 1			
			FurnAllow_DD_YokeBreast = 1	;TEST CLIPPING
			;FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			;FurnAllow_DD_StraitJacket = 1		
	
			endif
		
		;<<< - MIX		
			
		;----- INDOOR -----;			>>>>>>>>>>>>>> 2026 ADDEDDED <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		elseif FurnitureType == "Indoor"
			
			if f == 0 
			f = utility.randomint(1,12) 
			endif 
			
			if f == 1 || f == 3
			;"Bar Stool" ;bound hogtied boobs up
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE2, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Bar Stool"
			FurnAllow_Showers = 2
			FurnAllow_Whipping = 1
			
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1			
			FurnAllow_DD_YokeBreast = 1	
			FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1	 
			FurnAllow_DD_StraitJacket = 1
			
			elseif f == 2
			;"Rope Up"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B5A, "ZaZAnimationPack.esm")), 1, true, false) 
						
			FurnitureName = "Rope Up"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 404		;BUUUGED
			;"Rope Down"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B5C, "ZaZAnimationPack.esm")), 1, true, false) 	;BUGGED? uses Rack Anim
		
			FurnitureName = "Rope Down"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 4
			;"RopeDancer"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AD8, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 
						
			FurnitureName = "Rope Dancer"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 5
			;"Dream Catcher"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B62, "ZaZAnimationPack.esm")), 1, true, false) 	;<<< BASE ID
			
			FurnitureName = "Dream Catcher"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 2
			FurnAllow_DildoAnal = 2
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
				
			
			elseif f == 6
			;"Wooden Pony"	;has it a yoke? else: replace
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050521BD, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 521BD
			
			
			FurnitureName = "Wooden Pony"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1 ;needs special ones
			
			FurnAllow_DD_Yoke = 2
			FurnAllow_DD_YokeBreast = 2
			FurnAllow_DD_YokeFiddle = 2
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 2 
			
			
			
			elseif f == 7	
			;"Chair Bondage M RV"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05048888, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 48889
					
			FurnitureName = "Chair Bondage M RV"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 8
			;"Struggle Rope (Gallows)"	;gallow rope on toes						
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0505EDD0, "ZaZAnimationPack.esm")), 1, true, false) 	;<<< BASE ID ;BASE ID 	ID 5EDD1
		
			FurnitureName = "Struggle Rope (Gallows)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 			
			
			Furniture_PlatformName = "Bar Stool"
			
				
			elseif f == 9			
			;"Rack"				;Streckbank Diagonal						
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0500E2BF, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ;BASE ID 	ID 0E2C0
				
			FurnitureName = "Rack"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
	
			;NoWhipping
			;Parallel Markers for Bukkake 
			elseif f == 10		
			;"Chair Sit Tied"				Chait, Hands on Back, Legs together					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059ADC, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ; ID 59ADD
			;no Dildos
			
			FurnitureName = "Chair Sit Tied"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
		;	FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			;FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 11			
			;"Chair Bondage RV"				Stuhl, Hands on Back, Tits towards Lehne					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05048882, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID ; ID 4888B
			FurnitureName = "Chair Bondage RV"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_DD_Yoke = 1			
		;	FurnAllow_DD_YokeBreast = 1	
		;	FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1	
			
			elseif f == 12				
			;"Torture Chair"				Chair with nails 					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504CA3F, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 
			FurnitureName = "Torture Chair"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			FurnAllow_DD_Yoke = 1			
			FurnAllow_DD_YokeBreast = 1	
			FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1	
			
			elseif f == 13				
			;"Vampire Supply"				Upside Down hanging, very slow animated  					
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B60, "ZaZAnimationPack.esm")), 1, true, false)		;<<< BASE ID 

			FurnitureName = "Vampire Supply"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			

			endif
			;<<< Indoor 

		;----- OUTDOOR -----;    >>>>>>>>>>>>>>>>>> 2026 ADDED!!! <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		elseif FurnitureType == "Outdoor"
			
			if f == 0 
			f = utility.randomint(1,15) 
			endif 
			
			if f == 1
			;"Gibbet Small"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05039554, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Gibbet Small"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 2
			;"Cross Roped Pose 01" CRUFICIED
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA6, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Cross Roped Pose 01 - CRUCIFIED"
			;FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 3
			;"Cross Roped Pose 02"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA7, "ZaZAnimationPack.esm")), 1, true, false)
			
			FurnitureName = "Cross Roped Pose 02 - CRUCIFIED"
			;FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
				

			elseif f == 4
			;"Cross Roped Pose 03"							
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCB4, "ZaZAnimationPack.esm")), 1, true, false)
		
			FurnitureName = "Cross Roped Pose 02 - CRUCIFIED"
			;FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
		
			elseif f == 5
			;"Crux Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BC91, "ZaZAnimationPack.esm")), 1, true, false) 
			
			FurnitureName = "Crux Rope A - CRUCIFIED"
			;FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 6
			;"Crux Rope II"
		
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BC90, "ZaZAnimationPack.esm")), 1, true, false)
			FurnitureName = "Crux Rope II - CRUCIFIED"
			;FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 	
		
			elseif f == 7
			;"Crux Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05026D3C, "ZaZAnimationPack.esm")), 1, true, false)
			FurnitureName = "Crux Rope B - CRUFICIED"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
		;	FurnAllow_DildoAnal = 1
		;	FurnAllow_DD_Yoke = 1			
		;	FurnAllow_DD_YokeBreast = 1	
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1	
			
			elseif f == 404	;#BROKEN
			;"Sacrificial Pillars"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B48, "ZaZAnimationPack.esm")), 1, true, false)
			
			FurnitureName = "Saddle Rack 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
		
			elseif f == 9 || f == 8 		;This one works
			;"Saddle Rack"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059AE0, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Saddle Rack 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			
			elseif f == 10 
			;"Chained Under the Gallow 4" 			Hanging free, legs spread, chained, swinging
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EE, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 455FB	
			
			FurnitureName = "Chained Under the Gallow 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
		
			elseif f == 11
			;"Chained Under the Gallow 5" 			Static, bend over, ass up, arms up
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455D9, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 455E0
			
			FurnitureName = "Chained Under the Gallow 5"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 	

			elseif f == 12 	
			;Pole Bondage Upright Down hanging"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 45665			
			FurnitureName = "Pole Bondage Upright Down Hanging"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1	
			
			FurnAllow_DD_Yoke = 2
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 2 
			FurnAllow_DD_StraitJacket = 1 		
			
			elseif f == 13 	
			;Bondage Pole Hanging (hanging over fire, high up)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 7DC26 		
			FurnitureName = "Bondage Pole Hanging (Fire)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1	
				
				
			elseif f == 14 	
			;Restraint Pole - Standing (BIG POLE, hands over head straight, standing, front exposed)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508AF94, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID  ID 8AF97		
			FurnitureName = "Restraint Pole Standing (BIG)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			elseif f == 15 	
			;Restraint Pole kneeling (BIG POLE, hands over head straight, kneeling, front exposed) animated
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508AA25, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 ID 8AF95	
			FurnitureName = "Restraint Pole kneeling (BIG)"
			;REPLACE (its open on the top...)
			
			;Whip Front Only
			
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1

			;	FurnAllow_DD_Yoke = 1
			;	FurnAllow_DD_YokeBreast = 1
			;	FurnAllow_DD_YokeFiddle = 1
			;	FurnAllow_DD_Armbinders = 1 
			;	FurnAllow_DD_StraitJacket = 1 
			
			elseif f == 16 	
		
			;"Chained Under the Gallow 2" spread, standing on ground
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EC, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 	
			FurnitureName = "Chained Under the Gallow 2"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
		
			elseif f == 17 	
			;"Chained Under the Gallow 1" straight legs, standing on toes
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050455EB, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID	 	
			
			FurnitureName = "Chained Under the Gallow 1"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
		;	FurnAllow_DD_Yoke = 1
		;	FurnAllow_DD_YokeBreast = 1
		;	FurnAllow_DD_YokeFiddle = 1
		;	FurnAllow_DD_Armbinders = 1 
		;	FurnAllow_DD_StraitJacket = 1 
			
			endif
		;<<< Outdoor 	
			
			
		;----- TREES -----;		
		elseif FurnitureType == "Trees"
			
			if f == 0 
			f = utility.randomint(1,10) 
			endif 
			
			if f == 1
			;"Tree Bondage Aspen Tree BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF2, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Tree BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 2
			;"Tree Bondage Aspen Tree FF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF0, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Tree FF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 3
			;"Tree Bondage Aspen Trees Wedged"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CF8, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Trees Wedged"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 4
			;"Tree Bondage Aspen Tree Hanging Wedged"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CFA, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Tree Hanging Wedged"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 5
			;"Tree Bondage Aspen Tree BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0508692D, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Tree BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1	
			elseif f == 6
			;"Tree Bondage Aspen Tree FF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050863C1, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Aspen Tree FF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 7
			;"Tree Bondage Cum Cum"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046D03, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Cum Cum"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 8
			;"Tree Bondage Marple Tree Roped"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CEC, "ZaZAnimationPack.esm")), 1, true, false) 
			FurnitureName = "Tree Bondage Marple Tree Roped"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 9
			;"Tree Bondage Spruce Trees Laying BF"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05046CFC, "ZaZAnimationPack.esm")), 1, true, false)
			FurnitureName = "Tree Bondage Spruce Trees Laying BF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 10
			;"Tree Bondage Aspen Tree Without Rope"
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05049E7D, "ZaZAnimationPack.esm")), 1, true, false)
			FurnitureName = "Tree Bondage Aspen Tree Without Rope"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			endif
				
		;----- MONSTER (rough wooden Furniture) -----;		
		elseif FurnitureType == "Monsters"
		
			if f == 0 
			f = utility.randomint(1,16) 	
			endif 
			
			if f == 1
			;Bondage Pole Hanging (High)
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Bondage Pole Hanging (High)"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 2
			;Cube Pole FF
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0507C65D, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID
			FurnitureName = "Cube Pole FF"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1		
			elseif f == 3
			;XCross Thin
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050500B1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 500B2
			FurnitureName = "XCross Thin"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			elseif f == 4
			;Bondage Table
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503F2E1, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID: 3F2E1
			FurnitureName = "Bondage Table"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1			
			elseif f == 404	
			;Sacrificial Pillars 		;#BROKEN
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B48, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Sacrificial Pillars"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1			
			elseif f == 6 || f == 5	
			;Pole Bondage 6 dark
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05045641, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 6 dark"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1				
			elseif f == 7	
			;Pole Bondage 5 dark
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x050FF8F4, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 5 dark"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1					
			elseif f == 9		
			;Cross Roped Pose 03
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA8, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Cross Roped Pose 03"
			;WHIP FROM FRONT
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1			
			elseif f == 10	
			;Cross Roped Pose 02
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA7, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Cross Roped Pose 02"
			;WHIP FROM FRONT
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			;NO DD ALLOWED 
		
			FurnAllow_DildoVaginal = 1
			;FurnAllow_DildoAnal = 1			;no space	
			elseif f == 11	
			;Cross Roped Pose 01
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0503BCA6, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Cross Roped Pose 01"
			;WHIP FROM FRONT
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			
			;NO DD ALLOWED 
			
			elseif f == 12 			
			;Captive Bound Kneeling	R 	
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05077ADD, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID ID 77ADE
			FurnitureName = "Captive Bound Kneeling R"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1			
			elseif f == 13 			
			;Pole Bondage 1		
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563C, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 1"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1			
			elseif f == 14 			
			;Pole Bondage 2				;normal round pole, hands tied behind back, feet tied left and right, forcing breasts outwards.
			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563D, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 2"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1	

			elseif f == 15 			
			;Pole Bondage 4			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563F, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 4"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1				
			elseif f == 16 				
			;Pole Bondage 3			
			r = akRef.PlaceAtMe((Game.GetFormFromFile(0x0504563E, "ZaZAnimationPack.esm")), 1, true, false)			;<<< BASE ID 
			FurnitureName = "Pole Bondage 3"
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
		
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1		
			endif
			
		;----- FUCKING MACHINES -----;		
		elseif FurnitureType == "FuckingMachines"
			
			if f == 0 
			f = utility.randomint(1,5) 	
			endif 
			
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
		
		
		if Nym()
		r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm")), 1, true, false) 
		
		else 
		r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm")), 1, true, false) 
		endif 
	 
		
		endif
		
		if r
		
			if Furniture_PlatformName != "NoPlatform"
			CreatePlatform(Furniture_PlatformName, Furniture_PlatformElevation, Furniture_PlatformForward, 0.0, "No Special")
			endif 
			
			r.MoveTo(calmqst.VehiclePlayer, 0.0 * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), Furniture_Elevation) ;MOVE TO VEHICLE! 
		
			if Nym()
			NymMessage("FurnitureName:"+FurnitureName+" // "+f+" // "+FurnitureType)
			endif 
			
			
			;--- DD Management ------------------
			
			if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
			
				Bool DDRemoved = false

				if !DDRemoved && (FurnAllow_DD_Yoke == 0) && nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Classic")
				nade_DDInt.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, false, "NoException", "NoException", "NoException", "NoException", "NoException")
				DDRemoved = true
				endif 
			
				if !DDRemoved && (FurnAllow_DD_YokeBreast == 0) && nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast Front")
				nade_DDInt.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, false, "NoException", "NoException", "NoException", "NoException", "NoException")
				DDRemoved = true
				endif 
						
				if !DDRemoved && (FurnAllow_DD_StraitJacket == 0) && nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Strait Jacket")
				nade_DDInt.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, false, "NoException", "NoException", "NoException", "NoException", "NoException")
				DDRemoved = true
				endif 			
				
				if !DDRemoved && (FurnAllow_DD_Armbinders == 0) && nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Armbinder")
				nade_DDInt.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, false, "NoException", "NoException", "NoException", "NoException", "NoException")
				DDRemoved = true
				endif 		

				if !DDRemoved && (FurnAllow_DD_YokeFiddle == 0) ;#TODO We need detection for the Fiddle!
				nade_DDInt.RemoveAll_DDs_FromActor(cfgqst.PlayerRef, false, "NoException", "NoException", "NoException", "NoException", "NoException")
				DDRemoved = true
				endif 				
			endif 	
				;FurnAllow_DildoVaginal = 1
				;FurnAllow_DildoAnal = 1
			
			;--------------------------------------
		
			Debug.trace("NAKED DEFEAT capturequest: Furniture: "+FurnitureName+" // "+f+" // "+FurnitureType)
			
			r.SetAngle(0.0, 0.0, r.GetAngleZ())
		
			if cfgqst.LastAddedDevice	;last device from last time
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

Function MoveUpFurniture() ;#MoveUpFurniture()	;#elevate

		if Nym()
			if TempFurniture
			TempFurniture.DisableNoWait()
			TempFurniture.Delete()
			endif 
		endif 
		
		Furniture_Elevation += 5.0
		Furniture_PlatformElevation += 5.0
		
		ScreenMessage("Elevating Furniture 5 units up")
		NymTrace("Moving Furniture 5 units up")
		cfgqst.ResetIdle(cfgqst.PlayerRef)
		Device.MoveTo(calmqst.VehiclePlayer, 0.0 * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Furniture_Elevation) 
		Device.SetAngle(0.0, 0.0, Device.GetAngleZ())
		
		RemovePlatform()	
		CreatePlatform(Furniture_PlatformName, Furniture_PlatformElevation, 0.0, 0.0, "No Special") 
		;/	
			if Nym()
			;ObjectReference TempFurniture = (Game.GetFormFromFile(0x0002F239, "Skyrim.esm") As ObjectReference) 	;TableForTesting
			TempFurniture = calmqst.VehiclePlayer.PlaceAtMe((Game.GetFormFromFile(0x0002F239, "Skyrim.esm")), 1, true, false) 	;TableForTesting	

				if TempFurniture
				;cfgqst.PlayerRef.PlaceAtMe(TempFurniture)
				TempFurniture.MoveTo(calmqst.VehiclePlayer, 0.0 * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Elevation) 
				TempFurniture.MoveTo(calmqst.VehiclePlayer, 0.0 * Math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * Math.Cos(calmqst.VehiclePlayer.GetAngleZ()), Elevation - TempFurniture.GetHeight()) 	
				TempFurniture.SetAngle(0.0, 0.0, calmqst.VehiclePlayer.GetAngleZ())
				
				;TempFurniture.SetAngle(0.0, 0.0, Device.GetAngleZ())
				else 
				Debug.Messagebox("TempFurniture NONE")
				endif 
				
			endif 
		/;
			

		Device.Activate(cfgqst.PlayerRef, true)	
		;cfgqst.PlayerRef.PlaceAtMe((Game.GetFormFromFile(0x0002F239, "Skyrim.esm")), 1, true, false) 
		Utility.Wait(2.0)
		RestoreFurniture()
		cfgqst.PlayCuffsSoundRope()
		;endif 

EndFunction 

; 1 Furniture Game DEBUG 
; 2 Change HAIR 
; 3 Add/Remove Items 
; 4 ChangeFurniture()
; 5 MoveFurnitureUp()
; 6 Set Free / Give Up? 
; 7 Fix High Heels 

;_____________________________________________________________________________________________________________________________________________________________________
;_____________________________________________________________________________________________________________________________________________________________________
			
			;TEST NEW FURNITURE LIBRARY 

			;1 fill an array with Furniture
			;---> the furnitures have attributes and are selected based on them. 
			;- first we fill the WANT attributes
			;- each furniture then fills temporary attributes. 
			;- Bool Function checks 
			
			;---> fill second array with their names...
			;---> fill third array with their Angle (for furnitures that we want to turn 180
		
			;2 random Furniture from the array is selected --> easy lol...............
			
			;allowed for DefeatType: "X"
			;allowed for DefeatScenario: "Y"
				
int FurnNameListLenght
String[] Property FurnNameList Auto
				

Function CreatureFurnitureNameList(String sMode)
	NymTrace("CreatureFurnitureNameList(Mode:"+sMode+")")

	if sMode == "Standard"
	FurnNameListLenght = 72
	FurnNameList = new String[72]
	FurnNameList[0]  = "Gibbet Small B" ;leads to B . was A before but A not good
	FurnNameList[1]  = "Cross Roped Pose 01"
	FurnNameList[2]  = "Cross Roped Pose 02"
	FurnNameList[3]  = "Cross Roped Pose 03"
	FurnNameList[4]  = "Crux Rope A"
	FurnNameList[5]  = "Crux Rope B"
	FurnNameList[6]  = "Saddle Rack 4"
	FurnNameList[7]  = "Chained Under the Gallow 1"
	FurnNameList[8]  = "Chained Under the Gallow 2"
	FurnNameList[9]  = "Chained Under the Gallow 5"
	FurnNameList[10] = "Pole Bondage Upright Down Hanging"
	FurnNameList[11] = "Bondage Pole Hanging (Fire)"
	FurnNameList[12] = "Restraint Pole Standing (BIG)"
	FurnNameList[13] = "Bar Stool"
	FurnNameList[14] = "Rope Up"
	FurnNameList[15] = "Rope Dancer"
	FurnNameList[16] = "Dream Catcher"
	FurnNameList[17] = "Wooden Pony"
	FurnNameList[18] = "Chair Bondage M RV"
	FurnNameList[19] = "Struggle Rope (Gallows)"
	FurnNameList[20] = "Rack"
	FurnNameList[21] = "Chair Sit Tied"
	FurnNameList[22] = "Chair Bondage RV"
	FurnNameList[23] = "Torture Chair (Nails)"
	FurnNameList[24] = "Vampire Supply"
	FurnNameList[25] = "Stocks Kneeling"
	FurnNameList[26] = "Bondage Pole"
	FurnNameList[27] = "Pole Bondage HUB"
	FurnNameList[28] = "Pole Bondage HUHB"
	FurnNameList[29] = "Whipping Pole BF"
	FurnNameList[30] = "Bondage Pole"
	FurnNameList[31] = "Restraint Pole"
	FurnNameList[32] = "Captive Bound Kneeling"
	FurnNameList[33] = "Pole Bondage 3"
	FurnNameList[34] = "Pole Bondage 4"
	FurnNameList[35] = "Stocks Sitting C"
	FurnNameList[36] = "Pole Bondage Upright Down Hanging"
	FurnNameList[37] = "Stocks Chair"
	FurnNameList[38] = "Pole Bondage Hanging"
	FurnNameList[39] = "Wnc Strappado"
	FurnNameList[40] = "Pillory H"
	FurnNameList[41] = "TorturePole 11 KN BF"
	FurnNameList[42] = "Whipping Pole FF"
	FurnNameList[43] = "Whipping Pole BF"
	FurnNameList[44] = "Torture Pole 9 BF"
	FurnNameList[45] = "Pole Bondage 6"
	FurnNameList[46] = "Pole Bondage 4"
	FurnNameList[47] = "Pole Bondage 3"
	FurnNameList[48] = "Pole Bondage 2"
	FurnNameList[49] = "Slave Stocks"
	FurnNameList[50] = "Stocks Standing Edged"
	FurnNameList[51] = "Pillory (Large)"
	FurnNameList[52] = "Captive Bound Kneeling (Small Pole)"
	FurnNameList[53] = "Gibbet Small B"
	FurnNameList[54] = "Gibbet Ultra Slim Standing"
	FurnNameList[55] = "Whipping Pole BF"
	FurnNameList[56] = "Gibbet Small C"
	FurnNameList[57] = "Gibbet Small (vary)"
	FurnNameList[58] = "Restraint Pole Shackle 6"
	FurnNameList[59] = "Whipping Pole BF"
	FurnNameList[60] = "Stocks Chair"
	FurnNameList[61] = "Stocks Sitting A"
	FurnNameList[62] = "Stocks Sitting B"
	FurnNameList[63] = "Stocks Kneeling C"
	FurnNameList[64] = "Torture Pole 7 BF"
	FurnNameList[65] = "Torture Chaining Pole"
	FurnNameList[66] = "Torture Pole D"
	FurnNameList[67] = "Torture Pole Ba"
	FurnNameList[68] = "Torture Pole Bb"
	FurnNameList[69] = "Chained Under The Gallow 4"
	FurnNameList[70] = "Pyre Pole"
	FurnNameList[71] = "Tilted Wheel"
	endif 

EndFunction 				


				
	Float CurrentPlacementAngle = 0.0			
	Float CurrentPlacementHeight = 0.0			
	int CurrentFurnitureNum = 0
	String CurrentFurnitureName = "empty"
	
int Function CheckifFurnitureAllows(String sToCheck)

	NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")")
	FillFurniture(CurrentFurnitureName, 0, false, true)

	if sToCheck == "Dildo Vaginal"
		
		return FurnAllow_DildoVaginal

	elseif sToCheck == "Dildo Anal"

		return FurnAllow_DildoAnal
		
	elseif sToCheck == "Whipping"
	
		return FurnAllow_Whipping
		
	elseif sToCheck == "Showers"
	
		return FurnAllow_Showers
		
	endif 

EndFunction
	
	
	;There is an animation event called AnimObjectUnequip, which sounds like it might be what you're looking for
	;Try doing Debug.SendAnimationEvent("AnimObjectUnequip", player) and see if it works out 🙂
	;(there are also payloads called AnimObjLoad & AnimObjDraw for doing the opposite)
	
	
	
	
	;OLD DELETE
;/  	
Form Function GetFurniture() 		;##Get ;#GetFurniture()
		NymTrace("GetFurniture()")
		;Guide:
		;[]FurnNameList:  Array with ALL Furniture Names we currently use 
		;FillFurniture(): Gets all the suitable furnitures into an array 
		;return: we select randomly one of the suitable Furnitures and return its ObjectReference for placement 
		
		;we can now call individual Furnitures with FillFurniture("NameString", 0, true) and even check if its suitable (making also smaller calls with only SOME names
Device
		NymTrace("GetFurniture()")
		FillAttributeRequirements()
		CreatureFurnitureNameList("Standard")
		;FurnNameListLenght ) 72
		Furniture_PlacementAngle_ARRAY = new Float[72]	
		Furniture_PlacementHeight_ARRAY = new Float[72]	
		Furniture_Name_ARRAY = new String [72]	
		Furniture_Object_ARRAY = new Form [72]
		

		int i = FurnNameListLenght ;FurnNameList[] has all the names. we now cycle them all through, building a new array with fewer names basically
		
		while i > 0		
		i -= 1
		;we get the Furniture Name to call from FillFurniture from the FurnNameList[x]
		FillFurniture(FurnNameList[i], iFurnARRAYsize, false, false)
		endwhile 
		
		CurrentFurnitureNum = Utility.RandomInt(0, iFurnARRAYsize)

		CurrentPlacementAngle = Furniture_PlacementAngle_ARRAY[CurrentFurnitureNum]		
		CurrentPlacementHeight = Furniture_PlacementHeight_ARRAY[CurrentFurnitureNum]	
		CurrentFurnitureName = Furniture_Name_ARRAY[CurrentFurnitureNum]
		NymTrace("GetFurniture(NUM: "+CurrentFurnitureNum+")")
		NymTrace("GetFurniture(NAME: "+CurrentFurnitureName+")")

		return Furniture_Object_ARRAY[CurrentFurnitureNum]

	
EndFunction 	
/;				
		
		
int iFurnARRAYsize = 0		

Function FillFurniture(String sFurnName, int iARRAYsize, bool bForceFill, bool bCheck) ;#FillFurniture	;#Library
		
		Bool PlayerIndoor = false 
		if cfgqst.PlayerRef.IsInInterior()
		PlayerIndoor = true 
		endif 
		
		iARRAYsize = iFurnARRAYsize
	
		if sFurnName == "Gibbet Small A"	;skip. this has issues we need to solve first
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	;OutDoor 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1	
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05039554, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif
			
		elseif sFurnName == "Cross Roped Pose 01"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	;OutDoor 
			FurnAllow_Showers = 0
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
				if PlayerIndoor
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0 ;lower cross indoor?
				else 
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
				endif 
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503BCA6, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
		
		elseif sFurnName == "Cross Roped Pose 02"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 
			FurnAllow_Showers = 0
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
				if PlayerIndoor
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0 ;lower cross indoor?
				else 
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
				endif 
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503BCA7, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Cross Roped Pose 03"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 0
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
				if PlayerIndoor
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0 ;lower cross indoor?
				else 
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
				endif 
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503BCB4, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Crux Rope A"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 0
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
				if PlayerIndoor
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = -55.0 ;lower cross indoor?
				else 
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
				endif 
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503BC91, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	 

		elseif sFurnName == "Crux Rope B"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
				if PlayerIndoor
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;lower cross indoor?
				else 
				Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
				endif 
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503BC91, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Saddle Rack 4"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059AE0, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Chained Under the Gallow 1"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0  ;armbinders? could work?
			FurnAllow_DD_StraitJacket = 0
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050455EB, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Chained Under the Gallow 2"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0  ;armbinders? could work?
			FurnAllow_DD_StraitJacket = 0
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050455EC, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Chained Under the Gallow 5"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0  ;armbinders? could work?
			FurnAllow_DD_StraitJacket = 0
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050455D9, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Pole Bondage Upright Down Hanging"
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1	;even NICER with yoke?
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 ;
			FurnAllow_DD_StraitJacket = 1
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0 ;normal cross outdoor
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Bondage Pole Hanging (Fire)"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
					
		elseif sFurnName == "Restraint Pole Standing (BIG)"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 2	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if AllowFurniture()
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0508AF94, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	

		;-------------- INDOOR FURNITURES ---------------;
		elseif sFurnName == "Bar Stool"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1 	 	;Indoor
			FurnAllow_Showers = 1 ;want!
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059AE2, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Rope Up"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1 	;Indoor	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1 ;untested 
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059B5A, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
		;/	
		elseif sFurnName == "Rope Down"	 ;BUGGED
	         ;"Rope Down"
            r = akRef.PlaceAtMe((Game.GetFormFromFile(0x05059B5C, "ZaZAnimationPack.esm")), 1, true, false)     ;BUGGED? uses Rack Anim
        
            FurnitureName = "Rope Down"
            FurnAllow_Showers = 1
            FurnAllow_Whipping = 1
        
            FurnAllow_DildoVaginal = 1
            FurnAllow_DildoAnal = 1
            
            FurnAllow_DD_Yoke = 1
            FurnAllow_DD_YokeBreast = 1
            FurnAllow_DD_YokeFiddle = 1
            FurnAllow_DD_Armbinders = 1 
            FurnAllow_DD_StraitJacket = 1 	
/;			

		elseif sFurnName == "Rope Dancer"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1 	;Indoor	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1 ;untested 
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059AD8, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Dream Catcher"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1 ;Indoor 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1 ;want
			FurnAllow_DildoAnal = 1	;want
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059B62, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Wooden Pony"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0		 ;needs special ones
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1		;want DDs!! check for existing yoke
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050521BD, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Chair Bondage M RV"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0		 ;needs special ones
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 0		
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05048888, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Struggle Rope (Gallows)"		;needs special attention (is there a frame?)
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1		
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			
			;Furniture_PlatformName = "Bar Stool"
			
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505EDD0, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	

		elseif sFurnName == "Rack"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 0 ;needs special care  ---> Rack Scenario 
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1 
			FurnAllow_DildoAnal = 1		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0		
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0500E2BF, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Chair Sit Tied"			;Hands on Back, Legs together  
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1 
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 0 
			FurnAllow_DildoAnal = 1		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1		
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059ADC, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Chair Bondage RV"			;Stuhl, Hands on Back, Tits towards Lehne     
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1 
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1 
			FurnAllow_DildoAnal = 1		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 0		
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05048882, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 			
	
		elseif sFurnName == "Torture Chair (Nails)"			   
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1 
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1 
			FurnAllow_DildoAnal = 0		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1		
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504CA3F, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	

		elseif sFurnName == "Vampire Supply"				;Upside Down hanging, very slow animated   	   
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 1  ;Indoor  
			FurnAllow_Showers = 1 
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1 
			FurnAllow_DildoAnal = 1		 
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1		
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05059B60, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
		;	<<< Indoor End <<<	;
		
		;MIX Furnitures 
		elseif sFurnName == "Stocks Kneeling"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505747D, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Bondage Pole"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 0
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05044ABA, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Pole Bondage HUB"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0508535E, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Pole Bondage HUHB"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05085363, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
	
		elseif sFurnName == "Whipping Pole BF"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05070961, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Bondage Pole"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05044AB2, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 			
			
		elseif sFurnName == "Restraint Pole"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0508B4FE, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Captive Bound Kneeling"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05078048, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
			
		elseif sFurnName == "Pole Bondage 3"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504563E, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Pole Bondage 4"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504563F, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Stocks Sitting C"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	 ;needs #platform!!! 
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05057465, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Pole Bondage Upright Down Hanging"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045662, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Stocks Chair"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05057493, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Pole Bondage Hanging"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0507DC23, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "Wnc Strappado"	
			;needs platform. something to balance on maybe
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 ;more whipping
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 ;test ---> not without longer rope. looks weird
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505ABC5, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

		elseif sFurnName == "Pillory H"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 ;more whipping
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0 ;test
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503FDEF, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
			
		elseif sFurnName == "TorturePole 11 KN BF"	
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 ;more whipping
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 1 ;test
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503846C, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 			

		elseif sFurnName == "Whipping Pole FF"				;Hanging Up a Pole, Front exposed, feet in the air
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 ;more whipping
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0507095A, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Whipping Pole BF"				;Hanging Up a Pole, Back exposed, feet in the air - dark wood
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 ;more whipping
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0506B748, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 				

		elseif sFurnName == "Torture Pole 9 BF"				;   Standing at Pole, hands tiegt flat to the side, on toes, back exposed
			FurnAllow_Boots = 100
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1 
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 1 
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05038470, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Pole Bondage 6"	;wrong color?			;  Sitting with back at Pole, hands back, feet straight
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 0
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045641, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
			
	elseif sFurnName == "Pole Bondage 4"	;YAKUZA			;  Yakuza
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045627, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
			
	elseif sFurnName == "Pole Bondage 3"	;(round, tall, beige)     TorturePole A" ;Front exposed, on toes    
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045626, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

	elseif sFurnName == "Pole Bondage 2"	;	;  "TorturePole A" ;Front exposed, on toes, hands bound behind back.
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05045625, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 	
			
		elseif sFurnName == "Slave Stocks"	;  ;wooden beams, strugle left and right, front exposed     
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050634E2, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 		
			
		elseif sFurnName == "Stocks Standing Edged"	;  ;edged on tip of toes in wooden devie. boots misalign    
			FurnAllow_Boots = 0			;no boots!!!
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505746F, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 

	elseif sFurnName == "Pillory (Large)"	;NEEDS NO COLLISION   
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0500FDE1, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1
			endif 
		;FurnitureName = "Punishment Pillory Kneeling (BROKEN)"	
		
		elseif sFurnName == "Captive Bound Kneeling (Small Pole)"	; BUKKAKE ;edged on tip of toes in wooden devie. boots misalign    
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05077ADD, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1		
			endif
		
		elseif sFurnName == "Gibbet Small B"	;
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		;clipping?
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05038F81, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1		
			endif
	elseif sFurnName == "Gibbet Ultra Slim Standing"	; BUKKAKE ;edged on tip of toes in wooden devie. boots misalign    
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05039B00, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1			
			endif

	elseif sFurnName == "Whipping Pole BF"	  		;   ;Restraint Shackle Pole 1 (Static :( 
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503B12F, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif
	elseif sFurnName == "Gibbet Small C"	  		 
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05039ACB, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif

	elseif sFurnName == "Gibbet Small (vary)"	  		
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05039558, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif			
			
	elseif sFurnName == "Restraint Pole Shackle 6"	  		
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503B134, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1		
			endif
	elseif sFurnName == "Whipping Pole BF"	  		     ;Pillory (X Pillory laying horizontally. Use with an animation pack for scene)		
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503FDFF, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1		
			endif
	elseif sFurnName == "Stocks Chair"	  		;nymFav     ; (my favourite) in Wood - (Arms and Legs Spread, exposing all)	
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1
			FurnAllow_DildoVaginal = 1
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05057491, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1		
			endif			
		elseif sFurnName == "Stocks Sitting A"	  		    ;Stocks Sitting, legs spread, hands behind.
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0	;platform?
			FurnAllow_DildoVaginal = 0		
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05057483, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1			
			endif
		elseif sFurnName == "Stocks Sitting B"	  		    ;Stocks Sitting, legs spread, hands behind.
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0	;platform?
			FurnAllow_DildoVaginal = 0		
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05057488, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1			
			endif
		elseif sFurnName == "Stocks Kneeling C"	  		  
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 0	;platform?
			FurnAllow_DildoVaginal = 0		
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505747D, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif			
			
		elseif sFurnName == "Torture Pole 7 BF"	  		    
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0503848C, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif			
		elseif sFurnName == "Torture Chaining Pole"	  		  ; kneeling in a wooden device, arms above, breasts exposed.
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05044AAC, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1				
			endif			
		elseif sFurnName == "Torture Pole D"	  		  ; kneeling in a wooden device, arms above, breasts exposed.
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 1		
			FurnAllow_DD_YokeBreast = 1
			FurnAllow_DD_YokeFiddle = 1
			FurnAllow_DD_Armbinders = 1
			FurnAllow_DD_StraitJacket = 1
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504091C, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif
		elseif sFurnName == "Torture Pole Ba"	  		  ;free hangning, back and ass exposed, arms above head, animated slow 		;BRUTAL
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504091C, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif			
		elseif sFurnName == "Torture Pole Bb"	  		  ;free hangning, back and ass exposed, arms above head, animated slow		;BRUTAL
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x05040919, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif
		elseif sFurnName == "Chained Under The Gallow 4"	  		  ; free hanging, chaines, chain cuffs, off the ground, slow animated NICE
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x050455EE, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif
		elseif sFurnName == "Pyre Pole"	  		  ;hanging free, beasts exposed, feet off ground. no fuck belts
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 0	;lower ?
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 0
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0505D272, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif
		elseif sFurnName == "Tilted Wheel"	  		  ; NICE!!! ADD this To Wheel Scenario #TODO - wheel Pose legs spread!
			FurnAllow_Boots = 100	
			FurnAllow_InDoorOutDoor = 100 	
			FurnAllow_Showers = 1	
			FurnAllow_Whipping = 1	
			FurnAllow_DildoVaginal = 1		
			FurnAllow_DildoAnal = 1
			FurnAllow_Race = "Any"
			FurnAllow_DD_Yoke = 0		
			FurnAllow_DD_YokeBreast = 0
			FurnAllow_DD_YokeFiddle = 0
			FurnAllow_DD_Armbinders = 0
			FurnAllow_DD_StraitJacket = 0
			if !bCheck && (AllowFurniture() || bForceFill)
			Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
			Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
			Furniture_Object_ARRAY[iARRAYsize] = (Game.GetFormFromFile(0x0504F5D3, "ZaZAnimationPack.esm") as Form) 
			Furniture_Name_ARRAY[iARRAYsize] = sFurnName
			NymTrace("FurnitureLibrary("+Furniture_Name_ARRAY[iARRAYsize]+" ALLOWED)")
			iFurnARRAYsize += 1	
			endif			
			
			;MISSING: FUCK MACHINES, TREES ; TROLL? 
			
	endif 
		
EndFunction 
			
Function ResetFurnitureAttributes()		;NEWSYSTEM 2026

	;Reset Attributes 
	FurnAllow_Boots = 100
	FurnAllow_InDoorOutDoor = 100 
	FurnAllow_Showers = 100
	FurnAllow_Whipping = 100
	FurnAllow_DildoVaginal = 100
	FurnAllow_DildoAnal = 100
	FurnAllow_Race = "Any"
	FurnAllow_DD_Yoke = 100
	FurnAllow_DD_YokeBreast = 100
	FurnAllow_DD_YokeFiddle = 100
	FurnAllow_DD_Armbinders = 100 
	FurnAllow_DD_StraitJacket = 100	

EndFunction 			

Function FillAttributeRequirements()	;NEWSYSTEM 2026
NymTrace("FillAttributeRequirements()")

	;Reset Requirements 
	Require_Boots = 100
	Require_InDoorOutDoor = 100 
	Require_Showers = 100
	Require_Whipping = 100
	Require_DildoVaginal = 100
	Require_DildoAnal = 100
	Require_Race = "Any"
	Require_DD_Yoke = 100
	Require_DD_YokeBreast = 100
	Require_DD_YokeFiddle = 100
	Require_DD_Armbinders = 100 
	Require_DD_StraitJacket = 100
	
	if storqst.WantWhipping
	Require_Whipping = 1
	endif 
	
	;Check DDs
	if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
	
		if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Classic")
		Require_DD_Yoke = 1
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Armbinder")
		Require_DD_Armbinders = 1
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Strait Jacket")
		Require_DD_StraitJacket = 1				
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast Front")
		Require_DD_YokeBreast = 1

		;elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "WIP!!!")		;#TODO We need detection for the Fiddle!
		;Require_DD_YokeFiddle = 1
		endif 
	endif 
	
	;Indoor/Outdoor 
	if cfgqst.PlayerRef.IsInInterior()
	Require_InDoorOutDoor = 1 ;Indoor 
	else 
	Require_InDoorOutDoor = 2 ;Outdoor 
	endif 
	
	;Check Boots 
	If !cfgqst.IsPlayerBarefoot()
	Require_Boots = 1
	endif 
	
	;To Do 
	;DILDO Vaginal
	;DILDO Anal
	
	if cfgqst.DefeatTypeGeneral == "AreHumanoids"
		if cfgqst.DefeatTypeGeneral == "Trolls"
		Require_Race = "Trolls"
		endif 
	endif 
	
	if Nym()
	NymTrace("FillAttributeRequirements(FINAL) REQUIREMENTS")
	NymTrace("Require_Boot = "+Require_Boots)
	NymTrace("Require_InDoorOutDoor = "+Require_InDoorOutDoor)
	NymTrace("Require_Showers = "+Require_Showers)
	NymTrace("Require_Whipping = "+Require_Whipping)
	NymTrace("Require_DildoVaginal = "+Require_DildoVaginal)
	NymTrace("Require_DildoAnal = "+Require_DildoAnal)
	NymTrace("Require_Race = "+Require_Race)
	NymTrace("Require_DD_Yoke = "+Require_DD_Yoke)
	NymTrace("Require_DD_YokeBreast = "+Require_DD_YokeBreast)
	NymTrace("Require_DD_YokeFiddle = "+Require_DD_YokeFiddle)
	NymTrace("Require_DD_Armbinders = "+Require_DD_Armbinders)
	NymTrace("Require_DD_StraitJacket = "+Require_DD_StraitJacket)	
	endif 

EndFunction 


Bool Function AllowFurniture()		;NEWSYSTEM 2026
	
	Bool Allowed = true
	;previous check has to to be TRUE - and the check has to be either irrelevant (100) or match the exact WANT value).
	;if ONE attribute check fails, we stop checking the others 
	
	
	;InDoorOutDoor	;100 -> Furniture works in and outdoor. 1 only Indoor, 2 only Outdoor 
	if Allowed && ((FurnAllow_InDoorOutDoor == 100) || (Require_InDoorOutDoor == FurnAllow_InDoorOutDoor))
	Allowed = true 
	else 
	Allowed = false 
	endif 

	;DD_Yoke
	if Allowed && ((Require_DD_Yoke == 100) || (Require_DD_Yoke == FurnAllow_DD_Yoke))
	Allowed = true 
	else 
	Allowed = false 
	endif 
	
	;DD_YokeBreast
	if Allowed && ((Require_DD_YokeBreast == 100) || (Require_DD_YokeBreast == FurnAllow_DD_YokeBreast))
	Allowed = true 
	else 
	Allowed = false 
	endif 	
	
	;DD_YokeFiddle
	if Allowed && ((Require_DD_YokeFiddle == 100) || (Require_DD_YokeFiddle == FurnAllow_DD_YokeFiddle))
	Allowed = true 
	else 
	Allowed = false 
	endif 	

	;DD_Armbinders
	if Allowed && ((Require_DD_Armbinders == 100) || (Require_DD_Armbinders == FurnAllow_DD_Armbinders))
	Allowed = true 
	else 
	Allowed = false 
	endif 	

	;DD_StraitJacket
	if Allowed && ((Require_DD_StraitJacket == 100) || (Require_DD_StraitJacket == FurnAllow_DD_StraitJacket))
	Allowed = true 
	else 
	Allowed = false 
	endif 
	
	;Showers
	if Allowed && ((Require_Showers == 100) || (Require_Showers == FurnAllow_Showers))
	Allowed = true 
	else 
	Allowed = false 
	endif 
	
	;Whipping 
	if Allowed && ((Require_Whipping == 100) || (Require_Whipping == FurnAllow_Whipping))
	Allowed = true 
	else 
	Allowed = false 
	endif 
	
	;DildoVaginal
	if Allowed && ((Require_DildoVaginal == 100) || (Require_DildoVaginal == FurnAllow_DildoVaginal))
	Allowed = true 
	else 
	Allowed = false 
	endif 	
	
	;DildoAnal	
	if Allowed && ((Require_DildoAnal == 100) || (Require_DildoAnal == FurnAllow_DildoAnal))
	Allowed = true 
	else 
	Allowed = false 
	endif 					

	return Allowed

EndFunction 


;_____________________________________________________________________________________________________________________________________________________________________
;_____________________________________________________________________________________________________________________________________________________________________



Function RemovePunishmentItems()

	;	cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
		cfgqst.RemoveFuckBelt()
		defqst.RemoveBrutalPlugs()
		cfgqst.RemoveDefeatClothing()
		cfgqst.RemoveDefeatGags()
		cfgqst.RemoveChains()
		
EndFunction

Function ChangeFurniture()
;TODO make sure we dont get the previous furniture LOL
cfgqst.ResetIdle(cfgqst.PlayerRef)
RemoveFurniturePlayer() ;delete furniture , resets Idle 
	
;	if Nym()
	CreateFurniture_NEW()	
;	else 
;	Device = CreateFurniture()		;#Device1			---> we select a furniture from the function list
;	endif 

Device.Activate(cfgqst.PlayerRef, true)	;activate new furniture

Utility.Wait(0.5)

int Loops = 0

while (cfgqst.PlayerRef.GetSitState() == 0) && cfgqst.IsDefeatRunning() && cfgqst.ModEnabled
	Loops+=1
	NymTrace("Attempt to restore Furniture Animation SitState("+cfgqst.PlayerRef.GetSitState()+" - Loops:"+Loops)
	RestoreFurniture()
	Utility.Wait(0.5)
endWhile 

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
	if cfgqst.Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT capturequest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT capturequest: (#trace NYM) "+Text2)
	endif
EndFunction


Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("Calmquest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT capturequest["+storqst.Defeat_ID+"]: BOX (#Box NYM) "+Text2)

EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

