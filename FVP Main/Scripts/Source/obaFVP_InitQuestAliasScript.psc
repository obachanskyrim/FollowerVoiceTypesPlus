Scriptname obaFVP_InitQuestAliasScript extends ReferenceAlias  

bool Property FVPInitOnce Auto Hidden
Quest Property FVPdialogueQuest  Auto

Event OnPlayerLoadGame()
if !FVPInitOnce
	Debug.Trace("#####[FVP]InitQuestAlias - SetUP!####")
	FVPInitOnce = true
	;-------------------------------;
	;- FVP MainDialogueQuest Start -;
	;-------------------------------;
	If !(FVPdialogueQuest.IsRunning())
		FVPdialogueQuest.start()
		If FVPdialogueQuest.IsRunning()
			Debug.Trace("####[FVP]MainDialogueQuest Running!####")
		else
			Debug.Trace("####[FVP]****ERROR! MainDialogueQuest isn't Running!****")
		endIf	
	endIf
endIf
EndEvent