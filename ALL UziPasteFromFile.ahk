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
	
