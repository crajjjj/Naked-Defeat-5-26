;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname nade_cityquest_qf_scr Extends Quest Hidden

;bool function SetPhonemeModifier(Actor act, int mode, int id, int value) native global
;int function GetPhonemeModifier(Actor act, int mode, int id) native global
;MfgConsoleFunc Property mfg Auto

;ReferenceAlias Property Alias_Aggressor Auto			;WHIP
;Weapon Property Cane Auto
;Scene Property WhipScene Auto


SexLabFramework Property SexLab Auto
nade_configquest_scr Property cfgqst Auto
;nade_capturequest_qf_scr Property capqst Auto
Message Property nade_CaptMsg Auto
;slaFrameworkScr Property sla Auto
sslSystemConfig property Config auto
;zadlibs Property libs Auto
;zadConfig Property zcfg Auto
ReferenceAlias Property Alias_Furniture0 Auto
Quest Property calmqst Auto
Quest Property capqst Auto
Spell Property FrostSpell Auto			;NYMRA FROST EFFECT
Spell Property ShockSpell Auto			;NYMRA SHOCK EFFECT
Spell Property SoundSpell Auto			;NYMRA SOUND EFFECT
Armor[] Property Squirt Auto
Armor[] Property PunishmentItems Auto
Idle[] Property KnockdownIdles Auto

Location Property LocationWhiterun Auto
Location Property LocationSolitude Auto
Location Property LocationMarkarth Auto
Location Property LocationRiverwood Auto
Location Property LocationWindhelm Auto
Location Property LocationRiften Auto
Location Property LocationFalkreath Auto
;Location Property LocationWhiterun Auto

Bool CanShowMenu = false
Bool Success = false
Bool Free = false							;NYMRA for escape game
;Int Skill = 0
;Int MaxVal = 185
;int EscapeKeyOID_K							;ESCAPE KEY
int Property EscapeKey Auto					;ESCAPE KEY		;WHY???? EXPLORE
;int DebugKeyOID_K							;DEBUG KEY
;int Property DebugKey Auto					;DEBUG KEY
;int DefeatKeyOID_K							;ESCAPE KEY
;int Property DefeatKey Auto					;ESCAPE KEY
;Float StaminaChange = 1.0
;Bool iRandom					;randomOMG

Bool RapeScanOn = false

bool Function PlayerInCombat()
if cfgqst.PlayerRef.IsInCombat() 
Debug.Notification("<font color='#ff0000'>A fight! Rape party is over...</font>")
	Debug.Trace("NAKED DEFEAT Notification: A fight! Rape party is over")
return true
else
return false
endif
EndFunction



;/
if !PlayerInCombat() 		;Combatcheck
else				;Combatcheck
SetStage(1000)		;Combatcheck
endif				;Combatcheck
/;

int random = 0

Function Fragment_0()					;############ STAGE 10 ############		#START			
		Debug.Trace("NAKED DEFEAT: cityquest script version 09")

	;	RapeScanOn = true
		Debug.Trace("NAKED DEFEAT: cityquest stage 10 (START)")													
			SetStage(1000)

EndFunction															

															
															
Function Fragment_4()				;############ STAGE 1000 ############		#END
;/
Debug.Trace("NAKED DEFEAT: cityquest stage 1000 (END)")

while RapeScanOn		;wait for RapeScan to shut down
RapeScanOn = false
endwhile
Utility.Wait(1.0)

/;

Stop()

EndFunction

 
Function Fragment_7()						;############ STAGE 100 ############	 #ActivateRapeScan		;CalmQuest needs to SetStage 100 to restart scan after rape

Debug.Trace("NAKED DEFEAT: cityquest Stage 100")

	if CheckLocation() && !RapeScanOn 
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Utility.Wait(5.0)
	RapeScanOn = true
	RapeScan()
	else
	RapeScanOn = false
	endif

SetStage(10)

EndFunction


;/
Event OnUpdate()			;#update
	Debug.Trace("NAKED DEFEAT cityquest OnUpdate works.")
	while cfgqst.BoolCaptiveFuckBelt
	cfgqst.PlaySoundFuckBelt()
	Utility.Wait(1.0)
		if !cfgqst.BoolCaptiveNoSound 
		int y = Utility.RandomInt (1, 4) 
			if y < 3
			cfgqst.PlaySound()
			elseif y == 3
			cfgqst.SexLabMoan(cfgqst.PlayerRef)
			endif
		endif
	Utility.Wait(1.0)
	endwhile
	
