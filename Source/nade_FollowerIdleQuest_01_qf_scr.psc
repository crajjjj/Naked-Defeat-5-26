Scriptname nade_FollowerIdleQuest_01_qf_scr Extends Quest Hidden


;/

CHECK THIS OUT:

https://www.creationkit.com/index.php?title=Scene_Script
Bool IsActionComplete(Int aiActionID)
Returns whether the specified action is complete or not.
Bool IsPlaying()
Returns whether the scene is currently playing or not.
Start()

we can maybe try to learn more here :P


1. Function starts this quest with bleedout

2. Function Pauses this quest
-> stage25 (end scene)
-> stage100 (pause stage)

3.Function end ends this quest
-> stage25 (end scene)
-> stage1000 (end stage)

/;


ReferenceAlias Property Alias_Follower_01 Auto
ReferenceAlias Property Alias_Follower_02 Auto
ReferenceAlias Property Alias_Follower_03 Auto
ReferenceAlias Property Alias_Follower_04 Auto
ReferenceAlias Property Alias_Follower_05 Auto

ReferenceAlias Property Marker_01 Auto		

nade_CalmQuest_qf_scr Property calmqst Auto
nade_configquest_scr Property cfgqst Auto
nade_WhipQuest_01 Property whipq01 Auto
SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto

nade_capturequest_qf_scr Property capqst Auto

nade_FollowerQuest_qf_scr Property folqst Auto

Faction Property WhippingFaction Auto
Faction Property FactionBusyRaper Auto

Faction Property CalmFaction Auto

Quest Property CalmQuest Auto
Quest Property nade_CaptiveQuest Auto

Scene Property FollowerIdleScene_01 Auto
Scene Property FollowerIdleScene_01_bleedout Auto
Scene Property FollowerIdleScene_01_surrender Auto
Scene Property FollowerIdleScene_01_struggle Auto
Scene Property FollowerIdleScene_01_struggleBound Auto
Scene Property FollowerIdleScene_01_crux Auto
Scene Property FollowerIdleScene_01_crux2 Auto
Scene Property FollowerIdleScene_01_crux3 Auto

Scene Property FollowerIdleScene_01_impaled_01 Auto


Scene Property FollowerIdleScene_02_bleedout Auto	
Scene Property FollowerIdleScene_02_surrender Auto
Scene Property FollowerIdleScene_02_struggle Auto
Scene Property FollowerIdleScene_02_struggleBound Auto
Scene Property FollowerIdleScene_02_crux Auto
Scene Property FollowerIdleScene_02_crux2 Auto
Scene Property FollowerIdleScene_02_crux3 Auto

Scene Property FollowerIdleScene_03_struggle Auto
Scene Property FollowerIdleScene_03_struggleBound Auto

Scene Property FollowerIdleScene_04_struggle Auto
Scene Property FollowerIdleScene_04_struggleBound Auto

Scene Property FollowerIdleScene_05_struggle Auto
Scene Property FollowerIdleScene_05_struggleBound Auto

Int DeviceIndex = -1

bool blocked = true
bool DebugKeyAbort = false
bool WaitForMoan = false
bool NoWhipping = false

Bool Continue = false

Event AnimationEnd(string eventName, string strArg, float numArg, Form sender)
Continue = True
EndEvent

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_2()				;#whipscene	#20			;PART OF SCENE		:stage 20 		#start

;bool startwhipping = false

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 20")

f01 = (Alias_Follower_01.GetReference() as Actor)

;check if actor available
if !f01
;Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 20 actor: "+cfgqst.GetActorInfo(a))
SetStage (21)
else
;we wait here and let CalmQuest call the functions
endif

RegisterForModEvent("Maintenance01", "ForceMaintenance01")
RegisterForModEvent("Maintenance02", "ForceMaintenance02")
RegisterForModEvent("Maintenance03", "ForceMaintenance03")

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Actor f01
Actor f02
Actor f03
Actor f04
Actor f05


Function Fragment_1()								;############ STAGE 10 ############			#10			;PART OF SCENE
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10")

f01 = (Alias_Follower_01.GetReference() as Actor)
f02 = (Alias_Follower_02.GetReference() as Actor)
f03 = (Alias_Follower_03.GetReference() as Actor)
f04 = (Alias_Follower_04.GetReference() as Actor)
f05 = (Alias_Follower_05.GetReference() as Actor)

if f01
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10 actor f01: "+f01.GetBaseObject().GetName())
f01.RestoreActorValue("Health", 10000)
endif
if f02
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10 actor f02: "+f02.GetBaseObject().GetName())
f02.RestoreActorValue("Health", 10000)
endif
if f03
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10 actor f03: "+f03.GetBaseObject().GetName())
f03.RestoreActorValue("Health", 10000)
endif
if f04
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10 actor f04: "+f04.GetBaseObject().GetName())
f04.RestoreActorValue("Health", 10000)
endif
if f05
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 10 actor f05: "+f05.GetBaseObject().GetName())
f05.RestoreActorValue("Health", 10000)
endif	

RegisterForModEvent("Maintenance01", "ForceMaintenance01")
RegisterForModEvent("Maintenance02", "ForceMaintenance02")
RegisterForModEvent("Maintenance03", "ForceMaintenance03")


EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_3()				;OUTDOOR FURNITURE 				;############ STAGE 30 ############			;PART OF SCENE	

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 30")
;not in use
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_4()									;############ STAGE 100 ############	#pause		
;Pause Stage	

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 100")
				
if Alias_Follower_01 && folqst.Name_Follower01 != "empty"
NymTrace("Alias_Follower_01 FOUND")
SendModevent("Maintenance01", "ForceMaintenance01")
endif
if Alias_Follower_02 && folqst.Name_Follower02 != "empty"
NymTrace("Alias_Follower_02 FOUND")
SendModevent("Maintenance02", "ForceMaintenance02")
endif 
;EXPAND FOLLOWERS HERE
;RegisterForModEvent("Maintenance03", "ForceMaintenance03")

				
			

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage
if RunMaintenance01
StartDoingNothing_01(false)
endif 
if RunMaintenance02
StartDoingNothing_02(false)
endif 
if RunMaintenance03
StartDoingNothing_03(false)
endif 
if RunMaintenance04
StartDoingNothing_04(false)
endif 
;SceneProtector01(0)
;SceneProtector02(0)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 1000")
Stop()
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_7()									;############ STAGE 21 ############	

;WE LAND HERE WHEN THERE IS NO ACTOR
	
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 21 (actor = none)")	
if cfgqst.ShowDebugMessages
Debug.Notification("NAKED DEFEAT ERROR: FollowerIdleQuest_01 stage 21 (actor = none)")	
endif

SetStage(1000)

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_5()			;END OF SCENE		;############ STAGE 25 ############		;#whip end	;NOT part of Scene? Wtf!

;SceneProtector01(0)
;SceneProtector02(0)

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 stage 25 (end of idle)")
							
SetStage(1000)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------


;String PlayPose

Function StartFollowerIdleQuest_01(string Type)

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartFollowerIdleQuest_01()")
		
		Start()
		SetStage(20)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------

bool PauseQuest = false
bool EndQuest = false


Function EndFollowerIdleQuest_01()			;#end

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: EndFollowerIdleQuest_01()")

SetStage(1000)
	
EndFunction



Function ResumeFollowerIdleQuest_01(string Type)	;#resume

;cfgqst.PlayPose = Type
;cfgqst.PlayPose02 = Type

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: ResumeFollowerIdleQuest_01 // Pose: "+cfgqst.PlayPose)
;Utility.Wait(2.0) ;#speed up
SetStage(20)
EndFunction

;----------------------------------------------------------------------------------------------------------------


Function AddCane()

EndFunction

;----------------------------------------------------------------------------------------------------------------

Function RemoveCane()
	

EndFunction

;----------------------------------------------------------------------------------------------------------------

Bool Function CheckWhipper()		;#check
	return false
EndFunction

;----------------------------------------------------------------------------------------------------------------


bool tattoo = false

Function AddWhipmarks()		;tattobaustelle V02 -> too many tattoos, reduce to 1 (V03)
	Debug.trace("NAKED DEFEAT: WhipMarks Started")

EndFunction

;----------------------------------------------------------------------------------------------------------------

Function DoOrgasm()											;IMPROVE THIS
	SendModEvent("Moan")
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		;Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

;----------------------------------------------------------------------------------------------------------------

Bool Function IsSceneRunning()

if FollowerIdleScene_01_bleedout.IsPlaying()	
return true
else
return false
endif				

EndFunction

bool Whipping = false

;/
Event OnUpdate()	;#update NOT IN USE

Debug.trace("NAKED DEFEAT FollowerIdleQuest_01: onupdate")

while IsRunning()
Debug.Notification("NAKED DEFEAT FollowerIdleQuest_01: onupdate: Quest Still running")
Utility.Wait(1.0)
endwhile
Start()

EndEvent

/;

Event OnUpdate()	;#update
Debug.trace("NAKED DEFEAT FollowerIdleQuest_01: onupdate (Scene Protectors)")

	
EndEvent

;---------------------------------------------------------------------------------------------------------------------------

ObjectReference TheSceneProtectorA_01 = none
ObjectReference TheSceneProtectorB_01 = none

Function SceneProtector01(int val)		;#protector

if val == 1
Actor Follower01 = Alias_Follower_01.GetReference() as Actor

		TheSceneProtectorA_01 = Follower01.PlaceAtMe(cfgqst.Scene_Protector[0])
		TheSceneProtectorA_01.SetAngle(0.0, 0.0, 0.0)	
	;	ObjectReference TheSceneProtectorA_02 = Follower01.PlaceAtMe(cfgqst.Scene_Protector[1])
	;	TheSceneProtectorA_02.SetAngle(0.0, 0.0, 0.0)

elseif val == 0

TheSceneProtectorA_01.DisableNoWait()
TheSceneProtectorA_01.Delete()
endif

EndFunction

;---------------------------------------------------------------------------------------------------------------------------

Function SceneProtector02(int val)		;#protector

if val == 1
Actor Follower02 = Alias_Follower_02.GetReference() as Actor

		TheSceneProtectorB_01 = Follower02.PlaceAtMe(cfgqst.Scene_Protector[0])
		TheSceneProtectorB_01.SetAngle(0.0, 0.0, 0.0)
		
	;	ObjectReference TheSceneProtectorB_02 = Follower02.PlaceAtMe(cfgqst.Scene_Protector[1])
	;	TheSceneProtectorB_02.SetAngle(0.0, 0.0, 0.0)

