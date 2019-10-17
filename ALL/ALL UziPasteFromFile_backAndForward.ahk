#SingleInstance force
clip_path = c:\Users\Herman\Desktop\PROGRAMMERING\Projekt\UziPaste\clip.txt

^+c::
	Clip := []
	clipboard := ""
	thisline := 0
	line := 0
	Loop, read, %clip_path%
	{
		thisline++
		;Clip[thisline] := A_LoopReadLine . "`r`n" - med radbrytning
		Clip[thisline] := A_LoopReadLine
		totallines := thisline
	}	
return


^+v::
	line++
	if !Clip[line]
		clipboard := "" ;avslut sista raden
		;line := 1 - börja om från början
	clipboard := Clip[line]
	send ^v
	sleep 200
return

^x::
	line++
	if (line > totallines)
		line := totallines
	clipboard := Clip[line]
	ToolTip, %clipboard%
	sleep 200
	ToolTip
return

^+x::
	line--
	if (line < 1)
		line := 1
	clipboard := Clip[line]
	ToolTip, %clipboard%
	sleep 200
	ToolTip
return	
