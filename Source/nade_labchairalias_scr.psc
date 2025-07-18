Scriptname nade_labchairalias_scr extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)
	Quest qst = GetOwningQuest()
	if qst.GetStage() == 50
		qst.SetStage(55)
	endif
EndEvent
