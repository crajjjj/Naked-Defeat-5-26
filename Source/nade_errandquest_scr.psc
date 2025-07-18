Scriptname nade_errandquest_scr extends Quest Conditional

nade_configquest_scr Property cfgqst Auto
;zadlibs Property libs Auto  
SexLabFramework Property SexLab Auto
;slaFrameworkScr Property sla Auto
Idle Property StandStill Auto

ObjectReference Property SafeCont Auto
MiscObject[] Property MiscItems Auto
ReferenceAlias[] Property MarkerAlias Auto
ReferenceAlias[] Property ActorAlias Auto
ReferenceAlias[] Property ObjectAlias Auto
;Location[] Property LocationExceptionList Auto
Idle[] Property zazidles Auto
;Idle Property peepose Auto
;Armor Property pee Auto
Scene Property BeatScene Auto
WEAPON Property Cane Auto
Float Property PlayerX Auto
Float Property PlayerY Auto
Float Property PlayerZ Auto
Bool Property PlayerRepos Auto
Quest Property Cloak Auto
;ImageSpaceModifier Property BlackFrame Auto
;ImageSpaceModifier Property Woozy Auto
;Idle Property WakeUp Auto
Faction Property GuardDialogueFaction Auto
;Armor Property Squirt Auto
;Armor Property Cocoon Auto
;Idle[] Property CocoonStruggle Auto
;Message Property nade_CocoonMsg Auto
sslSystemConfig property Config auto
GlobalVariable Property nade_StopCrime Auto

Int Property QuestMode Auto Conditional
Int Property TotalGold Auto Conditional
Bool Property HasBeenRaped Auto Conditional
Bool Property HasWetScene Auto Conditional

;Bool NeedArmbinder
Int NextStage
Int ActorIndex
Bool CanShowMenu = true
Int StruggleCount = 5
Float StaminaChange = 1.0

Function GuardWhip(Actor Whipper)

	ObjectReference marker = MarkerAlias[1].GetReference()
	marker.MoveTo(Whipper)
	cfgqst.PlayerRef.StopCombat()
	cfgqst.PlayerRef.MoveTo(marker)
	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, false, false)
	StartWhip(Whipper, marker)

EndFunction

Function StartWhip(Actor Whipper, ObjectReference Vehicle = None)

	if !Whipper.GetItemCount(Cane)
		Whipper.AddItem(Cane, 1)
	endif
	if Vehicle
		cfgqst.PlayerRef.SetVehicle(Vehicle)
	endif
	Int i = Utility.RandomInt(2, zazidles.Length - 1)
	if cfgqst.ShowDebugMessages
		Debug.Notification("Whipping scene starts. Idle = " + i)
	endif
;	Game.ForceThirdPerson()
	Game.EnablePlayerControls()
	cfgqst.PlayerRef.PlayIdle(zazidles[i])
	Game.SetPlayerAIDriven(true)
	Game.DisablePlayerControls(1, 1, 0, 0, 0, 1, 1, 1, 0)
	BeatScene.Start()

EndFunction


Function EndWhipPhase()
	ObjectReference whipper = ActorAlias[2].GetReference()
	
	cfgqst.PlayerRef.SetVehicle(cfgqst.PlayerRef)
	if (whipper as Actor).IsInFaction(GuardDialogueFaction) || (whipper == ActorAlias[1].GetReference())
		cfgqst.PlayerRef.PlayIdle(zazidles[0])
	else
		cfgqst.PlayerRef.PlayIdle(zazidles[1])
	endif

EndFunction


Function ReStrip()
	Cloak.SetStage(250)
EndFunction


;Function StartWetScene()
;
;	Actor captor = ActorAlias[2].GetReference() as Actor
;	captor.PlayIdle(peepose)
;	captor.AddItem(Pee, 1, true)
;	captor.EquipItem(Pee, false, true)
;	Cloak.SetStage(250)
;
;EndFunction


