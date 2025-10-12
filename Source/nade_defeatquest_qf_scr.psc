
Scriptname nade_defeatquest_qf_scr Extends Quest Hidden


ReferenceAlias Property Alias_EssentialPlayer Auto
nade_configquest_scr Property cfgqst Auto

;Bool RunExposureMonitor = true

nade_playeralias_scr Property playscr Auto

Function Fragment_0()								;############# STAGE 1000 #############
Debug.Trace("NAKED DEFEAT defeatquest Stage 1000 (END)")
;shutdown stage

;	RunExposureMonitor = false



	if cfgqst.PlayerRef.GetActorBase().IsEssential()
	cfgqst.PlayerRef.GetActorBase().SetEssential(false)
	endif
	Debug.Trace("NAKED DEFEAT defeatquest (END) PC IsEssential: "+cfgqst.PlayerRef.GetActorBase().IsEssential())

	Stop()

EndFunction


Function Fragment_3()								;############# STAGE 10 #############

Debug.Trace("NAKED DEFEAT defeatquest Stage 10 (START)")

Actor a

	;if cfgqst.ModEnabled
	;RunExposureMonitor = true
	;RegisterForSingleUpdate(3.0)
	;endif 

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

Function StartTestFunctionInternal()

playscr.TestFunctionInternal()

EndFunction

;Expressions and Sounds 	

Bool Property PlayerMonitorRunning Auto

Function PlayerMonitor_Loop()

	if !PlayerMonitorRunning
	ScreenMessage("NAKED DEFEAT Player Status Monitor Started ("+cfgqst.NakedDefeat_ModVersion+")")
	PlayerMonitorRunning = true
	endif 

	RegisterForSingleUpdate(1.0)

EndFunction 

int iUpdateTimer
	
;PLAYER MONITOR - Fixed 3 Seconds Status Updates 
	
Event OnUpdate()			;#update

	iUpdateTimer += 1

	NymTrace("defqst: OnUpdate(iUpdateTimer: "+iUpdateTimer+")")
	
	if iUpdateTimer > 3
	
		if Nym()
		Debug.MessageBox("#ERROR DEFQST UPDATETIMER > LOOPTIME") 
		endif 
	
	iUpdateTimer = 3
	endif 
	
	if iUpdateTimer == 3		;3 seconds passed - happens everytime
	iUpdateTimer = 0

		;WAITING Maintenance (outside SexScene)
		
		cfgqst.WaitLoopPlayerMaintenance()
		
		if cfgqst.IsDefeatRunning()
			
			;--- SEX SCENE ---;
			if cfgqst.SexScene	
			
				if Nym()	
				NymrasSexExpressions()
				endif 
				
			;--- NAKED DEFEAT EXPRESSIONS & SOZBDS ---;
			else 	
			
				cfgqst.SetExpression(Utility.RandomInt(1,6))	
			
				;looping with fuckbelt sounds & gag sounds
				if cfgqst.BoolCaptiveFuckBelt || cfgqst.Gagged || cfgqst.SexSceneBukkake
					;only plays with fuckingbelt
					if cfgqst.BoolCaptiveFuckBelt
					cfgqst.PlaySoundFuckBelt()
					endif
					SendModEvent("Moan")
				endif
			endif 
		;--- NAKED DROWNING ---;
		elseif cfgqst.NakedDrowning && cfgqst.PlayerRef.IsSwimming()
	
		CheckNakedDrowning()
			
		endif
	endif 

	PlayerMonitor_Loop()

EndEvent 


Function NymrasSexExpressions()


		if cfgqst.IsFucking(cfgqst.PlayerRef) 
			
			;NORMAL		
			if cfgqst.IsMouthAvailable == 1	;not sucking
			;NymTrace("OnStartNakedSexExpressions 3")
			cfgqst.Gagged = false 
			cfgqst.SetExpression(Utility.RandomInt(1,6))
	
			;SUCKING 	
			elseif cfgqst.IsMouthAvailable == 0 ;sucking 
			;NymTrace("OnStartNakedSexExpressions 4")
			cfgqst.Gagged = true 
			cfgqst.SetExpression(1)
			endif 
			
		SendModEvent("Moan") 	

		endif  
	;NymTrace("OnStartNakedSexExpressions 10")	
	;cfgqst.IsMouthAvailable = 1
	;cfgqst.Gagged = false ;<<<<--- sigh 		


EndFunction 

Function CheckNakedDrowning()

		float Health
		;Health = cfgqst.PlayerRef.GetAV("Health")
		Health = cfgqst.PlayerRef.GetBaseActorValue("Health")
		float Damage
		Damage = Health*0.2

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

EndFunction 

Bool Function IsArmorTooHeavy()

	Form a = None
	bool TooHeavy = false
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;30 - HEAD	????
	if a && cfgqst.IsItem("Armor Type Heavy", a)
	return true
	endif
		
	a = cfgqst.PlayerRef.GetWornForm(0x00000004)	;32 - BODY				
	if a && cfgqst.IsItem("Armor Type Heavy", a)		
	return true	
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;33 - HANDS	
	if a ;&& cfgqst.IsItem("Armor Type Heavy", a)
	return true
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000080)	;37 - FEET
	if a ;has to be barefeet
	return true
	else
	return false
	endif

