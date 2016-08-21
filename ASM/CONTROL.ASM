WaitKeyRelease:         ; Wait for a button release
 JSR    ReadControl1
 JSR    WaitOneFrame
 BTST   D7, (P1CTRL)
 BNE    WaitKeyRelease
 RTS

WaitKeyPress:           ; Wait for a button press
 JSR    ReadControl1
 JSR    WaitOneFrame
 BTST   D7, (P1CTRL)
 BEQ    WaitKeyPress
 RTS

InitControls:
 MOVE.B #$40, ($A10009) ; Ctrl 1
 MOVE.B #$40, ($A1000B) ; Ctrl 2
 RTS

ReadControl1:    
 CLR.L D0
 MOVE.B #$40, ($A10003) ; Button status is returned in P*CTRL
 NOP
 NOP
 MOVE.B ($A10003), D1   ; If bit is set then button is down
 ANDI.B #$3F, D1        ; Bits : 7 6 5 4 3 2 1 0
 MOVE.B #$00, ($A10003) ;        S A C B R L D U
 NOP                    ;        t       i e o p
 NOP                    ;        a       g f w
 MOVE.B ($A10003), D0   ;        r       h t n
 ANDI.B #$30, D0        ;        t       t
 LSL.B  #2, D0
 OR.B   D1, D0          
 NOT.B  D0              
 MOVE.W D0, (P1CTRL)    ; How this works is explained below
 RTS

ReadControl2:        
 MOVE.B #$40, ($A10005) ; Pull TH line high
 NOP
 NOP
 MOVE.B ($A10005), D1   ; Read controller port
 ANDI.B #$3F, D1        ; Get buttons (B,C, directions)
 MOVE.B #$00, ($A10005) ; Pull TH line low
 NOP
 NOP
 MOVE.B ($A10005), D0   ; Read controller port
 ANDI.B #$30, D0        ; Get buttons (Start, A)
 LSL.B  #2, D0          ; Shift START and A to the right place
 OR.B   D1, D0          ; Add them to the previous data
 NOT.B  D0              ; Invert bits
 MOVE.W D0, (P2CTRL)    ; Store the result in memory
 RTS
