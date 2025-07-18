;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname nade_captivequest_qf_scr Extends Quest Hidden

;bool function SetPhonemeModifier(Actor act, int mode, int id, int value) native global
;int function GetPhonemeModifier(Actor act, int mode, int id) native global
;MfgConsoleFunc Property mfg Auto

;ReferenceAlias Property Alias_Aggressor Auto			;WHIP
;Weapon Property Cane Auto
;Scene Property WhipScene Auto


Quest Property CalmQuest Auto


SexLabFramework Property SexLab Auto
nade_configquest_scr Property cfgqst Auto
;nade_sexquest_qf_scr Property sexqst Auto
nade_capturequest_qf_scr Property capqst Auto
Message Property nade_CaptMsg Auto
;slaFrameworkScr Property sla Auto
sslSystemConfig property Config auto
;zadlibs Property libs Auto
;zadConfig Property zcfg Auto
ReferenceAlias Property Alias_Furniture0 Auto
;Quest Property calmqst Auto
;Quest Property capqst Auto

nade_WhipQuest_00 Property whipq00 Auto
nade_calmquest_qf_scr Property calmqst Auto

Spell Property FrostSpell Auto			;NYMRA FROST EFFECT
Spell Property ShockSpell Auto			;NYMRA SHOCK EFFECT
Spell Property SoundSpell Auto			;NYMRA SOUND EFFECT
Armor[] Property Squirt Auto
Armor[] Property PunishmentItems Auto
Idle[] Property KnockdownIdles Auto

Faction Property RaperFaction Auto

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


Function StartShortWhipping()
Debug.Trace("NAKED DEFEAT: captivequest StartShortWhipping()")
	RegisterForSingleUpdate(0.5)

EndFunction 


bool Function PlayerInCombat()
if cfgqst.PlayerRef.IsInCombat() 
ScreenMessage("A fight! Rape party is over")
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

Function GetPunishType()
	
		int GetPunishType = Utility.RandomInt(0,6) 			;#shader1
		;int GetPunishType = 2 
							
				
			if (GetPunishType == 0) || (GetPunishType == 1) && (PunishEffectType != "Shock")
			;Debug.Trace("NAKED DEFEAT: captivequest PUNISH:Shock")
			PunishEffectType = "Shock"			;ShockSpell with ShockPlayerCloakFXShader [EFSH:0010F9A6] (are we sure its this? the sound spell also has an effect....)
			elseif (GetPunishType == 2) && (PunishEffectType != "Frost")
			PunishEffectType = "Frost"			;FrostSpell with FrostFXShader [EFSH:0001F03A]
			elseif (GetPunishType == 3) && (PunishEffectType != "Fire")
			PunishEffectType = "Fire"			;FireSpell with AlchArmorFireFXS [EFSH:0010BEA9]
			elseif (GetPunishType == 4) && (PunishEffectType != "Random")
			PunishEffectType = "Random"			;randomly choose chaotically
			elseif (GetPunishType == 5) && (PunishEffectType != "HotnCold")
			PunishEffectType = "HotnCold"			;randomly choose between fire and frost
			elseif (GetPunishType == 6) && (PunishEffectType != "Pain")
			PunishEffectType = "Pain"
			else
			PunishEffectType = "Shock"
			endif
			
EndFunction

int random = 0
int EscapeDifficulty = 0


;HARD - Escape 1 - Lossen 1 
;MEDIUM - Escape  3 - Losen 3
;EASY - Escape  5 - Losen 5
;EASIEST - Escape  10 - Losen 10

;can have still be 1/1 at times!  
;RANDOM HARDEST - tends to be 1/1 
;RANDOM MEDIUM - tends to be 3/3 
;RANDOM EASY - tends to be 5/5 
;RANDOM EASIEST - tends to be 10/10 



Function Fragment_0()					;############ STAGE 10 ############				;#start

cfgqst.DefeatStatePlayer = "EscapeGame"

Debug.Trace("NAKED DEFEAT: captivequest stage 10")
Debug.Trace("NAKED DEFEAT: captivequest stage 10: cfgqst.Allow_EscapeDifficulty: "+cfgqst.Allow_EscapeDifficulty)
	
			;DEBUG #scenario #main
			if cfgqst.Allow_EscapeDifficulty == "none"
			InfoMessage("#ERROR: Allow_EscapeDifficulty = none")
			endif
		
			if (cfgqst.ShortPunishment == 0) && (!cfgqst.Allow_EscapeGameAftermath)
			InfoMessage("#ERROR: Allow_EscapeGameAftermath = false")
			endif		
		
		PunishEffectType = "none"
		GetPunishType()
	
		Debug.Trace("NAKED DEFEAT: captivequest - PunishEffectType: "+PunishEffectType)
		
		bool NewSystem = true
		
		if cfgqst.NymBeta ;NO THERE, OBSTRUCTS WHIPPING! 
		SendModEvent("StartVoyeurs")
		Utility.Wait(2.0)
		endif
		
		if NewSystem
				
			int i
				
			if cfgqst.DefeatViaSlavery	
			i = cfgqst.WiggleOptionsSS	
			else 
			i = cfgqst.WiggleOptions
			endif 
			
			if i == 0	;HARD 
			EscapeDifficulty = 1
			loosenDiff = 1	
			elseif i == 1	;MEDIUM 
			EscapeDifficulty = 3
			loosenDiff = 3
			elseif i == 2	;EASY 
			EscapeDifficulty = 5
			loosenDiff = 5
			elseif i == 3	;EASIEST 
			EscapeDifficulty = 10
			loosenDiff = 10	
			elseif i == 4	;RANDOM HARD 	
				if D100(50)
				EscapeDifficulty = 1
				loosenDiff = 1	
				else 
				EscapeDifficulty = Utility.RandomInt(1,10)
				loosenDiff = Utility.RandomInt(1,10) 		
				endif 
			elseif i == 5	;RANDOM MEDIUM 
				if D100(50)
				EscapeDifficulty = 3	
				loosenDiff = 3	
				else 
				EscapeDifficulty = Utility.RandomInt(1,10)
				loosenDiff = Utility.RandomInt(1,10) 		
				endif 
			elseif i == 6	;RANDOM EASY 
				if D100(50)
				EscapeDifficulty = 5	
				loosenDiff = 5 
				else 
				EscapeDifficulty = Utility.RandomInt(1,10)
				loosenDiff = Utility.RandomInt(1,10) 		
				endif 
			elseif i == 7	;RANDOM EASIEST 
				if D100(50)
				EscapeDifficulty = 10
				loosenDiff = 10 
				else 
				EscapeDifficulty = Utility.RandomInt(1,5)
				loosenDiff = Utility.RandomInt(1,5) 		
				endif 
			endif 
				
			if cfgqst.RapeAgain ;I think its no longer true.... 
			cfgqst.RapeAgain = false
			EscapeDifficulty += Utility.RandomInt(0,5)
			loosenDiff += Utility.RandomInt(0,5)
			elseif cfgqst.Allow_EscapeDifficulty == "Easy"
			EscapeDifficulty += Utility.RandomInt(5,15)
			loosenDiff += Utility.RandomInt(5,15)
			elseif cfgqst.Allow_EscapeDifficulty == "Normal"
			EscapeDifficulty += Utility.RandomInt(3,5)
			loosenDiff += Utility.RandomInt(3,5)
			endif 
			
			ScreenMessage("Escape Chance: "+EscapeDifficulty+"% -> gets "+loosenDiff+"% easier per attempt")
		 
				;HARD - Escape 1 - Lossen 1 
