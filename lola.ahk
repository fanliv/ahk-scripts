#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, force

If (!A_IsAdmin){
    Run *RunAs "%A_ScriptFullPath%"
}
x1 := 1460
y1 := 226
x2 := 1463
y2 := 229
lolTitle := ahk_class RCLIENT
color := 0x5B5A56
color2 := 0x121211
    
    Loop{
        If(WinActive("ahk_class RCLIENT")){
            PixelSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, 0x121211, 5, Fast
            if ErrorLevel{
                ;ToolTip, chua tim thay
                ;Sleep,1000
                ;ToolTip
            }Else{
                ;ToolTip, da tim thay
                ControlClick, x911 y700, ahk_class RCLIENT
                ;Sleep, 1000
                ;ToolTip
            }
            
            }Else { 
                ;ToolTip, inactive
            }
                
            Sleep, 2000
        }