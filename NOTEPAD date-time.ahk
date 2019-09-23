#IfWinActive ahk_class Notepad
;yyyy-MM-dd HH:mm:ss
^d::
	;Clip0 = %ClipBoardAll%
	FormatTime, time, A_now, yyyy-MM-dd HH:mm:ss
	;ClipBoard = % time . " "
	;Send ^v
	;ClipBoard = %Clip0%
	Send % time . " "
Return
^+d::
	;Clip0 = %ClipBoardAll%
	FormatTime, time, A_now, yyyy-MM-dd HH-mm-ss
	;ClipBoard = % time . " "
	;Send ^v
	;ClipBoard = %Clip0%
	Send % time . " "
Return