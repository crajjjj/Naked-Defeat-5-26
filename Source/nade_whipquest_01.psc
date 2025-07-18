Scriptname nade_whipquest_01 Extends Quest Hidden


;slaFrameworkScr has what you want:
;UpdateActorExposure(Actor who, Int exposureDelta, String debugMessage = "")
;SetActorExposure(Actor who, Int newActorExposure)
;SetActorArousalLocked(Actor who, Bool isLocked)


ReferenceAlias Property Alias_Aggressor Auto
ReferenceAlias Property Marker_01 Auto		;VEHICLE EXPLORATION

nade_calmquest_qf_scr Property calmquest Auto
nade_configquest_scr Property cfgqst Auto

;nade_WhipQuest_01 Property whipq01 Auto


Faction Property WhippingFaction Auto
Faction Property FactionBusyRaper Auto

;nade_calmquest_qf_scr Property calmqst Auto
Quest Property calmqst Auto

;zadlibs Property libs Auto
SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto
FormList Property nade_ZazCaptDevs Auto ;DELETE
FormList Property nade_ZazWhipDevs Auto;DELETE
FormList Property nade_ZazFurnRopeGround Auto;DELETE
FormList Property nade_ZazFurnRopeUp Auto;DELETE
FormList Property nade_ZazFurnPole Auto;DELETE
FormList Property nade_ZazFurnCruxRope Auto;DELETE
FormList Property nade_ZazFurnMix Auto;DELETE
FormList Property nade_ZazFurnMonster_Indoor Auto;DELETE
FormList Property nade_ZazFurnMonster_Outdoor Auto;DELETE

;zbfPlayerControl Property zbfPC Auto
Quest Property nade_CaptiveQuest Auto

;LocationAlias Property ForcedLocAlias Auto
;ObjectReference Property Marker Auto
;ObjectReference Property Device Auto
;ObjectReference Property LastDevice Auto
Weapon Property Cane Auto

Keyword Property zbfFurnitureTypePainful Auto
Keyword Property zbfFurnitureWhipping Auto
Keyword Property zbfFurnitureWhippingDevice Auto
Keyword Property zbfFurnitureBedOfBondage Auto
Keyword Property zbfFurnitureWhippingFromFront Auto
Keyword Property zbfFurnitureWhippingFromBack Auto
Keyword Property zbfFurnitureExposeVaginal Auto
Keyword Property zbfFurnitureExposeAnal Auto

;bool ForceExpression = false
bool WaitForMoan = false
bool NoWhipping = false

Scene Property WhipScene Auto
;Idle[] Property Poses Auto		;play poses more often
;SPELL Property nade_CaptiveSpell Auto
Int DeviceIndex = -1

bool blocked = true
bool DebugKeyAbort = false





;/
Event OnKeyDown (Int KeyCode)		;#key
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey
	
	Debug.trace ("NAKED DEFEAT whipquest_01: Keypress DefeatKey (Skip whipping)")
	
	DebugKeyAbort = true
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Debug.Notification("<font color='#ff0000'>Your whipper does not seem to be interested.</font>")		;MESSAGE
		Debug.Trace("NAKED DEFEAT Notification: Your whipper does not seem to be interested.")	
	RemoveCane()

	;	if !DDeEvent
	;	Debug.Notification("<font color='#ff0000'>Try to wiggle free from your bindings.</font>")			;MESSAGE			
	;		Debug.Trace("NAKED DEFEAT Notification: Try to wiggle free from your bindings.")
	;	endif
	;SetStage(100)
		
	SetStage(25)	;end of whipping
	endif  
endif	
EndEvent
/;

Bool Continue = false

Event AnimationEnd(string eventName, string strArg, float numArg, Form sender)
Continue = True
EndEvent


bool DDeEvent = false
bool FurnitureEvent = false


Function Fragment_2()				;#whipscene	#20

;bool startwhipping = false

Debug.Trace("NAKED DEFEAT: whipquest_01 stage 20")


Actor a = Alias_Aggressor.GetReference() as Actor

Debug.Trace("NAKED DEFEAT whipquest_01: actor a: " +a)

;if a.IsInFaction(WhippingFaction)
;Debug.Notification("IT WORKED")
;endif

	
if a

	if a.IsInFaction(FactionBusyRaper)
	Debug.Trace("NAKED DEFEAT whipquest_01: actor busy")
