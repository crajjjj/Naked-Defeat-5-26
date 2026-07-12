Scriptname nade_playeralias_scr extends ReferenceAlias  

Actor Attacker = None			;PUSHAWAY TEST

Quest Property CalmQuest Auto		

Quest Property AllegianceQuest Auto		;
Quest Property ProximityQuest Auto		
Quest Property DefeatQuest Auto		
Quest Property WerewolfQuest Auto	

nade_configquest_scr Property cfgqst Auto

nade_calmquest_qf_scr Property calmqst Auto

nade_FollowerIdleQuest_01_qf_scr Property folidle01 Auto
nade_FollowerQuest_qf_scr Property folqst Auto

nade_slavery_qf_scr Property slaveqst Auto

nade_storage_qf_scr Property storqst Auto

String Property LastLocType Auto

Keyword Property SexLabNoStrip Auto
Keyword Property ArmorMaterialDaedric Auto
Keyword Property ArmorClothing Auto
Keyword Property ArmorLight Auto
Keyword Property ArmorHeavy Auto
Keyword[] Property KWDVendorItemConsumables Auto
	
Formlist Property ContainerTestList Auto 

GlobalVariable Property nade_StopCrime Auto
SexLabFramework Property SexLab Auto

Location Property LocationWhiterun Auto
Location Property LocationSolitude Auto
Location Property LocationRiverwood Auto
Location Property LocationWindhelm Auto
Location Property LocationRiften Auto
Location Property LocationFalkreath Auto
Location Property LocationWinterhold Auto
Location Property LocationDawnstar Auto
Location Property LocationDragonbridge Auto
Location Property LocationKynesgrove Auto
Location Property LocationRorikstead Auto
Location Property LocationIvarstead Auto
Location Property LocationMorthal Auto
Location Property LocationMarkarth Auto

Keyword Property LocTypePlayerHouse Auto
Keyword Property LocTypeStore Auto
					
Keyword property LocTypeClearable auto
Keyword property LocTypeDungeon auto

Keyword Property LocTypeOrcStronghold Auto
Keyword Property LocTypeMilitaryFort Auto
Keyword Property LocTypeMilitaryCamp Auto

Keyword Property LocTypeBarracks Auto
Keyword Property LocTypeInn Auto
Keyword Property LocTypeCastle Auto


Spell Property SpellLootCooldown Auto

Faction Property SexLabAnimatingFaction Auto
Faction Property DefeatFaction Auto	

Bool Property PlayerWasInCombat Auto

Int[] Property SlotMasks Auto
Bool ScanOn = false

int DefeatCount = 0
bool IsCriticalDefeat = false
bool WaitForMoan = false
bool IsStripAttack = false
bool IsStripAttackMedium
bool IsStripAttackHeavy
bool IsAttackDodged = false

float addCritChance = 0.0

string tempraceID = "empty"

;Event OnActorFallLongDistance(Actor akTarget, float afFallDistance, float afFallDamage)

;	NymTrace("OnActorFallLongDistance - Actor: "+akTarget+", Distance: "+afFallDistance+", Damage: "+afFallDistance)		;NOT WORKING 


;EndEvent


String Function GetRaceKey(Actor akActor = None)
tempraceID = MiscUtil.GetActorRaceEditorID(akActor) 
return sslCreatureAnimationSlots.GetRaceKeyByID(tempraceID)
tempraceID = "empty"
Endfunction

bool StripRunning = false

Bool Function IsArmorTooHeavy()

	Form a = None
	bool TooHeavy = false
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;30 - HEAD	????
	if a && a.HasKeyWord(ArmorHeavy)
	return true
	endif
		
	a = cfgqst.PlayerRef.GetWornForm(0x00000004)	;32 - BODY				
	if a && a.HasKeyWord(ArmorHeavy) ;|| a.HasKeyWord(ArmorLight)		
	return true	
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;33 - HANDS	
	if a && a.HasKeyWord(ArmorHeavy)
	return true
	endif
	
	a = cfgqst.PlayerRef.GetWornForm(0x00000080)	;37 - FEET
	if a ;has to be barefeet
	return true
	else
	return false
	endif

EndFunction

bool IsInitialMessagePlayed = false

Function InitialMessagePlayed(string WhoWasIt)

NymTrace("InitialMessagePlayed(WhoWasIt: "+WhoWasIt+" IsInitialMessagePlayed: "+IsInitialMessagePlayed+")")

if !IsInitialMessagePlayed
IsInitialMessagePlayed = true
endif

EndFunction

;-------------------------- STRIP ARMOR ----------------------------------------------------------------------------------

;SLOT MASKS: https://www.creationkit.com/index.php?title=Slot_Masks_-_Armor


Race SkeletonRace		
	
Float DegradingHit
	

Function CombatStrip()		;#strip1 #CombatStrip()
	Debug.Trace("NAKED DEFEAT playeraliasquest: #CombatStrip(NEW)")	
	
if StripRunning
	Debug.Trace("NAKED DEFEAT playeraliasquest: #ERROR (StripRunning = TRUE)")	
else 	
	StripRunning = true
	
		Float prob
		Float stripprob
		string TempInfoMessage = "none"		
		string TempScreenMessage = "none"

		Form a ;= None

		Bool NakedHit = false
		Bool ItemFound = false
		Bool ItemStripped = false
		Bool Werewolf = false
		Bool PiercingHit = false
		Bool IsClothing
		Bool IsLightArmor
		Bool IsHeavyArmor
		
		Bool HitHead = false
		Bool HitArms = false
		Bool HitLegs = false
		Bool HitBody = false
	;

		if WerewolfQuest.IsRunning()	
		Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): Player is Werewolf")	
		Werewolf = true	;nothing gets stripped but later we need to know 
		endif	
				
		if IsBleedingOut
		Debug.Trace("NAKED DEFEAT playeraliasquest: #NOTE we are here. Seems to be good this way...")

			if !IsPoisonDefeat && !cfgqst.NoEssentialPlayer && (cfgqst.Enemy[0] != "none")
			Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from strip (backup))")
			IsBleedoutDefeat = true
			PlayerDown("Bleedout03") ;from COMBAT STRIP (Critical Defeat) ;WHATS THIS?
				if Nym()
				Debug.Messagebox("NOTE Bleedout03 playeraliasquest happened")
				endif 
			endif
			
		;Critical Defeat Chance for werewolf (50% harder to down even when naked)	
		elseif WereWolf 
			
			if D100(cfgqst.CriticalDefeat*0.5)
			IsCriticalDefeat = true
		
			TempScreenMessage = "Even werewolf skin is not impenetrable..."
			TempInfoMessage = "Critical Defeat started (Werewolf)"
		
			endif	
		
		else 
	;>>> GET SLOT (a) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			;we are only hitting primary body parts anymore
			Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): GetSlot")
			int i = Utility.RandomInt(1,10)
				
			;MAIN SLOTS:
			;31 - Hair / HELMET or 42 - Circlet
			;32 - BODY
			;33 - HANDS	
			;37 - FEET	
			
			if Attack_Legs_ONLY
			i = 10
			elseif Attack_ArmsLegs_ONLY 
			i = Utility.RandomInt(8,9)
			endif 
				

			;GET THE SLOT AND THE ITEM THAT IS EQUIPED THERE	
			if (i == 1) || (i == 2) 
			;	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;30 - HEAD						
				a = cfgqst.PlayerRef.GetWornForm(0x00000002)	;31 - Hair / HELMET			
				if !a
				a = cfgqst.PlayerRef.GetWornForm(0x00001000)	;42 - Circlet
				endif
			HitHead = true				
			elseif (i == 3) || (i == 4) || (i == 5) || (i == 6) ;highest chance of beeing hit
			;if Body is hit and we wear an item on Slot 52 (Bikini Bottom) there is a chance we get hit there instead.
			a = cfgqst.PlayerRef.GetWornForm(0x00000004)	;32 - BODY
				if !a && D100(50) ;when Body armor is destroyed there is 50% chance we check for Bottom armor
				a = cfgqst.PlayerRef.GetWornForm(0x00400000)	;52 - BOTTOM
				endif
			HitBody = true
			elseif (i == 7) || (i == 8) 
			a = cfgqst.PlayerRef.GetWornForm(0x00000008)	;33 - HANDS
			HitArms = true
			elseif (i == 10) || (i == 9)
			a = cfgqst.PlayerRef.GetWornForm(0x00000080)	;37 - FEET	
			HitLegs = true
			endif
				
			if HitHead	
			NymTrace("HIT: HitHead")
			elseif HitBody
			NymTrace("HIT: HitBody")
			elseif HitArms	
			NymTrace("HIT: HitArms")
			elseif HitLegs	
			NymTrace("HIT: HitLegs")
			endif 
	;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

		;>>> GET TYPE and STRIP CHANCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

		Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): GetType")
		;LIGHT ARMOR ----------------------------------------------------------------
			if a && cfgqst.IsItem("Armor Type Light", a)
				NymTrace("CombatStrip - Light Armor found")
				stripprob = cfgqst.DefeatBreakLightProb
				ItemFound = true
				IsLightArmor = true
				
				;LIGHT ARMOR - Some Extra Hits can x2
				if HitCount > 5			
				stripprob = stripprob +	cfgqst.DefeatBreakLightProb	
				endif
				
				;LIGHT ARMOR - Cumsoaked, StripChance x2
				if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked()
				stripprob = stripprob +	cfgqst.DefeatBreakLightProb		
				endif
				
				;LIGHT ARMOR - StripAttack: StripChance x3
				if Strip_Light_MOD > 0 
				stripprob =	stripprob +	Strip_Light_MOD
				endif
			
			;HEAVY ARMOR ---------------------------------------------------------------	
			elseif a && cfgqst.IsItem("Armor Type Heavy", a)
				NymTrace("CombatStrip - Heavy Armor found")
				stripprob = cfgqst.DefeatBreakHeavyProb
				ItemFound = true	
				IsHeavyArmor = true
			
				;HEAVY ARMOR - Massive Extra Hits can x2
				if HitCount > 10		
				stripprob = stripprob +	cfgqst.DefeatBreakHeavyProb	
				endif 


				;HEAVY ARMOR - Cumsoaked, StripChance x2
				if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked()
				stripprob = stripprob +	cfgqst.DefeatBreakHeavyProb			
				endif
				
				;HEAVY ARMOR - StripAttack: StripChance x4
				if IsStripAttackHeavy 
				stripprob =	stripprob +	Strip_Heavy_MOD
				endif
			
			;CLOTHING ----------------------------------------------------------------
			elseif a && cfgqst.IsItem("Armor Type Clothing", a)	
				NymTrace("CombatStrip - Clothing found")
				;CLOTHING - Hitcount is added 1:1 
				stripprob = cfgqst.DefeatBreakClothingProb + HitCount
				ItemFound = true
				IsClothing = true	
				
				;LIGHT ARMOR - StripAttack: StripChance x3
				if Strip_Light_MOD > 0 
				stripprob =	stripprob +	Strip_Light_MOD
				endif
				
				;cum sticks lol :D no modifier for Clothing? 
				

			;JEWELLEREY (only Head) ----------------------------------------------------------------
			elseif a && HitHead && cfgqst.IsItem("Jewelery", a)	
				NymTrace("CombatStrip - Jewellerey HEAD found")
				;CLOTHING - Hitcount is added 1:1 
				stripprob = cfgqst.DefeatBreakClothingProb + HitCount
				ItemFound = true
				IsClothing = true
				
				;LIGHT ARMOR - StripAttack: StripChance x3
				if Strip_Light_MOD > 0 
				stripprob =	stripprob +	Strip_Light_MOD
				endif
		
			;NAKED ----------------------------------------------------------------		
			else	
			ItemFound = false
			Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): Naked Hit")
			NakedHit = true
			endif
			
			;-----------------------------------------------------------------------
			
			; >>>>>>>>>>>>> NymCombat - PUSH ATTACK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			if storqst.NymCombat
				;happens on Strip if Item is worn or Not 
				if !cfgqst.Ragdolling && (IsPowerAttack || (PushAttack_MOD > 0)) 
					
				
					;PLAYER PUSHED AWAY - checked
					float PushChance1
					float PushForce1 = 1.0
								
					if PushAttack_MOD > 0.0
					PushChance1 = PushAttack_MOD + stripprob
					PushForce1 = Utility.RandomFloat(1.0, 4.0)
					endif 
					
					if IsPowerAttack && storqst.IsBlockedAttack
					PushChance1 = PushChance1*0.3
					endif 

					if D100(PushChance1) 
					storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, PushForce1, "playscr OnHit 412")
				;	cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, cfgqst.PlayerRef, PushForce1)
				;	DebugTrace
				;	("Power/PushAttack (OnHit) PushActorAway 412")		;#PushHit on Strip 
					endif 
					
				elseif !cfgqst.Ragdolling && (akSource_NAME == "Lightning Bolt" || akSource_NAME == "Chain Lightning")
					;PLAYER PULL ATTACK
					
					float PullChance = 50
					if IsAttackDodged
					PullChance == 20
					endif 
					
					if D100(PullChance) 
					storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, Utility.RandomFloat(-1.0, -3.0), "playscr OnHit PULL 388")
				;	cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, cfgqst.PlayerRef, PushForce1)
				;	DebugTrace
				;	("Power/PushAttack (OnHit) PushActorAway 412")		;#PushHit on Strip 
					endif 
				
				endif 
			endif 
			;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			
			if storqst.IsBlockedAttack ;block reduces strip chance significantly (BUT NOT ZERO!!!) 
			stripprob = stripprob*0.1
			endif
			
			
			; >>>>>>>>>>>>> NymCOmbat --- SURPRISE ATTACK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			if !IsWeaponDrawn
			
				if storqst.NymCombat ;MCM OPION FOR THIS - Surprise Hit! 
					;PLAYER PUSHED AWAY - checked
					if !cfgqst.Ragdolling 
						if D100(75) 
						
						storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, 2.0, "playscr OnHit 439")
						
						;cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 2.0)
						;DebugTrace("IsWeaponDrawn FALSE - Surprised (OnHit) PushActorAway 439")		;#PushHit on Surprise 
						endif 
					endif 
				stripprob = 95
				endif 
			endif 	
			
			;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

			if !NakedHit
			Debug.Trace("NAKED DEFEAT: [storqst.IsBlockedAttack:"+storqst.IsBlockedAttack+"] stripprob Final: "+stripprob)	
			endif 

	;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	;>>> STRIP ARMOR >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

			;DICE ROLL to STRIP
			if ItemFound && !NakedHit
				if D100(stripprob)  
			
					ItemStripped = true
						
					if cfgqst.CheckDurationSpell("Magicka")	;if magicka effect is found, we skip the stripping				
							
						if PotionDurationMagickaStrenght == 0
						PotionDurationMagickaStrenght = 50
						endif
						
						if D100(PotionDurationMagickaStrenght)	
						ItemStripped = false
						ScreenMessage("Your quick reflexes save you from a stripping blow")
						cfgqst.RemoveDurationSpell("Magicka")
						;SendModEvent("Moan")
						else
						ScreenMessage("Your quick reflexes could not save you from the stripping blow")
						cfgqst.RemoveDurationSpell("Magicka")
						endif
					endif
							
					if ItemStripped
					NymTrace("ItemStripped - Item gets stripped")
						cfgqst.PlayCombatStrippingSound()
					
						if cfgqst.StripOptions == 0			;unequip
						ScreenMessage(a.GetName()+"has been damaged and unequipped.") 		;
						cfgqst.PlayerRef.unequipItem(a, 1, true)								;NYMRA unequip not remove
						SendModEvent("Moan")
						
						elseif cfgqst.StripOptions == 1		;drop
						ScreenMessage(a.GetName()+"has been damaged and dropped.")
					
						cfgqst.PlayerRef.DropObject(a, 1)
						SendModEvent("Moan")
						
						elseif cfgqst.StripOptions == 2		;destroy
						ScreenMessage(a.GetName()+"has been destroyed.")
						cfgqst.PlayerRef.RemoveItem(a, 1)
						SendModEvent("Moan")
						
						if Nym() 
						cfgqst.FollowerStripCombat()
						endif 

						endif		
					endif	
				endif
			endif
		
			ItemFound = false
			
			NymTrace("ItemStripped: "+ItemStripped)
			NymTrace("NakedHit: "+NakedHit)

			if ItemStripped 
			NakedHit = false 
			endif 

	;>>>>>>>>>>>>>> CRITICAL DEFEAT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #critical
		
			;BEWARE: Critical Defeat happens on its own accord based on the MCM value and some additions from the type of the attack

			IsCriticalDefeat = false
		
			;Critical Defeat Chance after something was stripped
			if cfgqst.CriticalDefeat > 0 ;<----- make sure DefeatBreakArmor is enabled, otherwise Naked Chance can still lead to defeat on its own	
						
					addCritChance = cfgqst.CriticalDefeat
					NymTrace("addCritChance: "+addCritChance)
					;::::::::::::::: DEFEAT on STRIPPING HIT ::::::::::::::: ;
					if ItemStripped 
					NymTrace("ItemStripped")
						ItemStripped = false
						
						;DEFEAT on STRIP defeatchance x2
					;	if IsDefeatingOnStrip
					;	addCritChance = addCritChance + cfgqst.CriticalDefeat
					;	endif
						
						;---- DEFEAT on CUM ----;
						if Defeat_Cum_MOD > 0 && cfgqst.IsPlayerCumsoaked()	
						addCritChance = addCritChance + Defeat_Cum_MOD
						endif

						Debug.trace("NAKED DEFEAT playeraliasquest: #HIT ItemStrip DefeatChance: "+addCritChance)	
																
						if Defeat_EASY	 	
						addCritChance = 90
						endif 	
						
						if storqst.NymCombat && !IsWeaponDrawn 
						addCritChance = addCritChance+75
						NymTrace("Surprise hit, 75% DefeatChance added")
						endif 	
					
						;HEALTH PROTECTS 
						if Nym() && HealthProtects() && D100(90)
						addCritChance = 0.0
						endif 
						;:::::::::::::::::::: COMBAT STRIP DEFEAT ROLL ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
						if D100(addCritChance)		;#CriticalDefeat  Chance
						
							if Nym()
							TempScreenMessage = "A hard blow strips you and forces you down!! (addCritChance: "+addCritChance+")"
							else
							TempScreenMessage = "A hard blow strips you and forces you down!"
							endif
							
						TempInfoMessage = "Critical Defeat started (on strip - chance: "+addCritChance+"%"
						IsCriticalDefeat = true
						endif	
							
					;::::::::::::::: DEFEAT on NAKED HIT ::::::::::::::: ;
					elseif NakedHit && (cfgqst.NakedChance > 0)

						addCritChance = cfgqst.NakedChance
						

						;DEFEAT on NAKED extra NakedChance
						
						;---- DEFEAT on CUM ----;
						if Defeat_Cum_MOD > 0 && cfgqst.IsPlayerCumsoaked()	
						addCritChance = addCritChance + Defeat_Cum_MOD
						endif

						;---- DEFEAT on NAKED Extra ----;
						if Defeat_Naked_MOD > 0 && cfgqst.IsPlayerCumsoaked()	
						addCritChance = addCritChance + Defeat_Naked_MOD
						endif
										
						;---- SLIPPING on CUM ----;	
						if Defeat_Naked_MOD == 0 && Defeat_Cum_MOD == 0
							if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked() && !IsPowerAttack
							NymTrace("Slippery")
							addCritChance = addCritChance*0.5
							endif 
						endif 

						NymTrace("HitCount: "+HitCount)
						addCritChance = addCritChance + HitCount
					
						if IsPowerAttack
						NymTrace("IsPowerAttack")
						addCritChance = addCritChance + addCritChance
						IsPowerAttack = false

						; >>>>>>>>>>>>> NymCombat ---- PUSH / POWER ATTACK NAKED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
						
							if storqst.NymCombat 
								if !cfgqst.Ragdolling && (IsPowerAttack || (PushAttack_MOD > 0)) 
								
								
									;PLAYER PUSHED AWAY - checked
									float PushChance1
									float PushForce1 = 1.0
												
									if PushAttack_MOD > 0.0
									PushChance1 = PushAttack_MOD + addCritChance
									PushForce1 = Utility.RandomFloat(2.0, 4.0)
									endif 
									
									if IsPowerAttack && storqst.IsBlockedAttack
									PushChance1 = PushChance1*0.3
									endif 

									if D100(PushChance1) 
									
									storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, PushForce1, "playscr OnHit 586")
									
									;cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, PushForce1)
									;DebugTrace("Power/PushAttack (OnHit) PushActorAway 412")		;#PushHit on Strip 
									endif 
								endif 
							endif 	
						endif 
						;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
						
						NymTrace("#HIT NakedHit DefeatChance FINAL: "+addCritChance)
							
						if Defeat_EASY	 	
						addCritChance = 90
						endif 	

						if storqst.NymCombat && !IsWeaponDrawn 
						addCritChance = addCritChance+75
						NymTrace("Surprise hit, 75% DefeatChance added")
						endif 	

						;HEALTH PROTECTS 
						if Nym() && HealthProtects() && D100(90)
						addCritChance = 0.0
						endif 

						;:::::::::::::::::::: NAKED HIT DEFEAT ROLL ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
						if D100(addCritChance)	
						NymTrace("#HIT NakedHit DefeatChance IsCriticalDefeat: "+addCritChance)
						IsCriticalDefeat = true	
						
							if Nym()
							TempScreenMessage = "A hard blow on naked skin forces you down! (addCritChance: "+addCritChance+")"
							
						;	elseif IsDefeatingAutomatically
						;	IsDefeatingAutomatically = false
						;	TempScreenMessage = "A poisonous blow forces you down and your followers surrender!"
						;	ForceFollowersDown = true
							
							else
							TempScreenMessage = "A hard blow on naked skin forces you down!"
							endif

						TempInfoMessage = "Critical Defeat started (naked hit chance: "+addCritChance+"%"	
						endif
					;	storqst.IsBlockedAttack = false
					endif 
	
	
			endif 

		endif
			
		storqst.IsBlockedAttack = false
		
		;----- NAKED POTIONS --------------------------------------
		if IsCriticalDefeat && cfgqst.CheckDurationSpell("Health")		;can intervene and prevent defeat ONCE
			
			if PotionDurationHealthStrenght == 0
			PotionDurationHealthStrenght = 50
			endif
			
			if D100(PotionDurationHealthStrenght)
			cfgqst.RemoveDurationSpell("Health")
			TempScreenMessage = "Your healing potion saves you!"			
			TempInfoMessage = "Health potion effect removed"
			IsCriticalDefeat = false
			
			else
				
			TempScreenMessage = "Your healing potion was not strong enough to save you!"	
			TempInfoMessage = "Health potion effect removed"
			endif
			
		endif
		;--------------------------------------------------------	
		
		if TempScreenMessage != "none"
		;INITIAL MESSAGE
		InitialMessagePlayed(TempScreenMessage)
		ScreenMessage(TempScreenMessage)
		TempScreenMessage = "none"
		endif
		
		if TempInfoMessage != "none"
		InfoMessage(TempInfoMessage)
		TempInfoMessage = "none"
		endif
		
		addCritChance = 0.0
		
		NymTrace("OnHIT DEBUG: IsCriticalDefeat = "+IsCriticalDefeat+" IsBleedoutDefeat = "+IsBleedoutDefeat)
		
		if IsCriticalDefeat && !IsBleedoutDefeat
		
			if !SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)
			SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, true)
			endif 
		
		Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from CriticalDefeat)")
		cfgqst.DefeatStatePlayer = "Down"
		cfgqst.PlayerSheatheWeapon()
		PlayerDown("Combat: Critical Hit")
		endif
	endif

	StripRunning = false
	
	NymTrace("HitCount was "+HitCount+" now set ti 0.0 (Hit and Strip Finished!")
	HitCount = 0.0
	
EndFunction	


;COMBAT STRIP OLD VERSION SAVE (BEFORE 6.3 - UPDATE)
	
;/
Function CombatStrip()		;#wipe	#strip #CombatStrip()

	;>>>>>>>>>>>>>> COMBAT STRIPPING >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	Debug.Trace("NAKED DEFEAT playeraliasquest: #CombatStrip()")	
	
	StripRunning = true
	
	Float prob
	Float stripprob

	Form a ;= None
;	Int i = SlotMasks.Length	;no idea what the slot elements are. elaborate/research!
	
	Bool NakedHit = false
	Bool ItemFound = false
	Bool ItemStripped = false
	Bool Werewolf = false
	Bool PiercingHit = false
	Bool IsClothing
	Bool IsLightArmor
	Bool IsHeavyArmor
	
	Bool HitHead = false
	Bool HitArms = false
	Bool HitLegs = false
	Bool HitBody = false
;	Bool SecondaryHit = false
	
	;not working
	;check if Werewolf Form	
	
	if WerewolfQuest.IsRunning()	
	Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): Player is Werewolf")	
	Werewolf = true	;nothing gets stripped but later we need to know 
	endif	
			
	if IsBleedingOut
	Debug.Trace("NAKED DEFEAT playeraliasquest: #NOTE we are here. Seems to be good this way...")

		if !IsPoisonDefeat && !cfgqst.NoEssentialPlayer && (cfgqst.Enemy[0] != "none")
		Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from strip (backup))")
		IsBleedoutDefeat = true
		PlayerDown("Bleedout03") ;from COMBAT STRIP (Critical Defeat) ;WHATS THIS?
			if Nym()
			Debug.Messagebox("NOTE Bleedout03 playeraliasquest happened")
			endif 
		endif
		
	else

		;>>> GET SLOT (a) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		;we are only hitting primary body parts anymore
		Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): GetSlot")
		int i = Utility.RandomInt(1,10)
			
		;MAIN SLOTS:
		;31 - Hair / HELMET or 42 - Circlet
		;32 - BODY
		;33 - HANDS	
		;37 - FEET	
			

		;GET THE SLOT AND THE ITEM THAT IS EQUIPED THERE	
		if (i == 1) || (i == 2) 
		;	a = cfgqst.PlayerRef.GetWornForm(0x00000001)	;30 - HEAD						
			a = cfgqst.PlayerRef.GetWornForm(0x00000002)	;31 - Hair / HELMET			
			if !a
			a = cfgqst.PlayerRef.GetWornForm(0x00001000)	;42 - Circlet
			endif
		HitHead = true				
		elseif (i == 3) || (i == 4) || (i == 5) || (i == 6) ;highest chance of beeing hit
		;if Body is hit and we wear an item on Slot 52 (Bikini Bottom) there is a chance we get hit there instead.
		a = cfgqst.PlayerRef.GetWornForm(0x00000004)	;32 - BODY
		if !a && D100(50) ;when Body armor is destroyed there is 50% chance we check for Bottom armor
		a = cfgqst.PlayerRef.GetWornForm(0x00400000)	;52 - BOTTOM
		endif
		HitBody = true
		elseif (i == 7) || (i == 8) 
		a = cfgqst.PlayerRef.GetWornForm(0x00000008)	;33 - HANDS
		HitArms = true
		elseif (i == 10) || (i == 9)
		a = cfgqst.PlayerRef.GetWornForm(0x00000080)	;37 - FEET	
		HitLegs = true
		endif
			
		if HitHead	
		NymTrace("HIT: HitHead")
		elseif HitBody
		NymTrace("HIT: HitBody")
		elseif HitArms	
		NymTrace("HIT: HitArms")
		elseif HitLegs	
		NymTrace("HIT: HitLegs")
		endif 
	;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;>>> GET TYPE and STRIP CHANCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	;GET ARMOR KEYWORD and CUMSOAKED and STRIPATTACK (maybe we need to add SexlabNoStrip Later again)
	;if a && !a.HasKeyword(SexLabNoStrip)
	;Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): Stripped Item: "+a.GetName())	
		
	Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): GetType")
	;new:	
	;LIGHT ARMOR ----------------------------------------------------------------
		;if a.HasKeyword(ArmorLight)
		if a && cfgqst.IsItem("Armor Type Light", a)
			
			stripprob = cfgqst.DefeatBreakLightProb
			ItemFound = true
			IsLightArmor = true
			
			;LIGHT ARMOR - Some Extra Hits can x2
			if HitCount > 3			
			stripprob = stripprob +	cfgqst.DefeatBreakLightProb	
			endif
			
			;LIGHT ARMOR - Cumsoaked, StripChance x2
			if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked()
			stripprob = stripprob +	cfgqst.DefeatBreakLightProb		
			endif
			
			;LIGHT ARMOR - StripAttack: StripChance x3
			if IsStripAttackLight 
			stripprob =	stripprob +	cfgqst.DefeatBreakLightProb	+ cfgqst.DefeatBreakLightProb
			endif
			
			;LIGHT ARMOR - StripAttack LEGS: StripChance x4
			if IsStripAttackLegs && HitLegs
			stripprob =	stripprob +	cfgqst.DefeatBreakLightProb	+ cfgqst.DefeatBreakLightProb + cfgqst.DefeatBreakLightProb
			endif
			
			if DegradingHit > 0	
			stripprob = stripprob + stripprob
			DegradingHit = 0
			endif 
		
		;HEAVY ARMOR ---------------------------------------------------------------	
		;elseif a.HasKeyword(ArmorHeavy)
		elseif a && cfgqst.IsItem("Armor Type Heavy", a)
			
			stripprob = cfgqst.DefeatBreakHeavyProb
			ItemFound = true	
			IsHeavyArmor = true
		
			;HEAVY ARMOR - Massive Extra Hits can x2
			if HitCount > 6		
			stripprob = stripprob +	cfgqst.DefeatBreakHeavyProb	
			endif 


			;HEAVY ARMOR - Cumsoaked, StripChance x2
			if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked()
			stripprob = stripprob +	cfgqst.DefeatBreakHeavyProb			
			endif
			
			;HEAVY ARMOR - StripAttack: StripChance x4
			if IsStripAttackHeavy 
			stripprob =	stripprob +	cfgqst.DefeatBreakHeavyProb	+ cfgqst.DefeatBreakHeavyProb + cfgqst.DefeatBreakHeavyProb	
			endif
			
			;HEAVY ARMOR - StripAttack LEGS: StripChance x3
			if IsStripAttackLegs && HitLegs
			stripprob =	stripprob +	cfgqst.DefeatBreakHeavyProb	+ cfgqst.DefeatBreakHeavyProb
			endif
			
			if DegradingHit > 0	
			stripprob = stripprob + stripprob
			DegradingHit = 0
			endif 
		
		;CLOTHING ----------------------------------------------------------------
		;elseif a && a.HasKeyword(ArmorClothing)
		elseif a && cfgqst.IsItem("Armor Type Clothing", a)	
			;CLOTHING - Hitcount is added 1:1 
			stripprob = cfgqst.DefeatBreakClothingProb + HitCount
			ItemFound = true
			IsClothing = true	
			
			;CLOTHING - StripAttack LEGS: Strip 100%
			if IsStripAttackLegs && HitLegs
			stripprob =	100
			endif
			
			if DegradingHit > 0
			stripprob = 100
			DegradingHit = 0
			endif 
		;JEWELLEREY (only Head) ----------------------------------------------------------------
		elseif a && HitHead && cfgqst.IsItem("Jewelery", a)	
			;CLOTHING - Hitcount is added 1:1 
			stripprob = cfgqst.DefeatBreakClothingProb + HitCount
			ItemFound = true
			IsClothing = true

			if DegradingHit > 0
			stripprob = 100
			DegradingHit = 0
			endif 			
				
		;NAKED ----------------------------------------------------------------		
		else	
		ItemFound = false
		Debug.Trace("NAKED DEFEAT playeraliasquest: CombatStrip(): Naked Hit")
		NakedHit = true
		endif
		;-----------------------------------------------------------------------
		
		;happens on Strip if Item is worn or Not 
		if (IsPowerAttack || (IsPushAttack > 0)) && !cfgqst.Ragdolling
			
			if Nym()
				;PLAYER PUSHED AWAY - checked
				float PushChance1
				float PushForce1 = 1.0
			
				if storqst.IsBlockedAttack
				PushChance1 = 5 + stripprob			
				else
				PushChance1 = 15 + stripprob
				endif 
				
				if IsPushAttack > 0.0
				IsPushAttack = 0.0
				PushChance1 = IsPushAttack + stripprob
				PushForce1 = Utility.RandomFloat(1.0, 4.0)
				endif 

				if D100(PushChance1) && !storqst.PreventRagdoll
				cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, PushForce1)
				DebugTrace("IsPowerAttack (OnHit) PushActorAway 412")		;#PushHit on Strip 
				endif 
			endif 
		endif 
		
		if storqst.IsBlockedAttack ;block reduces strip chance significantly (BUT NOT ZERO!!!) 
		stripprob = stripprob*0.1
		;storqst.IsBlockedAttack = false
		;need to reduce Naked Hit Chance! 
		endif
		
		if !IsWeaponDrawn
		
			if Nym()
				;PLAYER PUSHED AWAY - checked
				if !cfgqst.Ragdolling
					if D100(75) && !storqst.PreventRagdoll
					cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 2.0)
					DebugTrace("IsWeaponDrawn FALSE - Surprised (OnHit) PushActorAway 439")		;#PushHit on Surprise 
					endif 
				endif 

			stripprob = 95
			endif 
		endif 	

		
		;stripprob = stripprob + HitCount
	
		if !NakedHit
		Debug.Trace("NAKED DEFEAT: [storqst.IsBlockedAttack:"+storqst.IsBlockedAttack+"] stripprob Final: "+stripprob)	
		;NymMessage("Blocked:"+storqst.IsBlockedAttack+"] [stripprob Final: "+stripprob+"]")	
		endif 
		
	;endif	
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<		