EndFunction



;/
Event OnUpdate()			
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


;LOCAL SLAVERY FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;LOCATION: We get location, save it and compare the current location always with that one ---> only 1 cell slavery right now. only indoors too

;tavern slave: complex

;mining slave: 
;simple: ore in your inventory is removed and increases your Sympathy. 



int Property LocalSlaveryStatus Auto		;0 FREE - 1 Temporarily Restricted Stay - 2 Prostitute - 3 Slave 
int Property Sympathy Auto
int Property Allowance Auto		;Value that regulates what the slave is allowed to do: lower values or even negative OnActivate
;negative Values: permanent fixation or cage - fucking and punishment only way to get back out
;low values: forced to crawl 
;medium values: forced to be naked and slow
;higher values: allowed to wear clothing and behave normally 

;Allowance in General also has impact on the frequency of Sex and Punishment.

;Allowance is increased by Sex, Punishment and by Behaviour and Deeds 
;Allowance is decreased by escape attempts, failed deeds (boredom of masters) and bad behavior (rushing sex, doing stuff not permittet (running, jumping etc.)



;sympathy increases same as Allowance but slower than allowance. but it decreases faster. 
;sympathy increases the chance to be set free or rescued 
;low sympathy is not a problem at first
;negative symapthy will lead to harsh and long punishments and the chance of beeing sold/killed


;MONITOR: 
;we save the current LocationType and scan if that type changes. if it does it will sound an alarm/spawn a guard and teleport the Player back to the punishment location

;SPOTS:
;at the beginning we use PopUps to give tasks.
;1. Task: find a punishment spot and press K 
;2. Task: find a sleeping spot and press K 
;3. find spots and place Cooking Station, Workbench etc, for Slave Labour
;4. place punishment furnitures

;ACTION KEY: 
;the Action key can be used to work and do deeds. 
;Close in Front of NPC: -> offer Sex 
;Else: sweep/clean ? dance? masturbate?
;Close to punishment furniture: ask for a session 	
;/

Idles For "Work"

000F57C8 BarCounterWipe (detect furnitures?)
0001E175 BucketFillRoot
0001E344 BucketPourRoot

0003De52 BumpedFromBack
0003De4F BumpedFromFront
0003De51 BumpedFromLeft
0003De50 BumpedFromRight

000D77F1 DefaultStagger

000640FB DrinkingRoot

000640FFEatingRoot

Fishing?

0007871E ForwardFall

000C431E	HammerwallRoot

0008B5D2 	IdleActivatePickUp
0008B5D3 	IdleActivatePickUpLow

000D8730	IdleAppllaud2
000D8731	IdleAppllaud3
000D8732	IdleAppllaud4
000D8733	IdleAppllaud5

000E9312	IdleApplaudSarcastic

000F11EC	IdleBlessingKneel
000F11EE	IdleBlessingKneelEnter
000F11EF	IdleBlessingKneelExit

0001E1B6	IdleCarryBucketFillEnter
0001E374	IdleCarryBucketPourEnter

0003EA33	IdleCleansWord 
	
000F4331	IdleCO2Ceremony1Welcome
000F4332	IdleCO2Ceremony1Blessing
000F4333	IdleCO2Ceremony1Chest

000F11E4 IdleCrouchedPray
000F11E6 IdleCrouchedPrayEnter
000F11E7 IdleCrouchedPrayExit

00075C3D	IdleExamine

00096F8C	IdleFluteStart

0006FF15	IdleGetAttention

000B5E20	IdleGive

00075CB4	IdleHow

000E8E50	IdleKneeling

00075C5F	IdleLaugh

000F5D98	IdleLookAround

00075C62	IdleLookFar

0010ACb1	IdleNervous

000640FE	IdleLooseSweepingStart

0006F300	IdlePray

000A67E2	IdleScratch ;bathing?
000F5BB8	IdleScratching ;bathing?

000EFC64	IdleSerachBordy

000D6F0A	IdleSquat

00105D47	IdleSurrender

000D8736	IdleUncontrollableCough (PostOral?)

000F9928	PlayerStagger

00066376	SpectatorGawk (SPECTATOR)	there is spectatorCheer and spectatorClap too also talking etc.


	if IsLocalSlave
	
		if LocationSlavery == LocationCurrent 
		;---> all good 
			
			if IsBusy ;fucked, punished, restrained, doing a job 
				
				if HasJob
				;check if job is done correctly 
				endif 
			
			elseif Timer == 60 ;every minute we check 
			
				if D1000(Sympathy) 
				;set free or "rescued" --> we start simply with rescued 
				elseif !D100(Allowance)
				
				endif 				
				
			
			
			endif 
		
		
		
		else ;player not in slavery LocationSlavery anymore
		TeleportBackToPunishmentLocationAndPunish()
		
		endif 
		
		
	
/;
	
;LOCAL SLAVERY FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



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
	if Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT defquest: (#trace NYM) "+Text2)
	endif
EndFunction

Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
	
EndFunction

;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
