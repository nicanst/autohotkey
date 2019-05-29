^!+c::
	Send ^c
	ClipBoard = %ClipBoard%
Return

^!+v::
    Clip0 = %ClipBoardAll%
    ClipBoard = %ClipBoard% ; Convert to plain text
    Send ^v
    Sleep 1000
    ClipBoard = %Clip0%
    VarSetCapacity(Clip0, 0) ; Free memory
Return