;>>> STRIP ARMOR >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	;DICE ROLL to STRIP
	if !NakedHit
		if D100(stripprob)	
			
		;	SendModEvent("Moan")
			ItemStripped = true
				
			if cfgqst.CheckDurationSpell("Magicka")	;if magicka effect is found, we skip the stripping				
					
				if PotionDurationMagickaStrenght == 0
				PotionDurationMagickaStrenght = 50
				endif
				
				if D100(PotionDurationMagickaStrenght)	
				ItemStripped = false
				ScreenMessage("Your quick reflexes save you from a stripping blow")
				cfgqst.RemoveDurationSpell("Magicka")
				;SendModEvent("Moan")
				else
				ScreenMessage("Your quick reflexes could not save you from the stripping blow")
				cfgqst.RemoveDurationSpell("Magicka")
				endif
			endif
			
			if ItemStripped
			
				cfgqst.PlayCombatStrippingSound()
			
				if cfgqst.StripOptions == 0			;unequip
				ScreenMessage(a.GetName()+"has been damaged and unequipped.") 		;
				cfgqst.PlayerRef.unequipItem(a, 1, true)								;NYMRA unequip not remove
				SendModEvent("Moan")
				
				elseif cfgqst.StripOptions == 1		;drop
				ScreenMessage(a.GetName()+"has been damaged and dropped.")
				;Debug.Notification(a.GetName()+"<font color='#ff0000'> has been damaged and dropped.</font>") 		;message
				cfgqst.PlayerRef.DropObject(a, 1)
				SendModEvent("Moan")
				
				elseif cfgqst.StripOptions == 2		;destroy
				ScreenMessage(a.GetName()+"has been destroyed.")
				;Debug.Notification(a.GetName()+"<font color='#ff0000'> has been destroyed!.</font>") 		;message
				cfgqst.PlayerRef.RemoveItem(a, 1)
				SendModEvent("Moan")
				
				if Nym() 
				cfgqst.FollowerStripCombat()
				endif 

				endif		
			endif	
		;HOW TO GET IF PLAYER IS IN WEREWOLF FORM? playerwerewolfquest.GetStage???? --> yes, needs implementation
		endif
	endif
	
	ItemFound = false
			
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	
	
;>>>>>>>>>>>>>> CRITICAL DEFEAT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #critical
	
	;BEWARE: Critical Defeat happens on its own accord based on the MCM value and some additions from the type of the attack
	;it has nothing to do with the stripping chance.
	
	;float addCritChance = 0.0
					
	string TempInfoMessage = "none"		
	string TempScreenMessage = "none"
	;Debug.trace("NAKED DEFEAT playeraliasquest: addCritChance 01: "+addCritChance)
	
	;addCritChance = addCritChance + HitCount
	
	;Debug.trace("NAKED DEFEAT playeraliasquest: addCritChance 02: "+addCritChance)
	
	IsCriticalDefeat = false
	
	;Critical Defeat Chance after something was stripped
	if cfgqst.CriticalDefeat > 0 ;<----- make sure Critical Defeat is enabled, otherwaste Naked Chance can still lead to defeat on its own	
			
		addCritChance = cfgqst.CriticalDefeat
		
		;DEFEAT on STRIPPING HIT
		if ItemStripped 
			ItemStripped = false
			;DEFEAT on STRIP defeatchance x2
			if IsDefeatingOnStrip
			addCritChance = addCritChance + cfgqst.CriticalDefeat
			endif
			
			;DEFEAT on STRIP defeatchance x2
			if IsDefeatingOnCum && cfgqst.IsPlayerCumsoaked()	
			addCritChance = addCritChance + cfgqst.CriticalDefeat
			endif
			
			;SLIP on CUM defeatchance REDUCED
			if IsSlippingOnCum && cfgqst.IsPlayerCumsoaked()	
			addCritChance = addCritChance - cfgqst.CriticalDefeat
			endif

			Debug.trace("NAKED DEFEAT playeraliasquest: #HIT ItemStrip DefeatChance: "+addCritChance)	
			if D100(addCritChance)		;#CriticalDefeat  Chance
			
				if Nym()
				TempScreenMessage = "A hard blow strips you and forces you down!! (addCritChance: "+addCritChance+")"
				else
				TempScreenMessage = "A hard blow strips you and forces you down!"
				endif
				
			TempInfoMessage = "Critical Defeat started (on strip - chance: "+addCritChance+"%"
			IsCriticalDefeat = true
			endif	
				
		;DEFEAT on NAKED HIT
		elseif NakedHit && (cfgqst.NakedChance > 0)
		
			;SendModEvent("Moan")	;CombatMoan OLD
			;NymTrace("NakedHit addCritChance BASE: "+addCritChance)
				
			addCritChance = cfgqst.NakedChance
			
			;NymTrace("#HIT NakedHit DefeatChance FINAL: "+addCritChance)
			
			;DEFEAT on LEG hit defeatchance x2
			if HitLegs && IsDefeatingOnLegs
			addCritChance = addCritChance + cfgqst.NakedChance
			endif
			
			;DEFEAT on NAKED extra NakedChance
			
			if IsDefeatingOnNaked
			NymTrace("IsDefeatingOnNaked")
			addCritChance =  addCritChance + cfgqst.NakedChance
			endif

			;EXTRA CHANCE on NAKED extra NakedChance
			if cfgqst.NakedChance > 0
			addCritChance = addCritChance + cfgqst.NakedChance
			endif
			
			if cfgqst.NYMRAsWorld && IsDefeatingEasily 
			NymTrace("IsDefeatingEasily")
			addCritChance = addCritChance + 25			
			;DraugrRace "Draugr" [RACE:00000D53]
			;SkeletonRace "Skeleton" [RACE:000B7998]  
			endif 
		
			;SLIPPONG on NAKED REDUCED by 50% 
			if IsSlippingOnNaked
			NymTrace("IsSlippingOnNaked")
			addCritChance =  addCritChance*0.5
			endif 
			
			;SLIPPONG on Cumsoaked REDUCED by 50% 
			if cfgqst.Slippery && cfgqst.IsPlayerCumsoaked() && !IsPowerAttack
			NymTrace("Slippery")
			addCritChance = addCritChance*0.5
			endif 


			NymTrace("HitCount: "+HitCount)
			addCritChance = addCritChance + HitCount + HitCount
			
			if DegradingHit > 0
			NymTrace("DegradingHit")
			DegradingHit = 0
			addCritChance = addCritChance + addCritChance
			endif 

			if IsPowerAttack
			NymTrace("IsPowerAttack")
			addCritChance = addCritChance + addCritChance
			IsPowerAttack = false
			
				if Nym() && !cfgqst.Ragdolling
				;PLAYER PUSHED AWAY - checked
				float PushChance
				
					if storqst.IsBlockedAttack
					PushChance = 10 + addCritChance
					else
					PushChance = 20 + addCritChance
					endif 
				
					if D100(PushChance) && !storqst.PreventRagdoll
					cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 2.0)
					NymTrace("IsPowerAttack (Naked) PushActorAway 623")
					addCritChance = 0
					endif 
				endif 
		;	storqst.IsBlockedAttack = false
			endif 
			
			if IsDefeatingAutomatically
			addCritChance = 100
			endif 

			if storqst.IsBlockedAttack ;block reduces strip chance significantly (BUT NOT ZERO!!!) ---> need timed block detection
				NymTrace("storqst.IsBlockedAttack")
				
				if IsDefeatingAutomatically
				addCritChance = 5
				else 
				addCritChance = addCritChance*0.5
				endif 
				
				storqst.IsBlockedAttack = false
				
			endif	
			
			if !IsWeaponDrawn
			addCritChance = addCritChance+75
			NymTrace("Surprise hit, 75% DefeatChance added")
			endif 
			
		;		Debug.trace("NAKED DEFEAT playeraliasquest: #HIT NakedHit DefeatChance: "+addCritChance)
			NymTrace("#HIT NakedHit DefeatChance FINAL: "+addCritChance)
			
			if D100(addCritChance)	
			IsCriticalDefeat = true	
			
				if Nym()
				TempScreenMessage = "A hard blow on naked skin forces you down! (addCritChance: "+addCritChance+")"
				
				elseif IsDefeatingAutomatically
				IsDefeatingAutomatically = false
				TempScreenMessage = "A poisonous blow forces you down and your followers surrender!"
				ForceFollowersDown = true
				
				else
				TempScreenMessage = "A hard blow on naked skin forces you down!"
				endif

			TempInfoMessage = "Critical Defeat started (naked hit chance: "+addCritChance+"%"	
			endif
		
		;Critical Defeat Chance for werewolf (50% harder to down even when naked)	
		elseif Werewolf	
		
			if D100(cfgqst.CriticalDefeat*0.5)
			IsCriticalDefeat = true
		
			TempScreenMessage = "Even werewolf skin is not impenetrable..."
			TempInfoMessage = "Critical Defeat started (Werewolf)"
		
			endif	
			
		;CURRENTLY NOT USED	- maybe add again for bows
		elseif PiercingHit		
		
			if D100(cfgqst.CriticalDefeat + addCritChance)	
			IsCriticalDefeat = true
		
			TempScreenMessage = "The attack pierced your armor and forces you down."
			TempInfoMessage = "Critical Defeat started (pierced armor)"
			
			endif
		
		endif
		
	endif
	
	storqst.IsBlockedAttack = false
	
	;----- NAKED POTIONS --------------------------------------
	if IsCriticalDefeat && cfgqst.CheckDurationSpell("Health")		;can intervene and prevent defeat ONCE
		
		if PotionDurationHealthStrenght == 0
		PotionDurationHealthStrenght = 50
		endif
		
		if D100(PotionDurationHealthStrenght)
		cfgqst.RemoveDurationSpell("Health")
		TempScreenMessage = "Your healing potion saves you!"			
		TempInfoMessage = "Health potion effect removed"
		IsCriticalDefeat = false
		;while cfgqst.CheckDurationSpell("Health")
		
		;cfgqst.RepairDurationSpell("Health")
		
		;if cfgqst.CheckDurationSpell("Health")
		;ScreenMessage("#ERROR: sDurationSpell still applied")
		;endif 
		
		;Utility.Wait(1.0)
		;endwhile
		
		else
			
		TempScreenMessage = "Your healing potion was not strong enough to save you!"	
		TempInfoMessage = "Health potion effect removed"
		endif
		
	endif
	;--------------------------------------------------------	
	
	if TempScreenMessage != "none"
	;INITIAL MESSAGE
	InitialMessagePlayed(TempScreenMessage)
	ScreenMessage(TempScreenMessage)
	TempScreenMessage = "none"
	endif
	
	if TempInfoMessage != "none"
	InfoMessage(TempInfoMessage)
	TempInfoMessage = "none"
	endif
	
	addCritChance = 0.0
	
	NymTrace("OnHIT DEBUG: IsCriticalDefeat = "+IsCriticalDefeat+" IsBleedoutDefeat = "+IsBleedoutDefeat)
	
	if IsCriticalDefeat && !IsBleedoutDefeat
	Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from CriticalDefeat)")
	cfgqst.DefeatStatePlayer = "Down"
	cfgqst.PlayerSheatheWeapon()
	PlayerDown("Combat: Critical Hit")
	endif
	
endif

	 IsPowerAttack = false
	 IsDefeatingOnStrip = false
	 IsSlippingOnNaked = false
	 IsDefeatingOnNaked = false
	 IsSlippingOnCum = false
	 IsDefeatingOnCum = false
	 IsStripAttackLight = false
	 IsStripAttackLegs = false		
	 IsDefeatingOnLegs = false
	 IsDefeatingEasily = false 
	 IsDefeatingAutomatically = false
	 IsPushAttack = 0.0
		
;	Utility.Wait(2.0)	;this is a cooldown for this event to happen
	StripRunning = false
	
	NymTrace("HitCount was "+HitCount+" now set ti 0.0 (Hit and Strip Finished!")
	HitCount = 0.0
	
EndFunction	

/;


;-----------------------------------------------------------------------------------------------------------------------------------------------


;HEALTH POTIONS ------------------------------------------------------------------------------------------------------
Bool Function CheckLightHealthPotions(String PotionName)

	;Fortify
	if (PotionName == "Potion of Health") || (PotionName == "Draught of Health") ;|| (PotionName == "Solution of Health")
	return true
	;Regenerate
	elseif (PotionName == "Potion of Regeneration") || (PotionName == "Draught of Regeneration"); || (PotionName == "Solution of Regeneration")
	return true
	;Restore
	elseif (PotionName == "Potion of Minor Healing") || (PotionName == "Potion of Healing") || (PotionName == "Potion of Plentiful Healing")
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckMediumHealthPotions(String PotionName)

	;Fortify Medium
	if (PotionName == "Solution of Health") || (PotionName == "Philter of Health") 
	return true
	;Regenerate Medium
	elseif (PotionName == "Solution of Regeneration") || (PotionName == "Philter of Regeneration") 
	return true
	;Restore Medium
	elseif (PotionName == "Potion of Vigorous Healing") || (PotionName == "Potion of Extreme Healing") 
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckBestHealthPotions(String PotionName)

	;Fortify Best
	if (PotionName == "Elixir of Health") 
	return true
	;Regenerate Best
	elseif (PotionName == "Elixir of Regeneration") 
	return true
	;Restore Best
	elseif (PotionName == "Potion of Ultimate Healing")  
	return true
	else
	return false
	endif
	
EndFunction

;STAMINA POTIONS ------------------------------------------------------------------------------------------------------

Bool Function CheckLightStaminaPotions(String PotionName)

	;Fortify
	if (PotionName == "Potion of Enhanced Stamina") || (PotionName == "Draught of Enhanced Stamina") ;|| (PotionName == "Solution of Enhanced Stamina")
	return true
	;Regenerate
	elseif (PotionName == "Potion of Vigor") || (PotionName == "Draught of Vigor"); || (PotionName == "Solution of Vigor")
	return true
	;Restore
	elseif (PotionName == "Potion of Minor Stamina") || (PotionName == "Potion of Stamina") || (PotionName == "Potion of Plentiful Stamina")
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckMediumStaminaPotions(String PotionName)

	;Fortify Medium
	if (PotionName == "Solution of Enhanced Stamina") || (PotionName == "Philter of Enhanced Stamina") 
	return true
	;Regenerate Medium
	elseif (PotionName == "Solution of Vigor") || (PotionName == "Philter of Vigor") 
	return true
	;Restore Medium
	elseif (PotionName == "Potion of Vigorous Stamina") || (PotionName == "Potion of Extreme Stamina") 
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckBestStaminaPotions(String PotionName)

	;Fortify Best
	if (PotionName == "Elixir of Enhanced Stamina") 
	return true
	;Regenerate Best
	elseif (PotionName == "Elixir of Vigor") 
	return true
	;Restore Best
	elseif (PotionName == "Potion of Ultimate Stamina")  
	return true
	else
	return false
	endif
	
EndFunction


;MAGICKA POTIONS ------------------------------------------------------------------------------------------------------

Bool Function CheckLightMagickaPotions(String PotionName)

	;Fortify
	if (PotionName == "Potion of Extra Magicka") || (PotionName == "Draught of Extra Magicka") ;|| (PotionName == "Solution of Extra Magicka")
	return true
	;Regenerate
	elseif (PotionName == "Potion of Lasting Potency") || (PotionName == "Draught of Lasting Potency") ;|| (PotionName == "Solution of Lasting Potency")
	return true
	;Restore
	elseif (PotionName == "Potion of Minor Magicka") || (PotionName == "Potion of Magicka") || (PotionName == "Potion of Plentiful Magicka")
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckMediumMagickaPotions(String PotionName)

	;Fortify Medium
	if (PotionName == "Solution of Extra Magicka") || (PotionName == "Philter of Extra Magicka") 
	return true
	;Regenerate Medium
	elseif (PotionName == "Solution of Lasting Potency") || (PotionName == "Philter of Lasting Potency") 
	return true
	;Restore Medium
	elseif (PotionName == "Potion of Vigorous Magicka") || (PotionName == "Potion of Extreme Magicka") 
	return true
	else
	return false
	endif
	
EndFunction

Bool Function CheckBestMagickaPotions(String PotionName)

	;Fortify Best
	if (PotionName == "Elixir of Extra Magicka") 
	return true
	;Regenerate Best
	elseif (PotionName == "Elixir of Lasting Potency") 
	return true
	;Restore Best
	elseif (PotionName == "Potion of Ultimate Magicka")  
	return true
	else
	return false
	endif
	
EndFunction
	
string lastobject
string currentobject

int PotionDurationHealthStrenght = 0
int PotionDurationMagickaStrenght = 0

keyword KWD_DeviousGag


Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference) 			;	##equip## #object
	
	Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped(Object: "+akBaseObject.GetName()+")")
	
	if !cfgqst.IsCheat	
		
		string OURakBaseObject = akBaseObject.GetName()
		
		if akBaseObject && (OURakBaseObject != "")
		Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped(Object: akBaseObject FOUND")
			
			if Nym()
			currentobject = OURakBaseObject

				if currentobject != lastobject
				lastobject = currentobject
				elseif currentobject == lastobject
				Debug.trace("NAKED DEFEAT playeraliasquest: DOUBLESTART")
				endif

			endif

			if Nym() ;TENTACLE TEST
				if !KWD_DeviousGag
				KWD_DeviousGag = (Game.GetFormFromFile(0x03007EB8, "Devious Devices - Assets.esm")) As Keyword			;zad_DeviousGag
				endif
				
				if akBaseObject.HasKeyWord(KWD_DeviousGag)
				SendModEvent("Moan")
					Utility.Wait(1.0)		
							int EstrusTraptype = 1	
							int ECTrap = ModEvent.Create("ECStartAnimation"); Int 			Int does not have to be named "ECTrap" any name would do
							if (ECTrap)
							ModEvent.PushForm(ECTrap, cfgqst.PlayerRef)             	; Form			Pass the calling form to the event
							ModEvent.PushForm(ECTrap, cfgqst.PlayerRef) 				; Form	 		The animation target
							ModEvent.PushInt(ECTrap, EstrusTraptype)    	; Int			The animation required   -1 = Impregnation only with No Amimation ,  0 = Tentacles, 1 = Machines 2 = Slime 3 = Ooze
							ModEvent.PushBool(ECTrap, false)             	; Bool			Apply the linked EC effect (Ovipostion for Tentacles, Slime & Ooze, Exhaustion for Machine) 
							ModEvent.Pushint(ECTrap, 1000)               	; Int			Alarm radius in units (0 to disable) 
							ModEvent.PushBool(ECTrap, true)             	; Bool			Use EC (basic) crowd control on hostiles if the Player is trapped
							ModEvent.Send(ECtrap)	
							else
								;EC is not installed
							endIf
				endif
			endif
			;	Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped (akBaseObject): " +akBaseObject)
			;	Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped (akReference): " +akReference)
			;cfgqst.ObjectEquipped(Form akBaseObject) GetName

			;	if !cfgqst.IsArrestedPOP()
			;	ScreenMessage("We are not arrested")
			;	else
			;	ScreenMessage("FUCKED")
			;	endif

			;	Form a

			;	if akBaseObject
			;	ScreenMessage("WORKS")
			;	elseif akBaseObject
			;	ScreenMessage("NO WORKS")
			;	elseif akBaseObject as Form
			;	ScreenMessage("this works")
			;	else
			;	a = akBaseObject as Form
			;		if a
			;		ScreenMessage("no THIS works")
			;		endif
			;	endif
			
			if akBaseObject
			DebugTrace("akBaseObject TRUE")
			endif 
			DebugTrace("cfgqst.DefeatQuestRunning:"+cfgqst.DefeatQuestRunning)
			DebugTrace("cfgqst.CivilRapeRunning:"+cfgqst.CivilRapeRunning)
			DebugTrace("cfgqst.IsArrestedPOP():"+cfgqst.IsArrestedPOP()) 
			DebugTrace("cfgqst.dhlpSuspendStatus: "+cfgqst.dhlpSuspendStatus)
			if cfgqst.PlayerRef.IsInFaction(SexLabAnimatingFaction)
			DebugTrace("SexLabAnimatingFaction TRUE")
			endif 

			if akBaseObject && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning && !cfgqst.IsArrestedPOP() && !cfgqst.dhlpSuspendStatus && !cfgqst.PlayerRef.IsInFaction(SexLabAnimatingFaction)
			Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped(true)")
				
				;>>>>>>>>>>> NAKED POTIONS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#poison #potions>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

				if (cfgqst.PoisonDefeatChance > 0) && akBaseObject.HasKeyword(KWDVendorItemConsumables[0])
				Debug.trace("NAKED DEFEAT playeraliasquest: KWDVendorItemConsumables(true)")

					string PotionName = akBaseObject.GetName()
				
					;------ CHECK POTIONS ------------------------------------------------------------------------
					; --- HEALTH POTIONS --- ;
					if CheckLightHealthPotions(PotionName)
					;InfoMessage("Potion consumed: "+PotionName)
					cfgqst.ApplyDurationSpell("health", 1)
					PotionDurationHealthStrenght = 50
					elseif CheckMediumHealthPotions(PotionName)    
					cfgqst.ApplyDurationSpell("health", 2)
					PotionDurationHealthStrenght = 75
					;InfoMessage("Potion consumed: "+PotionName)
					elseif CheckBestHealthPotions(PotionName) 
					cfgqst.ApplyDurationSpell("health", 3)
					PotionDurationHealthStrenght = 95
					;InfoMessage("Potion consumed: "+PotionName)
					
					; --- STAMINA POTIONS --- ;		;ADDS MAGICKA EFFECT (sigh)
					elseif CheckLightStaminaPotions(PotionName) 
					cfgqst.ApplyDurationSpell("magicka", 1)
					PotionDurationMagickaStrenght = 50
					
					elseif CheckMediumStaminaPotions(PotionName)  
					cfgqst.ApplyDurationSpell("magicka", 2)
					PotionDurationMagickaStrenght = 75
				
					elseif CheckBestStaminaPotions(PotionName)  
					cfgqst.ApplyDurationSpell("magicka", 3)
					PotionDurationMagickaStrenght = 95
				
					; --- MAGICKA POTIONS --- ;		;ADDS JOKER EFFECT
					elseif CheckLightMagickaPotions(PotionName)
						if cfgqst.CheckDurationSpell("magicka")	;if magicka
						cfgqst.ApplyDurationSpell("health", 1)	;apply health			
						PotionDurationHealthStrenght = 50
						
						elseif cfgqst.CheckDurationSpell("health")	;if health
						cfgqst.ApplyDurationSpell("magicka", 1)		;apply magicka
						PotionDurationMagickaStrenght = 50
						endif
					elseif CheckMediumMagickaPotions(PotionName) 
						if cfgqst.CheckDurationSpell("magicka")	;if magicka
						cfgqst.ApplyDurationSpell("health", 2)	;apply health
						PotionDurationHealthStrenght = 75
						elseif cfgqst.CheckDurationSpell("health")	;if health
						cfgqst.ApplyDurationSpell("magicka", 2)		;apply magicka
						PotionDurationMagickaStrenght = 75
						endif				
					elseif CheckBestMagickaPotions(PotionName) 
						if cfgqst.CheckDurationSpell("magicka")	;if magicka
						cfgqst.ApplyDurationSpell("health", 3)	;apply health
						PotionDurationHealthStrenght = 95
						elseif cfgqst.CheckDurationSpell("health")	;if health
						cfgqst.ApplyDurationSpell("magicka", 3)		;apply magicka
						PotionDurationMagickaStrenght = 95
						endif
					endif	
					
					;-------------------------------------------------------------------------------------

					int PotionTest = 0
					
					if PotionTest && Nym()
							SendModEvent("Moan")
							ScreenMessage("Your potion was cursed and kinky magic force you to be naked")
							InfoMessage("Naked Curse is active for the duration of the potions effect.")
							cfgqst.NakedCurse(true)
						
							
					;CHECK FOR POISONED POTION / CURSED POTION
					elseif D100(cfgqst.PoisonDefeatChance) && !IsPoisonDefeat && !IsCriticalDefeat && cfgqst.PlayerRef.IsInCombat()
					
					
						if D100(1) && !cfgqst.PlayerRef.IsInCombat()	
						ScreenMessage("Your potion tasted very bad... and kills you slowly")
						SendModEvent("Moan")
						Utility.Wait(1.0)
						SendModEvent("Moan")
						
						Utility.Wait(3.0)
						SendModEvent("Moan")	
						Utility.Wait(3.0)
						cfgqst.FadeToBlack(True)
						SendModEvent("Moan")
						Utility.Wait(3.0)
						SendModEvent("Moan")	
						Utility.Wait(3.0)
						SendModEvent("Moan")			
						;cfgqst.FadeToBlack(False)
						;cfgqst.DefeatTypeScenario = "Afterlife"					;AfterLife Starts here
						;SendModevent("StartNakedAfterlife")
						calmqst.CreateModEvent("NakedDefeatTransition", "Afterlife")
						elseif D100(5) && !cfgqst.PlayerRef.IsInCombat()
						ScreenMessage("Your potion tasted odd... you lose your conciousness")			
						SendModEvent("Moan")
						Utility.Wait(1.0)
						SendModEvent("Moan")
						cfgqst.FadeToBlack(True)
						Utility.Wait(3.0)
						SendModEvent("Moan")			
						cfgqst.FadeToBlack(False)
						calmqst.CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
					
						elseif cfgqst.PlayerInCombat() && D100(50)		
						ScreenMessage("Your potion was tampered and you lose all strenght to resist")
						SendModEvent("Moan")
						;IsPoisonDefeat = true
						Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from Poison)")
						;add SlaveryEvent?
						cfgqst.DefeatStatePlayer = "Down"
						
						cfgqst.KeySurrender("Forced Surrender")
						
						
						;NAKED CURSE	#curse1
						else
						SendModEvent("Moan")
						ScreenMessage("Your potion was cursed and kinky magic forces you to be naked")
						InfoMessage( "Naked Curse is active for the duration of the healing potion effect.")
						cfgqst.NakedCurse(true)
						endif
						
						;new IDEAS
						;/
						Estrus Tentacle/Ooze
						Tentacle Solo
						Masturabtion with bottle solo
										
						
						/;
						
					endif	
					
				;>>>>>>>>>>> NAKED LOOT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#loot1
				elseif cfgqst.NymBeta && cfgqst.LoadGameCountdown > 0
				;InfoMessage("#ERROR - LoadGameCountdown > 0 ---> WAIT a bit")
				
				
				elseif cfgqst.NakedLoot && (cfgqst.LoadGameCountdown == 0) && !cfgqst.IsLootScriptRunning()
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - Evaluate LOOT")
					bool IsHome = false
					bool IsStore = false
					
					
					
					if CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypePlayerHouse) 
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - LocTypePlayerHouse(TRUE)")				
					IsHome = true
					elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeStore)		;add check for nearby smith
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - LocTypeStore(TRUE)")	
					IsStore = true
					

					elseif IsWorkbenchNearby()
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - Workbench: LocTypeStore(TRUE)")	
					IsStore = true
						if Nym()
						ScreenMessage("WorkBench Found")
						endif
					endif
					
					if cfgqst.IsCheat	;this should prevent the lootscript from intefering when we use cheatmode
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - IsLootCheatOn(TRUE)")
					IsHome = true
					endif
					
					If Nym() && cfgqst.PlayerRef.IsSneaking()
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - IsSneaking(TRUE)")
					IsHome = true	;for checkup of outfits. maybe add to debug wheelmenu?
					endif
					
					if IsHome 
					Debug.trace("NAKED DEFEAT playeraliasquest: OnObjectEquipped - IsHome(TRUE)")
					;do nothing, player can do with all his items as he pleases
					else

					;	if Nym()			;BETA 4 change 
							if akBaseObject		
							cfgqst.LootScript(akBaseObject, IsStore)
							endif 
					;	else
						
					;	cfgqst.LootScript(akBaseObject, IsStore)
					;	endif 				

					endif
				
				
					
				elseif cfgqst.IsLootScriptRunning()	;WHAT does this???
			;	ScreenMessage(" #ERROR: LOOT Script running, wait some seconds, then try again.")
			;	Debug.Trace("NAKED DEFEAT playeralias: #ERROR: LOOT Script running, wait some seconds, then try again.")
			;	ScreenMessage("#ERROR: if Error again, save & reload and try again") 
					
					;/ ___> NakedLootScript (moved to ConfigQuest)
						if cfgqst.Outfit_01.HasForm(akBaseObject) || cfgqst.Outfit_02.HasForm(akBaseObject) || cfgqst.Outfit_03.HasForm(akBaseObject) || cfgqst.Outfit_04.HasForm(akBaseObject) || cfgqst.Outfit_05.HasForm(akBaseObject)
						
						;do nothing. the item is a saved item and allowed to equip
						else
							int LootChance = 0
							string Type
							string Items

							if (akBaseObject as armor).IsLightArmor() ;GetWeightClass() == 0
							LootChance = 20
							Type = "Light Armor"
							elseif (akBaseObject as armor).IsHeavyArmor() 
							LootChance = 10
							Type = "Heavy Armor"
							elseif (akBaseObject as armor).IsClothing()			
							LootChance = 30
							Type = "Clothing"
							elseif (akBaseObject as armor).IsJewelry()
							Type = "Unrelated"
							else
							Type = "Unrelated"
							endif
										
							
							if (akBaseObject as armor).IsCuirass() 
							Items = "All"
							elseif (akBaseObject as armor).IsBoots()
							Items = "Boots"
							LootChance += 20
							endif
							
							if (akBaseObject as weapon).IsBattleAxe() || (akBaseObject as weapon).IsGreatsword() || (akBaseObject as weapon).IsWarhammer()
							Type = "Light Armor"
							LootChance += 100
							Items = "Weapon"
							endif
								
							if Type == "Unrelated"		
							;do nothing
							
							elseif cfgqst.PartyInCombat()
							ScreenMessage("You do not have time to change wardrobe in a fight!")
							cfgqst.PlayerRef.UnEquipItem(akBaseObject, false, true)	
												
							else
								cfgqst.PlayerRef.RemoveItem(akBaseObject, 1, true, none)
								;when we are in a store we can always make stuff fit, the item will still be destroyed
								if IsStore || (Utility.RandomInt(1,100) <= LootChance)
								
									if IsStore
									IsStore = false
									ScreenMessage("The vendor fits the stuff to your body!")
									else
									ScreenMessage("This stuff seems to fit quite nice!")
									endif
									
								cfgqst.LoadOutfit(Type, Items)
								else
								ScreenMessage("This wont fit...")
								endif	
							endif	

							
						endif	
						/;
					;endif
					
					
				endif
			endif
			
		else
		Debug.Trace("NAKED DEFEAT: playeraliasquest OnObjectEquipped: NO OBJECT?")
		endif
	else 	
	Debug.Trace("NAKED DEFEAT: playeraliasquest OnObjectEquipped: IsCheat")	
	endif 
	

		;IDEA: we check this on Equip. if boots, equip only suitable boots from saved outfits
		;if cuirass, equip full suitable outfit from saved outfits
		;if not, delete!
		
		;usefull functions for armor - also use on strip!
		;https://www.creationkit.com/index.php?title=Armor_Script
		
EndEvent

Form Workbench

