#SingleInstance force
^+v::
	Clip0 := ClipBoardAll
	Clip1 := StrReplace(ClipBoard, "-", "_")
	ClipBoard := Clip1
	Send ^v
	Sleep 100
	ClipBoard = %Clip0%
	VarSetCapacity(Clip0, 0) ; Free memory
	VarSetCapacity(Clip1, 0) ; Free memory
Return