Scriptname nade_labdooralias_scr extends ReferenceAlias

Event OnActivate(ObjectReference akActionRef)
	Quest qst = GetOwningQuest()
	if qst.GetStage() == 200
		qst.SetStage(1000)
	endif
EndEvent