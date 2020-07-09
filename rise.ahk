#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

global xsDelay = 200
global sDelay = 500
global mDelay = 1000
global lDelay = 1200

;add image

main(){
    ;editTabContent()
        Loop, 3{
        click, 193, 365
    } 
}

f1::main()

editTabContent(){
    Loop, 3{
        click, 193, 365
    }   
    
    Send, Giới thiệu
    Loop, 3{
        click, 241, 476
    }
    ;
    ;
    click, 193, 365
    Send, ^a
    Send, Tiểu sử
    ;
    
    click, 193, 365
    Send, ^a
    Send, Nội dung
}

addStoryLine(){ 
    click, 77, 551
    Sleep, mDelay
    MouseMove, 400, 560
    Loop, 30{
        Click, WheelDown
    }
    Sleep, mDelay
    Click, 421, 923
    Sleep, lDelay
    Click, 199, 158
    Sleep, mDelay
    MouseMove, 50, 185
    Sleep, sDelay
    Click, 50, 185
    Sleep, mDelay
    click, 430, 250
    Sleep, xsDelay
    Click, 430, 446
    Sleep, xsDelay
    Click, 353, 506
    Sleep, xsDelay
    Click, 565, 162
    Sleep, mDelay
    openAllBlock()
}

addAccordion(){
    click, 109, 504
    Sleep, mDelay
    Click, 368, 222
    Sleep, mDelay
}

addTabs(){
    click, 109, 504
    Sleep, mDelay
    Click, 438, 307
    Sleep, mDelay
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
