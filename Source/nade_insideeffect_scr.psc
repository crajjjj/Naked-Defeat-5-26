Scriptname nade_insideeffect_scr extends activemagiceffect  

GlobalVariable Property TrapActive Auto
Actor Property PlayerRef Auto
slaFrameworkScr Property sla  Auto  
nade_configquest_scr Property cfgqst Auto
Quest Property qst Auto
Quest Property Cloak Auto
ObjectReference Property SafeCont Auto
Weapon Property Pickaxe Auto
Idle Property KnockOut Auto
Idle Property WakeUp Auto
ImageSpaceModifier Property StrikeAndFall Auto
ImageSpaceModifier Property Woozy Auto
ImageSpaceModifier Property BlackFrame Auto
Sound Property TrapSound Auto
LocationAlias[] Property ForcedLocAliases Auto
MiscObject Property Gold Auto
;/
Bool Function ValidateLocation(Location loc)
	Bool r = false
	Int i = cfgqst.DungeonCount
	while (i && !r)
		i -= 1
		r = loc.HasKeyword(cfgqst.DungeonList[i])
	endwhile
	return r
EndFunction

Bool Function ValidateKeywords(Form frm)
	Bool r = false
	Int i = cfgqst.KeywordCount
	while (i && !r)
		i -= 1
		r = frm.HasKeyword(cfgqst.KeywordExceptionList[i])
	endwhile
	return r
EndFunction

Function StripPlayer()
	Form frm
	Int i	
	Int j	

	PlayerRef.RemoveAllItems(SafeCont, true, false)

	i = SafeCont.GetNumItems()
	while i
		i -= 1
		frm = SafeCont.GetNthForm(i)
		if frm && ValidateKeywords(frm)
			SafeCont.RemoveItem(frm, SafeCont.GetItemCount(frm), true, PlayerRef)
		endif
	endwhile

	i = cfgqst.MiscObjectCount
	while i
		i -= 1
		j = SafeCont.GetItemCount(cfgqst.MiscObjectExceptionList[i])
		if j
			SafeCont.RemoveItem(cfgqst.MiscObjectExceptionList[i], j, true, PlayerRef)
		endif
	endwhile

	if cfgqst.ExceptionList[3] && SafeCont.GetItemCount(Pickaxe)
		SafeCont.RemoveItem(Pickaxe, 1, true, PlayerRef)
	endif

	Utility.Wait(1)

	i = PlayerRef.GetItemCount(Gold)
	if i
		PlayerRef.RemoveItem(Gold, i, true, SafeCont) 
	endif

EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Bool cocoon = false

	TrapActive.SetValueInt(0)
	if cfgqst.ShowDebugMessages
		Debug.Notification("ND traps disabled.")
	endif

	Location loc = PlayerRef.GetCurrentLocation()
	if loc && ValidateLocation(loc)

		Int arousal = sla.GetActorArousal(PlayerRef)
		if arousal >= cfgqst.TrapArousalThreshold

			Int locid = loc.GetFormID()

			Bool boom
			if locid == cfgqst.LastLocationID
				boom = cfgqst.LastLocationTrapped
			else
				boom = (Utility.RandomInt(1, 100)<= cfgqst.TrapProb)
				cfgqst.LastLocationID = locid
				cfgqst.LastLocationTrapped = boom
			endif

			if boom

				Game.ForceFirstPerson()
				TrapSound.Play(PlayerRef)
				StrikeAndFall.Apply()
				PlayerRef.SheatheWeapon()

				Bool aSneaking = Game.IsSneakingControlsEnabled()
				Bool aMenu = Game.IsMenuControlsEnabled()
				Bool aActivate = Game.IsActivateControlsEnabled()
				Bool aJournalTabs = Game.IsJournalControlsEnabled()
				Game.DisablePlayerControls(1, 1, 1, 1, 0, 1, 1, 1, 0)

				PlayerRef.PlayIdle(KnockOut)
				Utility.Wait(7)

				Game.FadeOutGame(true, true, 2.0, 8.0)
				StrikeAndFall.PopTo(BlackFrame)
				if cfgqst.ShowDebugMessages
					Debug.MessageBox("As you are passing through the entrance, a magical trap activates under your feet with a fierce explosion. The last thought that crosses your quickly fading mind before you black out is how much you hate the bastard who cursed this damn gate...")
				endif

				if cfgqst.ShowDebugMessages
					Debug.Notification("Stripping player...")
				endif
				StripPlayer()		

				if cfgqst.Excite
					if !(sla.IsActorArousalLocked(PlayerRef) || sla.IsActorArousalBlocked(PlayerRef))
						if arousal < 100
							sla.SetActorExposure(PlayerRef, 100)
						endif
					endif
				endif

				if PlayerRef.IsSneaking()
					PlayerRef.StartSneaking()
				endif

				;stripping NPCs
				Cloak.Start()
				if Cloak.GetStage() == 10
					Cloak.SetStage(100)
				endif

				Int stg = qst.GetStage()
				if  (stg < 100) || (stg > 999)						;if the quest is not running
					if SafeCont.GetNumItems()
						if stg != 10								;stage=10 would be impossible anyway, because it's the startup stage, and a SetStage() to a different stage is due before the end of this script
							Int i = cfgqst.GetParentHoldIndex(loc)
							ForcedLocAliases[0].ForceLocationTo(loc)
							ForcedLocAliases[1].ForceLocationTo(cfgqst.Holds[i])		;I wonder what it can do with the i == -1 case
							ForcedLocAliases[2].ForceLocationTo(cfgqst.Capitals[i])
							qst.Start()
						endif
						stg = (qst as nade_errandquest_scr).GetRandomStage(loc)
					else
						stg = 0									;stg = 0 means that the SetStage() is NOT to be called within this script (because there would be no quest target)					
						if cfgqst.ShowDebugMessages
							Debug.Notification("You were already naked and empty-handed, no items were stripped.")
						endif
					endif
				else
					stg = 0										;stg = 0 means that the SetStage() is NOT to be called within this script (because the quest is still running after a previous trap event)
					if cfgqst.ShowDebugMessages
						Debug.Notification(cfgqst.ModName+" quest is already running.")
					endif
				endif

				if stg == 500														;if stg && (cs == 100) && ((qst as nade_errandquest_scr).QuestMode == 5) && ((Cloak as nade_cloakeffect_qf_scr).CaptorIndex >= 0)
					(qst as nade_errandquest_scr).PlayerRepos = true
					(qst as nade_errandquest_scr).PlayerX = PlayerRef.X
					(qst as nade_errandquest_scr).PlayerY = PlayerRef.Y
					(qst as nade_errandquest_scr).PlayerZ = PlayerRef.Z
				else
					(qst as nade_errandquest_scr).PlayerRepos = false
					if Cloak.GetStage() == 100
						cocoon = ((Cloak as nade_cloakquest_qf_scr).SpiderIndex >= 0) && (Utility.RandomInt(1, 100) <= cfgqst.SpiderProb)
						if !cocoon
							Cloak.SetStage(1000)										;we don't need it anymore
						endif
					endif
				endif

				if (qst as nade_errandquest_scr).PlayerRepos
					Cloak.SetStage(150)										;set captor alias
					ObjectReference marker = (qst as nade_errandquest_scr).MarkerAlias[1].GetReference()
					marker.MoveTo((Cloak as nade_cloakquest_qf_scr).Captor)
					Cloak.SetStage(200)										;calm NPCs
					PlayerRef.StopCombat()
					PlayerRef.MoveTo(marker)
					Utility.Wait(1.0)
					if cfgqst.ShowDebugMessages
						Debug.MessageBox("Having regained consciousness, you find yourself bound, naked and helpless...")
					endif
					Game.EnablePlayerControls(1, 1, 1, 1, aSneaking, aMenu, aActivate, aJournalTabs, 0)
					(qst as nade_errandquest_scr).StartWhip((Cloak as nade_cloakquest_qf_scr).Captor as Actor, marker)
					Game.FadeOutGame(false, true, 2.0, 8.0)
					BlackFrame.PopTo(Woozy)
				else
					if cocoon
						Cloak.SetStage(160)									;set captor reference
						Cloak.SetStage(200)									;calm NPCs
						Game.FadeOutGame(false, true, 2.0, 8.0)
						BlackFrame.PopTo(Woozy)
						(Cloak as nade_cloakquest_qf_scr).Captor.MoveTo(PlayerRef)
						(qst as nade_errandquest_scr).StartCocoon()
						Utility.Wait(12)
						Game.EnablePlayerControls(1, 0, 1, 1, 0, 0, 0, 0, 0)
						Game.ForceThirdPerson()
						Utility.Wait(2)
						(qst as nade_errandquest_scr).ShowCocoonMenu()
					else
						Game.FadeOutGame(false, true, 2.0, 8.0)
						BlackFrame.PopTo(Woozy)
						PlayerRef.PlayIdle(WakeUp)
						Utility.Wait(14)
						Game.EnablePlayerControls(1, 1, 1, 1, aSneaking, aMenu, aActivate, aJournalTabs, 0)
						if cfgqst.ShowDebugMessages
							Debug.MessageBox("Having regained consciousness, you are puzzled to find yourself completely naked and helpless. It takes you a while until you realize that all your belongings have been charmed away by the magical trap, the Gods know where...")
						else
							Game.ForceThirdPerson()
						endif
					endif
				endif

				if stg
					qst.SetStage(stg)
				endif

			elseif cfgqst.ShowDebugMessages
				Debug.Notification("You have luckily avoided the gate trap.")
			endif
		elseif cfgqst.ShowDebugMessages
			Debug.Notification("Your arousal level is not high enough to trigger the trap event.")
		endif
	elseif cfgqst.ShowDebugMessages
		Debug.Notification("This location type is not eligible for "+cfgqst.ModName+".")
	endif

EndEvent
/;