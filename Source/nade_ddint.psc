Scriptname nade_DDInt

Quest Function nade_GetDDQuest() Global
	return Quest.GetQuest("zadQuest")
EndFunction

;nade_DDInt.IsWearingDDs(PlayerRef, "Piercing Nipples")
;nade_DDInt.IsWearingDDs(PlayerRef, "Lockable")

Bool Function IsWearingDDs(actor akActor, String sType) Global
	DDTrace("WornDevices("+sType+")")
	
	Quest q =  nade_GetDDQuest()
;	if q == none
;	return
;	endif
	
	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
	Actor PlayerRef = libs.PlayerRef
	Armor idevice
	Armor rdevice
	Keyword BlockGeneric = libs.zad_BlockGeneric
	Keyword QuestDevices = libs.zad_QuestItem
	Keyword Lockable = libs.zad_Lockable
	
	if sType == "BlockingSex"

		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlug")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHeavyBondage")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBelt")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmCuffs")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousLegCuffs")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmbinder")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousYoke")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHood")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousSuit")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousGag")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlugVaginal")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlugAnal")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmbinderElbow")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousYokeBB")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousCuffsFront")) 
		return true		
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHobbleSkirt")) 
		return true
		elseif akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousStraitJacket"))
		return true
		else 
		return false 
		endif

	elseif sType == "Only Piercings" 	
		
		Bool OnlyPiercings = False 
		
			;is wearing piercings 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPiercingsNipple")) || akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPiercingsVaginal")) || akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousClamps"))
			OnlyPiercings = true 
			endif 
			;check other item types: 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlug"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHeavyBondage"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBelt"))
			OnlyPiercings = false
			endif 	
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBra"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousCollar"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmCuffs"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousLegCuffs"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmbinder"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousYoke"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousCorset"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousGloves"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHood"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousSuit"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousGag"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousGagPanel"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlugVaginal"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPlugAnal"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHarness"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBlindfold"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBoots"))
			OnlyPiercings = false
			endif 	
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousArmbinderElbow"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousYokeBB"))
			OnlyPiercings = false
			endif 			
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousCuffsFront"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousStraitJacket"))
			OnlyPiercings = false
			endif 			
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousBondageMittens"))
			OnlyPiercings = false
			endif 
			if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHobbleSkirt"))
			OnlyPiercings = false
			endif 	
		return OnlyPiercings
		
	elseif sType == "Forced Walk"		
	
		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_EffectForcedWalk"))
		return true
		else 
		return false 
		endif
		
	elseif sType == "Gag"		
	
		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousGag"))
		return true
		else 
		return false 
		endif	
		
	elseif sType == "Heavy Bondage"		
	
		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHeavyBondage"))
		return true
		else 
		return false 
		endif	

	elseif sType == "Piercing Nipples"		
	
		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPiercingsNipple"))
		return true
		else 
		return false 
		endif			

	elseif sType == "Piercing Vaginal"		
	
		if akActor.WornHasKeyword(Keyword.GetKeyword("zad_DeviousPiercingsVaginal"))
		return true
		else 
		return false 
		endif	
		
	elseif sType == "Lockable"	
	
		if akActor.WornHasKeyword(Lockable)
		return true
		else 
		return false 
		endif
		
	elseif sType == "BlockGeneric"
		if akActor.WornHasKeyword(BlockGeneric)
		return true
		else 
		return false 
		endif
	elseif sType == "QuestDevices"
		if akActor.WornHasKeyword(QuestDevices)
		return true
		else 
		return false 
		endif
	else 
	return false
	endif 
EndFunction

String Function GetDDVersion() Global

	Quest q =  nade_GetDDQuest()
	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
;	Actor PlayerRef = libs.PlayerRef
;	Armor idevice
;	Armor rdevice
;;	Keyword BlockGeneric = libs.zad_BlockGeneric
;	Keyword QuestDevices = libs.zad_QuestItem
;	Keyword Lockable = libs.zad_Lockable

	return libs.GetVersionString()

EndFunction 


Function RemoveAll_DDs_FromActor(actor akActor, bool destroyDevices=false, String sException01, String sException02, String sException03, String sException04, String sException05) Global
	Quest q =  nade_GetDDQuest()
	if q == none
		return
	endif

	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