Bool Function IsWorkbenchNearby()


	;<unknown self>.Game.FindClosestReferenceOfType() - "<native>" Line ?
	;<unknown self>.Game.FindClosestReferenceOfTypeFromRef() - "Game.psc" Line 58
	;[alias EssentialPlayer on quest nade_DefeatQuest (460B6940)].nade_playeralias_scr.IsWorkbenchNearby() - "------------------------" Line 1223
	;[alias EssentialPlayer on quest nade_DefeatQuest (460B6940)].nade_playeralias_scr.OnObjectEquipped() - "------------------------" Line 1094	

		ObjectReference ClosestWorkbench 
	
		;if !Workbench 
		Workbench = Game.GetFormFromFile(0x000D932F, "Skyrim.esm") as Form
		;endif
		
	;	if Workbench
	;	NymMessage("Workbench FILLED")
	;	else
	;	NymMessage("Workbench NOT FILLED")
	;	endif 
		
		ClosestWorkbench = Game.FindClosestReferenceOfTypeFromRef(Workbench, cfgqst.PlayerRef, 500.0)
		
		if ClosestWorkbench
	;	NymMessage("Workbench found")
		return true
		else
	;	NymMessage("Workbench NOT found")
		return false
		endif
		;CraftingBlacksmithArmorWorkbench "Workbench" [FURN:000D932F]
		;JobBlacksmithFaction [FACT:0005091D]

EndFunction

;/ DOES NOT MATCH THE QUEST TYPE (PARENT SCRIPT REFERENCEALIAS BLA BLA)
Event OnActivate(ObjectReference akTargetRef, Actor akActor)
	
	String name = akTargetRef.GetDisplayName() ;<-------------- try this in fucking ADDITIONAL ENCOUTNERS!... ah forget it
	
	ScreenMessage("name")
	
	if (akActor == cfgqst.PlayerRef)  		
		if name == "Sack" || name == "Large Sack" || name == "Barrel" || name == "Urn" || name == "Burial Urn" || name == "Chest"				
			ScreenMessage("WORKED!")		
			Utility.Waitmenumode(0.2)	
		else
			ScreenMessage("DID NO WORK!")
			Utility.Waitmenumode(1.2)	;Animated Container Delay		
		endif
		;OnPerkActivate()
	endIf

EndEvent 
#
/;

;/ example script from CHESTS
Function Fragment_38(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
String name = akTargetRef.GetDisplayName()
	if (akActor == Game.GetPlayer())  	
		if name == "Sack" || name == "Large Sack"; || name == "Barrel" || name == "Urn" || name == "Burial Urn"			
			Utility.Waitmenumode(0.2)	
		else
			Utility.Waitmenumode(1.2)	;Animated Container Delay		
		endif
		OnPerkActivate()
	endIf
;END CODE
EndFunction
;END FRAGMENT
/;



bool DisableDefeat = false
bool StartAllegianceQuest = false

;bool CanBeDefeated = false
bool Defeated = false
bool ProtectedGetUp = false
bool IsBleedoutDefeat = false
bool NoDefeatProcessing = false
bool IsPoisonDefeat = false
bool IsDownAlready = false

bool PlayerIsRagdolling = false

Event OnAnimationEvent(ObjectReference akSource, string asEventName)

;Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll source: "+akSource.GetBaseObject().GetName())

if (akSource != cfgqst.PlayerRef) 

	if asEventName == "RemoveCharacterControllerFromWorld"
;	Debug.Notification("NAKED DEFEAT playeraliasquest: #ragdoll start")	
;	Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll start")	
	PlayerIsRagdolling = true
;	Utility.Wait(20)
;	Debug.Notification("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 1")	
;	Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 1")
	
	
	elseif asEventName == "GetUpEnd"
	PlayerIsRagdolling = false
;	Debug.Notification("NAKED DEFEAT playeraliasquest: #ragdoll end")	
;	Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll end")	
		
;	Utility.Wait(20)
;	Debug.Notification("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 2")	
;	Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 2")
	endif
endif

;Utility.Wait(20)
;	Debug.Notification("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 3")	
;	Debug.Trace("NAKED DEFEAT playeraliasquest: #ragdoll tadaaaa 3")

EndEvent

Bool IsAccidentalDeath = false
Bool IsAccidentalDeathInCombat = false
String PlayerIsDownCause

Bool Outcome_PlayerDies
Bool Outcome_PlayerDefeated
Bool Outcome_PlayerRecovers
Bool Outcome_PlayerSold
Bool Outcome_PlayerAmbushed
Bool Outcome_PlayerRescued

Bool ForceFollowersDown = false

;Some Event (OnHit, OnEquip, etc.)
;------> causes PlayerDown 
;Surrender and Slavery circumvent this ---> needs to set "PlayerDown true anyway" ---> AllegianceQuest can set it false again?

Bool PlayerDownAlreadyStarted = false


Function PlayerDown(String DownedFrom)	;#PlayerDown ##Down##
	
	storqst.IsBlockedAttack = false
	
	Bool FollowersAllowedToProtect = true 
	Debug.Trace("NAKED DEFEAT playeraliasquest: PlayerDown("+DownedFrom+") ##DOWN##")
	cfgqst.PlayerDownAlready = TRUE
	
	if Nym()
	cfgqst.Bridge_AddTonguesPlayer()
	endif 
	
	if folqst.PartyDown()
	NymTrace("PARTY ALREADY DOWN")
	FollowersAllowedToProtect = false 
	elseif ForceFollowersDown
	NymTrace("ForceFollowersDown TRUE")
	FollowersAllowedToProtect = false 	
	ForceFollowersDown = false
	else 
	NymTrace("PARTY STILL UP")
	endif 
	 
	if PlayerWasInCombat
	PlayerWasInCombat = false
	endif 
	
	

	if PlayerDownAlreadyStarted
	Debug.Trace("NAKED DEFEAT playeraliasquest: PlayerDown("+DownedFrom+") ##ERROR DOUBLE START##")
	;RecoverFromRagdoll()
	
	elseif !PlayerDownAlreadyStarted
	PlayerDownAlreadyStarted = true 
	
		cfgqst.PlayerRef.AddToFaction(cfgqst.DownedFaction)	
		cfgqst.PlayerRef.AddToFaction(DefeatFaction)
		
		if !SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)
		NymTrace("##Calm Player A")
		SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, true)
		endif 
		
	;	if Nym()
	;	cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, true)
	;	endif 
		
		;------ DeBug ------;

		PlayerIsDownCause = DownedFrom
	;	if Nym() && cfgqst.PlayerDownAlready == false
	;	Debug.Messagebox("cfgqst.PlayerDownAlready = FALSE")
	;	cfgqst.PlayerDownAlready = TRUE
	;	endif 
		
		;------ Setup ------;
		
		cfgqst.PlayerSheatheWeapon()
		cfgqst.Immobilize(true)
		NymTrace("Immobilize TRUE PlayerDown - 1432")
		cfgqst.PlayerDownAlready = TRUE		;01 - always first! 
		cfgqst.DefeatStatePlayer = "Down"
	;	RecoverFromRagdoll()
	;	cfgqst.PlayerSheatheWeapon()
		CriticalDefeatPose() ;<<<---- Improve this 
		SendModEvent("Moan")
		Utility.Wait(3.0)
		storqst.WaitTimeTest +=6	;1 = 0.5 secs
		
		Outcome_PlayerDies = false
		Outcome_PlayerDefeated = false
		Outcome_PlayerRecovers = false
		Outcome_PlayerSold = false
		Outcome_PlayerAmbushed = false
		; ------ Downed in Combat ------ ;

		if DownedFrom == "Combat: Bleedout"
		
			if D100(cfgqst.BleedoutCounter)	;Bleedout Defeat Chance 
			NymTrace("PlayerDown() Combat: Outcome_PlayerDefeated")
			Outcome_PlayerDefeated = true
			else 
			NymTrace("PlayerDown() Combat: Outcome_PlayerRecovers")
			Outcome_PlayerRecovers = true
			endif 

		elseif DownedFrom == "Combat: Deadly Hit"	 ;; WIP!! 	
			NymTrace("PlayerDown() Combat: Outcome_PlayerDies")
			Outcome_PlayerDies = true
							  
		elseif DownedFrom == "Combat: Critical Hit"	|| DownedFrom == "Combat: Accident"	|| DownedFrom == "Combat: Deadly Accident"	 
			NymTrace("PlayerDown() Combat: Outcome_PlayerDefeated")
			Outcome_PlayerDefeated = true
			

		; ------ Downed on Adventure ------ ;
		elseif DownedFrom == ("Adventure: Deadly Accident")	
			
			FollowersAllowedToProtect = false 
			
			if cfgqst.RapersNearby()
			NymTrace("PlayerDown() Adventure: Outcome_PlayerDefeated")
			Outcome_PlayerDefeated = true
			elseif (cfgqst.FallingDamageTreshold > 0) && D100(cfgqst.DefeatDeathChance)	;#death: accidental death rolls the MCM Death Chance (0 = get up / hand off to Acheron/vanilla, 100 = always die) - only when the falling-damage accident is enabled; a failed roll falls through to the else (recover)
			NymTrace("PlayerDown() Adventure: Outcome_PlayerDies")
			Outcome_PlayerDies = true
			else
			NymTrace("PlayerDown() Adventure: Outcome_PlayerRecovers")
			Outcome_PlayerRecovers = true
			endif
					
		elseif DownedFrom == ("Adventure: Accident")		;I think I only need this for bleedout -- technically this is a bit overcomplicated but well... lets go with this for now
				
			FollowersAllowedToProtect = false 	

			if D100(cfgqst.DefeatRescueProb)
			NymTrace("PlayerDown() Adventure: Outcome_PlayerRescued")
			Outcome_PlayerRescued = true
			elseif D100(cfgqst.DefeatSlaveryProb)
			NymTrace("PlayerDown() Adventure: Outcome_PlayerSold")
			Outcome_PlayerSold = true
			else
			;NymTrace("Adventure: Outcome_PlayerRescued")
			;Outcome_PlayerAmbushed = true ;WIP
			NymTrace("PlayerDown() Adventure: PlayerGetsUp")
			Outcome_PlayerRecovers = true
			endif 
		else 

			NymTrace("PlayerDown() Unknown Sender (RECOVER!): "+DownedFrom)
			
			if Nym()
			Debug.Messagebox("Unknown Sender: "+DownedFrom)
			endif 
			
			Outcome_PlayerRecovers = true ;backup. we get away if alone anyway

		endif 
		
		; ------ Defeat Protection (from Followers etc.) ------ ;
		
		cfgqst.PlayerSheatheWeapon()
		
		if Outcome_PlayerDefeated
		NymTrace("Outcome_PlayerDefeated ->> Protection Start")		
		
			if folqst.IsFollowerPresent() 
				
				if FollowersAllowedToProtect && FollowersCanProtect()	;FollowersCanProtect does everything
				NymTrace("PlayerDown() Combat: Followers protect you!")
				Outcome_PlayerRecovers = true
				Outcome_PlayerDefeated = false				
				endif 
				
				ScreenMessage(sTempOutcomeMessage)	;only plays when protection attempt is made

			elseif NobodyAround()
			sTempOutcomeMessage = "No Enemies nearby, you can recover."
			Outcome_PlayerRecovers = true	
			Outcome_PlayerDefeated = false	
			
			ScreenMessage(sTempOutcomeMessage) ;only plays when protection attempt is made
			
			else
			NymTrace("PlayerDown() Combat: NO PROTECTION -> Defeated!")
			endif 
			
		
		endif 	
		
		sTempOutcomeMessage = "EmptyMessage"
		
		cfgqst.PlayerSheatheWeapon()
		calmqst.CalmFollowers(true)
		
		; ------ Outcomes ------ ;
		
		; --- Outcome: Defeated --- ;
		if Outcome_PlayerDefeated
		cfgqst.DefeatEntranceVia = DownedFrom
		NymTrace("PlayerDown(Outcome_PlayerDefeated)")
		;defeat Pose 
		cfgqst.PlayerSheatheWeapon()
		PlayerDownAlreadyStarted = false
		PlayerGetsDefeated() ;<<<- improve
		
		; --- Outcome: Get Up/Recover --- ;
		elseif Outcome_PlayerRecovers
		NymTrace("PlayerDown(Outcome_PlayerRecovers)")
		;short idle? 
		ResetPlayer()		;RESET ---> Naked Defeat Ends 
		PlayerGetsUp() ;<<<- improve
		
		; --- Outcome: Death --- ;
		elseif Outcome_PlayerDies
		;Death Pose before fadeout 
		NymTrace("PlayerDown(Outcome_PlayerDies)")
		cfgqst.FadeToBlack(true)
		cfgqst.StartRobberyAtLocation()
		Utility.Wait(3.0)
		storqst.WaitTimeTest += 6
		cfgqst.PlayerRef.RemoveFromFaction(cfgqst.DownedFaction)
		PlayerDownAlreadyStarted = false
		calmqst.CreateModEvent("NakedDefeatTransition", "Afterlife")
		
		; --- Outcome: Ambush --- ;
		elseif Outcome_PlayerAmbushed ;not in use WIP
		;cfgqst.FadeToBlack(true)
		;Unconcious -> Ambush (WIP)
		;fadeout into first sex scene? 
		
		; --- Outcome: Slavery --- ;
		elseif Outcome_PlayerSold
		cfgqst.FadeToBlack(true)
		cfgqst.StartRobberyAtLocation()
		Utility.Wait(3.0)
		storqst.WaitTimeTest += 6
		ResetPlayer()		;RESET ---> Naked Defeat Ends 
		calmqst.CreateModEvent("NakedDefeatTransition", "Simple Slavery Entry")
		;no no pose before Fadeout 
		
		; --- Outcome: Resuced --- ; 
		elseif Outcome_PlayerRescued
		cfgqst.FadeToBlack(true)
		if D100(25)
		cfgqst.StartRobberyAtLocation()
		endif 
		Utility.Wait(3.0)
		ResetPlayer()		;RESET ---> Naked Defeat Ends 
		calmqst.CreateModEvent("NakedDefeatTransition", "Rescued")
		endif 
	endif 
	;PlayerIsDown = false ;OLD VERSION - delete 

EndFunction 


Function ResetPlayer()	;this is called whenever CalmQuest is NOT Started

	;cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, false)

	PlayerDownAlreadyStarted = false 

	if cfgqst.PlayerRef.IsInFaction(cfgqst.DownedFaction)
	cfgqst.PlayerRef.RemoveFromFaction(cfgqst.DownedFaction)
	endif
	
	if cfgqst.PlayerRef.IsInFaction(DefeatFaction)
	cfgqst.PlayerRef.RemoveFromFaction(DefeatFaction)
	endif 
	
	if SPE_Actor.IsActorCalmed(cfgqst.PlayerRef)
	SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, false)
	NymTrace("##CALM OFF Player 1")
	endif 
	
	calmqst.CalmFollowers(false)

EndFunction 


Function RecoverFromRagdoll()

	while cfgqst.ModEnabled && cfgqst.Ragdolling		
		Utility.Wait(1.0)
		storqst.WaitTimeTest += 2
		NymTrace("Ragdolling 1619")
	endwhile

EndFunction 

Bool AllFollowersDown = false
Bool CombatOver = false 

String sTempOutcomeMessage

Bool FollowersAlreadyDown = false 
 
Bool Function FollowersCanProtect()		;NEW2025		#Protect #FollowersCanProtect()

;PROBLEM: Nessa standing without weapons, enemies standing without weapons out, timer running
		
	;LOOP START 
	DebugTrace("FollowersCanProtect(Followers are Present, DefeatGetUp: "+cfgqst.DefeatGetUp+")")
	
	ScreenMessage("Your Followers will try to protect you")
	int CanProtect = 404
	bool MessagePlayedOnce = false
	int FirstTwoCylesWait = 2 
		cfgqst.DefeatStateChapter = "FollowersProtect"

		float Timer = 30
		
		if NobodyAround()
		sTempOutcomeMessage = "Nobody left to fight, you can recover [Recover]."
		Timer = 0
		CanProtect = 1
		else 
		Timer = cfgqst.DefeatDowntime
		endif 
		;check if followers are all in bleedout or not
		DebugTrace("FollowersCanProtect(Timer START: "+Timer+")")
		
		OutCome = 0
	
		while cfgqst.ModEnabled && (Timer > 0)	
		
			cfgqst.StartHeartBeat(1.0, 0)
			
			Utility.Wait(2.0)
			
			if D100(75)
			SendModEvent("Moan") 
			endif 
			
			Timer -= 2

			if cfgqst.DefeatStateChapter == "PlayerGivesUp" ;<<<<---- defeat key can shorten this.
			sTempOutcomeMessage = "You order your followers to cease fighting [Defeated]."
			cfgqst.DefeatStateChapter = "none"
			Timer = 0
			endif 
			
			
			if Timer < 13 && !MessagePlayedOnce
			MessagePlayedOnce = true 
			ScreenMessage("Your Followers are still fighting desperatly")
			endif 

			if FirstTwoCylesWait > 0
			FirstTwoCylesWait -= 1
			;we wait for 2 full cycles (4 seconds) before first checking the combat status)
			else 
			;we can recover after X Seconds 
				if cfgqst.DefeatGetUp
				;TIMER: 0 > Get Up under all circumstances
				;FOLLOWERS DOWN EARLY and Enemies nearby > STOP - Defeated
				;FOLLOWERS DOWN EARLY and no Enemies nearby > Wait for Timer 0 or Enemies 
					if NobodyAround() 
					NymTrace("Nobody around, you can recover unnoticed [Recover] Timer:"+Timer)
					sTempOutcomeMessage = "Nobody around, you can recover unnoticed [Recover]."
					Timer = 0
					CanProtect = 1
					elseif folqst.PartyDown()
					NymTrace("Your Followers are defeated before you can recover [Defeated] Timer:"+Timer)
					sTempOutcomeMessage = "Your Followers are defeated before you can recover [Defeated]."
					Timer = 0
					CanProtect = 0
					elseif !cfgqst.FollowersInCombat(5000)
					Timer = 0
					CanProtect = 1
					NymTrace("The fight is over and you can recover [Recover] Timer:"+Timer)
					sTempOutcomeMessage = "The fight is over and you can recover [Recover]."
					else 
					;Timer keeps going		
					endif 

				;we get defeated after X Seconds
				else 
				;TIMER: 0, Fight ongoing, Enemies nearby > Defeated
				;TIMER: 0, Fight ongoing, No Enemies nearby > GetsUp
				
				;FOLLOWERS DOWN EARLY and Enemies nearby > STOP - Defeated
				;FOLLOWERS DOWN EARLY and no Enemies nearby > STOP - GetsUp  
				;FIGHT OVER, no Enemies nearby > Get Up 		

					if folqst.PartyDown() 
					
						if NobodyAround()
						NymTrace("Nobody is left standing and you can get up [D] [Recover] [Recover] Timer:"+Timer)
						sTempOutcomeMessage = "Nobody is left standing and you can get up [Recover]."
						Timer = 0
						CanProtect = 1	
						else
						NymTrace("Your followers cannot win the fight [A]  [Defeated] Timer:"+Timer)
						sTempOutcomeMessage = "Your followers cannot win the fight [Defeated]."
						;Followers down -> End Timer 
						Timer = 0
						CanProtect = 0
						
						endif 
					
					elseif !cfgqst.FollowersInCombat(10000) 	;if followers in 10000 radius are NOT in combat anymore
					
						;/
						if NobodyAround() ;and if nobody is around
						NymTrace("The fight is over and you can recover [Recover] Timer:"+Timer)
						sTempOutcomeMessage = "The battle is over and you can recover [Recover]."
						Timer = 0
						CanProtect = 1
						elseif folqst.PartyDown()  		;if enmies still around AND Party Down
						NymTrace("Your followers cannot win the fight [B] [Defeated] Timer:"+Timer)
						sTempOutcomeMessage = "Your followers cannot win the fight [Defeated]."
						;Followers down -> End Timer 
						Timer = 0
						CanProtect = 0
						endif 
						/;
						if folqst.PartyDown()  		;if enmies still around AND Party Down
						NymTrace("Your followers cannot win the fight [B] [Defeated] Timer:"+Timer)
						sTempOutcomeMessage = "Your followers cannot win the fight [Defeated]."
						;Followers down -> End Timer 
						Timer = 0
						CanProtect = 0
						elseif NobodyAround() 
						NymTrace("The fight is over and you can recover [C] [Recover] Timer:"+Timer)
						sTempOutcomeMessage = "The battle is over and you can recover [Recover]."
						Timer = 0
						CanProtect = 1				
						endif 					
						
						
					else ;Followers Up and Still fighting ->

					;Timer keeps going
					endif 
				endif 
			endif 

		DebugTrace("FollowersCanProtect(Timer: "+Timer+")")
		
		endwhile
		
		DebugTrace("FollowersCanProtect(Timer FINAL: "+Timer+")")
			
			
		if CanProtect == 404
			if cfgqst.DefeatGetUp
			sTempOutcomeMessage = "Your followers fight brave and you have time to recover [Get up]."
			CanProtect = 1 
			else
				if cfgqst.FollowersInCombat(10000)
				sTempOutcomeMessage = "Your followers could not win in time to save you and surrender [Defeated]."
				CanProtect = 0
				elseif NobodyAround() 
					if folqst.PartyDown()
					sTempOutcomeMessage = "Your followers are exhausted, but won the fight and you all of you can recover [Get up]."
					CanProtect = 1
					else 
					sTempOutcomeMessage = "Your followers won the fight in time and help you getting up [Get up]."
					CanProtect = 1
					endif 
				elseif folqst.PartyDown() 
				sTempOutcomeMessage = "Your followers could not win the fight on their own [Defeated]."
				CanProtect = 0
				endif 
			endif 		
		
		endif 
				
		cfgqst.StopHeartBeat()
		cfgqst.DefeatStateChapter = "None"
		
		if CanProtect == 1 
		return true 
		elseif CanProtect == 0
		return false
		endif 

EndFunction 


Function OutcomeMessage()	;OLD REMOVE 

				;Outcome Message
				if Outcome == 6
				ScreenMessage("Chaos everywhere! You can recover unnoticed!")
				elseif OutCome == 5
				ScreenMessage("Your followers could not win the fight on their own!")
				elseif OutCome == 4
				ScreenMessage("Your followers couldn't win in time to save you!")
				elseif OutCome == 3
				ScreenMessage("Your followers still fight and you can recover!")
				elseif OutCome == 2
				ScreenMessage("Your followers are down too!")
				elseif OutCome == 1
				ScreenMessage("Your followers win in time to rescue you!")
				endif		
				Outcome = 0
EndFunction				

;------------------------------------------------------------------------------------------------------------------------------

Function PlayerGetsUp()

Debug.Trace("NAKED DEFEAT playeraliasquest: PlayerGetsUp("+PlayerIsDownCause+")")

cfgqst.Immobilize(false)		
SendModEvent("Moan")

cfgqst.RestoreHeelsEffectOnActor(cfgqst.PlayerRef, 012506)

if cfgqst.PlayerRef.IsInFaction(cfgqst.ProtectedActorFaction)
cfgqst.PlayerRef.RemoveFromFaction(cfgqst.ProtectedActorFaction)
endif 

cfgqst.Crawl(cfgqst.PlayerRef, false)
cfgqst.PlayerDownAlready = false 
cfgqst.DefeatStatePlayer = "Free"


EndFunction
	
;----------	--------------------------------------------------------------------------------------------------------------------

	;/
	You have followers and go down
	A: they win in 30 secs time ---> you get up
	B: they lose before 30 secs time ---> defeated
	C: fight lasts longer than 30 secs time ---> defeated
	
	You have followers and go down AND GET UP ALLOWED
	X: they win in 30 secs time ---> you get up
	Y: they lose before 30 secs time ---> defeated
	Z: they fight still after 30 secs time ---> you get up
	/;

;/	


Function FollowersProtect() ;;;; OLD DELETE LOL	
	

	
	Debug.Trace("NAKED DEFEAT playeraliasquest: AA")

	cfgqst.DefeatStateChapter = "FollowersProtect"

	float Timer = 30
	
	if NobodyAround()	 ;check early and re-initiate combat early, too! 
	Timer = 0
	else 
	
	Timer = cfgqst.DefeatDowntime
	endif 
	;check if followers are all in bleedout or not
	
	while cfgqst.ModEnabled && !folqst.PartyDown() && (Timer > 0)	
	Utility.Wait(2.0)
	Timer -= 2
	
		if cfgqst.DefeatStateChapter == "PlayerGivesUp" ;<<<<---- defeat key can shorten this.
		cfgqst.DefeatStateChapter = "none"
		Timer = 0
		endif 
	
	Debug.Trace("NAKED DEFEAT playeraliasquest: Timer: "+Timer)
	endwhile
	
	Debug.Trace("NAKED DEFEAT playeraliasquest: Timer (Final): "+Timer)				
	Debug.Trace("NAKED DEFEAT playeraliasquest: DAFUQ")		
		
	;A: they win in 30 secs time ---> you get up			
	if (Timer > 0) && !folqst.PartyDown()	
	OutCome = 1
	Debug.Trace("NAKED DEFEAT playeraliasquest: BB")	
	ProtectedGetUp = true
	
	;B: they lose before 30 secs time ---> defeated
	elseif (Timer < 1) && folqst.PartyDown()
	OutCome = 2
	Debug.Trace("NAKED DEFEAT playeraliasquest: CC")	
	Defeated = true
	
	
	elseif (Timer < 1) && !folqst.PartyDown()
		;Z: they fight still after 30 secs time ---> you get up
		if cfgqst.DefeatGetUp 
		OutCome = 3
		
		Debug.Trace("NAKED DEFEAT playeraliasquest: DD")	
		ProtectedGetUp = true
		
		
		;FF nobody nearby or not fighting followers
		elseif NobodyAround()
		OutCome = 7
		
		Debug.Trace("NAKED DEFEAT playeraliasquest: FF")	
		ProtectedGetUp = true
		else
		;C: fight lasts longer than 30 secs time ---> defeated
		OutCome = 4	
		;Debug.Notification("<font color='#ff0000'>Your followers cannot win in time!</font>")
		Debug.Trace("NAKED DEFEAT playeraliasquest: EE")	
		Defeated = true
		endif
		
	elseif (Timer > 0) && folqst.PartyDown()
		
		if NobodyAround()
		OutCome = 7
		ProtectedGetUp = true
		
		;ScreenMessage("Your followers could not win the fight on their own!")
		else 
		OutCome = 5
		Debug.Trace("NAKED DEFEAT playeraliasquest: FF")	
		Defeated = true
		endif 
	else	
	OutCome = 6
	;Debug.Notification("<font color='#ff0000'>Chaos everywhere! You can recover unnoticed!</font>")
	Debug.Trace("NAKED DEFEAT playeraliasquest: GG (#ERROR)")	
	ProtectedGetUp = true		
	endif
	
	cfgqst.DefeatStateChapter = "None"

EndFunction
	
/;

Bool Function NobodyAround()

	cfgqst.ProxActorDetected = 66

	cfgqst.ProximityQuestStart("CombatScan")
	
	if cfgqst.ProxActorDetected == 66
	Debug.Messagebox("Proximity Quest Combat Scan did not work")
	
	return false
	elseif cfgqst.ProxActorDetected > 0
	DebugTrace("NobodyAround(FALSE)")
	return false
	elseif cfgqst.ProxActorDetected == 0
	DebugTrace("NobodyAround(TRUE)")
	return true
	endif 
	
;DID NOT WORK 	
;/	
	;if cfgqst.IsNymrasGame()
		Actor a = PO3_SKSEfunctions.GetClosestActorFromRef(cfgqst.PlayerRef, true)
		
		
	;	if a
	;	Debug.Messagebox("PO3 Actor Closest worked!") 
	;	endif 
			
		if a.GetDistance(cfgqst.PlayerRef) > 1000 
		Debug.Trace("NAKED DEFEAT playeraliasquest: Nobody close")	
		return true	
		;if our Follower is closest and has no weapon out, all is well (fuck combat...) 	
		elseif !a.IsWeaponDrawn() && ((a == folqst.Actor_Follower01) || (a == folqst.Actor_Follower01))
		Debug.Trace("NAKED DEFEAT playeraliasquest: Only Followers nearby who dont fight.")	
		return true
		else 
		return false 
		endif 
		/;
	;else
	;	return false
	;endif 
	
EndFunction 

int OutCome = 0


;EndEvent


;bool WaitForPartyDown = false
Keyword DemonicCreature
Faction BaboDialogueFaction

bool IsBleedingOut = false

Bool NEWsystem2025

;bool Function IsActorCalmed(Actor akActor) global native

Weapon IronDagger 


;>>>>>>>>>>>>>>>>>>>>>>>>>> BLEEDOUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


Function ForceSheatheWeapon() ;OLD DELETE 
	NymTrace("ForceSheatheWeapon()")
	if cfgqst.PlayerRef.IsWeaponDrawn()		
	cfgqst.PlayerRef.SheatheWeapon()		
	endif

	if cfgqst.PlayerRef.IsWeaponDrawn()	
	NymTrace("ForceSheatheWeapon(WEAPON DRAWN)")
		if !IronDagger
		IronDagger = game.GetFormFromFile(0x0001397E , "Skyrim.esm") as weapon
		endif 
		cfgqst.IsCheat = true
		cfgqst.PlayerRef.EquipItem(IronDagger, false, true)
		cfgqst.PlayerRef.SheatheWeapon()		
		cfgqst.PlayerRef.RemoveItem(IronDagger, 1, true, None)
		cfgqst.IsCheat = false
	endif 
	if cfgqst.PlayerRef.IsWeaponDrawn()	&& Nym()
	NymTrace("ForceSheatheWeapon(WEAPON STILL DRAWN 01)")
	Debug.Messagebox("ForceSheatheWeapon(WEAPON STILL DRAWN 01)")	
	cfgqst.PlayerRef.SheatheWeapon()		
	endif

EndFunction 

Function ForceSheatheWeapon2() ;OLD DELETE 
	NymTrace("ForceSheatheWeapon2()")

	if !IronDagger
	IronDagger = game.GetFormFromFile(0x0001397E , "Skyrim.esm") as weapon
	endif 
	cfgqst.IsCheat = true
	cfgqst.PlayerRef.EquipItem(IronDagger, false, true)
	cfgqst.PlayerRef.DrawWeapon()
	cfgqst.PlayerRef.SheatheWeapon()		
	cfgqst.PlayerRef.RemoveItem(IronDagger, 1, true, None)
	cfgqst.IsCheat = false
	if cfgqst.PlayerRef.IsWeaponDrawn()	&& Nym()
	NymTrace("ForceSheatheWeapon(WEAPON STILL DRAWN 02)")
	Debug.Messagebox("ForceSheatheWeapon(WEAPON STILL DRAWN 02)")		
	cfgqst.PlayerRef.SheatheWeapon()		
	endif

EndFunction 




Bool Function WasInCombat()

if Nym()
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[0]: "+cfgqst.Enemy[0])
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[1]: "+cfgqst.Enemy[1])
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[2]: "+cfgqst.Enemy[2])
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[3]: "+cfgqst.Enemy[3])
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[4]: "+cfgqst.Enemy[4])
	Debug.trace("NAKED DEFEAT WasInCombat(): Enemy[5]: "+cfgqst.Enemy[5])
	
	if (cfgqst.Enemy[0] == "none") && (cfgqst.Enemy[1] == "none") && (cfgqst.Enemy[2] == "none") && (cfgqst.Enemy[3] == "none") && (cfgqst.Enemy[4] == "none") && (cfgqst.Enemy[5] == "none") 
	NymTrace("WasInCombat(FALSE)")
	return false 
	else
	NymTrace("WasInCombat(TRUE)")
	return true
	endif 
	
else 
 

	if (cfgqst.Enemy[0] != "none") && (cfgqst.Enemy[1] != "none") && (cfgqst.Enemy[2] != "none") && (cfgqst.Enemy[3] != "none") && (cfgqst.Enemy[4] != "none") && (cfgqst.Enemy[5] != "none") 
	NymTrace("WasInCombat(FALSE)")
	return false 
	else
	NymTrace("WasInCombat(TRUE)")
	return true
	endif 

endif 

Endfunction


;bi55.hkx ;NICE 

