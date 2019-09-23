#SingleInstance force
#IfWinActive Citect Graphics Builder
^q::send !af ;bring to front
^+q::send !ab ;bring to back
^b::send !eb ;break lock mode
^d::send !el ;lock object
^+d::send !enn{enter} ;unlock object

^+q::send ^+v ;bring to top
return