Function EndWhip()
	ObjectReference whipper = ActorAlias[2].GetReference()

	if (whipper as Actor).IsInFaction(GuardDialogueFaction) || (whipper == ActorAlias[1].GetReference())
		
		nade_StopCrime.SetValueInt(2)
		whipper.RemoveItem(Cane, 1)
;		StartLeak(false)
		Game.SetPlayerAIDriven(false)
		Game.EnablePlayerControls()
	elseif HasWetScene
;		whipper.RemoveItem(Pee, 1, true, None)	
		(whipper as Actor).PlayIdle(zazidles[0])
		Utility.Wait(4)
;		StartLeak(false)
;		ThrowOut()
;	else
;		ApplyDialogOutcome(2, 2, 0, 0, 2)
	endif

EndFunction


;Function ThrowOut()
;
;	BlackFrame.Apply()
;	cfgqst.PlayerRef.PlayIdle(zazidles[0])
;	Game.ForceFirstPerson()
;	if cfgqst.ShowDebugMessages
;		Debug.MessageBox("You feel strong hands grabbing your trembling body before the world goes black in front of your eyes...")
;	endif
;	ObjectReference mrk = MarkerAlias[0].GetReference()
;	if mrk
;		cfgqst.PlayerRef.MoveTo(mrk)
;	else
;		cfgqst.PlayerRef.SetPosition(PlayerX, PlayerY, PlayerZ)
;	endif
;	Cloak.SetStage(300)
;	Game.FadeOutGame(false, true, 2.0, 8.0)
;	BlackFrame.PopTo(Woozy)
;	Game.SetPlayerAIDriven(false)
;	cfgqst.PlayerRef.PlayIdle(WakeUp)
;	Utility.Wait(14)
;	Game.EnablePlayerControls()
;	if cfgqst.ShowDebugMessages
;		Debug.MessageBox("Having regained consciousness, you once again find yourself at the entrance.")
;	else
;		Game.ForceThirdPerson()
;	endif
;	SetStage(502)
;
;EndFunction


;Int Function GetRandomStage(Location loc)
;	Int i
;	ObjectReference obj
;	Actor act
;
;prepare weight list so that the guard event is the default

;	cfgqst.OutcomeWeights[0] = cfgqst.TheftWeight[1]		;guard
;	cfgqst.OutcomeWeights[1] = cfgqst.TheftWeight[2]		;citizen
;	cfgqst.OutcomeWeights[2] = cfgqst.TheftWeight[3]		;bandit
;	cfgqst.OutcomeWeights[3] = cfgqst.TheftWeight[4]		;dungeon
;	cfgqst.OutcomeWeights[4] = cfgqst.TheftWeight[5]		;captive
;	cfgqst.OutcomeWeights[5] = cfgqst.TheftWeight[0]		;entrance
;
;	if cfgqst.ShowDebugMessages
;		Debug.Notification("Basic weights = "+cfgqst.OutcomeWeights[5]+", "+cfgqst.OutcomeWeights[0]+", "+cfgqst.OutcomeWeights[1]+", "+cfgqst.OutcomeWeights[2]+", "+cfgqst.OutcomeWeights[3]+", "+cfgqst.OutcomeWeights[4])
;	endif

;if no map marker or the location is in the exception list

;	if (cfgqst.OutcomeWeights[1] || cfgqst.OutcomeWeights[4]) && ((cfgqst.IndexOfLoc(loc, LocationExceptionList) >=  0) || !MarkerAlias[0].GetReference())
;		cfgqst.OutcomeWeights[1] = 0						;citizen event disallowed
;		cfgqst.OutcomeWeights[5] = 0						;entrance event disallowed
;	endif

;if no citizen or cannot be activated

;	if cfgqst.OutcomeWeights[1]
;		obj = ActorAlias[0].GetReference()
;		 if !obj || obj.IsActivationBlocked()
;			cfgqst.OutcomeWeights[1] = 0					;citizen event disallowed
;		endif
;	endif

;if no bandit or cannot be activated

