;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname obaFVP_DismissEFF_TIF__020012D3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; don't dismiss the follower again if I've already dismissed them
akSpeaker.SetActorValue("Variable05", 0)
If !(akspeaker.IsInFaction(DismissedFollowerFaction))
  (DialogueFollowerExtended as XFLScript).XFL_RemoveFollower(akspeaker, 0, 0)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property DialogueFollowerExtended  Auto 
Faction Property DismissedFollowerFaction  Auto
