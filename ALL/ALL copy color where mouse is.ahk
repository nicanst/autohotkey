#SingleInstance force
^+c::
	MouseGetPos, x, y
	PixelGetColor, rgb, x, y, RGB
	StringTrimLeft, rgb, rgb, 2
	Clipboard := rgb
	ToolTip, %rgb%
	sleep 1000
	ToolTip
return