
		include	SH2\SH2_Main.inc
		include	SH2\OBJ_Master.inc
		
Master_VBR
	dc.l		Master_Start	; Cold Start PC
	dc.l		M_STACK		; Cold Start SP
	dc.l		Master_Start		; Manual Reset PC
	dc.l		M_STACK		; Manual Reset SP

	dc.l		error		; Illegal instruction
	dc.l		$00000000	; reserved
	dc.l		error		; Invalid slot instruction
	dc.l		$20100400	; reserved
	dc.l		$20100420	; reserved
	dc.l		error		; CPU address error
	dc.l		error		; DMA address error
	dc.l		error		; NMI vector
	dc.l		error		; User break vector


	dcb.l		19,$00000000	; reserved

	dcb.l		32,error	; Trap vectors

 	dc.l         	irq	; Level 1 IRQ
	dc.l         	irq	; Level 2 & 3 IRQ's
	dc.l         	irq	; Level 4 & 5 IRQ's
	dc.l         	irq	; PWM interupt
	dc.l         	irq	; Command interupt
	dc.l         	irq	; H Blank interupt
	dc.l         	vblank	; V Blank interupt
	dc.l         	irq	; Reset Button
	
;----------------------------------------
; ($120)
;----------------------------------------

		
Master_Start
;		dc.w	$affe

		mov.l	#M_STACK, r15

		mov.l	#_sysreg, r14
		ldc	r14, gbr

		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(vintclr,gbr)
		mov.w	r0,@(hintclr,gbr)	;clear IRQ ACK regs
		mov.w	r0,@(hintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)
		mov.w	r0,@(cmdintclr,gbr)
		mov.w	r0,@(pwmintclr,gbr)
		mov.w	r0,@(pwmintclr,gbr)
		
		mov.l	#_FRT,r1		; Set Free Run Timer
		mov	#$00,r0
		mov.b	r0,@(_TIER,r1)		; 
		mov	#$e2,r0
		mov.b	r0,@(_TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(_OCR_L,r1)		;
		mov	#0,r0
		mov.b	r0,@(_TCR,r1)		;
		mov	#1,r0
		mov.b	r0,@(_TCSR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_FRC_L,r1)		;
		mov.b	r0,@(_FRC_H,r1)		;

		mov	#$f2,r0		; reset setup
		mov.b	r0,@(_TOCR,r1)		;
		mov	#$00,r0
		mov.b	r0,@(_OCR_H,r1)		;
		mov	#$01,r0
		mov.b	r0,@(_OCR_L,r1)		;
		mov	#$e2,r0
		mov.b	r0,@(_TOCR,r1)		;
		
		mov.l	#0,r0
;		mov.w	r0,@(comm0,gbr)
;		mov.w	r0,@(comm2,gbr)
;		mov.w	r0,@(comm4,gbr)
;		mov.w	r0,@(comm6,gbr)
;		mov.w	r0,@(comm8,gbr)
;		mov.w	r0,@(comm10,gbr)
;		mov.w	r0,@(comm12,gbr)
;		mov.w	r0,@(comm14,gbr)
		
		mov.l	#_SERIAL, r1
		mov	#$80, r0
		mov.b	r0, @r1
		mov	#$4A, r0 ; 'J'
		mov.b	r0, @(1,r1)
		mov	#0, r0
		mov.b	r0, @(2,r1)
		mov.l	#$128, r0

@delay:				
		nop
		dt	r0
		bf	@delay
		
		mov	#$20, r0 ; ' '
		mov.b	r0, @(2,r1)
		mov	#0, r0
		mov.b	r0, @(4,r1)
		
		
_hotstart:
		mov.l	#M_STACK,r15

		mov.l	#_sysreg,r14
		ldc	r14,gbr

		mov	#FM,r0
		mov.b	r0,@(adapter,gbr)	; tell the genesis we're alive
		

main:
		mov.l	#VIRQ_ON+CMDIRQ_ON+HIRQ_ON,r0
		mov.b	r0,@(intmask,gbr)
		
mainloop:				
		nop
		mov.w	@(comm2,gbr),r0
		
		cmp/eq	#0,r0
		bt	mainloop
		
		shlr2	r0
		and	#$c,r0
		mov.l	#mainjtable,r1
		move.l	@(r0,r1),r0
		jsr	@r0
		nop
			
		mov.l	#_sysreg,r14
		ldc	r14,gbr		;restore gbr
		
		mov.l	#0,r0	
		mov.w	r0,@(comm2,gbr)	;clear comm2				
		
		bra	mainloop		
		nop
		
		
		align	4		
mainjtable
		dc.l	test_
		dc.l	error
		dc.l	error
		dc.l	error
		
		
		align	4
vblank
		;doesn't work
		rte
		nop
		
		
;		IF TEST == 1
;		
;		align	4
;test_
;
;		;dc.l	$affe0009
;
;		mov.l	#_vdpreg,r14
;		ldc	r14,gbr
;		
;		mov.l	#2,r0
;		mov.w	r0,@(tvmode,gbr)
;		
;		call	wait_vblk
;		call	dramflip
;		
;		move.l	#_overwrite,r2
;@l1
;		mov.l	#$e0,r0
;		mov.w	r0,@r2
;		add #2,r2
;		mov.l #$220,r0
;		mov.w r0,@r2
;		add #2,r2
;		;add	#2,r2
;		mov.l	#($1c0+_overwrite),r0
;		cmp/eq	r0,r2
;		bf	@l1
;		
;@l2
;		mov.l	#$3DEF,r0
;		mov.w	r0,@r2
;		add	#2,r2
;		mov.l	#($440+_overwrite),r0
;		cmp/eq	r0,r2
;		bf	@l2
;		
;@l3
;		mov.l	#$7fff,r0
;		mov.w	r0,@r2
;		add	#2,r2
;		mov.l	#($6c0+_overwrite),r0
;		cmp/eq	r0,r2
;		bf	@l3
;		
;		mov.l	#2,r0
;		mov.w	r0,@(tvmode,gbr)
;		
;		call	wait_vblk
;		call	dramflip
;		
;		rts
;		nop
;
;
;		
;		
;
;		align	4
;
;wait_vblk
;		mov.l	#_vdpreg,r14
;		mov.l	#$80,r1
;@wait:
;		mov.b	@(vdpsts,r14),r0
;		tst	r1,r0
;		bt	@wait
;
;		rts
;		nop
;		align	4
;	
;dramflip
;		mov.l	#_vdpreg,r14
;
;		mov.b	@(framectl,r14),r0
;		not	r0,r1
;		mov	r1,r0
;		mov.b	r0,@(framectl,r14)
;
;		rts
;		nop
;		align	4	
;		
;		ELSE
		
test_
		rts
		nop
		
;		ENDIF
		
	
		align	4
irq
		nop
		rte
		nop		
		

		align	4
error
		nop
		bra error
		nop
		
			
		.end