;	whipq01.StartWhipQuest_01()
	SetStage(1000)
	elseif a.IsInFaction(WhippingFaction)
	Debug.Trace("NAKED DEFEAT whipquest_01: actor valid")
	
	
			;WHIP SCENE START SEQUENCE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		
		if CheckWhipper() ;&& startwhipping

		AddCane()

			Whipping = true
			RegisterForSingleUpdate(5.0)
					
			WhipScene.Start()			;#start

			
		else					
				Debug.Notification("NAKED DEFEAT whipquest_01: NO WHIPPER")
					Debug.Trace("NAKED DEFEAT whipquest_01: NO WHIPPER.")
			SetStage(100)
		endif
	
	endif
else
	Debug.Trace("NAKED DEFEAT whipquest_01: no actor found")
;	whipq01.StartWhipQuest_01()
	SetStage(1000)
endif	

EndFunction

Function Fragment_1()								;############ STAGE 10 ############			#START
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 10")

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning
;/
	;Debug.Trace("NAKED DEFEAT: whipquest_01 stage 10")
	;cfgqst.ShowPose()
	;Game.DisablePlayerControls(1, 1, 0, 0, 1, 1, 1, 1, 1)			

	if !cfgqst.DefeatTypeYoke
	Marker = Alias_Marker1.GetReference()
		if !Marker
			Marker = Alias_Marker2.GetReference()
		endif


	Device = Alias_Furniture1.GetReference()
		if !Device
			Device = Alias_Furniture2.GetReference()
		endif
	endif
	/;
else	
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 10 -> abort")
SetStage (1000)
endif
		
EndFunction

Function Fragment_3()										;OUTDOOR FURNITURE 				;############ STAGE 30 ############				;END OF WHIP SCENE (OnStart)
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 30")

;/
;if cfgqst.DefeatTypeYoke
;cfgqst.PlayerRef.PlayIdle(cfgqst.IdlesBoundWithYoke[0])

SetStage(100)
;else

	if Marker || !Device										;MARKER but NO DEVICE
		cfgqst.PlayerRef.MoveTo(Marker, 1.0, 0.0, 0.0, true)	;-> move Player to Marker
		Device = CreateFurniture(Marker)						;-> move Creature Furniture at marker. Device = that furniture
	endif

	if Device;	SexLab.StripActor(cfgqst.PlayerRef, cfgqst.PlayerRef, true, true)			;I guess if Device is found outdoors
		cfgqst.PlayerRef.MoveToInteractionLocation(Device)
		
		
		bool note = true
		while PlayerInCombat()
			if note	
			Debug.Notification("NAKED DEFEAT: PC in Combat, wait for allegiancequest")
			note = false
			endif
		Utility.Wait(1.0)
		endwhile

		Device.Activate(cfgqst.PlayerRef)	
		
		cfgqst.PlayCuffsSoundRope()
		SetStage(100)
	else
	;	Game.EnablePlayerControls()
		SetStage(1000)
	endif
;endif	
/;
EndFunction

Function Fragment_4()									;############ STAGE 100 ############	#transition		;captivequest START
		
	Debug.Trace("NAKED DEFEAT: whipquest_01 stage 100")	
;-------- MESSAGES and STAGES	

	SetStage(1000)
;	(nade_CaptiveQuest as nade_captivequest_qf_scr).StartQuest()

EndFunction

	

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

Debug.Trace("NAKED DEFEAT: whipquest_01 stage 1000")
Stop()
;endif
EndFunction

Function Fragment_7()									;############ STAGE 21 ############	



;whipmarks	---> move elsewhere!
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 21")	
;AddWhipmarks()			;tattobaustelle

if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning

;if DebugKeyAbort
SetStage (25)
;DebugKeyAbort = false
;endif

else
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 21 -> abort")
SetStage (1000)
endif

EndFunction

Function Fragment_5()			;END OF WHIPPING		;############ STAGE 25 ############		;#whip end
Debug.Trace("NAKED DEFEAT: whipquest_01 stage 25 (end of whipping)")

;Whipping = false
;cfgqst.WhipAgain = false
	
if cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning	
	
;DoOrgasm()
RemoveCane()							
SetStage(1000)
	
else
Debug.Trace("NAKED DEFEAT whipquest_01: stage 25 (abort)")
SetStage(1000)
endif	
EndFunction

Function Startwhipquest_01()	;this starts Capturequest from Stage 500 calmquest

Debug.Trace("NAKED DEFEAT whipquest_01: Startwhipquest_01")
	Start()
	SetStage(20)
	
EndFunction

Function AddCane()
	Actor a = Alias_Aggressor.GetReference() as Actor
	if a && !a.GetItemCount(Cane)
		a.AddItem(Cane, 1, true)
	endif
	
	a.MoveTo(cfgqst.PlayerRef, 150.0 * Math.Sin(cfgqst.PlayerRef.GetAngleZ()), 150.0 * Math.Cos(cfgqst.PlayerRef.GetAngleZ()), cfgqst.PlayerRef.GetHeight() - 0.0, abMatchRotation = false) ;try teleport whipper
	
EndFunction

Function RemoveCane()
	Actor a = (Alias_Aggressor.GetReference() as Actor)
	if a && a.GetItemCount(Cane)
		a.RemoveItem(Cane, 1, true, None)
	endif
EndFunction

Bool Function CheckWhipper()		;#check


	Actor a = Alias_Aggressor.GetReference() as Actor		;ORIG
	
	if cfgqst.ShowDebugMessages
	Debug.Notification("NAKED DEFEAT whipquest_01: Whipper: "+cfgqst.GetActorInfo(a))	
	Debug.Notification("NAKED DEFEAT whipquest_01: Whipper: "+cfgqst.GetLeveledActorBaseName(a))
	endif
	Debug.Trace("NAKED DEFEAT whipquest_01: Whipper: "+cfgqst.GetActorInfo(a))	
	Debug.Trace("NAKED DEFEAT whipquest_01: Whipper: "+cfgqst.GetLeveledActorBaseName(a))

	if a
		if !a.IsPlayerTeammate()
			if a.IsEnabled()
				if !a.IsDead()
					if cfgqst.IsHumanoid(a)
						if cfgqst.ShowDebugMessages
							Debug.Notification("Whipper (01) = "+cfgqst.GetLeveledActorBaseName(a))
						endif	
						return true
					else
						Debug.Notification("Whipper (01) = Non-humanoid ("+cfgqst.GetLeveledActorBaseName(a)+")")
						return false
					endif
				else
					Debug.Notification("Whipper (01) = Dead ("+cfgqst.GetLeveledActorBaseName(a)+")")
					return false
				endif
			else
				Debug.Notification("Whipper (01) = Disabled actor ("+cfgqst.GetLeveledActorBaseName(a)+")")
				return false
			endif	
		else
			Debug.Notification("Whipper (01) is follower")	;MESSAGE
			return false
		endif	
	else
	Debug.Notification("Whipper (01) is (none)")	;MESSAGE
	return false
	endif
EndFunction

bool tattoo = false

;		bool function simple_add_tattoo(Actor target, string section, string name, int color = 0, bool last = true, bool silent = false, float alpha = 1.0) global
;	bool function simple_remove_tattoo(Actor target, string section, string name, bool last = true, bool silent = false) global

Function AddWhipmarks()		;tattobaustelle V02 -> too many tattoos, reduce to 1 (V03)

	Debug.trace("NAKED DEFEAT: WhipMarks Started")
	SlaveTats.simple_remove_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", true, true)
	SlaveTats.simple_add_tattoo(cfgqst.PlayerRef, "Whipmarks", "Whipmarks Set", 0, true, true, 1.0)
	fadeTattoos.simple_doAlphaFadeFor("Whipmarks", "Whipmarks Set", cfgqst.WhipmarksDur)
	cfgqst.SyncTattoos()

EndFunction


Function DoOrgasm()											;IMPROVE THIS
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		;Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

bool Whipping = false


Event OnUpdate()	;#update
Debug.trace("NAKED DEFEAT whipquest_01: onupdate")


float whiptimer = 10.0

Actor whipper = Alias_Aggressor.GetReference() as Actor

			
while Whipping
	Utility.Wait(2.0)
	whiptimer -= 2.0
	
	if whiptimer < 1.0
	Whipping = false
	SetStage(25)		
	endif

endwhile


EndEvent

;/
;#hit
Event OnHit()

if cfgqst.ShowDebugMessages
Debug.trace("NAKED DEFEAT whipquest_01: OnHit()")
endif

if (!WaitForMoan && cfgqst.DefeatQuestRunning) || (!WaitForMoan && cfgqst.CivilRapeRunning)
	WaitForMoan = true
	
	if cfgqst.ShowDebugMessages
	Debug.trace("NAKED DEFEAT whipquest_01: SexLabMoan")
	endif
	
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Utility.Wait(3.0)
;	SetExpression(Utility.RandomInt(1,3))
	WaitForMoan = false
endif	
EndEvent
/;