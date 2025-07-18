Scriptname nade_receiptalias_scr extends ReferenceAlias  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)

	ObjectReference pc = Game.GetPlayer()
	if akNewContainer == pc
		Quest qst = GetOwningQuest()
		if qst.GetStage() == 169
			qst.SetObjectiveCompleted(60, true)
		else
			qst.SetObjectiveCompleted(16, true)
		endif
		qst.SetStage(170)
	endif

EndEvent
