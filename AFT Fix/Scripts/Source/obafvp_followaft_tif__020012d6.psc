;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_FollowAFT_TIF__020012D6 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Quest AFTSampleForm = Game.GetFormFromFile(0x000012CE, "AmazingFollowerTweaks.esp") as Quest
if (AFTSampleForm)
	TweakDFScript pDFScript = (pDialogueFollower As TweakDFScript)
	If pDFScript
		pDFScript.DialogueRef = akSpeakerRef
		pDFScript.FollowerFollow()
	else
		(pDialogueFollower as DialogueFollowerScript).FollowerFollow()
	endIf
else
	Debug.Notification("[FVP-AFTfix]AFTÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
	(pDialogueFollower as DialogueFollowerScript).FollowerFollow()
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto
