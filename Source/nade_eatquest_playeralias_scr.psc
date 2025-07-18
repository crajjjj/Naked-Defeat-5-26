Scriptname nade_eatquest_playeralias_scr extends ReferenceAlias  

nade_configquest_scr Property cfgqst Auto
GlobalVariable Property nade_Stomach Auto

Event OnPlayerLoadGame()
	cfgqst.UpdatePotions()
	Debug.Notification("<font color='#ff0000'>Potions Updated</font>")
EndEvent


;/
;Event OnInit()
;	AddInventoryEventFilter(nade_FoodList)
;EndEvent

;Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
;	if !UI.IsMenuOpen("Crafting Menu") && akBaseItem && aiItemCount && !akItemReference && !akDestContainer
;		Float capacity = cfgqst.ObesityStomachCapacity
;		Float fullcapacity = 2*capacity
;		Float weight = akBaseItem.GetWeight()
;		Float delta = cfgqst.ObesityFoodEnergyPerWeight*aiItemCount*weight
;		Float stomach = nade_Stomach.GetValue() + delta
;		if (stomach>fullcapacity)
;			stomach = fullcapacity
;		endif
;		nade_Stomach.SetValue(stomach)
;		Debug.Notification(akBaseItem.GetName()+" ("+cfgqst.DecimalStr(weight, 10)+") fills your energy reserves to "+cfgqst.DecimalStr(100*stomach/capacity, 10)+"%")
;		weight = (GetReference() as Actor).GetActorBase().GetWeight()
;		if (weight == 100.0) || (weight == 0.0)
;			cfgqst.UpdateSlowdown(false, true)
;		endif	
;	endif
;EndEvent

Event OnObjectEquipped(Form akBaseItem, ObjectReference akItemReference)
	if (akBaseItem as Ingredient) || ((akBaseItem as Potion) && (akBaseItem as Potion).IsFood())
		Float capacity = cfgqst.ObesityStomachCapacity
		Float fullcapacity = 2*capacity
		Float weight = akBaseItem.GetWeight()
		Float delta = cfgqst.ObesityFoodEnergyPerWeight*weight
		Float stomach = nade_Stomach.GetValue() + delta
		if (stomach>fullcapacity)
			stomach = fullcapacity
		endif
		nade_Stomach.SetValue(stomach)
		Debug.Notification(akBaseItem.GetName()+" ("+cfgqst.DecimalStr(weight, 10)+") fills your stomach to "+cfgqst.DecimalStr(100*stomach/capacity, 10)+"%")
		weight = (GetReference() as Actor).GetActorBase().GetWeight()
		if (weight == 100.0) || (weight == 0.0)
			cfgqst.UpdateSlowdown(false, true)
		endif	
	endif
EndEvent

/;