Event OnEnterBleedout()			;#bleedout1 ##BLEED##	;#OnBleedout #OnEnterBleedout()

	cfgqst.DefeatStatePlayer = "Bleedout"

	Debug.Trace("NAKED DEFEAT playeraliasquest: OnEnterBleedout() ##Bleedout## Version:"+cfgqst.NakedDefeat_ModVersion)

	if cfgqst.PlayerDownAlready
		
		if cfgqst.PlayerRef.IsWeaponDrawn()		
		cfgqst.PlayerRef.SheatheWeapon()		
		endif
	
		DebugTrace("OnEnterBleedout(cfgqst.PlayerDownAlready)")
		cfgqst.PlayerRef.RestoreActorValue("Health", 200)		
		cfgqst.PlayerRef.SetNoBleedoutRecovery(true)
		
		if cfgqst.PlayerRef.IsWeaponDrawn()		
		cfgqst.PlayerRef.SheatheWeapon()		
		endif

	else
	
		if storqst.HeelsHeightActive 	
		cfgqst.DisableHeelsEffectOnActor(cfgqst.PlayerRef, 012808)
		endif 
		
		if cfgqst.PlayerIsInCombat || cfgqst.PlayerRef.IsInCombat()
		PlayerWasInCombat = true 
		endif 
	
		; --- BLEEDOUT RECOVERY ---
		
	;	if Nym() ;MOVE EARLIER #TEST 
		cfgqst.PlayerDownAlready = true
		DebugTrace("OnEnterBleedout(Regular Start)")
		cfgqst.PlayerTrackHealth()
	;	endif 
		
		storqst.PushActorAwayFunc(cfgqst.PlayerRef, cfgqst.PlayerRef, 0.5, "playscr OnBleedout 2355")
		;cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 0.5)
		;DebugTrace("#PushActorAway 1.0 - 2355")
		
		if cfgqst.PlayerRef.IsWeaponDrawn()	
		DebugTrace("OnEnterBleedout(Weapon Drawn 00 TRUE)")	
		endif
		cfgqst.PlayerRef.SheatheWeapon()		
		if cfgqst.PlayerRef.IsWeaponDrawn()	
		DebugTrace("OnEnterBleedout(Weapon Drawn 01 TRUE #ERROR)")	
		endif
		
		SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, true)
	;	DebugTrace("##Calm Player B")
		
		cfgqst.PlayerRef.AddToFaction(cfgqst.DownedFaction)
		if cfgqst.PlayerRef.IsInFaction(cfgqst.DownedFaction)
		DebugTrace("OnEnterBleedout AddToDownedFaction TRUE")
		else 
		DebugTrace("OnEnterBleedout AddToDownedFaction FAILED")
		endif 
		
	;	if Nym()
	;	cfgqst.DisableCollisionOnActor(cfgqst.PlayerRef, true)
	;	endif 
		
	;	if !Nym() ;MOVE EARLIER #TEST 
	;	cfgqst.PlayerDownAlready = true
	;	DebugTrace("OnEnterBleedout(Regular Start)")
	;	endif 
		cfgqst.PlayerRef.RestoreActorValue("Health", 100)		
		cfgqst.PlayerRef.SetNoBleedoutRecovery(true)			
		SendModEvent("Moan")			
							
		if cfgqst.PlayerRef.IsWeaponDrawn()	
		DebugTrace("OnEnterBleedout(Weapon Drawn A TRUE #ERROR))")		
		cfgqst.PlayerRef.SheatheWeapon()		
		endif
		
		if !cfgqst.PlayerRef.IsInFaction(cfgqst.DownedFaction)
		DebugTrace("OnEnterBleedout IsInFaction DownedFaction - FALSE #ERROR")
		cfgqst.PlayerRef.AddToFaction(cfgqst.DownedFaction)
		else 
		DebugTrace("OnEnterBleedout IsInFaction DownedFaction - TRUE -- All Good")
		endif 
		
	;	SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, true)

		if cfgqst.PlayerIsInCombat || cfgqst.PlayerRef.IsInCombat() || WasInCombat() || PlayerWasInCombat
		PlayerDown("Combat: Bleedout")
		else
		PlayerDown("Adventure: Deadly Accident")
		endif 	

	endif

EndEvent

Bool IsHit = false
Bool ProcessHit = false
Float HitCount = 0.0

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Function GetSpell(Form akSource)

;https://ck.uesp.net/wiki/HasKeyword_-_Form
;check for keyword on the spell?

;MagicDamageFire
;MagicDamageFrost
;MagicDamageResist ????
;MagicDamageShock

;MagicVampireDrain

;MagicShout

;MagicTrapPoison
;MagicTrapGas


EndFunction

Keyword MagicDamageFrost	;0001CEAE
Keyword MagicDamageFire		;0001CEAD
Keyword MagicDamageShock	;0001CEAF
Keyword MagicShout			;00046B99
Keyword MagicTrapPoison		;001093BB
Keyword MagicTrapGas		;0009F28E

int PierceClothingChance = 0
int	PierceLightChance = 0
int	PierceHeavyChance = 0

Function TestFunction()

Debug.MessageBox("This Worked")

Endfunction

Function GetWeapon(Form akSource)

	if !MagicDamageFrost					   	
	MagicDamageFrost = (Game.GetFormFromFile(0x0001CEAE, "Skyrim.esm") As Keyword)
	MagicDamageFire = (Game.GetFormFromFile(0x0001CEAD, "Skyrim.esm") As Keyword)
	MagicDamageShock = (Game.GetFormFromFile(0x0001CEAF, "Skyrim.esm") As Keyword)
	MagicShout = (Game.GetFormFromFile(0x00046B99, "Skyrim.esm") As Keyword)
	MagicTrapPoison = (Game.GetFormFromFile(0x001093BB, "Skyrim.esm") As Keyword)
	MagicTrapGas = (Game.GetFormFromFile(0x0009F28E, "Skyrim.esm") As Keyword)
	;MagicDamageFrost = (Game.GetFormFromFile(0x0001CEAE, "Skyrim.esm") As Keyword)
	endif
	
	if akSource
		; --- 1H Weapons --- ;
		if (akSource as weapon).IsSword()
		PierceClothingChance += 5		
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsSword()")
		elseif (akSource as weapon).IsWarAxe() 
		PierceLightChance += 3
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsWarAxe()")
		elseif (akSource as weapon).IsBow() 
		PierceClothingChance += 9
		PierceLightChance += 6
		PierceHeavyChance += 1
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsBow()")		
		elseif (akSource as weapon).IsMace() 
		PierceHeavyChance += 3
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsMace()")
		
		; --- 2H Weapons --- ;		
		elseif (akSource as weapon).IsBattleAxe() 
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsBattleAxe()")
		PierceLightChance += 6
		elseif (akSource as weapon).IsGreatsword() 
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsGreatsword()")	
		PierceClothingChance += 9		
		elseif (akSource as weapon).IsWarhammer() 
		PierceHeavyChance += 6
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsWarhammer()")
		
		; --- Spells --- ;
		elseif (akSource as spell).HasKeyword(MagicDamageFrost)
		Debug.trace("NAKED DEFEAT playeraliasquest: Spell MagicDamageFrost")
		PierceLightChance += 10
		elseif (akSource as spell).HasKeyword(MagicDamageFire)
		Debug.trace("NAKED DEFEAT playeraliasquest: Spell MagicDamageFire")
		PierceClothingChance += 15
		elseif (akSource as spell).HasKeyword(MagicDamageShock)
		Debug.trace("NAKED DEFEAT playeraliasquest: Spell MagicDamageShock")
		PierceHeavyChance += 5
		elseif (akSource as spell).HasKeyword(MagicShout)
		Debug.trace("NAKED DEFEAT playeraliasquest: Spell MagicShout")
		IsStripAttackMedium = true
		
		; --- Rare Weapons --- ;
		elseif (akSource as weapon).IsDagger() 
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsDagger()")
		PierceClothingChance += 1
		PierceLightChance += 1
		PierceHeavyChance += 1
		elseif (akSource as weapon).IsStaff() 
		Debug.trace("NAKED DEFEAT playeraliasquest: Weapon IsStaff()")
		
		; --- TRAPS --- ;
		elseif (akSource).HasKeyword(MagicTrapPoison)
		Debug.trace("NAKED DEFEAT playeraliasquest: TRAP MagicTrapPoison()")
		elseif (akSource).HasKeyword(MagicTrapGas)
		Debug.trace("NAKED DEFEAT playeraliasquest: TRAP MagicTrapGas()")
		
		endif
	endif	
EndFunction	


;/ SEX SOUNDS IDEAS

	Disable Sexlab SexSounds and PlayerVoice and Expressions. 
	
	PlayerVoice: can we disable? or do we need to trick Sexlab?
	SexSounds: can we disable? :(
	
	OnHotkey O: Open Mouth, auto detect gags, stick tongue out, start Oral Sounds, Autoclose after Sex Finished. Pressed again closes mouth
	Can we autodetect the tag "oral" on startup?
	
	SexSounds: Fucking sounds all the time. Start Detects Monster or Tentacle sounds and changes Sound Set accordingly
	Play Orgasm Sound: with delay in final stage

/;

Event OnStoryJail(ObjectReference akGuard, Form akCrimeGroup, Location akLocation, int aiCrimeGold)
Debug.Trace("NAKED DEFEAT playeraliasquest: OnStoryJail()")

	Debug.Trace("NAKED DEFEAT playeraliasquest: akGuard.GetName(): "+akGuard.GetName())
	InfoMessage("NAKED DEFEAT playeraliasquest: akCrimeGroup(): "+akCrimeGroup.GetName())
	Debug.Trace("NAKED DEFEAT playeraliasquest: akProjectile(): "+akLocation.GetName())
	Debug.Trace("NAKED DEFEAT playeraliasquest: aiCrimeGold(): "+aiCrimeGold)

EndEvent	

;/
Function CheckHealthDifference()

	bool IsDead = false
	
		;if !ProcessedFalling
		;
		;if !StartFalling
		;do nothing!
		;elseif StartFalling
		float HealthDiff = 0.0
		
		HealthAfterFall = PlayerRef.GetActorValue("Health")
		
		HealthDiff = HealthBeforeFall - HealthAfterFall
		
		Debug.Trace("HealthDiff: "+HealthDiff+", HealthBeforeFall: "+HealthBeforeFall+", HealthAfterFall: "+HealthAfterFall)
		
			HealthBeforeFall = 0.0
			HealthAfterFall = 0.0
		
			StartFalling = false
			;ProcessedFalling = true
			Zpos2 = PlayerRef.GetPositionZ()
			Zpos2_abs = math.abs (Zpos2)
			;InfoMessage("Zpos2_abs: "+Zpos2_abs)
			Zpos3 = (Zpos1_abs - Zpos2_abs)
			Zpos3_abs = math.abs (Zpos3)
			;InfoMessage("Zpos3_abs: "+Zpos3_abs)
			
			if (HealthDiff > 0) && (FallingDamageTreshold > 0)
			InfoMessage("Falling Damage: "+HealthDiff)
			endif
			
			if (Zpos3_abs > 150) && (HealthDiff > FallingDamageTreshold) && (HealthDiff != 0)
			;FallingDamageTreshold = 0.0
			  ;ScreenMessage("WE HAVE FALLEN")
				HealthDiff = 0		
			 
			  if Zpos3_abs < 200
			  UnconciousnessChance = Zpos3_abs*0.025
			  elseif Zpos3_abs < 250
			  UnconciousnessChance = Zpos3_abs*0.05
			  else
			  UnconciousnessChance = Zpos3_abs*0.1
					if Zpos3_abs > 1000
					IsDead = True
					endif
			  endif	
			endif

EndFunction			  
	
	
	;WIP!!!
Float LastHealth
Float CurrentHealth

/;		


	
	; 130 		Draugr
; 140		Riekling
; 150		Falmer
; 160		Gargoyle
; 161		Troll
; 162		VampireLord
; 163		Werewolf
; 164		Spriggan
; 170	FlameAtronach
; 171	FrostAtronach
; 172 	StormAtronach
; 190	Giant
; 192	Wispmother
; 194	Hagraven
; 196	DragonPriest

;Mammals 
; 200	Wolf
; 200	Dog
; 210	Skeever
; 220	Bear
; 230	Boar
; 240	Deer
; 250	Sabrecat
; 260	Mammoth
; 270 	Horker

;InSects
; 300	Chaurus
; 310	ChaurusHunter
; 320	Spider
; 330	AshHopper
; 340	Mudcrab

;Farm
; 400	Horse
; 410 	Goat
; 420	Chicken
; 430	Hare
; 440	Cow

;Dwarven
; 500	DwarvenSphere
; 510	DwarvenSpider
; 520 	DwarvenCenturion
; 530 	DwarvenBallista

;REST
; 600 	Lurker
; 610 	Seeker
; 620  Netch
; 630  Dragon
; 640  IceWraith
; 650  Slaughterfish
; 660  Wisp

	float Strip_Light_MOD
	float Strip_Heavy_MOD
	
	float Defeat_Naked_MOD 
	float Defeat_Cum_MOD 
	bool Defeat_EASY
	
	float PushAttack_MOD
	
	bool Attack_ArmsLegs_ONLY
	bool Attack_Legs_ONLY
	
	

Function GetCriticalHitModifiers(int HitterRaceCode)

		Strip_Light_MOD = 0
		Strip_Heavy_MOD = 0
		Defeat_Naked_MOD = 0
		Defeat_Cum_MOD = 0
		Attack_ArmsLegs_ONLY = false
		Attack_Legs_ONLY = false
		Defeat_EASY = false 
		PushAttack_MOD = 0
		
	
		;--- Canines/Dogs/Wolves ---;
		if HitterRaceCode == 200 
			Attack_ArmsLegs_ONLY = true 
			Strip_Heavy_MOD = cfgqst.DefeatBreakHeavyProb*0.5	;STRIP HEAVY  -
			Defeat_Naked_MOD = cfgqst.NakedChance				;DEFEAT ON NAKED +
	
		;--- Skeevers ---;
		elseif HitterRaceCode == 210 
			Strip_Heavy_MOD = cfgqst.DefeatBreakHeavyProb*0.5 	;STRIP HEAVY -
			Strip_Light_MOD = cfgqst.DefeatBreakLightProb*0.5 	;STRIP LIGHT -
			Attack_Legs_ONLY = true
			Defeat_EASY = true									;90% Chance!
			
		;--- Sabrecats / Bears / Boars ---;
		elseif (HitterRaceCode == 250) || (HitterRaceCode == 220) || (HitterRaceCode == 230)
			
			Strip_Heavy_MOD = cfgqst.DefeatBreakHeavyProb*0.5 	;STRIP HEAVY -
			Defeat_Naked_MOD = cfgqst.NakedChance*2				;DEFEAT ON NAKED ++
			PushAttack_MOD = 40.0
			
		;--- Trolls / Werewolves / Gargoyles ---;
		elseif (HitterRaceCode == 161) || (HitterRaceCode == 163) || (HitterRaceCode == 160)
			Strip_Heavy_MOD = cfgqst.DefeatBreakHeavyProb*3 	;STRIP HEAVY  +++
			Strip_Light_MOD = cfgqst.DefeatBreakLightProb*2 	;STRIP LIGHT ++
			Defeat_Cum_MOD = cfgqst.CriticalDefeat				;DEFEAT ON CUM ++
			Defeat_Naked_MOD = cfgqst.NakedChance*0.5			;DEFEAT ON NAKED -
			PushAttack_MOD = 60.0

		;--- Giants / Lurkers ---;
		elseif  (HitterRaceCode == 190) || (HitterRaceCode == 600)
			Strip_Heavy_MOD = cfgqst.DefeatBreakHeavyProb*3 	;STRIP HEAVY +++
			Strip_Light_MOD = cfgqst.DefeatBreakLightProb*2 	;STRIP LIGHT ++
			Defeat_Cum_MOD = cfgqst.CriticalDefeat*0.5			;DEFEAT ON CUM -
			Defeat_Naked_MOD = cfgqst.NakedChance*0.5			;DEFEAT ON NAKED -
			PushAttack_MOD = 80.0
			
		;--- Rieklings ---;
		elseif HitterRaceCode == 140 
			Defeat_Cum_MOD = cfgqst.CriticalDefeat				;DEFEAT ON CUM 	+
			Defeat_Naked_MOD = cfgqst.NakedChance				;DEFEAT ON NAKED +	
		endif 
		

		

EndFunction 


		;Bool IsStripAttackHeavy = false
		Bool IsDefeatingOnStrip = false
		Bool IsSlippingOnNaked = false
		Bool IsDefeatingOnNaked = false
		Bool IsSlippingOnCum = false
		Bool IsDefeatingOnCum = false
		Bool IsStripAttackLight = false
		Bool IsStripAttackLegs = false		
		Bool IsDefeatingOnLegs = false
		Bool IsDefeatingEasily = false 
		Bool IsDefeatingAutomatically = false
		Bool IsPowerAttack = false
		float IsPushAttack = 0.0
							
	;	ObjectReference BearTrap01	
		Bool HitProcessingRunning = false
		Bool IsWeaponDrawn = false 
		Bool PlayerIsDown = false 

		string akHitter_NAME	
		string akSource_NAME	
		string akProjectile_NAME
		
				;	ObjectReference Function FindClosestReferenceOfType(Form arBaseObject, float afX, float afY, float afZ, float afRadius) native global		
				;	ObjectReference closestDiamond = Game.FindClosestReferenceOfType(Diamond, 0.0, 0.0, 0.0, 5.0)
				
				
Function HitProcessing(Actor akHitter, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)				;#HitProcessing()
	NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing()")	

	if HitProcessingRunning
	NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing(HitProcessingRunning)")	
	;do nothing 

	elseif cfgqst.PlayerDownAlready
	NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing(PlayerDownAlready)")
	NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing(HitProcessingRunning = false ) 3143")	
	Utility.Wait(1.0)
	HitProcessingRunning = false 
	;do NOTHING
	
	;>>> Hit Processing started  >>
	else 
		
		NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing(STARTED)")
		HitProcessingRunning = true
		
		akHitter_NAME = "empty"	
		akSource_NAME = "empty"	
		akProjectile_NAME = "empty"
		
		int akAggressor_RACEcode = 0
		bool AbortHitProcessing = false
		int HitterRaceCode = 0
		String HitterRaceKey = "empty"
		
		if Nym()
			akSource_NAME = akSource.GetName()
			if !akSource_NAME
			akSource_NAME = "No Source Name"
			endif
		endif
		DebugTrace("NAKED DEFEAT playeraliasquest: HitProcessing(#Hit by Source: "+akSource_NAME+")")	
		DebugTrace("NAKED DEFEAT playeraliasquest: HitProcessing(#Hit by Actor: "+akHitter_NAME+")")	
			
		HitterRaceCode = storqst.GetHitterRaceCode(akHitter)			;needed for Critical Hit Calculations
		NymTrace("HitterRaceCode:"+HitterRaceCode)
		HitterRaceKey = storqst.GetRaceKeyFromRaceCode(HitterRaceCode)	;needed for Scenario Detection
		storqst.SaveHitterRaceKeyAsEnemy(HitterRaceKey)					;needed for Scenario Detection
		
		

		
			;>>>>>>>>>>>>>>>>>>> 	COMBAT PROCESSING 	>>>>>>>>>>>>>>>>>>>;
	
		if cfgqst.PlayerInCombat()
		
				;------ DODGE check	------; NEW
				if cfgqst.Dodged == 2
				;we were hit during the first 0.75 seconds after dodhing
				NymTrace("NAKED DEFEAT playeraliasquest: OnHit(Perfect Dodge)")
				IsAttackDodged = true
				
				;NymBox("IsAttackDodged = true")
				cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Dodged 01", 1.0)
				elseif cfgqst.Dodged == 1
				NymTrace("NAKED DEFEAT playeraliasquest: OnHit(Bad Dodge)")
				
					if D100(33)
					IsAttackDodged = true
					cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Dodged 01", 1.0)
					endif 
				;NymBox("IsAttackDodged = true")
				else
				NymTrace("NAKED DEFEAT playeraliasquest: OnHit()")
				endif 
				
				;------ WEAPON DRAWN check	------; NEW
				if cfgqst.PlayerRef.IsWeaponDrawn()
				IsWeaponDrawn = true
				else 
				IsWeaponDrawn = false
				endif 
				
				;------ AGGRESSOR check	------; NEW
				if (akHitter_NAME == "Spriggan" || akHitter_NAME == "Spriggan Elite") 
					if (akHitter.GetDistance(cfgqst.PlayerRef) > 1000)
					NymTrace("HitProcessing: "+akHitter_NAME+" detected) - Abort")
					AbortHitProcessing = true 
					endif 
				elseif akHitter == cfgqst.PlayerRef
				AbortHitProcessing = true 
				endif 
				
				;##############################		HIT PROCESSING STARTED		;##############################;
				if !AbortHitProcessing	
					if D100(cfgqst.MoanOnHitChance)
					SendModEvent("Moan")
					endif
					
					Debug.trace("NAKED DEFEAT playeraliasquest: HitCount: "+HitCount)
					
					bool PerfectBlock = false
					
					if abHitBlocked 
						
						if storqst.Parried == 1 && Nym()
						storqst.Parried = 0
						PerfectBlock = true 
						storqst.SOUND_PerfectBlock.Play(cfgqst.PlayerRef)
						NymMessage("Perfect Block")
						
						storqst.PushActorAwayFunc(cfgqst.PlayerRef, akHitter, 1.0, "playscr OnHit 3811")
						
					;	cfgqst.PlayerRef.PushActorAway(akHitter, 1.0)
						else 
						storqst.IsBlockedAttack = true
						HitCount -= 1
						endif 
					endif 
					
			
					;cfgqst.PlayCombatBlockingSound() ;maybe more block sounds? and only for melee!!!
					if abPowerAttack
					IsPowerAttack = true ;power attacks should defeat easily, not strip easier 
					endif 

					;>>>>>> Hitter RaceCode (as int) >>>>>>>>>>>>>>>>>>>>>>>>>>  NEW
						
					akAggressor_RACEcode = storqst.GetHitterRaceCode(akHitter)
					
					if storqst.NymCombat
					GetCriticalHitModifiers(HitterRaceCode)
					;Modifiers based on Hitters Race (Strip/DefeatingEasily etc.)
					endif 
					
					;>>>>>>>>>>>>>>>>>>>>>>>>>> COMBAT STRIP >>>>>>>>>>>>>>>>>>>>>>>>>> NEW
					
					if !IsDownAlready ;bleedout can still trigger!)	
					CombatStrip()
					endif 
					Utility.Wait(1.0)
					HitProcessingRunning = false ;all processing and stripping is done. we are now either eligible for new hits to processed or DOWN 
					NymTrace("NAKED DEFEAT playeraliasquest: HitProcessing(HitProcessingRunning = false MAIN EXIT ) 3229")
					;-------> No Code after this!	

				endif 
				
			elseif storqst.WhippingDuration > 0	
			SendModevent("Moan")	
			Utility.Wait(2.0)
			HitProcessingRunning = false
			else 
			NymTrace("Non-Combat HIT")	;WIP
			Utility.Wait(1.0)
			HitProcessingRunning = false
			;NON COMBAT PROCESSING 
			endif 
	endif 

EndFunction 
	

Bool Function HealthProtects()
	
	float PCHealthMax = cfgqst.PlayerRef.GetActorValueMax("health")
	float PCHealthCurrent = cfgqst.PlayerRef.GetAV("health")
	float PCHealthDivider = 0
	float SavetyRoll = 100
	PCHealthDivider = PCHealthMax/PCHealthCurrent
	
	SavetyRoll = 100/PCHealthDivider
	NymTrace("PCHealthMax: "+PCHealthMax)
	NymTrace("PCHealthCurrent: "+PCHealthCurrent)
	NymTrace("SavetyRoll: "+SavetyRoll)
	if D100(SavetyRoll)
	return true 
	else 	
	return false
	endif 
	

EndFunction 


			;NewCombat2026 
			;Add Hitter to an ActorFormlist? (check Formlist for Valid Actors?)
			;		
			
