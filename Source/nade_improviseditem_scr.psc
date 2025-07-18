Scriptname nade_improviseditem_scr extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)

	if (akOldContainer == Game.GetPlayer()) && !akNewContainer
		Disable()
		Delete()
	endif

EndEvent