!#z::
	Clip0 := ClipBoardAll
	Sleep 100
	Send ^c
	Sleep 100
	rcvrID := WinExist("ahk_exe notepad.exe")   ;rcvrID gets the unique ID of Notepad being used and is being copied to.
	IfWinNotExist ahk_id %rcvrID%               ;if no Notepad exists we do next line.
	Run Notepad
	rcvrID := WinExist("ahk_exe notepad.exe")   ;rcvrID gets the unique ID of Notepad being used and is being copied to.
	IfWinNotActive ahk_id %rcvrID%              ;if Notepad not active we activate it in next line.
	WinActivate ahk_id %rcvrID%
	Sleep, 100 ;need the sleep for Notepad to settle down
	
	Send ^{End}^v
	Sleep 100
	ClipBoard := Clip0
	VarSetCapacity(Clip0, 0)
	
return