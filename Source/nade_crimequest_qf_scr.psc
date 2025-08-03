;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname nade_crimequest_qf_scr Extends Quest Hidden

ReferenceAlias Property Alias_SafeContainer Auto
ReferenceAlias Property Alias_Whipper Auto
ReferenceAlias Property Alias_Vehicle Auto		;VEHICLE EXPLORATION
ReferenceAlias Property Alias_Talker Auto
ReferenceAlias Property Alias_Player Auto
ReferenceAlias Property Alias_Pillory Auto			;Checks if zazFurniture in ESP (Aliases)

Function Fragment_3()
;force greet
cfgqst.dhlpSuspend(true)
if cfgqst.ShowDebugMessages
	int i = 0
	ObjectReference o = Alias_Pillory.GetReference()		
	if o
		i = o.GetFormID()						;HOOK FURNITURE GAME HERE? IF NO FURNITURE AVAILABLE, MAKE ONEß
	endif
	Debug.Notification("Starting punishment scene. Furniture: "+i)
endif
PrepareScene()
EndFunction


Function Fragment_1()
;shutdown stage
cfgqst.dhlpSuspend(false)
stop()
EndFunction



Function Fragment_7()
;cleanup stage
ObjectReference obj = Alias_Vehicle.GetReference()		;VEHICLE EXPLORATION
if obj;VEHICLE EXPLORATION
	obj.Delete()	;VEHICLE EXPLORATION
	Alias_Vehicle.Clear() ;VEHICLE EXPLORATION
endif
nade_StopCrime.SetValueInt(1)
SetStage(1000)
EndFunction


Function Fragment_5()
;start whipping
StartWhip()
EndFunction


SCO_Utility Property Util Auto
Scene Property BeatScene Auto
Idle[] Property zazidles Auto			;poses are defined in ESP / Crimequest
WEAPON Property Cane Auto
Armor[] Property Armors Auto
nade_configquest_scr Property cfgqst Auto
Quest Property StripteaseQuest Auto
SexLabFramework Property SexLab Auto
;zadlibs Property libs Auto
GlobalVariable Property nade_StopCrime Auto
GlobalVariable Property nade_IndecencyCooldown Auto

Int IsFemale = 0
Int IdleIdx = 0

Function PrepareScene()

	Actor whipper = Alias_Whipper.GetReference() as Actor
	if whipper && !whipper.GetItemCount(Cane)
		whipper.AddItem(Cane, 1)
	endif
	nade_IndecencyCooldown.SetValueInt(0)
	if cfgqst.PlayerRef.IsSneaking()
		cfgqst.PlayerRef.StartSneaking()
	endif
	IsFemale = cfgqst.PlayerRef.GetActorBase().GetSex()
;	Int stg = StripteaseQuest.GetStage()
;	(StripteaseQuest as nade_stripteasequest_qf_scr).FinishQuest(false)

EndFunction

Function StartScene()			;gets started by nade_crimewhipscene_sf_scr

	Game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 0)

	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, false, false)
	cfgqst.PlayerRef.SetExpressionOverride(9, 100)
;	Debug.Notification("<font color='#ff0000'>whipscene Potions Updated</font>")
	if Alias_Pillory.GetReference()
		IdleIdx = zazidles.Length - 2
	else
		IdleIdx = Utility.RandomInt(1, zazidles.Length - 4)		;idles need to civly fgaster
		ObjectReference vehicle = Alias_Vehicle.GetReference()	;VEHICLE EXPLORATION
		vehicle.MoveTo(cfgqst.PlayerRef)						;VEHICLE EXPLORATION
		cfgqst.PlayerRef.SetVehicle(vehicle)					;VEHICLE EXPLORATION
		cfgqst.PlayerRef.PlayIdle(zazidles[IdleIdx])		
	endif

;	if (Utility.RandomInt(1, 100)<=cfgqst.BondageHaircutProb) && cfgqst.Shave()
;		Debug.Notification("Your hair has been shaved as a punishment.")
;	endif

	if cfgqst.ShowDebugMessages
		Debug.Notification("<font color='#ff0000'>You will be publicly punished by the whip!</font>")	;MESSAGE
	endif

EndFunction

Function StartWhip()
	Alias_Talker.Clear()
;	Game.ForceThirdPerson()
	cfgqst.ChangeArousal(10)
	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, false, false)	
	BeatScene.Start()
EndFunction

Function EndWhip()

cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.SexLabMoan(cfgqst.PlayerRef)
Utility.wait(1)
cfgqst.PlayerRef.ClearExpressionOverride()
cfgqst.SexLabMoan(cfgqst.PlayerRef)
;	if !cfgqst.PlayerRef.GetItemCount(Armors[0])				;NO MORE ROUGHSPUN TUNIC EQUIP
;		cfgqst.PlayerRef.AddItem(Armors[0], 1, false)
;	endif
;	cfgqst.PlayerRef.EquipItem(Armors[0], false, true)

EndFunction

Function EndScene()	;gets started by nade_crimewhipscene_sf_scr

	ApplyTinkle(0)
