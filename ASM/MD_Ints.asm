;*******************************************
;* Main                                                     *
;*******************************************

VarVsync		EQU	$00FFFE0C	
VarHsync		EQU	$00FFFE10

Horizontal_Int:
	SaveRegs

	addq.l #1, (VarHsync)
	RestoreRegs
	rte

Vertical_Int:
	SaveRegs

	jsr	Z80Process

	addq.l #1, (VarVsync)
	RestoreRegs
	rte

Interrupt:
	nop
	nop
	rte
