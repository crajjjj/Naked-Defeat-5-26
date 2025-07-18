
Scriptname nade_defeatquest_qf_scr Extends Quest Hidden


ReferenceAlias Property Alias_EssentialPlayer Auto
nade_configquest_scr Property cfgqst Auto

Bool RunExposureMonitor = true


Function Fragment_0()								;############# STAGE 1000 #############
Debug.Trace("NAKED DEFEAT defeatquest Stage 1000 (END)")
;shutdown stage

	RunExposureMonitor = false



	if cfgqst.PlayerRef.GetActorBase().IsEssential()
	cfgqst.PlayerRef.GetActorBase().SetEssential(false)
	endif
	Debug.Trace("NAKED DEFEAT defeatquest (END) PC IsEssential: "+cfgqst.PlayerRef.GetActorBase().IsEssential())

	Stop()

EndFunction


Function Fragment_3()								;############# STAGE 10 #############

Debug.Trace("NAKED DEFEAT defeatquest Stage 10 (START)")

Actor a

	if cfgqst.ModEnabled
	RunExposureMonitor = true
	RegisterForSingleUpdate(3.0)
	endif 

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


;/
Event OnUpdate()			; #update
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
Function PlayerMonitor()			;#scan	;#monitor		MOVE MONITOR to DEFEATQUEST??? 

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
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#trace NYM) "+Text2)
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
