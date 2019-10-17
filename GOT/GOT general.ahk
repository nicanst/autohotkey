#IfWinActive MELSOFT GT Designer3
	^Left:: send !ell	;align left
	^Right:: send !elr	;align right
	^Up:: send !elt		;align up
	^Down:: send !elb	;align down
	^+Left:: send !elc	;align center |
	^+Right:: send !elc	;align center |
	^+Up:: send !ele	;align center -
	^+Down:: send !ele	;align center -
	^Tab:: send !ela 	;align sideways
	^PgUp:: send !eln 	;align lenghtways
	^PgDn:: send !eln 	;align lenghtways
	^q:: send !eit 		;send to forground
	^+q:: send !eik 	;send to background
	!^+i::Run C:\Windows\Notepad.exe "d:\Projekt - Allmänt\Programnoteringar\GOT.txt"
return