elseif val == 0

TheSceneProtectorB_01.DisableNoWait()
TheSceneProtectorB_01.Delete()

endif

EndFunction

;---------------------------------------------------------------------------------------------------------------------------

Function SetExpression(int type, actor akactor)	;#setexpression

Actor a = akActor as Actor
int RandomAAAH = 100

if cfgqst.IsFucking(a) && cfgqst.IsNymrasGame()
RandomAAAH = Utility.RandomInt(80,100)
else 
RandomAAAH = Utility.RandomInt(0,100)
endif 

if type == 0 
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 SetExpression - type: "+type+" RESET")
else 
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 SetExpression - type: "+type)
endif 

if type == 0
a.ClearExpressionOverride()
MfgConsoleFunc.ResetPhonemeModifier(a)
elseif type == 1
a.SetExpressionOverride(1, RandomAAAH)	;dialogue fear 	
MfgConsoleFunc.SetPhonemeModifier(a, 0, 1, RandomAAAH)	
;Debug.Notification("NAKED DEFEAT TEST: dialogue fear ")
elseif type == 2
a.SetExpressionOverride(16, 100)
MfgConsoleFunc.SetPhonemeModifier(a, 0, 1, RandomAAAH)	
elseif type == 3
a.SetExpressionOverride(9, 100)
MfgConsoleFunc.SetPhonemeModifier(a, 0, 1, RandomAAAH)	

;Debug.Notification("NAKED DEFEAT TEST: dialogue combat shout ")
endif	
EndFunction

bool SexScene = false
bool StartForceExpression = false	
	
	
	
;----------------------------------------------------------------------------------------------------------------------	

;Victims[0] ;NO LONGER IN USE!!!!!
;/
Function IdleVictims0(int round, string playidle)

Actor a = (Alias_Follower_01.GetReference() as Actor)

if a
cfgqst.SexlabMoan(a)

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims0() Victims[0]: "+folqst.Name_Follower01)

	if round == 1	;play
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims0() Victims[0]: round == 1")	
		if a.IsBleedingOut()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims0() isBleedingOut: "+folqst.Name_Follower01)
		a.RestoreActorValue("Health", 1000)	
		Utility.Wait(3.0)
		endif
	
			a.EvaluatePackage()	;necessary? test without?

			
			if playidle == "bleedout"
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Bleedout Scene (START)")
			FollowerIdleScene_01_bleedout.ForceStart()
			elseif playidle == "surrender"
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Surrender Scene (START)")
			FollowerIdleScene_01_surrender.ForceStart()
			elseif playidle == "struggle"
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Struggle Scene (START)")
			FollowerIdleScene_01_struggle.ForceStart()
			
			elseif playidle == "struggleBound"
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- StruggleBound Scene (START)")
			FollowerIdleScene_01_struggleBound.ForceStart()
			
			elseif playidle == "crux"
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Crux Scene (START)")	

			int i = Utility.RandomInt(1,5)
					if i == 1
					FollowerIdleScene_01_crux.ForceStart()
					elseif i == 2
					FollowerIdleScene_01_crux2.ForceStart()
					elseif i == 3
					FollowerIdleScene_01_crux3.ForceStart()
					elseif i > 3
					FollowerIdleScene_01_impaled_01.ForceStart()
					endif	
					
					
			SetExpression(Utility.RandomInt(1,3), a)				
			Utility.Wait(1.0)
		;	SceneProtector01(1)
			endif		
			
		;	if cfgqst.ShowDebugMessages
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Bleedout Scene playing:"  +FollowerIdleScene_01_bleedout.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Surrender Scene playing:"  +FollowerIdleScene_01_surrender.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Struggle Scene playing:"  +FollowerIdleScene_01_struggle.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Crux Scene playing:"  +FollowerIdleScene_01_crux.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Crux2 Scene playing:"  +FollowerIdleScene_01_crux2.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- Crux3 Scene playing:"  +FollowerIdleScene_01_crux3.IsPlaying())
		;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Crux3 Scene playing:"  +FollowerIdleScene_01_impaled_01.IsPlaying())
		;	endif
	elseif round == 0 ;stop	
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims0() Victims[0]: round == 0")			
		RunMaintenance01 = false
				
		if FollowerIdleScene_01_bleedout.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_bleedout (STOP)")
		FollowerIdleScene_01_bleedout.Stop()
		elseif FollowerIdleScene_01_surrender.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_surrender (STOP)")
		FollowerIdleScene_01_surrender.Stop()
		elseif FollowerIdleScene_01_struggle.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_struggle (STOP)")
		FollowerIdleScene_01_struggle.Stop()
		
		elseif FollowerIdleScene_01_struggleBound.IsPlaying()
		FollowerIdleScene_01_struggleBound.Stop()
		
		elseif FollowerIdleScene_01_crux.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_crux (STOP)")
		FollowerIdleScene_01_crux.Stop()
		;SetExpression(0, a)		
		elseif FollowerIdleScene_01_crux2.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_crux2 (STOP)")
		FollowerIdleScene_01_crux2.Stop()
		;SetExpression(0, a)	
		elseif FollowerIdleScene_01_crux3.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[0]- FollowerIdleScene_01_crux3 (STOP)")
		FollowerIdleScene_01_crux3.Stop()
		;SetExpression(0, a)
		elseif FollowerIdleScene_01_impaled_01.IsPlaying()
		FollowerIdleScene_01_impaled_01.Stop()
		;SetExpression(0, a)
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_01_impaled (STOP)")
		endif	
	;	SceneProtector01(0)
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")

	endif
