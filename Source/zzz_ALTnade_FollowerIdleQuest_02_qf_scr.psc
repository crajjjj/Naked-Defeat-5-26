Scriptname nade_FollowerIdleQuest_02_qf_scr Extends Quest Hidden



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


ReferenceAlias Property Alias_Follower_02 Auto
ReferenceAlias Property Marker_01 Auto		

nade_calmquest_qf_scr Property calmquest Auto
nade_configquest_scr Property cfgqst Auto
nade_WhipQuest_01 Property whipq01 Auto
SexLabFramework Property SexLab Auto
slaUtilScr Property Aroused Auto

Faction Property WhippingFaction Auto
Faction Property FactionBusyRaper Auto

Quest Property calmqst Auto
Quest Property nade_CaptiveQuest Auto

Scene Property FollowerIdleScene_01 Auto
Scene Property FollowerIdleScene_01_bleedout Auto
Scene Property FollowerIdleScene_01_surrender Auto
Scene Property FollowerIdleScene_01_struggle Auto
Scene Property FollowerIdleScene_01_crux Auto
Scene Property FollowerIdleScene_01_crux2 Auto
Scene Property FollowerIdleScene_01_crux3 Auto

Scene Property FollowerIdleScene_02_bleedout Auto
Scene Property FollowerIdleScene_02_surrender Auto
Scene Property FollowerIdleScene_02_struggle Auto
Scene Property FollowerIdleScene_02_crux Auto
Scene Property FollowerIdleScene_02_crux2 Auto
Scene Property FollowerIdleScene_02_crux3 Auto

Int DeviceIndex = -1

bool blocked = true
bool DebugKeyAbort = false
bool WaitForMoan = false
bool NoWhipping = false


Event OnKeyDown (Int KeyCode)		;#key
;bLocked = true

if !Utility.IsInMenuMode() && !UI.IsMenuOpen("Crafting Menu") ;&& !SexLab.IsRunning && !PlayerRef.IsOnMount()
	if KeyCode == cfgqst.DefeatKey
	
	Debug.trace ("NAKED DEFEAT FollowerIdleQuest_02: Keypress DefeatKey (Skip whipping)")
	
	DebugKeyAbort = true
	cfgqst.SexLabMoan(cfgqst.PlayerRef)	
	Debug.Notification("<font color='#ff0000'>Your whipper got bored by your whimpering.</font>")		;MESSAGE
		Debug.Trace("NAKED DEFEAT Notification: Your whipper got bored by your whimpering.")	

	SetStage(25)	;end of whipping
	else
	Debug.trace ("NAKED DEFEAT FollowerIdleQuest_02: Keypress DefeatKey (Skip whipping FAILED 01)")
	endif
else
	Debug.trace ("NAKED DEFEAT FollowerIdleQuest_02: Keypress DefeatKey (Skip whipping FAILED 02)")
endif  
EndEvent


Bool Continue = false

Event AnimationEnd(string eventName, string strArg, float numArg, Form sender)
Continue = True
EndEvent

bool SpawnSceneProtector = false




;----------------------------------------------------------------------------------------------------------------------

Function Fragment_2()				;#whipscene	#20			;PART OF SCENE		:stage 20 		#start

;bool startwhipping = false

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 20")
Actor b = (Alias_Follower_02.GetReference() as Actor)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 20 actor B: "+cfgqst.GetActorInfo(b))

