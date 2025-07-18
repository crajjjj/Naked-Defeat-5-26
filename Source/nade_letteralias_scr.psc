Scriptname nade_letteralias_scr extends ReferenceAlias  

ReferenceAlias Property RobberAlias Auto
ReferenceAlias Property LetterAlias Auto
ReferenceAlias Property StrippedEquipmentAlias Auto

Event OnRead()
	Quest qst = GetOwningQuest()
	if qst.GetStage() < 300
		GetOwningQuest().SetStage(300)
	endif
EndEvent