EndEvent
 /;
 
Function SetExpression(int type = 0)	

if type == 0
cfgqst.PlayerRef.ClearExpressionOverride()
elseif type == 1
cfgqst.PlayerRef.SetExpressionOverride(1, 100)	;dialogue fear 	
;Debug.Notification("NAKED DEFEAT TEST: dialogue fear ")
elseif type == 2
cfgqst.PlayerRef.SetExpressionOverride(16, 100)
;Debug.Notification("NAKED DEFEAT TEST: dialogue combat shout ")
endif

EndFunction




;-------------------- CIVIL RAPE PROJECT

Event OnCellLoad()	;also add on "Load Game" 		#civil #rape
		
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (OnCellLoad (ON))")	
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (OnCellLoad (ON))")
	RegisterForModEvent("dhlp-Suspend", "OnSuspend")
	RegisterForModEvent("dhlp-Resume", "OnResume")
		;Debug.Trace("AdditionalEncounters: [NEWGAME_ALTENATE_START] OnCellLoad")

	if CheckLocation() && !RapeScanOn  
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Utility.Wait(5.0)
	RapeScanOn = true
	RapeScan()
	else
	RapeScanOn = false
	endif
EndEvent

Event OnPlayerLoadGame()
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (OnPlayerLoadGame (ON))")	
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (OnPlayerLoadGame (ON))")
	RegisterForModEvent("dhlp-Suspend", "OnSuspend")
	RegisterForModEvent("dhlp-Resume", "OnResume")
		;Debug.Trace("AdditionalEncounters: [NEWGAME_ALTENATE_START] OnCellLoad")

	if CheckLocation() && !RapeScanOn 
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC in WHITERUN)")	
	Utility.Wait(5.0)
	RapeScanOn = true
	RapeScan()
	else
	RapeScanOn = false
	endif

EndEvent	


Function RapeScan()

while RapeScanOn

	if PlayerValidForRape()
	RapeScanOn = false
	cfgqst.CivilRapeRunning = true 
	calmqst.Start()
	else
		Debug.Trace("NAKED DEFEAT CIVIL RAPE (SCAN REPEAT)")
		Debug.Notification("NAKED DEFEAT CIVIL RAPE (SCAN REPEAT)")
		
		if RapeScanOn		;hopefully this shuts the scan down faster?
		Utility.Wait(1.0)	
		endif
		if RapeScanOn
		Utility.Wait(1.0)	
		endif
		if RapeScanOn
		Utility.Wait(1.0)	
		endif
		if RapeScanOn
		Utility.Wait(1.0)	
		endif
		if RapeScanOn
		Utility.Wait(1.0)	
		endif
	endif
	
endwhile

EndFunction

Bool Function PlayerValidForRape()

	if cfgqst.PlayerRef.IsSneaking() && (Utility.RandomInt(1, 100) < 5)			;sneaking
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is sneaking)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is sneaking)")
	return true
	elseif cfgqst.PlayerRef.IsSprinting() && (Utility.RandomInt(1, 100) < 5)	;sprinting
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is sprinting)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is sprinting)")
	return true
	elseif cfgqst.IsPlayerNaked() && (Utility.RandomInt(1, 100) < 5)			;naked
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is naked)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is naked)")
	return true
	elseif cfgqst.IsPlayerCumsoaked() && (Utility.RandomInt(1, 100) < 5)		;cumsoaked
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is cumsoaked)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is cumsoaked)")
	return true
	elseif cfgqst.IsPlayerBarefoot() && (Utility.RandomInt(1, 100) < 3)			;barefoot
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is barefoot)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is barefoot)")
	return true
	elseif cfgqst.IsPlayerUnarmed()&& (Utility.RandomInt(1, 100) < 3)			;unarmed
	Debug.Trace("NAKED DEFEAT CIVIL RAPE (PC is unarmed)")
	Debug.Notification("NAKED DEFEAT CIVIL RAPE (PC is unarmed)")
	return true
	;elseif DIRTY WIP()&& (Utility.RandomInt(1, 100) < 3)			;unarmed
	;return true
	else
	return false
	endif

