
		include	SH2\SH2_Main.inc
		include	SH2\OBJ_Slave.inc
		
Slave_VBR
	dc.l		SlaveStart	; Cold Start PC
	dc.l		S_STACK		; Cold Start SP
	dc.l		SlaveStart		; Manual Reset PC
	dc.l		S_STACK		; Manual Reset SP

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
	dc.l         	irq	; V Blank interupt
	dc.l         	irq	; Reset Button
	
;----------------------------------------
; ($120)
;----------------------------------------

		
SlaveStart

;		dc.w	$affe

		mov.l	#S_STACK, r15

		mov.l	#_sysreg, r14
		ldc	r14, gbr
		
		bra	skip_vars
		nop
		
		
		align4
    
skip_vars:		
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

_hotstart:
		mov.l	#S_STACK, r15

		mov.l	#_sysreg, r14
		ldc	r14, gbr
		
		mov	#0, r0
		mov.w	r0, @(vresintclr,r14)
		mov.b	r0, @(intmask,r14)
		mov	#$20, r0
		ldc	r0, sr
		
;.wait:                        
;		mov.l   @(comm4,r14), r0
;		tst     r0, r0
;		bf      .wait


main:
		;dc.w  $affe
		
		bsr	SetupCache
		mov.l	r0, @r1
		mov.l	#($02000000+$804+(CacheRelative-$06000000)), r1 ; Address of cache data (ROM)
		mov.l	#$C0000000, r2 	; Transfer destination (cache)
		mov.w	#$100, r3 	; Cache	transfer length	in longwords

CacheTransferLoop:			
		mov.l	@r1+, r0
		dt	r3
		mov.l	r0, @r2
		bf/s	CacheTransferLoop
		add	#4, r2
		
		bsr	SetupCache
		nop

		call	PWMInit
		nop


mainloop:				
		nop
		bra	mainloop
		nop
		
		align4
		
		

SetupCache:			
		mov.w	#_CCR, r1
		mov	#%11001, r0	; -Way 0
					; -Cache purge ON
					; -Two-way mode
					; -OD, ID - normal operation
					; -Cache Enabled ON
		rts
		mov.b	r0, @r1





		align4
		
		
		
irq
		;dc.w  $affe
		

		mov.l	r0, @-r15
		stc	sr, r0
		mov.l	r1, @-r15
		shlr2	r0
		mov.l	#IRQTable, r1
		shlr	r0
		and	#$1C, r0
		mov.l	@(r0,r1), r1
		
		sts.l	pr, @-r15
		mov.w	#$f0, r0
		jsr	@r1
		ldc	r0, sr
		lds.l	@r15+, pr
		mov.l	@r15+, r1
		mov.l	@r15+, r0
		rte
		nop
		
		align4
		
IRQTable:
		dc.l IRQ_Empty
		dc.l IRQ_Empty
		dc.l IRQ_Empty
		dc.l PWMInt
		dc.l IRQ_Empty
		dc.l IRQ_Empty
		dc.l IRQ_Empty
		dc.l ResetInt
		

IRQ_Empty:			
		rts
		nop
		
		align4

ResetInt:
		mov.w	#_FRT, r1
		mov.b	@(_TOCR,r1), r0
		xor	#2, r0
		mov.b	r0, @(_TOCR,r1)
		mov.l	#_sysreg, r1
		mov.w	r0, @(vresintclr,r1)
		mov.b	@(dreqctl+1,r1), r0
		tst	#1, r0

.loop:				
		bf	.loop
		jump	_hotstart
		nop

		align4
		
error
		nop
		bra error

		align4
		
		littab
		
		align $10

ProcessPCMD			

		mov.l	#_comm8, r1
		mov.w	@r1, r0
		tst 	r0, r0
		bt	NoCommand
		
		mov.w	#$1000, r2
		tst	r2, r0
		bt	BadCommand
		
		mov.w	#$8000, r2		
		tst	r2, r0
		bf	NoCommand
		
		extu.w	r0, r3
		shlr8	r3
;		and	#$f, r3
		extu.b	r0, r0
		mov.l	#CommandTable, r4
		shll2	r0
		mov.l	@(r0,r4), r4
		
		mov.l	#PWM1_Settings, r14
		mov	#4,r5
		
		
.cmdloop
		shlr	r3
		bf	.skipchannel
		
		push	pr
		jsr	@r4
		nop
		pop	pr
		
.skipchannel
		add	#(PWM2_Settings-PWM1_Settings), r14
		dt	r5
		bf	.cmdloop
		
		;dc.l	$affe0009
		
		bra	CommandOK
		nop
		