;check if actor available
if !b
SetStage (21)
else
 
	;Utility.Wait(2.0)  ;#speed up	
	
	b.EvaluatePackage()	;necessary? test without?
	
	if cfgqst.PlayPose02 == "bleedout"
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Bleedout Scene (START)")

		FollowerIdleScene_02_bleedout.ForceStart()

	
	elseif cfgqst.PlayPose02 == "surrender"
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Surrender Scene (START)")

		FollowerIdleScene_02_surrender.ForceStart()
	
	elseif cfgqst.PlayPose02 == "struggle"
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Struggle Scene (START)")

		FollowerIdleScene_02_struggle.ForceStart()

	elseif cfgqst.PlayPose02 == "crux"
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Crux Scene (START)")
	
			int i = Utility.RandomInt(1,3)
			if i == 1
			FollowerIdleScene_02_crux.ForceStart()
			elseif i == 2
			FollowerIdleScene_02_crux2.ForceStart()
			elseif i == 3
			FollowerIdleScene_02_crux3.ForceStart()
			endif	

		SetExpression(Utility.RandomInt(1,3), b)				
		Utility.Wait(1.0)
		SpawnSceneProtector = true
		RegisterForSingleUpdate(0.1)	

		endif
		
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Bleedout Scene playing:"  +FollowerIdleScene_02_bleedout.IsPlaying())
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Surrender Scene playing:"  +FollowerIdleScene_02_surrender.IsPlaying())
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Struggle Scene playing:"  +FollowerIdleScene_02_struggle.IsPlaying())
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Crux Scene playing:"  +FollowerIdleScene_02_crux.IsPlaying())
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Crux2 Scene playing:"  +FollowerIdleScene_02_crux2.IsPlaying())
	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 Crux3 Scene playing:"  +FollowerIdleScene_02_crux3.IsPlaying())
	
endif 

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_1()								;############ STAGE 10 ############			#10			;PART OF SCENE
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 10")

Actor b = (Alias_Follower_02.GetReference() as Actor)
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 10 actor B: "+cfgqst.GetActorInfo(b))
		
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_3()				;OUTDOOR FURNITURE 				;############ STAGE 30 ############			;PART OF SCENE	

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 30")
;not in use
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_4()									;############ STAGE 100 ############	#pause		
;Pause Stage	

	Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 100")				
			
	if EndQuest	
	EndQuest = false
	SetStage(1000)
	elseif PauseQuest
	;remain in stage 100
  	endif

EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_0()								;############ STAGE 1000 ############		#endofquest
;shutdown stage

SpawnSceneProtector = false
PlayPose = "none"

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 1000")
Stop()
EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_7()									;############ STAGE 21 ############	

;WE LAND HERE WHEN THERE IS NO ACTOR
	
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 21 (actor = none)")	
Debug.Notification("NAKED DEFEAT ERROR: FollowerIdleQuest_02 stage 21 (actor = none)")	

Stop()
Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 21 (we are here)")	
;Utility.Wait(3.0)
;Start()
;Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 21 (and now we are here)")


EndFunction

;----------------------------------------------------------------------------------------------------------------------

Function Fragment_5()			;END OF SCENE		;############ STAGE 25 ############		;#whip end	;NOT part of Scene? Wtf!

SpawnSceneProtector = false

Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 stage 25 (end of idle)")
							
SetStage(1000)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------


String PlayPose

Function StartFollowerIdleQuest_02(string Type)	;

cfgqst.PlayPose02 = Type

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_02: PlayPose: " +cfgqst.PlayPose02)

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_02: StartFollowerIdleQuest_02")
	Start()
	SetStage(20)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------

bool PauseQuest = false
bool EndQuest = false

Function EndFollowerIdleQuest_02()			;#end

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_02: EndFollowerIdleQuest_02")
	
	Actor b = (Alias_Follower_02.GetReference() as Actor)
	SetExpression(0, b)
	
	EndQuest = true
	SetStage(100)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------


Function PauseFollowerIdleQuest_02()		;#pause

Debug.Trace("NAKED DEFEAT FollowerIdleQuest_02: PauseFollowerIdleQuest_02")
	Actor b = (Alias_Follower_02.GetReference() as Actor)
	PauseQuest = true
	cfgqst.PlayPose02 = "none"
	
	Debug.SendAnimationEvent(b,"IdleForceDefaultState")

		if FollowerIdleScene_02_bleedout.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_bleedout (STOP)")
		FollowerIdleScene_02_bleedout.Stop()

		elseif FollowerIdleScene_02_surrender.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_surrender (STOP)")
		FollowerIdleScene_02_surrender.Stop()

		elseif FollowerIdleScene_02_struggle.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_struggle (STOP)")
		FollowerIdleScene_02_struggle.Stop()

		elseif FollowerIdleScene_02_crux.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_crux (STOP)")
		FollowerIdleScene_02_crux.Stop()
		SetExpression(0, b)
		
		elseif FollowerIdleScene_02_crux2.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_crux2 (STOP)")
		FollowerIdleScene_02_crux2.Stop()
		SetExpression(0, b)
		
		elseif FollowerIdleScene_02_crux3.IsPlaying()
		Debug.Trace("NAKED DEFEAT: FollowerIdleQuest_02 FollowerIdleScene_02_crux3 (STOP)")
		FollowerIdleScene_02_crux3.Stop()
		SetExpression(0, b)
		endif


	Debug.SendAnimationEvent(b,"IdleForceDefaultState")

