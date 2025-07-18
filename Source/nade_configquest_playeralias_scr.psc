Scriptname nade_configquest_playeralias_scr extends SKI_PlayerLoadGameAlias

nade_configquest_scr Property cfgqst Auto
MagicEffect Property CureDiseaseEffect Auto

Event OnPlayerLoadGame()
;	cfgqst.PrepareWaters()
	parent.OnPlayerLoadGame()
EndEvent

Event OnMagicEffectApply(ObjectReference akCaster, MagicEffect akEffect)
	if (akEffect == CureDiseaseEffect) && cfgqst.WhipMarks
		cfgqst.RemoveCaneMarks()
;		cfgqst.HealGaping()
	endif
EndEvent

;Event OnLocationChange(Location akOldLoc, Location akNewLoc)
;	if (cfgqst.TalkQuest.GetStage() == 10) && (cfgqst.TaxRate > 0.0)
;		Int o = cfgqst.GetParentHoldIndex2(akOldLoc)
;		Int n = cfgqst.GetParentHoldIndex2(akNewLoc)
;		if n != o
;			if cfgqst.ShowDebugMessages
;				if n >= 0
;					Debug.Notification("You have entered "+cfgqst.Holds[n].GetName()+".")
;				else
;					Debug.Notification("You have left "+cfgqst.Holds[o].GetName()+".")
;				endif
;			endif
;;			cfgqst.Taxate(Utility.GetCurrentGameTime(), n)
;		endif
;	endif
;EndEvent