EndFunction
	
Bool Function CheckLocation()			;#location

if cfgqst.PlayerRef.IsInLocation(LocationWhiterun)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationSolitude)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationRiverwood)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationWindhelm)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationRiften)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationFalkreath)
return true
elseif cfgqst.PlayerRef.IsInLocation(LocationMarkarth)
return true
else
return false
endif

EndFunction
	
	
	
;/	
	OnUpdate
	endif
		
		if PlayerRef.IsInInterior()
			if PlayerRef.GetParentCell() == LastCell
				; まだ牢獄から出ていない
				;Debug.Trace("AdditionalEncounters: we still in " + LastCell)
			else

			endif
		else

;-----------------------------	
		
		Bool IsRunning()

Returns whether this actor is current running.
Bool 

Is this actor currently sneaking?
Bool IsSprinting()

Is this actor currently sprinting?

Bool IsSwimming()

Returns whether the actor is currently swimming.

		endif
		
		
bool Function IsInLocation(Location akLocation)
	Location currLoc = GetCurrentLocation()
	if currLoc == None
		return false
	else
		return akLocation.IsChild(currLoc) || currLoc == akLocation
	endif
endFunction		
;-----------------------------		
EndEvent


;--------SCAN:----------

OnUpdate

time tick adjustment 

if running +5% chance
if sneaking +5% chance
if naked
if dirty (+X)
if cumsoaked
if collared

/;

;/
Event OnUpdate()

while CivilRapeScan

	if Utility.RandomInt(1,100) <= RapeChance
		Start(qst1) (calmquest)
	else

	Utility.Wait(60.0)

		
endwhile




EndEvent

int RapeChance = cfgqst.RapeChanceBase

Function RapeChance()
				
		if cfgqst.PlayerRef.IsRunning()
		RapeChance += 5
		endif
		
		if cfgqst.PlayerRef.IsSprinting()
		RapeChance += 5
		endif
		
		if cfgqst.PlayerRef.IsNaked()
		RapeChance += 5
		endif
		
		if cfgqst.PlayerRef.IsCumSoaked()
		RapeChance += 5
		endif
		
		if cfgqst.PlayerRef.IsSneaking()
		RapeChance += 5
		endif
		
		if cfgqst.PlayerRef.IsDirty()
		RapeChance += 5
		endif

EndFunction

/;


;Event OnPlayerLoadGame()

;if cfgqst.NoEssentialPlayer
;cfgqst.PlayerRef.SetEssential(false)		Compile Error, does not exist?????
;else
;cfgqst.PlayerRef.SetEssential(true)
;endif

;EndEvent


;#trap project
;OnTrapHit(ObjectReference akTarget, Float afXVel, Float afYVel, Float afZVel, Float afXPos, Float afYPos, Float afZPos, Int aeMaterial, Bool abInitialHit, Int aeMotionType)
;Event received when this trap object hits a target.
;https://www.creationkit.com/index.php?title=OnTrapHit_-_ObjectReference


;----------- RAPE PROJECT END









;Bool Function StartQuest()
;	Int stg = GetStage()
;	if (stg < 1) || (stg > 999)
;		Start()
;		return (GetStage() == 10)
;	else
;		return false
;	endif
;EndFunction
											;NYMRA STRUGGLE GAME from here 
											;NYMRA TO DO - change hotkey via MCM? set diffculty in MCM - get visuals for Shocks working again!

bool bLocked = false						;wichtig gehört dazu lol!											


;function ToggleFreeCamera()
;	if Game.GetCameraState() != 3
;		MiscUtil.SetFreeCameraSpeed(5.0)
;;	endIf
;	MiscUtil.ToggleFreeCamera()
;endFunction


;bool cfgqst.BoolCaptiveFuckBelt = false


