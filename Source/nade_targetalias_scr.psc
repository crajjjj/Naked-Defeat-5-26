Scriptname nade_targetalias_scr extends ReferenceAlias  

nade_configquest_scr Property cfgqst Auto
ObjectReference Property PlayerRef Auto
MiscObject Property Gold Auto

;/
Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)

	if akNewContainer == PlayerRef
		if (GetOwningQuest() as nade_errandquest_scr).GiveBackAll()
			Debug.MessageBox("You have recovered your lost belongings!")
			if cfgqst.StealGold
				PlayerRef.RemoveItem(Gold, PlayerRef.GetItemCount(Gold), false)
			endif
		endif
		GetOwningQuest().SetStage(1000)
	endif

EndEvent

/;