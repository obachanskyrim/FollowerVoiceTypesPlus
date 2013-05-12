;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_RecruitAFT_TIF__02000D67 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeaker.SetActorValue("Variable05", 0)
Faction AFTIgnoreFaction = Game.GetFormFromFile(0x000229C3, "AmazingFollowerTweaks.esp") as Faction
if (AFTIgnoreFaction)
	If !(akspeaker.IsInFaction(AFTIgnoreFaction))
		akspeaker.AddtoFaction(AFTIgnoreFaction)
	endIf

	TweakDFScript pDFScript = (pDialogueFollower As TweakDFScript)
	IF (pDFScript)
		pDFScript.SetFollower(akspeaker)
	else
		(pDialogueFollower as DialogueFollowerScript).SetFollower(akspeaker)
	endIf
else
	Debug.Notification("[FVP-AFTfix]AFTÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
	(pDialogueFollower as DialogueFollowerScript).SetFollower(akspeaker)
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto
