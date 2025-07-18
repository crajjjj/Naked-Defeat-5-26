Scriptname nade_furniturealias_scr extends ReferenceAlias  

Quest property nade_PurificationQuest Auto


Event OnActivate(ObjectReference akActionRef)




	if nade_PurificationQuest.GetStage()==10
		nade_PurificationQuest.SetObjectiveCompleted(10)
		nade_PurificationQuest.SetStage(30)
	endif
EndEvent

;Event OnActivate(ObjectReference akActionRef)
;  Debug.Trace("Activated by " + akActionRef)
;EndEvent



;/
Event OnActivate(ObjectReference akTargetRef, Actor akActor)
	
	String name = akTargetRef.GetDisplayName() ;<-------------- try this in fucking ADDITIONAL ENCOUTNERS!... ah forget it
	
	Debug.Notification("name")
	
	if (akActor == Game.GetPlayer())  		
		if name == "Sack" || name == "Large Sack" || name == "Barrel" || name == "Urn" || name == "Burial Urn" || name == "Chest"				
			Debug.Notification("WORKED!")		
			Utility.Waitmenumode(0.2)	
		else
			Debug.Notification("DID NO WORK!")
			Utility.Waitmenumode(1.2)	;Animated Container Delay		
		endif
		;OnPerkActivate()
	endIf

EndEvent 
/;