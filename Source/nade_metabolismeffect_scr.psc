Scriptname nade_metabolismeffect_scr extends activemagiceffect  

GlobalVariable Property nade_DeltaMult Auto
nade_configquest_scr Property cfgqst Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Float v = GetMagnitude()
	nade_DeltaMult.SetValue(1.0 + v/100.0)
	Debug.Notification("Your metabolism rate has been increased by "+cfgqst.DecimalStr(v, 10)+"%")
	cfgqst.RemoveCaneMarks()
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	nade_DeltaMult.SetValue(1.0)
	Debug.Notification("Your metabolism has returned to the normal rate.")
EndEvent