endif

EndFunction

/;
	
;Victims[1]

Function StartDoingNothing_01(bool start)			;#nothing

	if !folqst.Actor_Follower01
	; do nothing
	NymTrace("NAKED DEFEAT: FollowerIdleQuest_01 StartDoingNothing_01(none)")
	elseif folqst.Actor_Follower01

		Actor akactor = (Alias_Follower_01.GetReference() as Actor)
		
		if !RunMaintenance01
		SendModEvent("Maintenance01")
		endif
		
		if start
		Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_01 START - Actor: "+folqst.Name_Follower01)
		akactor.EvaluatePackage()
			if !FollowerIdleScene_01_struggle.IsPlaying()	;THIS DOES ONLY "DO NOTHING" 
			FollowerIdleScene_01_struggle.ForceStart()
			endif
			if FollowerIdleScene_01_struggle.IsPlaying()
		;	ScreenMessage("ScenePlaying YES")
			else
		;	ScreenMessage("ScenePlaying NO :(")
			endif
		else
		Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_01 END - Actor: "+folqst.Name_Follower01)
		RunMaintenance01 = false
		akactor.EvaluatePackage()
			if FollowerIdleScene_01_struggle.IsPlaying()	;THIS DOES ONLY "DO NOTHING" 
			FollowerIdleScene_01_struggle.Stop()
			endif
		cfgqst.ResetIdle(akactor)
		akactor.EvaluatePackage()
		endif
	endif 	
		;RegisterForSingleUpdate(1.0)

EndFunction

Function StartDoingNothing_02(bool start)			;#nothing

	if !folqst.Actor_Follower02
	; do nothing
	NymTrace("NAKED DEFEAT: FollowerIdleQuest_01 StartDoingNothing_02(none)")
	elseif folqst.Actor_Follower02

		if !RunMaintenance02
		SendModEvent("Maintenance02")
		endif
		
		Actor akactor = (Alias_Follower_02.GetReference() as Actor)
		Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_02 - Actor: "+folqst.Name_Follower02)
		
		;START DOING NOTHING 
		if start
		akactor.EvaluatePackage()
			if !FollowerIdleScene_02_struggle.IsPlaying()    ;THIS DOES ONLY "DO NOTHING" 
			FollowerIdleScene_02_struggle.ForceStart()
			endif
			if FollowerIdleScene_02_struggle.IsPlaying()
		;	ScreenMessage("ScenePlaying YES")
			else
		;	ScreenMessage("ScenePlaying NO :(")
			endif
			
		;STOP DOING NOTHING 
		else
		Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_02 END - Actor: "+folqst.Name_Follower02)
		RunMaintenance02 = false
		akactor.EvaluatePackage()
		
			if FollowerIdleScene_02_struggle.IsPlaying()		;THIS DOES ONLY "DO NOTHING" 
			FollowerIdleScene_02_struggle.Stop()
			endif
		cfgqst.ResetIdle(akactor)	
		akactor.EvaluatePackage()
		endif
	endif 

EndFunction

Function StartDoingNothing_03(bool start)			;#nothing

				
	if !RunMaintenance03
	SendModEvent("Maintenance03")
	endif

	Actor akactor = (Alias_Follower_03.GetReference() as Actor)
	Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_03 - Actor: "+akactor.GetBaseObject().GetName())
	if start
	akactor.EvaluatePackage()
		if !FollowerIdleScene_03_struggle.IsPlaying()
		FollowerIdleScene_03_struggle.ForceStart()
		endif
		if FollowerIdleScene_03_struggle.IsPlaying()
	;	ScreenMessage("ScenePlaying YES")
		else
	;	ScreenMessage("ScenePlaying NO :(")
		endif
	else
	RunMaintenance03 = false
	akactor.EvaluatePackage()
		if FollowerIdleScene_03_struggle.IsPlaying()
		FollowerIdleScene_03_struggle.Stop()
		endif
	endif

EndFunction

Function StartDoingNothing_04(bool start)			;#nothing

	if !RunMaintenance04
	SendModEvent("Maintenance04")
	endif

	Actor akactor = (Alias_Follower_04.GetReference() as Actor)
	Debug.Trace("NAKED DEFEAT FollowerIdleQuest_01: StartDoingNothing_04 - Actor: "+akactor.GetBaseObject().GetName())
	if start
	akactor.EvaluatePackage()
		if !FollowerIdleScene_04_struggle.IsPlaying()
		FollowerIdleScene_04_struggle.ForceStart()
		endif
		if FollowerIdleScene_04_struggle.IsPlaying()
	;	ScreenMessage("ScenePlaying YES")
		else
	;	ScreenMessage("ScenePlaying NO :(")
		endif
	else
	RunMaintenance04 = false
	akactor.EvaluatePackage()
		if FollowerIdleScene_04_struggle.IsPlaying()
		FollowerIdleScene_04_struggle.Stop()
		endif
	endif

EndFunction


;/
Function IdleVictims1(int round, string playidle)

