Scriptname nade_crimeeffect_scr extends activemagiceffect

;zadcfgqst Property cfgqst Auto
SPELL Property CrimeSpell Auto
Quest Property qst1 Auto ;GUARD PUNISH QUEST
Quest Property qst2 Auto
Quest Property qst3 Auto
Quest Property qst4 Auto
Quest Property qst5 Auto
nade_configquest_scr Property cfgqst Auto
SexLabFramework Property SexLab Auto
GlobalVariable Property nade_DeflationRunning Auto
GlobalVariable Property nade_StopCrime Auto
GlobalVariable Property nade_IndecencyCooldown Auto
GlobalVariable Property nade_PlayerWasNaked Auto
Faction Property zbfFactionSlave Auto
Faction Property nade_HarmlessFaction Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if cfgqst.ShowDebugMessages
		;Debug.Notification("Indecency effect added.")
	endif
;	cfgqst.UpdateBarefoot()
	self.RegisterForSingleUpdate(1)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	if cfgqst.PlayerRef.IsInFaction(nade_HarmlessFaction)
		cfgqst.PlayerRef.RemoveFromFaction(nade_HarmlessFaction)
	endif
;	cfgqst.UpdateBarefoot(false)
EndEvent

Event OnUpdate()
;	Debug.Notification("XXX on Update Start")			;ok this function in general WORKS
	if CrimeSpell && cfgqst.PlayerRef.HasSpell(CrimeSpell)			;IF CUMSOAKED PLAYER WILL NOW BE
		bool cumsoaked = cfgqst.IsPlayerCumsoaked()
		bool guardtarget =		   cumsoaked ; || running
	;	bool running = cfgqst.IsPlayerRunning()
	;	nade_PlayerWasNaked.SetValueInt(cumsoaked as Int)		;do I need this for Cumsoaked too?
;-----------harmlessness------------------------------
		bool naked = cfgqst.IsPlayerNaked()
		nade_PlayerWasNaked.SetValueInt(naked as Int)
		bool harmless = cfgqst.Harmlessness
		bool unarmed = cfgqst.IsPlayerUnarmed()
		bool harmlesstarget = 	   naked && harmless && unarmed		;HARMLESSNESS = toggle active or no

		if cfgqst.PlayerRef.IsInFaction(nade_HarmlessFaction) != harmlesstarget		
			if harmlesstarget
				cfgqst.PlayerRef.AddToFaction(nade_HarmlessFaction)
				Debug.Notification("nade_: Added to HarmlessFaction")
			else
				cfgqst.PlayerRef.RemoveFromFaction(nade_HarmlessFaction)
				Debug.Notification("nade_: Removed From HarmlessFaction")
			endif
		endif

		Int stg5 = qst5.GetStage()
		if (stg5 == 100) || (stg5 == 50)
	;		(qst5 as nade_stripteasequest_qf_scr).DoUpdate(stg5)
		endif

		Int counter = nade_StopCrime.GetValueInt()
		if counter < 0
			counter = 0
		endif
		if counter
			nade_StopCrime.SetValueInt(counter - 1)
			if cfgqst.ShowDebugMessages
			;	Debug.Notification("Indecency effect temporarily disabled by ND.")
			endif
		elseif !(cfgqst.PlayerRef.IsInFaction(zbfFactionSlave) || cfgqst.PlayerRef.IsArrested())
			Int stg1 = qst1.GetStage()			;GUARD PUNISH QUEST
			Int stg2 = qst2.GetStage()			;CIVILIAN RAPE QUEST
			Int stg3 = qst3.GetStage()
			Int stg4 = qst4.GetStage()
			Bool qidle1 = ((stg1 < 10) || (stg1 > 999))
			Bool qidle2 = ((stg2 < 10) || (stg2 > 999))
			if qidle1 && qidle2 && ((stg3 < 10) || (stg3 > 999)) && ((stg4 < 10) || (stg4 > 999))
				if !(cfgqst.dhlpSuspendStatus || SexLab.IsActorActive(cfgqst.PlayerRef)) 		;SexLab.IsRunning()
					if cfgqst.Indecency
						if guardtarget ;was cumsoaked
							qst1.Start()			;STARTS CRIMEQUEST
							stg1 = qst1.GetStage()
						elseif cfgqst.ShowDebugMessages
						;	Debug.Notification("Player is not violating the Indecency Law.")
						endif
					elseif cfgqst.ShowDebugMessages
					;	Debug.Notification("Naked Dungeons' Guard Punishment function is DISABLED.")
					endif	
					if (stg1 < 10) || (stg1 > 999)
						if guardtarget && cfgqst.ShowDebugMessages
						;	Debug.Notification("No guard has seen you being cumsoaked.")
						endif
						if cfgqst.IndecencyRapeProb
							if naked
								qst2.Start()
								if cfgqst.ShowDebugMessages
									stg2 = qst2.GetStage()
									if (stg2 < 10) || (stg2 > 999)
									;	Debug.Notification("No potential raper has seen you being naked and helpless.")
									else
									;	Debug.Notification("Rape quest has been started.")
									endif
								endif	
							elseif naked
							elseif cfgqst.ShowDebugMessages
							;	Debug.Notification("Player is not naked .")
							endif
						elseif cfgqst.ShowDebugMessages
							;Debug.Notification("Naked Dungeons' Civilian Rape function is DISABLED.")
						endif
					elseif cfgqst.ShowDebugMessages
						Debug.Notification("NAKED DEFEAT Guard Punishment Start.")
					endif
				elseif cfgqst.ShowDebugMessages
					;Debug.Notification("SexLab, Deflation or dhlpSuspend is active, indecency effect temporarily disabled.")
				endif
			else
				if cfgqst.ShowDebugMessages
					;Debug.Notification("Indecency/rape/defeat/captive quest is active, indecency effect temporarily disabled.")
				endif
				if !(qidle1 && qidle2)
					Int i = nade_IndecencyCooldown.GetValueInt() + 1
					nade_IndecencyCooldown.SetValueInt(i)
					if i >= 10
						if !qidle1
							qst1.SetStage(999)
						endif
						if !qidle2
							qst2.SetStage(1000)
						endif
					endif
				endif
			endif
		elseif cfgqst.ShowDebugMessages
			;Debug.Notification("Indecency events are disabled as long as the player is enslaved or in jail.")
		endif

		if cfgqst.ModEnabled && (cfgqst.Indecency || cfgqst.IndecencyRapeProb)
			self.RegisterForSingleUpdate(cfgqst.CrimeInterval)
		endif
	else
		if nade_PlayerWasNaked
			nade_PlayerWasNaked.SetValueInt(0)
		endif
		if cfgqst && cfgqst.ShowDebugMessages
			;Debug.Notification("Indecency effect removed.")
		endif
	endif
EndEvent