;/
Function AddFuckBelt()
	int x = Utility.RandomInt (0, 7) 
	cfgqst.PlayCuffsSoundMetal()
	;add belts
	if (x == 0) || (x == 1)
	cfgqst.PlayerRef.AddItem(PunishmentItems[1], 1, true) 			;nade_00SBA_Thong_4 "Naked Defeat Steel Bikini Bottom IV" [ARMO:0700080A]
	cfgqst.PlayerRef.EquipItem(PunishmentItems[1], false, true)
	cfgqst.cityquestFuckbeltNumber = 1
	elseif (x == 2) || (x == 3)
	cfgqst.PlayerRef.AddItem(PunishmentItems[2], 1, true) 			;nade_00SBA_Thong_3 "Steel Bikini Bottom III" [ARMO:0700080C]
	cfgqst.PlayerRef.EquipItem(PunishmentItems[2], false, true)
	cfgqst.cityquestFuckbeltNumber = 2
;	elseif x == 3
;	cfgqst.PlayerRef.AddItem(PunishmentItems[3], 1, true) 	;;;		;nade_00SBA_Thong_6 "Steel Bikini Bottom VI" [ARMO:0700080D]
;	cfgqst.PlayerRef.EquipItem(PunishmentItems[3], false, true)
;	Fuckbelt_3 = true
;	elseif x == 4
;	cfgqst.PlayerRef.AddItem(PunishmentItems[4], 1, true) 	;;;		;nade_00SBA_Thong_8 "Steel Bikini Bottom VIII" [ARMO:0700080E]
;	cfgqst.PlayerRef.EquipItem(PunishmentItems[4], false, true)
;	Fuckbelt_4 = true
	elseif (x == 4) || (x == 5)
	cfgqst.PlayerRef.AddItem(PunishmentItems[5], 1, true) 			;nade_00SPB_thong_3 "Nord Plate Bikini Bottom 03" [ARMO:0700080F]
	cfgqst.PlayerRef.EquipItem(PunishmentItems[5], false, true)
	cfgqst.cityquestFuckbeltNumber = 5
;	elseif x == 6
;	cfgqst.PlayerRef.AddItem(PunishmentItems[6], 1, true) 	;;;		;nade_00BIB_thong_4 "Iron Bikini Bottom IV" [ARMO:07000810]
;	cfgqst.PlayerRef.EquipItem(PunishmentItems[6], false, true)
;	Fuckbelt_6 = true
	elseif (x == 6) || (x == 7)
	cfgqst.PlayerRef.AddItem(PunishmentItems[7], 1, true) 			;nade_00BIB_thong_5 "Iron Bikini Bottom V" [ARMO:07000811]
	cfgqst.PlayerRef.EquipItem(PunishmentItems[7], false, true)
	cfgqst.cityquestFuckbeltNumber = 7
	endif
	;add dildo	
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	cfgqst.PlayerRef.AddItem(PunishmentItems[0], 1, true) 
	cfgqst.PlayerRef.EquipItem(PunishmentItems[0], false, true)
	cfgqst.BoolCaptiveFuckBelt = true
	Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveFuckBelt"+cfgqst.BoolCaptiveFuckBelt)
	
EndFunction

Function RemoveFuckBelt()

	;remove dildo
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[0], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[0], 1, true, None)

	;remove belts
	if cfgqst.cityquestFuckbeltNumber == 1
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[1], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[1], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 2
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[2], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[2], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 3
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[3], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[3], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 4
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[4], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[4], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 5
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[5], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[5], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 6
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[6], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[6], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	elseif cfgqst.cityquestFuckbeltNumber == 7
	cfgqst.PlayerRef.UnequipItem(PunishmentItems[7], 0, 1)
	cfgqst.PlayerRef.RemoveItem(PunishmentItems[7], 1, true, None)
	cfgqst.cityquestFuckbeltNumber = 0
	endif
	
	cfgqst.BoolCaptiveFuckBelt = false
	Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveFuckBelt1"+cfgqst.BoolCaptiveFuckBelt)
EndFunction

;Bool NoSound = false
Int loose = 0  
Int harsh = 0  
Int belttimer = 0

/; 


;/
  
Event OnKeyDown (Int KeyCode)				;CAN I ADD A "ON HIT" bool to break the PC free? Meaning if he is attacked he will automatically end the quest?

;DEBUG
if KeyCode == cfgqst.DefeatKey
	  Debug.Trace("NAKED DEFEAT: cityquest Keypress DefeatKey (Debug)")
	  SetExpression(Utility.RandomInt(1,2))
	  
		if cfgqst.BoolCaptiveFuckBelt
		RemoveFuckBelt()
		endif
		if cfgqst.SimpleSurrender
		cfgqst.SexLabMoan(cfgqst.PlayerRef)
		Debug.Notification("<font color='#ff0000'>You will never escape and accept beeing a slave</font>")
		Debug.Trace("NAKED DEFEAT notification: You will never escape and accept beeing a slave")
		 
		Success = true 
		Free = true 
		Game.SetPlayerAIDriven(false)						
		Game.EnablePlayerControls()	
		loose = 0		
		SetStage(100)	
		SendModEvent("SSLV Entry")
		SetExpression(0)
			
			if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
			cfgqst.LastAddedDevice = None
			endif
		
	;	RegisterForSingleUpdate(5)
		else	
		cfgqst.SexLabMoan(cfgqst.PlayerRef)	
		Debug.Notification("<font color='#ff0000'>Whoever tied you was a fool...so easy to escape!</font>")				;MESSAGE
		Debug.Trace("NAKED DEFEAT notification: Whoever tied you was a fool...so easy to escape!")
    	Success = true 
		Free = true 
		loose = 0
		Game.SetPlayerAIDriven(false)						
		Game.EnablePlayerControls()	
		SetExpression(0)		
			if cfgqst.Ragdoll			
	;		Debug.Notification("NAKED DEFEAT: PushAway from Device")					;XXX
			cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 3)
			endif	
		
			if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
			cfgqst.LastAddedDevice = None
			endif
		
		Utility.Wait(1.0)		
		SetStage(100)	
		endif
;WIGGLE				
elseif KeyCode == cfgqst.EscapeKey						
   if EscapeKey || bLocked								
        return											
    endif	  
	
	if cfgqst.BoolCaptiveFuckBelt 			;if there is fuckbelt: send no sound 
	cfgqst.BoolCaptiveNoSound = true
	Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveNoSound1"+cfgqst.BoolCaptiveNoSound)
	endif
	
    bLocked = true
    Actor player = cfgqst.PlayerRef

;    Float stamina = player.GetActorValue("Stamina")
;    Float damage = StaminaChange * player.GetBaseActorValue("Stamina")
	;cfgqst.RapeAgain = false
	
    ;struggle
    if  Free 
		Debug.Notification("<font color='#ff0000'>You are free!!!</font>")	;MESSAGE
		Debug.Trace("NAKED DEFEAT notification: You are free!!!")
		cfgqst.SexLabMoan(cfgqst.PlayerRef)	
		if cfgqst.Ragdoll			
	;	Debug.Notification("NAKED DEFEAT: PushAway from Device")
		cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 3)
		endif	;XXX
		Game.SetPlayerAIDriven(false)						
		Game.EnablePlayerControls()	
		
		if cfgqst.BoolCaptiveFuckBelt
		RemoveFuckBelt()
		endif
		loose = 0
		harsh = 0		
		SetStage(100)										
        bLocked = false		
		MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, 0)
		SetExpression(0)
		
		if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
		cfgqst.LastAddedDevice.DisableNoWait()
		cfgqst.LastAddedDevice.Delete()
		cfgqst.LastAddedDevice = None
		endif
		
        return
    endif

;    player.DamageActorValue("Stamina", damage)
    Utility.Wait(2.0)
    cfgqst.SexLabMoan(player)