Actor a = (Alias_Follower_02.GetReference() as Actor)

if a
cfgqst.SexlabMoan(a)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims1() Victims[1]: "+a.GetBaseObject().GetName())


	if round == 1	;play
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims1() Victims[1]: round == 1")	
		if a.IsBleedingOut()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims1() isBleedingOut: "+a.GetBaseObject().GetName())
		a.RestoreActorValue("Health", 1000)
		Utility.Wait(3.0)
		endif

		a.EvaluatePackage()	;necessary? test without?
		
		if !RunMaintenance02
		SendModEvent("Maintenance02")	
		endif
		
		if playidle == "bleedout"
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Bleedout Scene (START)")
		FollowerIdleScene_02_bleedout.ForceStart()
		elseif playidle == "surrender"
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Surrender Scene (START)")
		FollowerIdleScene_02_surrender.ForceStart()
		elseif playidle == "struggle"
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Struggle Scene (START)")
		FollowerIdleScene_02_struggle.ForceStart()
		
		elseif playidle == "struggleBound"
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- StruggleBound Scene (START)")
		FollowerIdleScene_02_struggleBound.ForceStart()
		
		elseif playidle == "crux"
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Crux/Impale Scene (START)")				

			int i = Utility.RandomInt(1,3)
				if i == 1
				FollowerIdleScene_02_crux.ForceStart()
				elseif i == 2
				FollowerIdleScene_02_crux2.ForceStart()
				elseif i == 3
				FollowerIdleScene_02_crux3.ForceStart()
				endif
		
	
		SetExpression(Utility.RandomInt(1,3), a)				
		Utility.Wait(1.0)
	;	SceneProtector02(1)
		endif		
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Bleedout Scene playing:"  +FollowerIdleScene_02_bleedout.IsPlaying())
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Surrender Scene playing:"  +FollowerIdleScene_02_surrender.IsPlaying())
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Struggle Scene playing:"  +FollowerIdleScene_02_struggle.IsPlaying())
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Crux Scene playing:"  +FollowerIdleScene_02_crux.IsPlaying())
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Crux2 Scene playing:"  +FollowerIdleScene_02_crux2.IsPlaying())
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- Crux3 Scene playing:"  +FollowerIdleScene_02_crux3.IsPlaying())

	elseif round == 0 ;stop		
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims1() Victims[1]: round == 0")		
		RunMaintenance02 = false
	
		if FollowerIdleScene_02_bleedout.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_bleedout (STOP)")
		FollowerIdleScene_02_bleedout.Stop()
		elseif FollowerIdleScene_02_surrender.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_surrender (STOP)")
		FollowerIdleScene_02_surrender.Stop()
		elseif FollowerIdleScene_02_struggle.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_struggle (STOP)")
		FollowerIdleScene_02_struggle.Stop()
		
		elseif FollowerIdleScene_02_struggleBound.IsPlaying()
		FollowerIdleScene_02_struggleBound.Stop()
		
		elseif FollowerIdleScene_02_crux.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_crux (STOP)")
		FollowerIdleScene_02_crux.Stop()
		SetExpression(0, a)		
		elseif FollowerIdleScene_02_crux2.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_crux2 (STOP)")
		FollowerIdleScene_02_crux2.Stop()
		SetExpression(0, a)	
		elseif FollowerIdleScene_02_crux3.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[1]- FollowerIdleScene_02_crux3 (STOP)")
		FollowerIdleScene_02_crux3.Stop()
		SetExpression(0, a)
		endif	
	;	SceneProtector02(0)
		;Debug.SendAnimationEvent(a,"IdleForceDefaultState")
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")
		
	endif
endif

EndFunction


;Victims[2]
Function IdleVictims2(int round, string playidle)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims2() We are here")
Actor a = (Alias_Follower_03.GetReference() as Actor)

if a
cfgqst.SexlabMoan(a)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims2() Victims[2]: "+a.GetBaseObject().GetName())

	if round == 1	;play
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims2() Victims[2]: round == 1")
	
		if a.IsBleedingOut()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims2() isBleedingOut: "+a.GetBaseObject().GetName())
		a.RestoreActorValue("Health", 1000)
		Utility.Wait(3.0)
		endif
	
	
		;if a
			a.EvaluatePackage()	
			if !RunMaintenance03
			SendModEvent("Maintenance03")
			endif
				
			if playidle == "struggle"
			FollowerIdleScene_03_struggle.ForceStart()
			elseif playidle == "struggleBound"
			FollowerIdleScene_03_struggleBound.ForceStart()
			endif
		;endif
		
	elseif round == 0 ;stop		
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims2() Victims[2]: round == 0")
		RunMaintenance03 = false	
		if FollowerIdleScene_03_struggle.IsPlaying()
	;	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[2]- FollowerIdleScene_03_struggle (STOP)")
		FollowerIdleScene_03_struggle.Stop()	
		elseif FollowerIdleScene_03_struggleBound.IsPlaying()
		FollowerIdleScene_03_struggleBound.Stop()
		endif			
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")		
	endif
endif

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[2]- Struggle Scene playing:"  +FollowerIdleScene_03_struggle.IsPlaying())

EndFunction

;Victims[3]
Function IdleVictims3(int round, string playidle)

Actor a = (Alias_Follower_04.GetReference() as Actor)

