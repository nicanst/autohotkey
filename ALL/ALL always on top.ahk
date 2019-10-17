#SingleInstance force
toggle := 0

^+SPACE::
	toggle := !toggle
	if toggle {
		WinSet, Transparent, 200, A
	}
	else {
		WinSet, TransColor, Off, A
	}
return

^SPACE::
	Winset, Alwaysontop, , A
return