;MEDIUM - Escape  3 - Losen 3
;EASY - Escape  5 - Losen 5
;EASIEST - Escape  10 - Losen 10

;can have still be 1/1 at times!  
;RANDOM HARD - tends to be 1/1 
;RANDOM MEDIUM - tends to be 3/3 
;RANDOM EASY - tends to be 5/5 
;RANDOM EASIEST - tends to be 10/10 
		
		else ;OLD SYSTEM
			;#GUIDE: Harder Defeat and Slavery scenario make defeat VERY hard (basic difficulty is hardcoded to 1% - for now)
			if (cfgqst.Allow_EscapeDifficulty == "Hardest") || cfgqst.HarderDefeat
			EscapeDifficulty = 1
			loosenDiff = 1
			ScreenMessage("Your captors bind you painfully tight.")
			InfoMessage("Escape Chance: 1% -> gets "+loosenDiff+"% easier per attempt")
				;#GUIDE: Harder Defeat makes it harder to escape but ONLY one time. 
				;The next time you get in furniture its normal difficulty
				if !cfgqst.HarderDefeat
				cfgqst.HarderDefeat = false
				endif
				
			elseif cfgqst.Allow_EscapeDifficulty == "HardestRapeAgain"
			EscapeDifficulty = 1
			
				if D100(5)
				loosenDiff = 20
				ScreenMessage("Your captors knots suck. Lucky you.")
				else
				loosenDiff = Utility.RandomInt(1,5)
				ScreenMessage("Your captors bind you tight.")
				endif
			
			InfoMessage("Escape Chance: 1% -> gets "+loosenDiff+"% easier per attempt")	
			
			elseif cfgqst.Allow_EscapeDifficulty == "Easy"
			EscapeDifficulty = 20
			loosenDiff = 10
			ScreenMessage("Your captors knots suck. Lucky you.")
			InfoMessage("Escape Chance: 20% -> gets 10% easier per attempt")
			elseif cfgqst.Allow_EscapeDifficulty == "Normal"
			EscapeDifficulty = 10
			loosenDiff = 5
			ScreenMessage("Your captors knots are not the best fortunatly.")
			InfoMessage("Escape Chance: 10% -> gets 5% easier per attempt")
			;#GUIDE: this is the normal difficulty set in the MCM

			elseif cfgqst.Allow_EscapeDifficulty == "RandomRapeAgain"
			EscapeDifficulty = (cfgqst.DefeatEscapeDiff as int)	
			
				if D100(5)
				loosenDiff = 20
				ScreenMessage("Your captors knots suck. Lucky you.")
				elseif D100(50)
				loosenDiff = Utility.RandomInt(6,10)
				ScreenMessage("Your captors knots are not the best fortunatly.")
				else
				loosenDiff = Utility.RandomInt(1,5)
				ScreenMessage("Your captors seem to know how to tie a knot.")
				endif
				
			InfoMessage("Escape Chance (MCM): "+EscapeDifficulty+"% -> gets "+loosenDiff+"% easier per attempt")
			
			elseif cfgqst.Allow_EscapeDifficulty == "Random"
			EscapeDifficulty = (cfgqst.DefeatEscapeDiff as int)	
			
				if D100(5)
				loosenDiff = Utility.RandomInt(6,10)
				ScreenMessage("Your captors knots are not the best fortunatly.")
				else
				loosenDiff = Utility.RandomInt(1,5)
				ScreenMessage("Your captors seem to know how to tie a knot.")
				endif
			InfoMessage("Escape Chance (MCM): "+EscapeDifficulty+"% -> gets "+loosenDiff+"% easier per attempt")
			endif
			;MESSAGING needs too change / readded
		endif 

	;RegisterForSingleUpdate(1)		;for fuckbeltsound
	
	Success = false
	Free = false 																	;NYMRA condition
			
	cfgqst.Immobilize(true) ;do we need to enable sneak and why? think that is an artifact

	
	UnregisterForAllKeys()
	RegisterForKey(cfgqst.EscapeKey)
	RegisterForKey(cfgqst.DefeatKey)

EndFunction


bool RescuedAgain = false

Function Fragment_4()				;############ STAGE 1000 ############	##END## ##1000##
;SHUTDOWN
Debug.Trace("NAKED DEFEAT: captivequest stage 1000 (END)")

cfgqst.DefeatStatePlayer = "none"
cfgqst.DefeatStateChapter = "Escape Game End"

