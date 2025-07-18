Scriptname nade_robberalias_03_scr extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)
;	if (GetReference() as Actor).IsDead() && 
	if akActionRef == Game.GetPlayer()
		GetOwningQuest().SetStage(200)
	endif
EndEvent