;##hit ;#onHit	
Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)	
	
	NymTrace("!OnHit!")

	IsHit = false  
	
		Actor akHitter = none
		;1st Check 
		
		
		if cfgqst.WhipAgain	&& Nym()
			NymTrace("OnHit cfgqst.WhipAgain == TRUE")
			if (cfgqst.PlayerRef.GetSitState() == 0) && D100(80)
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
			endif 
		
		elseif cfgqst.DefeatBreakArmor ;check first if we check at all! 
			NymTrace("OnHit DefeatBreakArmor = TRUE")
			IsHit = true 
			
				if akAggressor
					akHitter = akAggressor as Actor 
					akHitter_NAME = cfgqst.GetActorName(akHitter)
					
					if !storqst.EnemyList.HasForm(akHitter)
					storqst.EnemyList.AddForm(akHitter)
					endif
								
					if !akHitter_NAME
					akHitter_NAME = "No Hitter Name!"
					endif
				else 	
				akHitter_NAME = "No Aggressor!"		
				endif
	 
			
			NymTrace("OnHit akHitter_NAME: "+akHitter_NAME)
			
			;2nd Check 
			if cfgqst.PlayerDownAlready ;priority call
			NymTrace("OnHit -> NO - cfgqst.PlayerDownAlready = TRUE")
			IsHit = false
			elseif cfgqst.IsDefeatRunning()
			NymTrace("OnHit -> NO - cfgqst.IsDefeatRunning() = TRUE")
			IsHit = false
			elseif HitProcessingRunning ;&& !abHitBlocked WIP! 
				If D100(50)
				HitCount +=1
				endif
			NymTrace("OnHit -> NO - HitProcessingRunning = TRUE (HitCount: "+HitCount+")")
			IsHit = false
			endif 
			
			;valid hit, we process it (strip/critical hit etc.)
			if IsHit && akHitter && !cfgqst.PlayerDownAlready
			HitProcessing(akHitter, akSource, akProjectile, abPowerAttack, abSneakAttack, abBashAttack, abHitBlocked)
			endif 
		endif
			
		;---> no Code after here 
			
		;Determine if Hit is Processed at All
		
		
		;################################################################################################################################################
		;OLD SYSTEM ################################################################################################################################################
		;################################################################################################################################################
			
				
		;/
			
			NymTrace("OnHit(cfgqst.PlayerDownAlready: "+cfgqst.PlayerDownAlready+")")
			
			;THIS DOES NOTHING???
			if PlayerIsDown ;&& (PlayerIsDownCause == "empty")		;WHY #IMPORTANT ;THIS 
			PlayerIsDown = FALSE
			endif 
			
			cfgqst.PlayerTrackHealth()
			
	
			
			if cfgqst.Dodged == 2
			NymTrace("NAKED DEFEAT playeraliasquest: OnHit(Dodged == 2)")
			IsAttackDodged = true
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Dodged 01", 1.0)
			elseif cfgqst.Dodged == 1
			NymTrace("NAKED DEFEAT playeraliasquest: OnHit(Dodged == 1)")
			IsAttackDodged = true
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Dodged 01", 1.0)
			else
			NymTrace("NAKED DEFEAT playeraliasquest: OnHit()")
			endif 

			
			if Nym() 
			
				if !StripRunning && !ProcessHit
					if cfgqst.PlayerRef.IsWeaponDrawn()
					IsWeaponDrawn = TRUE
					else 
					IsWeaponDrawn = false
					endif 
				endif 
			else 
			IsWeaponDrawn = TRUE	
			
			endif 
			
			
			if cfgqst.PlayerDownAlready  
			;do nothing
			;	if Nym()
			;	cfgqst.PlayCombatBlockingSound()
			;	endif 	
			Debug.trace("NAKED DEFEAT playeraliasquest: OnHit(PlayerIsDown already because: "+PlayerIsDownCause+")")
			
			elseif storqst.WhippingDuration > 0 || cfgqst.AlreadyImmobilized
			
			Debug.trace("NAKED DEFEAT playeraliasquest: OnHit(WHIPPED)")
			else 
				string TrapName
				
			;	if cfgqst.IsNymrasGame()
			;	Debug.trace("NAKED DEFEAT playeraliasquest: OnHit()")
			;	endif 

				IsHit = true

				;-------- TEST HITTER DETECTION -----------------------------------------------------------------------------------------------------
				
				if !IsAttackDodged && Nym() && !cfgqst.CivilRapeRunning && !cfgqst.DefeatQuestRunning ;&& !cfgqst.PartyInCombat() 
				
					string akAggressor_NAME = "empty"
					string akSource_NAME = "empty"
					string akProjectile_NAME = "empty"
					int akAggressor_FormID
					int akSource_FormID
					int akProjectile_FormID
					string TrapType = "empty"
					Bool TrapStart = false
					Float LevelAggressor
					Float LevelPlayer = cfgqst.PlayerRef.GetLevel() as Float 

					if akAggressor

					
					Actor Hitter = akAggressor as Actor
					akAggressor_NAME = cfgqst.GetActorName(Hitter)

					LevelAggressor = Hitter.GetLevel() as Float 
					
					if LevelPlayer > LevelAggressor
					DegradingHit = LevelPlayer - LevelAggressor	;#DegradingHit1
					endif 
					
					DegradingHit = 0	
					
					NymTrace("OnHIT akAggressor FOUND - DegradingHit:"+DegradingHit)
					
					;akAggressor_NAME = akAggressor.GetName()
						if !akAggressor_NAME
						cfgqst.GetBaseObjectName(akAggressor)
						endif 
						if !akAggressor_NAME
						actor TempActor = akAggressor as actor
						cfgqst.GetActorName(TempActor)
						endif
					endif
					if akSource
					akSource_NAME = akSource.GetName()
						if (akSource_NAME == "empty")
						akSource_FormID = akSource.GetFormID()
						endif 
					endif
					
					if akProjectile
					akProjectile_NAME = akProjectile.GetName()
					endif
					
					if cfgqst.PartyInCombat()
					NymTrace("OnHit: aggressor: "+akAggressor_NAME+" / source: "+akSource_NAME+" , sourceFormID: "+akSource_FormID+" / projectile: "+akProjectile_NAME)
					else
					ScreenMessage("OnHit: aggressor: "+akAggressor_NAME+" / source: "+akSource_NAME+" , sourceFormID: "+akSource_FormID+" / projectile: "+akProjectile_NAME)
				
							if Nym() && (akAggressor_NAME == "spriggan")
							ProcessHit = true
							endif 
					endif 
					
					TrapName = akSource.GetName()
					
					;	if !BearTrap01
					;	BearTrap01 = (Game.GetFormFromFile(0x0007144D, "Skyrim.esm") As ObjectReference)
					;	endif
						
						if TrapName == "FXdustDropWEP"
						InfoMessage("TrapHit Start: DROP")
						TrapType = "Drop"
						TrapStart = true
						elseif TrapName == "Dart Trap Weapon"
						InfoMessage("TrapHit Start: DART")
						TrapType = "Dart"
						TrapStart = true
						elseif TrapName == "Flames"
						InfoMessage("TrapHit Start: FLAMES") ;TRIGGERS IN COMBAT SO WE NEED TO DISTINCT 
						TrapType = "Flames"
						TrapStart = true
						elseif TrapName == "Firebolt"
						InfoMessage("TrapHit Start: FLAMES")
						TrapType = "Flames"
						TrapStart = true
						elseif TrapName == "Lightning Bolt"
						InfoMessage("TrapHit Start: LIGHTNING BOLT")
						TrapType = "Lightning Bolt"
						TrapStart = true
						elseif TrapName == "Chain Lightning"
						InfoMessage("TrapHit Start: CHAIN LIGHTNING")
						TrapType = "Chain Lightning"
						TrapStart = true
						elseif TrapName == "Sparks"
						InfoMessage("TrapHit Start: SPARKS")
						TrapType = "Sparks"
						TrapStart = true
						elseif TrapName == "Ice Spike"
						InfoMessage("TrapHit Start: ICE SPIKE")
						TrapType = "Ice Spike"
						TrapStart = true
						elseif TrapName == "Frostbite"
						InfoMessage("TrapHit Start: FROSTBITE")
						elseif TrapName == "Ice Storm"
						InfoMessage("TrapHit Start: ICE STORM")
						else

						InfoMessage("Something hit us - TrapName: "+TrapName)

								
							if !TrapName	
							Form BearTrap
							BearTrap = (Game.GetFormFromFile(0x0007144D, "Skyrim.esm") As Form)
							ObjectReference closestBearTrap 
							
							closestBearTrap = Game.FindClosestReferenceOfTypeFromRef(BearTrap, cfgqst.PlayerRef, 50.0)	;check distance less
							
								if closestBearTrap
								NymMessage("TrapHit Start: BEARTRAP")
								TrapType = "Bear Trap"
								TrapStart = true
								endif 
								
							elseif TrapName
							NymTrace("No TrapName but returns true?")
							endif 
						
						endif
				
				;[02/03/2025 - 04:41:46AM] Error: None or invalid form type as Base object for FindClosestReferenceOfType
				;stack:
				;	<unknown self>.Game.FindClosestReferenceOfType() - "<native>" Line ?
				;	<unknown self>.Game.FindClosestReferenceOfTypeFromRef() - "Game.psc" Line 58
				;	[alias EssentialPlayer on quest nade_DefeatQuest (D10B6940)].nade_playeralias_scr.OnHit() - "nade_playeralias_scr.psc" Line 1946


						if (cfgqst.FallingDamageTreshold > 0) && TrapStart
						;PlayerIsDown = true  ;OLD VERSION - delete
						NymTrace("##TrapStart")
						TrapStart = false 
							if TrapType == "Bear Trap"
								if cfgqst.PartyInCombat()
								cfgqst.KeySurrender("Forced Surrender")		
							

								elseif cfgqst.RapersNearby()
								PlayerDown("Combat: Deadly Accident")
							
								else 
								cfgqst.Immobilize(True)
								cfgqst.PlayerSheatheWeapon()
								calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", True)
								Utility.Wait(10)
								calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Reset", False)
								cfgqst.Strip(37, cfgqst.PlayerRef) ;Strip Boots
								cfgqst.Immobilize(False)
								;AMBUSH!! 
								endif 
							
							elseif TrapType == "Drop"
							;NymTrace("##TrapStart (Drop)")
								cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 7)
								
								if cfgqst.PartyInCombat()	
								NymTrace("##TrapStart (Drop in Combat)")
								PlayerDown("Combat: Deadly Accident")
								else 
								NymTrace("##TrapStart (Drop was Accident)")	
								PlayerDown("Adventure: Deadly Accident")
								endif
							

							elseif TrapType == "Dart"		;certain potions can help / need to hit hotkey fast!
							
								if cfgqst.PartyInCombat()	
								NymTrace("##TrapStart (Dart in Combat)")
								PlayerDown("Combat: Deadly Accident")
								else 
								NymTrace("##TrapStart (Dart was Accident)")	
								PlayerDown("Adventure: Deadly Accident")
								endif 

							elseif TrapType == "Flames"		;certain potions can help / need to hit hotkey fast!
								if cfgqst.PartyInCombat()
							;	NymMessage("COMBAT: Hit by Flames")
							;	cfgqst.PlayerRef.PushActorAway(cfgqst.PlayerRef, 4)
							;	PlayerRef.DamageAV("Health", 100000)
								else 
								NymMessage("ADVENTURE: Hit by Flames")
								;cfgqst.FadeToBlack(true)
								;Utility.Wait(2.0)
								;cfgqst.DefeatEntranceVia = "TrapHit"
								
								;cfgqst.CreateModEvent("NakedDefeatTransition", "Afterlife")
								endif 	
								
							endif 
						endif 
				endif
				
				;------------------------------------------------------------------------------------------------------------------------

				Actor akAttacker = akAggressor as Actor ;STUPID????
				String AttackerName = cfgqst.GetActorName(akAttacker)
				
				NymTrace("akAttacker = "+AttackerName)  
				
				bool SprigganAbort = false 
				
				
				
				if (AttackerName == "Spriggan" || AttackerName == "Spriggan Elite") && (akAttacker.GetDistance(cfgqst.PlayerRef) > 1000)
				SprigganAbort = true 
				endif 
				
				if (akAttacker == cfgqst.PlayerRef) || !akAttacker || IsAttackDodged
				IsAttackDodged = false ;HOLY HELL!! this is important :D 
				;if the attacker is the player self OR if the attacker is "none", do nothing
				;if attack is dodged, do nothing
				elseif SprigganAbort
				NymTrace("SprigganAbort")
				SprigganAbort = false 
				
				else
					; -------- WHIPPING HIT DETECTION --- When Hit While Defeated (Improve this!)  --------------
					if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning
						if cfgqst.WhipAgain
						cfgqst.TempIntBridge = 1
						endif 		
					else
						; -------- When Script still running to process the Hit, we just add to the HitCount instead. -----------------------------------
						if ProcessHit || StripRunning || (storqst.IsLocalSlave > 0)
						
							;EXTRA HITS add to strip chance
					
							if abHitBlocked
							storqst.IsBlockedAttack = true
							else 
							HitCount += 1.0
							endif 
							
							if D100(cfgqst.MoanOnHitChance)
							SendModEvent("Moan")
							endif
						 
						Debug.trace("NAKED DEFEAT playeraliasquest: HitCount: "+HitCount)
						
						; -------- Hit Processing START --------------------------------------------------------------------------------------------------
						else
							ProcessHit = true	
							Debug.trace("NAKED DEFEAT playeraliasquest: ProcessHit: started")		
							;>>>>>>>>>>>>>>>>>>>>>>>>>> MOAN >>>>>>>>>>>>>>>>>>>>>>>>>>
							;GUIDE: the Event checks if moaning is allowed, so can be here without further conditions. 
							;Its a ModEvent to not cause the Function to stall with all the Utility.Wait stuff.
							if abHitBlocked
							storqst.IsBlockedAttack = true
							endif 
							
							if D100(cfgqst.MoanOnHitChance)
							SendModEvent("Moan")
							endif
							
						;	if akSource as weapon
							
						;	elseif akSource as spell  
						;	GetSpell(akSource)
						;	endif
							;	Debug.trace("NAKED DEFEAT playeraliasquest: akSource= " +akSource)
							;	if akSource as weapon
							;	Debug.trace("NAKED DEFEAT playeraliasquest: (weapon) This Works")
							;	endif
							;	Debug.trace("NAKED DEFEAT playeraliasquest: akProjectile= " +akProjectile)
								
							;akSource: The Weapon, Spell, Explosion, Ingredient, Potion, or Enchantment that hit this reference.
							;akProjectile: The Projectile that hit this reference.	
							
							;elseif akSource	= Spell
							;Debug.trace("NAKED DEFEAT playeraliasquest: Spell= " +akProjectile)
							
	
							if cfgqst.dhlpSuspendStatus && cfgqst.PlayerRef.IsInCombat() 
							Debug.trace("NAKED DEFEAT playeraliasquest: #ERROR: OnHit(DHLP suspend TRUE)")
							endif 

							if !cfgqst.IsDefeatRunning() && cfgqst.PlayerRef.IsInCombat()
							Actor Hitter = akAggressor as Actor
							
							PlayerWasInCombat = true 
							
							;>>>>>>DETECT ENEMY TYPE >>>>>>>>>>>>>>>>>>>>>>>>>>
							;get the type of enemy that hit the PC 
							cfgqst.GetEnemyType(Hitter)
							
								if Nym() && (cfgqst.RaceKey == "Draugr")
									if !SkeletonRace 
									SkeletonRace = (Game.GetFormFromFile(0x000B7998, "Skyrim.esm") As Race)
									endif 
									if Hitter.GetRace() == SkeletonRace
									NymMessage("Hit by a Skeleton") 
									IsDefeatingEasily = true 
									endif 
									
								endif 
							
							endif


							;NEED GET MAGIC HERE TOO? :(
							;yes... some stuff can do magic.
							
									
							;>>>>> FINAL CHECK OF HIT >>>>>>>>>>>>>>>>>>>>>>>>>>
							;we want to allow only to check for weapons or magic keyword when the hitter type might have any.
						
							;2024: Update: I decide to disable this. the different types of hits are just impossible to roleplay with or adjust tactics. 
							;its just not good to get hit by anything anyway, period. No need to distinct this way
							
							;if cfgqst.IsHitterArmed()
							;GetWeapon(akSource)
							;endif
								
							;>>>>>>>>>>>>>>>>>>>>>>>>>> COMBAT STRIP >>>>>>>>>>>>>>>>>>>>>>>>>>
							;start stripping the PC. can lead to critical defeat. 
							
							
							NymTrace("[IsBleedingOut: "+IsBleedingOut+"][DefeatBreakArmor: "+cfgqst.DefeatBreakArmor+"][StripRunning: "+StripRunning+"][StartCombatStrip: "+StartCombatStrip+"][DefeatRunning: "+cfgqst.IsDefeatRunning()+"][IsPoisonDefeat: "+IsPoisonDefeat+"][IsSuspended: "+cfgqst.IsSuspended()+"]")
							
							;determine if its some kind of special attack. we will add "rape attack" later too (which increases the rape chance, while strip attack increases strip chance)
							if !IsBleedingOut && cfgqst.DefeatBreakArmor && !StripRunning && !StartCombatStrip && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning && !IsPoisonDefeat && !cfgqst.IsSuspended()  	

								if cfgqst.StripAttack ;(MCM)	 ;(IF Extra STRIP Attacks ENABLED IN MCM)			;#TODO: Add RapeAttack (Skeevers, Trolls, Netches?)
									
									;BLOCKED ---> this is blocking all this from happening!
									if abHitBlocked
									storqst.IsBlockedAttack = true
									cfgqst.PlayCombatBlockingSound()
									else
								
										;LIGHT CREATURES: add extra chance but not much
										if (cfgqst.RaceKey == "Dogs") || (cfgqst.RaceKey == "Wolves") || (cfgqst.RaceKey == "Canines") || (cfgqst.RaceKey == "Skeevers")				
										
										;BETTER in Stripping Clothing Boots & Armor Boots
										;BETTER in defeating Naked Arm and Leg hits
										;WORSE against Heavy Armor
										;WORSE against Cumsoaked
										
										IsStripAttackLegs = true		
										IsDefeatingOnLegs = true
										IsDefeatingEasily = true
											
											if Nym() && (cfgqst.RaceKey == "Skeevers")
											IsDefeatingAutomatically = true
											endif
										
													
										;MEDIUM  CREATURES: add extra chance and especially for heavy armor	
										elseif (cfgqst.RaceKey == "SabreCats")  ||(cfgqst.RaceKey == "IceWraiths") || (cfgqst.RaceKey == "LargeSpiders")
										IsPushAttack = 40.0 
										IsDefeatingOnNaked = true
										IsStripAttackLight = true
										
										;HUMANOID BEASTS (Trolls, Werewolves)
										elseif (cfgqst.RaceKey == "Troll") || (cfgqst.RaceKey == "Werewolves") || (cfgqst.RaceKey == "Bears")
										IsPushAttack = 60.0 
										IsStripAttackHeavy = true
										IsDefeatingOnCum = true
										IsDefeatingEasily = true
										;HEAVY  CREATURES: add lot of extra chance and especially for heavy armor
										elseif (cfgqst.RaceKey == "Giants") || (cfgqst.RaceKey == "GiantSpiders") 
										
										IsPushAttack = 80.0 
										IsStripAttackHeavy = true
										IsDefeatingOnStrip = true
										IsSlippingOnNaked = true
										IsSlippingOnCum = true
										;IsDefeatingEasily = true
										;BETTER in stripping Heavy Armor
										;BETTER in defeating on Strip
										;WORSE in Defeating Naked
										;WORSE in Defeating Cumsoaked
										
										elseif (cfgqst.RaceKey == "Mammoths")
										;BETTER in stripping Heavy Armor
										;BETTER in defeating on Strip
										;BETTER in Defeating Cumsoaked
										;WORSE in Defeating Naked

										IsStripAttackHeavy = true
										
										elseif (cfgqst.RaceKey == "Falmers")
										IsDefeatingOnCum = true
										endif 
										
										
										if abPowerAttack 
										NymTrace("IsPowerAttack from: "+cfgqst.RaceKey)
											if IsPowerAttack && Nym()
											Debug.Messagebox("PowerAttack was stuck")
											endif 
										
										IsPowerAttack = true
										IsStripAttackLight = true
										IsStripAttackHeavy = true
										endif
									endif	
								;	if IsStripAttack
								;	Debug.Notification("<font color='#ff0000'>Beware! Your enemy can strip you easily!</font>")
								;	endif

								endif
								
							;	if Nym()
								NymTrace("StartCombatStripA StripRunning:"+StripRunning) 
							
								SendModEvent("StartCombatStrip")
							;	else 
							;	StartCombatStrip = true ;set only false AFTER stripping is done 		
							;	RegisterForSingleUpdate(0.1) 	
							;	endif 
									
							;>>>>>>>>>>>>>>>>>>>>>>>>>> BLEEDOUT >>>>>>>>>>>>>>>>>>>>>>>>>>			
							elseif IsBleedingOut && !IsDownAlready && !IsPoisonDefeat && !cfgqst.NoEssentialPlayer && (cfgqst.Enemy[0] != "none")
							Debug.trace("NAKED DEFEAT playeraliasquest: PlayerDown(from bleedout)")
					
							IsBleedoutDefeat = true
							ProcessHit = false
							PlayerDown("Bleedout04")
							
							endif	
							
							ProcessHit = false
							
						endif
						NymTrace("(END) IsHit = false 01")
						IsHit = false
					endif
					NymTrace("(END) IsHit = false 02")			
					IsHit = false	
				endif	
				NymTrace("(END) IsHit = false 03")
				IsHit = false	
			endif 
			
			/;
		
	
EndEvent


		;/
			;DODGE SOUND
			if PublicPunishment_Sounds_TOGGLE	
			
				if PublicExposure > 0 
				NymTrace("Heartbeat Start")
				Sound mySFX	

				;mySFX = (Game.GetFormFromFile(0x0004DAB0, "Skyrim.esm") As Sound)
				mySFX = (Game.GetFormFromFile(0x0004DAAF, "Skyrim.esm") As Sound)
				
				Sound.StopInstance(instanceID)
				;(Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
				instanceID = mySFX.play(PlayerRef)          ; play mySFX sound from my self
							
				Float TempVolume = PublicExposure as Float
				TempVolume = TempVolume/10   
				NymTrace("Heartbeat Volume: "+TempVolume)
				Sound.SetInstanceVolume(instanceID, TempVolume)         ; play at half volume
				
				;UIHealthHeartbeatBLPSD [SNDR:0004DAAE]
				;UIHealthHeartbeatALPSD [SNDR:0004DAAD]
				
				;UIHealthHeartbeatBLP [SOUN:0004DAB0]
				;UIHealthHeartbeatALP [SOUN:0004DAAF]
				elseif PublicExposure == 0
				NymTrace("Heartbeat Stop")
			;	SetInstanceVolume(instanceID, 1.0)
				
				Sound.StopInstance(instanceID)
				endif 
			endif 
				/;

;-------------------- CIVIL RAPE PROJECT

Event OnCellLoad()
Debug.trace("NAKED DEFEAT playeraliasquest: OnCellLoad()")

	cfgqst.OnCellLoadFunction()
	
EndEvent

;new version
Event OnPlayerLoadGame()

Debug.trace("NAKED DEFEAT playeraliasquest: OnPlayerLoadGame()")

;if Nym()
;PO3_Events_Form.RegisterForActorFallLongDistance(cfgqst.PlayerRef)	;dud net 
;endif 

cfgqst.OnPlayerLoadGameExternal()

	;	cfgqst.ProxActorDetected = 66
	;	cfgqst.ProximityQuestStart("CombatScan")
		
	;	if cfgqst.ProxActorDetected == 66
	;	ProximityQuest.SetStage(1000)
	;	Debug.Trace("NAKED DEFEAT ##ERROR: ProximityQuest Debugged.")
	;	Debug.Messagebox("Proximity Quest Combat Scan did not work")
	;	endif 
	
	if ProcessHit
	NymTrace("ProcessHit RUNNING") 
	ProcessHit = FALSE
	endif 
	if StripRunning
	NymTrace("ProcessHit STRIPRUNNING") 
	StripRunning = FALSE 
	endif 
	
	if StartCombatStrip
	NymTrace("StartCombatStrip RUNNING")
	StartCombatStrip = false
	endif 
	
	if IsPoisonDefeat
	IsPoisonDefeat = false 
	endif 
	
	;if Nym()
		


	;DO nothing
	;else 
	;	if !cfgqst.PlayerMonitorOn			;DISABLE MONITOR 2025
	;	PlayerMonitor()
	;	endif
	;endif 	
	
	RegisterForMenu("ContainerMenu")
		
EndEvent	
 
Event OnMenuOpen(String MenuName)
	Debug.Trace("A registered menu has opened.")
	If MenuName == "ContainerMenu"
		Debug.Trace("ContainerMenu has been registered and has opened.")
			
		ObjectReference TempContainer
		TempContainer = Game.FindClosestReferenceOfAnyTypeInListFromRef(ContainerTestList, cfgqst.PlayerRef,  50)
		;ObjectReference Function GamFindClosestReferenceOfAnyTypeInListFromRef(FormList arBaseObjects, ObjectReference arCenter, float afRadius) global
		if TempContainer
		Debug.Messagebox("A Container was detected!") 
		endif 
		
	EndIf
EndEvent

Function PlayerPunishmentMonitor_Loop(bool showmessage);#scan	;#monitor
	
	if !cfgqst.PlayerMonitorOn
		if showmessage 
		ScreenMessage("NAKED DEFEAT Player Punishment Monitor Started ("+cfgqst.NakedDefeat_ModVersion+")")
		endif 
	cfgqst.PlayerMonitorOn = true
	endif 

	RegisterForSingleUpdate(1.0)	;1 second ticks 

EndFunction 


Function PlayerMonitor()				;	MOVE MONITOR to DEFEATQUEST???  ---> DONE 

;/
if Nym() 
;DO NOTHING 
else 
	
	
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
				
				if Nym()
				;DO nothing
				Utility.Wait(3.0)
				else 
					
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
				endif 
				
				
			
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
						NymTrace("CalmQuest.Start() 4002 StartDefeat()")
						CalmQuest.Start()		;via PublicPunishement
						
						;---------------------------------------------------------------------------------------------
						endif	;not valid for rape
							
					;PLAYER IS BUSY (EXTRA LOOP TIME) -----------------------------------------------		
					else 
					

						if Nym()
						Debug.trace("NAKED DEFEAT playeraliasquest: PlayerMonitor(IndecentWaiting NYM)")
						Utility.Wait(3.0)
						else 
						Debug.trace("NAKED DEFEAT playeraliasquest: PlayerMonitor(IndecentWaiting OLD)")
							int WaitTime = 10
							while WaitTime > 0 && DefeatQuest.IsRunning() && cfgqst.ModEnabled && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning ; && (ftimeCurrent < (ftimeStart + WaitTime))
							Utility.Wait(3.0)
							WaitTime -= 2
							endwhile	
						endif 	
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

	Debug.notification("NAKED DEFEAT: Player Monitor disabled")
	cfgqst.PlayerMonitorOn = false
endif 

/;
EndFunction

;----------------------------------------------------------------------------------------------------------------------------------------------------------------

Function RealWaiting(float WaitTime)	;#waiting		!!!!!!!! ;NOT IN USE  !!!!!!!!

	float ftimeStart = Utility.GetCurrentRealTime()
	float ftimeCurrent = 0
	bool showmessage = false
	

	while cfgqst.ModEnabled && (ftimeCurrent < (ftimeStart + WaitTime))
	Utility.Wait(0.5)
	ftimeCurrent = Utility.GetCurrentRealTime()
	endwhile

	;DebugTrace("ftimeCurrent = "+ftimeCurrent)

EndFunction	

Function IndecentWaiting(float WaitTime)	;#waiting		!!!!!!!! ;NOT IN USE  !!!!!!!!

;	float ftimeStart = Utility.GetCurrentRealTime()
;	float ftimeCurrent = 0
;	bool showmessage = false
	
	
	while (WaitTime > 0) && cfgqst.ModEnabled && !cfgqst.DefeatQuestRunning && !cfgqst.CivilRapeRunning ; && (ftimeCurrent < (ftimeStart + WaitTime))
	Utility.Wait(2.0)
	WaitTime -= 2
;	ftimeCurrent = Utility.GetCurrentRealTime()
	endwhile

	;DebugTrace("ftimeCurrent = "+ftimeCurrent)

EndFunction



;------------------------------------------------------------------------------------------------------------------

Function IndecencyMessage()

Debug.trace("NAKED DEFEAT playeraliasquest: IndecencyMessage()")

float DirtinessValue = 0

	;if Game.GetModByName("Bathing in Skyrim - Main.esp") != 255
;	if cfgqst.ModBiS
;		GlobalVariable Dirtiness = (Game.GetFormFromFile(0x00000DA8, "Bathing in Skyrim - Main.esp") As GlobalVariable)
;		DirtinessValue = (Dirtiness.GetValue()*10)
;	endif

	if cfgqst.PunishCrimeMajor
	ScreenMessage("You will be punished for your major crimes!")
	cfgqst.DefeatTypeGeneral = "AreHumans"
	cfgqst.DefeatType = "Guards"
	cfgqst.DefeatEntranceVia = "Punished for Major Crimes"
	elseif cfgqst.PunishCrimeMinor
	ScreenMessage("You will be punished for your minor crimes!")
	cfgqst.DefeatTypeGeneral = "AreHumans"
	cfgqst.DefeatType = "Guards"
	cfgqst.DefeatEntranceVia = "Punished for Minor Crimes"
	elseif storqst.IsLocalSlave > 0
	
		if storqst.Resting 
		BadMessage("Your break was interrupted")
		storqst.Resting  = false
		endif 
		
		if Nym()
		NymTrace("Your sex slave duties are calling!")
		else
		ScreenMessage("Your sex slave duties are calling!")
		endif 
	
	else 
	ScreenMessage("You will be punished for your indecency!")
	endif 
	;/
	if cfgqst.IsPlayerNaked() && (cfgqst.Naked_Weight > 0) 				;naked
	Debug.Notification("<font color='#ff0000'>Naked like that you just asked to be raped...</font>")
	Debug.Trace("NAKED DEFEAT #msg: Naked like that you just asked to be raped...")
	elseif cfgqst.IsPlayerBarefoot() && (cfgqst.Barefoot_Weight > 0)		;barefoot
	Debug.Notification("<font color='#ff0000'>Only homeless people can't afford shoes. And homeless people have no rights. Get fucked!</font>")
	Debug.Trace("NAKED DEFEAT #msg: Only homeless people can't afford shoes. And homeless people have no rights. Get fucked!")
	elseif DirtinessValue > 10	&& (cfgqst.Dirty_Weight > 0)			;dirtiness
	Debug.Notification("<font color='#ff0000'>Filthy as you are, I bet you like it really dirty. Wait a second...</font>")	
	Debug.Trace("NAKED DEFEAT #msg: Filthy as you are, I bet you like it really dirty. Wait a second...DirtinessValue: "+DirtinessValue)
	elseif cfgqst.PlayerRef.IsSneaking() && (cfgqst.Sneaking_Weight > 0)	;sneaking
	Debug.Notification("<font color='#ff0000'>Dirty little sneaky thief. Just stay on your knees like that, to receive your reward.</font>")
	Debug.Trace("NAKED DEFEAT #msg: Dirty little sneaky thief. Just stay on your knees like that, to receive your reward.")
	elseif cfgqst.PlayerRef.IsRunning() && (cfgqst.Running_Weight > 0)	;running
	Debug.Notification("<font color='#ff0000'>Running so not allowed here! Prepare for some punishment!</font>")
	Debug.Trace("NAKED DEFEAT #msg: Running so not allowed here! Prepare for some punishment!")
	elseif cfgqst.PlayerRef.IsSprinting() && (cfgqst.Sprinting_Weight > 0)	;sprinting
	Debug.Notification("<font color='#ff0000'>Sprinting is not allowed here! Let me help you following the rules.</font>")
	Debug.Trace("NAKED DEFEAT #msg: Sprinting is not allowed here! Let me help you following the rules.")
	elseif cfgqst.IsPlayerCumsoaked() && (cfgqst.Cum_Weight > 0)		;cumsoaked
	Debug.Notification("<font color='#ff0000'>Seems you like beeing soaked with cum. You can be helped...</font>")
	Debug.Trace("NAKED DEFEAT #msg: Seems you like beeing soaked with cum. You can be helped...")
	elseif cfgqst.IsPlayerUnarmed() && (cfgqst.Unarmed_Weight > 0)		;unarmed
	Debug.Notification("<font color='#ff0000'>Seems like you are unable to protect yourself without a weapon. Let me take care of you.</font>")
	Debug.Trace("NAKED DEFEAT #msg: Seems like you are unable to protect yourself without a weapon. Let me take care of you.")
	else									;else
	Debug.Notification("<font color='#ff0000'>You will be punished for public indecency</font>")	
	Debug.Trace("NAKED DEFEAT #msg: You will be punished for public indecency")
	endif
	
	/;
	
EndFunction
		

;---------- VALID FOR RAPE VERSION 02 START (Exposure) -----------------

;Int Exposure = 0
;Bool GuardsPresent = false

Keyword LocTypeTemple
Keyword LocTypeFarm
Keyword LocTypeGuild
Keyword LocTypeMine
Keyword LocTypeJail

Function StartProcessPublicExposure()			;#validation
Debug.trace("NAKED DEFEAT playeraliasquest: StartProcessPublicExposure()")

;This function determines Public Exposure and how it changes based on circumstances
	
	int doCalculate = 0
	;0 = DONT
	;1 = PUBLIC
	;2 = SLAVE 
	
	;if cfgqst.NymBETA
	;	if !storqst.InCity && storqst.CurrentLocName != "Wilderness"
	;	ScreenMessage("Entering "+storqst.CurrentLocName)	;leave City Message is in CheckLocation 
	;	storqst.InCity = true
	;	endif
	;endif	
	
	;cfgqst.WaitLoopPlayerMaintenance()	
	;PlayerSpeedMaintenance()
	
	
	if !LocTypeFarm	
	;fill Keywords
		if !LocTypeTemple						
		LocTypeTemple = (Game.GetFormFromFile(0x0001CD56, "Skyrim.esm") As Keyword)
		endif
		if !LocTypeFarm						
		LocTypeFarm = (Game.GetFormFromFile(0x00018EF0, "Skyrim.esm") As Keyword)
		endif
		
		if !LocTypeGuild				
		LocTypeGuild = (Game.GetFormFromFile(0x0001CD5A, "Skyrim.esm") As Keyword)
		;Winterhold College,
		;Solitude Bards College, 
		;Riften Thieves Guild, 
		;Whiterun Jorvaskr
		endif
		
		if !LocTypeJail				
		LocTypeJail = (Game.GetFormFromFile(0x0001CD59, "Skyrim.esm") As Keyword)
		;only in: Cidhna (Markarth), Whiterun, Riften, Solitude
		endif
		
				
		if !LocTypeMine			
		LocTypeMine = (Game.GetFormFromFile(0x00018EF1, "Skyrim.esm") As Keyword)
		;only in: Cidhna (Markarth), Whiterun, Riften, Solitude
		endif
		
	endif 

	
	cfgqst.ProximityQuestStart("PublicRapeScan")
	
	;if (ProximityQuest.GetStage() == 0) || (ProximityQuest.GetStage() == 1000)
	;ProximityQuest.Start()		;proximityquest start for scan
	;else
;		while cfgqst.ModEnabled && (ProximityQuest.GetStage() > 0) && (ProximityQuest.GetStage() < 1000);
;		Utility.Wait(2.0)
;		endwhile
;	ProximityQuest.Start()
;	endif

	;proximityQuest needs to run BEFORE this, yeahh... but it is also FINISHED before this.
	if cfgqst.PartyInCombat()
	Debug.trace("NAKED DEFEAT playeraliasquest: StartProcessPublicExposure(Combat, abort)")
	
	cfgqst.PublicExposure = 0
		
	;we need to make a proximity scan (combat scan) and check for player Location vs. Which NPC are hostile and IF they have the current TownLocFaction... sigh
	;in this case we auto surrender. 	

		if Nym()
			
			cfgqst.ProximityQuestStart("CityFightScan")
			
			;we set the Proximity Scan to "CityFightScan" 
		;	cfgqst.ProximityScanType = 
			
			;we start the Scan Quest
		;	if (ProximityQuest.GetStage() == 0) || (ProximityQuest.GetStage() == 1000)
		;	ProximityQuest.Start()		;proximityquest start for scan
		;	else
				while cfgqst.ModEnabled && (ProximityQuest.GetStage() > 0) && (ProximityQuest.GetStage() < 1000)
				Utility.Wait(1.0)
				endwhile
		;	ProximityQuest.Start()
		;	endif
			
			;if we 	have hostile guards, we auto surrender 
			if cfgqst.ProxGuardDetected > 0
			cfgqst.KeySurrender("Crime")
			endif 	
		endif 
	
	;SAVE PLACE - HOME
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypePlayerHouse)  
	
		if CurrentLocationTempName != "Home"
		CurrentLocationTempName = "Home"
		storqst.CurrentLocType = "Player House"
		ScreenMessage("Entering save "+CurrentLocationTempName)
		endif 
		NymTrace("#NOTE we are in a Home")
		cfgqst.PublicExposure = 0
		
	
	;SAVE PLACE - TEMPLE
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeTemple)  
	
		if CurrentLocationTempName != "Temple"
		CurrentLocationTempName = "Temple"
		ScreenMessage("Entering save "+CurrentLocationTempName)
		endif 
		NymTrace("#NOTE we are in a Temple")
		cfgqst.PublicExposure = 0
		
		
		
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeBarracks)  
	
		if storqst.IsLocalSlave()
			if CurrentLocationTempName != "Barracks"
			CurrentLocationTempName = "Barracks"
			ScreenMessage("Entering "+CurrentLocationTempName)
			endif 
		endif
		
		doCalculate = 1

	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)  
		
		if storqst.IsLocalSlave()
			if CurrentLocationTempName != "Castle"
			CurrentLocationTempName = "Castle"
			ScreenMessage("Entering "+CurrentLocationTempName)
			endif 
		endif 
		
		doCalculate = 1
		
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeFarm)  
	
		if storqst.IsLocalSlave()
			if CurrentLocationTempName != "Farm"
			CurrentLocationTempName = "Farm"
			ScreenMessage("Entering "+CurrentLocationTempName)
			endif 
		endif 
		
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeInn)  
	
		if storqst.IsLocalSlave()
			if CurrentLocationTempName != "Inn"
			CurrentLocationTempName = "Inn"
			ScreenMessage("Entering "+CurrentLocationTempName)
			endif 	
		endif 
	
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeMine)  
	
		if storqst.IsLocalSlave()
			if CurrentLocationTempName != "Mine"
			CurrentLocationTempName = "Mine"
			String TempMineName = storqst.GetLocationName()
			
			
			ScreenMessage("Entering "+TempMineName+" (a "+CurrentLocationTempName+")")
			;slaveqst.PlaceOreVeins("Iron Ore")
				
				if (TempMineName == "Embershard Mine") || (TempMineName == "Fort Fellhammer") || (TempMineName == "Iron-Breaker Mine") || (TempMineName == "Left Hand Mine") || (TempMineName == "Northwind Mine") || (TempMineName == "Rockwallow Mine") || (TempMineName == "Whistling Mine")
				;needs improvement/detection method
				slaveqst.PlaceOreVeins_NEW("Iron Ore")
				
				elseif (TempMineName == "Quicksilver Mine")  
				slaveqst.PlaceOreVeins_NEW("Quicksilver Ore")
				endif 	
			endif
		endif 	

	else
		;only Leave "Save" Messages
		if CurrentLocationTempName == "Home"
		
		ScreenMessage("Left save "+CurrentLocationTempName)
		
			if storqst.InCity
			storqst.CurrentLocType = "City"
			else 
			storqst.CurrentLocType = "Wild"
			endif 
		
		elseif CurrentLocationTempName == "Temple"
		ScreenMessage("Left save "+CurrentLocationTempName)
		
		elseif CurrentLocationTempName == "Mine"
		ScreenMessage("Left the "+CurrentLocationTempName)
		slaveqst.RemoveOreVeins("Iron Ore")
		endif 
		
		CurrentLocationTempName = "empty"
		
		doCalculate = 1
	;	if storqst.IsLocalSlave()
	;	NymTrace("CalculateSlaveExposure()")
	;	CalculateSlaveExposure()
	;	else 
	;;	NymTrace("CalculatePublicExposure()")
	;	cfgqst.CalculatePublicExposure()
	;	endif 
	endif

