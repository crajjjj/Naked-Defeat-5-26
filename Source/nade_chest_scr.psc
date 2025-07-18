Scriptname nade_chest_scr extends ObjectReference  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if akBaseItem.GetName() == ""
		RemoveItem(akBaseItem, 1, true, None)
	endif
EndEvent




Event OnActivate(ObjectReference akTargetRef)
	
	String name = akTargetRef.GetDisplayName() ;<-------------- try this in fucking ADDITIONAL ENCOUTNERS!... ah forget it
	
	Debug.Notification(name)
	
	;if (akActor == Game.GetPlayer())  		
		if name == "Sack" || name == "Large Sack" || name == "Barrel" || name == "Urn" || name == "Burial Urn" || name == "Chest"				
			Debug.Notification("WORKED!")		
			Utility.Waitmenumode(0.2)	
		else
			Debug.Notification("DID NO WORK!")
			Utility.Waitmenumode(1.2)	;Animated Container Delay		
		endif
		;OnPerkActivate()
	;endIf

EndEvent 