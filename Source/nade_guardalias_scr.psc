Scriptname nade_guardalias_scr extends ReferenceAlias  

Event OnEnterBleedout()
	Quest qst = GetOwningQuest()

	if qst.GetStage() == 165
		qst.SetStage(167)
	endif

EndEvent

