#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Toggle = 0
#MaxThreadsPerHotkey, 2

/*
$shift::
Shifted:=!Shifted
If (shifted)
  Send , LShift Down}
else 
  Send , {LShift UP}
return
*/



/*
Here are you able to change the buttons.
XButton1 yu must press once to able to work also press and hold LShift
*/
LShift:: Send % "{Blind}{LShift " . ((lshift:=!lshift) ? "Down}" : "Up}")

~::
toggle := !toggle
while Toggle {
    click right
    sleep 1
}
return