;	if cfgqst.OutcomeWeights[2]
;		obj = ActorAlias[3].GetReference()
;		 if !obj || obj.IsActivationBlocked()
;			cfgqst.OutcomeWeights[2] = 0					;bandit event disallowed
;		endif
;	endif
	
;if no container or cannot be activated

;	if cfgqst.OutcomeWeights[3]
;		obj = ObjectAlias[1].GetReference()
;		 if !obj || obj.IsActivationBlocked()
;			cfgqst.OutcomeWeights[3] = 0					;dungeon event disallowed
;		endif
;	endif

;if no container or captors inside

;	if cfgqst.OutcomeWeights[4]
;		obj = ObjectAlias[1].GetReference()
;		 if !obj || obj.IsActivationBlocked() || (Cloak.GetStage() != 100) || !(Cloak as nade_cloakquest_qf_scr).Captor
;			cfgqst.OutcomeWeights[4] = 0					;captive event disallowed
;		endif
;	endif
;
;	if cfgqst.ShowDebugMessages
;		Debug.Notification("Used weights = "+cfgqst.OutcomeWeights[5]+", "+cfgqst.OutcomeWeights[0]+", "+cfgqst.OutcomeWeights[1]+", "+cfgqst.OutcomeWeights[2]+", "+cfgqst.OutcomeWeights[3]+", "+cfgqst.OutcomeWeights[4])
;	endif
;
;	i = cfgqst.GetRandomIndexFromWeights(cfgqst.OutcomeWeights)
;	if i == cfgqst.OutcomeWeights.Length - 1
;		QuestMode = 0
;	else
;		QuestMode = i+1
;	endif
;
;	if cfgqst.ShowDebugMessages
;		Debug.Notification("Random quest mode = "+QuestMode)
;	endif

;if dungeon mode

;	if QuestMode == 5																					;Captive event
;		SafeCont.RemoveItem(ObjectAlias[2].GetReference(), 1, true, ObjectAlias[1].GetReference())
;		SafeCont.RemoveItem(ObjectAlias[3].GetReference(), 1, true, None)		;delete letter
;		SafeCont.RemoveItem(ObjectAlias[4].GetReference(), 1, true, None)		;delete receipt
;		SafeCont.RemoveItem(ObjectAlias[5].GetReference(), 1, true, None)		;delete book
;		ObjectAlias[3].Clear()
;		ObjectAlias[4].Clear()
;		ObjectAlias[5].Clear()
;		i = 500
;	elseif QuestMode == 4																				;Dungeon event
;		SafeCont.RemoveItem(ObjectAlias[2].GetReference(), 1, true, ObjectAlias[1].GetReference())
;		SafeCont.RemoveItem(ObjectAlias[3].GetReference(), 1, true, None)
;		ObjectAlias[3].Clear()												;delete letter
;		i = 150
;	elseif QuestMode == 3																				;Bandit event
;		SafeCont.RemoveItem(ObjectAlias[2].GetReference(), 1, true, ActorAlias[3].GetReference())
;		SafeCont.RemoveItem(ObjectAlias[3].GetReference(), 1, true, None)
;		ObjectAlias[3].Clear()												;delete letter
;		i = 150
;	elseif QuestMode == 2																				;Citizen event
;		HasBeenRaped = false
;		SafeCont.RemoveItem(ObjectAlias[2].GetReference(), 1, true, ActorAlias[0].GetReference())
;		SafeCont.RemoveItem(ObjectAlias[4].GetReference(), 1, true, None)		;delete receipt
;		SafeCont.RemoveItem(ObjectAlias[5].GetReference(), 1, true, None)		;delete book
;		ObjectAlias[4].Clear()
;		ObjectAlias[5].Clear()
;		obj = ObjectAlias[3].GetReference()
;		obj.SetActorOwner(cfgqst.PlayerRef.GetActorBase())
;		obj.MoveTo(MarkerAlias[0].GetReference(), 0.0, 0.0, 210.0)
;		i = 200
;	elseif QuestMode == 0																				;Entrance event
;		SafeCont.RemoveItem(ObjectAlias[3].GetReference(), 1, true, None)		;delete letter
;		SafeCont.RemoveItem(ObjectAlias[4].GetReference(), 1, true, None)		;delete receipt
;		SafeCont.RemoveItem(ObjectAlias[5].GetReference(), 1, true, None)		;delete book
;		obj = ObjectAlias[2].GetReference()
;		obj.MoveTo(MarkerAlias[0].GetReference(), 0.0, 0.0, 210.0)
;		obj.SetActorOwner(cfgqst.PlayerRef.GetActorBase())
;		ObjectAlias[3].Clear()
;		ObjectAlias[4].Clear()
;		ObjectAlias[5].Clear()
;		i = 100
;	else																									;Guard event
;		SafeCont.RemoveItem(ObjectAlias[2].GetReference(), 1, true, ActorAlias[1].GetReference())
;		SafeCont.RemoveItem(ObjectAlias[3].GetReference(), 1, true, None)		;delete letter
;		ObjectAlias[3].Clear()
;		i = 150
;	endif
;
;	return i
;
;EndFunction