;	Actor akActor = libs.akActor
	Armor idevice
	Armor rdevice
	Keyword KWDBlockGeneric = libs.zad_BlockGeneric
	Keyword KWDQuestDevices = libs.zad_QuestItem
	Keyword KWDLockable = libs.zad_Lockable
	
	
	;Keyword KWDException01 = GetDDKeyword("zad_DeviousPiercingsNipple")
	Keyword KWDException01 = GetDDKeyword(sException01)
	Keyword KWDException02 = GetDDKeyword(sException02)
	Keyword KWDException03 = GetDDKeyword(sException03)
	Keyword KWDException04 = GetDDKeyword(sException04)
	Keyword KWDException05 = GetDDKeyword(sException05)
	
	if !akActor.WornHasKeyword(KWDLockable)
		DDTrace("No lockable devices to clear")
		return; No DD items equipped, so can abort here
	endif


	;REMOVE BELTS 
	; We remove belts first to force any corsets back to a state when they can be removed.
	Keyword DeviousBelt = libs.zad_DeviousBelt
	if akActor.WornHasKeyword(DeviousBelt)


		idevice = libs.GetWornDevice(akActor, DeviousBelt)
		if idevice && (idevice.HasKeyword(KWDBlockGeneric) || idevice.HasKeyword(KWDQuestDevices))
			DDTrace("01: Slave handlers could not remove " + idevice.GetName())
			;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
			idevice = None
		endif
		
		if idevice
			if fastDD
				rdevice = libs.GetWornRenderedDeviceByKeyword(akActor, DeviousBelt)
			else
				rdevice = libs.GetRenderedDevice(idevice)
			endif
			if rdevice && (rdevice.HasKeyword(KWDBlockGeneric) || rdevice.HasKeyword(KWDQuestDevices))
				DDTrace("02: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				rdevice = None
			endif
		endif

		if idevice && rdevice
			if fastDD
				libs.UnlockDevice(akActor, idevice, rdevice, DeviousBelt, destroyDevices)
			else
				libs.RemoveDevice(akActor, idevice, rdevice, DeviousBelt, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				;Utility.Wait(2)				
			endif
			if !akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			;	akActor.PlayIdle(AuctionPose)
			endif
		endif	
	endif
	
	;REMOVE PLUGS 
	; Now check plugs, if there's no more belt
	if !akActor.WornHasKeyword(DeviousBelt) 
		Armor a = akActor.GetWornForm(0x00040000) as Armor;  Slot 48 - Anal Plug
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			akActor.UnequipItem(akActor, false, true)
		endif

		a = akActor.GetWornForm(0x08000000) as Armor;  Slot 57 - Vaginal Plug <<<<<<<<<<<<<-------------------------
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			akActor.UnequipItem(akActor, false, true)
		endif
	endif
	
	int i = 1
	int r = 0
	Keyword kw = GetKeyword(i)
	while (kw != KWDLockable)
	;DDTrace("RemoveAll_DDs_FromActor: Keyword kw = GetKeyword("+i+")")
		if akActor.WornHasKeyword(kw)
		;DDTrace("FUCKING FUCK 02")
			idevice = libs.GetWornDevice(akActor, kw)	
		;/
		if idevice 
			DDTrace("FUCKING FUCK 03")	
				kw = GetKeyword(22)
				DDTrace("FUCKING FUCK 04")
				if idevice.HasKeyword(KWDException01)
				DDTrace("Item has Keyword that is an Exception A")
				idevice = None
				elseif idevice.HasKeyword(kw)
				DDTrace("Item has Keyword that is an Exception B")
				idevice = None
				endif 
			endif 
			
			if idevice 
				if idevice.HasKeyword(KWDException01) || idevice.HasKeyword(KWDException02) || idevice.HasKeyword(KWDException03) || idevice.HasKeyword(KWDException04) || idevice.HasKeyword(KWDException05)
				DDTrace("Item has Keyword that is an Exception C")
				idevice = None
				endif 
			endif 	
			/;
				
			if idevice && (idevice.HasKeyword(KWDBlockGeneric) || idevice.HasKeyword(KWDQuestDevices))
				DDTrace("03: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				idevice = None
			endif
			if idevice
			;DDTrace("FUCKING FUCK 05")
				if fastDD
					rdevice = libs.GetWornRenderedDeviceByKeyword(akActor, kw)
				else
					rdevice = libs.GetRenderedDevice(idevice)
				endif
				if rdevice && (rdevice.HasKeyword(KWDBlockGeneric) || rdevice.HasKeyword(KWDQuestDevices))
					DDTrace("04: Slave handlers could not remove " + idevice.GetName())
					;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
					rdevice = None
				endif
			endif
		
			if idevice && rdevice
			;DDTrace("FUCKING FUCK 06")
				if fastDD
					
					DDTrace("RemoveAll_DDs_FromActor: kw == :"+kw)
					DDTrace("RemoveAll_DDs_FromActor: KWDException01 == :"+KWDException01)
				
					if kw == KWDException01 || kw == KWDException02 || kw == KWDException03 || kw == KWDException04 || kw == KWDException05
					;do nothing 
					DDTrace("RemoveAll_DDs_FromActor: kw == KWDException01")
					
					else
					;DDTrace("FUCKING FUCK 06B")
					libs.UnlockDevice(akActor, idevice, rdevice, kw, destroyDevices)
					endif 
				else
					if kw == KWDException01 || kw == KWDException02 || kw == KWDException03 || kw == KWDException04 || kw == KWDException05
					;do nothing 
					DDTrace("RemoveAll_DDs_FromActor: kw == KWDException01")
					else	

					libs.RemoveDevice(akActor, idevice, rdevice, kw, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)	
					endif					
				endif
				
				if !akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				;	akActor.PlayIdle(AuctionPose)
				endif

			endif
		endif

		i += 1
		kw = GetKeyword(i)
	endwhile
	
;	if CurrentScene.IsPlaying()
;		Utility.Wait(1)
;		CurrentScene.Stop()
;	endif
EndFunction

Function RemoveDevicesFromActor(actor akActor, bool destroyDevices=false) Global
	Quest q =  nade_GetDDQuest()
	if q == none
		return
	endif

	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
;	Actor akActor = libs.akActor
	Armor idevice
	Armor rdevice
	Keyword BlockGeneric = libs.zad_BlockGeneric
	Keyword QuestDevices = libs.zad_QuestItem
	Keyword Lockable = libs.zad_Lockable
	
	if !akActor.WornHasKeyword(Lockable)
		DDTrace("No lockable devices to clear")
		return; No DD items equipped, so can abort here
	endif


	;REMOVE BELTS 
	; We remove belts first to force any corsets back to a state when they can be removed.
	Keyword DeviousBelt = libs.zad_DeviousBelt
	if akActor.WornHasKeyword(DeviousBelt)


		idevice = libs.GetWornDevice(akActor, DeviousBelt)
		if idevice && (idevice.HasKeyword(BlockGeneric) || idevice.HasKeyword(QuestDevices))
			DDTrace("01: Slave handlers could not remove " + idevice.GetName())
			;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
			idevice = None
		endif
		
		if idevice
			if fastDD
				rdevice = libs.GetWornRenderedDeviceByKeyword(akActor, DeviousBelt)
			else
				rdevice = libs.GetRenderedDevice(idevice)
			endif
			if rdevice && (rdevice.HasKeyword(BlockGeneric) || rdevice.HasKeyword(QuestDevices))
				DDTrace("02: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				rdevice = None
			endif
		endif

		if idevice && rdevice
			if fastDD
				libs.UnlockDevice(akActor, idevice, rdevice, DeviousBelt, destroyDevices)
			else
				libs.RemoveDevice(akActor, idevice, rdevice, DeviousBelt, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				;Utility.Wait(2)				
			endif
			if !akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			;	akActor.PlayIdle(AuctionPose)
			endif
		endif	
	endif
	
	;REMOVE PLUGS 
	; Now check plugs, if there's no more belt
	if !akActor.WornHasKeyword(DeviousBelt) 
		Armor a = akActor.GetWornForm(0x00040000) as Armor;  Slot 48 - Anal Plug
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			akActor.UnequipItem(akActor, false, true)
		endif

		a = akActor.GetWornForm(0x08000000) as Armor;  Slot 57 - Vaginal Plug
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			akActor.UnequipItem(akActor, false, true)
		endif
	endif
	
	int i = 1
	int r = 0
	Keyword kw = GetKeyword(i)
	while (kw != Lockable)
		if akActor.WornHasKeyword(kw)
			idevice = libs.GetWornDevice(akActor, kw)
			if idevice && (idevice.HasKeyword(BlockGeneric) || idevice.HasKeyword(QuestDevices))
				DDTrace("03: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				idevice = None
			endif
			if idevice
				if fastDD
					rdevice = libs.GetWornRenderedDeviceByKeyword(akActor, kw)
				else
					rdevice = libs.GetRenderedDevice(idevice)
				endif
				if rdevice && (rdevice.HasKeyword(BlockGeneric) || rdevice.HasKeyword(QuestDevices))
					DDTrace("04: Slave handlers could not remove " + idevice.GetName())
					;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
					rdevice = None
				endif
			endif
		
			if idevice && rdevice
				if fastDD
					libs.UnlockDevice(akActor, idevice, rdevice, kw, destroyDevices)
				else
					libs.RemoveDevice(akActor, idevice, rdevice, kw, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				endif
				
				if !akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				;	akActor.PlayIdle(AuctionPose)
				endif

			endif
		endif

		i += 1
		kw = GetKeyword(i)
	endwhile
	
;	if CurrentScene.IsPlaying()
;		Utility.Wait(1)
;		CurrentScene.Stop()
;	endif
EndFunction


Function RemoveDevices(bool destroyDevices=false) Global
	Quest q =  nade_GetDDQuest()
	if q == none
		return
	endif

	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
	Actor PlayerRef = libs.PlayerRef
	Armor idevice
	Armor rdevice
	Keyword BlockGeneric = libs.zad_BlockGeneric
	Keyword QuestDevices = libs.zad_QuestItem
	Keyword Lockable = libs.zad_Lockable
	
	if !PlayerRef.WornHasKeyword(Lockable)
		DDTrace("No lockable devices to clear")
		return; No DD items equipped, so can abort here
	endif


	;REMOVE BELTS 
	; We remove belts first to force any corsets back to a state when they can be removed.
	Keyword DeviousBelt = libs.zad_DeviousBelt
	if PlayerRef.WornHasKeyword(DeviousBelt)


		idevice = libs.GetWornDevice(PlayerRef, DeviousBelt)
		if idevice && (idevice.HasKeyword(BlockGeneric) || idevice.HasKeyword(QuestDevices))
			DDTrace("01: Slave handlers could not remove " + idevice.GetName())
			;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
			idevice = None
		endif
		
		if idevice
			if fastDD
				rdevice = libs.GetWornRenderedDeviceByKeyword(PlayerRef, DeviousBelt)
			else
				rdevice = libs.GetRenderedDevice(idevice)
			endif
			if rdevice && (rdevice.HasKeyword(BlockGeneric) || rdevice.HasKeyword(QuestDevices))
				DDTrace("02: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				rdevice = None
			endif
		endif

		if idevice && rdevice
			if fastDD
				libs.UnlockDevice(PlayerRef, idevice, rdevice, DeviousBelt, destroyDevices)
			else
				libs.RemoveDevice(PlayerRef, idevice, rdevice, DeviousBelt, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				;Utility.Wait(2)				
			endif
			if !PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			;	PlayerRef.PlayIdle(AuctionPose)
			endif
		endif	
	endif
	
	;REMOVE PLUGS 
	; Now check plugs, if there's no more belt
	if !PlayerRef.WornHasKeyword(DeviousBelt) 
		Armor a = PlayerRef.GetWornForm(0x00040000) as Armor;  Slot 48 - Anal Plug
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			PlayerRef.UnequipItem(PlayerRef, false, true)
		endif

		a = PlayerRef.GetWornForm(0x08000000) as Armor;  Slot 57 - Vaginal Plug
		if (a != none) && !a.HasKeyword(libs.zad_Lockable) && !a.HasKeywordString("SexLabNoStrip")
			PlayerRef.UnequipItem(PlayerRef, false, true)
		endif
	endif
	
	int i = 1
	int r = 0
	Keyword kw = GetKeyword(i)
	while (kw != Lockable)
		if PlayerRef.WornHasKeyword(kw)
			idevice = libs.GetWornDevice(PlayerRef, kw)
			if idevice && (idevice.HasKeyword(BlockGeneric) || idevice.HasKeyword(QuestDevices))
				DDTrace("03: Slave handlers could not remove " + idevice.GetName())
				;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
				idevice = None
			endif
			if idevice
				if fastDD
					rdevice = libs.GetWornRenderedDeviceByKeyword(PlayerRef, kw)
				else
					rdevice = libs.GetRenderedDevice(idevice)
				endif
				if rdevice && (rdevice.HasKeyword(BlockGeneric) || rdevice.HasKeyword(QuestDevices))
					DDTrace("04: Slave handlers could not remove " + idevice.GetName())
					;Debug.Notification("Slave handlers could not remove " + idevice.GetName())
					rdevice = None
				endif
			endif
		
			if idevice && rdevice
				if fastDD
					libs.UnlockDevice(PlayerRef, idevice, rdevice, kw, destroyDevices)
				else
					libs.RemoveDevice(PlayerRef, idevice, rdevice, kw, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				endif
				
				if !PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				;	PlayerRef.PlayIdle(AuctionPose)
				endif

			endif
		endif

		i += 1
		kw = GetKeyword(i)
	endwhile
	
;	if CurrentScene.IsPlaying()
;		Utility.Wait(1)
;		CurrentScene.Stop()
;	endif
EndFunction

Function RemoveGag() Global
	Quest q =  nade_GetDDQuest()
	if q == none
		return
	endif

	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
	Actor PlayerRef = libs.PlayerRef
	if !PlayerRef.WornHasKeyword(libs.zad_DeviousGag)
		return; no gag equipped
	endif

	Armor rdevice
	Armor idevice = libs.GetWornDevice(PlayerRef, libs.zad_DeviousGag)
	if idevice && (idevice.HasKeyword(libs.zad_BlockGeneric) || idevice.HasKeyword(libs.zad_QuestItem))
		Debug.Notification("Slave handlers could not remove " + idevice.GetName())
		idevice = None
	endif
	if idevice
		if fastDD
			rdevice = libs.GetWornRenderedDeviceByKeyword(PlayerRef, libs.zad_DeviousGag)
		else
			rdevice = libs.GetRenderedDevice(idevice)
		endif
		if rdevice && (rdevice.HasKeyword(libs.zad_BlockGeneric) || rdevice.HasKeyword(libs.zad_QuestItem))
			Debug.Notification("Slave handlers could not remove " + idevice.GetName())
			rdevice = None
		endif
	endif

	if idevice && rdevice
		if fastDD
			libs.UnlockDevice(PlayerRef, idevice, rdevice, libs.zad_DeviousGag, false)
		else
			libs.RemoveDevice(PlayerRef, idevice, rdevice, libs.zad_DeviousGag, false, skipevents = false, skipmutex = true)			
		endif	
	endif
EndFunction

	;PLAN 
	;Make a Device Library connecting String Names to GetFormFromFile
	;make external JSON that allows players to make their outfits via String Names

	;NO Make Outfits the same way as our other outfits and Load them from the JSON to get them with FormFromFile period

	;---- HARNESS (Body) -----;
	;12051FC7		Black Chaotic Pentagram Rope Corset (Exp) --- EXTRA BODY
	;1204E8A7		Hishi Chaotic Rope Harness					--- EXTRA BODY
	;1204EE37		Hishi Karada Rope Harness					--- EXTRA BODY
	;1204EE35		Full Top Rope Harness						--- EXTRA BODY
	;1204EE33		Extreme Rope Harness					--- EXTRA BODY TEST?
	;120486E9		xRope Body Restraint --- HOBBLE
	;12039C78		xBlack Leather Straitjacket (Open, Legbinder) --- HOBBLE
	;12039C7E		x Black Leather Straitjacket (Topless)
	
	;---- BINDS (Wrists) -----;
	;12A2002D		Iron Yoke (Fiddle)
	;12053625		Hooked Elbow Shackles
	;				Iron Breast Yoke (is in configquest)
	;1202FA8B		Iron Prisoner Chains (bugged??)
	;12037C17		Iron Handcuffs
	;1203D2E1		Steel Yoke --- thin round
	;120486DD		Strict Rope Armbinder
	;12A100B6		Simple Ropes (Arms)		 --- Replace ZaZ Ropes? these are way better...
	;12A100BC		Simple Ropes (Leg Cuffs) --- Replace ZaZ Ropes? these are way better...
	;12A100BC		Simple Ropes (Legs)		 --->>>>> DONT COME OFF WITH Device REMOVAL!!!
	;120486E3		Rope Armbinder
	
	
	;----- COLLAR -----; 
	;1201E687		Iron Collar
	
	;---- HEAD/MOUTH (Gags) -----;
	;1201E69B		Mask of Shame
	;1201AB0E		Iron Scold's Bridle (Light)
	;1201F6C9		Iron Gag (Bit)

	;---- PIERCINGS -----;
	;1201CB91		Iron Nipple Piercings
	;1201C62A		Iron Clamps (Nipples)

	;1202EA47		Plug (Tail) ("Eostre")   -- ANAL
	;1201B5E5		Iron Pear of Anuish (Bell) (Anal)	--- VAG	
	
	;1201B5E8		Iron Pear of Anuish (Chain) (Vaginal) --- VAG
	
	;---- CHAINS with Ball (Bind Locally!) -----;
	;1202F51E 		Iron Fetters (Ball & Chain)
	;1202FA83 		Iron Fetters (Ball & Chain) (Long)
	;1202E4DF		Iron Collar (Long Chain)
	
	
	;---- CHAIN HARNESS (set) -----;
	;1201C0B7		Iron Chain Harness (Body)
	;1201C0BE		Iron Chain Harness (Bra)
	;1201C0BC		Iron Chain Harness (Arms)
	;1201C0BA		Iron Chain Harness (Legs)
	;1201C0C4		Iron Chain Harness (Nipple Chain)
	
	;---- FEET (slave boots) -----;
	;1201FC31		Iron Ballet Boots (Reinforced)
	
Function EquipDDtoActor(actor akActor, String sVariant) Global

	Quest q =  nade_GetDDQuest()
	if q == none
		return
	endif

	Zadlibs libs = q as Zadlibs
	bool fastDD = (libs.GetVersion() >= 13)
	Actor PlayerRef = libs.PlayerRef
	Armor iDevice
	Armor rDevice
	Keyword BlockGeneric = libs.zad_BlockGeneric
	Keyword QuestDevices = libs.zad_QuestItem
	Keyword Lockable = libs.zad_Lockable
	Bool IsBodyBlocked = false
	Bool FullOutfitEquiped = false
	int i
	
	if sVariant == "DD Steel Yoke"
	iDevice = ( Game.GetFormFromFile(0x1203D2E1, "Devious Devices - Expansion.esm" ) as Armor ) 	;Steel Yoke
	libs.LockDevice(akActor, iDevice, false)
	elseif sVariant == "DD Iron Yoke"
	iDevice = ( Game.GetFormFromFile(0x1104F18C, "Devious Devices - Integration.esm" ) as Armor ) 	;Iron Yoke
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Breast Yoke"
	iDevice = ( Game.GetFormFromFile(0x0003C7FB, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Breast Yoke	
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Iron Prisoner Chains"
	iDevice = ( Game.GetFormFromFile(0x1202FA8B, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Prisoner Chains 		
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Steel Manacles"
	iDevice = ( Game.GetFormFromFile(0x1203D2E6, "Devious Devices - Expansion.esm" ) as Armor ) 	;Steel Manacles		
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Rope Armbinder"
	iDevice = ( Game.GetFormFromFile(0x120486E3, "Devious Devices - Expansion.esm" ) as Armor ) 	;Rope Armbinder	
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Black Leather Straitjacket Topless"
	iDevice = ( Game.GetFormFromFile(0x12039C7E, "Devious Devices - Expansion.esm" ) as Armor ) 	;Black Leather Straitjacket (Topless)	
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Iron Yoke (Fiddle)"
	iDevice = ( Game.GetFormFromFile(0x12A2002D, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Yoke (Fiddle)	
	libs.LockDevice(akActor, iDevice, false)	
	elseif sVariant == "DD Hooked Elbow Shackles"
	iDevice = ( Game.GetFormFromFile(0x12053625, "Devious Devices - Expansion.esm" ) as Armor ) 	;Hooked Elbow Shackles
	libs.LockDevice(akActor, iDevice, false)	

	elseif sVariant == "DD Iron Nipple Piercings"
	iDevice = ( Game.GetFormFromFile(0x1201CB91, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Nipple Piercings
	libs.LockDevice(akActor, iDevice, false)		
	
	elseif sVariant == "DD Iron Nipple Clamps"
	iDevice = ( Game.GetFormFromFile(0x1201CB91, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Clamps (Nipples)
	libs.LockDevice(akActor, iDevice, false)	
	
	elseif sVariant == "Random" 
			
		if Utility.RandomInt(1,100) < 5
			DDTrace("Full Chain Harness")
			FullOutfitEquiped = true
			;---- Full CHAIN HARNESS (set) -----;
			iDevice = ( Game.GetFormFromFile(0x1201C0B7, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Chain Harness (Body)
			IsBodyBlocked = true
			libs.LockDevice(akActor, iDevice, false)
			iDevice = ( Game.GetFormFromFile(0x1201C0BE, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Chain Harness (Bra)
			libs.LockDevice(akActor, iDevice, false)
			iDevice = ( Game.GetFormFromFile(0x1201C0BC, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Chain Harness (Arms)
			libs.LockDevice(akActor, iDevice, false)
			iDevice = ( Game.GetFormFromFile(0x1201C0BA, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Chain Harness (Legs)
			libs.LockDevice(akActor, iDevice, false)
			iDevice = ( Game.GetFormFromFile(0x1201C0C4, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Chain Harness (Nipple Chain)
			libs.LockDevice(akActor, iDevice, false)
			iDevice = ( Game.GetFormFromFile(0x1201FC31, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Ballet Boots (Reinforced)
			libs.LockDevice(akActor, iDevice, false)		
			iDevice = ( Game.GetFormFromFile(0x1203D2E1, "Devious Devices - Expansion.esm" ) as Armor ) 	;Steel Yoke	
			libs.LockDevice(akActor, iDevice, false)				
		endif 	
			
		;---- Gag ----:
		if Utility.RandomInt(1,100) < 75		
			if Utility.RandomInt(1,100) < 5
			iDevice = ( Game.GetFormFromFile(0x1201E69B, "Devious Devices - Expansion.esm" ) as Armor ) 	;Mask of Shame
			elseif Utility.RandomInt(1,100) < 50
			iDevice = ( Game.GetFormFromFile(0x1201AB0E, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Scold's Bridle (Light)
			else 
			iDevice = ( Game.GetFormFromFile(0x1201F6C9, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Gag (Bit)
			endif 
			
			if iDevice
			libs.LockDevice(akActor, iDevice, false)
			else
			DDTrace("Gag NO DEVICE: "+i)
			endif 
		endif 
		
		;---- Nipple Torture -----;		
		if (Utility.RandomInt(1,100) < 75) && !FullOutfitEquiped
			
			i = Utility.Randomint(1,2)	
			DDTrace("Nipple Torture: "+i)			
			if i == 1
			iDevice = ( Game.GetFormFromFile(0x1201CB91, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Nipple Piercings
			elseif i == 2
			iDevice = ( Game.GetFormFromFile(0x1201CB91, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Clamps (Nipples)
			endif 
			
			if iDevice
			libs.LockDevice(akActor, iDevice, false)
			else
			DDTrace("Nipple Torture NO DEVICE: "+i)
			endif 
			
		endif 
		
		;---- Plugs -----;	
		if Utility.RandomInt(1,100) < 75
			
			i = Utility.Randomint(1,3)	
			DDTrace("Plugs: "+i)				
			if i == 1
			iDevice = ( Game.GetFormFromFile(0x1202EA47, "Devious Devices - Expansion.esm" ) as Armor ) 	;Plug (Tail) ("Eostre")   -- ANAL
			elseif i == 2
			iDevice = ( Game.GetFormFromFile(0x1201B5E5, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Pear of Anuish (Bell) (Anal)	- ANAL
			elseif i == 3
			iDevice = ( Game.GetFormFromFile(0x1201B5E8, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Pear of Anuish (Chain) (Vaginal) --- VAG
			endif 
			
			if iDevice
			libs.LockDevice(akActor, iDevice, false)
			else
			DDTrace("Plugs NO DEVICE: "+i)
			endif 
		endif 
		
		;---- Bondage / Binds ----:
		
			
		if !FullOutfitEquiped
		
			;---- Random Bondage -----;
			i = Utility.Randomint(2,12)
			DDTrace("RandomBondage: "+i)
			if i == 1			;BUGGED - TEST
			iDevice = ( Game.GetFormFromFile(0x120486E9, "Devious Devices - Expansion.esm" ) as Armor ) 	;Rope Body Restraint ;BUGGED?
			IsBodyBlocked = true
			elseif i == 2
			iDevice = ( Game.GetFormFromFile(0x12039C78, "Devious Devices - Expansion.esm" ) as Armor ) 	;Black Leather Straitjacket (Open, Legbinder)
			IsBodyBlocked = true
			elseif i == 3 
			iDevice = ( Game.GetFormFromFile(0x12039C7E, "Devious Devices - Expansion.esm" ) as Armor ) 	;Black Leather Straitjacket (Topless)
			IsBodyBlocked = true
			elseif i == 4
			iDevice = ( Game.GetFormFromFile(0x12A2002D, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Yoke (Fiddle)
			elseif i == 5 
			iDevice = ( Game.GetFormFromFile(0x0003C7FB, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Breast Yoke		
			elseif i == 6
			iDevice = ( Game.GetFormFromFile(0x12053625, "Devious Devices - Expansion.esm" ) as Armor ) 	;Hooked Elbow Shackles
			elseif i == 7 
			iDevice = ( Game.GetFormFromFile(0x1202FA8B, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Prisoner Chains 	
			elseif i == 8
			iDevice = ( Game.GetFormFromFile(0x12037C17, "Devious Devices - Expansion.esm" ) as Armor ) 	;Iron Handcuffs
			elseif i == 9 
			iDevice = ( Game.GetFormFromFile(0x1203D2E1, "Devious Devices - Expansion.esm" ) as Armor ) 	;Steel Yoke
			elseif i == 10
			iDevice = ( Game.GetFormFromFile(0x120486DD, "Devious Devices - Expansion.esm" ) as Armor ) 	;Strict Rope Armbinder
			elseif i == 11
			iDevice = ( Game.GetFormFromFile(0x120486E3, "Devious Devices - Expansion.esm" ) as Armor ) 	;Rope Armbinder
			elseif i == 12
			iDevice = ( Game.GetFormFromFile(0x1203D2E6, "Devious Devices - Expansion.esm" ) as Armor ) 	;Steel Manacles
			elseif i == 13
			iDevice = ( Game.GetFormFromFile(0x00000000, "Devious Devices - Expansion.esm" ) as Armor ) 	;0x00000000		
			elseif i == 14
			iDevice = ( Game.GetFormFromFile(0x00000000, "Devious Devices - Expansion.esm" ) as Armor ) 	;0x00000000
			elseif i == 15 
			iDevice = ( Game.GetFormFromFile(0x00000000, "Devious Devices - Expansion.esm" ) as Armor ) 	;0x00000000	
			elseif i == 16
			iDevice = ( Game.GetFormFromFile(0x00000000, "Devious Devices - Expansion.esm" ) as Armor ) 	;0x00000000
			elseif i == 17 
			iDevice = ( Game.GetFormFromFile(0x00000000, "Devious Devices - Expansion.esm" ) as Armor ) 	;0x00000000
			endif 
			
			if iDevice
			libs.LockDevice(akActor, iDevice, false)
			else
			DDTrace("RandomBondage NO DEVICE: "+i)
			endif 
		endif 

		if (Utility.RandomInt(1,100) < 33) && !IsBodyBlocked && !FullOutfitEquiped
			
			;---- Harness -----;	

			i = Utility.Randomint(1,4)	
			DDTrace("RandomHarness: "+i)			
			if i == 1
			iDevice = ( Game.GetFormFromFile(0x12051FC7, "Devious Devices - Expansion.esm" ) as Armor ) 	;Black Chaotic Pentagram Rope Corset (Exp) --- EXTRA BODY
			IsBodyBlocked = true
			elseif i == 2
			iDevice = ( Game.GetFormFromFile(0x1204E8A7, "Devious Devices - Expansion.esm" ) as Armor ) 	;Hishi Chaotic Rope Harness					--- EXTRA BODY
			IsBodyBlocked = true
			elseif i == 3 
			iDevice = ( Game.GetFormFromFile(0x1204EE37, "Devious Devices - Expansion.esm" ) as Armor ) 	;Hishi Karada Rope Harness					--- EXTRA BODY
			IsBodyBlocked = true
			elseif i == 4
			iDevice = ( Game.GetFormFromFile(0x1204EE35, "Devious Devices - Expansion.esm" ) as Armor ) 	;Full Top Rope Harness						--- EXTRA BODY
			IsBodyBlocked = true
			endif 
			
			if iDevice
			libs.LockDevice(akActor, iDevice, false)
			else
			DDTrace("RandomHarness NO DEVICE: "+i)
			endif 
			
		endif 


	endif 	

EndFunction
		
;/ 

		WIGGLE FREE SMART with One Key 

		;fuck this.
		;we make a "simple" function first.
		;wiggle around. Have success or failure, remove all devices or faint/die 


		;Step 1 --- Cuffs/Wrist/Heavy (Hands)
		;if IsWearingDDs(akactor, "zad_DeviousHeavyBondage")
		
		;libs.UnlockDevice(akactor, idevice, rdevice, DeviousBelt, destroyDevices)

/; 


Keyword Function GetDDKeyword(String sKeyword) Global

	return Keyword.GetKeyword(sKeyword) 

EndFunction

Keyword Function GetKeyword(int a) Global
	if a == 1
		return Keyword.GetKeyword("zad_DeviousPlug") 
	elseif a == 2
		return Keyword.GetKeyword("zad_DeviousHeavyBondage") 
	elseif a == 3
		return Keyword.GetKeyword("zad_DeviousBelt") 
	elseif a == 4
		return Keyword.GetKeyword("zad_DeviousBra")
	elseif a == 5
		return  Keyword.GetKeyword("zad_DeviousCollar")
	elseif a == 6
		return  Keyword.GetKeyword("zad_DeviousArmCuffs") 
	elseif a == 7
		return Keyword.GetKeyword("zad_DeviousLegCuffs") 
	elseif a == 8
		return Keyword.GetKeyword("zad_DeviousArmbinder")
	elseif a == 9
		return Keyword.GetKeyword("zad_DeviousYoke")
	elseif a == 10
		return Keyword.GetKeyword("zad_DeviousCorset")
	elseif a == 11
		return Keyword.GetKeyword("zad_DeviousClamps")
	elseif a == 12
		return Keyword.GetKeyword("zad_DeviousGloves")
	elseif a == 13
		return Keyword.GetKeyword("zad_DeviousHood")
	elseif a == 14
		return Keyword.GetKeyword("zad_DeviousSuit")
	elseif a == 15
		return Keyword.GetKeyword("zad_DeviousGag")
	elseif a == 16
		return Keyword.GetKeyword("zad_DeviousGagPanel")
	elseif a == 17
		return Keyword.GetKeyword("zad_DeviousPlugVaginal")
	elseif a == 18
		return Keyword.GetKeyword("zad_DeviousPlugAnal")
	elseif a == 19
		return Keyword.GetKeyword("zad_DeviousHarness")
	elseif a == 20
		return Keyword.GetKeyword("zad_DeviousBlindfold")
	elseif a == 21
		return Keyword.GetKeyword("zad_DeviousBoots")
	elseif a == 22
		return Keyword.GetKeyword("zad_DeviousPiercingsNipple")
	elseif a == 23
		return Keyword.GetKeyword("zad_DeviousPiercingsVaginal")
	elseif a == 24
		return Keyword.GetKeyword("zad_DeviousArmbinderElbow")
	elseif a == 25
		return Keyword.GetKeyword("zad_DeviousYokeBB")
	elseif a == 26
		return Keyword.GetKeyword("zad_DeviousCuffsFront")
	elseif a == 27
		return Keyword.GetKeyword("zad_DeviousStraitJacket")
	elseif a == 28
		return Keyword.GetKeyword("zad_DeviousBondageMittens")
	elseif a == 29
		return Keyword.GetKeyword("zad_DeviousHobbleSkirt")
	else
		return Keyword.GetKeyword("zad_Lockable")
	endif
	
EndFunction


Function DDTrace(String Text2) Global	;#NymTrace
	;if IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT #DDint: "+Text2)
	;endif
EndFunction