BadCommand:

		mov.w	#$8081, r0
		mov.w	r0, @r1
		
		bra	NoCommand
		nop
		
CommandOK:

		mov.w	#$8001, r0
		mov.w	r0, @r1
		
NoCommand:

		rts
		nop
		
		align4
		
		littab
		
		align4
		
CommandTable:
		dc.l	BadCommand	;00
		dc.l	PCMD_PlaySample	;01
		dc.l	PCMD_StopSample	;02
		dc.l	PCMD_LChVolume	;03
		dc.l	PCMD_RChVolume	;04
		dc.l	BadCommand	;05
		dc.l	BadCommand	;06
		dc.l	BadCommand	;07
		dc.l	BadCommand	;08
		dc.l	BadCommand	;09
		dc.l	BadCommand	;0a
		dc.l	BadCommand	;0b
		dc.l	BadCommand	;0c
		dc.l	BadCommand	;0d
		dc.l	BadCommand	;0e
		dc.l	BadCommand	;0f
		dc.l	BadCommand	;10
		dc.l	PCMD_GlobalSampleRate	;11
		
		align4
		
		
		
PCMD_GlobalSampleRate:

; 23010 / ZZZZ -> _pwmcycle

		add	#2, r1
		mov.l	#0, r0
		mov.w	@r1, r0
		add	#-2, r1
		
		mov.l	#23010, r7
		shll16	r0
		;tst	r0, r0
		;bt	zero_div
		;cmp/hs	r0, r7
		;bt	overflow
		div0u
		.arepeat 16
		div1	r0, r7
		.aendr
		rotcl	r7
		extu.w	r7, r7
		
		mov.l	#_pwmcycle, r6
		mov.w	r7, @r6		
		
		rts
		nop
		

PCMD_PlaySample:
		
;		mov.l	#Pointer_Cartridge_PWMSamplePointers, r1
;		mov.l	#$13370001,r1

		
;		mov.l	#$22031000,r6
		mov.l	#PWMSamples,r6
		mov.l	@r6, r6
		
		add	#2, r1
		mov.w	@r1, r0
		add	#-2, r1

		shll2	r0
		shll2	r0
		add	r0, r6

		mov.l	@r6+, r0	; address of the sample
		mov.l	r0, @(PWM_SampleAddress,r14)
		
		mov.l	@r6+, r0	; length of the	sample (in bytes)
		mov.l	r0, @(PWM_SampleLength,r14)
		mov.l	r0, @(PWM_SampleCounter,r14)
		
		;dc.l	$affe0009
		
		mov.l	@r6+, r0	; loop flag (always 0)
		mov.l	r0, @(PWM_LoopFlag,r14)
		
		mov.l	@r6+, r0	; sample rate
		mov.l	r0, @(PWM_SampleRate,r14)
		
		mov	#0, r0
		mov.l	r0, @(PWM_SampleRateCounter,r14)	
		rts
		nop
		
PCMD_StopSample

		mov.l	#0, r0
		mov.l	r0, @(PWM_SampleLength,r14)
		mov.l	r0, @(PWM_SampleCounter,r14)
		
		rts
		nop
		
PCMD_LChVolume:

		add	#2, r1
		mov.w	@r1, r0
		add	#-2, r1
		mov.l	r0, @(PWM_LChVolume,r14)
		
		rts
		nop
		
PCMD_RChVolume:

		add	#2, r1
		mov.w	@r1, r0
		add	#-2, r1
		mov.l	r0, @(PWM_RChVolume,r14)
		
		rts
		nop

		align4

		littab
		
		align4
		
		
		align $10
		
CacheRelative:		
		
		obj $c0000000
		
PWMInit:		
		mov.l	#$aaaaaaaa, r0
		mov.l	#PWMIntCounter, r1
		mov.l	r0, @r1
		
		
		
		mov.l	#_sysreg, r1
		
		mov	#1, r0
		mov.w	r0, @(pwmintclr,r1)
		mov.b	r0, @(intmask,r1)
		
		mov.l	#_pwmtimerctl, r0
		mov.w	#%100000101, r1
		mov.w	r1, @r0		; setup	L and R	channels
							; set TM cycle multiplier to 1
							
		mov.l	#_pwmcycle, r0
		mov.w	#719, r1 ;727
		mov.w	r1, @r0		; set cycle register to	719
							; for 1047 final PWM cycle becomes: 23,01MHz/1047 = 21,977kHz
							; for 719 final PWM cycle becomes: 23,01MHz/719 = 32,003kHz
							
		mov.l	#_pwmlchwidth, r6 ! [C0000050] = _pwmlchwidth
		mov.l	#_pwmrchwidth, r7 ! [C0000054] = _pwmrchwidth
		mov	#0, r0
		mov.w	r0, @r6
		mov.w	r0, @r6
		mov.w	r0, @r6
		mov.w	r0, @r7
		mov.w	r0, @r7
		mov.w	r0, @r7
		
		rts
		nop		
		
		align4
		
		littab
		
		align4
		