;	if cfgqst.ShowDebugMessages
;			Debug.Notification("Sexlab Clear Cum")
;	endif
	cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef) ;VEHICLE EXPLORATION
	cfgqst.PlayerRef.PlayIdle(zazidles[0])
	Game.EnablePlayerControls()
	Game.SetPlayerAIDriven(false)
	Actor whipper = Alias_Whipper.GetReference() as Actor
	if whipper && whipper.GetItemCount(Cane)
		whipper.RemoveItem(Cane, 1)
	endif
	SetStage(999)
;	cfgqst.FadeCaneMarks()
EndFunction

Function ApplyTinkle(Int Index = 0)
	Int exposure
	if Index == 1
		if cfgqst.WhipMarks
			cfgqst.AddTattoo("Cane Marks", "Cane Marks Set")		;can we hook FadeTattoos here?
			cfgqst.SyncTattoos()
		endif
		if !Alias_Pillory.GetReference()
			IdleIdx += 1
			cfgqst.PlayerRef.PlayIdle(zazidles[IdleIdx])
		endif
		if IsFemale
			cfgqst.PlayerRef.AddItem(Armors[Index], 1, true)
			cfgqst.PlayerRef.EquipItem(Armors[Index], false, true)
			cfgqst.SexLabMoan(cfgqst.PlayerRef)
		endif
		cfgqst.ChangeArousal(cfgqst.ExposureChange[1])
	elseif Index == 2
		IdleIdx += 1
		cfgqst.PlayerRef.PlayIdle(zazidles[IdleIdx])	
		Util.RemoveAllOverlays(Game.GetPlayer(), RemoveCumSpell = true)
		Sexlab.ClearCum(cfgqst.PlayerRef)
		if cfgqst.ShowDebugMessages
		Debug.Notification("<font color='#ff0000'>The cum is whipped from your body</font>")	;MESSAGE
		endif
		if IsFemale
			cfgqst.PlayerRef.AddItem(Armors[2], 1, true)
			cfgqst.PlayerRef.EquipItem(Armors[2], false, true)
			cfgqst.PlayerRef.RemoveItem(Armors[1], 1, true, None)
			cfgqst.SexLabMoan(cfgqst.PlayerRef)
		endif
		cfgqst.ChangeArousal(cfgqst.ExposureChange[1])
	else
		if IsFemale
			cfgqst.PlayerRef.RemoveItem(Armors[1], 1, true, None)
			cfgqst.PlayerRef.RemoveItem(Armors[2], 1, true, None)
		endif
	endif
EndFunction


;NYMRA NEW NEW ADD FURNITURE SCENE

;/			THIS IS FOR FUTURE BUILD OF THE ESCAPE GAME HERE TOO
Function Fragment_XXXXXX()			;THIS I THINK NEEDS TO GO INTO ESP 
;BEGIN CODE
;capture player here


Device = Alias_Furniture0.GetReference()				;WHIPSCENE
if !Device
	Debug.Notification("<font color='#ff0000'>You are bound tight...</font>")	;MESSAGE
	Device = CreateFurniture()
endif


if Device
debug.SendAnimationEvent(cfgqst.PlayerRef,"IdleForceDefaultState")
;	cfgqst.ShowPose()
;	game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							;02 NYMRA - avoids breakin  V02
;	Game.SetPlayerAIDriven(true)
;	cfgqst.PlayerRef.PlayIdle(Poses[1])
	Utility.Wait(3.0)																;02 NYMRA - a TEST IF IT STILL WORKS
;	Debug.Notification("disable PC 02") 
;	game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							;02 NYMRA - avoids breakin  V02
;	Game.SetPlayerAIDriven(true)													;02 NYMRA - avoids breaking out of furniture V02
;	Utility.Wait(2.0)																;02 NYMRA - a
	cfgqst.PlayerRef.MoveToInteractionLocation(Device)
	ConsoleUtil.ExecuteCommand("player.stopcombatalarmonactor")						;STOP COMBAT? 
	Device.Activate(cfgqst.PlayerRef, true)
;	Debug.Notification("disable PC 02") 
	game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 1)							;02 NYMRA - avoids breakin  V02
	Game.SetPlayerAIDriven(true)													;02 NYMRA - avoids breaking out of furniture V02
	Utility.Wait(3.0)																;02 NYMRA
	if CheckWhipper() ;&& (Device.HasKeyword(zbfFurnitureWhippingDevice) || Device.HasKeyword(zbfFurnitureWhipping) || Device.HasKeyword(zbfFurnitureTypePainful) || Device.HasKeyword(zbfFurnitureBedOfBondage)) ;02 NYMRA this should mean ALWAYS whip
		AddCane()
		WhipScene.Start()
		Debug.Notification("Prepare for some whipping...")  
	else		;NYMRA off
		if cfgqst.ShowDebugMessages				;NYMRA off
			Debug.Notification("Either the whipper actor is invalid or the selected device is not marked as a whipping device.")		;NYMRA off
		endif				;NYMRA off
		SetStage(100) ;NYMRA off
	endif
else
	Game.EnablePlayerControls()
	SetStage(1000)
endif

/;