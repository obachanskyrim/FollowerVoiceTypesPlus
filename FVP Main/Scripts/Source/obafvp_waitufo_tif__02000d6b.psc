;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_WaitUFO_TIF__02000D6B Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GlobalVariable UFOFollowerMaxCount = Game.GetFormFromFile(0x0000D49E, "UFO - Ultimate Follower Overhaul.esp") as GlobalVariable

IF UFOFollowerMaxCount
(pDialogueFollower as DialogueFollowerScript).FollowerWait(akspeaker)
else
	Debug.Notification("[FVP-UFOfix]UFOが見つかりません！")
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property pDialogueFollower  Auto
