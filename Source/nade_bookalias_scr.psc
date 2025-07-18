Scriptname nade_bookalias_scr extends ReferenceAlias  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)

	if akNewContainer == Game.GetPlayer()
		Quest qst = GetOwningQuest()
		Int i = qst.getStage()

		if (i >= 165) && (i < 169)
			qst.SetStage(169)
		endif
	endif

EndEvent