PWMInt:			
		mov.w	#_FRT, r1
		mov.b	@(_TOCR,r1), r0
		xor	#2, r0
		mov.b	r0, @(_TOCR,r1)
		
		mov.l	#_pwmintclr, r1	 	; [C00000FC] = _pwmintclr
		mov.w	r0, @r1				; clear	the interrupt
		
;		mov.l	#PWMIntCounter, r1
;		mov.l	@r1, r0
		;dc.l	$affe0009
;		rotr	r0
;		bf/s	PWMInt_End	; return one out of two	interrupts
		
;		mov.l	r0, @r1

		mov.l	r2, @-r15
		mov.l	r6, @-r15
		mov.l	r7, @-r15
		mov.l	r4, @-r15
		mov.l	r5, @-r15
		mov.l	r3, @-r15
		mov.l	r14, @-r15
		sts.l	pr, @-r15
		sts.l	macl, @-r15
		
		call	ProcessPCMD
		
		mov	#0, r4
		mov	#0, r5
		mov	#0, r6
		mov	#0, r7
		
;		mov.l	#_comm8, r1
		mov.l	#PWM1_Settings, r14
		bsr	PWMChannel_Process
		nop
		
;		mov.l	#_commA, r1
		mov.l	#PWM2_Settings, r14
		bsr	PWMChannel_Process
		nop
		
;		mov.l	#_commC, r1
		mov.l	#PWM3_Settings, r14
		bsr	PWMChannel_Process
		nop
		
;		mov.l	#_commE, r1
		mov.l	#PWM4_Settings, r14
		bsr	PWMChannel_Process
		nop
		
		mov.w	#$400, r1
		xor	r1, r4
		xor	r1, r5
		xor	r1, r6
		xor	r1, r7
		
		mov.w	#$7ff, r1
		and	r1, r4
		and	r1, r5
		and	r1, r6
		and	r1, r7

		mov.w	#$200, r1
		sub	r1, r4
		sub	r1, r5
		sub	r1, r6
		sub	r1, r7
		
		mov.l	#_pwmlchwidth, r0
		mov.l	#_pwmrchwidth, r1
		
		lds.l	@r15+, macl
		lds.l	@r15+, pr
		mov.l	@r15+, r14
		mov.l	@r15+, r3
		
		mov.w	r4, @r0
		mov.w	r5, @r1
		
		mov.l	@r15+, r5
		mov.l	@r15+, r4

.delayloop			
		mov.w	@r0, r2
		cmp/pz	r2
		bt	.enddelay
		mov	#0x18, r2

.delayloop2:				
		dt	r2
		bf	.delayloop2
		bt	.delayloop

.enddelay:				
		mov.w	r6, @r0
		mov.w	r7, @r1
		
		mov.l	@r15+, r7
		mov.l	@r15+, r6
		mov.l	@r15+, r2
		

PWMInt_End:			
		rts
		nop
		
		align4


;----------------------
;
; PWMChannel_Process
; - - -	- - - -	- - -
;
; Processes a PWM sample of ID given by	r1, outputs
;  it additively to a channel given by r14
;
; Variables used:
;  r1  (input)		  - pointer; comm8, A, C, or E;	depending on PWM channel
;  r4  (output,	additive) - left channel width (1st)
;  r6  (output,	additive) - left channel width (2st)
;  r5  (output,	additive) - right channel width	(1st)
;  r7  (output,	additive) - right channel width	(2st)
;  r14 (input, output)	  - pointer; PWM channel settings
;
; Variables destroyed: r0, r2
;
;----------------------


PWMChannel_Process:		

		mov.l	@(PWM_SampleCounter,r14), r0
		dt	r0
		bf	@continue
		
		rts
		nop
		
@continue

; this was the old command processing code, superseded by the new one

;		mov.w	@r1, r2
;		tst	r2, r2
;		bt	MixLastSample
		
;		mov.w	@r1, r0
;		cmp/eq	r2, r0
;		bf	PWMChannel_Process
		
		mov	#0, r0
;		mov.w	r0, @r1
;		extu.b	r2, r0		; r0 <-	lower byte ($01) of comm
		
