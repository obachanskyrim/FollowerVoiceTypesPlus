;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_FollowUFO_TIF__020012D6 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GlobalVariable UFOFollowerMaxCount = Game.GetFormFromFile(0x0000D49E, "UFO - Ultimate Follower Overhaul.esp") as GlobalVariable

IF UFOFollowerMaxCount
(pDialogueFollower as DialogueFollowerScript).FollowerFollow(akspeaker)
else
	Debug.Notification("[FVP-UFOfix]UFOÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto
