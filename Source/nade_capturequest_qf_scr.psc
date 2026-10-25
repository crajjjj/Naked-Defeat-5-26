
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

Function Fragment_2()
    RegisterForKey(cfgqst.DefeatKey)
    debug.Trace("NAKED DEFEAT capturequest: stage 20", 0)
    debug.Trace("NAKED DEFEAT capturequest: DefeatTypeScenario: " + cfgqst.DefeatTypeScenario, 0)
    if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
        cfgqst.DefeatTypeScenario = "DD"
    endif
    if !cfgqst.DefeatViaSlavery
        bool WearingDDs = false
        bool WearingDDs_HeavyBondage = false
        if cfgqst.DefeatTypeScenario == "DD"
            FurnitureEvent = true
        elseif !cfgqst.IsPoseScenario() && !(cfgqst.DefeatTypeScenario == "DD") && D100(cfgqst.DefeatDDeProb)
            debug.Trace("NAKED DEFEAT capturequest: DD Random Event", 0)
            cfgqst.DefeatTypeScenario = "DD"
            if cfgqst.ModDDframework && cfgqst.DefeatTypeScenario == "DD"
                if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
                    WearingDDs = true
                endif
                if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Heavy Bondage")
                    WearingDDs_HeavyBondage = true
                endif
                FurnitureEvent = true
                if !WearingDDs
                    nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "Random")
                elseif WearingDDs && !WearingDDs_HeavyBondage
                    WearingDDs_HeavyBondage = true
                    int i = utility.RandomInt(1, 9)
                    debug.Trace("NAKED DEFEAT capturqst[" + storqst.Defeat_ID + "]: AddDefeatBinds() - Add DDevices Random: " + i, 0)
                    if i == 1
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Yoke")
                    elseif i == 2
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke")
                    elseif i == 3
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Breast Yoke")
                    elseif i == 4
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Prisoner Chains")
                    elseif i == 5
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Steel Manacles")
                    elseif i == 6
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Rope Armbinder")
                    elseif i == 7
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Black Leather Straitjacket Topless")
                    elseif i == 8
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Yoke (Fiddle)")
                    elseif i == 9
                        nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Hooked Elbow Shackles")
                    endif
                endif
            endif
        endif
        if WearingDDs_HeavyBondage
            calmqst.AddDefeatCuffs("Random Ankle")
        endif
    endif
    if calmqst.VictimCount > 0 && !cfgqst.RapeAgain && !cfgqst.AbortAll
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
    if !cfgqst.IsPoseScenario()
        debug.Trace("NAKED DEFEAT capturequest: Furniture Event", 0)
        FurnitureEvent = true
    endif
    if !Nym()
        cfgqst.Strip(37, cfgqst.PlayerRef)
    endif
    cfgqst.Strip(33, cfgqst.PlayerRef)
    cfgqst.Strip(32, cfgqst.PlayerRef)
    cfgqst.Strip(57, cfgqst.PlayerRef)
    cfgqst.Strip(35, cfgqst.PlayerRef)
    cfgqst.Strip(42, cfgqst.PlayerRef)
    cfgqst.Strip(46, cfgqst.PlayerRef)
    cfgqst.Strip(52, cfgqst.PlayerRef)
    if cfgqst.DefeatTypeScenario == "Yoke"
        ScreenMessage("They lock you in place with a heavy chain...")
        AddPunishmentItems(0)
        cfgqst.AddChains("ball")
        calmqst.AddDefeatCuffs("Random Ankle")
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "Armbinder"
        ScreenMessage("They lock you in place with a heavy chain...")
        AddPunishmentItems(0)
        cfgqst.AddChains("ball")
        calmqst.AddDefeatCuffs("Random Ankle")
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "Cuffs"
        ScreenMessage("They lock you in place with a heavy chain...")
        AddPunishmentItems(0)
        cfgqst.AddChains("collarchain")
        calmqst.AddDefeatCuffs("Random Ankle")
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "Pillory"
        ScreenMessage("This Pillory is your new home now...")
        AddPunishmentItems(0)
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "XCross"
        ScreenMessage("X is your name now...")
        AddPunishmentItems(0)
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "Stockade"
        ScreenMessage("You will be fucked from the machine without end now.")
        AddPunishmentItems(0)
        calmqst.AddDefeatCuffs("Ankle Metal")
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif cfgqst.DefeatTypeScenario == "Wheel"
        ScreenMessage("At least they did not break your bones for this...")
        calmqst.AddDefeatCuffs("Rope")
        AddPunishmentItems(0)
        calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[0], "Wait", false)
        calmqst.PlayPoseOnActor(calmqst.Victims[1], "Wait", false)
        calmqst.Vehicle("restore")
    elseif FurnitureEvent
        ScreenMessage("You are bound tight to an evil contraption.")
        CreateFurniture_NEW()
        if cfgqst.DefeatTypeScenario == "Furniture"
            AddPunishmentItems(1)
        endif
        if Nym()
            calmqst.AddDefeatCuffs("Random")
        endif
        LocalFurnitureFound = false
        if Nym()
        else
            calmqst.RemoveDefeatBinds()
        endif
        debug.SendAnimationEvent(cfgqst.PlayerRef, "IdleForceDefaultState")
        if !cfgqst.VRfix
            cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
            cfgqst.InFurniture = true
            debug.Trace("Naked Defeat capturequest: Vehicle DETACHED for Furniture game", 0)
        endif
        bool aMessage = false
        if cfgqst.ShortPunishment == 2
        else
            AddPunishmentItems(0)
        endif
        while cfgqst.PlayerRef.IsInCombat()
            utility.Wait(1.0)
        endwhile
        if !cfgqst.VRfix
            cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
            cfgqst.InFurniture = true
            debug.Trace("Naked Defeat capturequest: Vehicle DETACHED for Furniture game", 0)
        endif
        storqst.PlayerSoundToPlay = "Pain"
        SendModEvent("Moan", "", 0.0)
        Device.Activate(cfgqst.PlayerRef, true)
        cfgqst.PlayCuffsSoundRope()
        cfgqst.DefeatStateBindings = "Furniture"
        if calmqst.Victims[0]
            defqst.PlaceExplosion(calmqst.Victims[0], "Dust Medium")
            calmqst.PlayPoseOnActor(calmqst.Victims[0], "FollowerDevices", false)
        endif
        if calmqst.Victims[1]
            defqst.PlaceExplosion(calmqst.Victims[1], "Dust Medium")
            calmqst.PlayPoseOnActor(calmqst.Victims[1], "FollowerDevices", false)
        endif
        SendModEvent("Moan", "", 0.0)
        utility.Wait(2.0)
        defqst.PlaceExplosion(cfgqst.PlayerRef, "Dust Large")
        SendModEvent("Moan", "", 0.0)
    endif
    cfgqst.FadeToBlack(false)
    if cfgqst.Allow_Whipping && !cfgqst.AbortAll && FurnAllow_Whipping > 0
        bool StartWhipping = false
        if cfgqst.ShortPunishment == 2 || cfgqst.HarderDefeat
            StartWhipping = true
        elseif FurnAllow_Whipping > 1
            StartWhipping = true
        elseif D100(cfgqst.DefeatWhipProb)
            StartWhipping = true
        endif
        if StartWhipping
            StartWhipping = false
            ScreenMessage("Prepare for some whipping!")
            cfgqst.Immobilize(true)
            if !cfgqst.AbortAll
                utility.Wait(4.0)
            endif
            cfgqst.DefeatStatePlayer = "Whipped"
            cfgqst.TempIntBridge = 0
            NymTrace("WhipQuestTest A")
            if cfgqst.IsPoseScenario()
                calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
                cfgqst.WhipAgain = true
                NymTrace("cfgqst.WhipAgain = true")
            endif
            storqst.StartWhipping_00(cfgqst.DefeatWhipTime)
            NymTrace("WhipQuestTest B")
            int iTime = 0
            while storqst.WhippingDuration && cfgqst.ModEnabled && !cfgqst.AbortAll
                if cfgqst.PlayerRef.GetSitState() == 0
                    NymTrace("Attempt to restore Furniture Animation BBB SitState(" + cfgqst.PlayerRef.GetSitState() + ")")
                    InfoMessage("Attempt to restore Furniture Animation")
                    RestoreFurniture()
                    utility.Wait(3.0)
                endif
                if !cfgqst.AbortAll
                    utility.Wait(1.0)
                    iTime = iTime + 1
                endif
            endwhile
            cfgqst.TempIntBridge == 0
            if !cfgqst.AbortAll
                SetStage(100)
            elseif cfgqst.AbortAll
                SetStage(1000)
            endif
        elseif !cfgqst.AbortAll
            SetStage(100)
        elseif cfgqst.AbortAll
            SetStage(1000)
        endif
    elseif !cfgqst.AbortAll
        SetStage(100)
    elseif cfgqst.AbortAll
        SetStage(1000)
    endif
    SetStage(25)