if a
cfgqst.SexlabMoan(a)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims3() Victims[3]: "+a.GetBaseObject().GetName())
	if a.IsBleedingOut()
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims3() isBleedingOut: "+a.GetBaseObject().GetName())
	a.RestoreActorValue("Health", 1000)
	Utility.Wait(3.0)
	endif

	if round == 1	;play
		if a
			a.EvaluatePackage()	
			
			if playidle == "struggle"
			FollowerIdleScene_04_struggle.ForceStart()
			elseif playidle == "struggleBound"
			FollowerIdleScene_04_struggleBound.ForceStart()
			endif
		endif
		
	elseif round == 0 ;stop	
				
		if FollowerIdleScene_04_struggle.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[3]- FollowerIdleScene_04_struggle (STOP)")
		FollowerIdleScene_04_struggle.Stop()	
		elseif FollowerIdleScene_04_struggleBound.IsPlaying()
		FollowerIdleScene_04_struggleBound.Stop()		
		endif
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")	
		
	endif
endif
EndFunction

;Victims[4]
Function IdleVictims4(int round, string playidle)

Actor a = (Alias_Follower_05.GetReference() as Actor)

if a
cfgqst.SexlabMoan(a)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims4() Victims[4]: "+a.GetBaseObject().GetName())
	if a.IsBleedingOut()
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 IdleVictims4() isBleedingOut: "+a.GetBaseObject().GetName())
	a.RestoreActorValue("Health", 1000)
	Utility.Wait(3.0)
	endif

	if round == 1	;play
		if a
			a.EvaluatePackage()	;necessary? test without?
			
			if playidle == "struggle"
			FollowerIdleScene_05_struggle.ForceStart()
			elseif playidle == "struggleBound"
			FollowerIdleScene_05_struggleBound.ForceStart()
			endif
		endif
		
	elseif round == 0 ;stop	
				
		if FollowerIdleScene_05_struggle.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 -Victims[4]- FollowerIdleScene_05_struggle (STOP)")
		FollowerIdleScene_05_struggle.Stop()
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")
		elseif FollowerIdleScene_05_struggleBound.IsPlaying()
		FollowerIdleScene_05_struggleBound.Stop()		
		endif
		Debug.SendAnimationEvent(a,"IdleForceDefaultState")		
	endif
endif

EndFunction

/;

Package Property PackageDoNothing Auto

bool RunMaintenance01 = false
bool RunMaintenance02 = false
bool RunMaintenance03 = false
bool RunMaintenance04 = false

