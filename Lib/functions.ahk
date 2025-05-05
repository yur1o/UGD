#Requires AutoHotkey v2.0

#Include %A_ScriptDir%\UDG.ahk



HoldKey(key, durationMs) {
    Send("{" key " up}")
    Sleep 50
    Send("{" key " down}")
    Sleep(durationMs)
    Send("{" key " up}")
    Sleep 50
}

moveTo(targetX, targetY) {
    CoordMode "Mouse", "Window"
    MouseGetPos &x, &y
    while (x != targetX || y != targetY) {
        if (x < targetX)
            x++
        else if (x > targetX)
            x--
    
        if (y < targetY)
            y++
        else if (y > targetY)
            y--
    
        MouseMove x, y, 0
        }
        Sleep(100)
    }

moveToClick(X,Y) {
    moveTo(X,Y)
    Sleep(100)
    MouseClick('Left')
    Sleep(100)
}
