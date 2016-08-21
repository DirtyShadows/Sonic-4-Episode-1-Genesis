; simplifying macros and functions
; nameless temporary symbols should NOT be used inside macros because they can interfere with the surrounding code
; normal labels should be used instead (which automatically become local to the macro)

; tells the Z80 to stop, and waits for it to finish stopping (acquire bus)
stopZ80 macro
	move.w	#$100,($A11100).l ; stop the Z80
	bcc.w	waitloop

waitloop:	btst	#0,(BUSREQ).l
	bne.w	waitloop ; loop until it says it's stopped
    endm

; tells the Z80 to start again
startZ80 macro
	move.w	#0,($A11100).l    ; start the Z80
    endm