NymTrace("storqst.IsLocalSlave(): "+storqst.IsLocalSlave())
	
	if storqst.IsLocalSlave()
	doCalculate = 2
	endif 
	
	NymTrace("doCalculate: "+doCalculate)

	if doCalculate == 1
	NymTrace("CalculatePublicExposure()")
	cfgqst.CalculatePublicExposure()
	elseif doCalculate == 2
	NymTrace("CalculateSlaveExposure()")
	CalculateSlaveExposure()
	endif 
	
EndFunction	



Function StartProcessWildernessExposure()			;#validation
Debug.trace("NAKED DEFEAT playeraliasquest: StartProcessWildernessExposure()")
	
	;NOT AT THE MOMENT 
	;/
	if (ProximityQuest.GetStage() == 0) || (ProximityQuest.GetStage() == 1000)
	ProximityQuest.Start()		;proximityquest start for scan
	else
		while cfgqst.ModEnabled && (ProximityQuest.GetStage() > 0) && (ProximityQuest.GetStage() < 1000)
		Utility.Wait(2.0)
		endwhile
	ProximityQuest.Start()
	endif
	
	cfgqst.ProximityQuestStart("CityFightScan")

	cfgqst.CalculatePublicExposure()
	
	Debug.Trace("NAKED DEFEAT WildernessExposure: "+cfgqst.PublicExposure)
	/;
	
EndFunction	

Bool CurfewWarning = false
	
Function CalculateSlaveExposure()			;#CalculateSlaveExposure()
	NymTrace("CalculateSlaveExposure(0713)")
	GlobalVariable GameHour

	GameHour = (Game.GetFormFromFile(0x00000038, "Skyrim.esm") As GlobalVariable)	
	float CurrentHour = GameHour.GetValue()
	
	NymTrace("CurrentHour: "+CurrentHour)

	float DirtinessValue = 0
	int tempInt
	string tempInfomessage = "none"
			
	string tempInfomessageDirty = ""
	string tempInfomessageMovement = ""
	string tempInfomessageNaked = ""
	string tempInfomessageCum = ""
	string tempInfomessageWeapon = ""
	
	string tempInfomessage1 = ""
	string tempInfomessage2 = ""
	string tempInfomessage3 = ""
	string tempInfomessage4 = ""
	string tempInfomessage5 = ""
	
	if cfgqst.PublicExposure < 0
	cfgqst.PublicExposure = 0
	endif
	
	;ProcessCrimeGold()
	
	int ExposureBefore = cfgqst.PublicExposure
	int ExposureAfter
	Bool SlaveBusy = false
	
	;Check Daily Tasks (Good Slave)
	slaveqst.CompletedDayTasks > 0
	;add slave level 
	
	if Nym() && cfgqst.PlayerRef.IsTrespassing() ;trespassing and we have been caught!
	NymMessage("Trespassing!")
	endif 
	
	if storqst.SpeedReduction == 35
	cfgqst.PublicExposure -= Utility.RandomInt(0,2)
	tempInfomessage2 = "Slave bowing (reduce)"
	elseif storqst.SpeedReduction == 50
	tempInfomessage2 = "Slave crawling (reduce)"
	cfgqst.PublicExposure -= Utility.RandomInt(1,3)
	endif 
	
	int GoodSlaveChance = slaveqst.CompletedDayTasks*10

	;Grace Period  (-)
	if storqst.GracePeriodSlave > 0
	storqst.GracePeriodSlave -= 1
	NymMessage("Grace Period:" +storqst.GracePeriodSlave)
		if storqst.GracePeriodSlave == 0
		ScreenMessage("Grace Period is over")
		endif 
	;Working Slave  (-)
	elseif storqst.SlaveAtWork || slaveqst.IsSlaveCurrentlyWorking() ;&& D100(90)
	NymTrace("#NOTE Slave At Work")
	
	tempInfomessage1 = "Slave working (reduce)"
	NymTrace("cfgqst.PublicExposure BEFORE: "+cfgqst.PublicExposure)
	cfgqst.PublicExposure -= Utility.RandomInt(1,3)
	NymTrace("cfgqst.PublicExposure AFTER: "+cfgqst.PublicExposure)
	;Fucked Slave (-)
	elseif cfgqst.IsFucking(cfgqst.PlayerRef)
	NymTrace("#NOTE Slave Is Fucking Work")

	cfgqst.PublicExposure -= Utility.RandomInt(1,3)
	
	;Good Slave (-)
	elseif slaveqst.CompletedDayTasks > 0 && D100(GoodSlaveChance)
	NymTrace("slaveqst.CompletedDayTasks: "+slaveqst.CompletedDayTasks)
	cfgqst.PublicExposure -= Utility.RandomInt(1,3)
	tempInfomessage1 = "Good Slave (reduce)"

	;Hiding Slave (+)
	elseif cfgqst.ProxActorDetected == 0
			
	tempInfomessage1 = "Slave is lazy and hiding"
	cfgqst.PublicExposure += Utility.RandomInt(1,3)

	;Public Behaviour (+)
	elseif (cfgqst.ProxActorDetected > 0.0) && !SlaveBusy
	NymTrace("CalculateSlaveExposure(ProxActorDetected TRUE)")
	
		;---- SEX (not fucking is punished) -------------------------------
		
		if !cfgqst.IsFucking(cfgqst.PlayerRef) && D100(50)
		NymTrace("CalculateSlaveExposure(Player is NOT fucked)")		
		cfgqst.PublicExposure += 1
		
		
		tempInfomessage1 = "Not Fucking"

		elseif slaveqst.Pretending && D100(10 - storqst.Exhaustion + cfgqst.PublicExposure)
		
		SendModEvent("StartBodySearch")
		
		endif 
		
		if !storqst.IsPlayerCollared()
		NymTrace("CalculateSlaveExposure(Player is NOT Collared)")		
		cfgqst.PublicExposure += 5
		
		tempInfomessage2 = "Not Collared"	
		endif 
		;---- DIRTY (Slaves can get dirtier (only 50% chance for dirty check) -------------------------------
		
		float DirtinessCurrent = cfgqst.GetDirtiness()	
		
		if (slaveqst.SlaveRule == 10) && !storqst.SlaveAtWork && !cfgqst.IsDefeatRunning()	;SLAVE RULE: Stay Clean!
			
			if DirtinessCurrent > 10 && DirtinessCurrent < 20
			cfgqst.PublicExposure += 5
			tempInfomessage3 = "Too Dirty"	
			CalculateSlaveGold("Increase", 0)
			BadMessage("You do not follow your daily rule!")

			elseif DirtinessCurrent >= 20
			tempInfomessage3 = "Way Too Dirty"	
			CalculateSlaveGold("Massive Increase", 0)
			BadMessage("You do not follow your daily rule!")
			endif  
			
		elseif (slaveqst.SlaveRule == 11) && !storqst.SlaveAtWork && !cfgqst.IsDefeatRunning()	;SLAVE RULE: Stay Dirty!
		
			if DirtinessCurrent > 20 && DirtinessCurrent < 100
			cfgqst.PublicExposure += 5
			tempInfomessage3 = "Too Dirty"	
			CalculateSlaveGold("Increase", 0)
			BadMessage("You do not follow your daily rule!")

			elseif DirtinessCurrent <= 20
			tempInfomessage3 = "Way Too Clean"	
			CalculateSlaveGold("Massive Increase", 0)
			BadMessage("You do not follow your daily rule!")
			endif  

		
		elseif D100(50 )&& storqst.InCity && (DirtinessCurrent > cfgqst.PublicPunishment_DirtThreshold_VALUE) 		;checks bathing mods inside function
		
			if (Utility.RandomFloat(0.0, cfgqst.ExposureChance)) < cfgqst.Dirty_Weight		
			cfgqst.PublicExposure +=cfgqst.Exposurefrom_DIRTINESS_VALUE

			tempInfomessage3 = "Dirty"	
			endif  
			
		endif 
		
		
		if Nym() && cfgqst.PlayerRef.IsTrespassing() ;trespassing and we have been caught!
		;NymMessage("Trespassing!")
		CalculateSlaveGold("Massive Increase", 0)
		storqst.SlavePunishmentLevel += (Utility.RandomInt(1,2))
		endif 
		
	
		;---- MOVEMENT 02 Daily Rules (Gag/Crawling/Bowing)  -------------------------------
		
		if (slaveqst.SlaveRule == 40)  ;check GAG
		
			if cfgqst.IsPlayerGagged()
			;rule obeyed
			else 
			tempInfomessage4 = "Not Gagged"
			CalculateSlaveGold("Increase", 0)
			BadMessage("You do not follow your daily rule!")
			endif 
		
		
		elseif (slaveqst.SlaveRule == 1) && !storqst.SlaveAtWork && !cfgqst.IsDefeatRunning() ;Crawl 
		
			if !storqst.NakedRunning && !cfgqst.PlayerRef.IsOverEncumbered()  
			cfgqst.PublicExposure += 10
			tempInfomessage4 = "Cheating! (not overencumbered)"
			CalculateSlaveGold("Massive Increase", 0)
			BadMessage("You were caught cheating on your daily rule!")
			elseif !cfgqst.PlayerRef.IsInFaction(cfgqst.CrawlFaction)
			tempInfomessage4 = "Not Crawling"
			CalculateSlaveGold("Increase", 0)
			BadMessage("You do not follow your daily rule!")
			endif 
			
		elseif (slaveqst.SlaveRule == 2) && !storqst.SlaveAtWork && !cfgqst.IsDefeatRunning() ;Bowing 
			
			if !storqst.NakedRunning && !cfgqst.PlayerRef.IsOverEncumbered()
			cfgqst.PublicExposure += 10
			tempInfomessage4 = "Cheating! (not overencumbered)"
			CalculateSlaveGold("Massive Increase", 0)
			BadMessage("You were caught cheating on your daily rule!")
			elseif !cfgqst.PlayerRef.IsInFaction(storqst.BowingFaction)
			tempInfomessage4 = "Not Bowing"
			BadMessage("You do not follow your daily rule!")
			CalculateSlaveGold("Increase", 0)
			endif 
		endif 	
		
		if storqst.Resting 
		NymTrace("Slave caught Resting!")
		NymTrace("storqst.SlavePunishmentLevel +1")
		storqst.SlavePunishmentLevel += 1
		tempInfomessage4 = "Resting"
		cfgqst.PublicExposure += Utility.RandomInt(3,5)
		endif 

		;---- MOVEMENT 02 Sprinting  -------------------------------		/!\ Check Sprinting then Running or we always run... /!\ 
		if cfgqst.PlayerRef.IsSprinting() && storqst.InCity && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Sprinting_Weight)		;sprinting - 15.0

		cfgqst.PublicExposure +=cfgqst.Exposurefrom_SPRINTING_VALUE	
		cfgqst.PublicExposure += 2	
		tempInfomessage4 = "Sprinting"
		CalculateSlaveGold("Increase", 0)

		;---- MOVEMENT 03 - Running -------------------------------	
		elseif cfgqst.PlayerRef.IsRunning() && storqst.InCity && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Running_Weight)		;running - 10.0
		cfgqst.PublicExposure +=cfgqst.Exposurefrom_RUNNING_VALUE
		cfgqst.PublicExposure += 1
		tempInfomessage4 = "Running"

		;---- MOVEMENT 04 - Sneaking -------------------------------	
		elseif cfgqst.PlayerRef.IsSneaking() && storqst.InCity && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Sneaking_Weight)		;sneaking - 5.0
		cfgqst.PublicExposure +=cfgqst.Exposurefrom_SNEAKING_VALUE
		cfgqst.PublicExposure += 3
		tempInfomessage4 = "Sneaking"
		CalculateSlaveGold("Increase", 0)
		endif 

		if (slaveqst.SlaveRule == 20) && !cfgqst.IsDefeatRunning() ;Wear Boots 
		
			Form WornBoots = cfgqst.PlayerRef.GetWornForm(0x00000080)
			if !WornBoots
			if tempInfomessage1 == ""
			tempInfomessage1 = "No Boots"
			elseif tempInfomessage2 == ""
			tempInfomessage2 = "No Boots"
			elseif tempInfomessage3 == ""
			tempInfomessage3 = "No Boots"
			elseif tempInfomessage4 == ""
			tempInfomessage4 = "No Boots"
			elseif tempInfomessage5 == ""
			tempInfomessage5 = "No Boots"
			endif
			cfgqst.PublicExposure += 5
			BadMessage("You do not follow your daily rule!")
			CalculateSlaveGold("Increase", 0)
			endif 
		
		endif 
		
		;---- CLOTHING 01: Slaves must be Naked -------------------------------		
		if !cfgqst.IsPlayerCompletelyNaked() && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Naked_Weight)				;naked - 15.0
		
		cfgqst.PublicExposure +=cfgqst.Exposurefrom_NUDITY_VALUE
		cfgqst.PublicExposure += 3
	
		tempInfomessage5 = "Not Naked"

		endif
	 
		;---- Cumsoaked (50% less exposure for slaves) -------------------------------
		if D100(50) && cfgqst.IsPlayerCumsoaked() && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Cum_Weight)			;cumsoaked - 15.0
			
		cfgqst.PublicExposure +=cfgqst.Exposurefrom_CUMSOAKED_VALUE
		
			if tempInfomessage1 == ""
			tempInfomessage1 = "Cumsoaked"
			elseif tempInfomessage2 == ""
			tempInfomessage2 = "Cumsoaked"
			elseif tempInfomessage3 == ""
			tempInfomessage3 = "Cumsoaked"
			elseif tempInfomessage4 == ""
			tempInfomessage4 = "Cumsoaked"
			elseif tempInfomessage5 == ""
			tempInfomessage5 = "Cumsoaked"
			endif

		endif
		
		
		;---- Curfew ---------------------------------------------------------------------------
		
		NymTrace("storqst.DarkNight: "+storqst.DarkNight)
		NymTrace("cfgqst.ProxGuardDetected: "+cfgqst.ProxGuardDetected)
	
		if storqst.DarkNight && (cfgqst.ProxGuardDetected > 0) ; (CurrentHour >= 22) && (CurrentHour <= 8) 
		
			if cfgqst.PlayerRef.IsInInterior()
			cfgqst.PublicExposure += Utility.RandomInt(0,1)
			else 
			cfgqst.PublicExposure += 5
				if tempInfomessage1 == ""
				tempInfomessage1 = "Outside during Curfew"
				elseif tempInfomessage2 == ""
				tempInfomessage2 = "Outside during Curfew"
				elseif tempInfomessage3 == ""
				tempInfomessage3 = "Outside during Curfew"
				elseif tempInfomessage4 == ""
				tempInfomessage4 = "Outside during Curfew"
				elseif tempInfomessage5 == ""
				tempInfomessage5 = "Outside during Curfew"
				endif
			endif 
		
		endif 
					
		;---- Weapon (not allowed) -------------------------------	
		if !cfgqst.IsPlayerUnarmed() && (Utility.RandomFloat(0.0, cfgqst.ExposureChance) < cfgqst.Unarmed_Weight)			;unarmed - 5.0
		cfgqst.PublicExposure += 10
		CalculateSlaveGold("Increase", 0)
			if tempInfomessage1 == ""
			tempInfomessage1 = "Armed"
			elseif tempInfomessage2 == ""
			tempInfomessage2 = "Armed"
			elseif tempInfomessage3 == ""
			tempInfomessage3 = "Armed"
			elseif tempInfomessage4 == ""
			tempInfomessage4 = "Armed"
			elseif tempInfomessage5 == ""
			tempInfomessage5 = "Armed"
			endif
		endif 
		
		;---- Combat Stance (not allowed) -------------------------------
		
		if cfgqst.PlayerRef.IsWeaponDrawn()
		cfgqst.PublicExposure += 20
			
		CalculateSlaveGold("Increase", 0)	
			if tempInfomessage1 == ""
			tempInfomessage1 = "Weapon drawn"
			elseif tempInfomessage2 == ""
			tempInfomessage2 = "Weapon drawn"
			elseif tempInfomessage3 == ""
			tempInfomessage3 = "Weapon drawn"
			elseif tempInfomessage4 == ""
			tempInfomessage4 = "Weapon drawn"
			elseif tempInfomessage5 == ""
			tempInfomessage5 = "Weapon drawn"
			endif
		endif 
		
		; ----- No Task -------------------------------------

		if (slaveqst.ActiveSlaveTasks == 0) && !storqst.DarkNight && D100(50)
		cfgqst.PublicExposure += 1
		endif 

		ExposureAfter = cfgqst.PublicExposure
		ExposureAfter -= ExposureBefore

		if ExposureAfter > 0
					
			if cfgqst.PublicPunishment_Sounds_TOGGLE
			storqst.PlayerSoundToPlay = "Breathing"
			SendModEvent("Moan")
			Utility.Wait(0.1)
			storqst.PlayerSoundToPlay = "Breathing"
			endif 

		;if we behave, exposure can slowly decrease again, even with actors around
	
		endif
		
		if cfgqst.PublicExposure < 0
		cfgqst.PublicExposure = 0
		endif		

	endif

	Debug.Trace("NAKED DEFEAT cfgqst.PublicExposure: "+cfgqst.PublicExposure)
	
	if !CurfewWarning && CurrentHour > 21 && (CurrentHour < 22)
	CurfewWarning = true
		if Nym()
		cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Vampire Sunlight", 0.5)
		endif
	endif 
	
	if (CurrentHour >= 22) && (CurrentHour <= 24) || (CurrentHour >= 0)  && (CurrentHour <= 6) 
	CurfewWarning = false	
		if !storqst.DarkNight
		storqst.DarkNight = true 
			if Nym()
			cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Vampire Sunlight", 1.0)
			endif 
			
		if Nym()	
		Message.ResetHelpMessage("CurfewBegins")
		storqst.MSG_CurfewBegins.ShowAsHelpMessage("CurfewBegins", 4, 0, 1)	
		else 
		ScreenMessage("Curfew begins.") 
		endif 
		
		
		slaveqst.ResetServedActors()
		slaveqst.CompleteSlaveRule()
		
			if slaveqst.CompletedDayTasks < 1 && storqst.GracePeriodSlave == 0
			slaveqst.CompletedDayTasks = 0
			ScreenMessage("You have been a very lazy slave today")
			cfgqst.PublicExposure += 20
			CalculateSlaveGold("Massive Increase", 0)
			endif 
		endif 
		

	elseif storqst.DarkNight
	slaveqst.CompletedDayTasks = 0
	storqst.DarkNight = false 

		if Nym()
		cfgqst.PlaySoundOnActor(cfgqst.PlayerRef, "Vampire Sunlight", 1.0)
		endif
		
		if Nym()	
		Message.ResetHelpMessage("CurfewEnds")
		storqst.MSG_CurfewEnds.ShowAsHelpMessage("CurfewEnds", 4, 0, 1)	
		else 
		ScreenMessage("Curfew begins.") 
		endif
			
	;ScreenMessage("Curfew is over.") 
	slaveqst.ResetServedActors()
	cfgqst.PublicExposure -= 10
	endif 
	
	;HEARTBEATSOUND 			
	if cfgqst.PublicPunishment_Sounds_TOGGLE	
	
		if cfgqst.PublicExposure > 0 
		NymTrace("Heartbeat Start")
	;	Sound mySFX	

		;mySFX = (Game.GetFormFromFile(0x0004DAB0, "Skyrim.esm") As Sound)
	;	mySFX = (Game.GetFormFromFile(0x0004DAAF, "Skyrim.esm") As Sound)
			
	;		if instanceID
	;		Sound.StopInstance(instanceID)
	;		endif 
		;(Game.GetFormFromFile(0x0081F780, "DemonicCreatures.esp") As Keyword)
	;	instanceID = mySFX.play(cfgqst.PlayerRef)          ; play mySFX sound from my self
					
	;	Float TempVolume = cfgqst.PublicExposure as Float
	;	TempVolume = TempVolume/10   
		;NymTrace("Heartbeat Volume: "+TempVolume)
		
		cfgqst.StartHeartBeat(0, 0)
		
		;Sound.SetInstanceVolume(instanceID, TempVolume)         ; play at half volume
		
		;UIHealthHeartbeatBLPSD [SNDR:0004DAAE]
		;UIHealthHeartbeatALPSD [SNDR:0004DAAD]
		
		;UIHealthHeartbeatBLP [SOUN:0004DAB0]
		;UIHealthHeartbeatALP [SOUN:0004DAAF]
		elseif cfgqst.PublicExposure == 0
		
		cfgqst.StopHeartBeat()
		endif 
	endif 
		
	if cfgqst.PublicExposure < 0
	cfgqst.PublicExposure = 0
	endif 
	;if GuardsPresent 
	;Debug.Trace("NAKED DEFEAT CalculateSlaveExposure: GuardsPresent TRUE")
	;CheckCrimePunishment()	
	;endif
	if Nym() && (cfgqst.PublicExposure == ExposureBefore) 
	;no message
	else 
	InfoMessage("Slavery Exposure: "+cfgqst.PublicExposure+" - Reason: "+tempInfomessage1+" - "+tempInfomessage2+" - "+tempInfomessage3+" - "+tempInfomessage4+" - "+tempInfomessage5)
	endif 
	NymTrace("cfgqst.PublicExposure: "+cfgqst.PublicExposure)
	;endif
	
EndFunction


Bool Function PlayerValidForWildernessRape()			;#validation
Debug.trace("NAKED DEFEAT playeraliasquest: PlayerValidForWildernessRape()")	

if Nym() && cfgqst.Indecency
	
	int TempExtra = cfgqst.GetExtra()
	
	if (cfgqst.PublicExposure == 0) && IsPlayerUneasy
	ScreenMessage("You feel save... for now...")
	storqst.Sound_Heartbeat_Volume = storqst.Sound_Heartbeat_Volume - 0.2
		if storqst.Sound_Heartbeat_Volume < 0
		storqst.Sound_Heartbeat_Volume = 0
		endif 
	IsPlayerUneasy = false
	endif
	
	if (cfgqst.PublicExposure > 0) 
	
		if D100(90)
		IsPlayerUneasy = true
		ScreenMessage("You feel uneasy... Beware!")
		storqst.Sound_Heartbeat_Volume = storqst.Sound_Heartbeat_Volume + 0.2
		return false 
		else 
		IsPlayerUneasy = true
		endif 
	endif 
	
	if IsPlayerUneasy
		cfgqst.PublicExposure = cfgqst.PublicExposure + cfgqst.PublicExposure + cfgqst.PublicExposure + cfgqst.PublicExposure + cfgqst.PublicExposure + cfgqst.PublicExposure
		;cfgqst.TCAIstatus = false		
		if !Busy()  
			if (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMajorCrime()
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			elseif (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMinorCrime()
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			elseif (cfgqst.ProxActorDetected > 0.0) && Utility.RandomInt(1,100) <= (cfgqst.PublicExposure+cfgqst.GetExtra()) 
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			else
			return false
			endif
		else
		;NOT valid for Rape
		return false
		endif
	endif
else
Debug.trace("NAKED DEFEAT playeraliasquest: PUBLIC PUNISHMENT is OFF")
return false	
endif

EndFunction


String Function GetCurrentLocationName()
	
	return CurrentLocationTempName

EndFunction 

String CurrentLocationTempName = "empty"
	
;Bool ViolentCrime = false	
;Bool MinorCrime = false
	
bool IsPlayerUneasy = false

Bool Function IsPlayerUneasy()

if IsPlayerUneasy
return true
else 
return FALSE
endif 

EndFunction



;>>>>>>>>>>>>>>>PUBLIC PUNISHMENT ----- VALIDATION final Poll <<<<<<<<<<<<<<<<<<<<<<<<<	
	
Bool Function PlayerValidForRape()			;#validation
Debug.trace("NAKED DEFEAT playeraliasquest: PlayerValidForRape()")	


if storqst.SlavePunishmentLevel > 0 ;<<--- needs to be changed!!! 
NymTrace("PlayerValidForRape(TRUE --> Slave Punishment Level)")
;return true
endif 

if storqst.GracePeriodSlave > 0
NymTrace("PlayerValidForRape(FALSE --> Grace Period)")
return false

elseif storqst.IsLocalSlave() && (storqst.SlaveAtWork || (slaveqst.SlaveIsOccupied > 0))
NymTrace("PlayerValidForRape(FALSE -->  Slave Busy)")
return false

elseif cfgqst.Indecency
	
	int TempExtra = cfgqst.GetExtra()
	
	if (cfgqst.PublicExposure == 0) && IsPlayerUneasy
	ScreenMessage("You feel save... for now...")
	
		storqst.Sound_Heartbeat_Volume = storqst.Sound_Heartbeat_Volume - 0.2
		if storqst.Sound_Heartbeat_Volume < 0
		storqst.Sound_Heartbeat_Volume = 0
		endif 
	
	IsPlayerUneasy = false
	endif
	
	if UI.IsMenuOpen("Dialogue Menu")
		if Nym() 
		ScreenMessage("You are busy talking.")
		endif 
		NymTrace("PlayerValidForRape(FALSE --> Talking)")
	return false	
	endif 
	

	;first check up to play warning
	if !IsPlayerUneasy
		if !Busy()
			if (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMajorCrime()	;no warning, major crime does not care
				cfgqst.StopHeartBeat()
				return true	

			elseif (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMinorCrime()
			
				if D100(5) ;5% uncertainty remains
				IsPlayerUneasy = false
				ScreenMessage("They arrest you without warning!")
				cfgqst.StopHeartBeat()
				return true	
				else
				IsPlayerUneasy = true
				ScreenMessage("You feel uneasy...")
				storqst.Sound_Heartbeat_Volume = storqst.Sound_Heartbeat_Volume+0.2
				return false	
				endif
			elseif (cfgqst.ProxActorDetected > 0.0) && D100(cfgqst.PublicExposure+TempExtra) ;&& Utility.RandomInt(1,100) <= (cfgqst.PublicExposure+TempExtra) 
				
				
				int Uncertainty = 5+TempExtra
				
				if storqst.IsLocalSlave > 0
				Uncertainty = 50
				endif 

				if D100(Uncertainty) ;5% uncertainty remains
				IsPlayerUneasy = false
				ScreenMessage("They grab you without warning!")
				cfgqst.StopHeartBeat()
				return true	
				else
				IsPlayerUneasy = true
				ScreenMessage("You feel uneasy...")
				storqst.Sound_Heartbeat_Volume = storqst.Sound_Heartbeat_Volume+0.2
				return false	
				endif
			else
			return false
			endif
		else
		;NOT valid for Rape
		return false
		endif

	;second check up after we were warned			
	elseif IsPlayerUneasy
		;cfgqst.TCAIstatus = false		
		if !Busy()  
			if (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMajorCrime()
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			elseif (cfgqst.ProxGuardDetected > 0.0) && cfgqst.IsMinorCrime()
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			elseif (cfgqst.ProxActorDetected > 0.0) && Utility.RandomInt(1,100) <= (cfgqst.PublicExposure+cfgqst.GetExtra()) 
			IsPlayerUneasy = false ;gets punished! 
			cfgqst.StopHeartBeat()
			return true	
			else
			return false
			endif
		else
		;NOT valid for Rape
		return false
		endif
	endif
else
Debug.trace("NAKED DEFEAT playeraliasquest: PUBLIC PUNISHMENT is OFF")
return false	
endif

EndFunction
		
;---------- VALID FOR RAPE VERSION 02 END -----------------		
		

 
Bool Function CurrentLocationHasKeyword(ObjectReference akRef, Keyword akKeyword)
        Location kCurrentLoc = akRef.GetCurrentLocation()
        if (kCurrentLoc == none)
                return false
        endif
 
        if kCurrentLoc.HasKeyword(akKeyword)
                return true
        else
                return false
        endif
EndFunction


Bool Function IsCurrentLocation(String sLocType)

	NymTrace("IsCurrentLocation("+sLocType+")")
	
	if sLocType == "Inn"
	return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeInn)
	elseif sLocType == "Home"
	return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypePlayerHouse)	
	
	elseif sLocType == "Mine"
	return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeMine)
	
	elseif sLocType == "Barracks"
		;GUIDE: most Barracks are in the Castle... and they have no Way to be detected it seems.
		;so this detection has to become alot more elaborate in the future.
		;there are 9 cities (3 with Barracks --> Morthal, Markarth, Falkreath (and Dragonbridge)
		;no Barracks: 
		if storqst.CurrentLocName == "Riften"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		elseif storqst.CurrentLocName == "Whiterun"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		elseif storqst.CurrentLocName == "Solitude"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		elseif storqst.CurrentLocName == "Dawnstar"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		elseif storqst.CurrentLocName == "Windhelm"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		elseif storqst.CurrentLocName == "Winterhold"
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		else 
		;	if CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
		;	Location kCurrentLoc = cfgqst.PlayerRef.GetCurrentLocation()
		;	String LocationName = kCurrentLoc.GetName()
			
		;	NymTrace("Current Locations Name: "+ LocationName)
		;	endif 
		
	
		return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeBarracks)
		endif 
	elseif sLocType == "Castle"
	return CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeCastle)
	else 
	NymTrace("IsCurrentLocation(NONE)")
	return false 
	endif 

EndFunction 

	; https://www.creationkit.com/index.php?title=HasKeyword_-_Form
;add LastLocation check here? should speed this up? <--- needed to clear exposure on sudden city change
Location CurrentLocation = none
Location LastLocation = none


Quest SSQuest

Function ApplyRandomBounty()

;/

if Thane: reduced chance to get bounty


/; 

Bool Bounty = false
		
if Bounty && Nym()
		int LevelPlayer = cfgqst.PlayerRef.GetLevel()
		Debug.trace("NAKED DEFEAT playeraliasquest: ApplyRandomBounty() - Player Level: "+LevelPlayer)

		;if cfgqst.IsNymrasGame()	
		if D100(LevelPlayer)	
			;int RandomBounty = 5000
			int RandomBounty = Utility.RandomInt(500, 5000)
			cfgqst.PublicExposure = Utility.RandomInt(1,3) 
			
			Debug.trace("NAKED DEFEAT playeraliasquest: ApplyRandomBounty() - Bounty Applied: "+RandomBounty)
			;WHITERUN - WHITERUN 	
			if CurrentLocation == LocationWhiterun
			cfgqst.Whiterun_CrimeGold_Major_Internal += RandomBounty 
			;WHITERUN - RIVERWOOD  
			elseif CurrentLocation == LocationRiverwood
			cfgqst.Whiterun_CrimeGold_Major_Internal += RandomBounty 
			;WHITERUN - RORIKSTEAD  	
			elseif CurrentLocation == LocationRorikstead
			cfgqst.Whiterun_CrimeGold_Major_Internal += RandomBounty 
			
			;FALKREATH - FALKREATH 
			elseif CurrentLocation == LocationFalkreath
			cfgqst.Falkreath_CrimeGold_Major_Internal += RandomBounty
			
			;EASTMARCH - WINDHELM 
			elseif CurrentLocation == LocationWindhelm
			cfgqst.Eastmarch_CrimeGold_Major_Internal += RandomBounty
			elseif CurrentLocation == LocationKynesgrove
			cfgqst.Eastmarch_CrimeGold_Major_Internal += RandomBounty
			
			;HAAFINGAR - SOLITUDE  	
			elseif CurrentLocation == LocationSolitude
			cfgqst.Haafingar_CrimeGold_Major_Internal += RandomBounty
			;HAAFINGAR - DRAGONBRIDGE  	
			elseif CurrentLocation == LocationDragonbridge
			cfgqst.Haafingar_CrimeGold_Major_Internal += RandomBounty
			
			;HJAALMARCH - MORTHAL   	
			elseif CurrentLocation == LocationMorthal
			cfgqst.Hjaalmarch_CrimeGold_Major_Internal += RandomBounty
			;THE PALE - DAWNSTAR   		
			elseif CurrentLocation == LocationDawnstar
			cfgqst.ThePale_CrimeGold_Major_Internal += RandomBounty		
			;THE REACH - MARKARTH   			
			elseif CurrentLocation == LocationMarkarth
			cfgqst.TheReach_CrimeGold_Major_Internal += RandomBounty	
			;THE RIFT - RIFTEN  		
			elseif CurrentLocation == LocationRiften
			cfgqst.TheRift_CrimeGold_Major_Internal += RandomBounty
			;WINTERHOLD - WINTERHOLD  		
			elseif CurrentLocation == LocationWinterhold
			cfgqst.Winterhold_CrimeGold_Major_Internal += RandomBounty
			endif 
		endif 
	endif 
	
EndFunction 

Bool Function PriceForFreedomPaid()

			;WHITERUN - WHITERUN 	
			if CurrentLocation == LocationWhiterun 
			NymTrace("We Are in FUCKING WhiteRun")
				if storqst.SlaveGold_Whiterun <= 0
				NymTrace("storqst.SlaveGold_Whiterun = "+storqst.SlaveGold_Whiterun)
				return true 
				else 
				return false 
				endif 
			
			;FALKREATH - FALKREATH 
			elseif CurrentLocation == LocationFalkreath
				NymTrace("storqst.SlaveGold_Falkreath = "+storqst.SlaveGold_Falkreath)
				if storqst.SlaveGold_Falkreath <= 0
				
				return true 
				else 
				return false 
				endif 
			;EASTMARCH - WINDHELM 
			elseif CurrentLocation == LocationWindhelm
			NymTrace("storqst.SlaveGold_Windhelm = "+storqst.SlaveGold_Windhelm)
				if storqst.SlaveGold_Windhelm <= 0
				return true 
				else 
				return false 
				endif 
			;HAAFINGAR - SOLITUDE  	
			elseif CurrentLocation == LocationSolitude
			NymTrace("storqst.SlaveGold_Solitude = "+storqst.SlaveGold_Solitude)
				if storqst.SlaveGold_Solitude <= 0
				return true 
				else 
				return false 
				endif 	
			elseif CurrentLocation == LocationMorthal
			NymTrace("storqst.SlaveGold_Morthal = "+storqst.SlaveGold_Morthal)
				if storqst.SlaveGold_Morthal <= 0
				return true 
				else 
				return false 
				endif 
			;THE PALE - DAWNSTAR   		
			elseif CurrentLocation == LocationDawnstar
			NymTrace("storqst.SlaveGold_Dawnstar = "+storqst.SlaveGold_Dawnstar)
				if storqst.SlaveGold_Dawnstar <= 0
				return true 
				else 
				return false 
				endif 
			;THE REACH - MARKARTH   			
			elseif CurrentLocation == LocationMarkarth
			NymTrace("storqst.SlaveGold_Markarth = "+storqst.SlaveGold_Markarth)
				if storqst.SlaveGold_Markarth <= 0
				return true 
				else 
				return false 
				endif 
				
			;THE RIFT - RIFTEN  		
			elseif CurrentLocation == LocationRiften
			NymTrace("storqst.SlaveGold_Riften = "+storqst.SlaveGold_Riften)
				if storqst.SlaveGold_Riften <= 0
				return true 
				else 
				return false 
				endif 
				
			;WINTERHOLD - WINTERHOLD  		
			elseif CurrentLocation == LocationWinterhold
			NymTrace("storqst.SlaveGold_Winterhold = "+storqst.SlaveGold_Winterhold)
				if storqst.SlaveGold_Winterhold <= 0
				return true 
				else 
				return false 
				endif 
			else 
			NymTrace("NO FUCING LOCATION")
			return false 			
				
			endif 
			
			

EndFunction 

Function CalculateSlaveGold(string sMode, int iAmount)		;#CalculateSlaveGold #slave1	;#gold
NymTrace("CalculateSlaveGold(Mode: "+sMode+", Amount: "+iAmount+")") 
	
	
		if !storqst.IsLocalSlave() 
		
			if  sMode == "Apply"	
			;do nothing
			else 
			sMode = "Cancel"
			NymTrace("CalculateSlaveGold(Canceled)")
			endif 
		endif 
	
		slaveqst.SexTaskDuration = 0

		int ModifySlaveGold = 0
		float CalculatingSux
		int iAmountNeg = 0
		int iAmountFinal = 0
		bool Info = false
		
		if sMode == "Info" ;&& storqst.GracePeriodSlave == 0
		Info = true 
		elseif sMode == "Apply"	
		ModifySlaveGold = iAmount
		
		elseif sMode == "Fleeing" ;&& storqst.GracePeriodSlave == 0
			
			CalculatingSux = storqst.PriceOfFreedomMax*0.1 
			iAmount = CalculatingSux as int
			ModifySlaveGold += iAmount
			
			BadMessage("Fleeing causes your Price of Freedom to increase by "+ModifySlaveGold)
			
		elseif sMode == "Escaped" ;&& storqst.GracePeriodSlave == 0
			
			CalculatingSux = storqst.PriceOfFreedomMax*0.5 
			iAmount = CalculatingSux as int
			ModifySlaveGold += iAmount
			GoodMessage("You escaped, but your Price of Freedom increased by "+ModifySlaveGold)
		
		elseif sMode == "Take Gold" ;&& storqst.GracePeriodSlave == 0	
		ModifySlaveGold -= iAmount
		GoodMessage("Price for Freedom reduced by "+ModifySlaveGold)
		
		;REDUCE!!! 
		elseif sMode == "Reduce" ;&& storqst.GracePeriodSlave == 0	
	
			if iAmount == 0
			CalculatingSux = storqst.TaskValue*0.1
			else 
			CalculatingSux = storqst.TaskValue*iAmount
			endif 
			iAmount = CalculatingSux as int
			ModifySlaveGold -= iAmount
			GoodMessage("Price for Freedom reduced by "+ModifySlaveGold)
			
			
		elseif sMode == "Whoring Reduce" ;&& storqst.GracePeriodSlave == 0	
	
			float fRandom = Utility.RandomFloat(0.3, 1.0)
			NymTrace("fRandom:"+fRandom)
			CalculatingSux = storqst.TaskValue*fRandom
			
			iAmount = CalculatingSux as int
			ModifySlaveGold -= iAmount
			GoodMessage("Price for Freedom reduced by "+ModifySlaveGold)	
			
			
		elseif sMode == "Massive Increase" ;&& storqst.GracePeriodSlave == 0
		
			if iAmount == 0 
			CalculatingSux = storqst.TaskValue*3 
			ModifySlaveGold += CalculatingSux as int
			else
			ModifySlaveGold = iAmount
			endif 	
		
			BadMessage("Price for Freedom massively INCREASED by "+ModifySlaveGold)
			
		elseif sMode == "Increase" ;&& storqst.GracePeriodSlave == 0

			if iAmount == 0 
			ModifySlaveGold += storqst.TaskValue as int
			else
			ModifySlaveGold = iAmount
			endif 
			
			BadMessage("Price for Freedom INCREASED by "+ModifySlaveGold)
			
		elseif sMode == "Minor Increase" ;&& storqst.GracePeriodSlave == 0

			if iAmount == 0 
			CalculatingSux = storqst.TaskValue*0.5
			iAmount = CalculatingSux as int
			else
			ModifySlaveGold = iAmount
			endif 	
			
			BadMessage("Price for Freedom slightly INCREASED by "+ModifySlaveGold)	
		endif 
			
		Debug.trace("NAKED DEFEAT playeraliasquest: CalculateSlaveGold() - SlaveGold Applied: "+ModifySlaveGold)

		;WHITERUN - WHITERUN 	
		if sMode != "Cancel"
			if CurrentLocation == LocationWhiterun
			
			NymTrace("storqst.SlaveGold_Whiterun: "+storqst.SlaveGold_Whiterun)
			NymTrace("ModifySlaveGold: "+ModifySlaveGold)
			storqst.SlaveGold_Whiterun += ModifySlaveGold
				
			NymTrace("storqst.SlaveGold_Whiterun AFTER: "+storqst.SlaveGold_Whiterun)
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Whiterun+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Whiterun+" Gold.")
				endif
				;WHITERUN - RIVERWOOD  
			;elseif CurrentLocation == LocationRiverwood
		;	storqst.SlaveGold_Whiterun
			;WHITERUN - RORIKSTEAD  	
		;	elseif CurrentLocation == LocationRorikstead
		;	storqst.SlaveGold_Whiterun
			
			;FALKREATH - FALKREATH 
			elseif CurrentLocation == LocationFalkreath
			storqst.SlaveGold_Falkreath += ModifySlaveGold
			
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Falkreath+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Falkreath+" Gold.")
				endif
				
			
			;EASTMARCH - WINDHELM 
			elseif CurrentLocation == LocationWindhelm
			storqst.SlaveGold_Windhelm += ModifySlaveGold
			InfoMessage("Price for Freedom: "+storqst.SlaveGold_Windhelm+" Gold.")
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Windhelm+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Windhelm+" Gold.")
				endif
			
			;elseif CurrentLocation == LocationKynesgrove
			;cfgqst.Eastmarch_CrimeGold_Major_Internal += RandomBounty
			
			;HAAFINGAR - SOLITUDE  	
			elseif CurrentLocation == LocationSolitude
			storqst.SlaveGold_Solitude += ModifySlaveGold
			InfoMessage("Price for Freedom: "+storqst.SlaveGold_Solitude+" Gold.")
			;HAAFINGAR - DRAGONBRIDGE  	

				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Solitude+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Solitude+" Gold.")
				endif
			
			;HJAALMARCH - MORTHAL   	
			elseif CurrentLocation == LocationMorthal
			storqst.SlaveGold_Morthal += ModifySlaveGold
		
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Morthal+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Morthal+" Gold.")
				endif

			;THE PALE - DAWNSTAR   		
			elseif CurrentLocation == LocationDawnstar
			storqst.SlaveGold_Dawnstar += ModifySlaveGold	
			
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Dawnstar+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Dawnstar+" Gold.")
				endif


			;THE REACH - MARKARTH   			
			elseif CurrentLocation == LocationMarkarth
			storqst.SlaveGold_Markarth += ModifySlaveGold
		
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Markarth+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Markarth+" Gold.")
				endif

			;THE RIFT - RIFTEN  		
			elseif CurrentLocation == LocationRiften
			storqst.SlaveGold_Riften += ModifySlaveGold
		
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Riften+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Riften+" Gold.")
				endif


			;WINTERHOLD - WINTERHOLD  		
			elseif CurrentLocation == LocationWinterhold
			storqst.SlaveGold_Winterhold += ModifySlaveGold
		
				if Info
				ScreenMessage("Price for Freedom: "+storqst.SlaveGold_Winterhold+" Gold.")
				else 
				InfoMessage("Price for Freedom: "+storqst.SlaveGold_Winterhold+" Gold.")
				endif

			endif
		endif 
			
		if sMode == "Reduce" ;&& slaveqst.HasCompletedSlaveTasks() && (slaveqst.ActiveSlaveTasks == 0) && (storqst.ProxMasterDetected > 0) ;&& storqst.GracePeriodSlave == 0
		;NymTrace ("THIS SHIT HAPPENS")
		
		CheckEndOfSlavery()
		
			;if !cfgqst.PlayerRef.IsInInterior() && PriceForFreedomPaid()
			;slaveqst.EndLocalSlavery()
			;endif 
		endif 
	