;Function CountTotalGold()
;	TotalGold = ObjectAlias[0].GetReference().GetItemCount(MiscItems[0]) + cfgqst.PlayerRef.GetItemCount(MiscItems[0])
;EndFunction

;Function Pay(Int akAmount = 1)
;	cfgqst.PlayerRef.RemoveItem(MiscItems[0], akAmount)
;EndFunction

;Function ReportCrime(Int akActorIndex = 0)
;	ActorAlias[akActorIndex].GetActorRef().SendAssaultAlarm()
;EndFunction

;Function AddEquipment()
;	cfgqst.PlayerRef.AddItem(ObjectAlias[2].GetReference())
;EndFunction

;Function AddLetterToActor(Int akLetterIndex = 1, Int akActorIndex = 2)
;	ActorAlias[akActorIndex].GetReference().AddItem(ObjectAlias[akLetterIndex+3].GetReference(), 1, true)
;EndFunction

;Function AddLetter(Int akIndex = 0)
;	cfgqst.PlayerRef.AddItem(ObjectAlias[akIndex+3].GetReference())
;EndFunction

;Function RemoveLetter(Int akIndex = 0)
;	cfgqst.PlayerRef.RemoveItem(ObjectAlias[akIndex+3].GetReference())
;	ObjectAlias[akIndex+3].Clear()
;EndFunction

;Bool Function DeleteLetter(Int akIndex = 0)
;	ObjectReference letter = ObjectAlias[akIndex+3].GetReference()
;	if letter.GetParentCell() == cfgqst.PlayerRef.GetParentCell()
;		return false
;	else
;		letter.Delete()
;		ObjectAlias[akIndex+3].Clear()
;		return true
;	endif
;EndFunction

;Function KillLetter(Int akIndex = 0)
;	ObjectAlias[akIndex+3].GetReference().Delete()
;	ObjectAlias[akIndex+3].Clear()
;EndFunction

;Function RemoveQuillAndInkwell()
;	cfgqst.PlayerRef.RemoveItem(MiscItems[1], 1, false)
;	cfgqst.PlayerRef.RemoveItem(MiscItems[2], 1, false)
;EndFunction

;Function StartLeak(Bool value = true)
;	if value
;		cfgqst.ChangeArousal(cfgqst.ExposureChange[2])
;		libs.SexLabMoan(cfgqst.PlayerRef)
;		if cfgqst.PlayerRef.GetActorBase().GetSex()
;			cfgqst.PlayerRef.AddItem(Squirt, 1, true)
;			cfgqst.PlayerRef.EquipItem(Squirt, false, true)
;		endif
;		if cfgqst.WhipMarks
;			cfgqst.AddTattoo("Cane Marks", "Cane Marks Set")
;			cfgqst.SyncTattoos()
;		endif
;	else
;		if cfgqst.PlayerRef.GetActorBase().GetSex()
;			cfgqst.PlayerRef.RemoveItem(Squirt, 1, true, None)
;		endif
;	endif
;EndFunction

