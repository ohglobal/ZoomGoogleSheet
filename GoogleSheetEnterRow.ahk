;Google Sheet Control - Enter Row of Data
;Created by Andy Carluccio

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;usage 
;-cell : the cell to jump to

cell := ""

WinActivate, ahk_exe chrome.exe

for n, param in A_Args  
{
    SendRaw %param%
	sleep, 100
	Send {Space}
	Send {Backspace}
	Send {Enter}
	Send {Right}
	Send {Up}
	sleep, 100
}

WinActivate, ahk_exe chrome.exe