EndFunction 


Bool Function CheckEndOfSlavery()

	if slaveqst.HasCompletedSlaveTasks() && (slaveqst.ActiveSlaveTasks == 0) && (storqst.ProxMasterDetected > 0) ;&& storqst.GracePeriodSlave == 0
		;NymTrace ("THIS SHIT HAPPENS")
			if !cfgqst.PlayerRef.IsInInterior() && PriceForFreedomPaid()		;UPDATE FOR INDOOR SLAVERY!!!
			slaveqst.EndLocalSlavery()
			return true
			else 
			return false
			endif 
	else 
	return false
	endif 
EndFunction 

;String storqst.CurrentLocName

Location AuctionRoom
Bool EnteringForAuction = false

Function SSAuctionSetup()

AuctionRoom = (Game.GetFormFromFile(0x030619F8, "SimpleSlavery.esp") As Location)
	
	if cfgqst.PlayerRef.IsInLocation(AuctionRoom)	
	EnteringForAuction = true 	
	
		if Nym()
		NymTrace("#SS In Auction Room")	
		
			if !SSQuest
			NymTrace("#SS Get SSQest")
			SSQuest = (Game.GetFormFromFile(0x0300492E, "SimpleSlavery.esp") As Quest)
			endif
			
			if SSQuest
			NymTrace("#SS SSQest filled")
			else
			NymTrace("#SS SSQest NOT filled")
			endif 
			
			if SSQuest 
			NymTrace("#SS Set SSQest")	
			
			int i = 3
			
				while (i > 0) 
				NymTrace("#SS WAIT SSQest")
					if SSQuest.GetStage() == 10
					i = 0
					else
					i -= 1
					endif
				
				Utility.Wait(1.0)
				endwhile
		;	Utility.Wait(5.0)
			SSQuest.SetStage(20)
			else
			;Utility.Wait(5.0)
			SSQuest.SetStage(20)
			endif 
		endif 
	endif 

EndFunction 


Bool IsInValidLocation

Bool Function IsInDungeon()

Bool InInterior = false

if cfgqst.PlayerRef.IsInInterior()
InInterior = true 
endif 

if CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeClearable) && InInterior
NymTrace("IsInDungeon(TRUE - LocTypeClearable)")

	;if !InInterior
	;Debug.Messagebox("#ERROR We Are In NOT in Interior A")
	;NymTrace("IsInDungeon(TRUE - LocTypeClearable INTERIOR ERROR A)")
	;endif 

return true
elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeDungeon) && InInterior
NymTrace("IsInDungeon(TRUE - LocTypeDungeon)")

	;if !InInterior
	;Debug.Messagebox("#ERROR We Are NOT in  Interior B")
	;NymTrace("IsInDungeon(TRUE - LocTypeClearable INTERIOR ERROR B)")
	;endif 

return true
else 
return false 
endif 

EndFunction 


Location Function GetCurrentPlayerLocation(ObjectReference akRef)

return akRef.GetCurrentLocation()	;ObjectReference Script - Does NOT work on Actors, hence the player > akRef thingy

EndFunction 



Bool Function CheckSlaveryLocation()

;Guide: this checks if we are a Slave and enter the Location that enslaved us OR 
;if we are a Slave and are in the Location that enslaved us.
;ParentLocation seems not viable for our needs here (often returns none)


NymTrace("CheckSlaveryLocation()")

if storqst.LocalSlavery && cfgqst.PlayerRef.IsInFaction(storqst.LocalSlaveFaction)

	Location CurrentPlayerLocation	
	CurrentPlayerLocation = GetCurrentPlayerLocation(cfgqst.PlayerRef)
	
	;Outdoor Slavery and we are Outdoor AND in a Slave Location
	if !slaveqst.IsIndoorSlavery && !cfgqst.PlayerRef.IsInInterior() && storqst.SlaveryLocations.HasForm(CurrentPlayerLocation)
	NymTrace("CheckSlaveryLocation(OUTDOORS: In Slavery Location = TRUE)")
	return true 
	;OutDoor Slavery but we are Indoor and a Slave 
	elseif !slaveqst.IsIndoorSlavery && cfgqst.PlayerRef.IsInInterior() && (storqst.IsLocalSlave == 1)
	NymTrace("CheckSlaveryLocation(INDOORS: In Slavery Location = TRUE)")
	;we asume that we CANNOT leave the Outdoor Slavery Location via a Indoor Location. 
	return true 
	
	;Local Slavery 1 means Public Slave. 
	;we assume that we cannot leave the City through an Interior, so no need to check here.
	;only when we are outside AND no longer in the slavery location we start to think that the slave flees.
	;in Indoor Locations we can reverse the process maybe. 
	
	;ScreenMessage("Entered Slave Location: "+CurrentPlayerLocation.GetName())
	
	else 
	NymTrace("CheckSlaveryLocation(INDOORS: In Slavery Location = FALSE)")
	;ScreenMessage("Entered FREE Location: "+CurrentPlayerLocation.GetName())
	return false 
	endif 
else 
return false 	
endif 

EndFunction


Function ClearCurrentSlaveryLocation()

	if slaveqst.CurrentLocalSlaveryLoc
	
		if Nym()
		NymTrace("CURRENT FUCKING LOCATION NAME: "+slaveqst.CurrentLocalSlaveryLoc.GetName())
		Location FUCKLOCATIONS = cfgqst.PlayerRef.GetCurrentLocation()	
		NymTrace("CURRENT FUCING FUCKLOCATIONS NAME: "+FUCKLOCATIONS.GetName())
		endif 
		
		if storqst.SlaveryLocations.HasForm(slaveqst.CurrentLocalSlaveryLoc)
		storqst.SlaveryLocations.RemoveAddedForm(slaveqst.CurrentLocalSlaveryLoc)
		else 
		DebugTrace("ClearCurrentSlaveryLocation(#ERROR - FORM NOT IN LIST)")
		endif 
		
	DebugTrace("ClearCurrentSlaveryLocation(CLEARED)")
	else 
	DebugTrace("ClearCurrentSlaveryLocation(#ERROR - WAS NONE)")
	endif 
	
EndFunction 


Bool Function CheckLocation()			;#location	;#checklocation
NymTrace("CheckLocation()")
Bool IsInSlaveryLocation = false
Bool ReturnValue = false 

	;this is a fucking mess.... clean this up

	;LOCAL SLAVERY ---> CHECK SLAVERY LOCATION .... this is all bonkers. I have no idea what its doing.
	;this is the BOOL but the whole Slavery part returns NOTHING 
	if storqst.LocalSlavery && storqst.IsLocalSlave()
	NymTrace("CheckLocation(IS SLAVE = true)")
	;IsInSlaveryLocation = true 			
			
		if CheckSlaveryLocation()
		IsInSlaveryLocation = true 
		NymTrace("CheckLocation(IS SLAVE & IsInSlaveryLocation = true)")
		else 
		IsInSlaveryLocation = false 
		NymTrace("CheckLocation(IS SLAVE & IsInSlaveryLocation = FALSE)")
		endif 
	
		if CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeTemple) 
		NymTrace("CheckLocation(IsInSlaveryLocation = LocTypeTemple )")
		;do nothing
		
		else 
		
			if IsInSlaveryLocation
			;if CheckSlaveryLocation()

				;SLAVE ENTERED SLAVERY LOCATION ---> back to Slavery
				if storqst.IsLocalSlave == 0 
				
				ScreenMessage("Entering a Slavery Location") 
				storqst.IsLocalSlave = 1	;elaborate - 1 City, 2 Dungeon, 3 Wild etc.maybe we need it.
				cfgqst.DefeatStatePlayer = "Slave"
				
				;SLAVE TURNS AROUND ---> back to Slavery
				elseif storqst.IsFleeingSlave > 0 && storqst.IsLocalSlave > 0
				ScreenMessage("You turned around.") 
				storqst.IsFleeingSlave = 0
				
				;SLAVE BOUGHT FREEDOM 	----> FREE
			;	elseif CheckSlaveGold()
	
			;	slaveqst.EndLocalSlavery()	
			;	;SLACE IS STILL IN SLAVERY LOCATION ---> GOOD SLAVE 
				else 
				NymTrace("In Slavery Location") 
				endif 
			
			;SLAVE JUST LEFT SLAVERY LOCATION ---> Start Fleeing (1)
			elseif (storqst.IsLocalSlave == 1) && (storqst.IsFleeingSlave == 0)
			;we JUST LEFT Slaverey Location	
			ScreenMessage("Just left Slavery Location") 
			
			storqst.IsFleeingSlave = 1

			;STILL FLEEING (2)
			elseif storqst.IsFleeingSlave == 1

			ScreenMessage("Fleeing from Slavery Location") 
			cfgqst.StartPunishmentEffect("Shock")
			CalculateSlaveGold("Fleeing", 0)
			storqst.IsFleeingSlave = 2
				
				
			;SLAVE ESCAPED (3)	----> FREE (allowed to flee)
			elseif storqst.IsFleeingSlave == 2 && storqst.AllowCityEscape
			storqst.IsFleeingSlave = 0
			ScreenMessage("You escaped from Slavery Location") 
			CalculateSlaveGold("Escaped", 0)
			storqst.IsLocalSlave = 0
			SPE_Actor.SetActorCalmed(cfgqst.PlayerRef, false)
			folqst.SetFollowersCalmed(false)
			slaveqst.SlaveReturnLocation = "empty"
			
			;SLAVE BROUGHT BACK (3)	----> BAD SLAVE (NOT allowed to flee)
			elseif storqst.IsFleeingSlave == 2 && !storqst.AllowCityEscape 
			storqst.IsFleeingSlave = 0
			ScreenMessage("You are magically barred from going further") 
			cfgqst.Immobilize(True)
			calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Struggle", false)
			cfgqst.StartPunishmentEffect("Shock")
			cfgqst.StartPunishmentEffect("Shock")
			CalculateSlaveGold("Massive Increase", 0)
			cfgqst.Load_JSON_Outfit("Punish 01", "All", false)
			Utility.Wait(3)
			SendModEvent("Moan")
			cfgqst.StartPunishmentEffect("Shock")
			
			Utility.Wait(3)
			SendModEvent("Moan")
			
			cfgqst.ResetIdle(cfgqst.PlayerRef)
			cfgqst.LocationEvent("Local Slavery Return")
			endif 

		endif 
	endif 


	;PUBLIC PUNISHMENT  - Check Location
	if CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeClearable) 

	storqst.CurrentLocType = "Dungeon"
	ReturnValue = false
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeDungeon)
	storqst.CurrentLocType = "Dungeon"
	ReturnValue = false
	elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypePlayerHouse)
	storqst.CurrentLocType = "Player House"
	ReturnValue = false

	else
	
		;----- SAME Location -----;
		if CurrentLocation && cfgqst.PlayerRef.IsInLocation(CurrentLocation)
		;Debug.trace("NAKED DEFEAT playeraliasquest: (#pub) we are in CurrentLocation: "+CurrentLocation)
		
		
		NymTrace("CheckLocation(SAME LOCATION)") 
		
			if storqst.CurrentLocName == "Riften"
			SSAuctionSetup()
			endif 

		ReturnValue = True
		 
		;----- NEW Location -----;
		
		elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeOrcStronghold)
		Debug.Trace("NAKED DEFEAT playeraliasquest: (#pub) (PC in Orc Stronghold)")
		
			if storqst.CurrentLocName != "Orc Stronghold"
			ScreenMessage("Entering "+storqst.CurrentLocName) 
			storqst.CurrentLocName = "Orc Stronghold"
			endif 
		storqst.CurrentLocType = "City"
		cfgqst.PublicExposure = 0
		storqst.InCity = true

		ReturnValue = True
		elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeMilitaryFort)
		Debug.Trace("NAKED DEFEAT playeraliasquest: (#pub) (PC in Military Fort)")
		
			
			if storqst.CurrentLocName != "Military Fort"
			ScreenMessage("Entering "+storqst.CurrentLocName) 
			storqst.CurrentLocName = "Military Fort"
			endif
		storqst.CurrentLocType = "Wild"	
		cfgqst.PublicExposure = 0
		;storqst.InCity = true

		ReturnValue = True
		elseif CurrentLocationHasKeyword(cfgqst.PlayerRef, LocTypeMilitaryCamp)
		Debug.Trace("NAKED DEFEAT playeraliasquest: (#pub) (PC in Military Camp)")
		
			if storqst.CurrentLocName != "Military Camp"
			ScreenMessage("Entering "+storqst.CurrentLocName) 
			storqst.CurrentLocName = "Military Camp"
			endif 
			
		storqst.CurrentLocType = "Wild"
		cfgqst.PublicExposure = 0
		;storqst.InCity = true		
			
		ReturnValue = True
			
		elseif cfgqst.PlayerRef.IsInLocation(LocationWhiterun)
		CurrentLocation = LocationWhiterun
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Whiterun"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Whiterun)")	
		;Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Whiterun)")	
		ReturnValue = True

		elseif cfgqst.PlayerRef.IsInLocation(LocationSolitude)
		CurrentLocation = LocationSolitude
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Solitude"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Solitude)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Solitude)")	
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationRiverwood)
		CurrentLocation = LocationRiverwood
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Riverwood"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Riverwood)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Riverwood)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationWindhelm)
		CurrentLocation = LocationWindhelm
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Windhelm"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Windhelm)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Windhelm)")
		ReturnValue = True

		elseif cfgqst.PlayerRef.IsInLocation(LocationRiften)
		CurrentLocation = LocationRiften
		cfgqst.PublicExposure = 0
		
		storqst.CurrentLocName = "Riften"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Riften)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Riften)")
		
		SSAuctionSetup()
		
		if !EnteringForAuction
		ApplyRandomBounty()
		endif 
		EnteringForAuction = false 


		ReturnValue = True
		
		elseif cfgqst.PlayerRef.IsInLocation(LocationFalkreath)
		CurrentLocation = LocationFalkreath
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Falkreath"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Falkreath)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Falkreath)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationMarkarth)
		CurrentLocation = LocationMarkarth
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Markarth"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Markarth)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Markarth)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationWinterhold)
		CurrentLocation = LocationWinterhold
		cfgqst.PublicExposure = 0
		storqst.CurrentLocName = "Winterhold"
		storqst.CurrentLocType = "City"
		ApplyRandomBounty()
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Winterhold)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Winterhold)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationDawnstar)
		CurrentLocation = LocationDawnstar
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Dawnstar"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Dawnstar)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Dawnstar)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationDragonbridge)
		CurrentLocation = LocationDragonbridge
		cfgqst.PublicExposure = 0
		storqst.CurrentLocName = "Dragonbridge"
		storqst.CurrentLocType = "City"
		ApplyRandomBounty()
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Dragonbridge)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Dragonbridge)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationKynesgrove)
		CurrentLocation = LocationKynesgrove
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Kynesgrove"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Kynesgrove)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Kynesgrove)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationRorikstead)
		CurrentLocation = LocationRorikstead
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Rorikstead"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Rorikstead)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Rorikstead)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationIvarstead)
		CurrentLocation = LocationIvarstead
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Ivarstead"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Ivarstead)")	
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Ivarstead)")
		ReturnValue = True
		elseif cfgqst.PlayerRef.IsInLocation(LocationMorthal)
		CurrentLocation = LocationMorthal
		cfgqst.PublicExposure = 0
		ApplyRandomBounty()
		storqst.CurrentLocName = "Morthal"
		storqst.CurrentLocType = "City"
		storqst.InCity = true
		
		ScreenMessage("Entering "+storqst.CurrentLocName) 
		;	Debug.Trace("NAKED DEFEAT PUBLIC RAPE (PC in Morthal)")		
		;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (PC in Morthal)")
		ReturnValue = True
		endif 
		
	endif ;check if clearable end	

	if LastLocType != storqst.CurrentLocType
	NymMessage("Entering "+storqst.CurrentLocType)
	endif 

	LastLocType = storqst.CurrentLocType

	; ---- LEAVING Location ---- ; 
	;Guide: this always has to be checked or we have a delayed exit from one location to the other 
	if !ReturnValue

		if CurrentLocation	
		CurrentLocation = none
		cfgqst.PublicExposure = 0
		
			if storqst.InCity

				if IsPlayerUneasy
				IsPlayerUneasy = false 
				ScreenMessage("Leaving "+storqst.CurrentLocName+". You feel save now.") 
				else 
				ScreenMessage("Leaving "+storqst.CurrentLocName) 
				endif 
			cfgqst.StopHeartBeat()
			cfgqst.ResetPublicExposure()
			
			storqst.InCity = false	
			NymTrace("InCity FALSE 5237: "+storqst.InCity)
			endif 
		storqst.CurrentLocName = "Wilderness"	
		storqst.CurrentLocType = "Wild"	
	;	Debug.Notification("NAKED DEFEAT PUBLIC RAPE (saved Location:)"+CurrentLocation)
		endif
	endif

	NymTrace("storqst.CurrentLocType:"+storqst.CurrentLocType+" storqst.CurrentLocName:"+storqst.CurrentLocName)
	NymTrace("InCity: "+storqst.InCity)

	if ReturnValue
	return true 
	else 
	return false 
	endif 
		
EndFunction

Bool Function Busy()			;#busy

if storqst.GracePeriodSlave > 0
return true
elseif cfgqst.IsFucking(cfgqst.PlayerRef)
return true
elseif cfgqst.DefeatQuestRunning
return true
elseif cfgqst.CivilRapeRunning
return true
elseif cfgqst.PlayerRef.IsInCombat()
return true
elseif cfgqst.IsSuspended()	;covers: dhlpSuspendStatus && PWSuspendStatus && POPSuspendStatus
return true
else
return false
endif

EndFunction

;------------------------------------------------------------------------------------------------------------------------------------

;String cfgqst.Enemy[1] = "none"
;String cfgqst.Enemy[2] = "none"
;String cfgqst.Enemy[3] = "none"
;String cfgqst.Enemy[4] = "none"
;String cfgqst.Enemy[5] = "none"
;String cfgqst.Enemy[0] = "none"
Bool GetDefeatTypeRunning = false
;Bool StartGetDefeatType = false
Bool StartCombatStrip = false

int iUpdateTimer = 0

Event OnUpdate()		;#update	;#type	
	
	;LOOP FOR PUBLIC PUNISHMENT 
	;this Loop can be adjusted by MCM (Loop Timer)
	;currently expanded to work in the Wilderness with reduced complexity (mostly running naked around non-hostiles is inadviseable)
		;/
	if Nym() 
	;we are here 
	else 
			if StartCombatStrip ;;;---> change to ModEvent 
			Debug.Trace("NAKED DEFEAT playeraliasquest: OnUpdate (StartCombatStrip)")
				
				StartCombatStrip = false
				CombatStrip()

			; NO LONGER IN USE DELETE 
			;elseif StartGetDefeatType 
			;Debug.Trace("NAKED DEFEAT playeraliasquest: OnUpdate (GetDefeatType)")
			;StartGetDefeatType = false

			;elseif cfgqst.IsCooldownRunning()
			;Debug.Trace("NAKED DEFEAT playeraliasquest: OnUpdate (CooldownRunning)")
			;Utility.Wait(30)
			;cfgqst.DisableCooldownRunning()
			;else 
			;Debug.Trace("NAKED DEFEAT playeraliasquest: ERROR (Empty OnUpdateCall)")
			endif
	endif 
	/;

 	iUpdateTimer += 1

	NymTrace("OnUpdate(iUpdateTimer: "+iUpdateTimer+") cfgqst.LoopTime:"+cfgqst.LoopTime)

	if iUpdateTimer > cfgqst.LoopTime
		if Nym()
		Debug.MessageBox("#ERROR UPDATETIMER > LOOPTIME") 
		endif 
	iUpdateTimer = cfgqst.LoopTime as int
	endif 
	
	if iUpdateTimer == cfgqst.LoopTime		;X seconds passed - (X = MCM Setting)
;	NymTrace("FUCK THIS HERE AAAA")
	
	;	if Nym()
	;	NymTrace("playeralias - OnUpdate() iUpdateTimer: "+iUpdateTimer)
	;	endif 
		
	iUpdateTimer = 0
	
	;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> BAUSTELLE start
	
	cfgqst.PlayerMonitorOn = true
		
			;>>>>> DURING RAPE: Maintenance LOOP --- now in DefeatQuest >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			if cfgqst.IsDefeatRunning()
			;DO NOTHING AT THE MOMENT
				
				
			;PUBLIC PUNISHMENT LOOP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
			elseif cfgqst.Indecency && CheckLocation() && !cfgqst.PartyInCombat()
				NymTrace("FUCK THIS HERE A")
				;if !Busy()	;we do not check for BUSY here but in PlayerValidForRape
				if cfgqst.IsSuspended() 
				NymTrace("FUCK THIS HERE SUSPENEDED")
				else 
				
					NymTrace("FUCK THIS HERE B")
					
					StartProcessPublicExposure()  ;has more shit to check, sends to public or slave calculations	;#StartProcessPublicExposure()
					
					;PUBLIC PUNISHMENT CHECK
					if PlayerValidForRape() 
					NymTrace("FUCK THIS HERE C")
						;PUBLIC PUNISH START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	;baustelle
						if cfgqst.IsGuardsPresent()
						cfgqst.PlayProximitySound()
						else 
						;we need a proximity sound for civilians!
						endif			

						IndecencyMessage()	
						
						
						Bool MessageOnce = true
						
						While cfgqst.ModEnabled && UI.IsMenuOpen("Dialogue Menu") ; !Game.IsLookingControlsEnabled()	;loop while in dialog. test maybe?
						NymTrace("PLAYER IS IN DIALOGUE")
						
							if MessageOnce && Nym()
							Debug.Messagebox("PlayerisInDialoge")
							MessageOnce = false 
							endif 
						
						Utility.Wait(2.0)
						;Debug.trace("NAKED DEFEAT: playeralias SCAN waiting for dialogueend(controlsdisabled)")
						;	if cfgqst.ShowDebugMessages
						;	Debug.notification("NAKED DEFEAT: playeralias SCAN waiting for dialogueend(controlsdisabled)")
						;	endif
						EndWhile
					
						;>>>>>>>>>>>>>>>>>> Surrender Pose >>>>>>>>>>>>>>>>>>
	
						cfgqst.Immobilize(true)
						
						Utility.Wait(1.0)
						SendModEvent("Moan")	
						
						if cfgqst.IsGuardsPresent() || (storqst.IsLocalSlave > 0)
						cfgqst.DisableGuardsPresent()
						
							if Nym()
							calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Offering", false)
							
							else 
								int i = Utility.RandomInt(1,3)	
								if i == 1
								cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_01)	
								elseif i == 2
								cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_02)
								elseif i == 3
								cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesHumanSurrender_03)
								endif			
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
					cfgqst.StopHeartBeat()
					cfgqst.CivilRapeRunning = true
					;cfgqst.DefeatTypeHumans = true
					cfgqst.DefeatTypeGeneral = "AreHumans"
					
				;	if cfgqst.HealthBoost
				;	cfgqst.PlayerRef.ModActorValue("health", 100000.0)
				;	endif
					cfgqst.SendModEvents(true)
					NymTrace("CalmQuest.Start() 5119 StartDefeat()")

					CalmQuest.Start()		;via PublicPunishement
					
					;---------------------------------------------------------------------------------------------
					endif	;not valid for rape
				endif 

			elseif Nym() && !cfgqst.PartyInCombat() && !cfgqst.IsSuspended()
			
			StartProcessWildernessExposure()
			
				if PlayerValidForWildernessRape() 
				cfgqst.KeySurrender("Forced Surrender")
				endif 
			cfgqst.PublicExposure = 0
			endif 

			

	;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< BAUSTELLE END 
	
	endif 
	
	PlayerPunishmentMonitor_Loop(false)