;Bool Function GiveBackAll()
;	ObjectReference obj
;	Int stg = GetStage()
;
;	if (stg > 0) && (stg < 1000)
;		obj = ObjectAlias[2].GetReference()
;		if obj && SafeCont.GetItemCount(obj)
;			SafeCont.RemoveItem(obj, 1, true, None)
;			ObjectAlias[2].Clear()
;		endif
;		obj = ObjectAlias[3].GetReference()
;		if obj && SafeCont.GetItemCount(obj)
;			SafeCont.RemoveItem(obj, 1, true, None)
;			ObjectAlias[3].Clear()
;		endif
;		obj = ObjectAlias[4].GetReference()
;		if obj && SafeCont.GetItemCount(obj)
;			SafeCont.RemoveItem(obj, 1, true, None)
;			ObjectAlias[4].Clear()
;		endif
;		obj = ObjectAlias[5].GetReference()
;		if obj && SafeCont.GetItemCount(obj)
;			SafeCont.RemoveItem(obj, 1, true, None)
;			ObjectAlias[5].Clear()
;		endif
;	endif
;	
;	cfgqst.GiveBackFollowerItems()
;
;	if SafeCont.GetNumItems()
;		SafeCont.RemoveAllItems(cfgqst.PlayerRef, true, true)
;		return(true)
;	else
;		return(false)
;	endif
;
;EndFunction

Function QuestReset()
	ObjectReference obj
	Int stg = GetStage()
	Bool running = (stg>0) && (stg < 1000)

	if running
		obj = ObjectAlias[2].GetReference()
		if obj
			obj.Delete()
			ObjectAlias[2].Clear()
		endif
		obj = ObjectAlias[3].GetReference()
		if obj
			obj.Delete()
			ObjectAlias[3].Clear()
		endif
		obj = ObjectAlias[4].GetReference()
		if obj
			obj.Delete()
			ObjectAlias[4].Clear()
		endif
		obj = ObjectAlias[5].GetReference()
		if obj
			obj.Delete()
			ObjectAlias[5].Clear()
		endif
	endif

	if SafeCont.GetNumItems()
		SafeCont.RemoveAllItems(cfgqst.PlayerRef, true, true)
	endif

	;cfgqst.GiveBackFollowerItems()

	if running
		SetStage(1000)
	endif

EndFunction


;Function OnSexFinished(String EventName, String ArgString, Float ArgNum, Form Sender)
;
;	UnRegisterForModEvent("AnimationEnd_NDUNSex")
;
;	nade_StopCrime.SetValueInt(3)
;	if NeedArmbinder 
;		cfgqst.AddHardDevice()
;	endif
;
;	if NextStage == 1000
;		ActorAlias[ActorIndex].GetReference().RemoveItem(ObjectAlias[2].GetReference(), 1, false, cfgqst.PlayerRef)
;	elseif NextStage == 169
;		cfgqst.PlayerRef.AddItem(ObjectAlias[5].GetReference(), 1, false)
;	elseif NextStage == 170
;		cfgqst.PlayerRef.AddItem(ObjectAlias[4].GetReference(), 1, false)
;	elseif NextStage
;		SetStage(NextStage)
;	endif
;
;	if PlayerRepos
;		nade_StopCrime.SetValueInt(5)
;		PlayerRepos = false
;		cfgqst.PlayerRef.PlayIdle(zazidles[1])
;		Utility.Wait(4)
;		StartLeak(false)
;		ThrowOut()
;	endif
;
;EndFunction


