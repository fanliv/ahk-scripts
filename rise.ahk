#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.


global xsDelay = 200
global sDelay = 500
global mDelay = 1000
global lDelay = 1200

;add image

main(){
    openAllBlock()
    addStoryLine()
}

f1::main()

addStoryLine(){    
    click, 77, 551
    Sleep, mDelay
    MouseMove, 400, 560
    Loop, 30{
        Click, WheelDown
    }
    Sleep, mDelay
    Click, 421, 923
    Sleep, sDelay
    Click, 199, 158
    Sleep, mDelay
    MouseMove, 50, 185
    Sleep, mDelay
    Click, 50, 185

}



addParagraph(){
    click, 79, 239
    Sleep, mDelay
    click, 397, 194
    Sleep, mDelay
}
addImage(){
    click, 58, 400
    Sleep, mDelay
    click, 397, 496
    Sleep, mDelay
}
addQuoteC(){
    click, 84, 314
    Sleep, mDelay
    click, 344, 728
    Sleep, mDelay
}



    
openAllBlock(){
    Send {End}
    Sleep, sDelay
    MouseClick, left, 590, 894
    Sleep, mDelay
}



f12:: Reload
f11:: ExitApp