EndFunction

Function PlaceTortureDevice(string sType)
    NymTrace("PlaceTortureDevice(" + sType + ")")
    if sType == "Remove"
        if PlacedTortureDevice1
            PlacedTortureDevice1.DisableNoWait(false)
            PlacedTortureDevice1.Delete()
            PlacedTortureDevice1 = None
        endif
        if PlacedTortureDevice2
            PlacedTortureDevice2.DisableNoWait(false)
            PlacedTortureDevice2.Delete()
            PlacedTortureDevice2 = None
        endif
        if PlacedTortureDevice3
            PlacedTortureDevice3.DisableNoWait(false)
            PlacedTortureDevice3.Delete()
            PlacedTortureDevice3 = None
        endif
    elseif sType == "Candles Low 1"
        PlacedTortureDevice1 = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(223416, "Skyrim.esm"), 1, false, false)
    elseif sType == "Candles Low 2"
        PlacedTortureDevice1 = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(223420, "Skyrim.esm"), 1, false, false)
    elseif sType == "Candles Big High"
        PlacedTortureDevice1 = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(223410, "Skyrim.esm"), 1, false, false)
    endif
    float fDistance = 10.0
    PlacedTortureDevice1.MoveTo(calmqst.VehiclePlayer, fDistance * math.Sin(calmqst.VehiclePlayer.GetAngleZ() + 0.0), fDistance * math.Cos(calmqst.VehiclePlayer.GetAngleZ() + 0.0), calmqst.VehiclePlayer.GetHeight() - 0.0, true)
    PlacedTortureDevice1.SetAngle(0.0, 0.0, 0.0)