;Function ApplyDialogOutcome(Int akRestraints = 0, Int akSex = 0, Bool akCostMoney = false, Int akNextStage = 0, Int akActorIndex = 0)		;NYMRA PROSTITUITON or not?
;
;	Int i
;	nade_StopCrime.SetValueInt(100)
;	Bool femalepc = cfgqst.PlayerRef.GetLeveledActorBase().GetSex()
;
;	if akSex
;		(ActorAlias[akActorIndex].GetReference() as Actor).PlayIdle(StandStill)
;	endif
;
;	cfgqst.StealGold = akCostMoney
;	NextStage = akNextStage
;	ActorIndex = akActorIndex
;	NeedArmbinder = (cfgqst.BondageProb > 0) && (akSex == 2) && (akNextStage != 1000) && !PlayerRepos && (Utility.RandomInt(1, 100) >= cfgqst.HardDevProb)
;	cfgqst.GetDDTags()
;
;	if femalepc && cfgqst.BondageProb
;		if !akRestraints
;			if cfgqst.ShowDebugMessages
;				Debug.Notification("No restraints used.")
;			endif
;		elseif akRestraints == 1
;			if Utility.RandomInt(1,100) <= cfgqst.BondageProb
;				i = cfgqst.AddDevices(Utility.RandomInt(1, cfgqst.MaxNumDevices))
;				if cfgqst.ShowDebugMessages
;					Debug.Notification("Devious devices equipped: "+i+",  tags: '"+cfgqst.DevTags+"'")
;				endif
;				Utility.Wait(2.0)
;			endif
;		elseif akRestraints == 2
;			if Utility.RandomInt(1,100) <= cfgqst.BondageProb
;				i = cfgqst.AddDevices(cfgqst.MaxNumDevices)
;				if cfgqst.ShowDebugMessages
;					Debug.Notification("Devious devices equipped: "+i+",  tags: '"+cfgqst.DevTags+"'")
;				endif
;				Utility.Wait(2.0)
;			endif
;			if (akSex == 2) && (Utility.RandomInt(1, 100) <= cfgqst.BondageHaircutProb) && cfgqst.Shave()
;				Debug.Notification("Your hair has been shaved.")
;			endif
;		else
;			Debug.Notification("ERROR: invalid restraints code.")
;		endif
;	endif
;
;	Utility.Wait(1)
;
;	if !akSex
;		if cfgqst.ShowDebugMessages
;			Debug.Notification("No sex scene triggered.")
;		endif
;		OnSexFinished("", "", 0, None)
;	elseif akSex == 1
;		if cfgqst.ShowDebugMessages
;			Debug.Notification("Consensual sex scene starts.")
;		endif
;		RegisterForModEvent("AnimationEnd_NDUNSex", "OnSexFinished")
;		if femalepc
;			if !SexLab.QuickStart(cfgqst.PlayerRef, ActorAlias[ActorIndex].GetReference() as Actor, Victim=None, Hook="NDUNSex", AnimationTags="Vaginal,Anal,Oral")
;				Debug.Notification("ERROR starting consensual sex scene.")
;				OnSexFinished("", "", 0, None)
;			endif
;		else
;			if !SexLab.QuickStart(ActorAlias[akActorIndex].GetReference() as Actor, cfgqst.PlayerRef, Victim=None, Hook="NDUNSex", AnimationTags="Vaginal,Anal")
;				Debug.Notification("ERROR starting consensual sex scene.")
;				OnSexFinished("", "", 0, None)
;			endif
;		endif
;	elseif akSex == 2
;		if cfgqst.ShowDebugMessages
;			Debug.Notification("Rape scene starts.")
;		endif
;		RegisterForModEvent("AnimationEnd_NDUNSex", "OnSexFinished")
;		HasBeenRaped = SexLab.QuickStart(cfgqst.PlayerRef, ActorAlias[akActorIndex].GetReference() as Actor, Victim=cfgqst.PlayerRef, Hook="NDUNSex", AnimationTags="Aggressive")
;		if !HasBeenRaped
;			Debug.Notification("ERROR starting rape scene.")
;			OnSexFinished("", "", 0, None)
;		endif
;	else
;		Debug.Notification("Invalid sex code.")
;		OnSexFinished("", "", 0, None)
;	endif
;
;EndFunction