EndEvent




;MOVED TO CONFIGQUEST
;/
Function GetDefeatType()	;#get	#type

Debug.Trace("NAKED DEFEAT playeraliasquest: GetDefeatType()")

	;GUARDS
	if (cfgqst.Enemy[0] == "Guards")	
	cfgqst.DefeatTypeGuards = true
	cfgqst.DefeatTypeHumans = true
	cfgqst.DefeatTypeHumanoids = true	
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType(Special) = cfgqst.DefeatTypeGuards")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeHumans")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
	
	;HUMANS
	elseif (cfgqst.Enemy[0] == "Humans") || (cfgqst.Enemy[0] == "Mages")	
	cfgqst.DefeatTypeHumans = true
	cfgqst.DefeatTypeHumanoids = true	
		if (cfgqst.Enemy[1] == "Guards") || (cfgqst.Enemy[2] == "Guards") || (cfgqst.Enemy[3] == "Guards") || (cfgqst.Enemy[4] == "Guards") || (cfgqst.Enemy[5] == "Guards")
		cfgqst.DefeatTypeGuards = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType(Special)Type = cfgqst.DefeatTypeGuards")
		elseif (cfgqst.Enemy[1] == "Vampires") || (cfgqst.Enemy[2] == "Vampires") || (cfgqst.Enemy[3] == "Vampires") || (cfgqst.Enemy[4] == "Vampires") || (cfgqst.Enemy[5] == "Vampires") 
		cfgqst.DefeatTypeUndead = true
		cfgqst.DefeatTypeHumans = false
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead (from Vampires)")	
		elseif (cfgqst.Enemy[1] == "Necromancers") || (cfgqst.Enemy[2] == "Necromancers") || (cfgqst.Enemy[3] == "Necromancers") || (cfgqst.Enemy[4] == "Necromancers") || (cfgqst.Enemy[5] == "Necromancers") 
		cfgqst.DefeatTypeUndead = true
		cfgqst.DefeatTypeHumans = false
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead (from Necromancers)")
		elseif (cfgqst.Enemy[1] == "Draugrs") || (cfgqst.Enemy[2] == "Draugrs") || (cfgqst.Enemy[3] == "Draugrs") || (cfgqst.Enemy[4] == "Draugrs") || (cfgqst.Enemy[5] == "Draugrs") 
		cfgqst.DefeatTypeUndead = true
		cfgqst.DefeatTypeHumans = false
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead (from Draugrs)")	
		endif
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeHumans")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
	
	;VAMPIRES/NECROMANCERS
	elseif (cfgqst.Enemy[0] == "Vampires") || (cfgqst.Enemy[0] == "Necromancers") 	
	cfgqst.DefeatTypeUndead = true
	cfgqst.DefeatTypeHumanoids = true	
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead (from Vamp/Necro)")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
	
	;TROLLS
	elseif cfgqst.Enemy[0] == ("Trolls")		
	cfgqst.DefeatTypeTrolls = true
	cfgqst.DefeatTypeHumanoids = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeTrolls")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
	
	;WOLVES
	elseif cfgqst.Enemy[0] == ("Wolves")
	cfgqst.DefeatTypeWolves = true
	cfgqst.DefeatTypeAnimals = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeWolves")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")	
	
	;UNDEAD
	elseif cfgqst.Enemy[0] == ("Draugrs") || cfgqst.Enemy[0] == ("WispMothers") || cfgqst.Enemy[0] == ("Wisps") || cfgqst.Enemy[0] == ("VampireLords") || cfgqst.Enemy[0] == ("DragonPriests")  
	cfgqst.DefeatTypeUndead = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead")
	
			if cfgqst.Enemy[1] == ("Draugrs") || cfgqst.Enemy[2] == ("Draugrs") || cfgqst.Enemy[3] == ("Draugrs") || cfgqst.Enemy[4] == ("Draugrs") || cfgqst.Enemy[5] == ("Draugrs")
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
			elseif cfgqst.Enemy[1] == ("VampireLords") || cfgqst.Enemy[2] == ("VampireLords") || cfgqst.Enemy[3] == ("VampireLords") || cfgqst.Enemy[4] == ("VampireLords") || cfgqst.Enemy[5] == ("VampireLords")
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
			elseif cfgqst.Enemy[1] == ("DragonPriests") || cfgqst.Enemy[2] == ("DragonPriests") || cfgqst.Enemy[3] == ("DragonPriests") || cfgqst.Enemy[4] == ("DragonPriests") || cfgqst.Enemy[5] == ("DragonPriests")
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
			else
			cfgqst.DefeatTypeGhosts = true		;will get their own furniture bondage
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeGhosts")
			endif
	
	;FALMERS
	elseif cfgqst.Enemy[0] == ("Falmers") || cfgqst.Enemy[0] == ("Chaurus") || cfgqst.Enemy[0] == ("ChaurusHunters") || cfgqst.Enemy[0] == ("ChaurusReapers")
		
		if cfgqst.Enemy[1] == ("Falmers") || cfgqst.Enemy[2] == ("Falmers") || cfgqst.Enemy[3] == ("Falmers") || cfgqst.Enemy[4] == ("Falmers") || cfgqst.Enemy[5] == ("Falmers")
		cfgqst.DefeatTypeFalmers = true
		cfgqst.DefeatTypeHumanoids = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeFalmers")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		else
		cfgqst.DefeatTypeChaurus = true		;hmm only if they get their own bondage? But yes they get!!!!
		cfgqst.DefeatTypeAnimals = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeChaurus")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
		endif
			
	;HUMAN ANIMALS
	elseif cfgqst.Enemy[0] == ("Dogs") || cfgqst.Enemy[0] == ("Horses") ||  cfgqst.Enemy[0] == ("Goats")
		
		if cfgqst.Enemy[1] == ("Humans") || cfgqst.Enemy[2] == ("Humans") || cfgqst.Enemy[3] == ("Humans") || cfgqst.Enemy[4] == ("Humans") || cfgqst.Enemy[5] == ("Humans")
		cfgqst.DefeatTypeHumans = true	
		cfgqst.DefeatTypeHumanoids = true
			if (cfgqst.Enemy[1] == "Guards") || (cfgqst.Enemy[2] == "Guards") || (cfgqst.Enemy[3] == "Guards") || (cfgqst.Enemy[4] == "Guards") || (cfgqst.Enemy[5] == "Guards")
			cfgqst.DefeatTypeGuards = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: Debug(Special)Type = cfgqst.DefeatTypeGuards")
			endif	
	
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeHumans")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		else
		cfgqst.DefeatTypeAnimals = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
		endif
		
	;SKEEVERS		
	elseif cfgqst.Enemy[0] == ("Skeevers")
	cfgqst.DefeatTypeSkeevers = true
	cfgqst.DefeatTypeAnimals = true	
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeSkeevers")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
	
	;SPIDERS
	elseif cfgqst.Enemy[0] == ("Spiders") || cfgqst.Enemy[0] == ("LargeSpiders") || cfgqst.Enemy[0] == ("GiantSpiders") 
	cfgqst.DefeatTypeSpiders = true	;will get their own furniture bondage
	cfgqst.DefeatTypeAnimals = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeSpiders")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
	
	;SABRECATS
	elseif cfgqst.Enemy[0] == ("SabreCats")
	cfgqst.DefeatTypeSabreCats = true
	cfgqst.DefeatTypeAnimals = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeSabreCats")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
	
	;BEARS
	elseif cfgqst.Enemy[0] == ("Bears")
	cfgqst.DefeatTypeBears = true
	cfgqst.DefeatTypeAnimals = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeBears")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
	
	;GIANTS
	elseif cfgqst.Enemy[0] == ("Giants") || cfgqst.Enemy[0] == ("Mammoths")

		if cfgqst.Enemy[1] == ("Giants") || cfgqst.Enemy[2] == ("Giants") || cfgqst.Enemy[3] == ("Giants") || cfgqst.Enemy[4] == ("Giants") || cfgqst.Enemy[5] == ("Giants")
		cfgqst.DefeatTypeGiants = true
		cfgqst.DefeatTypeHumanoids = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeGiants")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		else
		cfgqst.DefeatTypeAnimals = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
		endif
			
	;DWARVEN
	elseif cfgqst.Enemy[0] == ("DwarvenBallistas") || cfgqst.Enemy[0] == ("DwarvenCenturions") || cfgqst.Enemy[0] == ("DwarvenSpheres") || cfgqst.Enemy[0] == ("DwarvenSpiders")
	cfgqst.DefeatTypeDwarven = true		;will get their own furniture bondage
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeDwarven")
	
	;RIEKLINGS
	elseif cfgqst.Enemy[0] == ("Rieklings") || cfgqst.Enemy[0] == ("Boars") || cfgqst.Enemy[0] == ("BoarsAny") || cfgqst.Enemy[0] == ("BoarsMounted")	
		if cfgqst.Enemy[1] == ("Rieklings") || cfgqst.Enemy[2] == ("Rieklings") || cfgqst.Enemy[3] == ("Rieklings") || cfgqst.Enemy[4] == ("Rieklings") || cfgqst.Enemy[5] == ("Rieklings")
		cfgqst.DefeatTypeRieklings = true
		cfgqst.DefeatTypeHumanoids = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeRieklings")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		elseif cfgqst.Enemy[1] == ("BoarsMounted") || cfgqst.Enemy[2] == ("BoarsMounted") || cfgqst.Enemy[3] == ("BoarsMounted") || cfgqst.Enemy[4] == ("BoarsMounted") || cfgqst.Enemy[5] == ("BoarsMounted")
		cfgqst.DefeatTypeRieklings = true
		cfgqst.DefeatTypeHumanoids = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeRieklings")
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		else
		cfgqst.DefeatTypeAnimals = true
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeAnimals")
		endif

	;WEREWOLVES
	elseif cfgqst.Enemy[0] == ("Werewolves")
	cfgqst.DefeatTypeWerewolves = true
	cfgqst.DefeatTypeHumanoids = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeWerewolves")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
	
	;SPRIGGANS
	elseif cfgqst.Enemy[0] == ("Spriggans")
	cfgqst.DefeatTypeSpriggans = true		;get their own bondage (trees)
	cfgqst.DefeatTypeHumanoids = true
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeSpriggans")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeHumanoids")
		;---> allow wildlife to participate option (deer, foxes etc.)
	
	;ICEWRAITH
	elseif cfgqst.Enemy[0] == ("IceWraiths")
	cfgqst.DefeatTypeGhosts = true			;will get their own bondage stuff
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeGhosts")
	
	;DEMONIC CREATURES (handle with lowest priority, hopefully this helps)
	elseif cfgqst.ModDEM
		
		;Riekling Faction
		if cfgqst.Enemy[0] == ("DEM_Rieklings") || cfgqst.Enemy[1] == ("DEM_Rieklings") || cfgqst.Enemy[2] == ("DEM_Rieklings") || cfgqst.Enemy[3] == ("DEM_Rieklings") || cfgqst.Enemy[4] == ("DEM_Rieklings") || cfgqst.Enemy[5] == ("DEM_Rieklings")
			cfgqst.DefeatTypeRieklings = true
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeRieklings (from DemonicCreatures)")
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGeneral = cfgqst.DefeatTypeHumanoids")
		;Draugr Faction --> Undead
		elseif cfgqst.Enemy[0] == ("DEM_Draugrs") || cfgqst.Enemy[1] == ("DEM_Draugrs") || cfgqst.Enemy[2] == ("DEM_Draugrs") || cfgqst.Enemy[3] == ("DEM_Draugrs") || cfgqst.Enemy[4] == ("DEM_Draugrs") || cfgqst.Enemy[5] == ("DEM_Draugrs")
			cfgqst.DefeatTypeUndead = true
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeUndead (from DemonicCreatures)")
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGeneral = cfgqst.DefeatTypeHumanoids")
		;Spriggan Faction
		elseif cfgqst.Enemy[0] == ("DEM_Spriggans") || cfgqst.Enemy[1] == ("DEM_Spriggans") || cfgqst.Enemy[2] == ("DEM_Spriggans") || cfgqst.Enemy[3] == ("DEM_Spriggans") || cfgqst.Enemy[4] == ("DEM_Spriggans") || cfgqst.Enemy[5] == ("DEM_Spriggans")
			cfgqst.DefeatTypeSpriggans = true
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeSpriggans (from DemonicCreatures)")
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGeneral = cfgqst.DefeatTypeHumanoids")
		;Dwarven Faction
		elseif cfgqst.Enemy[0] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[1] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[2] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[3] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[4] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[5] == ("DEM_DwarvenCenturions")
			cfgqst.DefeatTypeDwarven = true
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeDwarven (from DemonicCreatures)")
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGeneral = cfgqst.DefeatTypeHumanoids")
		;Falmer Faction
		elseif cfgqst.Enemy[0] == ("DEM_Falmers") || cfgqst.Enemy[1] == ("DEM_Falmers") || cfgqst.Enemy[2] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[3] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[4] == ("DEM_DwarvenCenturions") || cfgqst.Enemy[5] == ("DEM_DwarvenCenturions")
			cfgqst.DefeatTypeFalmers = true
			cfgqst.DefeatTypeHumanoids = true
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType = cfgqst.DefeatTypeFalmers (from DemonicCreatures)")
			Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGeneral = cfgqst.DefeatTypeHumanoids")
		
		else
		Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeFunny (from Demonic Creatures)")
		cfgqst.DefeatTypeFunny = true	
		;endif
		endif
		
	else
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatGeneralType = cfgqst.DefeatTypeFunny")
	cfgqst.DefeatTypeFunny = true	
	;endif
		
	endif
		
cfgqst.Enemy[0] = "none"
cfgqst.Enemy[1] = "none"
cfgqst.Enemy[2] = "none"
cfgqst.Enemy[3] = "none"
cfgqst.Enemy[4] = "none"
cfgqst.Enemy[5] = "none"

GetDefeatTypeRunning = false

EndFunction
/;


	
;DOES NOT WORK, add for next version
;#trap
;Event OnTrapHitStart(ObjectReference akTarget, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, bool abInitialHit, int aeMotionType)
Event OnTrapHitStart(ObjectReference akTarget, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, bool abInitialHit, int aeMotionType)
	
	
	if cfgqst.NymBETA
	ScreenMessage("OnTrapHit Hit YES")
		if akTarget
		ScreenMessage("akTarget: "+akTarget)
		endif
	endif


	;Debug.Trace("Ouch! We just OnTrapHitStart hitting " + akTarget)
	if cfgqst.NymBeta && (akTarget == cfgqst.PlayerRef) && abInitialHit
	ScreenMessage("OnTrapHitStart on Player Hit YES")
		;	if (Utility.RandomInt(1, 100) <= cfgqst.CriticalDefeat)		;need to get their own slider value
		;	CriticalDefeat = true
		;	cfgqst.PlayerRef.DamageActorValue("Health", 10000.0)
		;	Debug.Notification("<font color='#ff0000'>The vicious trap knocked you out cold...</font>")
		;	endif
	elseif cfgqst.NymBeta
	ScreenMessage("Trap Hit YES but not recognize the PC")
	endif
EndEvent


Event OnTrapHit(ObjectReference akTarget, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, bool abInitialHit, int aeMotionType)

	if cfgqst.NymBETA
	ScreenMessage("OnTrapHit Hit YES")
		if akTarget
		ScreenMessage("akTarget: "+akTarget)
		endif
	endif
	;Debug.Trace("Ouch! We just OnTrapHit hitting " + akTarget)
	if (akTarget == cfgqst.PlayerRef) && abInitialHit
		if cfgqst.NymBETA
		ScreenMessage("OnTrapHit Player YES")
		endif	
		;	if (Utility.RandomInt(1, 100) <= cfgqst.CriticalDefeat)		;need to get their own slider value
		;	CriticalDefeat = true
		;	cfgqst.PlayerRef.DamageActorValue("Health", 10000.0)
		;	Debug.Notification("<font color='#ff0000'>The vicious trap knocked you out cold...</font>")
		;	endif
	else
		if cfgqst.NymBETA
		ScreenMessage("Trap Hit YES but not recognize the PC")
		endif
	endif
EndEvent


;/	
Bool Function CheckCrimeGold()			;#location

; Get the amount of crime gold owed the police faction
int crimeGold = PoliceFactionProperty.GetCrimeGold()
	
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

;Sunderstone Gorge has traps



;-------------------- Enemy Detection ---------------------

;MOVED TO CONFIGQUEST
;/
Function RaceMessage()

	if cfgqst.DefeatTypeHumans
	Debug.Notification("Defeated by Humans")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeHumans")
	elseif cfgqst.DefeatTypeTrolls
	Debug.Notification("Defeated by Trolls")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeTrolls")
	elseif cfgqst.DefeatTypeWolves
	Debug.Notification("Defeated by Wolves")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeWolves")
	elseif cfgqst.DefeatTypeUndead
	Debug.Notification("Defeated by Undead")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeUndead")
	elseif cfgqst.DefeatTypeFalmers
	Debug.Notification("Defeated by Falmers")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeFalmers")
	elseif cfgqst.DefeatTypeChaurus
	Debug.Notification("Defeated by Chauruses")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeChaurus")
	elseif cfgqst.DefeatTypeSkeevers
	Debug.Notification("Defeated by winking Skeevers")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeSkeevers")
	elseif cfgqst.DefeatTypeSpiders
	Debug.Notification("Defeated by Spiders eeeww")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeSpiders")
	elseif cfgqst.DefeatTypeSabreCats
	Debug.Notification("Defeated by SabreCats")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeSabreCats")
	elseif cfgqst.DefeatTypeBears
	Debug.Notification("Defeated by Brears")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeBears")
	elseif cfgqst.DefeatTypeDwarven
	Debug.Notification("Defeated by Dwarven Machines")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeDwarven")
	elseif cfgqst.DefeatTypeRieklings
	Debug.Notification("Defeated by Rieklings")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeRieklings")
	elseif cfgqst.DefeatTypeWerewolves
	Debug.Notification("Defeated by Werewolves")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeWerewolves")
	elseif cfgqst.DefeatTypeSpriggans
	Debug.Notification("Defeated by Spriggans")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeSpriggans")
	elseif cfgqst.DefeatTypeGiants
	Debug.Notification("Defeated by Giants")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGiants")
	elseif cfgqst.DefeatTypeGhosts
	Debug.Notification("Defeated by Ghosts")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatTypeGhosts")
	else
	Debug.Notification("No Race detected")
	Debug.Trace("NAKED DEFEAT playeraliasquest: DefeatType (NONE)")
	endif
;	cfgqst.DefeatTypeHumanoids 
;	cfgqst.DefeatTypeAnimals 
	
EndFunction
/;

;/
Function SheathWeapon()
NymTrace("SheathWeapon()")

	if cfgqst.PlayerRef.IsWeaponDrawn() 
	cfgqst.PlayerRef.SheatheWeapon() 
	Utility.Wait(1.0)
	endif

EndFunction	
/;

Function PlayerGetsDefeated()	;#Defeat
;#GUIDE: this function prepares the player for Defeat. There is no way back now, the outcome (defeat) is already determined.
Debug.Trace("NAKED DEFEAT playeraliasquest: PlayerGetsDefeated()")

		cfgqst.DefeatStatePlayer = "Defeated"
		cfgqst.AddVictimsToCalmFactions(true)
		;REGULAR START

		if cfgqst.IsDefeatRunning()
		;shortcut when already surrendered			
		;#ERROR
		Debug.Trace("NAKED DEFEAT playeraliasquest: PlayerGetsDefeated(#ERROR DefeatQuest running already)")
		endif
		
		if !cfgqst.IsDefeatRunning()
		
			cfgqst.SendModEvents(true) ;DHLP suspend etc.
			cfgqst.FirstStartUp = true				
			;Debug.SetGodMode(true)	

			;>>>>>>>>>>>>> Allegiance Quest Start >>>>>>>>>>>>>>>>>>>>>>
			cfgqst.DefeatQuestRunning = true			;#1 		ORDER IS TO BE KEPT!!!!!!
			;cfgqst.TempSender = cfgqst.DefeatEntranceVia
	
			cfgqst.AllegianceScanType = "Combat Defeat Start"
			SendModEvent("StartAllegianceQuest")		;#2 		;Only Time AllegianceQuest starts in playeralias			
			SendModEvent("Moan")	

			;>>>>>>>>>>>>> Get Defeat Type >>>>>>>>>>>>>>>>>>>>>>
			
			SendModEvent("StartGetDefeatType")			
			GetDefeatTypeRunning = true
			
			;----------------------------------------------------

		;	if IsCriticalDefeat 
		;	cfgqst.DefeatEntranceVia = "Critical Defeat" 
		;	elseif IsPoisonDefeat
		;	cfgqst.DefeatEntranceVia = "Poisoned Potion Defeat"			
		;	elseif IsBleedoutDefeat
		;	cfgqst.DefeatEntranceVia = "Bleedout Defeat" 
		;	else
		;	cfgqst.DefeatEntranceVia = "#ERROR Defeat via What?"
		;	endif 
			
			
			if cfgqst.DefeatEntranceVia == "empty"
			cfgqst.DefeatEntranceVia = "%NOTE EMPTY Entry Message" 
			endif 
			;>>>>>>>>>>>>>>>>>> IDLE Cowering Pose >>>>>>>>>>>>>>>>>>
			;if we are NOT bleeding out we need a pose 
			;if IsCriticalDefeat || IsPoisonDefeat
			if Outcome_PlayerDefeated
			
			cfgqst.PlayerSheatheWeapon()
			cfgqst.StripWeapons()
			cfgqst.Immobilize(true)
			CriticalDefeatPose()
		;/
			int i = Utility.RandomInt(1,6)
			SendModEvent("Moan")	
				if i == 1
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[7])
				elseif i == 2
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[8])
				elseif i == 3
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[9])
				elseif i == 4
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[12])
				elseif i == 5
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[16])
				elseif i == 6
				cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesDefeatUnbound[0])
				endif
/;		
			;Utility.Wait(2.0)
			Utility.Wait(0.5)
			;>>>>>>>>>>>>> Crawl Start >>>>>>>>>>>>>>>>>>>>>>
		;	cfgqst.Crawl(cfgqst.PlayerRef, true)	;#crawl START - EARLY , check order of things ;#Kara
			endif		

			;>>>>>>>>>>>>> Follower Bleedout Idle >>>>>>>>>>>>>>>>>>>>>> 		
				
			if folqst.IsFollowerPresent()
				Debug.trace("NAKED DEFEAT playeraliasquest: StartFollowerIdleQuest_01()")
				folidle01.StartFollowerIdleQuest_01("none")		
				Utility.Wait(0.5)
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
		;	ScreenMessage("All is lost...")
			
			;>>>>>>>>>>>>>>>>>> Wait for Defeat Type >>>>>>>>>>>>>>>>>>
			int i = 10
			while (i > 0) && (cfgqst.DefeatType == "none")	
			i -= 1
			Utility.Wait(1.0) ;we wait for GetDefeatType()
		;	NymTrace("#NOTE WAIT for DefeatType")
			NymBox("#NOTE WAIT for DefeatType")
			endwhile
			
			;>>>>>>>>>>>>>>>>>> Bleedout Recovery >>>>>>>>>>>>>>>>>>
		;	if IsBleedoutDefeat
		;	NymTrace("#Bleedout4")
		;		if cfgqst.IsNymrasGame()
		;		cfgqst.Crawl(cfgqst.PlayerRef, true)
		;		endif 
			
		;	Utility.Wait(2.0)

		;	cfgqst.PlayerRef.RestoreActorValue("Health", 100)	;heal in full
		;	cfgqst.PlayerRef.SetNoBleedoutRecovery(true)	
				
		;	endif

			;>>>>>>>>>>>>>>>>>> HealthBoost [Option] >>>>>>>>>>>>>>>>>>
		;	if cfgqst.HealthBoost
;
;			cfgqst.PlayerRef.ModActorValue("health", 100000.0)
;			endif

			if !cfgqst.PlayerRef.IsInFaction(DefeatFaction)
			cfgqst.PlayerRef.AddToFaction(DefeatFaction)
			endif
			;-------------------------------------------------------
			
			cfgqst.PlayerRef.stopcombat()
			SendModEvent("Moan")	

			UnregisterForKey(cfgqst.DefeatKey)	;might not be necessary anymore
				
			;---------------------------------------------------
						
			Debug.trace("NAKED DEFEAT playeraliasquest: calmquest.Start() (Regular Start)")	
			NymTrace("CalmQuest.Start() 5726 StartDefeat()")
			CalmQuest.Start() 		;Standardize this!!! 
		
		;ALREADY SURRENDERED, just heal
		elseif cfgqst.DefeatQuestRunning 
		cfgqst.PlayerRef.RestoreActorValue("Health", 1000)	;heal in full					
		endif
		

	IsCriticalDefeat = false
	IsPoisonDefeat = false
	IsBleedoutDefeat = false			

EndFunction


;Event OnNadeSurrender(string eventName, string strArg, float numArg, Form sender)

;Debug.notification("IT WORKED")

;GetDefeatType()
;UnregisterForModEvent("Nade-Surrender")

;EndEvent


String Function GetRaceKeyFromFaction(Actor akActor = None)

	Debug.trace("NAKED DEFEAT playeraliasquest: GetRaceKeyFromFaction()")	

	if akActor.IsInFaction(cfgqst.FactionsHumanoid[0]) ;Daedra
	return "DEM_Draugrs"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[1]) ;Draugr
	return "DEM_Draugrs"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[2]) ;Falmer
	return "DEM_Falmers"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[4]) ;Spriggan
	return "DEM_Spriggans"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[5]) ;Riekling
	return "DEM_Rieklings"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[6]) ;Spriggan Predator
	return "DEM_Spriggans"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[12]) ;Skeleton
	return "DEM_Draugrs"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[13]) ;DwarvenAutomaton
	return "DEM_DwarvenCenturions"
	elseif akActor.IsInFaction(cfgqst.FactionsHumanoid[14]) ;Dremora
	return "DEM_Draugrs"
	
	;/
	;HUMANOID
	cfgqst.FactionsHumanoid[0]	;Daedra
	cfgqst.FactionsHumanoid[1]	;Draugr
	cfgqst.FactionsHumanoid[2]	;Falmer
	cfgqst.FactionsHumanoid[3]	;Giant
	cfgqst.FactionsHumanoid[4]	;Spriggan
	
	cfgqst.FactionsHumanoid[5]	;Riekling
	cfgqst.FactionsHumanoid[6]	;Spriggan Predator
	cfgqst.FactionsHumanoid[7]	;Troll
	cfgqst.FactionsHumanoid[8]	;Dragonpriest
	cfgqst.FactionsHumanoid[9]	;Dragonpriest
	
	cfgqst.FactionsHumanoid[10]	;Werewolf
	cfgqst.FactionsHumanoid[11]	;Hagraven
	cfgqst.FactionsHumanoid[12]	;Skeleton
	cfgqst.FactionsHumanoid[13]	;DwarvenAutomaton
	cfgqst.FactionsHumanoid[14]	;Dremora
	
	;PREDATORS
	cfgqst.FactionsPredators[0]	;PredatorFaction
	cfgqst.FactionsPredators[1]	;	Prey(notinuse)
	cfgqst.FactionsPredators[2]	;Spider
	cfgqst.FactionsPredators[3]	;Chaurus
	cfgqst.FactionsPredators[4]	;Skeever
	
	cfgqst.FactionsPredators[5]	;Dog
	cfgqst.FactionsPredators[6]	;Wolf
	cfgqst.FactionsPredators[7]	;SabreCat
	cfgqst.FactionsPredators[8]	;Bear
	cfgqst.FactionsPredators[9]	;Slaugtherfish
	
	cfgqst.FactionsPredators[10]	;Fox
	cfgqst.FactionsPredators[11]	;
	cfgqst.FactionsPredators[12]	;
	cfgqst.FactionsPredators[13]	;
	cfgqst.FactionsPredators[14]	;
	
	;PREY
	cfgqst.FactionsPrey[0]	;PreyFaction
	cfgqst.FactionsPrey[1]	;Hare
	cfgqst.FactionsPrey[2]	;Chicken
	cfgqst.FactionsPrey[3]	;Mammoth
	cfgqst.FactionsPrey[4]	;Goat
	
	cfgqst.FactionsPrey[5]	;
	cfgqst.FactionsPrey[6]	;
	cfgqst.FactionsPrey[7]	;
	cfgqst.FactionsPrey[8]	;
	cfgqst.FactionsPrey[9]	;
	
	cfgqst.FactionsPrey[10]	;
	cfgqst.FactionsPrey[11]	;
	cfgqst.FactionsPrey[12]	;
	cfgqst.FactionsPrey[13]	;
	cfgqst.FactionsPrey[14]	;
	/;
	
	endif
Endfunction


string RaceKey = "none"


Int iFormId
Int iModIndex
String sFileName

Function CriticalDefeatPose()		;USE NEW PLAYPOSEONACTOR FUNCTION ;#CriticalDefeatPose()
	
	if cfgqst.PlayerRef.IsWeaponDrawn() 
	NymTrace("SheatheWeapon 013")
	cfgqst.PlayerRef.SheatheWeapon() 
	endif

	cfgqst.Immobilize(true)
	
	calmqst.PlayPoseOnActor(cfgqst.PlayerRef, "Player Down", false)		

EndFunction



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

Debug.Trace("NAKED DEFEAT playeraliasquest: "+Text1)

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
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg) "+Text3)
EndFunction

Function InfoMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowInfoMessages
	Debug.Notification("<font color='#ff7f00'>"+Text2+"</font>")
	endif
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg INFO) "+Text2)
	
EndFunction

Function DebugMessage(String Text2)		;#DebugMessage
	if cfgqst.ShowDebugMessages
	Debug.Notification("<font color='#00ffff'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg DEBUG) "+Text2)
	endif
EndFunction

Function NymMessage(String Text2)		;#DebugMessage
	if cfgqst.Nym()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.Nym()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT playeraliasquest: (#trace NYM) "+Text2)
	endif
EndFunction

Function GoodMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#0AAC00'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg) "+Text3)
EndFunction

Function BadMessage(String Text3)		;#ScreenMessage ;narrative Messages
	if cfgqst.ShowNarrativeMessages
	Debug.Notification("<font color='#A52A2A'>"+Text3+"</font>")
	endif
	Debug.trace("NAKED DEFEAT playeraliasquest: (#msg) "+Text3)
EndFunction



Function NymBox(String Text2)		;#NymBox
	if Nym()
	Debug.MessageBox("configuest: "+Text2)
	endif 
	Debug.trace("NAKED DEFEAT playeraliasquest: BOX (#Box NYM) "+Text2)

EndFunction


Bool Function Nym()

	if cfgqst.Nym()
	return TRUE
	else
	return false
	endif 
EndFunction


;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
