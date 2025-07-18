Scriptname nade_outsideeffect_scr extends activemagiceffect  

GlobalVariable Property TrapActive Auto
Quest Property qst Auto
nade_configquest_scr Property cfgqst Auto

;Event OnEffectStart(Actor akTarget, Actor akCaster)
;	TrapActive.SetValueInt(1)
;	if cfgqst.ShowDebugMessages
;		Debug.Notification("ND traps enabled.")
;	endif
;	if qst.GetStage() == 150
;		Debug.MessageBox("There is no sign of your lost equipment anywhere around. You should report the theft to a local guard.")
;		Utility.Wait(1)
;		qst.SetStage(160)
;	endif
;EndEvent