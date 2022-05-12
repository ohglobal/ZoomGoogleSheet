;Google Sheet Control - Go to cell
;Created by Andy Carluccio

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;usage 
;-cell : the cell to jump to

cell := ""

for n, param in A_Args  
{
    if(param == "-cell"){
		cell := A_Args[n+1]
	}
}

WinActivate, ahk_exe chrome.exe

Send !/
Sleep, 100
Send Go to range
Sleep, 100
Send {Enter}
Sleep, 100
Send %cell%
Sleep, 100
Send {Enter}
