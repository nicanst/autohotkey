#SingleInstance force
^+v::
	;Clip0 := ClipBoardAll
	Clip1 := "=fbFB_AX_Damper_DO_V1_0="
	ClipBoard := Clip1
;	Send ^v
	;Sleep 100
	;ClipBoard := Clip0
	;VarSetCapacity(Clip0, 0)
	VarSetCapacity(Clip1, 0)
Return




Clip1