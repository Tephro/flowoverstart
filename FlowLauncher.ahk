#Requires AutoHotkey v2.0
#SingleInstance Force
A_IconTip := "FlowOverStart"
TraySetIcon(A_ScriptDir "\FlowOverStart.ico")
InstallKeybdHook()
InstallMouseHook()

; Startup notification
Sleep(3000)
MsgBox("Script is running successfully!", "FlowOverStart", 64)

; Define the hotkey that opens Flow Launcher (Alt + Space)
LauncherHotkey := "!{Space}"

; Suppress the Start Menu for Left Windows Key
~LWin::Send "{Blind}{vkE8}"

; Suppress the Start Menu for Right Windows Key
~RWin::Send "{Blind}{vkE8}"

; Open Flow Launcher only if Windows key is pressed alone
LWin Up:: {
    if (A_PriorKey = "LWin") {
        Send LauncherHotkey
    }
}

RWin Up:: {
    if (A_PriorKey = "RWin") {
        Send LauncherHotkey
    }
}   