;    if !sla.IsActorArousalLocked(player) && !sla.IsActorArousalBlocked(player)
;        Int exposure = sla.GetActorExposure(player) + cfgqst.ExposureChange[0]
;
;        if exposure > 100
;            exposure = 100
;        endif
;
;        sla.SetActorExposure(player, exposure)
;    endif

		
	;	Debug.Trace("NAKED DEFEAT: loose = "+loose)
		If Success || Utility.RandomInt(1,100) <= (cfgqst.DefeatEscapeDiff + loose + random)
		Debug.Notification("<font color='#ff0000'>Your bindings finally feel loose.</font>")	;MESSAGE
		Debug.Trace("NAKED DEFEAT notification: Your bindings finally feel loose!")
    	Success = true 
		Free = true 
		cfgqst.SexLabMoan(player)
		Utility.Wait(1.0)
		cfgqst.PlaySound()
		Utility.Wait(1.0)
        cfgqst.SexLabMoan(player)
		Utility.Wait(1.0)
		cfgqst.SexLabMoan(player)

		Debug.Notification("<font color='#ff0000'>You can remove them now... wiggle one last time.</font>")				;MESSAGE
			Debug.Trace("NAKED DEFEAT notification: You can remove them now... wiggle one last time.")
    else
		Debug.Notification("<font color='#ff0000'>You try to loosen your bindings...</font>")				;MESSAGE
			Debug.Trace("NAKED DEFEAT notification: You try to loosen your bindings...")
		Utility.Wait(2.0)
		Debug.Notification("<font color='#ff0000'>The device punishes you!</font>")				;MESSAGE
			Debug.Trace("NAKED DEFEAT notification: The device punishes you!")       
	   Int i = 2
		loose += 1
		harsh += 5
	;	Debug.Trace("NAKED DEFEAT: loose = "+loose)
		cfgqst.PlayerRef.AddItem(Squirt[0], 1, true)
		cfgqst.PlayerRef.EquipItem(Squirt[0], false, true)
        while i
            i -= 1

            ;player.DamageActorValue("Stamina", damage)

		;	cfgqst.SexLabMoan(cfgqst.PlayerRef)

            Int j = 3

            while j
                j -= 1		
				cfgqst.PlaySound()
				Utility.Wait(1.0)
				cfgqst.PlaySound()
				Utility.Wait(1.0)
				cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
				cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"		
                cfgqst.SexLabMoan(player)			
				MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, 100)		;open mouth

;				cfgqst.FrostSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT needs implementation
;				cfgqst.SexLabMoan(player)
            endwhile
        endwhile
