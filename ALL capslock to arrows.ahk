Capslock::
	status := GetKeyState("Capslock", "T") ? "On" : "Off"
	SetCapsLockState, %status%
Capslock & w::Send {up}
Capslock & a::Send {left}
Capslock & s::Send {right}
Capslock & z::Send {down}
return