;Victims[0]
Event ForceMaintenance01(string eventName, string strArg, float numArg, Form sender)	;#maintenance
;STARTED VIA MODEVENT

	if !folqst.Actor_Follower01
	; do nothing
	NymTrace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(none)")
	elseif folqst.Actor_Follower01

	Bool IsPosing01 = false

	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(START)")

	Actor a = (Alias_Follower_01.GetReference() as Actor)

	SetExpression(0, a)
	RunMaintenance01 = true
	;LOOP NOT EVEN STARTING, BUT FUCKING WHY????

		;while cfgqst.ModEnabled && !cfgqst.IsDefeatRunning()	;wait for Defeat to Start.... This sux and has to be improved
		;Utility.Wait(1.0)
		;endwhile 
		
		while cfgqst.ModEnabled && cfgqst.IsDefeatRunning() && RunMaintenance01
		;OLD while cfgqst.ModEnabled && !calmqst.CheckEndOfDefeat() && !cfgqst.AbortALl && RunMaintenance01 && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(LOOP)")
		
			If !IsPosing01 ;?????? <---- I think this is a problem #TODO
			;calmqst.PlayPoseOnActor(a, "Random", false)		
			IsPosing01 = true
			endif
			
			if cfgqst.IsFucking(a) && !cfgqst.IsNymrasGame() 
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(SEX LOOP)")
			;during Sex we stop playing our expressions 	
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01; && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01;&& (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01;&& (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				
			else
			Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(MAIN LOOP)")
			
				SetExpression(Utility.RandomInt(1,3), a)
				
				if Utility.RandomInt(1,4) == 1
				cfgqst.SexlabMoan(a)
				endif
				
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01; && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01;&& (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance01;&& (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
				Utility.Wait(1.0)
				endif
				
				;NymTrace("calmqst.FollowerCaughtRunning(0): "+calmqst.FollowerCaughtRunning(0))
				;NymTrace("!calmqst.CheckEndOfDefeat(): "+!calmqst.CheckEndOfDefeat())
				;NymTrace("RunMaintenance01: "+RunMaintenance01)

				if RunMaintenance01 && !calmqst.CheckEndOfDefeat() && calmqst.FollowerCaughtRunning(0); && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")	 	;;check if CalmQuest is running to prevent error spam
					if FollowerIdleScene_02_struggle.IsPlaying()
					Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(FollowerIdleScene_01_struggle.IsPlaying(TRUE))")
					else
					Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(FollowerIdleScene_01_struggle.IsPlaying(false))")
					endif
				
					if (a.GetCurrentPackage() == PackageDoNothing)
					Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(FollowerIdleScene_01_struggle.PackageDoNothing(TRUE))")
					else
					Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(FollowerIdleScene_01_struggle.PackageDoNothing(false))")
					endif
				;calmqst.RestorePosition(0)
				
					if RunMaintenance01
					StartDoingNothing_01(true) ;new, try to restart scene (should be broken if this triggers anyway)
						if cfgqst.InFurniture
						calmqst.PlayPoseOnActor(a, "FollowerDevices", true)
						else 
					;	calmqst.PlayPoseOnActor(a, "Random", true)
						endif 
					IsPosing01 = true
					endif 
				else 	
				Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(Follower NOT Running?)")	
				endif
			;	endif		
				;SetExpression(0, a)
			endif
		endwhile
		
	SetExpression(0, a)
	cfgqst.ResetIdle(a)
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(END)")
	endif 
;[04/17/2025 - 03:09:27AM] NAKED DEFEAT followerquest: (#trace NYM) NakedFollower[0] FOUND
;[04/17/2025 - 03:09:27AM] NAKED DEFEAT followerquest: (#trace NYM) NakedFollowerCount: 1
;[04/17/2025 - 03:09:27AM] WARNING: Assigning None to a non-object variable named "::temp69"
;stack:
;[nade_FollowerIdleQuest_01 (45005A1F)].nade_followeridlequest_01_qf_scr.ForceMaintenance01() - "------------------------------------" Line 995
;[04/17/2025 - 03:09:27AM] NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(LOOP)
;[04/17/2025 - 03:09:27AM] NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance01(MAIN LOOP)
;[04/17/2025 - 03:09:27AM] NAKED DEFEAT: FollowerIdleQuest_01 SetExpression - type: 3
	
	
EndEvent

;Victims[1]
Event ForceMaintenance02(string eventName, string strArg, float numArg, Form sender)		;runs during the whole scenario		#expression

	if !folqst.Actor_Follower02
	; do nothing
	NymTrace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(none)")
	elseif folqst.Actor_Follower01
	
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(START)")

		Actor a = (Alias_Follower_02.GetReference() as Actor)

		Bool IsPosing02 = false

		SetExpression(0, a)
		RunMaintenance02 = true

		;	while cfgqst.ModEnabled && !cfgqst.IsDefeatRunning()	;wait for Defeat to Start.... This sux and has to be improved
		;	Utility.Wait(1.0)
		;	endwhile 

			while cfgqst.ModEnabled && cfgqst.IsDefeatRunning() && RunMaintenance02
			;OLD: while cfgqst.ModEnabled && !calmqst.CheckEndOfDefeat() && !cfgqst.AbortALl && RunMaintenance02 && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
			
				If !IsPosing02 
				;calmqst.PlayPoseOnActor(a, "Random", false)		
				IsPosing02 = true
				endif

				if cfgqst.IsFucking(a) && !cfgqst.IsNymrasGame() 
				;during Sex we stop playing our expressions ---> Nymras Game ignores this
				Utility.Wait(3.0)
				else
				SetExpression(Utility.RandomInt(1,3), a)
				
					if Utility.RandomInt(1,4) == 1
					cfgqst.SexlabMoan(a)
					endif
					;StripFollower(a) ;too early...., needs more elaborate checks and balacnes
					
					if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance02; && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
					Utility.Wait(1.0)
					endif
					if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance02; && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
					Utility.Wait(1.0)
					endif
					if !calmqst.CheckEndOfDefeat() && !cfgqst.AbortAll && RunMaintenance02; && (cfgqst.DefeatStatePlayer != "Escaping") && (cfgqst.DefeatStatePlayer != "Escaped")
					Utility.Wait(1.0)
					endif

					if RunMaintenance02 && !calmqst.CheckEndOfDefeat() && calmqst.FollowerCaughtRunning(1)
					
						if FollowerIdleScene_02_struggle.IsPlaying()
						Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(FollowerIdleScene_02_struggle.IsPlaying(TRUE))")
						else
						Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(FollowerIdleScene_02_struggle.IsPlaying(false))")
						endif
						if (a.GetCurrentPackage() == PackageDoNothing)
						Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(FollowerIdleScene_02_struggle.PackageDoNothing(TRUE))")
						else
						Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(FollowerIdleScene_02_struggle.PackageDoNothing(false))")
						endif
				
						;calmqst.RestorePosition(0)
						if RunMaintenance02;
						StartDoingNothing_02(true) ;new, try to restart scene (should be broken if this triggers anyway)
						;calmqst.PlayPoseOnActor(a, "Random", false)	;set a new Pose
							if cfgqst.InFurniture
							calmqst.PlayPoseOnActor(a, "FollowerDevices", true)
							else 
						;	calmqst.PlayPoseOnActor(a, "Random", true)
							endif 
						;PlayPoseOnActor(calmqst.Victims[1], "FollowerDevices", false)
						endif 
					IsPosing02 = true
					endif
				;SetExpression(0, a)
				endif
				
			endwhile
			
		SetExpression(0, a)
		cfgqst.ResetIdle(a)
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance02(END)")
		endif 
EndEvent

;Victims[2]
Event ForceMaintenance03(string eventName, string strArg, float numArg, Form sender)		;runs during the whole scenario		#expression

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance03(START)")

Actor a = (Alias_Follower_03.GetReference() as Actor)

SetExpression(0, a)
RunMaintenance03 = true

	while cfgqst.ModEnabled && !cfgqst.IsDefeatRunning()	;wait for Defeat to Start.... This sux and has to be improved
	Utility.Wait(1.0)
	endwhile 

	while !cfgqst.AbortAll &&cfgqst.ModEnabled && RunMaintenance03 && (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning)
	
		if cfgqst.IsFucking(a)
		Utility.Wait(3.0)
		else	
			SetExpression(Utility.RandomInt(1,3), a)
			
			if Utility.RandomInt(1,5) == 1
			cfgqst.SexlabMoan(a)
			endif
			
			if cfgqst.InFurniture
			calmqst.PlayPoseOnActor(a, "FollowerDevices", true)
			else 
			calmqst.PlayPoseOnActor(a, "Random", true)
			endif 
			Utility.Wait(3.0)
			SetExpression(0, a)
			
		endif
	endwhile
	
SetExpression(0, a)
cfgqst.ResetIdle(a)

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_01 ForceMaintenance03(END)")

EndEvent


Function StripFollower(actor akactor)				;#strip
		
	cfgqst.Strip(30, akactor) 	;head
	cfgqst.Strip(31, akactor) 	;hair 	
	cfgqst.Strip(39, akactor) 	;shield
	cfgqst.Strip(37, akactor) 	;boots
	cfgqst.Strip(33, akactor) 	;gauntlets
	cfgqst.Strip(32, akactor) 	;body 	
	cfgqst.Strip(52, akactor) 	;bikini bottom/panties (also fuckbelt, care for later use)	

	if akactor.GetEquippedWeapon()
	akactor.UnequipItem(akactor.GetEquippedWeapon())
	endif
	if akactor.GetEquippedWeapon(true)
	akactor.UnequipItem(akactor.GetEquippedWeapon(true))
	endif
EndFunction

Function DownFollowers()				;#down
Actor a = (Alias_Follower_01.GetReference() as Actor)
Actor b = (Alias_Follower_02.GetReference() as Actor)
Actor c = (Alias_Follower_03.GetReference() as Actor)
Actor d = (Alias_Follower_04.GetReference() as Actor)
Actor e = (Alias_Follower_05.GetReference() as Actor)

if a && (a.GetDistance(cfgqst.PlayerRef) < 10000)
a.DamageActorValue("Health", 100000.0)
			
	a.StopCombat()		
	a.StopCombatAlarm()	

	;backup calmfaction (test)
	if !a.IsInFaction(CalmFaction)
	a.AddToFaction(CalmFaction)
	endif

	if a.IsAlerted()
		a.SetAlert(False)
	endif
	
endif

if b && (b.GetDistance(cfgqst.PlayerRef) < 10000)
b.DamageActorValue("Health", 100000.0)

	b.StopCombat()		
	b.StopCombatAlarm()	

	;backup calmfaction (test)
	if !b.IsInFaction(CalmFaction)
	b.AddToFaction(CalmFaction)
	endif

	if b.IsAlerted()
		b.SetAlert(False)
	endif
endif

if c && (c.GetDistance(cfgqst.PlayerRef) < 10000)
c.DamageActorValue("Health", 100000.0)

	c.StopCombat()		
	c.StopCombatAlarm()	

	;backup calmfaction (test)
	if !c.IsInFaction(CalmFaction)
	c.AddToFaction(CalmFaction)
	endif

	if c.IsAlerted()
		c.SetAlert(False)
	endif
endif

if d && (d.GetDistance(cfgqst.PlayerRef) < 10000)
d.DamageActorValue("Health", 100000.0)

	d.StopCombat()		
	d.StopCombatAlarm()	

	;backup calmfaction (test)
	if !d.IsInFaction(CalmFaction)
	d.AddToFaction(CalmFaction)
	endif

	if d.IsAlerted()
		d.SetAlert(False)
	endif
endif

if e && (e.GetDistance(cfgqst.PlayerRef) < 10000)
e.DamageActorValue("Health", 100000.0)

	e.StopCombat()		
	e.StopCombatAlarm()	

	;backup calmfaction (test)
	if !e.IsInFaction(CalmFaction)
	e.AddToFaction(CalmFaction)
	endif

	if e.IsAlerted()
		e.SetAlert(False)
	endif
endif
EndFunction

;BASE FUNCTIONS START ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

bool Function D100(float chance)	;#diceroll	;#d100

if Utility.RandomInt(1, 100) <= chance
return true
else
return false
endif
EndFunction

Function DebugTrace(String Text1)

Debug.Trace(Text1)

EndFunction

Function DebugNotification(String Text2)
if cfgqst.ShowDebugMessages
Debug.Notification(Text2)
endif
EndFunction

Function ScreenMessage(String Text3)

Debug.Notification("<font color='#ff0000'>"+Text3+"</font>")
Debug.trace("NAKED DEFEAT followeridelquest: (#msg) "+Text3)

EndFunction

Function NymMessage(String Text2)		;#NymMessage
	if cfgqst.IsNymrasGame()
	Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT followeridelquest: (#msg NYM) "+Text2)
	endif
EndFunction

Function NymTrace(String Text2)		;#NymTrace
	if cfgqst.IsNymrasGame()
	;Debug.Notification("<font color='#0048ba'>"+Text2+"</font>")
	Debug.trace("NAKED DEFEAT followeridelquest: (#trace NYM) "+Text2)
	endif
EndFunction

;BASE FUNCTIONS END ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
