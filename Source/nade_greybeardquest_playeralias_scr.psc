Scriptname nade_greybeardquest_playeralias_scr extends ReferenceAlias  

nade_configquest_scr Property cfgqst Auto
zadlibs Property libs Auto
Quest Property qst Auto
Keyword Property SexLabNoStrip Auto
GlobalVariable Property nade_SlotIndex Auto
GlobalVariable Property nade_KeywordIndex Auto
Actor Property Stripper Auto
Location Property HighHrothgarLocation Auto

Function WipeNextItem()
	Form a = None

	Int i = nade_SlotIndex.GetValueInt()

	if i
		while i && !a
			i -= 1
			a = libs.PlayerRef.GetWornForm((qst as nade_greybeardquest_qf_scr).Slots[i])
			if a && !a.HasKeyword(SexLabNoStrip)
				libs.PlayerRef.RemoveItem(a, 1, true, None)
				Debug.Notification(a.GetName()+" has been destroyed.")
			endif
		endwhile
		nade_SlotIndex.SetValueInt(i)
	endif

	if !a
		Bool b = false
		i = nade_KeywordIndex.GetValueInt()
		while i && !b
			i -= 1
			nade_KeywordIndex.SetValueInt(i)
			;b = cfgqst.KillGenericDeviceByKeyword((qst as nade_greybeardquest_qf_scr).Keywords[i])
		endwhile
	endif

EndFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)

	if (qst.GetStage() == 40) && (akAggressor == Stripper)
		Weapon w = libs.PlayerRef.GetEquippedWeapon(true)
		if !w
			w = libs.PlayerRef.GetEquippedWeapon(false)
		endif
		if w
			libs.PlayerRef.UnequipItem(w, false, true)
			libs.PlayerRef.RemoveItem(w, 1, true, None)
			Debug.Notification(w.GetName()+" has been destroyed.")
		else
			WipeNextItem()
		endif
	endif

EndEvent

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	if (qst.GetStage() == 30) && ((akOldLoc == HighHrothgarLocation) || (akNewLoc != HighHrothgarLocation))
		qst.SetStage(1003)
	endif
EndEvent

