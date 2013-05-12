;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_DismissAFT_TIF__020012D3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akSpeaker.SetActorValue("Variable05", 0)

Quest AFTSampleForm = Game.GetFormFromFile(0x000012CE, "AmazingFollowerTweaks.esp") as Quest
if (AFTSampleForm)
	TweakDFScript pDFScript = (pDialogueFollower As TweakDFScript)
	If pDFScript
		If !(akspeaker.IsInFaction(DismissedFollowerFaction))
			pDFScript.DialogueRef = akSpeakerRef
			pDFScript.DismissFollower(0, 0)
		endIf
	else
		If !(akspeaker.IsInFaction(DismissedFollowerFaction))
			  (pDialogueFollower as DialogueFollowerScript).DismissFollower(0, 0)
		EndIf
	EndIf
else
	Debug.Notification("[FVP-AFTfix]AFTÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
		  (pDialogueFollower as DialogueFollowerScript).DismissFollower(0, 0)
	EndIf
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto  
Faction Property DismissedFollowerFaction  Auto
