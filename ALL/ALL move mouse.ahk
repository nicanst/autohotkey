#SingleInstance force
toggle := 0

Up::
	MouseMove, 0, -1, 0, R
return

^Up::
	MouseMove, 0, -5, 0, R
return

Down::
	MouseMove, 0, 1, 0, R
return

^Down::
	MouseMove, 0, 5, 0, R
return

Left::
	MouseMove, -1, 0, 0, R
return

^Left::
	MouseMove, -5, 0, 0, R
return
	
Right::
	MouseMove, 1, 0, 0, R
return

^Right::
	MouseMove, 5, 0, 0, R
return

space::
Toggle = !Toggle
If Toggle
   Click, Down
else
   Click, Up
return

+space::
   Click, Up
return

