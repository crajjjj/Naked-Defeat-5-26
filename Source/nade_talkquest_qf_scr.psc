;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname nade_talkquest_qf_scr Extends Quest Hidden

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Startup Stage

Debug.Notification("Naked Dungeons' Prostitution feature ENABLED")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;shutdown stage

Debug.Notification("Naked Dungeons' Prostitution feature DISABLED")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SexLabFramework Property SexLab Auto
;zadlibs Property libs Auto
slaMainScr Property slamain Auto
nade_configquest_scr Property cfgqst Auto
GlobalVariable Property nade_StopCrime Auto
GlobalVariable Property nade_RitualsDone Auto
Quest Property nade_GreybeardQuest Auto
Quest Property nade_PurificationQuest Auto
GlobalVariable Property nade_HairGrowthRecipeKnown Auto
MiscObject Property Gold001 Auto
GlobalVariable Property nade_TaxAmount Auto
GlobalVariable Property nade_TempVar Auto

;Function DoOutcome(Actor aSexActor = None, string sTags = "", Bool bAddCoin = false, Bool bAddKey = false, Bool bMalePlayerPos = false, Bool bGagOnly = false, Bool bHasVictim = false)
;	nade_TempVar.SetValue(0.0)
;	if bAddKey
;		cfgqst.AddDeviceKeys(1)
;	endif
;	if bAddCoin
;		cfgqst.AddRandomCoin()
;	endif
;	if aSexActor
;		RegisterForModEvent("AnimationEnd_NDUNProst", "OnSexFinished")
;		sslThreadModel tid = cfgqst.PrepareThread(aSexActor, "NDUNProst", sTags, false, bMalePlayerPos, bHasVictim)
;		if tid
;			if cfgqst.StartPreparedThread(tid) < 0
;				OnSexFinished("", "", 0, None)
;				if cfgqst.ShowDebugMessages
;					Debug.Notification("Cannot start SexLab thread.")
;				endif
;			endif
;		else
;			OnSexFinished("", "", 0, None)
;			if cfgqst.ShowDebugMessages
;				Debug.Notification("Cannot prepare SexLab thread.")
;			endif
;		endif
;	elseif !bGagOnly
;		cfgqst.AddDevices(Utility.RandomInt(1, cfgqst.MaxNumDevices), bNeedStrip = true, bRestraintsAllowed = true, bChastityAllowed=true, bGagAllowed=true, bHardAllowed=false)
;	elseif !cfgqst.AddGag()
;		if cfgqst.PlayerRef.GetItemCount(libs.GagRing)
;			Debug.Notification(libs.GagRing.GetName()+" added.")
;		else
;			cfgqst.PlayerRef.AddItem(libs.GagRing, 1, false)
;		endif
;	endif
;EndFunction

Function StartGreybeardQuest(Int stg = 10)
	(nade_PurificationQuest as nade_purificationquest_qf_scr).RestartQuest(stg)
EndFunction	

Function EnablePerformance()
	nade_RitualsDone.SetValueInt(nade_RitualsDone.GetValueInt()+1)
EndFunction	

Function SetPunishment(Int Index = 12)
	nade_RitualsDone.SetValueInt(Index)
EndFunction	

Function OnSexFinished(String EventName, String ArgString, Float ArgNum, Form Sender)
	UnRegisterForModEvent("AnimationEnd_NDUNProst")
	nade_StopCrime.SetValueInt(3)
EndFunction

Function AddHairGrowthRecipe()
	nade_HairGrowthRecipeKnown.SetValueInt(2)
EndFunction

;Function DoCheckTaxes()
;	Float r = cfgqst.PlayerRef.GetActorValue("Speechcraft") / 2.0
;	if slamain.IsActorNakedVanilla(cfgqst.PlayerRef)
;;;		r += 13.0
;	;endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousBra)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousCollar)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousArmCuffs)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousLegCuffs)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
;		r += 1.0
;	endif	
;;;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousArmbinder)
	;	r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousYoke)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousCorset)
;		r += 1.0
;;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousClamps)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousGloves)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousHood)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousGag)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousGagPanel)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousHarness)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousBlindfold)
;		r += 1.0
;	endif	
;	if cfgqst.PlayerRef.WornHasKeyword(libs.zad_DeviousBoots)
;		r += 1.0
;	endif	
;
;	if nade_TempVar.GetValue() == r
;		r = -1.0
;	endif
;	nade_TempVar.SetValue(r)
;	nade_TaxAmount.SetValueInt(cfgqst.GetHoldDebt())
;	Self.UpdateCurrentInstanceGlobal(nade_TempVar)
;	Self.UpdateCurrentInstanceGlobal(nade_TaxAmount)
;EndFunction

;Function DoRepayTax(Bool gold = true, Actor akActor = None)
;	String t = ""
;	
;	if gold && cfgqst.PayHoldTax()
;		akActor = None
;	endif
;	if akActor
;		if gold
;			t = "Aggressive"
;		else
;			cfgqst.ClearHoldDebt()
;		endif	
;		DoOutcome(akActor, t, false, false, false, false, gold)
;	endif
;EndFunction

;Function DoHaircut(Actor akActor = None)
;	cfgqst.PlayerRef.UnequipItemSlot(30)
;	cfgqst.PlayerRef.UnequipItemSlot(31)
;	cfgqst.PlayerRef.UnequipItemSlot(42)
;	cfgqst.PlayerRef.RemoveItem(Gold001, 10, false, akActor)
;	cfgqst.Shave()
;EndFunction