;Function StartCocoon()
;	Game.SetPlayerAIDriven(true)
;	StruggleCount = Utility.RandomInt(2, 8)
;	StaminaChange = cfgqst.GetStruggleStaminaChange()
;	if !cfgqst.PlayerRef.GetItemCount(Cocoon)
;		cfgqst.PlayerRef.AddItem(Cocoon, 1, true)
;	endif
;	cfgqst.PlayerRef.EquipItem(Cocoon, false, true)
;	cfgqst.PlayerRef.PlayIdle(CocoonStruggle[0])
;	UnregisterForAllKeys()
;	RegisterForKey(Input.GetMappedKey("Sprint"))
;	RegisterForKey(Input.GetMappedKey("Jump"))
;	RegisterForKey(Input.GetMappedKey("Forward"))
;	RegisterForKey(Input.GetMappedKey("Back"))
;	RegisterForKey(Input.GetMappedKey("Strafe Left"))
;	RegisterForKey(Input.GetMappedKey("Strafe Right"))
;	RegisterForKey(Input.GetMappedKey("Sneak"))
;;	RegisterForKey(Config.ToggleFreeCamera)
;;	RegisterForKey(cfgqst.DeflationKey)
;;	RegisterForKey(Input.GetMappedKey("Tween Menu"))
;	RegisterForKey(1)					;WHAT DOES THIS DO?
;EndFunction

;Function ShowCocoonMenu(Int KeyCode)
;	Int choice
;	
;	CanShowMenu = false
;	Float stamina = cfgqst.PlayerRef.GetActorValue("Stamina")
;	Float damage = StaminaChange*cfgqst.PlayerRef.GetBaseActorValue("Stamina")
;
;	if KeyCode == cfgqst.DeflationKey
;		if StruggleCount
;			choice = 1
;		else
;			choice = 0
;		endif	
;	else
;		choice = nade_CocoonMsg.Show()
;	endif
;	if choice == 0
;		;take off
;		if stamina < damage
;			cfgqst.Notify("You are too tired to move your body.",(KeyCode != cfgqst.DeflationKey) )
;		else
;			if StruggleCount
;				cfgqst.Notify("The cocoon is too tight to break out of it.", (KeyCode != cfgqst.DeflationKey))
;			else
;				cfgqst.PlayerRef.DamageActorValue("Stamina", damage)
;				cfgqst.PlayerRef.RemoveItem(Cocoon, 1, true, None)
;				UnregisterForAllKeys()
;				cfgqst.ChangeArousal(cfgqst.ExposureChange[0])
;				Utility.Wait(3)
;				cfgqst.PlayerRef.PlayIdle(zazidles[0])
;				Game.SetPlayerAIDriven(false)
;				Game.EnablePlayerControls()
;				Cloak.SetStage(300)
;			endif
;		endif
;	elseif choice == 1
;		;struggle
;		if stamina < damage
;			cfgqst.Notify("You are too tired to move your body.", (KeyCode != cfgqst.DeflationKey))
;		else
;			cfgqst.PlayerRef.DamageActorValue("Stamina", damage)
;			cfgqst.PlayerRef.PlayIdle(CocoonStruggle[1])
;			Utility.Wait(3)
;			cfgqst.PlayerRef.PlayIdle(CocoonStruggle[0])
;			Utility.Wait(1)
;			cfgqst.PlayerRef.PlayIdle(CocoonStruggle[1])
;			Utility.Wait(4)
;			cfgqst.PlayerRef.PlayIdle(CocoonStruggle[0])
;			cfgqst.ChangeArousal(cfgqst.ExposureChange[0])
;			libs.SexLabMoan(cfgqst.PlayerRef)
;			if StruggleCount
;				StruggleCount -= 1
;				if StruggleCount
;					cfgqst.Notify("The cocoon is stronger than it seems.", (KeyCode != cfgqst.DeflationKey))
;				else
;					cfgqst.Notify("The cocoon feels looser than before...", (KeyCode != cfgqst.DeflationKey))
;				endif
;			endif		
;		endif
;	endif
;	CanShowMenu = true
;EndFunction

;Event OnKeyDown(Int KeyCode) 
;	if cfgqst.PlayerRef.IsEquipped(Cocoon) && CanShowMenu
;		ShowCocoonMenu(KeyCode)
;	endif
;EndEvent