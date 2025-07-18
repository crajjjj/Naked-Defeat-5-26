Scriptname nade_labchestalias_scr extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)
	Quest qst = GetOwningQuest()
	Int stg = qst.GetStage()
	if stg == 20
		qst.SetStage(25)
	elseif stg == 100
		qst.SetStage(200)
	endif
EndEvent

