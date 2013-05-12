;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_WaitAFT_TIF__02000D6B Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Quest AFTSampleForm = Game.GetFormFromFile(0x000012CE, "AmazingFollowerTweaks.esp") as Quest
if (AFTSampleForm)
	TweakDFScript pDFScript = (pDialogueFollower As TweakDFScript)
	If pDFScript
	;Debug.Notification("[FVP-AFTfix]AFT-DFScript Running")
		pDFScript.DialogueRef = akSpeakerRef
		pDFScript.FollowerWait()
	else
	;Debug.Notification("[FVP-AFTfix]AFT-DFScript don't Running")
		(pDialogueFollower as DialogueFollowerScript).FollowerWait()
	endIf
else
	Debug.Notification("[FVP-AFTfix]AFTÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
	(pDialogueFollower as DialogueFollowerScript).FollowerWait()
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto
