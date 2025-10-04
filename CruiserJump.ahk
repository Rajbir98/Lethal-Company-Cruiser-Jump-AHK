#NoEnv
SendMode Input
SetKeyDelay, -1, -1

; State variable: 1 = ship, 2 = exit
currentState := 1

; Press \ to toggle between states
\::
    currentState := (currentState = 1) ? 2 : 1
    if (currentState = 1) {
        ToolTip, State: SHIP (A movement sequence)
    } else {
        ToolTip, State: EXIT (D movement sequence)
    }
    SetTimer, RemoveToolTip, 2000
return

; Press ] to run the current state's sequence
]::
    if (currentState = 1) {
    ; 0.00 - Hold a
    Send {a down}
    
    ; 0.12 - Hold space
    Sleep 120
    Send {Space down}
    
    ; 0.24 - Release space
    Sleep 120
    Send {Space up}
    
    ; 0.32 - Hold space again
    Sleep 80
    Send {Space down}
    
    ; 0.44 - Release space
    Sleep 120
    Send {Space up}
    
    ; 0.76 - Hold w
    Sleep 320
    
    ; 1.48 - Hold space
    Sleep 720
    Send {Space down}
    
    ; 1.72 - Release space
    Sleep 240
    Send {Space up}
    
    ; 1.84 - Release w
    Sleep 120

    
    ; 2.40 - Hold s
    Sleep 560
    
    ; 2.52 - Release s
    Sleep 120
    
    ; 2.68 - Hold space
    Sleep 160
    Send {Space down}
    
    ; 2.92 - Release space & Hold s
    Sleep 240
    Send {Space up}
    
    ; 3.56 - Hold space
    Sleep 640
    Send {Space down}
    
    ; 3.80 - Release space
    Sleep 240
    Send {Space up}
    
    ; 4.24 - Release a
    Sleep 440
    Send {a up}
        ToolTip, SHIP sequence completed!
        SetTimer, RemoveToolTip, 2000
    } else {
        ; EXIT state - New frame-perfect D movement sequence
        Send, {d down}
        Sleep, 520
        Send, {Space down}
        Sleep, 200
        Send, {Space up}
        Sleep, 80
        Send, {Space down}
        Sleep, 160
        Send, {Space up}
        Sleep, 40
        Send, {Space down}
        Sleep, 280
        Send, {Space up}
        Sleep, 280
        Send, {s down}
        Sleep, 480
        Send, {Space down}
        Sleep, 240
        Send, {Space up}
        Sleep, 640
        Send, {s up}
        Sleep, 320
        Send, {w down}
        Sleep, 480
        Send, {Space down}
        Sleep, 120
        Send, {w up}
        Sleep, 160
        ; Release all movement keys and press Q+E simultaneously
        Send, {d up}
        Send, {Space up}
        Send, {q down}
        Sleep, 120
        Send, {e down}
        Sleep, 240
        Send, {s up}
        Send, {e up}
        ToolTip, EXIT sequence completed!
        SetTimer, RemoveToolTip, 2000
    }
return

RemoveToolTip:
    ToolTip
    SetTimer, RemoveToolTip, Off
return

F11::ExitApp
