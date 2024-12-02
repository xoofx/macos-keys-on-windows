#Requires AutoHotkey v2.0
; #Warn  ; Enable warnings to assist with detecting common errors
; https://www.autohotkey.com/docs/v2/Hotkeys.htm
; Adapted from https://github.com/stevenilsen123/mac-keyboard-behavior-in-windows/pull/21

<^Tab:: {
    Send("{LCtrl down}{Tab}") ; Mac: Cmd + Tab
    KeyWait("LAlt")
    Send("{LCtrl up}")
}

; Remap Alt + Tab to AltTab without blocking Windows Alt behavior
~<^Tab::AltTab ; Mac: Cmd + Tab

$!x::Send("^x") ; Cut (Mac: Cmd + X)
$!c::Send("^c") ; Copy (Mac: Cmd + C)
$!v::Send("^v") ; Paste (Mac: Cmd + V)
$!s::Send("^s") ; Save (Mac: Cmd + S)
$!a::Send("^a") ; Select All (Mac: Cmd + A)
$!z::Send("^z") ; Undo (Mac: Cmd + Z)
$!+z::Send("^y") ; Redo (Mac: Cmd + Shift + Z)l
$!w::Send("^w") ; Close window/tab (Mac: Cmd + W)
$!f::Send("^f") ; Find (Mac: Cmd + F)
$!n::Send("^n") ; New (Mac: Cmd + N)
$!r::Send("^+{F5}") ; Reload/Refresh (Mac: Cmd + R)
$!m::Send("{LWin down}{Down}{LWin up}") ; Minimize window (Mac: Cmd + M)
$!`::Send("{Ctrl down}{Shift down}{Tab}{Shift up}{Ctrl up}") ; Switch windows (Mac: Cmd + Shift + Tab)
$!q::Send("!{f4}") ; Hold Alt + Q f (Mac: Cmd + Q)
$^!q::DllCall("LockWorkStation") ; CTRL + ALT + Q f (Mac: CTRL + Cmd + Q)

; Quick Switch Tab shortcuts (Mac: Cmd + [Number])
$!1::Send("^1")
$!2::Send("^2")
$!3::Send("^3")
$!4::Send("^4")
$!5::Send("^5")
$!6::Send("^6")
$!7::Send("^7")
$!8::Send("^8")
$!9::Send("^9")
$!0::Send("^0")

; Regroup browsers together
GroupAdd "browsers", "ahk_exe msedge.exe"
GroupAdd "browsers", "ahk_exe chrome.exe"

; Chrome/Edge specific
; https://support.google.com/chrome/answer/157179?hl=en&co=GENIE.Platform%3DDesktop#zippy=%2Ctab-window-shortcuts
#HotIf WinActive("ahk_group browsers")
    $!t::Send("^t") ; New tab (Mac: Cmd + T)
    $!+t::Send("^+t") ; Reopen closed tab (Mac: Cmd + Shift + T)
    ;$!+]::Send("{LCtrl down}{Tab down}{Tab up}{LCtrl up}") ;  Next tab (Mac: Cmd + Option + Right Arrow)
    ;$!+[::Send("{Ctrl down}{Shift down}{Tab down}{Tab up}{Shift up}{Ctrl up}") ; Previous tab (Mac: Cmd + Option + Left Arrow) Alt shift [
    $!+Right::Send("{LCtrl down}{Tab down}{Tab up}{LCtrl up}") ;  Next tab (Mac: Cmd + Option + Right Arrow)
    $!+Left::Send("{Ctrl down}{Shift down}{Tab down}{Tab up}{Shift up}{Ctrl up}") ; Previous tab (Mac: Cmd + Option + Left Arrow) Alt shift [
    $!l::Send("^l") ; Focus address bar (Mac: Cmd + L)
    $!LButton::Send("^RButton") ; Send Ctrl + Left Click (Mac: Cmd + Left Click)
#HotIf

; Navigation and selection shortcuts
; Keep the behavior of left/right during ALT+TAB - For some reasons otherwise, Left/Right don't work anymore.
#HotIf !WinActive("Task Switching") ; Win11
    $!Left::Send("{Home}") ; Move to beginning of line (Mac: Cmd + Left Arrow)
    $!Right::Send("{End}") ; Move to end of line (Mac: Cmd + Right Arrow)
    $!Up::Send("{LCtrl down}{Home}{LCtrl up}") ; Move to beginning of document (Mac: Cmd + Up Arrow)
    $!Down::Send("{LCtrl down}{End}{LCtrl up}") ; Move to end of document (Mac: Cmd + Down Arrow)

    $!+Left::Send("{Shift down}{Home}{Shift up}") ; Select to beginning of line (Mac: Cmd + Shift + Left Arrow)
    $!+Right::Send("{Shift down}{End}{Shift up}") ; Select to end of line (Mac: Cmd + Shift + Right Arrow)
    $!+Up::Send("{Ctrl down}{Shift down}{Home}{Shift up}{Ctrl up}") ; Select to beginning of document (Mac: Cmd + Shift + Up Arrow)
    $!+Down::Send("{Ctrl down}{Shift down}{End}{Shift up}{Ctrl up}") ; Select to end of document (Mac: Cmd + Shift + Down Arrow)    
#HotIf

$#Left::Send("{Ctrl down}{Left}{Ctrl up}") ; Move one word left (Mac: Option + Left Arrow)
$#Right::Send("{Ctrl down}{Right}{Ctrl up}") ; Move one word right (Mac: Option + Right Arrow)
$#+Left::Send("{Ctrl down}{Shift down}{Left}{Shift up}{Ctrl up}") ; Select one word left (Mac: Option + Shift + Left Arrow)
$#+Right::Send("{Ctrl down}{Shift down}{Right}{Shift up}{Ctrl up}") ; Select one word right (Mac: Option + Shift + Right Arrow)

!BS::Send("{LShift down}{Home}{LShift up}{Del}") ; Delete word before caret (Mac: Option + Delete)

#HotIf WinActive("ahk_exe explorer.exe") ; File Explorer
    ^Backspace::Send("{Delete}") ; Delete file (Mac: Cmd + Backspace)
#HotIf

$^!Space::Send("{LWin down}.{LWin up}") ; Emoji picker (Mac: Ctrl + Cmd + Space).