;	Utility.Wait(1.0) ;#speed up
	SetStage(100)
	
EndFunction

;----------------------------------------------------------------------------------------------------------------


Function ResumeFollowerIdleQuest_02(string Type)	;#resume

cfgqst.PlayPose02 = Type


Debug.Trace("NAKED DEFEAT FollowerIdleQuest_02: ResumeFollowerIdleQuest_02 // Pose: "+cfgqst.PlayPose02)
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
	cfgqst.SexLabMoan(cfgqst.PlayerRef)
	if Aroused.GetActorExposure(cfgqst.PlayerRef) > 70
		;Game.ShakeCamera(cfgqst.PlayerRef, 1, 5)
		SexLab.SendTrackedEvent(cfgqst.PlayerRef, "SexLabOrgasm", 100)
	endif
EndFunction

;----------------------------------------------------------------------------------------------------------------

Bool Function IsSceneRunning()		;no longer required?

if FollowerIdleScene_02_bleedout.IsPlaying()	
return true
else
return false
endif				

EndFunction

;----------------------------------------------------------------------------------------------------------------

Event OnUpdate()	;#update
Debug.trace("NAKED DEFEAT FollowerIdleQuest_02: onupdate (Scene Protectors)")

SceneProtector()

EndEvent

;----------------------------------------------------------------------------------------------------------------

Function SceneProtector()

Actor Follower02 = Alias_Follower_02.GetReference() as Actor

		;SPAWN SCENE PROTECTORS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		ObjectReference TheSceneProtector_01 = Follower02.PlaceAtMe(cfgqst.Scene_Protector[0])
		TheSceneProtector_01.SetAngle(0.0, 0.0, 0.0)
		
		ObjectReference TheSceneProtector_02 = Follower02.PlaceAtMe(cfgqst.Scene_Protector[1])
		TheSceneProtector_02.SetAngle(0.0, 0.0, 0.0)
		;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

while SpawnSceneProtector
	Utility.Wait(3.0)

	;protector maintenance
	if Follower02.GetDistance(TheSceneProtector_01) > 50
	Follower02.MoveTo(TheSceneProtector_01)
	endif
	
endwhile

TheSceneProtector_01.DisableNoWait()
TheSceneProtector_01.Delete()

TheSceneProtector_02.DisableNoWait()
TheSceneProtector_02.Delete()

EndFunction


Function SetExpression(int type = 0, actor akactor)	;#expression

Actor a = akActor as Actor

if type == 0
a.ClearExpressionOverride()
MfgConsoleFunc.ResetPhonemeModifier(a)
elseif type == 1
a.SetExpressionOverride(1, 100)	;dialogue fear 	
;Debug.Notification("NAKED DEFEAT TEST: dialogue fear ")
elseif type == 2
a.SetExpressionOverride(16, 100)
elseif type == 3
a.SetExpressionOverride(9, 100)
MfgConsoleFunc.SetPhonemeModifier(a, 0, 1, 100)	
;Debug.Notification("NAKED DEFEAT TEST: dialogue combat shout ")
endif	
EndFunction

bool SexScene = false
bool StartForceExpression = false	
	
	
;----------------------------------------------------------------------------------------------------------------------	

;/	
Function ForceExpression()		;runs during the whole scenario		#expression

;resetexpression(start)
SetExpression(0)

while cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning

	while (cfgqst.DefeatQuestRunning || cfgqst.CivilRapeRunning) && !SexScene
	SetExpression(Utility.RandomInt(1,3))
	Utility.Wait(3.0)
	endwhile
	
	while SexScene
	;do nothing
	Utility.Wait(2.0)
	endwhile
	
	;resetexpression(end)
	SetExpression(0)
	Utility.Wait(2.0)
endwhile	
SetExpression(0)

EndFunction
/;