capqst.EndCaptureQuest()

	;RAPE AGAIN END
	if cfgqst.RapeAgain			
		Debug.Trace("NAKED DEFEAT: captivequest stage 1000 (RapeAgain)")
		RemovePunishmentItems()
		cfgqst.RemoveChains()
		UnregisterForAllKeys()

		SendModEvent("StartRestartCalmQuest")	;4.92
	
		Stop() ;END of Captivequest
		
	;SLAVERY END	
	elseif SoldAgain
	cfgqst.DefeatStateBindings = "Unbound"
	Debug.Trace("NAKED DEFEAT: captivequest stage 1000 (SoldAgain)")
	RemovePunishmentItems()
	cfgqst.RemoveChains()
	UnregisterForAllKeys()
	;cfgqst.SpawnRapers("clear", false)
	SendModEvent("EndofDefeat_Slavery")
	Stop() ;END of Captivequest
	
	elseif cfgqst.IsPoseScenario()
	RemovePunishmentItems()
		
	UnregisterForAllKeys()
		
		if CalmQuest.GetStage() < 1000
		CalmQuest.SetStage(1000)	
		endif
		
		;SendModEvent("SSLV Entry") <<----- WHAT?`???
		
		Stop() ;END of Captivequest
			
	;RESCUE END	
	elseif RescuedAgain
	cfgqst.DefeatStateBindings = "Unbound"
	Debug.Trace("NAKED DEFEAT: captivequest stage 1000 (RescuedAgain)")
	RemovePunishmentItems()
	cfgqst.RemoveChains()
	UnregisterForAllKeys()
	;cfgqst.SpawnRapers("clear", false)
	SendModEvent("StartPlayerRescued")
	Stop() ;END of Captivequest
	
	;REGULAR END 	
	else
	cfgqst.DefeatStateBindings = "Unbound"
		RemovePunishmentItems()	
		UnregisterForAllKeys()		
		if CalmQuest.GetStage() < 1000
		CalmQuest.SetStage(1000)	
		endif
		
		Stop() ;END of Captivequest
	endif
	
EndFunction

Function Fragment_7()						;############ STAGE 100 ############		#100
;free player ;NO LONGER IN USE
Debug.Trace("NAKED DEFEAT: captivequest Stage 100")
;Game.SetPlayerAIDriven(false)
;Game.EnablePlayerControls()
cfgqst.Immobilize(false)
SetStage(1000)

EndFunction


Bool Function StartQuest()			;not even needed anymore???!
	Int stg = GetStage()
	if (stg < 1) || (stg > 999)
		Start()
		return (GetStage() == 10)
	else
		return false
	endif
EndFunction
											;NYMRA STRUGGLE GAME from here 
											;NYMRA TO DO - change hotkey via MCM? set diffculty in MCM - get visuals for Shocks working again!

bool bLocked = false						;wichtig gehört dazu lol!											

;bool cfgqst.BoolCaptiveFuckBelt = false


;Bool NoSound = false
Int loose = 0  
Int harsh = 0  
Int belttimer = 0 
int loosenDiff = 1
  
 ;#TODO: Can I add "IsSitting Check" on SpaceBar and "reenable furniture" then? hmm
 
Bool PunishmentTypeInfo = false 
Bool PunishmentHarshInfo = false 
Bool PunishmentPeeInfo = false 
  
Event OnKeyDown (Int KeyCode)				;CAN I ADD A "ON HIT" bool to break the PC free? Meaning if he is attacked he will automatically end the quest? #key

;DEBUG

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") 

	if KeyCode == cfgqst.DefeatKey
		  Debug.Trace("NAKED DEFEAT: captivequest Keypress DefeatKey (Debug)")
		  
			RemovePunishmentItems()
						
			;SHIFT + K: ACCEPT SLAVERY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			if Input.IsKeyPressed(42)
			
			;THIS IS NOW ACTION WHEEL. NEED TO MOVE THIS THERE??? 
			
			;/
			SendModEvent("Moan")
			Debug.Notification("<font color='#ff0000'>You will never escape and accept beeing a slave</font>")
			Debug.Trace("NAKED DEFEAT notification: You will never escape and accept beeing a slave")
			 
			Success = true 
			Free = true 
			cfgqst.Immobilize(false)
			loose = 0		
				
				if cfgqst.RapeAgain
				Debug.Trace("NAKED DEFEAT captivequest: #ERROR - RapeAgain still TRUE (2)")
				cfgqst.RapeAgain = false
				endif
				
				if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
				cfgqst.LastAddedDevice.DisableNoWait()
				cfgqst.LastAddedDevice.Delete()
				cfgqst.LastAddedDevice = None
				endif
				
			if cfgqst.IsPoseScenario(); && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
			cfgqst.DefeatStateBindings = "Unbound"
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	;play pose to remove AnimObjects
			Utility.Wait(2.0)
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
			endif	

			cfgqst.Immobilize(false)	
			SendModEvent("EndofDefeat_Slavery")		
			SetStage(1000)		
			/;
		
			;ALT+K: SET FREE (CHEAT) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 	
			elseif Input.IsKeyPressed(56) 	
			
			;REMOVE THIS BECAUSE WE HAVE THE DEBUG WHEEL NOW 
			
			;/
			SendModEvent("Moan")	
			Debug.Notification("<font color='#ff0000'>Whoever tied you was a fool...so easy to escape!</font>")				;MESSAGE
			Debug.Trace("NAKED DEFEAT notification: Whoever tied you was a fool...so easy to escape!")
			Success = true 
			Free = true 
			loose = 0

			harsh = 0		
												
			;	bLocked = false	

				if cfgqst.RapeAgain
				Debug.Trace("NAKED DEFEAT captivequest: #ERROR - RapeAgain still TRUE")
				cfgqst.RapeAgain = false
				endif
				
				if (cfgqst.DefeatTypeScenario == "DDeEvent") || (cfgqst.DefeatTypeScenario == "DD")
				cfgqst.PlayerRef.SendModEvent("iDDeEquipWorn", "Mylist", -66)
				Utility.Wait(5.0)
				endif
				
				if cfgqst.Ragdoll			
				cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 3)
				endif	
				
				cfgqst.Immobilize(false)
				
				if cfgqst.BoolCaptiveFuckBelt
				RemovePunishmentItems()
				endif

				if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
				cfgqst.DefeatStateBindings = "Unbound"
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	;play pose to remove AnimObjects
				Utility.Wait(2.0)
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
				endif
					
				if cfgqst.Ragdoll			
		;		Debug.Notification("NAKED DEFEAT: PushAway from Device")					;XXX
				cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 3)
				endif	
			
				if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
				cfgqst.LastAddedDevice.DisableNoWait()
				cfgqst.LastAddedDevice.Delete()
				cfgqst.LastAddedDevice = None
				endif	
				
			cfgqst.GracePeriod = 0	
				
			cfgqst.Immobilize(false)		
			SetStage(1000)	
			
			/;
			endif
			
	;>>>>> ESCAPE KEY PRESSED [SPACE] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>				
	elseif KeyCode == cfgqst.EscapeKey						
	   if EscapeKey || bLocked								
			return											
	   endif	  
	   
		bLocked = true
		Actor player = cfgqst.PlayerRef		
				
		;>>>>>>>>>>>>>>>> RESTORE POSE/VEHICLE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
			
		if cfgqst.IsPoseScenario() 
		calmqst.Vehicle("restore")
		else
			if (cfgqst.PlayerRef.GetSitState() == 0) && !Success && !Free
			InfoMessage("Attempt to restore Furniture Animation")
			capqst.RestoreFurniture()
			endif
		endif
		
		;>>>>>>>>>>>>> WIGGLE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		
		 Debug.Trace("NAKED DEFEAT: captivequest Keypress DefeatKey (STRUGGLE)")
		
		if cfgqst.BoolCaptiveFuckBelt 			;if there is fuckbelt: send no sound 
		cfgqst.BoolCaptiveNoSound = true
		;Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveNoSound1"+cfgqst.BoolCaptiveNoSound)
		endif
		
		;#pose play struggle pose for idle bases scenarios
		
		;----- START STRUGGLE POSE (non Furniture) -------------------------------------------------
		if cfgqst.IsPoseScenario() ;&& (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
		Debug.Trace("NAKED DEFEAT: captivequest Keypress DefeatKey (OnKeyPress PLAY IDLE STRUGGLE)")
		calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)	
		endif
		
		;FREE >>>>>>>>>>>>>>>> "You are free!!!" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
		if  Free 

			cfgqst.DefeatStatePlayer = "Escaping"
		
			ScreenMessage("You are free!!!")
			
			Sexlab.ThreadSlots.StopAll()

			

			if cfgqst.RapeAgain
			Debug.Trace("NAKED DEFEAT captivequest: #ERROR - RapeAgain still TRUE")
			cfgqst.RapeAgain = false
			endif
			SendModEvent("Moan")	
			
			
			if cfgqst.Ragdoll			
			cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 3)
			endif	
			
			cfgqst.Immobilize(false)

			if cfgqst.BoolCaptiveFuckBelt
			RemovePunishmentItems()
			endif
			loose = 0
			harsh = 0		
													
			bLocked = false		
			
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Furniture Exit", 1.0)
			
			if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
			cfgqst.DefeatStateBindings = "Unbound"
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	;play pose to remove AnimObjects
				if (!cfgqst.AbortAll)
				Utility.Wait(2.0)
				endif 
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
			endif
			
			if cfgqst.ToggleDeleteDevice		;deletes last furniture when free
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
			cfgqst.LastAddedDevice = None
			endif
			
			cfgqst.GracePeriod = 0
			
			cfgqst.Immobilize(false)
	
			SetStage(1000)
			return
		endif

		Utility.Wait(2.0)
		SendModEvent("Moan")
				
		;>>>>>>>>>>>>>>>> "Your bindings finally feel loose." >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>		
		If Success || Utility.RandomInt(1,100) <= (EscapeDifficulty + loose + random)
		
			cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
		
			;----- START WAIT POSE -------------------------------------------------
			if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
			endif
			
		ScreenMessage("Your bindings finally feel loose.")
			Success = true 	;no longer necessary???
			Free = true 
			SendModEvent("Moan")
			Utility.Wait(1.0)
			SendModEvent("Moan")
			Utility.Wait(1.0)
			SendModEvent("Moan")
			Utility.Wait(1.0)
			SendModEvent("Moan")
			ScreenMessage("You can easily remove them now... wiggle one last time.")
	  
		;NOT required at the moment. we use DebugPunishment for Scenarios.
		;	if cfgqst.DebugPunishmentType > 0
		;	ScreenMessage("NAKED DEFEAT DEBUG: you can only break free with ActionKey.")
		;		ScreenMessage("NAKED DEFEAT DEBUG: set PunishmentType slider in MCM > System to 0 to disable.")
		;		Free = false	
		;		Success = false
		;	endif
			
		;>>>>>>>>>>>>>>>> PUNISHMENT START >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		else   
			
		;/	 			
			if PunishEffectType == "Shock"			;#shader3
			ScreenMessage("The binding spell shocks you while you struggle!")
			elseif PunishEffectType == "Frost"
			ScreenMessage("The binding spell freezes you while you struggle!")
			elseif PunishEffectType == "Fire"
			ScreenMessage("The binding spell burns you while you struggle!")
			elseif PunishEffectType == "Random"
			ScreenMessage("The binding spell overloads your sensation you while you struggle!")	
			elseif PunishEffectType == "HotnCold"
			ScreenMessage("The binding spell punishes you with hot and cold chills while you struggle!")					
			elseif PunishEffectType == "Pain"
			ScreenMessage("The binding spell tortures you while you struggle!")	
			endif
/;
			
			Utility.Wait(1.0)   
		   Int i = 2
			loose += loosenDiff
			harsh += 5
		;	Debug.Trace("NAKED DEFEAT: loose = "+loose)
			cfgqst.PlayerRef.AddItem(Squirt[0], 1, true)
			cfgqst.PlayerRef.EquipItem(Squirt[0], false, true)
			while i
				i -= 1

				;player.DamageActorValue("Stamina", damage)

			;	SendModEvent("Moan")

				Int j = 3

				while j
					j -= 1		
					SendModEvent("Moan")
					Utility.Wait(1.0)
					SendModEvent("Moan")
					Utility.Wait(1.0)
					StartPunishmentEffect(PunishEffectType)
					;cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
					;cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"		
					SendModEvent("Moan")			
					;MfgConsoleFunc.SetPhonemeModifier(cfgqst.PlayerRef, 0, 1, 100)		;open mouth

	;				cfgqst.FrostSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT needs implementation
	;				SendModEvent("Moan")
				endwhile
			endwhile
			
			;PUNISHMENTS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #punishment type
			;#GUIDE: we determin the type of punishment here
			if D100(Utility.RandomInt(20,50) + harsh)		
			
			int sevpunish = 0
			
				if cfgqst.IsPoseScenario()
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
				Endif 
			
				if cfgqst.GracePeriod > 0
				cfgqst.GracePeriod -= 1
				endif
				if cfgqst.GracePeriod < 0
				cfgqst.GracePeriod = 0
				endif
			
				;NEED a BREAK
				if D100(20)
				PlayPunishment("break")
				cfgqst.GracePeriod = 2
				;WHIP
				elseif (cfgqst.GracePeriod == 0) && D100(cfgqst.PunishWhipChance) && capqst.IsWhippingAllowed()
				PlayPunishment("whip")
				cfgqst.GracePeriod = 4
				;BUKKAKE
				elseif (cfgqst.GracePeriod == 0) && D100(cfgqst.PunishBukkakeChance) && capqst.IsBukkakeAllowed() && !cfgqst.SkipSex ;if we skip Sex this should not happen! || cfgqst.ShowDebugMessages ;&& capqst.IsFurnitureOnVehicle()
				PlayPunishment("bukkake")
				cfgqst.GracePeriod = 4
				;SEX
				elseif (cfgqst.GracePeriod == 0) && D100(cfgqst.PunishSexChance) && !cfgqst.SkipSex ;if we skip Sex this should not happen!
				PlayPunishment("sex")
				cfgqst.GracePeriod = 6			
				;CHANGE PunishEffectType
				elseif D100(5) 						
	
					String TempType = PunishEffectType
					GetPunishType()		
				
					if TempType == PunishEffectType
					;do nothing
					else	
				;	ScreenMessage("Your captors get bored and change your punishment spell")	
							
					Utility.Wait(1.0)
					StartPunishmentEffect(PunishEffectType)
					SendModEvent("Moan")
					Utility.Wait(0.5)
					StartPunishmentEffect(PunishEffectType)

					SendModEvent("Moan")
					Utility.Wait(0.5)			
					StartPunishmentEffect(PunishEffectType)
					SendModEvent("Moan")
					Utility.Wait(2.0)
					endif
				
				elseif D100(5) && !cfgqst.BoolCaptiveFuckBelt	;change this for PunishmentOutfits
				PlayPunishment("equipment")
				elseif D100(2) && (cfgqst.DefeatSlaveryProb > 0)
				PlayPunishment("sold")
				elseif D100(5) ; && !cfgqst.BoolCaptiveFuckBelt	;change this for PunishmentOutfits
				PlayPunishment("paint")	
				elseif D100(1) && (cfgqst.DefeatRescueProb > 0)
				PlayPunishment("rescued")	
				else
				PlayPunishment("pain")
				endif

				;DEBUGGING OUTCOMES
			;	else ;(cfgqst.DebugPunishmentType > 0) 
			;		if cfgqst.DebugPunishmentType == 1.0
			;		PlayPunishment("whip")
			;		elseif cfgqst.DebugPunishmentType == 2.0
			;		PlayPunishment("bukkake")
			;		elseif cfgqst.DebugPunishmentType == 3.0
			;		PlayPunishment("sex")
			;		elseif cfgqst.DebugPunishmentType == 4.0
			;		PlayPunishment("break")
			;		elseif cfgqst.DebugPunishmentType == 5.0
			;		PlayPunishment("pain")
			;		elseif cfgqst.DebugPunishmentType == 6.0
			;		PlayPunishment("sold")
			;		endif
			;	endif
				
				
				
			
				;----------------------------------------------------------------------------------------------
				cfgqst.BoolCaptiveNoSound = false
				;Debug.Trace("NAKED DEFEAT: cfgqst.BoolCaptiveNoSound3"+cfgqst.BoolCaptiveNoSound)

				;if NOT RapeAgain display "no success" message and strike idles for idlebased Scenes
				if !cfgqst.RapeAgain
				ScreenMessage("Your bindings are still too tight, try again.")
				int TempEscapeChance = EscapeDifficulty + loose
				InfoMessage("EscapeDifficulty on next attempt: "+TempEscapeChance+"%")
			
				cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)	
				
					if cfgqst.IsPoseScenario() ; && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
					calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
					endif
				
				;	if (cfgqst.DefeatTypeScenario == "Yoke")
				;	cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[0])	;#yoke normal pose
				;	elseif (cfgqst.DefeatTypeScenario == "Cuffs")
				;	cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[Utility.RandomInt(0,20)])		
				;	elseif (cfgqst.DefeatTypeScenario == "Pillory")
				;	cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[Utility.RandomInt(0,12)])
					
					;else
					;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[Utility.RandomInt(0,20)]) 
				;	endif
					
				endif
			;message when escape attempt failed
			else
			
				;if D100(50)
				if cfgqst.GracePeriod > 0
				cfgqst.GracePeriod -= 1
				endif
				if cfgqst.GracePeriod < 0
				cfgqst.GracePeriod = 0
				endif
				;endif
		
				ScreenMessage("Your bindings are still too tight, try harder.")
				int TempEscapeChance = EscapeDifficulty + loose
				InfoMessage("EscapeDifficulty on next attempt: "+TempEscapeChance+"%")
				
				
			;	InfoMessage("EscapeDifficulty on next attempt: "+loose+"%")
				cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
				
				if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
				endif
			
			endif	
		endif
	endif
endif	

    bLocked = false
EndEvent





;/
Function DoOrgasm()											;IMPROVE THIS
	SendModEvent("Moan")
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


;akActor - who you want to wash
;Animate - Play regular bathing animation (you probably want this off)
;FullClean - Fully clean the actor to 0% dirty. Otherwise you end up at 20%
;DoSoap - Play the soap effect. Depends on MCM settings!
 
 
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

bool hairchangedonce = false
bool HasPunishmentItems = false

string PunishEffectType

Event OnUpdate()

		;ScreenMessage("Short Whipping") 
		cfgqst.TempIntBridge = 1
		cfgqst.WhipAgain = true
		whipq00.StartShortWhipping()
		EscapeDifficulty += 1
		;/
		if cfgqst.NymBeta
		
		endif
		cfgqst.TempIntBridge = 1 ;no scene protectors
		cfgqst.WhipAgain = true
		whipq00.StartWhipQuest_00()

		Utility.Wait(8.0)
		whipq00.SetStage(25)
		
		cfgqst.WhipAgain = false
		cfgqst.TempIntBridge = 0
		/;
			
EndEvent 


Function PlayPunishment(string PunishmentType = "none") 		;#PlayPunishment
	
		;>>>>>>>>> we change PunishmentTypes based on User Settings (double check and stuff...)
		if cfgqst.ShortPunishment == 3  ;for the short escape scenario we ONLY have the pain punishment
		PunishmentType = "pain"
		elseif (cfgqst.DefeatWhipProb == 0) && PunishmentType == "whip"
		PunishmentType = "pain"				
		elseif cfgqst.SkipSex && PunishmentType == "sex"
		PunishmentType = "pain"
		endif
		;--------------------------------------------
		
		;>>>>>>>>> we change PunishmentTypes based on EnemyType
		if (PunishmentType == "bukkake") && !(cfgqst.DefeatTypeGeneral == "AreHumans")
		PunishmentType = "sex"
		endif
		;--------------------------------------------
		
		;if cfgqst.SkipSex
		
		;#pain (expand this more)
		if PunishmentType == "pain"		;#pain
		
			if D100(50)
			RegisterForSingleUpdate(1.0)
			Endif
		
		bool pee = false
		ScreenMessage("The punishment spell goes into overdrive!") 
		
		if cfgqst.NymBeta ;NO THERE, OBSTRUCTS WHIPPING! 
		SendModEvent("StartVoyeurs")
		;Utility.Wait(2.0)
		endif
		
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")	
		Utility.Wait(1.0)
		
			if cfgqst.IsPoseScenario()
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
			Endif 
		
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(0.5)
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(0.5)			
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(2.0)
						
			;Forced Orgasm				
			if D100(30)		
						
				if cfgqst.DefeatTypeScenario == "Armbinder"	
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Orgasm", false)
				endif
			ScreenMessage("The forced sensation makes you cum...")
			cfgqst.Orgasm = true
			SendModEvent("Moan")
			Utility.Wait(2.0)
			StartPunishmentEffect(PunishEffectType)
			StartPunishmentEffect(PunishEffectType)

			;Forced Pee	
			elseif D100(cfgqst.DefeatPeeProb)
				if cfgqst.DefeatTypeScenario == "Armbinder"	
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Pee", false)
				endif
			pee = true
			ScreenMessage("The excruciating pain forces you to pee!")
			cfgqst.PlayerRef.AddItem(Squirt[2], 1, true)
			cfgqst.PlayerRef.EquipItem(Squirt[2], false, true)					
			endif
		
		StartPunishmentEffect(PunishEffectType)
	
		SendModEvent("Moan")
		Utility.Wait(1.5)		
		StartPunishmentEffect(PunishEffectType)
		Utility.Wait(0.5)
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(1.5)
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(0.5)
		StartPunishmentEffect(PunishEffectType)
		SendModEvent("Moan")
		Utility.Wait(1.5)
		StartPunishmentEffect(PunishEffectType)

			;If D100(33) 
			;SendModEvent("RapeTattoos_addTattoo")
			;endif
			
			if pee
			cfgqst.PlayerRef.RemoveItem(Squirt[2], 1, true, None)	
			endif
				
				
		; #PAINT		
		elseif PunishmentType == "paint" 		
		ScreenMessage("Your captors paint on your body!")						 
		SendModEvent("Moan")
		Utility.Wait(1.0)
		SendModEvent("RapeTattoos_addTattoo")	
		cfgqst.FadeToBlack(true)
		SendModEvent("Moan")
		Utility.Wait(2.0)
		SendModEvent("RapeTattoos_addTattoo")
		SendModEvent("Moan")
		Utility.Wait(1.0)
		SendModEvent("RapeTattoos_addTattoo")
		cfgqst.FadeToBlack(false)

		
		; #WHIP	
		elseif PunishmentType == "whip" 	
		ScreenMessage("Your escape attempts caught some attention!")						 
		SendModEvent("Moan")	
		cfgqst.WhipAgain = true
		whipq00.StartWhipQuest_00()
		
			float whiptime = 0
			int TempInt = 0
			;loop wait till whipquests are finished
			while cfgqst.WhipAgain
			Utility.Wait(3.0)
			whiptime += 3.0
			endwhile
			
			if whiptime > 15
			
				if whiptime > 40
				TempInt = Utility.RandomInt(3,9)
				else
				TempInt = Utility.RandomInt(1,5)
				endif
				
			EscapeDifficulty += TempInt
			ScreenMessage("The hard whipping loosened your bindings a bit [by "+TempInt+"%]")	
			endif
			
		; #SOLD
		elseif PunishmentType == "sold" 								
		ScreenMessage("Your captors got bored and decided to sell you...")		  
		SendModEvent("Moan")
		bLocked = false	
		cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
				
			If !cfgqst.IsPoseScenario()
			;if !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Cuffs") && !(cfgqst.DefeatTypeScenario == "Pillory")
			cfgqst.LastAddedDevice.DisableNoWait()
			cfgqst.LastAddedDevice.Delete()
			cfgqst.LastAddedDevice = None
			else
			cfgqst.DefeatStateBindings = "Unbound"
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	;play pose to remove AnimObjects
			Utility.Wait(2.0)
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
		
			;#PROBLEM: THIS IS NOT WORKING WELL
			;#pose setup for rape again (static/calm poses)
			;if (cfgqst.DefeatTypeScenario == "Yoke")
			;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatYoke[Utility.RandomInt(0,14)])	
			;elseif (cfgqst.DefeatTypeScenario == "Cuffs")
			;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[Utility.RandomInt(0,20)])	
			;elseif (cfgqst.DefeatTypeScenario == "Pillory")
			;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[Utility.RandomInt(0,12)])					
			endif

		;	else
		;	;cfgqst.PlayerRef.PlayIdle(KnockdownIdles[3])			;	[nade_CaptiveQuest (E9172C7D)].nade_captivequest_qf_scr.OnKeyDown() - "nade_captivequest_qf_scr.psc" Line 560
		;	cfgqst.ShowPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false)			
		;	endif
		
		SoldAgain = true
		SetStage(1000)								;send to end of CaptureQuest 
		
		; #RESCUED
		elseif PunishmentType == "rescued" 										
		ScreenMessage("One of your captors has pity and saves you.")		  
		SendModEvent("Moan")
		bLocked = false	
		cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)
				
				If !cfgqst.IsPoseScenario()
				;if !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Cuffs") && !(cfgqst.DefeatTypeScenario == "Pillory")
				cfgqst.LastAddedDevice.DisableNoWait()
				cfgqst.LastAddedDevice.Delete()
				cfgqst.LastAddedDevice = None
				else
				cfgqst.DefeatStateBindings = "Unbound"
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	;play pose to remove AnimObjects
				Utility.Wait(2.0)
				calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Stop", false)	
			
				;#PROBLEM: THIS IS NOT WORKING WELL
				;#pose setup for rape again (static/calm poses)
				;if (cfgqst.DefeatTypeScenario == "Yoke")
				;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatYoke[Utility.RandomInt(0,14)])	
				;elseif (cfgqst.DefeatTypeScenario == "Cuffs")
				;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[Utility.RandomInt(0,20)])	
				;elseif (cfgqst.DefeatTypeScenario == "Pillory")
				;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[Utility.RandomInt(0,12)])	
				
				endif
			
			
			;else
			;cfgqst.PlayerRef.PlayIdle(KnockdownIdles[3])			;	[nade_CaptiveQuest (E9172C7D)].nade_captivequest_qf_scr.OnKeyDown() - "nade_captivequest_qf_scr.psc" Line 560
			;cfgqst.ShowPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false)			
			;endif
		
		RescuedAgain = true
		SetStage(1000)								;send to end of CaptureQuest 
		
		; #SEX
		elseif PunishmentType == "sex" 		
			
			ScreenMessage("Your captors want more...")		  
			SendModEvent("Moan")
			
			cfgqst.RapeAgain = true
			cfgqst.InFurniture = false ;tell calmquest to set vehicle again
			
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "reset", false)
			
			bLocked = false	
			cfgqst.PlayerRef.RemoveItem(Squirt[0], 1, true, None)										
			
			;--------- WAITING POSE for RAPE AGAIN (only Pose Scenarios) --------------------------------------------------------
			
			if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)
			endif
		
		;cfgqst.FadeToBlack(true) ;we dont want or need this...
				
			;RAPE AGAIN ---> WE REMOVE FURNITURE HERE. THIS IS TOO EARLY. MOVE TO CALMQUEST	
			
			;if !IsPoseScenario()
			;if !(cfgqst.DefeatTypeScenario == "Yoke") && !(cfgqst.DefeatTypeScenario == "Cuffs") && !(cfgqst.DefeatTypeScenario == "Pillory")
			;cfgqst.LastAddedDevice.DisableNoWait()
			;cfgqst.LastAddedDevice.Delete()
			;cfgqst.LastAddedDevice = None
			;endif
			
				;/
			;#PROBLEM: THIS IS NOT WORKING WELL
			;#pose setup for rape again (static/calm poses)
			if (cfgqst.DefeatTypeScenario == "Yoke")
			cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatYoke[Utility.RandomInt(0,14)])	
			elseif (cfgqst.DefeatTypeScenario == "Cuffs")
			cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatCuffs[Utility.RandomInt(0,20)])	
			elseif (cfgqst.DefeatTypeScenario == "Pillory")
			cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatPillory[Utility.RandomInt(0,12)])	
			else
			;cfgqst.PlayerRef.PlayIdle(KnockdownIdles[3])			;	[nade_CaptiveQuest (E9172C7D)].nade_captivequest_qf_scr.OnKeyDown() - "nade_captivequest_qf_scr.psc" Line 560
			cfgqst.ShowPose(cfgqst.PosesDefeat[Utility.RandomInt(1,14)], false)			
			endif
			/;
		
			SetStage(1000)								;send to end of CaptureQuest 	
		; #BREAK
		elseif PunishmentType == "break"
			ScreenMessage("You need to rest a bit to regain strength...")
			
			if cfgqst.IsPoseScenario() && (cfgqst.DefeatTypeScenario != "DDeEvent")	;DDe --> no posing!
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Wait", false)	
			endif
			
			SendModEvent("Moan")
			Utility.Wait(3.0)
			SendModEvent("Moan")
			Utility.Wait(4.0)
			SendModEvent("Moan")
			Utility.Wait(5.0)
			SendModEvent("Moan")
			Utility.Wait(6.0)
			SendModEvent("Moan")
			Utility.Wait(6.0)
			ScreenMessage("You feel strong enough to continue.")	
		
		; #EQUIPMENT
		elseif PunishmentType == "equipment"			
		AddPunishmentItems(1)	
		HasPunishmentItems = true
		
		
		; #BUKKAKE
		elseif PunishmentType == "bukkake"
		ScreenMessage("Do you like bukkake?")
		
		SendModEvent("StartSolo") ;this is double starting with Vyoeurs.... need more spots 
		Utility.Wait(1.0)
			while cfgqst.SexSceneBukkake 	;somewhere here is the problem. SexSceneBukkae is false too early... hmm
			SendModEvent("Moan")
			Utility.Wait(4.0)
			endwhile
		Sexlab.AddCum(cfgqst.PlayerRef, true, true, true)
		ScreenMessage("Seems they are finished now...")
		endif
		
		

	; MORE IDEAS
	; PEE
	; masturbation / pee of aggressor -> how?	

;endif
;endif	
				
EndFunction


Function StartPunishmentEffect(string type)	;#shader2 	;#spells		;#StartPunishmentEffect

	;if cfgqst.IsNymrasGame() && D100(50
	;type = "shock"
	;endif 
	
	if type == "Shock"
	cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
	cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
	
	cfgqst.SpellOnVictims(type)
		if D100(33)
		cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Punishment Shock Extra", 1.0)
		endif 
	
	elseif type == "Frost"
	cfgqst.Frostspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	
	cfgqst.SpellOnVictims(type)

	elseif type == "Fire"
	cfgqst.Firespell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	
	cfgqst.SpellOnVictims(type)

	elseif type == "Random"
		int randomeffect = Utility.RandomInt(1,4)
		if randomeffect == 1		
		cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
		cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"		
		cfgqst.SpellOnVictims("Shock")
		elseif randomeffect == 2
		cfgqst.Frostspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
		cfgqst.SpellOnVictims("Frost")

		elseif randomeffect == 3
		cfgqst.Firespell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
		cfgqst.SpellOnVictims("Fire")
		elseif randomeffect == 4
		cfgqst.Painspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
		cfgqst.SpellOnVictims("Pain")
		endif
	elseif type == "HotnCold"
		int randomeffect = Utility.RandomInt(1,2)
		if randomeffect == 1
		cfgqst.Frostspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
			if D100(50)
			cfgqst.SpellOnVictims("Fire")
			else 
			cfgqst.SpellOnVictims("Frost")
			endif 
		elseif randomeffect == 2
		cfgqst.Firespell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
		cfgqst.Frostspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)
			if D100(50)
			cfgqst.SpellOnVictims("Fire")
			else 
			cfgqst.SpellOnVictims("Frost")
			endif 
		endif		
	elseif type == "Pain"
		if D100(33)	;play shock extra sometimes
		cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
		cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
			if D100(50)
			cfgqst.SpellOnVictims("Shock")
			else 
			cfgqst.SpellOnVictims("Pain")
			endif 
			
			if D100(20)
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Punishment Shock Extra", 1.0)
			elseif D100(33)
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Item does not Fit", 1.0)
			endif 
		endif
		cfgqst.Painspell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	
		cfgqst.SpellOnVictims("Pain")

	endif
	

	
	
EndFunction


Function AddPunishmentItems(int level)

int equipchance = 0
bool aMessage = false
if level == 0
equipchance = 50
elseif level == 1
equipchance = 100
endif

		if cfgqst.DefeatTypeScenario == "DDeEvent" || (cfgqst.DefeatTypeScenario == "DD")
		;do nothing --- no Punishment Items will be equiped
		else
			if cfgqst.ModPLUGS && D100(equipchance)
			cfgqst.AddBrutalPlugs("random")
			aMessage = true
			endif
			
			if D100(equipchance) && !cfgqst.IsMale(cfgqst.PlayerRef)
			cfgqst.AddDefeatClothing()
			aMessage = true
			endif
			;if D100(50)
			if D100(equipchance)
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
			ScreenMessage("They force some kinky stuff on you...")
			endif
		endif	
		
		if D100(cfgqst.BondageHaircutProb) 
		cfgqst.ChangeHairStyle()
		endif
			
EndFunction	


bool SoldAgain = false

Function Pee()

					ScreenMessage("The excruciating pain forces you to pee!")  
					cfgqst.PlayerRef.AddItem(Squirt[2], 1, true)
					cfgqst.PlayerRef.EquipItem(Squirt[2], false, true)	
					
					StartPunishmentEffect(PunishEffectType)
					;cfgqst.ShockSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;WORKING ONLY EFFECT USES "ShockPlayerCloakFXShader [EFSH:0010F9A6]"
					;cfgqst.SoundSpell.RemoteCast(cfgqst.PlayerRef, cfgqst.PlayerRef, cfgqst.PlayerRef)	;ONLY SOUND USES "ShockFXShader [EFSH:00057C67]"
				
					SendModEvent("Moan")	
					Utility.Wait(3.0)
					SendModEvent("Moan")
					Utility.Wait(3.0)

					SendModEvent("Moan")	
					Utility.Wait(3.0)
					SendModEvent("Moan")			
					
					;Debug.Notification("<font color='#ff0000'>The excruciating pain forces you to pee!</font>")				;MESSAGE
					;Debug.Trace("NAKED DEFEAT notification: The excruciating pain forces you to pee!")  
					cfgqst.PlayerRef.AddItem(Squirt[2], 1, true)
					cfgqst.PlayerRef.EquipItem(Squirt[2], false, true)					

					cfgqst.PlayerRef.RemoveItem(Squirt[2], 1, true, None)	

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
	Debug.trace("NAKED DEFEAT captivequest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT captivequest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT captivequest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function RealWaiting(float WaitTime)	;#waiting

	float ftimeStart = Utility.GetCurrentRealTime()
	float ftimeCurrent = 0
	bool showmessage = false
	
	if WaitTime > 6
	showmessage = true
	endif
	
;	DebugTrace("ftimeStart = "+ftimeStart)

	while cfgqst.ModEnabled && (ftimeCurrent < (ftimeStart + WaitTime))
	Utility.Wait(0.5)
	ftimeCurrent = Utility.GetCurrentRealTime()

		if showmessage && (ftimeCurrent > ((ftimeStart + WaitTime) - 5.0))
		showmessage = false		
		ScreenMessage("You have 5 seconds left.")
		endif

	endwhile

;	DebugTrace("ftimeCurrent = "+ftimeCurrent)

EndFunction	

Bool Function Nym()

	if cfgqst.IsNymrasGame()
	return TRUE
	else
	return false
	endif 
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

Function RemovePunishmentItems()

		cfgqst.RemoveFuckBelt()
		cfgqst.RemoveBrutalPlugs()
		cfgqst.RemoveDefeatClothing()
		cfgqst.RemoveDefeatGags()
		
EndFunction