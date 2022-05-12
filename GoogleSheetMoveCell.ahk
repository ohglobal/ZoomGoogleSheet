;Google Sheet Control - Move Selected Cell 
;Created by Andy Carluccio

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;usage 
;-up : go up a cell
;-down : go down a cell
;-left : go left a cell
;-right : go right a cell

WinActivate, ahk_exe chrome.exe

for n, param in A_Args  
{
	if(param == "-up"){
		Send {Up}
	}
	
	else if(param == "-down"){
		Send {Down}
	}
	
	else if(param == "-left"){
		Send {Left}
	}
	
	else if(param == "-right"){
		Send {Right}
	}
}

