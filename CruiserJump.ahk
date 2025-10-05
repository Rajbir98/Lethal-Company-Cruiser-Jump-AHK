#NoEnv
SendMode Input
SetKeyDelay, -1, -1

; -------------------------------------------
; Lethal Company Cruiser Script
; States:
;   1 = TO SHIP WITH MAGNET
;   2 = TO FIRE EXIT
;   3 = TO SHIP NO MAGNET
; -------------------------------------------

currentState := 1

\::  ; Toggle between states
    currentState := (currentState = 1) ? 2 : (currentState = 2) ? 3 : 1
    if (currentState = 1)
        ToolTip, State: TO SHIP WITH MAGNET
    else if (currentState = 2)
        ToolTip, State: TO FIRE EXIT [ECLIPSE JUMP]
    else
        ToolTip, State: TO SHIP NO MAGNET
    SetTimer, RemoveToolTip, 2000
return

]::  ; Run the current state's combo
    if (currentState = 1) {
        ; --- SHIP (A movement sequence) ---
        Send, {a down}
        Sleep, 120
        Send, {Space down}
        Sleep, 120
        Send, {Space up}
        Sleep, 80
        Send, {Space down}
        Sleep, 120
        Send, {Space up}
        Sleep, 320
        Send, {w down}
        Sleep, 720
        Send, {Space down}
        Sleep, 240
        Send, {Space up}
        Sleep, 120
        Send, {w up}
        Sleep, 560
        Send, {s down}
        Sleep, 120
        Send, {s up}
        Sleep, 160
        Send, {Space down}
        Sleep, 240
        Send, {Space up}
        Send, {s down}
        Sleep, 640
        Send, {Space down}
        Sleep, 240
        Send, {Space up}
        Sleep, 440
        Send, {a up}
        Sleep, 160
        Send, {d down}
        Sleep, 480
        Send, {s up}
        Send, {d up}
        ToolTip, Sequence completed!
        SetTimer, RemoveToolTip, 2000

    } else if (currentState = 2) {
        ; --- EXIT (D movement sequence) ---
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
        Send, {d up}
        Send, {Space up}
        Send, {s down}
        Sleep, 120
        Send, {e down}
        Sleep, 240
        Send, {s up}
        Send, {e up}
        ToolTip, Sequence completed!
        SetTimer, RemoveToolTip, 2000

    } else {
        ; --- A MOVEMENT ALT (Frame-perfect analyzed) ---
        Send, {s down}
        Sleep, 360
        Send, {s up}

        Sleep, 320  ; Before first jump
        Send, {Space down}
        Sleep, 160
        Send, {Space up}

        Sleep, 80   ; Between jumps
        Send, {Space down}
        Sleep, 80
        Send, {Space up}

        Sleep, 160  ; Before holding A
        Send, {a down}

        Sleep, 480  ; Space 3
        Send, {Space down}
        Sleep, 240
        Send, {Space up}

        Sleep, 360  ; Space 4
        Send, {Space down}
        Sleep, 360
        Send, {Space up}

        Sleep, 440  ; Space 5
        Send, {Space down}
        Sleep, 800
        Send, {Space up}

        Sleep, 160
        Send, {a up}
        ToolTip, Sequence completed!
        SetTimer, RemoveToolTip, 2000
    }
return

RemoveToolTip:
    ToolTip
    SetTimer, RemoveToolTip, Off
return

F11::ExitApp
