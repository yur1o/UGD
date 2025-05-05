#Requires AutoHotkey v2.0

#Include %A_ScriptDir%\Lib\functions.ahk

RobloxWindow := "ahk_exe RobloxPlayerBeta.exe"

F1::MinimizeRoblox()
F2::Start()
F3::ExitMacro()

global cooldown := 1000

MinimizeRoblox() { 
        if WinExist(RobloxWindow) {
            WinActivate(RobloxWindow)
            WinRestore(RobloxWindow)
            WinMove 0, 0
        } else {
            MsgBox("Open Roblox")
        }
        Sleep(500)  
}

Start() {
        SendInput('{Tab}')

        loop {
            SendInput('1')
            moveTo(400,440)
            HoldKey("LButton", cooldown)
            moveToClick(465,50)
            HoldKey("d", 500)
            HoldKey("s", 600)
            HoldKey("d", 500)
            moveToClick(515,415)
            moveToClick(355,50)
        }  
    
}

ExitMacro() {
    MsgBox("Closing Macro...",, "T1")
    ExitApp()
}