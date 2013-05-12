Scriptname obaFVP_InitUFOQuestAliasScript extends ReferenceAlias  

bool Property UFOInitialized Auto Hidden
GlobalVariable Property FollowerMaxCount  Auto  

Event OnPlayerLoadGame()
	If !UFOInitialized
	;----------------------------------------------;
	;- UFO - Ultimate Follower Overhaul get value -;
	;----------------------------------------------;
	GlobalVariable UFOFollowerMaxCount = Game.GetFormFromFile(0x0000D49E, "UFO - Ultimate Follower Overhaul.esp") as GlobalVariable
		if (UFOFollowerMaxCount)
			UFOInitialized = True
			Debug.trace("####[FVP-UFO]GetForm from UFO!####")
			FollowerMaxCount.SetValue(UFOFollowerMaxCount.GetValue())
			GetOwningQuest().setstage(100)
		else
			Debug.Notification("[FVP-UFOfix]UFOÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅI")
		endIf
	endIf
EndEvent