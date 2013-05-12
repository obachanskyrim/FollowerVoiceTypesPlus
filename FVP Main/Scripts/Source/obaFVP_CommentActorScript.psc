Scriptname obaFVP_CommentActorScript extends Quest  

GlobalVariable Property GameDaysPassed Auto

Function Commented(ObjectReference FollowerRef)
	Actor Follower = FollowerRef as Actor

	float DaysUntilNextAllowed = Utility.RandomFloat(0.002, 0.006)

; 	debug.trace("####COMMENTED " + Follower + "DaysUntilNextAllowed " + DaysUntilNextAllowed)

	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	
; 	debug.trace("####COMMENTED " + Follower + "Next Commented " + NextAllowed)
	
	Follower.SetActorValue("Variable05", NextAllowed)

	float Fvalue = Follower.GetActorValue("Variable05")

 ;	debug.trace("####COMMENTED " + Follower + "Variable05: " + Fvalue)

EndFunction  
