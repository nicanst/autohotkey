#SingleInstance force
#Persistent  ; Prevent the script from exiting automatically.
OnExit("ExitFunc")
OnExit(ObjBindMethod(MyObject, "Exiting"))



ExitFunc(ExitReason, ExitCode)
{
    	WinSet, TransColor, Off, ahk_id %active_id%
	ToolTip, ss %active_id%
	sleep 1000
	ToolTip
	return 0
	ExitApp
}

class MyObject
{
    Exiting()
    {
	WinSet, TransColor, Off, ahk_id %active_id%
	ToolTip, s2 %active_id%
	sleep 1000
	ToolTip
	return 0
	ExitApp
    }
}
return