;-----------SEVERE PUNISHMENTS	------------------
		if Utility.RandomInt(1,100) <= (70 + harsh)		
			int sevpunish = Utility.RandomInt(1, 6)
		;if Utility.RandomInt(1,100) <= (100)	
		;	int sevpunish = 1
		;int sevpunish = 6
		belttimer += 1
		
			;Belt Event
			if (sevpunish == 1) || (belttimer == 3)
				belttimer = 0
				if !cfgqst.BoolCaptiveFuckBelt ;&& (Utility.RandomInt(1,4) < 2)
					Debug.Notification("<font color='#ff0000'>Your captors put a nasty fucking belt on you!</font>")				;MESSAGE
					Debug.Trace("NAKED DEFEAT notification: Your captors put a nasty fucking belt on you!")   
					cfgqst.SexLabMoan(player)
					AddFuckBelt()
					cfgqst.PlayCuffsSoundMetal()
					cfgqst.BoolCaptiveFuckBelt = true
					Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveFuckBelt2"+cfgqst.BoolCaptiveFuckBelt)
					RegisterForSingleUpdate(2)
					ToggleFreeCamera()
					Utility.Wait(0.1)
					cfgqst.SexLabMoan(player)
					ToggleFreeCamera()
				else	
				sevpunish = 2
			;	sevpunish = 5
				endif
			endif
				
			;SUPER SHOCK EVENT
			if (sevpunish == 2) || (sevpunish == 3)					
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.SexLabMoan(player)	
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
 
			if (cfgqst.DefeatPeeProb > 0) && (Utility.RandomInt(1,2) < 2) 
			cfgqst.PlayerRef.AddItem(Squirt[2], 1, true)
			cfgqst.PlayerRef.EquipItem(Squirt[2], false, true)
			endif
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.SexLabMoan(player)	
			Utility.Wait(0.5)
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.SexLabMoan(player)
			Utility.Wait(0.5)			
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.SexLabMoan(player)
			Utility.Wait(0.5)		
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.PlaySound()
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			
			if cfgqst.DefeatPeeProb > 0
			cfgqst.PlayerRef.RemoveItem(Squirt[2], 1, true, None)	
			endif
			
			Utility.Wait(1.0)
			cfgqst.PlaySound()
			Utility.Wait(1.0)
			cfgqst.SexLabMoan(player)
			;PEE EVENT--------------------
			elseif sevpunish == 4			
			cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
			cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			cfgqst.SexLabMoan(player)	
			
			if cfgqst.DefeatPeeProb > 0
			cfgqst.PlayerRef.AddItem(Squirt[2], 1, true)
			cfgqst.PlayerRef.EquipItem(Squirt[2], false, true)
			endif
			
			Utility.Wait(1.0)
			cfgqst.PlaySound()
			Utility.Wait(1.0)
			cfgqst.PlaySound()
			Utility.Wait(1.0)
			cfgqst.SexLabMoan(player)	
			Utility.Wait(1.0)
			cfgqst.PlaySound()
			Utility.Wait(1.0)
			
			if cfgqst.DefeatPeeProb > 0
			cfgqst.PlayerRef.RemoveItem(Squirt[2], 1, true, None)				
			endif			
			
			;WHIPagain EVENT
			elseif (sevpunish == 5) && (Utility.RandomInt(1, 100) <= cfgqst.DefeatWhipProb)							
			Debug.Notification("<font color='#ff0000'>Your escape attempts caught some attention!</font>")	
			Debug.Trace("NAKED DEFEAT notification: Your escape attempts caught some attention!")  
			cfgqst.SexLabMoan(player)
			cfgqst.WhipAgain = true
			Debug.Trace("NAKED DEFEAT: WhipAgain"+cfgqst.WhipAgain)
			bLocked = false	
			cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)									
			
			SetStage(1000)								;send to end of CaptureQuest 									

			;RAPEagain EVENT
			elseif (sevpunish == 6) 								
			Debug.Notification("<font color='#ff0000'>Your captors want more...</font>")
			Debug.Trace("NAKED DEFEAT notification: Your captors want more...")  
			cfgqst.SexLabMoan(player)
			cfgqst.RapeAgain = true
			;Debug.Trace("NAKED DEFEAT: RapeAgain"+cfgqst.RapeAgain)
					
			bLocked = false	
			cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)										
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
			cfgqst.LastAddedDevice = None
			cfgqst.PlayerRef.PlayIdle(KnockdownIdles[3])
			cfgqst.ShowPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false)			
			SetStage(1000)								;send to end of CaptureQuest 									
	
			
			;CLEAN and WHIP Event
	;		elseif (sevpunish == 7) && (Utility.RandomInt(1, 100) <= cfgqst.DefeatWhipProb)							
	;		Debug.Notification("<font color='#ff0000'>Your escape attempts caught some attention!</font>")			
	;		cfgqst.SexLabMoan(player)
	;		cfgqst.WhipAgain = true
	;		Debug.Trace("NAKED DEFEAT: WhipAgain"+cfgqst.WhipAgain)
	;		SetStage(1000)								;send to end of CaptureQuest 									
	;		bLocked = false	
	;		cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)	
	;		
	;		cfgqst.LastAddedDevice.DisableNoWait()
	;		cfgqst.LastAddedDevice.Delete()
	;		cfgqst.LastAddedDevice = None
	;		
	;		SendWashPlayerEvent()
			endif
			
			cfgqst.BoolCaptiveNoSound = false
			Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveNoSound2"+cfgqst.BoolCaptiveNoSound)
			
			
			
			
			; MORE IDEAS
			; "Break" heavy breathing audio and maybe drops from wetfunction?
			; "Orgasm": needs some good sound audio
			; masturbation / pee of aggressor -> how?
			; new round of rape, set all to zero, remove furniture etc.	
			; equip gag / collars
			; equip fuck combo (test this because anim break..)
		;endif
		endif	
		
		cfgqst.BoolCaptiveNoSound = false
		Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveNoSound3"+cfgqst.BoolCaptiveNoSound)
		
		if !cfgqst.WhipAgain && !cfgqst.RapeAgain
		Debug.Notification("<font color='#ff0000'>Your bindings are still too tight, try again.</font>")			;MESSAGE
			Debug.Trace("NAKED DEFEAT notification: Your bindings are still too tight, try again.")
		cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
		else
		cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
		endif
    endif
endif

    bLocked = false
EndEvent

;/
Function DoOrgasm()											;IMPROVE THIS
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction
/;

Function SendWashPlayerEvent()						;#bathing event
    Int WashActor = ModEvent.Create("BiS_WashActor")
    if (WashActor)
      ModEvent.PushForm(WashActor, (cfgqst.PlayerRef as Form))		;akActor
      ModEvent.PushBool(WashActor, false)							;animation play
      ModEvent.PushBool(WashActor, true)							;full clean (true) or 20% (false)
      ModEvent.PushBool(WashActor, false)							;soap
      ModEvent.Send(WashActor)
    endIf
EndFunction