;		mov.l	#Pointer_Cartridge_PWMSamplePointers, r1
;		mov.l	#$13370001,r1
;		mov.l	#$22031000,r1
;		shll2	r0
		;mov.l	@r1, r1
;		shll2	r0
;		add	r0, r1
		
;		mov.l	@r1+, r0	; address of the sample
;		mov.l	r0, @(PWM_SampleAddress,r14)
		
;		mov.l	@r1+, r0	; length of the	sample (in bytes)
;		mov.l	r0, @(PWM_SampleLength,r14)
;		mov.l	r0, @(PWM_SampleCounter,r14)
		
		;dc.l	$affe0009
		
;		mov.l	@r1+, r0	; loop flag (always 0)
;		mov.l	r0, @(PWM_LoopFlag,r14)
		
;		mov.l	@r1+, r0	; sample rate
;		mov.l	r0, @(PWM_SampleRate,r14)
		
;		mov	#0, r0
;		mov.l	r0, @(PWM_SampleRateCounter,r14)
;		swap.b	r2, r0		; r0 <-	upper byte of comm
					; r0 <-	xxxx yyyy (8-bit)
;		shlr2	r0
;		shlr	r0
;		and	#$1E, r0
;		add	#2, r0
;		mov.l	r0, @(PWM_LChVolume,r14) ; r0 =	(r0>>3)&0x1e + 2
						; r0 <-	000x xxx0 + 2
;		swap.b	r2, r0
;		shll	r0
;		and	#$1E, r0
;		add	#2, r0
;		mov.l	r0, @(PWM_RChVolume,r14) ; r0 =	(r0<<1)&0x1e + 2
						; r0 <-	000y yyy0 + 2

MixLastSample:				
		mov.l	@(PWM_SampleRateCounter,r14), r0
		mov.l	@(PWM_SampleRate,r14), r1
		mov.w	#$800, r2
		add	r1, r0
		mov.l	r0, @(PWM_SampleRateCounter,r14)
		cmp/hs	r2, r0
		bt	LoadNewSample
		
		mov.l	@(PWM_LChLastSample,r14), r0
		mov.l	@(PWM_RChLastSample,r14), r1
		add	r0, r4
		add	r0, r6
		add	r1, r5
		rts
		add	r1, r7
		

LoadNewSample:				
		sub	r2, r0
		mov.l	r0, @(PWM_SampleRateCounter,r14)
		mov.l	@(PWM_SampleCounter,r14), r0
		mov.l	@(PWM_SampleAddress,r14), r1
		dt	r0
		bf	.playsample
		
		mov.l	@(PWM_LoopFlag,r14), r1	; 0x08 - loop flag (unused)
		tst	r1, r1
		bt	PWMInt_End ;exit int
		mov.l	@(PWM_LoopCounterResetValue,r14), r0 ; 0x0C - counter value to revert when counter=0 (unused)

.playsample:				
		mov.b	@r1+, r2
		mov.l	r0, @(PWM_SampleCounter,r14)
		mov.l	r1, @(PWM_SampleAddress,r14)
		mov	#$FFFFFF80, r0
		xor	r0, r2
		mov.l	@(PWM_LChVolume,r14), r1
		muls	r1, r2
		mov.l	@(PWM_LChLastSample,r14), r1
		sts	macl, r0
		shar	r0
		shar	r0
		shar	r0
		shar	r0
		mov.l	r0, @(PWM_LChLastSample,r14)
		add	r0, r6
		add	r1, r0
		shar	r0
		add	r0, r4
		mov.l	@(PWM_RChVolume,r14), r1
		muls	r1, r2
		mov.l	@(PWM_RChLastSample,r14), r1
		sts	macl, r0
		shar	r0
		shar	r0
		shar	r0
		shar	r0
		mov.l	r0, @(PWM_RChLastSample,r14)
		add	r0, r7
		add	r1, r0
		shar	r0
		rts
		add	r0, r5	
		
		littab
		
;		
; Global Variables
;

		align4

PWMIntCounter: 	dc.l 	$aaaaaaaa
PWM1_Settings:	dc.l	       0,	  1,	     0,		0,	   1,	   0x10,      0x10,	0x800,	       0,	  0,	     0
PWM2_Settings:	dc.l	       0,	  1,	     0,		0,	   1,	   0x10,      0x10,	0x800,	       0,	  0,	     0
PWM3_Settings:	dc.l	       0,	  1,	     0,		0,	   1,	   0x10,      0x10,	0x800,	       0,	  0,	     0
PWM4_Settings:	dc.l	       0,	  1,	     0,		0,	   1,	   0x10,      0x10,	0x800,	       0,	  0,	     0

		
		;align $400

PWMSamples:		
		.end