EndFunction

Function Add_ImprovisedArmor_Falmer()
    armor Temparmor
    bool NeedBottom = true
    if D100(66.0)
        Temparmor = (game.GetFormFromFile(28780, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
        cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
        cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        Temparmor = (game.GetFormFromFile(28786, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
        cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
        cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        int i = utility.RandomInt(1, 3)
        if i == 1
            Temparmor = (game.GetFormFromFile(27376, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            if D100(40.0)
                Temparmor = (game.GetFormFromFile(27400, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
                cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
                cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            elseif D100(40.0)
                Temparmor = (game.GetFormFromFile(27379, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
                cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
                cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            endif
        elseif i == 2
            Temparmor = (game.GetFormFromFile(30189, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            if D100(40.0)
                Temparmor = (game.GetFormFromFile(32952, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
                cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
                cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            elseif D100(40.0)
                Temparmor = (game.GetFormFromFile(27379, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
                cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
                cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
            endif
        elseif i == 3
            Temparmor = (game.GetFormFromFile(400230, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            NeedBottom = false
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(50.0)
            Temparmor = (game.GetFormFromFile(32971, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(50.0)
            Temparmor = (game.GetFormFromFile(28794, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(33.0)
            Temparmor = (game.GetFormFromFile(30188, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(50.0)
            Temparmor = (game.GetFormFromFile(27383, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(50.0)
            Temparmor = (game.GetFormFromFile(27387, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
    else
        Temparmor = (game.GetFormFromFile(28780, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
        cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
        cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        Temparmor = (game.GetFormFromFile(28788, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
        cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
        cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        Temparmor = (game.GetFormFromFile(28794, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
        cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
        cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
    endif
EndFunction

Function Add_BlindFold_Falmer()
    armor Temparmor
    int i = utility.RandomInt(1, 3)
    if i == 1
        Temparmor = (game.GetFormFromFile(1107326440, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
    elseif i == 2
        Temparmor = (game.GetFormFromFile(1107326434, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
    elseif i == 3
        Temparmor = (game.GetFormFromFile(1107326438, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
    endif
    cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
    cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
EndFunction

Function Add_Collar_Falmer()
    armor Temparmor
    int i = utility.RandomInt(1, 2)
    if i == 1
        Temparmor = (game.GetFormFromFile(1107325050, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
    elseif i == 2
        Temparmor = (game.GetFormFromFile(1107354459, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
    endif
    cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
    cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
EndFunction

Function AddPunishmentItems(int level)
    armor Temparmor
    NymTrace("AddPunishmentItems(" + level + ")")
    bool DDPiercings = false
    bool aMessage = false
    int equipchance = 0
    int i = 0
    if level == 0
        equipchance = 50
    elseif level == 1
        equipchance = 100
    endif
    if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Piercing Nipples")
        DDPiercings = true
    endif
    if storqst.ModTawoba && cfgqst.NymBeta && cfgqst.DefeatType == "Falmers"
        if D100(66.0)
            Add_BlindFold_Falmer()
        endif
        if D100(66.0)
            Add_Collar_Falmer()
        endif
        if D100(66.0)
            if D100(66.0)
                Temparmor = (game.GetFormFromFile(1107329208, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            else
                Temparmor = (game.GetFormFromFile(1107323656, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            endif
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
        if D100(66.0)
            Temparmor = (game.GetFormFromFile(1107326445, "The Amazing World of Bikini Armors REMASTERED.esp") as armor)
            cfgqst.PlayerRef.AddItem(Temparmor, 1, true)
            cfgqst.PlayerRef.EquipItem(Temparmor, false, true)
        endif
    elseif Nym() && cfgqst.DefeatType == "Dwemer"
    else
        if cfgqst.ModPLUGS && D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE && CheckifFurnitureAllows("Dildo Anal") > 0
            defqst.AddBrutalPlugs(0)
            aMessage = true
        endif
        if !DDPiercings && !(cfgqst.DefeatTypeScenario == "DD")
            if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef) && cfgqst.Allow_PunishmentItems_TOGGLE
                cfgqst.AddDefeatClothing()
                aMessage = true
            endif
        endif
        if cfgqst.ModDDframework
            if DDPiercings
                NymTrace("Already wearing Piercings")
            elseif D100(30.0)
                nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Piercings")
            elseif D100(30.0)
                nade_ddint.EquipDDtoActor(cfgqst.PlayerRef, "DD Iron Nipple Clamps")
            endif
        endif
        if D100(equipchance) && cfgqst.Allow_PunishmentItems_TOGGLE
            cfgqst.AddDefeatGags()
            aMessage = true
        endif
        if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef) && CheckifFurnitureAllows("Dildo Vaginal") > 0
            cfgqst.AddFuckBelt()
            aMessage = true
        endif
        SendModEvent("Moan", "", 0.0)
        if aMessage
            aMessage = false
            InfoMessage("Punishment Items equiped. Can be removed again by pressing K (action key)")
        endif
        if !Nym()
            if D100(cfgqst.BondageHaircutProb)
                cfgqst.ChangeHairStyle("Standard")
            endif
        endif
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
	
	

Function Fragment_0()
    debug.Trace("NAKED DEFEAT capturequest: stage 1000", 0)
    LocalFurnitureFound = false
    Furniture_Elevation = 0.0
    RemoveFurniturePlayer()
    storqst.WantWhipping = false
    if Device
        NymBox("#ERROR Device not deleted")
    endif
    if FurniturePlatform
        NymBox("#ERROR Platform not deleted")
    endif
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
    debug.SendAnimationEvent(cfgqst.PlayerRef, "IdleForceDefaultState")
    if Device
        Device.DisableNoWait(false)
        Device.Delete()
    endif
    Platform_Remove()
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
    if cfgqst.IsPoseScenario()
        debug.Trace("NAKED DEFEAT capturequest: RestoreFurniture(Pose Scenario, do nothing!)", 0)
        if Device
            NymTrace("Removing Device!")
            Device.DisableNoWait(false)
            Device.Delete()
            Device = None
        endif
        Platform_Remove()
    else
        debug.Trace("NAKED DEFEAT capturequest: RestoreFurniture()", 0)
        cfgqst.Immobilize(true)
        if cfgqst.PlayerRef.GetSitState() == 0
            ScreenMessage("Restoring Furniture")
            if Device
                Device.Activate(cfgqst.PlayerRef, false)
                Platform_Create("Table 2x1", 0.0, 0.0, 0.0, "")
            elseif Nym()
                debug.MessageBox("Device = none")
            endif
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
	
	int FurnAllow_Cuffs = 0			;666 NOT allowed- 		555 == Ankle Allowed 		444 == Wrists Allowed		 we need to spread this now 0 = all allowed 
	
	String FurnAllow_Race = "Any"
	String FurnBondageType = "Rope"	;rope as default

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
    NymBox("This should NOT HAPPEND")
    if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Lockable")
        if nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Armbinder") && FurnAllow_DD_Armbinders == 0
            cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
            NymTrace("Armbinder Removed For Furniture")
        elseif nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast Front") && FurnAllow_DD_YokeBreast == 0
            cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
            NymTrace("Breast Yoke Removed For Furniture")
        elseif nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Yoke Classic") && FurnAllow_DD_Yoke == 0
            cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
            NymTrace("Yoke Removed For Furniture")
        elseif nade_ddint.IsWearingDDs(cfgqst.PlayerRef, "Strait Jacket")
            cfgqst.RemoveAllDDevices(false, "empty01", "empty02", "empty03", "empty04", "empty05")
            NymTrace("Strait Jacket Removed For Furniture")
        endif
    endif
EndFunction

ObjectReference TempFurniture

Function CreateFurniture_NEW()
    DebugTrace("CreateFurniture_NEW()")
    FurnitureName = "NoFurnName"
    Furniture_PlatformName = "NoPlatform"
    Furniture_Elevation = 0.0
    Furniture_PlatformElevation = 0.0
    Furniture_PlatformForward = 0.0
    if Nym()
        Furniture_Elevation = 5.0
        Furniture_PlatformElevation = 5.0
    endif
    FillAttributeRequirements()
    CreatureFurnitureNameList("Standard")
    Furniture_PlacementAngle_ARRAY = new float[72]
    Furniture_PlacementHeight_ARRAY = new float[72]
    Furniture_Name_ARRAY = new string[72]
    Furniture_Object_ARRAY = new form[72]
    iFurnARRAYsize = 0
    int i = FurnNameListLenght
    while i > 0
        i = i - 1
        FillFurniture(FurnNameList[i], iFurnARRAYsize, false, false)
        NymTrace("CreateFurniture_NEW: iFurnARRAYsize " + iFurnARRAYsize)
    endwhile
    iFurnARRAYsize = iFurnARRAYsize - 1
    CurrentFurnitureNum = utility.RandomInt(0, iFurnARRAYsize)
    CurrentPlacementAngle = Furniture_PlacementAngle_ARRAY[CurrentFurnitureNum]
    CurrentPlacementHeight = Furniture_PlacementHeight_ARRAY[CurrentFurnitureNum] + Furniture_Elevation
    CurrentFurnitureName = Furniture_Name_ARRAY[CurrentFurnitureNum]
    DebugTrace("CreateFurniture_NEW(NUM: " + CurrentFurnitureNum + ")")
    DebugTrace("CreateFurniture_NEW(NAME: " + CurrentFurnitureName + ")")
    NymTrace("CreateFurniture_NEW(HEIGHT: " + CurrentPlacementHeight + ")")
    NymTrace("CreateFurniture_NEW(ANGLE: " + CurrentPlacementAngle + ")")
    if !Furniture_Object_ARRAY[CurrentFurnitureNum]
        debug.MessageBox("Naked Defeat: FORM = none - #ERROR 1274")
    endif
    Device = cfgqst.PlayerRef.PlaceAtMe(Furniture_Object_ARRAY[CurrentFurnitureNum], 1, false, false)
    if Device
        Device.MoveTo(calmqst.VehiclePlayer, 0.0 * math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * math.Cos(calmqst.VehiclePlayer.GetAngleZ()), CurrentPlacementHeight, true)
        Device.SetAngle(0.0, 0.0, Device.GetAngleZ() + CurrentPlacementAngle)
        NymMessage("FurnitureName:" + CurrentFurnitureName)
        Platform_Create("Table 2x1", 0.0, 0.0, 0.0, "")
        if cfgqst.LastAddedDevice
            cfgqst.LastAddedDevice.DisableNoWait(false)
            cfgqst.LastAddedDevice.Delete()
        endif
        cfgqst.LastAddedDevice = Device
    else
        debug.MessageBox("Naked Defeat: furniture = none - #ERROR 1307")
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
	


Function MoveUpFurniture()
    if Nym()
        if TempFurniture
            TempFurniture.DisableNoWait(false)
            TempFurniture.Delete()
        endif
    endif
    Furniture_Elevation = Furniture_Elevation + 5.0
    Furniture_PlatformElevation = Furniture_PlatformElevation + 5.0
    ScreenMessage("Elevating Furniture 5 units up")
    NymTrace("Moving Furniture 5 units up")
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    Device.MoveTo(calmqst.VehiclePlayer, 0.0 * math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Furniture_Elevation, true)
    Device.SetAngle(0.0, 0.0, Device.GetAngleZ())
    FurniturePlatform.MoveTo(calmqst.VehiclePlayer, 0.0 * math.Sin(calmqst.VehiclePlayer.GetAngleZ()), 0.0 * math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Furniture_Elevation, true)
    Device.Activate(cfgqst.PlayerRef, true)
    storqst.PlayerSoundToPlay = "Pain"
    SendModEvent("Moan", "", 0.0)
    utility.Wait(1.0)
    RestoreFurniture()
    cfgqst.PlayCuffsSoundRope()
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
	FurnNameList[26] = "Bondage Pole A"
	FurnNameList[27] = "Pole Bondage HUB"
	FurnNameList[28] = "Pole Bondage HUHB"
	FurnNameList[29] = "Whipping Pole BF 01"
	FurnNameList[30] = "Bondage Pole"
	FurnNameList[31] = "Restraint Pole"
	FurnNameList[32] = "Captive Bound Kneeling"
	FurnNameList[33] = "Pole Bondage 3 A"
	FurnNameList[34] = "Pole Bondage 4 Yak"
	FurnNameList[35] = "Stocks Sitting C"
	FurnNameList[36] = "Pole Bondage Upright Down Hanging"
	FurnNameList[37] = "Stocks Chair 01"
	FurnNameList[38] = "Pole Bondage Hanging"
	FurnNameList[39] = "Wnc Strappado"
	FurnNameList[40] = "Pillory H"
	FurnNameList[41] = "TorturePole 11 KN BF"
	FurnNameList[42] = "Whipping Pole FF"
	FurnNameList[43] = "Whipping Pole BF 02"
	FurnNameList[44] = "Torture Pole 9 BF"
	FurnNameList[45] = "Pole Bondage 6"
	FurnNameList[46] = "Pole Bondage 4"
	FurnNameList[47] = "Pole Bondage 3"
	FurnNameList[48] = "Pole Bondage 2"
	FurnNameList[49] = "Slave Stocks"
	FurnNameList[50] = "Stocks Standing Edged"
	FurnNameList[51] = "Pillory (Large)"
	FurnNameList[52] = "Captive Bound Kneeling (Small Pole)"
	FurnNameList[53] = "Gibbet Small B"  ;DUPLICATE 
	FurnNameList[54] = "Gibbet Ultra Slim Standing"
	FurnNameList[55] = "Whipping Pole BF 03"
	FurnNameList[56] = "Gibbet Small C"
	FurnNameList[57] = "Gibbet Small (vary)"
	FurnNameList[58] = "Restraint Pole Shackle 6"
	FurnNameList[59] = "Whipping Pole BF 04"
	FurnNameList[60] = "Stocks Chair 02"
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
		NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")(FurnAllow_DildoVaginal:"+FurnAllow_DildoVaginal+")")
		return FurnAllow_DildoVaginal

	elseif sToCheck == "Dildo Anal"
		NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")(FurnAllow_DildoAnal:"+FurnAllow_DildoAnal+")")
		return FurnAllow_DildoAnal
		
	elseif sToCheck == "Whipping"
		NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")(FurnAllow_Whipping:"+FurnAllow_Whipping+")")
		return FurnAllow_Whipping
		
	elseif sToCheck == "Showers"
		NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")(FurnAllow_Showers:"+FurnAllow_Showers+")")
		return FurnAllow_Showers

	elseif sToCheck == "Cuffs"
		NymTrace("CheckifFurnitureAllows("+sToCheck+")(CurrentFurnitureName: "+CurrentFurnitureName+")(FurnAllow_Showers:"+FurnAllow_Showers+")")
		return FurnAllow_Cuffs
		
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

Function FillFurniture(string sFurnName, int iARRAYsize, bool bForceFill, bool bCheck)
    bool PlayerIndoor = false
    if cfgqst.PlayerRef.IsInInterior()
        PlayerIndoor = true
    endif
    iARRAYsize = iFurnARRAYsize
    if sFurnName == "Gibbet Small A"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 2
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84120916, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Cross Roped Pose 01"
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
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0
            else
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            endif
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84130982, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnBondageType = "Rope"
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            if PlayerIndoor
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0
            else
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            endif
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84130983, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnBondageType = "Rope"
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            if PlayerIndoor
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = -25.0
            else
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            endif
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84130996, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnBondageType = "Rope"
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            if PlayerIndoor
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = -55.0
            else
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            endif
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84130961, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnBondageType = "Rope"
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            if PlayerIndoor
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            else
                Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            endif
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84130961, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253408, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnAllow_DD_Armbinders = 0
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170219, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnAllow_DD_Armbinders = 0
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170220, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnAllow_DD_Armbinders = 0
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170201, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage Upright Down Hanging"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 2
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170338, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84401187, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84455316, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Bar Stool"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
        FurnAllow_Showers = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253410, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Rope Up"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253530, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Rope Dancer"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
        FurnAllow_Showers = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253400, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Dream Catcher"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253538, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Wooden Pony"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84222397, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Chair Bondage M RV"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
        FurnAllow_Showers = 1
        FurnAllow_Whipping = 1
        FurnAllow_DildoVaginal = 1
        FurnAllow_DildoAnal = 0
        FurnAllow_Race = "Any"
        FurnAllow_DD_Yoke = 1
        FurnAllow_DD_YokeBreast = 0
        FurnAllow_DD_YokeFiddle = 0
        FurnAllow_DD_Armbinders = 0
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84183176, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Struggle Rope (Gallows)"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84274640, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Rack"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
        FurnAllow_Showers = 0
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(83944127, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Chair Sit Tied"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253404, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Chair Bondage RV"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84183170, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Chair (Nails)"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84199999, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Vampire Supply"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84253536, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243581, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Bondage Pole A"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84167354, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84431710, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84431715, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Whipping Pole BF 02"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84347233, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Bondage Pole"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84167346, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Restraint Pole"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84456702, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
        FurnAllow_DD_Armbinders = 0
        FurnAllow_DD_StraitJacket = 1
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84377672, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170302, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage 4 YAK B"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170303, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Sitting C"
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
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243557, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage Upright Down Hanging"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 2
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170338, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Chair 01"
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
        FurnAllow_Cuffs = 666
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243603, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84401187, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Wnc Strappado"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84257733, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pillory H"
        FurnAllow_Boots = 100
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
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84147695, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "TorturePole 11 KN BF"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84116588, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Whipping Pole FF"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84347226, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Whipping Pole BF 03"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84326216, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Pole 9 BF"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84116592, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage 6"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170305, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage 4 Yak"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170279, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage 3 A"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170278, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pole Bondage 2"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170277, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Slave Stocks"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84292834, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Standing Edged"
        FurnAllow_Boots = 0
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243567, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pillory (Large)"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(83951073, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Captive Bound Kneeling (Small Pole)"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84376285, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Gibbet Small B"
        FurnAllow_Boots = 100
        FurnAllow_InDoorOutDoor = 100
        FurnAllow_Showers = 1
        FurnAllow_Whipping = 0
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84119425, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Gibbet Ultra Slim Standing"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84122368, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Whipping Pole BF 04"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84128047, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84122315, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84120920, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Restraint Pole Shackle 6"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84128052, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pillory LayingX"
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
        FurnAllow_DD_Armbinders = 1
        FurnAllow_DD_StraitJacket = 0
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84147711, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Chair 02"
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
        FurnAllow_Cuffs = 666
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243601, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Sitting A"
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
        FurnAllow_DD_Armbinders = 1
        FurnAllow_DD_StraitJacket = 1
        FurnAllow_Cuffs = 666
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243587, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Sitting B"
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
        FurnAllow_DD_Armbinders = 1
        FurnAllow_DD_StraitJacket = 1
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243592, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Stocks Kneeling C"
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
        FurnAllow_DD_Armbinders = 1
        FurnAllow_DD_StraitJacket = 1
        if !bCheck && (AllowFurniture() || bForceFill)
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 0.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84243581, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Pole 7 BF"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84116620, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Chaining Pole"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84167340, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Pole D"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84150556, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Pole Ba"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84150556, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Torture Pole Bb"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84150553, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Chained Under The Gallow 4"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84170222, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Pyre Pole"
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
            Furniture_PlacementAngle_ARRAY[iARRAYsize] = 180.0
            Furniture_PlacementHeight_ARRAY[iARRAYsize] = 0.0
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84267634, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
    elseif sFurnName == "Tilted Wheel"
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
            Furniture_Object_ARRAY[iARRAYsize] = game.GetFormFromFile(84211155, "ZaZAnimationPack.esm")
            Furniture_Name_ARRAY[iARRAYsize] = sFurnName
            NymTrace("FurnitureLibrary(" + Furniture_Name_ARRAY[iARRAYsize] + " ALLOWED)")
            iFurnARRAYsize = iFurnARRAYsize + 1
        endif
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
		if nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Breast")
		Require_DD_YokeBreast = 1
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Fiddle")
		Require_DD_YokeBreast = 1
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Armbinder")
		Require_DD_Armbinders = 1
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Strait Jacket")
		Require_DD_StraitJacket = 1				
		elseif nade_DDInt.IsWearingDDs(cfgqst.PlayerRef, "Yoke Classic")
		Require_DD_Yoke = 1
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
    cfgqst.ResetIdle(cfgqst.PlayerRef)
    RemoveFurniturePlayer()
    CreateFurniture_NEW()
    storqst.PlayerSoundToPlay = "Pain"
    SendModEvent("Moan", "", 0.0)
    Device.Activate(cfgqst.PlayerRef, true)
    utility.Wait(0.5)
    Platform_Create("Table 2x1", 0.0, 0.0, 0.0, "")
    int Loops = 0
    while cfgqst.PlayerRef.GetSitState() == 0 && cfgqst.IsDefeatRunning() && cfgqst.ModEnabled
        Loops = Loops + 1
        NymTrace("Attempt to restore Furniture Animation SitState(" + cfgqst.PlayerRef.GetSitState() + " - Loops:" + Loops)
        RestoreFurniture()
        utility.Wait(0.5)
    endwhile
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

Function NymBox(string Text2)
    if Nym()
        debug.MessageBox("Calmquest: " + Text2)
    endif
    debug.Trace("NAKED DEFEAT capturequest[" + storqst.Defeat_ID + "]: BOX (#Box NYM) " + Text2, 0)
EndFunction



Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


Function Platform_Create(string PlatformName, float Elevation, float PosForward, float Rotation, string Special)
    float fPlatformAngle = 0.0
    if Nym()
        if PlatformName == "Table 1x1"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(193081, "Skyrim.esm"), 1, true, false)
        elseif PlatformName == "Table 0.5x0.5"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(136045, "Skyrim.esm"), 1, true, false)
        elseif PlatformName == "Table 2x1"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(927236, "Skyrim.esm"), 1, true, false)
            fPlatformAngle = 90.0
        elseif PlatformName == "Bar Stool"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(179413, "Skyrim.esm"), 1, true, false)
        elseif PlatformName == "Table small round"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(191519, "Skyrim.esm"), 1, true, false)
        elseif PlatformName == "Arcane Enchanter Big"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(765197, "Skyrim.esm"), 1, true, false)
        elseif PlatformName == "Barrel Standing"
            FurniturePlatform = calmqst.VehiclePlayer.PlaceAtMe(game.GetFormFromFile(1097955, "Skyrim.esm"), 1, true, false)
        endif
        if FurniturePlatform
            FurniturePlatform.MoveTo(calmqst.VehiclePlayer, PosForward * math.Sin(calmqst.VehiclePlayer.GetAngleZ()), PosForward * math.Cos(calmqst.VehiclePlayer.GetAngleZ()), calmqst.VehiclePlayer.GetHeight() + Elevation + Furniture_PlatformElevation, true)
            FurniturePlatform.MoveTo(calmqst.VehiclePlayer, PosForward * math.Sin(calmqst.VehiclePlayer.GetAngleZ()), PosForward * math.Cos(calmqst.VehiclePlayer.GetAngleZ()), Elevation - FurniturePlatform.GetHeight() + Furniture_PlatformElevation, true)
            FurniturePlatform.SetAngle(0.0, 0.0, calmqst.VehiclePlayer.GetAngleZ() + fPlatformAngle)
        else
            NymTrace("#ERROR Platform " + PlatformName + " is NONE")
            if Nym()
                debug.MessageBox("#ERROR Platform " + PlatformName + " is NONE")
            endif
        endif
    endif
EndFunction

Function Platform_Remove()
    if FurniturePlatform
        FurniturePlatform.DisableNoWait(false)
        FurniturePlatform.Delete()
        FurniturePlatform = None
    endif
EndFunction

; ---- added in Naked Defeat 6.51 ----
objectreference PlacedTortureDevice1
objectreference PlacedTortureDevice2
objectreference PlacedTortureDevice3
