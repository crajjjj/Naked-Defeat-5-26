Scriptname nade_labfurniturealias_scr extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)
	Quest qst = GetOwningQuest()
	if qst.GetStage() == 30
		qst.SetStage(35)
	endif
EndEvent