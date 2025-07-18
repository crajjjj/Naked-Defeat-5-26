Scriptname nade_hairgrowtheffect_scr extends activemagiceffect 

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Debug.Notification("Yourhair growth rate has been increased significantly.")
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Debug.Notification("Your hair groth has returned to the normal rate.")
EndEvent
